; ModuleID = 'kernel/futex/syscalls.c'
source_filename = "kernel/futex/syscalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.time_namespace = type { ptr, ptr, %struct.ns_common, %struct.timens_offsets, ptr, i8 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.23 }
%struct.anon.23 = type { i64, i64, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_waitv = type { i64, i64, i32, i32 }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@init_time_ns = external dso_local global %struct.time_namespace, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0
@futex_q_init = external dso_local constant %struct.futex_q, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_set_robust_list(ptr noundef %regs) #0 align 16 !dbg !5950 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5957
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5957
  %1 = load i64, ptr %di, align 8, !dbg !5957
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5957
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5957
  %3 = load i64, ptr %si, align 8, !dbg !5957
  %call = call i64 @__se_sys_set_robust_list(i64 noundef %1, i64 noundef %3) #18, !dbg !5957
  ret i64 %call, !dbg !5957
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_set_robust_list(i64 noundef %head, i64 noundef %len) #0 align 16 !dbg !5958 {
entry:
  %head.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5962, metadata !DIExpression()), !dbg !5965
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5963, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5964, metadata !DIExpression()), !dbg !5965
  %0 = load i64, ptr %head.addr, align 8, !dbg !5965
  %1 = inttoptr i64 %0 to ptr, !dbg !5965
  %2 = load i64, ptr %len.addr, align 8, !dbg !5965
  %call = call i64 @__do_sys_set_robust_list(ptr noundef %1, i64 noundef %2) #18, !dbg !5965
  store i64 %call, ptr %ret, align 8, !dbg !5965
  br label %do.body, !dbg !5965

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5966

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5966

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !5965
  ret i64 %3, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_set_robust_list(ptr noundef %regs) #0 align 16 !dbg !5968 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5971
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5971
  %1 = load i64, ptr %bx, align 8, !dbg !5971
  %conv = trunc i64 %1 to i32, !dbg !5971
  %conv1 = zext i32 %conv to i64, !dbg !5971
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5971
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5971
  %3 = load i64, ptr %cx, align 8, !dbg !5971
  %conv2 = trunc i64 %3 to i32, !dbg !5971
  %conv3 = zext i32 %conv2 to i64, !dbg !5971
  %call = call i64 @__se_sys_set_robust_list(i64 noundef %conv1, i64 noundef %conv3) #18, !dbg !5971
  ret i64 %call, !dbg !5971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_get_robust_list(ptr noundef %regs) #0 align 16 !dbg !5972 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5975
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5975
  %1 = load i64, ptr %di, align 8, !dbg !5975
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5975
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5975
  %3 = load i64, ptr %si, align 8, !dbg !5975
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5975
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5975
  %5 = load i64, ptr %dx, align 8, !dbg !5975
  %call = call i64 @__se_sys_get_robust_list(i64 noundef %1, i64 noundef %3, i64 noundef %5) #18, !dbg !5975
  ret i64 %call, !dbg !5975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_get_robust_list(i64 noundef %pid, i64 noundef %head_ptr, i64 noundef %len_ptr) #0 align 16 !dbg !5976 {
entry:
  %pid.addr = alloca i64, align 8
  %head_ptr.addr = alloca i64, align 8
  %len_ptr.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5980, metadata !DIExpression()), !dbg !5984
  store i64 %head_ptr, ptr %head_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head_ptr.addr, metadata !5981, metadata !DIExpression()), !dbg !5984
  store i64 %len_ptr, ptr %len_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len_ptr.addr, metadata !5982, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load i64, ptr %pid.addr, align 8, !dbg !5984
  %conv = trunc i64 %0 to i32, !dbg !5984
  %1 = load i64, ptr %head_ptr.addr, align 8, !dbg !5984
  %2 = inttoptr i64 %1 to ptr, !dbg !5984
  %3 = load i64, ptr %len_ptr.addr, align 8, !dbg !5984
  %4 = inttoptr i64 %3 to ptr, !dbg !5984
  %call = call i64 @__do_sys_get_robust_list(i32 noundef %conv, ptr noundef %2, ptr noundef %4) #18, !dbg !5984
  store i64 %call, ptr %ret, align 8, !dbg !5984
  br label %do.body, !dbg !5984

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5985

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !5984
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !5984
  ret i64 %5, !dbg !5984
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_get_robust_list(ptr noundef %regs) #0 align 16 !dbg !5987 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5990
  %1 = load i64, ptr %bx, align 8, !dbg !5990
  %conv = trunc i64 %1 to i32, !dbg !5990
  %conv1 = zext i32 %conv to i64, !dbg !5990
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5990
  %3 = load i64, ptr %cx, align 8, !dbg !5990
  %conv2 = trunc i64 %3 to i32, !dbg !5990
  %conv3 = zext i32 %conv2 to i64, !dbg !5990
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5990
  %5 = load i64, ptr %dx, align 8, !dbg !5990
  %conv4 = trunc i64 %5 to i32, !dbg !5990
  %conv5 = zext i32 %conv4 to i64, !dbg !5990
  %call = call i64 @__se_sys_get_robust_list(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #18, !dbg !5990
  ret i64 %call, !dbg !5990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @do_futex(ptr noundef %uaddr, i32 noundef %op, i32 noundef %val, ptr noundef %timeout, ptr noundef %uaddr2, i32 noundef %val2, i32 noundef %val3) #0 align 16 !dbg !5991 {
entry:
  %retval = alloca i64, align 8
  %uaddr.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %timeout.addr = alloca ptr, align 8
  %uaddr2.addr = alloca ptr, align 8
  %val2.addr = alloca i32, align 4
  %val3.addr = alloca i32, align 4
  %cmd = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !5996, metadata !DIExpression()), !dbg !6005
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5997, metadata !DIExpression()), !dbg !6006
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5998, metadata !DIExpression()), !dbg !6007
  store ptr %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !5999, metadata !DIExpression()), !dbg !6008
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !6000, metadata !DIExpression()), !dbg !6009
  store i32 %val2, ptr %val2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val2.addr, metadata !6001, metadata !DIExpression()), !dbg !6010
  store i32 %val3, ptr %val3.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val3.addr, metadata !6002, metadata !DIExpression()), !dbg !6011
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #19, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6003, metadata !DIExpression()), !dbg !6013
  %0 = load i32, ptr %op.addr, align 4, !dbg !6014
  %and = and i32 %0, -385, !dbg !6015
  store i32 %and, ptr %cmd, align 4, !dbg !6013
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #19, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6004, metadata !DIExpression()), !dbg !6017
  store i32 0, ptr %flags, align 4, !dbg !6017
  %1 = load i32, ptr %op.addr, align 4, !dbg !6018
  %and1 = and i32 %1, 128, !dbg !6020
  %tobool = icmp ne i32 %and1, 0, !dbg !6020
  br i1 %tobool, label %if.end, label %if.then, !dbg !6021

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %flags, align 4, !dbg !6022
  %or = or i32 %2, 1, !dbg !6022
  store i32 %or, ptr %flags, align 4, !dbg !6022
  br label %if.end, !dbg !6023

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %op.addr, align 4, !dbg !6024
  %and2 = and i32 %3, 256, !dbg !6026
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6026
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !6027

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr %flags, align 4, !dbg !6028
  %or5 = or i32 %4, 2, !dbg !6028
  store i32 %or5, ptr %flags, align 4, !dbg !6028
  %5 = load i32, ptr %cmd, align 4, !dbg !6030
  %cmp = icmp ne i32 %5, 9, !dbg !6032
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6033

land.lhs.true:                                    ; preds = %if.then4
  %6 = load i32, ptr %cmd, align 4, !dbg !6034
  %cmp6 = icmp ne i32 %6, 11, !dbg !6035
  br i1 %cmp6, label %land.lhs.true7, label %if.end10, !dbg !6036

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load i32, ptr %cmd, align 4, !dbg !6037
  %cmp8 = icmp ne i32 %7, 13, !dbg !6038
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6039

if.then9:                                         ; preds = %land.lhs.true7
  store i64 -38, ptr %retval, align 8, !dbg !6040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

if.end10:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.then4
  br label %if.end11, !dbg !6041

if.end11:                                         ; preds = %if.end10, %if.end
  %8 = load i32, ptr %cmd, align 4, !dbg !6042
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 9, label %sw.bb12
    i32 1, label %sw.bb13
    i32 10, label %sw.bb14
    i32 3, label %sw.bb17
    i32 4, label %sw.bb20
    i32 5, label %sw.bb23
    i32 6, label %sw.bb26
    i32 13, label %sw.bb28
    i32 7, label %sw.bb31
    i32 8, label %sw.bb34
    i32 11, label %sw.bb37
    i32 12, label %sw.bb40
  ], !dbg !6043

sw.bb:                                            ; preds = %if.end11
  store i32 -1, ptr %val3.addr, align 4, !dbg !6044
  br label %sw.bb12, !dbg !6046

sw.bb12:                                          ; preds = %if.end11, %sw.bb
  %9 = load ptr, ptr %uaddr.addr, align 8, !dbg !6047
  %10 = load i32, ptr %flags, align 4, !dbg !6048
  %11 = load i32, ptr %val.addr, align 4, !dbg !6049
  %12 = load ptr, ptr %timeout.addr, align 8, !dbg !6050
  %13 = load i32, ptr %val3.addr, align 4, !dbg !6051
  %call = call i32 @futex_wait(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13) #18, !dbg !6052
  %conv = sext i32 %call to i64, !dbg !6052
  store i64 %conv, ptr %retval, align 8, !dbg !6053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6053

sw.bb13:                                          ; preds = %if.end11
  store i32 -1, ptr %val3.addr, align 4, !dbg !6054
  br label %sw.bb14, !dbg !6055

sw.bb14:                                          ; preds = %if.end11, %sw.bb13
  %14 = load ptr, ptr %uaddr.addr, align 8, !dbg !6056
  %15 = load i32, ptr %flags, align 4, !dbg !6057
  %16 = load i32, ptr %val.addr, align 4, !dbg !6058
  %17 = load i32, ptr %val3.addr, align 4, !dbg !6059
  %call15 = call i32 @futex_wake(ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17) #18, !dbg !6060
  %conv16 = sext i32 %call15 to i64, !dbg !6060
  store i64 %conv16, ptr %retval, align 8, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

sw.bb17:                                          ; preds = %if.end11
  %18 = load ptr, ptr %uaddr.addr, align 8, !dbg !6062
  %19 = load i32, ptr %flags, align 4, !dbg !6063
  %20 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6064
  %21 = load i32, ptr %val.addr, align 4, !dbg !6065
  %22 = load i32, ptr %val2.addr, align 4, !dbg !6066
  %call18 = call i32 @futex_requeue(ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef null, i32 noundef 0) #18, !dbg !6067
  %conv19 = sext i32 %call18 to i64, !dbg !6067
  store i64 %conv19, ptr %retval, align 8, !dbg !6068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6068

sw.bb20:                                          ; preds = %if.end11
  %23 = load ptr, ptr %uaddr.addr, align 8, !dbg !6069
  %24 = load i32, ptr %flags, align 4, !dbg !6070
  %25 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6071
  %26 = load i32, ptr %val.addr, align 4, !dbg !6072
  %27 = load i32, ptr %val2.addr, align 4, !dbg !6073
  %call21 = call i32 @futex_requeue(ptr noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %val3.addr, i32 noundef 0) #18, !dbg !6074
  %conv22 = sext i32 %call21 to i64, !dbg !6074
  store i64 %conv22, ptr %retval, align 8, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

sw.bb23:                                          ; preds = %if.end11
  %28 = load ptr, ptr %uaddr.addr, align 8, !dbg !6076
  %29 = load i32, ptr %flags, align 4, !dbg !6077
  %30 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6078
  %31 = load i32, ptr %val.addr, align 4, !dbg !6079
  %32 = load i32, ptr %val2.addr, align 4, !dbg !6080
  %33 = load i32, ptr %val3.addr, align 4, !dbg !6081
  %call24 = call i32 @futex_wake_op(ptr noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33) #18, !dbg !6082
  %conv25 = sext i32 %call24 to i64, !dbg !6082
  store i64 %conv25, ptr %retval, align 8, !dbg !6083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

sw.bb26:                                          ; preds = %if.end11
  %34 = load i32, ptr %flags, align 4, !dbg !6084
  %or27 = or i32 %34, 2, !dbg !6084
  store i32 %or27, ptr %flags, align 4, !dbg !6084
  br label %sw.bb28, !dbg !6085

sw.bb28:                                          ; preds = %if.end11, %sw.bb26
  %35 = load ptr, ptr %uaddr.addr, align 8, !dbg !6086
  %36 = load i32, ptr %flags, align 4, !dbg !6087
  %37 = load ptr, ptr %timeout.addr, align 8, !dbg !6088
  %call29 = call i32 @futex_lock_pi(ptr noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef 0) #18, !dbg !6089
  %conv30 = sext i32 %call29 to i64, !dbg !6089
  store i64 %conv30, ptr %retval, align 8, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

sw.bb31:                                          ; preds = %if.end11
  %38 = load ptr, ptr %uaddr.addr, align 8, !dbg !6091
  %39 = load i32, ptr %flags, align 4, !dbg !6092
  %call32 = call i32 @futex_unlock_pi(ptr noundef %38, i32 noundef %39) #18, !dbg !6093
  %conv33 = sext i32 %call32 to i64, !dbg !6093
  store i64 %conv33, ptr %retval, align 8, !dbg !6094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6094

sw.bb34:                                          ; preds = %if.end11
  %40 = load ptr, ptr %uaddr.addr, align 8, !dbg !6095
  %41 = load i32, ptr %flags, align 4, !dbg !6096
  %call35 = call i32 @futex_lock_pi(ptr noundef %40, i32 noundef %41, ptr noundef null, i32 noundef 1) #18, !dbg !6097
  %conv36 = sext i32 %call35 to i64, !dbg !6097
  store i64 %conv36, ptr %retval, align 8, !dbg !6098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6098

sw.bb37:                                          ; preds = %if.end11
  store i32 -1, ptr %val3.addr, align 4, !dbg !6099
  %42 = load ptr, ptr %uaddr.addr, align 8, !dbg !6100
  %43 = load i32, ptr %flags, align 4, !dbg !6101
  %44 = load i32, ptr %val.addr, align 4, !dbg !6102
  %45 = load ptr, ptr %timeout.addr, align 8, !dbg !6103
  %46 = load i32, ptr %val3.addr, align 4, !dbg !6104
  %47 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6105
  %call38 = call i32 @futex_wait_requeue_pi(ptr noundef %42, i32 noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47) #18, !dbg !6106
  %conv39 = sext i32 %call38 to i64, !dbg !6106
  store i64 %conv39, ptr %retval, align 8, !dbg !6107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6107

sw.bb40:                                          ; preds = %if.end11
  %48 = load ptr, ptr %uaddr.addr, align 8, !dbg !6108
  %49 = load i32, ptr %flags, align 4, !dbg !6109
  %50 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6110
  %51 = load i32, ptr %val.addr, align 4, !dbg !6111
  %52 = load i32, ptr %val2.addr, align 4, !dbg !6112
  %call41 = call i32 @futex_requeue(ptr noundef %48, i32 noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52, ptr noundef %val3.addr, i32 noundef 1) #18, !dbg !6113
  %conv42 = sext i32 %call41 to i64, !dbg !6113
  store i64 %conv42, ptr %retval, align 8, !dbg !6114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6114

sw.epilog:                                        ; preds = %if.end11
  store i64 -38, ptr %retval, align 8, !dbg !6115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6115

cleanup:                                          ; preds = %sw.epilog, %sw.bb40, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb12, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #19, !dbg !6116
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #19, !dbg !6116
  %53 = load i64, ptr %retval, align 8, !dbg !6116
  ret i64 %53, !dbg !6116
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6117 dso_local i32 @futex_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6120 dso_local i32 @futex_wake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6123 dso_local i32 @futex_requeue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local i32 @futex_wake_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6129 dso_local i32 @futex_lock_pi(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6132 dso_local i32 @futex_unlock_pi(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6135 dso_local i32 @futex_wait_requeue_pi(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_futex(ptr noundef %regs) #0 align 16 !dbg !6138 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6141
  %1 = load i64, ptr %di, align 8, !dbg !6141
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6141
  %3 = load i64, ptr %si, align 8, !dbg !6141
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6141
  %5 = load i64, ptr %dx, align 8, !dbg !6141
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !6141
  %7 = load i64, ptr %r10, align 8, !dbg !6141
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !6141
  %9 = load i64, ptr %r8, align 8, !dbg !6141
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6141
  %r9 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 8, !dbg !6141
  %11 = load i64, ptr %r9, align 8, !dbg !6141
  %call = call i64 @__se_sys_futex(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #18, !dbg !6141
  ret i64 %call, !dbg !6141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_futex(i64 noundef %uaddr, i64 noundef %op, i64 noundef %val, i64 noundef %utime, i64 noundef %uaddr2, i64 noundef %val3) #0 align 16 !dbg !6142 {
entry:
  %uaddr.addr = alloca i64, align 8
  %op.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %utime.addr = alloca i64, align 8
  %uaddr2.addr = alloca i64, align 8
  %val3.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !6146, metadata !DIExpression()), !dbg !6153
  store i64 %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6147, metadata !DIExpression()), !dbg !6153
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6148, metadata !DIExpression()), !dbg !6153
  store i64 %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !6149, metadata !DIExpression()), !dbg !6153
  store i64 %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !6150, metadata !DIExpression()), !dbg !6153
  store i64 %val3, ptr %val3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val3.addr, metadata !6151, metadata !DIExpression()), !dbg !6153
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load i64, ptr %uaddr.addr, align 8, !dbg !6153
  %1 = inttoptr i64 %0 to ptr, !dbg !6153
  %2 = load i64, ptr %op.addr, align 8, !dbg !6153
  %conv = trunc i64 %2 to i32, !dbg !6153
  %3 = load i64, ptr %val.addr, align 8, !dbg !6153
  %conv1 = trunc i64 %3 to i32, !dbg !6153
  %4 = load i64, ptr %utime.addr, align 8, !dbg !6153
  %5 = inttoptr i64 %4 to ptr, !dbg !6153
  %6 = load i64, ptr %uaddr2.addr, align 8, !dbg !6153
  %7 = inttoptr i64 %6 to ptr, !dbg !6153
  %8 = load i64, ptr %val3.addr, align 8, !dbg !6153
  %conv2 = trunc i64 %8 to i32, !dbg !6153
  %call = call i64 @__do_sys_futex(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, ptr noundef %5, ptr noundef %7, i32 noundef %conv2) #18, !dbg !6153
  store i64 %call, ptr %ret, align 8, !dbg !6153
  br label %do.body, !dbg !6153

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6154

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6154

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %ret, align 8, !dbg !6153
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6153
  ret i64 %9, !dbg !6153
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_futex(ptr noundef %regs) #0 align 16 !dbg !6156 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6158, metadata !DIExpression()), !dbg !6159
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6159
  %1 = load i64, ptr %bx, align 8, !dbg !6159
  %conv = trunc i64 %1 to i32, !dbg !6159
  %conv1 = zext i32 %conv to i64, !dbg !6159
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6159
  %3 = load i64, ptr %cx, align 8, !dbg !6159
  %conv2 = trunc i64 %3 to i32, !dbg !6159
  %conv3 = zext i32 %conv2 to i64, !dbg !6159
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6159
  %5 = load i64, ptr %dx, align 8, !dbg !6159
  %conv4 = trunc i64 %5 to i32, !dbg !6159
  %conv5 = zext i32 %conv4 to i64, !dbg !6159
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6159
  %7 = load i64, ptr %si, align 8, !dbg !6159
  %conv6 = trunc i64 %7 to i32, !dbg !6159
  %conv7 = zext i32 %conv6 to i64, !dbg !6159
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !6159
  %9 = load i64, ptr %di, align 8, !dbg !6159
  %conv8 = trunc i64 %9 to i32, !dbg !6159
  %conv9 = zext i32 %conv8 to i64, !dbg !6159
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6159
  %bp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 4, !dbg !6159
  %11 = load i64, ptr %bp, align 8, !dbg !6159
  %conv10 = trunc i64 %11 to i32, !dbg !6159
  %conv11 = zext i32 %conv10 to i64, !dbg !6159
  %call = call i64 @__se_sys_futex(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9, i64 noundef %conv11) #18, !dbg !6159
  ret i64 %call, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_futex_waitv(ptr noundef %regs) #0 align 16 !dbg !6160 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6162, metadata !DIExpression()), !dbg !6163
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6163
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6163
  %1 = load i64, ptr %di, align 8, !dbg !6163
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6163
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6163
  %3 = load i64, ptr %si, align 8, !dbg !6163
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6163
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6163
  %5 = load i64, ptr %dx, align 8, !dbg !6163
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6163
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !6163
  %7 = load i64, ptr %r10, align 8, !dbg !6163
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6163
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !6163
  %9 = load i64, ptr %r8, align 8, !dbg !6163
  %call = call i64 @__se_sys_futex_waitv(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #18, !dbg !6163
  ret i64 %call, !dbg !6163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_futex_waitv(i64 noundef %waiters, i64 noundef %nr_futexes, i64 noundef %flags, i64 noundef %timeout, i64 noundef %clockid) #0 align 16 !dbg !6164 {
entry:
  %waiters.addr = alloca i64, align 8
  %nr_futexes.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %clockid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %waiters, ptr %waiters.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiters.addr, metadata !6168, metadata !DIExpression()), !dbg !6174
  store i64 %nr_futexes, ptr %nr_futexes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_futexes.addr, metadata !6169, metadata !DIExpression()), !dbg !6174
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6170, metadata !DIExpression()), !dbg !6174
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6171, metadata !DIExpression()), !dbg !6174
  store i64 %clockid, ptr %clockid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clockid.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6173, metadata !DIExpression()), !dbg !6174
  %0 = load i64, ptr %waiters.addr, align 8, !dbg !6174
  %1 = inttoptr i64 %0 to ptr, !dbg !6174
  %2 = load i64, ptr %nr_futexes.addr, align 8, !dbg !6174
  %conv = trunc i64 %2 to i32, !dbg !6174
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6174
  %conv1 = trunc i64 %3 to i32, !dbg !6174
  %4 = load i64, ptr %timeout.addr, align 8, !dbg !6174
  %5 = inttoptr i64 %4 to ptr, !dbg !6174
  %6 = load i64, ptr %clockid.addr, align 8, !dbg !6174
  %conv2 = trunc i64 %6 to i32, !dbg !6174
  %call = call i64 @__do_sys_futex_waitv(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, ptr noundef %5, i32 noundef %conv2) #18, !dbg !6174
  store i64 %call, ptr %ret, align 8, !dbg !6174
  br label %do.body, !dbg !6174

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6175

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6175

do.end:                                           ; preds = %do.cond
  %7 = load i64, ptr %ret, align 8, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6174
  ret i64 %7, !dbg !6174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_futex_waitv(ptr noundef %regs) #0 align 16 !dbg !6177 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6179, metadata !DIExpression()), !dbg !6180
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6180
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6180
  %1 = load i64, ptr %bx, align 8, !dbg !6180
  %conv = trunc i64 %1 to i32, !dbg !6180
  %conv1 = zext i32 %conv to i64, !dbg !6180
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6180
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6180
  %3 = load i64, ptr %cx, align 8, !dbg !6180
  %conv2 = trunc i64 %3 to i32, !dbg !6180
  %conv3 = zext i32 %conv2 to i64, !dbg !6180
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6180
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6180
  %5 = load i64, ptr %dx, align 8, !dbg !6180
  %conv4 = trunc i64 %5 to i32, !dbg !6180
  %conv5 = zext i32 %conv4 to i64, !dbg !6180
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6180
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6180
  %7 = load i64, ptr %si, align 8, !dbg !6180
  %conv6 = trunc i64 %7 to i32, !dbg !6180
  %conv7 = zext i32 %conv6 to i64, !dbg !6180
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6180
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !6180
  %9 = load i64, ptr %di, align 8, !dbg !6180
  %conv8 = trunc i64 %9 to i32, !dbg !6180
  %conv9 = zext i32 %conv8 to i64, !dbg !6180
  %call = call i64 @__se_sys_futex_waitv(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9) #18, !dbg !6180
  ret i64 %call, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_set_robust_list(ptr noundef %regs) #0 align 16 !dbg !6181 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6184
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6184
  %1 = load i64, ptr %bx, align 8, !dbg !6184
  %conv = trunc i64 %1 to i32, !dbg !6184
  %conv1 = zext i32 %conv to i64, !dbg !6184
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6184
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6184
  %3 = load i64, ptr %cx, align 8, !dbg !6184
  %conv2 = trunc i64 %3 to i32, !dbg !6184
  %conv3 = zext i32 %conv2 to i64, !dbg !6184
  %call = call i64 @__se_compat_sys_set_robust_list(i64 noundef %conv1, i64 noundef %conv3) #18, !dbg !6184
  ret i64 %call, !dbg !6184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_set_robust_list(i64 noundef %head, i64 noundef %len) #0 align 16 !dbg !6185 {
entry:
  %head.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store i64 %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  %0 = load i64, ptr %head.addr, align 8, !dbg !6189
  %1 = inttoptr i64 %0 to ptr, !dbg !6189
  %2 = load i64, ptr %len.addr, align 8, !dbg !6189
  %conv = trunc i64 %2 to i32, !dbg !6189
  %call = call i64 @__do_compat_sys_set_robust_list(ptr noundef %1, i32 noundef %conv) #18, !dbg !6189
  ret i64 %call, !dbg !6189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_get_robust_list(ptr noundef %regs) #0 align 16 !dbg !6190 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6193
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6193
  %1 = load i64, ptr %bx, align 8, !dbg !6193
  %conv = trunc i64 %1 to i32, !dbg !6193
  %conv1 = zext i32 %conv to i64, !dbg !6193
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6193
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6193
  %3 = load i64, ptr %cx, align 8, !dbg !6193
  %conv2 = trunc i64 %3 to i32, !dbg !6193
  %conv3 = zext i32 %conv2 to i64, !dbg !6193
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6193
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6193
  %5 = load i64, ptr %dx, align 8, !dbg !6193
  %conv4 = trunc i64 %5 to i32, !dbg !6193
  %conv5 = zext i32 %conv4 to i64, !dbg !6193
  %call = call i64 @__se_compat_sys_get_robust_list(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #18, !dbg !6193
  ret i64 %call, !dbg !6193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_get_robust_list(i64 noundef %pid, i64 noundef %head_ptr, i64 noundef %len_ptr) #0 align 16 !dbg !6194 {
entry:
  %pid.addr = alloca i64, align 8
  %head_ptr.addr = alloca i64, align 8
  %len_ptr.addr = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6196, metadata !DIExpression()), !dbg !6199
  store i64 %head_ptr, ptr %head_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head_ptr.addr, metadata !6197, metadata !DIExpression()), !dbg !6199
  store i64 %len_ptr, ptr %len_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len_ptr.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load i64, ptr %pid.addr, align 8, !dbg !6199
  %conv = trunc i64 %0 to i32, !dbg !6199
  %1 = load i64, ptr %head_ptr.addr, align 8, !dbg !6199
  %2 = inttoptr i64 %1 to ptr, !dbg !6199
  %3 = load i64, ptr %len_ptr.addr, align 8, !dbg !6199
  %4 = inttoptr i64 %3 to ptr, !dbg !6199
  %call = call i64 @__do_compat_sys_get_robust_list(i32 noundef %conv, ptr noundef %2, ptr noundef %4) #18, !dbg !6199
  ret i64 %call, !dbg !6199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_futex_time32(ptr noundef %regs) #0 align 16 !dbg !6200 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6203
  %1 = load i64, ptr %di, align 8, !dbg !6203
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6203
  %3 = load i64, ptr %si, align 8, !dbg !6203
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6203
  %5 = load i64, ptr %dx, align 8, !dbg !6203
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !6203
  %7 = load i64, ptr %r10, align 8, !dbg !6203
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !6203
  %9 = load i64, ptr %r8, align 8, !dbg !6203
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6203
  %r9 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 8, !dbg !6203
  %11 = load i64, ptr %r9, align 8, !dbg !6203
  %call = call i64 @__se_sys_futex_time32(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #18, !dbg !6203
  ret i64 %call, !dbg !6203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_futex_time32(i64 noundef %uaddr, i64 noundef %op, i64 noundef %val, i64 noundef %utime, i64 noundef %uaddr2, i64 noundef %val3) #0 align 16 !dbg !6204 {
entry:
  %uaddr.addr = alloca i64, align 8
  %op.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  %utime.addr = alloca i64, align 8
  %uaddr2.addr = alloca i64, align 8
  %val3.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !6206, metadata !DIExpression()), !dbg !6213
  store i64 %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6207, metadata !DIExpression()), !dbg !6213
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6208, metadata !DIExpression()), !dbg !6213
  store i64 %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !6209, metadata !DIExpression()), !dbg !6213
  store i64 %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !6210, metadata !DIExpression()), !dbg !6213
  store i64 %val3, ptr %val3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val3.addr, metadata !6211, metadata !DIExpression()), !dbg !6213
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6213
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load i64, ptr %uaddr.addr, align 8, !dbg !6213
  %1 = inttoptr i64 %0 to ptr, !dbg !6213
  %2 = load i64, ptr %op.addr, align 8, !dbg !6213
  %conv = trunc i64 %2 to i32, !dbg !6213
  %3 = load i64, ptr %val.addr, align 8, !dbg !6213
  %conv1 = trunc i64 %3 to i32, !dbg !6213
  %4 = load i64, ptr %utime.addr, align 8, !dbg !6213
  %5 = inttoptr i64 %4 to ptr, !dbg !6213
  %6 = load i64, ptr %uaddr2.addr, align 8, !dbg !6213
  %7 = inttoptr i64 %6 to ptr, !dbg !6213
  %8 = load i64, ptr %val3.addr, align 8, !dbg !6213
  %conv2 = trunc i64 %8 to i32, !dbg !6213
  %call = call i64 @__do_sys_futex_time32(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1, ptr noundef %5, ptr noundef %7, i32 noundef %conv2) #18, !dbg !6213
  store i64 %call, ptr %ret, align 8, !dbg !6213
  br label %do.body, !dbg !6213

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6214

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6214

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %ret, align 8, !dbg !6213
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6213
  ret i64 %9, !dbg !6213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_futex_time32(ptr noundef %regs) #0 align 16 !dbg !6216 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6219
  %1 = load i64, ptr %bx, align 8, !dbg !6219
  %conv = trunc i64 %1 to i32, !dbg !6219
  %conv1 = zext i32 %conv to i64, !dbg !6219
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6219
  %3 = load i64, ptr %cx, align 8, !dbg !6219
  %conv2 = trunc i64 %3 to i32, !dbg !6219
  %conv3 = zext i32 %conv2 to i64, !dbg !6219
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6219
  %5 = load i64, ptr %dx, align 8, !dbg !6219
  %conv4 = trunc i64 %5 to i32, !dbg !6219
  %conv5 = zext i32 %conv4 to i64, !dbg !6219
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6219
  %7 = load i64, ptr %si, align 8, !dbg !6219
  %conv6 = trunc i64 %7 to i32, !dbg !6219
  %conv7 = zext i32 %conv6 to i64, !dbg !6219
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !6219
  %9 = load i64, ptr %di, align 8, !dbg !6219
  %conv8 = trunc i64 %9 to i32, !dbg !6219
  %conv9 = zext i32 %conv8 to i64, !dbg !6219
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6219
  %bp = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 4, !dbg !6219
  %11 = load i64, ptr %bp, align 8, !dbg !6219
  %conv10 = trunc i64 %11 to i32, !dbg !6219
  %conv11 = zext i32 %conv10 to i64, !dbg !6219
  %call = call i64 @__se_sys_futex_time32(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9, i64 noundef %conv11) #18, !dbg !6219
  ret i64 %call, !dbg !6219
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_set_robust_list(ptr noundef %head, i64 noundef %len) #4 align 16 !dbg !6220 {
entry:
  %retval = alloca i64, align 8
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6224, metadata !DIExpression()), !dbg !6226
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load i64, ptr %len.addr, align 8, !dbg !6227
  %cmp = icmp ne i64 %0, 24, !dbg !6227
  %lnot = xor i1 %cmp, true, !dbg !6227
  %lnot1 = xor i1 %lnot, true, !dbg !6227
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6227
  %conv = sext i32 %lnot.ext to i64, !dbg !6227
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6227
  %tobool = icmp ne i64 %expval, 0, !dbg !6227
  br i1 %tobool, label %if.then, label %if.end, !dbg !6229

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6230
  br label %return, !dbg !6230

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6231
  %call = call ptr @get_current() #18, !dbg !6232
  %robust_list = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 145, !dbg !6233
  store ptr %1, ptr %robust_list, align 32, !dbg !6234
  store i64 0, ptr %retval, align 8, !dbg !6235
  br label %return, !dbg !6235

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !6236
  ret i64 %2, !dbg !6236
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6237 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #19, !dbg !6248
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6242, metadata !DIExpression()), !dbg !6248
  br label %do.body, !dbg !6248

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6244, metadata !DIExpression()), !dbg !6249
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6249
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6248
  br label %do.cond, !dbg !6249

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6249

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #19, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6246, metadata !DIExpression()), !dbg !6250
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !6250, !srcloc !6251
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6250
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6250
  %3 = inttoptr i64 %2 to ptr, !dbg !6250
  store ptr %3, ptr %tmp, align 8, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #19, !dbg !6248
  %4 = load ptr, ptr %tmp, align 8, !dbg !6250
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6248
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6248
  store ptr %5, ptr %tmp1, align 8, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #19, !dbg !6252
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6248
  ret ptr %6, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_get_robust_list(i32 noundef %pid, ptr noundef %head_ptr, ptr noundef %len_ptr) #4 align 16 !dbg !6254 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %head_ptr.addr = alloca ptr, align 8
  %len_ptr.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %ret = alloca i64, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp13 = alloca i64, align 8
  %__ret_pu14 = alloca i32, align 4
  %__ptr_pu15 = alloca ptr, align 8
  %__val_pu16 = alloca ptr, align 8
  %__x17 = alloca ptr, align 8
  %__ptr18 = alloca ptr, align 8
  %tmp21 = alloca i64, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6258, metadata !DIExpression()), !dbg !6280
  store ptr %head_ptr, ptr %head_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head_ptr.addr, metadata !6259, metadata !DIExpression()), !dbg !6280
  store ptr %len_ptr, ptr %len_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len_ptr.addr, metadata !6260, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6261, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6262, metadata !DIExpression()), !dbg !6284
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !6285
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6263, metadata !DIExpression()), !dbg !6286
  call void @rcu_read_lock() #18, !dbg !6287
  store i64 -3, ptr %ret, align 8, !dbg !6288
  %0 = load i32, ptr %pid.addr, align 4, !dbg !6289
  %tobool = icmp ne i32 %0, 0, !dbg !6289
  br i1 %tobool, label %if.else, label %if.then, !dbg !6291

if.then:                                          ; preds = %entry
  %call = call ptr @get_current() #18, !dbg !6292
  store ptr %call, ptr %p, align 8, !dbg !6293
  br label %if.end4, !dbg !6294

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6295
  %call1 = call ptr @find_task_by_vpid(i32 noundef %1) #18, !dbg !6297
  store ptr %call1, ptr %p, align 8, !dbg !6298
  %2 = load ptr, ptr %p, align 8, !dbg !6299
  %tobool2 = icmp ne ptr %2, null, !dbg !6299
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !6301

if.then3:                                         ; preds = %if.else
  br label %err_unlock, !dbg !6302

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i64 -1, ptr %ret, align 8, !dbg !6303
  %3 = load ptr, ptr %p, align 8, !dbg !6304
  %call5 = call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 17) #18, !dbg !6306
  br i1 %call5, label %if.end7, label %if.then6, !dbg !6307

if.then6:                                         ; preds = %if.end4
  br label %err_unlock, !dbg !6308

if.end7:                                          ; preds = %if.end4
  %4 = load ptr, ptr %p, align 8, !dbg !6309
  %robust_list = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 145, !dbg !6310
  %5 = load ptr, ptr %robust_list, align 32, !dbg !6310
  store ptr %5, ptr %head, align 8, !dbg !6311
  call void @rcu_read_unlock() #18, !dbg !6312
  call void @might_fault() #18, !dbg !6313
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6264, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6268, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu) #19, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6269, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #19, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6270, metadata !DIExpression()), !dbg !6314
  store i64 24, ptr %__x, align 8, !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6271, metadata !DIExpression()), !dbg !6314
  %6 = load ptr, ptr %len_ptr.addr, align 8, !dbg !6314
  store ptr %6, ptr %__ptr, align 8, !dbg !6314
  %7 = load ptr, ptr %__ptr, align 8, !dbg !6314
  store ptr %7, ptr %__ptr_pu, align 8, !dbg !6314
  %8 = load i64, ptr %__x, align 8, !dbg !6314
  store i64 %8, ptr %__val_pu, align 8, !dbg !6314
  %9 = call i64 @llvm.read_register.i64(metadata !5940), !dbg !6314
  %10 = load ptr, ptr %__ptr_pu, align 8, !dbg !6314
  %11 = load i64, ptr %__val_pu, align 8, !dbg !6314
  %12 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %10, i64 %11, i64 8, i64 %9) #19, !dbg !6314, !srcloc !6315
  %asmresult = extractvalue { ptr, i64 } %12, 0, !dbg !6314
  %asmresult8 = extractvalue { ptr, i64 } %12, 1, !dbg !6314
  %13 = ptrtoint ptr %asmresult to i64, !dbg !6314
  %14 = trunc i64 %13 to i32, !dbg !6314
  store i32 %14, ptr %__ret_pu, align 4, !dbg !6314
  call void @llvm.write_register.i64(metadata !5940, i64 %asmresult8), !dbg !6314
  %15 = load ptr, ptr %__ptr, align 8, !dbg !6316
  call void @kmsan_copy_to_user(ptr noundef %15, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #18, !dbg !6316
  %16 = load i32, ptr %__ret_pu, align 4, !dbg !6314
  %conv = sext i32 %16 to i64, !dbg !6314
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6314
  store i64 %expval, ptr %tmp9, align 8, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #19, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu) #19, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !6313
  %17 = load i64, ptr %tmp9, align 8, !dbg !6314
  store i64 %17, ptr %tmp, align 8, !dbg !6313
  %18 = load i64, ptr %tmp, align 8, !dbg !6313
  %tobool10 = icmp ne i64 %18, 0, !dbg !6318
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6319

if.then11:                                        ; preds = %if.end7
  store i64 -14, ptr %retval, align 8, !dbg !6320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6320

if.end12:                                         ; preds = %if.end7
  call void @might_fault() #18, !dbg !6321
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu14) #19, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__ret_pu14, metadata !6272, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu15) #19, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu15, metadata !6275, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu16) #19, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__val_pu16, metadata !6276, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x17) #19, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__x17, metadata !6277, metadata !DIExpression()), !dbg !6322
  %19 = load ptr, ptr %head, align 8, !dbg !6322
  store ptr %19, ptr %__x17, align 8, !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #19, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !6278, metadata !DIExpression()), !dbg !6322
  %20 = load ptr, ptr %head_ptr.addr, align 8, !dbg !6322
  store ptr %20, ptr %__ptr18, align 8, !dbg !6322
  %21 = load ptr, ptr %__ptr18, align 8, !dbg !6322
  store ptr %21, ptr %__ptr_pu15, align 8, !dbg !6322
  %22 = load ptr, ptr %__x17, align 8, !dbg !6322
  store ptr %22, ptr %__val_pu16, align 8, !dbg !6322
  %23 = call i64 @llvm.read_register.i64(metadata !5940), !dbg !6322
  %24 = load ptr, ptr %__ptr_pu15, align 8, !dbg !6322
  %25 = load ptr, ptr %__val_pu16, align 8, !dbg !6322
  %26 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %24, ptr %25, i64 8, i64 %23) #19, !dbg !6322, !srcloc !6323
  %asmresult19 = extractvalue { ptr, i64 } %26, 0, !dbg !6322
  %asmresult20 = extractvalue { ptr, i64 } %26, 1, !dbg !6322
  %27 = ptrtoint ptr %asmresult19 to i64, !dbg !6322
  %28 = trunc i64 %27 to i32, !dbg !6322
  store i32 %28, ptr %__ret_pu14, align 4, !dbg !6322
  call void @llvm.write_register.i64(metadata !5940, i64 %asmresult20), !dbg !6322
  %29 = load ptr, ptr %__ptr18, align 8, !dbg !6324
  call void @kmsan_copy_to_user(ptr noundef %29, ptr noundef %__x17, i64 noundef 8, i64 noundef 0) #18, !dbg !6324
  %30 = load i32, ptr %__ret_pu14, align 4, !dbg !6322
  %conv22 = sext i32 %30 to i64, !dbg !6322
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6322
  store i64 %expval23, ptr %tmp21, align 8, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #19, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x17) #19, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu16) #19, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu15) #19, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu14) #19, !dbg !6321
  %31 = load i64, ptr %tmp21, align 8, !dbg !6322
  store i64 %31, ptr %tmp13, align 8, !dbg !6321
  %32 = load i64, ptr %tmp13, align 8, !dbg !6321
  store i64 %32, ptr %retval, align 8, !dbg !6326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6326

err_unlock:                                       ; preds = %if.then6, %if.then3
  call void @llvm.dbg.label(metadata !6279), !dbg !6327
  call void @rcu_read_unlock() #18, !dbg !6328
  %33 = load i64, ptr %ret, align 8, !dbg !6329
  store i64 %33, ptr %retval, align 8, !dbg !6330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6330

cleanup:                                          ; preds = %err_unlock, %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !6331
  %34 = load i64, ptr %retval, align 8, !dbg !6331
  ret i64 %34, !dbg !6331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !6332 {
entry:
  call void @__rcu_read_lock() #18, !dbg !6334
  br label %do.body, !dbg !6335

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6336

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6338

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6339

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6342 dso_local ptr @find_task_by_vpid(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !6349 {
entry:
  br label %do.body, !dbg !6350

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6351

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #18, !dbg !6353
  br label %do.body1, !dbg !6354

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6355

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !6358 {
entry:
  ret void, !dbg !6360
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !6361 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6366, metadata !DIExpression()), !dbg !6370
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6367, metadata !DIExpression()), !dbg !6371
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6368, metadata !DIExpression()), !dbg !6372
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6369, metadata !DIExpression()), !dbg !6373
  ret void, !dbg !6374
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6375 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6376 dso_local void @__rcu_read_unlock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_futex(ptr noundef %uaddr, i32 noundef %op, i32 noundef %val, ptr noundef %utime, ptr noundef %uaddr2, i32 noundef %val3) #4 align 16 !dbg !6377 {
entry:
  %retval = alloca i64, align 8
  %uaddr.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %utime.addr = alloca ptr, align 8
  %uaddr2.addr = alloca ptr, align 8
  %val3.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cmd = alloca i32, align 4
  %t = alloca i64, align 8
  %tp = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !6381, metadata !DIExpression()), !dbg !6392
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6382, metadata !DIExpression()), !dbg !6392
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6383, metadata !DIExpression()), !dbg !6392
  store ptr %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !6384, metadata !DIExpression()), !dbg !6392
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !6385, metadata !DIExpression()), !dbg !6392
  store i32 %val3, ptr %val3.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val3.addr, metadata !6386, metadata !DIExpression()), !dbg !6392
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6387, metadata !DIExpression()), !dbg !6394
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #19, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6388, metadata !DIExpression()), !dbg !6395
  %0 = load i32, ptr %op.addr, align 4, !dbg !6396
  %and = and i32 %0, -385, !dbg !6397
  store i32 %and, ptr %cmd, align 4, !dbg !6395
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #19, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6389, metadata !DIExpression()), !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #19, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !6390, metadata !DIExpression()), !dbg !6400
  store ptr null, ptr %tp, align 8, !dbg !6400
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #19, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6391, metadata !DIExpression()), !dbg !6402
  %1 = load ptr, ptr %utime.addr, align 8, !dbg !6403
  %tobool = icmp ne ptr %1, null, !dbg !6403
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !6405

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %cmd, align 4, !dbg !6406
  %call = call zeroext i1 @futex_cmd_has_timeout(i32 noundef %2) #18, !dbg !6407
  br i1 %call, label %if.then, label %if.end17, !dbg !6408

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %op.addr, align 4, !dbg !6409
  %and1 = and i32 %3, 128, !dbg !6409
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6409
  %lnot = xor i1 %tobool2, true, !dbg !6409
  %call3 = call zeroext i1 @should_fail_futex(i1 noundef zeroext %lnot) #18, !dbg !6409
  %lnot4 = xor i1 %call3, true, !dbg !6409
  %lnot5 = xor i1 %lnot4, true, !dbg !6409
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6409
  %conv = sext i32 %lnot.ext to i64, !dbg !6409
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6409
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6409
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !6412

if.then7:                                         ; preds = %if.then
  store i64 -14, ptr %retval, align 8, !dbg !6413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6413

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %utime.addr, align 8, !dbg !6414
  %call8 = call i32 @get_timespec64(ptr noundef %ts, ptr noundef %4) #18, !dbg !6416
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6416
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6417

if.then10:                                        ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6418

if.end11:                                         ; preds = %if.end
  %5 = load i32, ptr %cmd, align 4, !dbg !6419
  %6 = load i32, ptr %op.addr, align 4, !dbg !6420
  %call12 = call i32 @futex_init_timeout(i32 noundef %5, i32 noundef %6, ptr noundef %ts, ptr noundef %t) #18, !dbg !6421
  store i32 %call12, ptr %ret, align 4, !dbg !6422
  %7 = load i32, ptr %ret, align 4, !dbg !6423
  %tobool13 = icmp ne i32 %7, 0, !dbg !6423
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !6425

if.then14:                                        ; preds = %if.end11
  %8 = load i32, ptr %ret, align 4, !dbg !6426
  %conv15 = sext i32 %8 to i64, !dbg !6426
  store i64 %conv15, ptr %retval, align 8, !dbg !6427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6427

if.end16:                                         ; preds = %if.end11
  store ptr %t, ptr %tp, align 8, !dbg !6428
  br label %if.end17, !dbg !6429

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %entry
  %9 = load ptr, ptr %uaddr.addr, align 8, !dbg !6430
  %10 = load i32, ptr %op.addr, align 4, !dbg !6431
  %11 = load i32, ptr %val.addr, align 4, !dbg !6432
  %12 = load ptr, ptr %tp, align 8, !dbg !6433
  %13 = load ptr, ptr %uaddr2.addr, align 8, !dbg !6434
  %14 = load ptr, ptr %utime.addr, align 8, !dbg !6435
  %15 = ptrtoint ptr %14 to i64, !dbg !6436
  %conv18 = trunc i64 %15 to i32, !dbg !6436
  %16 = load i32, ptr %val3.addr, align 4, !dbg !6437
  %call19 = call i64 @do_futex(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %conv18, i32 noundef %16) #18, !dbg !6438
  store i64 %call19, ptr %retval, align 8, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #19, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #19, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #19, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #19, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6440
  %17 = load i64, ptr %retval, align 8, !dbg !6440
  ret i64 %17, !dbg !6440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @futex_cmd_has_timeout(i32 noundef %cmd) #6 align 16 !dbg !6441 {
entry:
  %retval = alloca i1, align 1
  %cmd.addr = alloca i32, align 4
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6445, metadata !DIExpression()), !dbg !6446
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !6447
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 6, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
  ], !dbg !6448

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i1 true, ptr %retval, align 1, !dbg !6449
  br label %return, !dbg !6449

sw.epilog:                                        ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6451
  br label %return, !dbg !6451

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i1, ptr %retval, align 1, !dbg !6452
  ret i1 %1, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_futex(i1 noundef zeroext %fshared) #4 align 16 !dbg !6453 {
entry:
  %fshared.addr = alloca i8, align 1
  %frombool = zext i1 %fshared to i8
  store i8 %frombool, ptr %fshared.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fshared.addr, metadata !6457, metadata !DIExpression()), !dbg !6458
  ret i1 false, !dbg !6459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6460 dso_local i32 @get_timespec64(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_init_timeout(i32 noundef %cmd, i32 noundef %op, ptr noundef %ts, ptr noundef %t) #6 align 16 !dbg !6465 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6469, metadata !DIExpression()), !dbg !6473
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6470, metadata !DIExpression()), !dbg !6474
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !6471, metadata !DIExpression()), !dbg !6475
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6472, metadata !DIExpression()), !dbg !6476
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !6477
  %call = call zeroext i1 @timespec64_valid(ptr noundef %0) #18, !dbg !6479
  br i1 %call, label %if.end, label %if.then, !dbg !6480

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6481
  br label %return, !dbg !6481

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ts.addr, align 8, !dbg !6482
  %2 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 0, !dbg !6483
  %3 = load i64, ptr %2, align 8, !dbg !6483
  %4 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1, !dbg !6483
  %5 = load i64, ptr %4, align 8, !dbg !6483
  %call1 = call i64 @timespec64_to_ktime(i64 %3, i64 %5) #18, !dbg !6483
  %6 = load ptr, ptr %t.addr, align 8, !dbg !6484
  store i64 %call1, ptr %6, align 8, !dbg !6485
  %7 = load i32, ptr %cmd.addr, align 4, !dbg !6486
  %cmp = icmp eq i32 %7, 0, !dbg !6488
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6489

if.then2:                                         ; preds = %if.end
  %call3 = call i64 @ktime_get() #18, !dbg !6490
  %8 = load ptr, ptr %t.addr, align 8, !dbg !6491
  %9 = load i64, ptr %8, align 8, !dbg !6492
  %call4 = call i64 @ktime_add_safe(i64 noundef %call3, i64 noundef %9) #18, !dbg !6493
  %10 = load ptr, ptr %t.addr, align 8, !dbg !6494
  store i64 %call4, ptr %10, align 8, !dbg !6495
  br label %if.end9, !dbg !6496

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %cmd.addr, align 4, !dbg !6497
  %cmp5 = icmp ne i32 %11, 6, !dbg !6499
  br i1 %cmp5, label %land.lhs.true, label %if.end8, !dbg !6500

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, ptr %op.addr, align 4, !dbg !6501
  %and = and i32 %12, 256, !dbg !6502
  %tobool = icmp ne i32 %and, 0, !dbg !6502
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !6503

if.then6:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %t.addr, align 8, !dbg !6504
  %14 = load i64, ptr %13, align 8, !dbg !6505
  %call7 = call i64 @timens_ktime_to_host(i32 noundef 1, i64 noundef %14) #18, !dbg !6506
  %15 = load ptr, ptr %t.addr, align 8, !dbg !6507
  store i64 %call7, ptr %15, align 8, !dbg !6508
  br label %if.end8, !dbg !6509

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then2
  store i32 0, ptr %retval, align 4, !dbg !6510
  br label %return, !dbg !6510

return:                                           ; preds = %if.end9, %if.then
  %16 = load i32, ptr %retval, align 4, !dbg !6511
  ret i32 %16, !dbg !6511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @timespec64_valid(ptr noundef %ts) #4 align 16 !dbg !6512 {
entry:
  %retval = alloca i1, align 1
  %ts.addr = alloca ptr, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !6518, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !6520
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 0, !dbg !6522
  %1 = load i64, ptr %tv_sec, align 8, !dbg !6522
  %cmp = icmp slt i64 %1, 0, !dbg !6523
  br i1 %cmp, label %if.then, label %if.end, !dbg !6524

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6525
  br label %return, !dbg !6525

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !6526
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1, !dbg !6528
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !6528
  %cmp1 = icmp uge i64 %3, 1000000000, !dbg !6529
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6530

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6531
  br label %return, !dbg !6531

if.end3:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6532
  br label %return, !dbg !6532

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !6533
  ret i1 %4, !dbg !6533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timespec64_to_ktime(i64 %ts.coerce0, i64 %ts.coerce1) #4 align 16 !dbg !6534 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6538, metadata !DIExpression()), !dbg !6539
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !6540
  %2 = load i64, ptr %tv_sec, align 8, !dbg !6540
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !6541
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !6541
  %call = call i64 @ktime_set(i64 noundef %2, i64 noundef %3) #18, !dbg !6542
  ret i64 %call, !dbg !6543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6544 dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6548 dso_local i64 @ktime_get() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timens_ktime_to_host(i32 noundef %clockid, i64 noundef %tim) #4 align 16 !dbg !6550 {
entry:
  %retval = alloca i64, align 8
  %clockid.addr = alloca i32, align 4
  %tim.addr = alloca i64, align 8
  %ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %clockid, ptr %clockid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clockid.addr, metadata !6554, metadata !DIExpression()), !dbg !6557
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !6555, metadata !DIExpression()), !dbg !6558
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #19, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6556, metadata !DIExpression()), !dbg !6560
  %call = call ptr @get_current() #18, !dbg !6561
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !6562
  %0 = load ptr, ptr %nsproxy, align 8, !dbg !6562
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 6, !dbg !6563
  %1 = load ptr, ptr %time_ns, align 8, !dbg !6563
  store ptr %1, ptr %ns, align 8, !dbg !6560
  %2 = load ptr, ptr %ns, align 8, !dbg !6564
  %cmp = icmp eq ptr %2, @init_time_ns, !dbg !6564
  %lnot = xor i1 %cmp, true, !dbg !6564
  %lnot1 = xor i1 %lnot, true, !dbg !6564
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6564
  %conv = sext i32 %lnot.ext to i64, !dbg !6564
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6564
  %tobool = icmp ne i64 %expval, 0, !dbg !6564
  br i1 %tobool, label %if.then, label %if.end, !dbg !6566

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %tim.addr, align 8, !dbg !6567
  store i64 %3, ptr %retval, align 8, !dbg !6568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6568

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %clockid.addr, align 4, !dbg !6569
  %5 = load i64, ptr %tim.addr, align 8, !dbg !6570
  %6 = load ptr, ptr %ns, align 8, !dbg !6571
  %offsets = getelementptr inbounds %struct.time_namespace, ptr %6, i32 0, i32 3, !dbg !6572
  %call2 = call i64 @do_timens_ktime_to_host(i32 noundef %4, i64 noundef %5, ptr noundef %offsets) #18, !dbg !6573
  store i64 %call2, ptr %retval, align 8, !dbg !6574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6574

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #19, !dbg !6575
  %7 = load i64, ptr %retval, align 8, !dbg !6575
  ret i64 %7, !dbg !6575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #4 align 16 !dbg !6576 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !6581, metadata !DIExpression()), !dbg !6583
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !6582, metadata !DIExpression()), !dbg !6584
  %0 = load i64, ptr %secs.addr, align 8, !dbg !6585
  %cmp = icmp sge i64 %0, 9223372036, !dbg !6585
  %lnot = xor i1 %cmp, true, !dbg !6585
  %lnot1 = xor i1 %lnot, true, !dbg !6585
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6585
  %conv = sext i32 %lnot.ext to i64, !dbg !6585
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6585
  %tobool = icmp ne i64 %expval, 0, !dbg !6585
  br i1 %tobool, label %if.then, label %if.end, !dbg !6587

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !6588
  br label %return, !dbg !6588

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !6589
  %mul = mul i64 %1, 1000000000, !dbg !6590
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !6591
  %add = add i64 %mul, %2, !dbg !6592
  store i64 %add, ptr %retval, align 8, !dbg !6593
  br label %return, !dbg !6593

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !6594
  ret i64 %3, !dbg !6594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6595 dso_local i64 @do_timens_ktime_to_host(i32 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_futex_waitv(ptr noundef %waiters, i32 noundef %nr_futexes, i32 noundef %flags, ptr noundef %timeout, i32 noundef %clockid) #4 align 16 !dbg !6599 {
entry:
  %retval = alloca i64, align 8
  %waiters.addr = alloca ptr, align 8
  %nr_futexes.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %timeout.addr = alloca ptr, align 8
  %clockid.addr = alloca i32, align 4
  %to = alloca %struct.hrtimer_sleeper, align 8
  %futexv = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  %time = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %flag_clkid = alloca i32, align 4
  %flag_init = alloca i32, align 4
  store ptr %waiters, ptr %waiters.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiters.addr, metadata !6603, metadata !DIExpression()), !dbg !6639
  store i32 %nr_futexes, ptr %nr_futexes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_futexes.addr, metadata !6604, metadata !DIExpression()), !dbg !6639
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6605, metadata !DIExpression()), !dbg !6639
  store ptr %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !6606, metadata !DIExpression()), !dbg !6639
  store i32 %clockid, ptr %clockid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clockid.addr, metadata !6607, metadata !DIExpression()), !dbg !6639
  call void @llvm.lifetime.start.p0(i64 72, ptr %to) #19, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %to, metadata !6608, metadata !DIExpression()), !dbg !6641
  call void @llvm.lifetime.start.p0(i64 8, ptr %futexv) #19, !dbg !6642
  call void @llvm.dbg.declare(metadata ptr %futexv, metadata !6613, metadata !DIExpression()), !dbg !6643
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #19, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6631, metadata !DIExpression()), !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %time) #19, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %time, metadata !6632, metadata !DIExpression()), !dbg !6647
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6648
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6633, metadata !DIExpression()), !dbg !6649
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6650
  %tobool = icmp ne i32 %0, 0, !dbg !6650
  br i1 %tobool, label %if.then, label %if.end, !dbg !6652

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6653

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6654
  %tobool1 = icmp ne i32 %1, 0, !dbg !6654
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !6656

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6657
  %cmp = icmp ugt i32 %2, 128, !dbg !6658
  br i1 %cmp, label %if.then4, label %lor.lhs.false2, !dbg !6659

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %waiters.addr, align 8, !dbg !6660
  %tobool3 = icmp ne ptr %3, null, !dbg !6660
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6661

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6662

if.end5:                                          ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %timeout.addr, align 8, !dbg !6663
  %tobool6 = icmp ne ptr %4, null, !dbg !6663
  br i1 %tobool6, label %if.then7, label %if.end24, !dbg !6664

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag_clkid) #19, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %flag_clkid, metadata !6634, metadata !DIExpression()), !dbg !6666
  store i32 0, ptr %flag_clkid, align 4, !dbg !6666
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag_init) #19, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %flag_init, metadata !6637, metadata !DIExpression()), !dbg !6667
  store i32 0, ptr %flag_init, align 4, !dbg !6667
  %5 = load i32, ptr %clockid.addr, align 4, !dbg !6668
  %cmp8 = icmp eq i32 %5, 0, !dbg !6670
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6671

if.then9:                                         ; preds = %if.then7
  store i32 2, ptr %flag_clkid, align 4, !dbg !6672
  store i32 256, ptr %flag_init, align 4, !dbg !6674
  br label %if.end10, !dbg !6675

if.end10:                                         ; preds = %if.then9, %if.then7
  %6 = load i32, ptr %clockid.addr, align 4, !dbg !6676
  %cmp11 = icmp ne i32 %6, 0, !dbg !6678
  br i1 %cmp11, label %land.lhs.true, label %if.end14, !dbg !6679

land.lhs.true:                                    ; preds = %if.end10
  %7 = load i32, ptr %clockid.addr, align 4, !dbg !6680
  %cmp12 = icmp ne i32 %7, 1, !dbg !6681
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6682

if.then13:                                        ; preds = %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !6683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6683

if.end14:                                         ; preds = %land.lhs.true, %if.end10
  %8 = load ptr, ptr %timeout.addr, align 8, !dbg !6684
  %call = call i32 @get_timespec64(ptr noundef %ts, ptr noundef %8) #18, !dbg !6686
  %tobool15 = icmp ne i32 %call, 0, !dbg !6686
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6687

if.then16:                                        ; preds = %if.end14
  store i64 -14, ptr %retval, align 8, !dbg !6688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6688

if.end17:                                         ; preds = %if.end14
  %9 = load i32, ptr %flag_init, align 4, !dbg !6689
  %call18 = call i32 @futex_init_timeout(i32 noundef 9, i32 noundef %9, ptr noundef %ts, ptr noundef %time) #18, !dbg !6690
  store i32 %call18, ptr %ret, align 4, !dbg !6691
  %10 = load i32, ptr %ret, align 4, !dbg !6692
  %tobool19 = icmp ne i32 %10, 0, !dbg !6692
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6694

if.then20:                                        ; preds = %if.end17
  %11 = load i32, ptr %ret, align 4, !dbg !6695
  %conv = sext i32 %11 to i64, !dbg !6695
  store i64 %conv, ptr %retval, align 8, !dbg !6696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6696

if.end21:                                         ; preds = %if.end17
  %12 = load i32, ptr %flag_clkid, align 4, !dbg !6697
  %call22 = call ptr @futex_setup_timer(ptr noundef %time, ptr noundef %to, i32 noundef %12, i64 noundef 0) #18, !dbg !6698
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6699
  br label %cleanup, !dbg !6699

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then16, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag_init) #19, !dbg !6699
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag_clkid) #19, !dbg !6699
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end24, !dbg !6700

if.end24:                                         ; preds = %cleanup.cont, %if.end5
  %13 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6701
  %conv25 = zext i32 %13 to i64, !dbg !6701
  %call26 = call noalias ptr @kcalloc(i64 noundef %conv25, i64 noundef 136, i32 noundef 3264) #21, !dbg !6702
  store ptr %call26, ptr %futexv, align 8, !dbg !6703
  %14 = load ptr, ptr %futexv, align 8, !dbg !6704
  %tobool27 = icmp ne ptr %14, null, !dbg !6704
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6706

if.then28:                                        ; preds = %if.end24
  store i32 -12, ptr %ret, align 4, !dbg !6707
  br label %destroy_timer, !dbg !6709

if.end29:                                         ; preds = %if.end24
  %15 = load ptr, ptr %futexv, align 8, !dbg !6710
  %16 = load ptr, ptr %waiters.addr, align 8, !dbg !6711
  %17 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6712
  %call30 = call i32 @futex_parse_waitv(ptr noundef %15, ptr noundef %16, i32 noundef %17) #18, !dbg !6713
  store i32 %call30, ptr %ret, align 4, !dbg !6714
  %18 = load i32, ptr %ret, align 4, !dbg !6715
  %tobool31 = icmp ne i32 %18, 0, !dbg !6715
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !6717

if.then32:                                        ; preds = %if.end29
  %19 = load ptr, ptr %futexv, align 8, !dbg !6718
  %20 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6719
  %21 = load ptr, ptr %timeout.addr, align 8, !dbg !6720
  %tobool33 = icmp ne ptr %21, null, !dbg !6720
  br i1 %tobool33, label %cond.true, label %cond.false, !dbg !6720

cond.true:                                        ; preds = %if.then32
  br label %cond.end, !dbg !6720

cond.false:                                       ; preds = %if.then32
  br label %cond.end, !dbg !6720

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %to, %cond.true ], [ null, %cond.false ], !dbg !6720
  %call34 = call i32 @futex_wait_multiple(ptr noundef %19, i32 noundef %20, ptr noundef %cond) #18, !dbg !6721
  store i32 %call34, ptr %ret, align 4, !dbg !6722
  br label %if.end35, !dbg !6723

if.end35:                                         ; preds = %cond.end, %if.end29
  %22 = load ptr, ptr %futexv, align 8, !dbg !6724
  call void @kfree(ptr noundef %22) #18, !dbg !6725
  br label %destroy_timer, !dbg !6725

destroy_timer:                                    ; preds = %if.end35, %if.then28
  call void @llvm.dbg.label(metadata !6638), !dbg !6726
  %23 = load ptr, ptr %timeout.addr, align 8, !dbg !6727
  %tobool36 = icmp ne ptr %23, null, !dbg !6727
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !6729

if.then37:                                        ; preds = %destroy_timer
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, ptr %to, i32 0, i32 0, !dbg !6730
  %call38 = call i32 @hrtimer_cancel(ptr noundef %timer) #18, !dbg !6732
  %timer39 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %to, i32 0, i32 0, !dbg !6733
  call void @destroy_hrtimer_on_stack(ptr noundef %timer39) #18, !dbg !6734
  br label %if.end40, !dbg !6735

if.end40:                                         ; preds = %if.then37, %destroy_timer
  %24 = load i32, ptr %ret, align 4, !dbg !6736
  %conv41 = sext i32 %24 to i64, !dbg !6736
  store i64 %conv41, ptr %retval, align 8, !dbg !6737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6737

cleanup42:                                        ; preds = %if.end40, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 8, ptr %time) #19, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #19, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 8, ptr %futexv) #19, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 72, ptr %to) #19, !dbg !6738
  %25 = load i64, ptr %retval, align 8, !dbg !6738
  ret i64 %25, !dbg !6738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6739 dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6743 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6747, metadata !DIExpression()), !dbg !6750
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6748, metadata !DIExpression()), !dbg !6751
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6749, metadata !DIExpression()), !dbg !6752
  %0 = load i64, ptr %n.addr, align 8, !dbg !6753
  %1 = load i64, ptr %size.addr, align 8, !dbg !6754
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6755
  %or = or i32 %2, 256, !dbg !6756
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #21, !dbg !6757
  ret ptr %call, !dbg !6758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @futex_parse_waitv(ptr noundef %futexv, ptr noundef %uwaitv, i32 noundef %nr_futexes) #0 align 16 !dbg !6759 {
entry:
  %retval = alloca i32, align 4
  %futexv.addr = alloca ptr, align 8
  %uwaitv.addr = alloca ptr, align 8
  %nr_futexes.addr = alloca i32, align 4
  %aux = alloca %struct.futex_waitv, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %futexv, ptr %futexv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %futexv.addr, metadata !6763, metadata !DIExpression()), !dbg !6768
  store ptr %uwaitv, ptr %uwaitv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uwaitv.addr, metadata !6764, metadata !DIExpression()), !dbg !6769
  store i32 %nr_futexes, ptr %nr_futexes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_futexes.addr, metadata !6765, metadata !DIExpression()), !dbg !6770
  call void @llvm.lifetime.start.p0(i64 24, ptr %aux) #19, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %aux, metadata !6766, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6773
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6767, metadata !DIExpression()), !dbg !6774
  store i32 0, ptr %i, align 4, !dbg !6775
  br label %for.cond, !dbg !6777

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6778
  %1 = load i32, ptr %nr_futexes.addr, align 4, !dbg !6780
  %cmp = icmp ult i32 %0, %1, !dbg !6781
  br i1 %cmp, label %for.body, label %for.end, !dbg !6782

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %uwaitv.addr, align 8, !dbg !6783
  %3 = load i32, ptr %i, align 4, !dbg !6786
  %idxprom = zext i32 %3 to i64, !dbg !6783
  %arrayidx = getelementptr %struct.futex_waitv, ptr %2, i64 %idxprom, !dbg !6783
  %call = call i64 @copy_from_user(ptr noundef %aux, ptr noundef %arrayidx, i64 noundef 24) #18, !dbg !6787
  %tobool = icmp ne i64 %call, 0, !dbg !6787
  br i1 %tobool, label %if.then, label %if.end, !dbg !6788

if.then:                                          ; preds = %for.body
  store i32 -14, ptr %retval, align 4, !dbg !6789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6789

if.end:                                           ; preds = %for.body
  %flags = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 2, !dbg !6790
  %4 = load i32, ptr %flags, align 8, !dbg !6790
  %and = and i32 %4, -131, !dbg !6792
  %tobool1 = icmp ne i32 %and, 0, !dbg !6792
  br i1 %tobool1, label %if.then3, label %lor.lhs.false, !dbg !6793

lor.lhs.false:                                    ; preds = %if.end
  %__reserved = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 3, !dbg !6794
  %5 = load i32, ptr %__reserved, align 4, !dbg !6794
  %tobool2 = icmp ne i32 %5, 0, !dbg !6795
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6796

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6797

if.end4:                                          ; preds = %lor.lhs.false
  %flags5 = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 2, !dbg !6798
  %6 = load i32, ptr %flags5, align 8, !dbg !6798
  %and6 = and i32 %6, 2, !dbg !6800
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6800
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6801

if.then8:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !6802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6802

if.end9:                                          ; preds = %if.end4
  %flags10 = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 2, !dbg !6803
  %7 = load i32, ptr %flags10, align 8, !dbg !6803
  %8 = load ptr, ptr %futexv.addr, align 8, !dbg !6804
  %9 = load i32, ptr %i, align 4, !dbg !6805
  %idxprom11 = zext i32 %9 to i64, !dbg !6804
  %arrayidx12 = getelementptr %struct.futex_vector, ptr %8, i64 %idxprom11, !dbg !6804
  %w = getelementptr inbounds %struct.futex_vector, ptr %arrayidx12, i32 0, i32 0, !dbg !6806
  %flags13 = getelementptr inbounds %struct.futex_waitv, ptr %w, i32 0, i32 2, !dbg !6807
  store i32 %7, ptr %flags13, align 8, !dbg !6808
  %val = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 0, !dbg !6809
  %10 = load i64, ptr %val, align 8, !dbg !6809
  %11 = load ptr, ptr %futexv.addr, align 8, !dbg !6810
  %12 = load i32, ptr %i, align 4, !dbg !6811
  %idxprom14 = zext i32 %12 to i64, !dbg !6810
  %arrayidx15 = getelementptr %struct.futex_vector, ptr %11, i64 %idxprom14, !dbg !6810
  %w16 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx15, i32 0, i32 0, !dbg !6812
  %val17 = getelementptr inbounds %struct.futex_waitv, ptr %w16, i32 0, i32 0, !dbg !6813
  store i64 %10, ptr %val17, align 8, !dbg !6814
  %uaddr = getelementptr inbounds %struct.futex_waitv, ptr %aux, i32 0, i32 1, !dbg !6815
  %13 = load i64, ptr %uaddr, align 8, !dbg !6815
  %14 = load ptr, ptr %futexv.addr, align 8, !dbg !6816
  %15 = load i32, ptr %i, align 4, !dbg !6817
  %idxprom18 = zext i32 %15 to i64, !dbg !6816
  %arrayidx19 = getelementptr %struct.futex_vector, ptr %14, i64 %idxprom18, !dbg !6816
  %w20 = getelementptr inbounds %struct.futex_vector, ptr %arrayidx19, i32 0, i32 0, !dbg !6818
  %uaddr21 = getelementptr inbounds %struct.futex_waitv, ptr %w20, i32 0, i32 1, !dbg !6819
  store i64 %13, ptr %uaddr21, align 8, !dbg !6820
  %16 = load ptr, ptr %futexv.addr, align 8, !dbg !6821
  %17 = load i32, ptr %i, align 4, !dbg !6822
  %idxprom22 = zext i32 %17 to i64, !dbg !6821
  %arrayidx23 = getelementptr %struct.futex_vector, ptr %16, i64 %idxprom22, !dbg !6821
  %q = getelementptr inbounds %struct.futex_vector, ptr %arrayidx23, i32 0, i32 1, !dbg !6823
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q, ptr align 8 @futex_q_init, i64 112, i1 false), !dbg !6824
  br label %for.inc, !dbg !6825

for.inc:                                          ; preds = %if.end9
  %18 = load i32, ptr %i, align 4, !dbg !6826
  %inc = add i32 %18, 1, !dbg !6826
  store i32 %inc, ptr %i, align 4, !dbg !6826
  br label %for.cond, !dbg !6827, !llvm.loop !6828

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6832

cleanup:                                          ; preds = %for.end, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 24, ptr %aux) #19, !dbg !6833
  %19 = load i32, ptr %retval, align 4, !dbg !6833
  ret i32 %19, !dbg !6833
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6834 dso_local i32 @futex_wait_multiple(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6837 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6840 dso_local i32 @hrtimer_cancel(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_hrtimer_on_stack(ptr noundef %timer) #4 align 16 !dbg !6843 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6847, metadata !DIExpression()), !dbg !6848
  ret void, !dbg !6849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6850 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6852, metadata !DIExpression()), !dbg !6856
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6853, metadata !DIExpression()), !dbg !6857
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6854, metadata !DIExpression()), !dbg !6858
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !6859
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6855, metadata !DIExpression()), !dbg !6860
  %0 = load i64, ptr %n.addr, align 8, !dbg !6861
  %1 = load i64, ptr %size.addr, align 8, !dbg !6861
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6861
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6861
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6861
  store i64 %4, ptr %bytes, align 8, !dbg !6861
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6861
  %lnot = xor i1 %call, true, !dbg !6861
  %lnot1 = xor i1 %lnot, true, !dbg !6861
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6861
  %conv = sext i32 %lnot.ext to i64, !dbg !6861
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6861
  %tobool = icmp ne i64 %expval, 0, !dbg !6861
  br i1 %tobool, label %if.then, label %if.end, !dbg !6863

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6864

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6865
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6867
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6868

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6869
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6870
  br i1 %8, label %if.then2, label %if.end4, !dbg !6871

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6872
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6873
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !6874
  store ptr %call3, ptr %retval, align 8, !dbg !6875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6875

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6876
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6877
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !6878
  store ptr %call5, ptr %retval, align 8, !dbg !6879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6879

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !6880
  %13 = load ptr, ptr %retval, align 8, !dbg !6880
  ret ptr %13, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6881 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6884, metadata !DIExpression()), !dbg !6885
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6886, !range !6887, !noundef !639
  %tobool = trunc i8 %0 to i1, !dbg !6886
  %lnot = xor i1 %tobool, true, !dbg !6886
  %lnot1 = xor i1 %lnot, true, !dbg !6886
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6886
  %conv = sext i32 %lnot.ext to i64, !dbg !6886
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6886
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6886
  ret i1 %tobool2, !dbg !6888
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6889 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6893, metadata !DIExpression()), !dbg !6898
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6894, metadata !DIExpression()), !dbg !6899
  %0 = load i64, ptr %size.addr, align 8, !dbg !6900
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6901
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6902

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6903
  %tobool = icmp ne i64 %2, 0, !dbg !6903
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6904

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6895, metadata !DIExpression()), !dbg !6906
  %3 = load i64, ptr %size.addr, align 8, !dbg !6907
  %cmp = icmp ugt i64 %3, 8192, !dbg !6909
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6910

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6911
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6912
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !6913
  store ptr %call, ptr %retval, align 8, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6915
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6915
  store i32 %call2, ptr %index, align 4, !dbg !6916
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6917
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6918
  %9 = ptrtoint ptr %8 to i64, !dbg !6918
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6919
  %idxprom = zext i32 %call3 to i64, !dbg !6920
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6920
  %10 = load i32, ptr %index, align 4, !dbg !6921
  %idxprom4 = zext i32 %10 to i64, !dbg !6920
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6920
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6920
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6922
  %13 = load i64, ptr %size.addr, align 8, !dbg !6923
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !6924
  store ptr %call6, ptr %retval, align 8, !dbg !6925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6925

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6926
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6927
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6928
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !6929
  store ptr %call8, ptr %retval, align 8, !dbg !6930
  br label %return, !dbg !6930

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6931
  ret ptr %16, !dbg !6931
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6932 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6933 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6934 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6939, metadata !DIExpression()), !dbg !6941
  %0 = load i64, ptr %size.addr, align 8, !dbg !6942
  %tobool = icmp ne i64 %0, 0, !dbg !6942
  br i1 %tobool, label %if.end, label %if.then, !dbg !6944

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6945
  br label %return, !dbg !6945

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6946
  %cmp = icmp ule i64 %1, 8, !dbg !6948
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6949

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6950
  br label %return, !dbg !6950

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6951
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6953
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6954

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6955
  %cmp4 = icmp ule i64 %3, 96, !dbg !6956
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6957

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6959
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6961
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6962

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6963
  %cmp9 = icmp ule i64 %5, 192, !dbg !6964
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6965

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6967
  %cmp12 = icmp ule i64 %6, 8, !dbg !6969
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6970

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6971
  br label %return, !dbg !6971

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6972
  %cmp15 = icmp ule i64 %7, 16, !dbg !6974
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6975

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6976
  br label %return, !dbg !6976

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6977
  %cmp18 = icmp ule i64 %8, 32, !dbg !6979
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6980

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6981
  br label %return, !dbg !6981

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6982
  %cmp21 = icmp ule i64 %9, 64, !dbg !6984
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6985

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6986
  br label %return, !dbg !6986

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6987
  %cmp24 = icmp ule i64 %10, 128, !dbg !6989
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6990

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6991
  br label %return, !dbg !6991

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6992
  %cmp27 = icmp ule i64 %11, 256, !dbg !6994
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6995

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6996
  br label %return, !dbg !6996

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6997
  %cmp30 = icmp ule i64 %12, 512, !dbg !6999
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7000

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7001
  br label %return, !dbg !7001

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7002
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7004
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7005

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7006
  br label %return, !dbg !7006

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7007
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7009
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7010

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7011
  br label %return, !dbg !7011

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7012
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7014
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7015

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7016
  br label %return, !dbg !7016

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7017
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7019
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7020

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7021
  br label %return, !dbg !7021

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7022
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7024
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7025

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7026
  br label %return, !dbg !7026

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7027
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7029
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7030

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7031
  br label %return, !dbg !7031

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7032
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7034
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7035

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7036
  br label %return, !dbg !7036

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7037
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7039
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7040

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7041
  br label %return, !dbg !7041

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7042
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7044
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7045

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7046
  br label %return, !dbg !7046

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7047
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7049
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7050

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7051
  br label %return, !dbg !7051

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7052
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7054
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7055

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7056
  br label %return, !dbg !7056

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7057
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7059
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7060

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7061
  br label %return, !dbg !7061

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7062, !range !6887, !noundef !639
  %tobool69 = trunc i8 %25 to i1, !dbg !7062
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7064

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7065

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #24, !dbg !7066, !srcloc !7069
  unreachable, !dbg !7066

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7070

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7071

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7072

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7074

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7072

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #19, !dbg !7076, !srcloc !7078
  br label %do.end75, !dbg !7076

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7072

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7079
  br label %return, !dbg !7079

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7080
  ret i32 %26, !dbg !7080
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7081 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7084 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7089, metadata !DIExpression()), !dbg !7091
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7092
  %and = and i32 %0, 17, !dbg !7092
  %cmp = icmp eq i32 %and, 0, !dbg !7092
  %lnot = xor i1 %cmp, true, !dbg !7092
  %lnot1 = xor i1 %lnot, true, !dbg !7092
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7092
  %conv = sext i32 %lnot.ext to i64, !dbg !7092
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7092
  %tobool = icmp ne i64 %expval, 0, !dbg !7092
  br i1 %tobool, label %if.then, label %if.end, !dbg !7094

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7095
  br label %return, !dbg !7095

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7096
  %and2 = and i32 %1, 1, !dbg !7098
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7098
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7099

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7100
  br label %return, !dbg !7100

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7101
  br label %return, !dbg !7101

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7103
  ret i32 %2, !dbg !7103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7104 dso_local void @__compiletime_assert_245() #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !7105 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7110, metadata !DIExpression()), !dbg !7113
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7111, metadata !DIExpression()), !dbg !7114
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7116
  %1 = load i64, ptr %n.addr, align 8, !dbg !7118
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !7119
  br i1 %call, label %if.then, label %if.end, !dbg !7120

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7121
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7122
  %4 = load i64, ptr %n.addr, align 8, !dbg !7123
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !7124
  store i64 %call1, ptr %n.addr, align 8, !dbg !7125
  br label %if.end, !dbg !7126

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7127
  ret i64 %5, !dbg !7128
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !7129 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7133, metadata !DIExpression()), !dbg !7143
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7134, metadata !DIExpression()), !dbg !7144
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7135, metadata !DIExpression()), !dbg !7145
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !7146
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7136, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7148
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7149
  %conv = trunc i64 %1 to i32, !dbg !7149
  store i32 %conv, ptr %sz, align 4, !dbg !7147
  %2 = load i32, ptr %sz, align 4, !dbg !7150
  %cmp = icmp sge i32 %2, 0, !dbg !7150
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7150

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7150
  %conv2 = sext i32 %3 to i64, !dbg !7150
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7150
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7150
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7152
  %lnot = xor i1 %5, true, !dbg !7150
  %lnot5 = xor i1 %lnot, true, !dbg !7150
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7150
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7150
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7150
  %tobool = icmp ne i64 %expval, 0, !dbg !7150
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7153

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7154
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7157
  br i1 %7, label %if.else, label %if.then7, !dbg !7158

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7159
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7160
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !7161
  br label %if.end11, !dbg !7161

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7162, !range !6887, !noundef !639
  %tobool8 = trunc i8 %10 to i1, !dbg !7162
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7164

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !7165, !srcloc !7166
  br label %if.end, !dbg !7165

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !7167, !srcloc !7168
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7169

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7170
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7137, metadata !DIExpression()), !dbg !7170
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7170
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7170
  %lnot15 = xor i1 %cmp13, true, !dbg !7170
  %lnot17 = xor i1 %lnot15, true, !dbg !7170
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7170
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7170
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7171
  %tobool19 = icmp ne i32 %12, 0, !dbg !7171
  %lnot20 = xor i1 %tobool19, true, !dbg !7171
  %lnot22 = xor i1 %lnot20, true, !dbg !7171
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7171
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7171
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7171
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7171
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7170

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7171

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !7172
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7140, metadata !DIExpression()), !dbg !7172
  store i32 2307, ptr %__flags, align 4, !dbg !7172
  br label %do.body28, !dbg !7172

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7173

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7173

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7172

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7175
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #19, !dbg !7175, !srcloc !7177
  br label %do.cond30, !dbg !7175

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7175

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7172

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7178

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7178

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !7171
  br label %do.cond35, !dbg !7172

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7172

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7172

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7170
  %tobool38 = icmp ne i32 %14, 0, !dbg !7170
  %lnot39 = xor i1 %tobool38, true, !dbg !7170
  %lnot41 = xor i1 %lnot39, true, !dbg !7170
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7170
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7170
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7170
  store i64 %expval44, ptr %tmp, align 8, !dbg !7171
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7180
  %15 = load i64, ptr %tmp, align 8, !dbg !7170
  %tobool45 = icmp ne i64 %15, 0, !dbg !7180
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7181

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7182

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7183
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7184
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7185, !range !6887, !noundef !639
  %tobool48 = trunc i8 %18 to i1, !dbg !7185
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !7186
  store i1 true, ptr %retval, align 1, !dbg !7187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7187

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !7188
  %19 = load i1, ptr %retval, align 1, !dbg !7188
  ret i1 %19, !dbg !7188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7189 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !7190 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7194, metadata !DIExpression()), !dbg !7196
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7195, metadata !DIExpression()), !dbg !7197
  %0 = load i32, ptr %size.addr, align 4, !dbg !7198
  %1 = load i64, ptr %count.addr, align 8, !dbg !7200
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !7201
  ret void, !dbg !7202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7203 dso_local void @__bad_copy_from() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7204 dso_local void @__bad_copy_to() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !7205 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7209, metadata !DIExpression()), !dbg !7212
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7210, metadata !DIExpression()), !dbg !7213
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7211, metadata !DIExpression()), !dbg !7214
  ret void, !dbg !7215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7216 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_set_robust_list(ptr noundef %head, i32 noundef %len) #4 align 16 !dbg !7217 {
entry:
  %retval = alloca i64, align 8
  %head.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7221, metadata !DIExpression()), !dbg !7223
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7222, metadata !DIExpression()), !dbg !7223
  %0 = load i32, ptr %len.addr, align 4, !dbg !7224
  %conv = zext i32 %0 to i64, !dbg !7224
  %cmp = icmp ne i64 %conv, 12, !dbg !7224
  %lnot = xor i1 %cmp, true, !dbg !7224
  %lnot2 = xor i1 %lnot, true, !dbg !7224
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7224
  %conv3 = sext i32 %lnot.ext to i64, !dbg !7224
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !7224
  %tobool = icmp ne i64 %expval, 0, !dbg !7224
  br i1 %tobool, label %if.then, label %if.end, !dbg !7226

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7227
  br label %return, !dbg !7227

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7228
  %call = call ptr @get_current() #18, !dbg !7229
  %compat_robust_list = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 146, !dbg !7230
  store ptr %1, ptr %compat_robust_list, align 8, !dbg !7231
  store i64 0, ptr %retval, align 8, !dbg !7232
  br label %return, !dbg !7232

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !7233
  ret i64 %2, !dbg !7233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_get_robust_list(i32 noundef %pid, ptr noundef %head_ptr, ptr noundef %len_ptr) #4 align 16 !dbg !7234 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %head_ptr.addr = alloca ptr, align 8
  %len_ptr.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %ret = alloca i64, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp13 = alloca i64, align 8
  %__ret_pu14 = alloca i32, align 4
  %__ptr_pu15 = alloca ptr, align 8
  %__val_pu16 = alloca i32, align 4
  %__x17 = alloca i32, align 4
  %__ptr19 = alloca ptr, align 8
  %tmp22 = alloca i64, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !7238, metadata !DIExpression()), !dbg !7260
  store ptr %head_ptr, ptr %head_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head_ptr.addr, metadata !7239, metadata !DIExpression()), !dbg !7260
  store ptr %len_ptr, ptr %len_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len_ptr.addr, metadata !7240, metadata !DIExpression()), !dbg !7260
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #19, !dbg !7261
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7241, metadata !DIExpression()), !dbg !7262
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !7263
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7242, metadata !DIExpression()), !dbg !7264
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !7265
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7243, metadata !DIExpression()), !dbg !7266
  call void @rcu_read_lock() #18, !dbg !7267
  store i64 -3, ptr %ret, align 8, !dbg !7268
  %0 = load i32, ptr %pid.addr, align 4, !dbg !7269
  %tobool = icmp ne i32 %0, 0, !dbg !7269
  br i1 %tobool, label %if.else, label %if.then, !dbg !7271

if.then:                                          ; preds = %entry
  %call = call ptr @get_current() #18, !dbg !7272
  store ptr %call, ptr %p, align 8, !dbg !7273
  br label %if.end4, !dbg !7274

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !7275
  %call1 = call ptr @find_task_by_vpid(i32 noundef %1) #18, !dbg !7277
  store ptr %call1, ptr %p, align 8, !dbg !7278
  %2 = load ptr, ptr %p, align 8, !dbg !7279
  %tobool2 = icmp ne ptr %2, null, !dbg !7279
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !7281

if.then3:                                         ; preds = %if.else
  br label %err_unlock, !dbg !7282

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i64 -1, ptr %ret, align 8, !dbg !7283
  %3 = load ptr, ptr %p, align 8, !dbg !7284
  %call5 = call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 17) #18, !dbg !7286
  br i1 %call5, label %if.end7, label %if.then6, !dbg !7287

if.then6:                                         ; preds = %if.end4
  br label %err_unlock, !dbg !7288

if.end7:                                          ; preds = %if.end4
  %4 = load ptr, ptr %p, align 8, !dbg !7289
  %compat_robust_list = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 146, !dbg !7290
  %5 = load ptr, ptr %compat_robust_list, align 8, !dbg !7290
  store ptr %5, ptr %head, align 8, !dbg !7291
  call void @rcu_read_unlock() #18, !dbg !7292
  call void @might_fault() #18, !dbg !7293
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !7244, metadata !DIExpression()), !dbg !7294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !7248, metadata !DIExpression()), !dbg !7294
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !7249, metadata !DIExpression()), !dbg !7294
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !7250, metadata !DIExpression()), !dbg !7294
  store i32 12, ptr %__x, align 4, !dbg !7294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7251, metadata !DIExpression()), !dbg !7294
  %6 = load ptr, ptr %len_ptr.addr, align 8, !dbg !7294
  store ptr %6, ptr %__ptr, align 8, !dbg !7294
  %7 = load ptr, ptr %__ptr, align 8, !dbg !7294
  store ptr %7, ptr %__ptr_pu, align 8, !dbg !7294
  %8 = load i32, ptr %__x, align 4, !dbg !7294
  store i32 %8, ptr %__val_pu, align 4, !dbg !7294
  %9 = call i64 @llvm.read_register.i64(metadata !5940), !dbg !7294
  %10 = load ptr, ptr %__ptr_pu, align 8, !dbg !7294
  %11 = load i32, ptr %__val_pu, align 4, !dbg !7294
  %12 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %10, i32 %11, i64 4, i64 %9) #19, !dbg !7294, !srcloc !7295
  %asmresult = extractvalue { ptr, i64 } %12, 0, !dbg !7294
  %asmresult8 = extractvalue { ptr, i64 } %12, 1, !dbg !7294
  %13 = ptrtoint ptr %asmresult to i64, !dbg !7294
  %14 = trunc i64 %13 to i32, !dbg !7294
  store i32 %14, ptr %__ret_pu, align 4, !dbg !7294
  call void @llvm.write_register.i64(metadata !5940, i64 %asmresult8), !dbg !7294
  %15 = load ptr, ptr %__ptr, align 8, !dbg !7296
  call void @kmsan_copy_to_user(ptr noundef %15, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #18, !dbg !7296
  %16 = load i32, ptr %__ret_pu, align 4, !dbg !7294
  %conv = sext i32 %16 to i64, !dbg !7294
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7294
  store i64 %expval, ptr %tmp9, align 8, !dbg !7294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !7293
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !7293
  %17 = load i64, ptr %tmp9, align 8, !dbg !7294
  store i64 %17, ptr %tmp, align 8, !dbg !7293
  %18 = load i64, ptr %tmp, align 8, !dbg !7293
  %tobool10 = icmp ne i64 %18, 0, !dbg !7298
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !7299

if.then11:                                        ; preds = %if.end7
  store i64 -14, ptr %retval, align 8, !dbg !7300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7300

if.end12:                                         ; preds = %if.end7
  call void @might_fault() #18, !dbg !7301
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu14) #19, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__ret_pu14, metadata !7252, metadata !DIExpression()), !dbg !7302
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu15) #19, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu15, metadata !7255, metadata !DIExpression()), !dbg !7302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu16) #19, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__val_pu16, metadata !7256, metadata !DIExpression()), !dbg !7302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x17) #19, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__x17, metadata !7257, metadata !DIExpression()), !dbg !7302
  %19 = load ptr, ptr %head, align 8, !dbg !7302
  %call18 = call i32 @ptr_to_compat(ptr noundef %19) #18, !dbg !7302
  store i32 %call18, ptr %__x17, align 4, !dbg !7302
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr19) #19, !dbg !7302
  call void @llvm.dbg.declare(metadata ptr %__ptr19, metadata !7258, metadata !DIExpression()), !dbg !7302
  %20 = load ptr, ptr %head_ptr.addr, align 8, !dbg !7302
  store ptr %20, ptr %__ptr19, align 8, !dbg !7302
  %21 = load ptr, ptr %__ptr19, align 8, !dbg !7302
  store ptr %21, ptr %__ptr_pu15, align 8, !dbg !7302
  %22 = load i32, ptr %__x17, align 4, !dbg !7302
  store i32 %22, ptr %__val_pu16, align 4, !dbg !7302
  %23 = call i64 @llvm.read_register.i64(metadata !5940), !dbg !7302
  %24 = load ptr, ptr %__ptr_pu15, align 8, !dbg !7302
  %25 = load i32, ptr %__val_pu16, align 4, !dbg !7302
  %26 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %24, i32 %25, i64 4, i64 %23) #19, !dbg !7302, !srcloc !7303
  %asmresult20 = extractvalue { ptr, i64 } %26, 0, !dbg !7302
  %asmresult21 = extractvalue { ptr, i64 } %26, 1, !dbg !7302
  %27 = ptrtoint ptr %asmresult20 to i64, !dbg !7302
  %28 = trunc i64 %27 to i32, !dbg !7302
  store i32 %28, ptr %__ret_pu14, align 4, !dbg !7302
  call void @llvm.write_register.i64(metadata !5940, i64 %asmresult21), !dbg !7302
  %29 = load ptr, ptr %__ptr19, align 8, !dbg !7304
  call void @kmsan_copy_to_user(ptr noundef %29, ptr noundef %__x17, i64 noundef 4, i64 noundef 0) #18, !dbg !7304
  %30 = load i32, ptr %__ret_pu14, align 4, !dbg !7302
  %conv23 = sext i32 %30 to i64, !dbg !7302
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !7302
  store i64 %expval24, ptr %tmp22, align 8, !dbg !7302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr19) #19, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x17) #19, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu16) #19, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu15) #19, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu14) #19, !dbg !7301
  %31 = load i64, ptr %tmp22, align 8, !dbg !7302
  store i64 %31, ptr %tmp13, align 8, !dbg !7301
  %32 = load i64, ptr %tmp13, align 8, !dbg !7301
  store i64 %32, ptr %retval, align 8, !dbg !7306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7306

err_unlock:                                       ; preds = %if.then6, %if.then3
  call void @llvm.dbg.label(metadata !7259), !dbg !7307
  call void @rcu_read_unlock() #18, !dbg !7308
  %33 = load i64, ptr %ret, align 8, !dbg !7309
  store i64 %33, ptr %retval, align 8, !dbg !7310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7310

cleanup:                                          ; preds = %err_unlock, %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !7311
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #19, !dbg !7311
  %34 = load i64, ptr %retval, align 8, !dbg !7311
  ret i64 %34, !dbg !7311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ptr_to_compat(ptr noundef %uptr) #4 align 16 !dbg !7312 {
entry:
  %uptr.addr = alloca ptr, align 8
  store ptr %uptr, ptr %uptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !7316, metadata !DIExpression()), !dbg !7317
  %0 = load ptr, ptr %uptr.addr, align 8, !dbg !7318
  %1 = ptrtoint ptr %0 to i64, !dbg !7319
  %conv = trunc i64 %1 to i32, !dbg !7320
  ret i32 %conv, !dbg !7321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_futex_time32(ptr noundef %uaddr, i32 noundef %op, i32 noundef %val, ptr noundef %utime, ptr noundef %uaddr2, i32 noundef %val3) #4 align 16 !dbg !7322 {
entry:
  %retval = alloca i64, align 8
  %uaddr.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %utime.addr = alloca ptr, align 8
  %uaddr2.addr = alloca ptr, align 8
  %val3.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cmd = alloca i32, align 4
  %t = alloca i64, align 8
  %tp = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !7326, metadata !DIExpression()), !dbg !7337
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !7327, metadata !DIExpression()), !dbg !7337
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7328, metadata !DIExpression()), !dbg !7337
  store ptr %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !7329, metadata !DIExpression()), !dbg !7337
  store ptr %uaddr2, ptr %uaddr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr2.addr, metadata !7330, metadata !DIExpression()), !dbg !7337
  store i32 %val3, ptr %val3.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val3.addr, metadata !7331, metadata !DIExpression()), !dbg !7337
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !7338
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7332, metadata !DIExpression()), !dbg !7339
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #19, !dbg !7338
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !7333, metadata !DIExpression()), !dbg !7340
  %0 = load i32, ptr %op.addr, align 4, !dbg !7341
  %and = and i32 %0, -385, !dbg !7342
  store i32 %and, ptr %cmd, align 4, !dbg !7340
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #19, !dbg !7343
  call void @llvm.dbg.declare(metadata ptr %t, metadata !7334, metadata !DIExpression()), !dbg !7344
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #19, !dbg !7343
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !7335, metadata !DIExpression()), !dbg !7345
  store ptr null, ptr %tp, align 8, !dbg !7345
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #19, !dbg !7346
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !7336, metadata !DIExpression()), !dbg !7347
  %1 = load ptr, ptr %utime.addr, align 8, !dbg !7348
  %tobool = icmp ne ptr %1, null, !dbg !7348
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !7350

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %cmd, align 4, !dbg !7351
  %call = call zeroext i1 @futex_cmd_has_timeout(i32 noundef %2) #18, !dbg !7352
  br i1 %call, label %if.then, label %if.end8, !dbg !7353

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %utime.addr, align 8, !dbg !7354
  %call1 = call i32 @get_old_timespec32(ptr noundef %ts, ptr noundef %3) #18, !dbg !7357
  %tobool2 = icmp ne i32 %call1, 0, !dbg !7357
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !7358

if.then3:                                         ; preds = %if.then
  store i64 -14, ptr %retval, align 8, !dbg !7359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7359

if.end:                                           ; preds = %if.then
  %4 = load i32, ptr %cmd, align 4, !dbg !7360
  %5 = load i32, ptr %op.addr, align 4, !dbg !7361
  %call4 = call i32 @futex_init_timeout(i32 noundef %4, i32 noundef %5, ptr noundef %ts, ptr noundef %t) #18, !dbg !7362
  store i32 %call4, ptr %ret, align 4, !dbg !7363
  %6 = load i32, ptr %ret, align 4, !dbg !7364
  %tobool5 = icmp ne i32 %6, 0, !dbg !7364
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !7366

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !7367
  %conv = sext i32 %7 to i64, !dbg !7367
  store i64 %conv, ptr %retval, align 8, !dbg !7368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7368

if.end7:                                          ; preds = %if.end
  store ptr %t, ptr %tp, align 8, !dbg !7369
  br label %if.end8, !dbg !7370

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %entry
  %8 = load ptr, ptr %uaddr.addr, align 8, !dbg !7371
  %9 = load i32, ptr %op.addr, align 4, !dbg !7372
  %10 = load i32, ptr %val.addr, align 4, !dbg !7373
  %11 = load ptr, ptr %tp, align 8, !dbg !7374
  %12 = load ptr, ptr %uaddr2.addr, align 8, !dbg !7375
  %13 = load ptr, ptr %utime.addr, align 8, !dbg !7376
  %14 = ptrtoint ptr %13 to i64, !dbg !7377
  %conv9 = trunc i64 %14 to i32, !dbg !7377
  %15 = load i32, ptr %val3.addr, align 4, !dbg !7378
  %call10 = call i64 @do_futex(ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %conv9, i32 noundef %15) #18, !dbg !7379
  store i64 %call10, ptr %retval, align 8, !dbg !7380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7380

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #19, !dbg !7381
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #19, !dbg !7381
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #19, !dbg !7381
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #19, !dbg !7381
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !7381
  %16 = load i64, ptr %retval, align 8, !dbg !7381
  ret i64 %16, !dbg !7381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7382 dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.named.register.rsp = !{!5940}
!llvm.module.flags = !{!5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948}
!llvm.ident = !{!5949}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 249, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !14, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/futex/.syscalls.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/futex/syscalls\22 -D KBUILD_BASENAME=\22syscalls\22 -D KBUILD_MODNAME=\22syscalls\22 -D __KBUILD_MODNAME=kmod_syscalls -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/futex/syscalls.ll kernel/futex/syscalls.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !286, globals: !5939, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "kernel/futex/syscalls.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "477c9354463eeb0dda4245cf989c9391")
!15 = !{!16, !22, !117, !125, !132, !140, !156, !163, !169, !180, !186, !192, !199, !207, !214, !223, !228, !233, !239, !248, !253, !259, !265, !272, !277}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !24, file: !23, line: 147, baseType: !18, size: 32, elements: !114)
!23 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !23, line: 135, size: 512, elements: !25)
!25 = !{!26, !29, !31, !33, !37, !38, !54, !112, !113}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !24, file: !23, line: 136, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !23, line: 137, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !24, file: !23, line: 138, baseType: !32, size: 32, offset: 128)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !24, file: !23, line: 139, baseType: !34, size: 16, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !23, line: 150, baseType: !22, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !24, file: !23, line: 151, baseType: !39, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !23, line: 64, baseType: !41)
!41 = !DISubroutineType(types: !42)
!42 = !{!32, !43, !32, !30, !44, !50}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 61, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !47, line: 72, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !47, line: 16, baseType: !49)
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !35, line: 52, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !47, line: 88, baseType: !53)
!53 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !24, file: !23, line: 152, baseType: !55, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !23, line: 117, size: 256, elements: !57)
!57 = !{!58, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !56, file: !23, line: 118, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !35, line: 174, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 172, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !35, line: 173, baseType: !32, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !56, file: !23, line: 119, baseType: !64, size: 192, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !65, line: 41, baseType: !66)
!65 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !65, line: 37, size: 192, elements: !67)
!67 = !{!68, !106}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !66, file: !65, line: 38, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !70, line: 29, baseType: !71)
!70 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !70, line: 17, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !70, line: 18, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !70, line: 18, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !74, file: !70, line: 19, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !78, line: 14, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !77, file: !78, line: 15, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !82, line: 44, baseType: !83)
!82 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !82, line: 14, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !82, line: 15, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !82, line: 15, size: 32, elements: !87)
!87 = !{!88, !89, !99}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !82, line: 16, baseType: !59, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 24, baseType: !90, size: 16)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 24, size: 16, elements: !91)
!91 = !{!92, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !90, file: !82, line: 25, baseType: !93, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !90, file: !82, line: 26, baseType: !93, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 28, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 28, size: 32, elements: !101)
!101 = !{!102, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !100, file: !82, line: 29, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !36)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !82, line: 30, baseType: !103, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !66, file: !65, line: 39, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !35, line: 190, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !35, line: 191, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !35, line: 191, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !24, file: !23, line: 153, baseType: !30, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !24, file: !23, line: 154, baseType: !30, size: 64, offset: 448)
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!116 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !118, line: 9, baseType: !18, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!121 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!122 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!123 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!124 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !126, line: 312, baseType: !18, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!127 = !{!128, !129, !130, !131}
!128 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!129 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!130 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!131 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !133, line: 68, baseType: !18, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!138 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!139 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !141, line: 1325, baseType: !18, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!143 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!144 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!145 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!146 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!147 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!148 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!149 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!150 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!151 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!152 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!153 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!154 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!155 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !157, line: 15, baseType: !18, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!160 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!161 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!162 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !164, line: 26, baseType: !18, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!168 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !170, line: 253, baseType: !18, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!173 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!179 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !170, line: 158, baseType: !18, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!183 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!184 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!185 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !187, line: 45, baseType: !18, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!190 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!191 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !193, line: 487, baseType: !18, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!196 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!197 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!198 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !200, line: 620, baseType: !18, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!201 = !{!202, !203, !204, !205, !206}
!202 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!203 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!204 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!205 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!206 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !200, line: 597, baseType: !32, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!210 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!211 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!212 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!213 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !193, line: 547, baseType: !18, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222}
!216 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!217 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!218 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!219 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!220 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!221 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!222 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !193, line: 564, baseType: !18, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!226 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!227 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !193, line: 577, baseType: !18, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!231 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !193, line: 503, baseType: !18, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!236 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!237 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!238 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !240, line: 593, baseType: !32, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!241 = !{!242, !243, !244, !245, !246, !247}
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!245 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!246 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !249, line: 2052, baseType: !18, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!250 = !{!251, !252}
!251 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!252 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !254, line: 54, baseType: !18, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "USRQUOTA", value: 0)
!257 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!258 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !260, line: 16, baseType: !18, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "TT_NONE", value: 0)
!263 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!264 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !266, line: 51, baseType: !18, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!267 = !{!268, !269, !270, !271}
!268 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!269 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!270 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!271 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 10, baseType: !18, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!274 = !{!275, !276}
!275 = !DIEnumerator(name: "false", value: 0)
!276 = !DIEnumerator(name: "true", value: 1)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !18, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285}
!279 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!280 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!281 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!282 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!283 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!284 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!285 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!286 = !{!18, !287, !45, !32, !299, !30, !300, !49, !5924, !44, !4984, !311, !5925, !380, !369, !5927, !4999, !484, !756, !5547, !5934, !5935, !5936, !5937}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !289, line: 97, size: 192, elements: !290)
!289 = !DIFile(filename: "./include/uapi/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84a6875ed19116fa53fb0213593793f9")
!290 = !{!291, !296, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !288, file: !289, line: 101, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list", file: !289, line: 85, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !289, line: 86, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !288, file: !289, line: 109, baseType: !297, size: 64, offset: 64)
!297 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !288, file: !289, line: 121, baseType: !295, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !302, line: 746, size: 58368, elements: !303)
!302 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!303 = !{!304, !314, !315, !316, !322, !323, !324, !325, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !408, !419, !520, !524, !527, !558, !559, !560, !561, !572, !574, !575, !576, !577, !578, !579, !590, !591, !594, !595, !596, !597, !598, !599, !600, !601, !608, !609, !616, !617, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !5030, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5073, !5079, !5080, !5081, !5082, !5083, !5085, !5088, !5095, !5100, !5103, !5106, !5109, !5153, !5351, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5389, !5390, !5391, !5400, !5408, !5409, !5410, !5411, !5412, !5417, !5418, !5419, !5422, !5423, !5426, !5429, !5432, !5440, !5443, !5444, !5530, !5531, !5532, !5533, !5534, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5560, !5561, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5642, !5643, !5649, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5661, !5733, !5735, !5736, !5737, !5738, !5739, !5740, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5757, !5758, !5759}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !301, file: !302, line: 752, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !306, line: 56, size: 192, elements: !307)
!306 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!307 = !{!308, !309, !310, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 57, baseType: !49, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !305, file: !306, line: 58, baseType: !49, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !305, file: !306, line: 59, baseType: !311, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !18)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !305, file: !306, line: 61, baseType: !311, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !301, file: !302, line: 754, baseType: !18, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !301, file: !302, line: 767, baseType: !30, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !301, file: !302, line: 768, baseType: !317, size: 32, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !318, line: 113, baseType: !319)
!318 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !318, line: 111, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !319, file: !318, line: 112, baseType: !59, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !302, line: 770, baseType: !18, size: 32, offset: 352)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !301, file: !302, line: 771, baseType: !18, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !301, file: !302, line: 774, baseType: !32, size: 32, offset: 416)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !301, file: !302, line: 775, baseType: !326, size: 128, offset: 448)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !327, line: 58, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!328 = !{!329, !335, !340, !341}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !326, file: !327, line: 59, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !331, line: 60, size: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !331, line: 61, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !327, line: 60, baseType: !336, size: 32, offset: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !327, line: 60, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !336, file: !327, line: 61, baseType: !18, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !336, file: !327, line: 62, baseType: !59, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !326, file: !327, line: 65, baseType: !103, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !326, file: !327, line: 65, baseType: !103, size: 16, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !301, file: !302, line: 776, baseType: !18, size: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !301, file: !302, line: 777, baseType: !49, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !301, file: !302, line: 778, baseType: !300, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !301, file: !302, line: 787, baseType: !32, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !301, file: !302, line: 788, baseType: !32, size: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !301, file: !302, line: 790, baseType: !32, size: 32, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !301, file: !302, line: 792, baseType: !32, size: 32, offset: 864)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !301, file: !302, line: 793, baseType: !32, size: 32, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !301, file: !302, line: 794, baseType: !32, size: 32, offset: 928)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !301, file: !302, line: 795, baseType: !18, size: 32, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !301, file: !302, line: 797, baseType: !353, size: 2048, offset: 1024)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !302, line: 551, size: 2048, elements: !354)
!354 = !{!355, !360, !368, !372, !373, !374, !375, !376, !377, !378, !379, !382, !383, !384, !385, !387, !390, !391, !392}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !353, file: !302, line: 553, baseType: !356, size: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !302, line: 411, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !356, file: !302, line: 412, baseType: !49, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !356, file: !302, line: 413, baseType: !311, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !353, file: !302, line: 554, baseType: !361, size: 192, align: 64, offset: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !362, line: 5, size: 192, align: 64, elements: !363)
!362 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!363 = !{!364, !365, !367}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !361, file: !362, line: 6, baseType: !49, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !361, file: !362, line: 7, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !361, file: !362, line: 8, baseType: !366, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !353, file: !302, line: 555, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !371)
!371 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !353, file: !302, line: 556, baseType: !369, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !353, file: !302, line: 558, baseType: !107, size: 128, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !353, file: !302, line: 559, baseType: !18, size: 32, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !353, file: !302, line: 561, baseType: !369, size: 64, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !353, file: !302, line: 562, baseType: !369, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !353, file: !302, line: 563, baseType: !369, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !353, file: !302, line: 564, baseType: !369, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !353, file: !302, line: 565, baseType: !380, size: 64, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !53)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !353, file: !302, line: 566, baseType: !369, size: 64, offset: 960)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !353, file: !302, line: 568, baseType: !369, size: 64, offset: 1024)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !353, file: !302, line: 571, baseType: !32, size: 32, offset: 1088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !353, file: !302, line: 572, baseType: !386, size: 64, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !353, file: !302, line: 574, baseType: !388, size: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !302, line: 49, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !353, file: !302, line: 576, baseType: !388, size: 64, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !353, file: !302, line: 578, baseType: !49, size: 64, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !353, file: !302, line: 588, baseType: !393, size: 512, align: 512, offset: 1536)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !302, line: 497, size: 512, align: 512, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !393, file: !302, line: 498, baseType: !369, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !393, file: !302, line: 499, baseType: !369, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !393, file: !302, line: 500, baseType: !369, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !393, file: !302, line: 501, baseType: !311, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !393, file: !302, line: 502, baseType: !311, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !393, file: !302, line: 503, baseType: !49, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !393, file: !302, line: 504, baseType: !49, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !393, file: !302, line: 505, baseType: !49, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !393, file: !302, line: 506, baseType: !404, size: 64, align: 64, offset: 448)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !302, line: 445, size: 64, align: 64, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !404, file: !302, line: 446, baseType: !18, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !404, file: !302, line: 447, baseType: !18, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !301, file: !302, line: 798, baseType: !409, size: 384, offset: 3072)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !302, line: 592, size: 384, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !409, file: !302, line: 593, baseType: !107, size: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !409, file: !302, line: 594, baseType: !49, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !409, file: !302, line: 595, baseType: !49, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !409, file: !302, line: 596, baseType: !18, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !409, file: !302, line: 597, baseType: !36, size: 16, offset: 288)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !409, file: !302, line: 598, baseType: !36, size: 16, offset: 304)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !409, file: !302, line: 600, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !301, file: !302, line: 799, baseType: !420, size: 1792, offset: 3456)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !302, line: 610, size: 1792, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !517, !518}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !420, file: !302, line: 611, baseType: !361, size: 192, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !420, file: !302, line: 618, baseType: !369, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !420, file: !302, line: 619, baseType: !369, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !420, file: !302, line: 620, baseType: !369, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !420, file: !302, line: 621, baseType: !369, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !420, file: !302, line: 622, baseType: !369, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !420, file: !302, line: 629, baseType: !380, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !420, file: !302, line: 630, baseType: !369, size: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !302, line: 631, baseType: !18, size: 32, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !420, file: !302, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !420, file: !302, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !420, file: !302, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !420, file: !302, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !420, file: !302, line: 662, baseType: !436, size: 512, offset: 704)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !437)
!437 = !{!438, !446, !447, !452, !513, !514, !515, !516}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !17, line: 119, baseType: !439, size: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !440, line: 9, size: 256, elements: !441)
!440 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !440, line: 10, baseType: !361, size: 192, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !439, file: !440, line: 11, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !445, line: 29, baseType: !380)
!445 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !436, file: !17, line: 120, baseType: !444, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !436, file: !17, line: 121, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!16, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !436, file: !17, line: 122, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !455)
!455 = !{!456, !482, !483, !486, !496, !497, !508, !512}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !454, file: !17, line: 160, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !459)
!459 = !{!460, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !17, line: 216, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !78, line: 23, baseType: !77)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !458, file: !17, line: 217, baseType: !18, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !458, file: !17, line: 218, baseType: !18, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !458, file: !17, line: 219, baseType: !18, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !458, file: !17, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !458, file: !17, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !458, file: !17, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !458, file: !17, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !458, file: !17, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !458, file: !17, line: 226, baseType: !18, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !458, file: !17, line: 227, baseType: !36, size: 16, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !458, file: !17, line: 228, baseType: !36, size: 16, offset: 208)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !458, file: !17, line: 229, baseType: !18, size: 32, offset: 224)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !458, file: !17, line: 235, baseType: !444, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !458, file: !17, line: 236, baseType: !451, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !458, file: !17, line: 237, baseType: !444, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !458, file: !17, line: 238, baseType: !451, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !458, file: !17, line: 239, baseType: !479, size: 4096, align: 512, offset: 512)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 4096, align: 512, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !454, file: !17, line: 161, baseType: !18, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !454, file: !17, line: 162, baseType: !484, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !35, line: 32, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !47, line: 96, baseType: !32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !454, file: !17, line: 163, baseType: !487, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !488, line: 274, baseType: !489)
!488 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !488, line: 274, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !489, file: !488, line: 274, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !488, line: 69, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !488, line: 64, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !493, file: !488, line: 65, baseType: !18, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !454, file: !17, line: 164, baseType: !451, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !454, file: !17, line: 165, baseType: !498, size: 128, offset: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !440, line: 14, size: 128, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !498, file: !440, line: 15, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !362, line: 26, size: 128, elements: !502)
!502 = !{!503, !507}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !501, file: !362, line: 27, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !362, line: 12, size: 64, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !504, file: !362, line: 13, baseType: !366, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !501, file: !362, line: 28, baseType: !366, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !454, file: !17, line: 166, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!444}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !454, file: !17, line: 167, baseType: !444, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !436, file: !17, line: 123, baseType: !93, size: 8, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !436, file: !17, line: 124, baseType: !93, size: 8, offset: 456)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !436, file: !17, line: 125, baseType: !93, size: 8, offset: 464)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !436, file: !17, line: 126, baseType: !93, size: 8, offset: 472)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !420, file: !302, line: 671, baseType: !436, size: 512, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !420, file: !302, line: 679, baseType: !519, size: 64, offset: 1728)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !301, file: !302, line: 800, baseType: !521, size: 64, offset: 5248)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !302, line: 800, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !301, file: !302, line: 809, baseType: !525, size: 64, offset: 5312)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !302, line: 70, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !301, file: !302, line: 825, baseType: !528, size: 2048, align: 512, offset: 5632)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !302, line: 509, size: 2048, align: 512, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !528, file: !302, line: 511, baseType: !369, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !528, file: !302, line: 512, baseType: !369, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !528, file: !302, line: 513, baseType: !369, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !528, file: !302, line: 514, baseType: !369, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !528, file: !302, line: 515, baseType: !369, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !528, file: !302, line: 516, baseType: !369, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !528, file: !302, line: 518, baseType: !369, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !528, file: !302, line: 519, baseType: !369, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !528, file: !302, line: 520, baseType: !380, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !528, file: !302, line: 522, baseType: !369, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !528, file: !302, line: 523, baseType: !369, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !528, file: !302, line: 524, baseType: !380, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !528, file: !302, line: 526, baseType: !380, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !528, file: !302, line: 527, baseType: !369, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !528, file: !302, line: 529, baseType: !369, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !528, file: !302, line: 530, baseType: !369, size: 64, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !528, file: !302, line: 531, baseType: !369, size: 64, offset: 1024)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !528, file: !302, line: 532, baseType: !369, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !528, file: !302, line: 533, baseType: !369, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !528, file: !302, line: 535, baseType: !369, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !528, file: !302, line: 536, baseType: !369, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !528, file: !302, line: 537, baseType: !369, size: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !528, file: !302, line: 538, baseType: !369, size: 64, offset: 1408)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !528, file: !302, line: 539, baseType: !369, size: 64, offset: 1472)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !528, file: !302, line: 540, baseType: !369, size: 64, offset: 1536)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !528, file: !302, line: 541, baseType: !369, size: 64, offset: 1600)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !528, file: !302, line: 542, baseType: !369, size: 64, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !528, file: !302, line: 543, baseType: !369, size: 64, offset: 1728)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !301, file: !302, line: 833, baseType: !18, size: 32, offset: 7680)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !301, file: !302, line: 836, baseType: !18, size: 32, offset: 7712)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !301, file: !302, line: 837, baseType: !32, size: 32, offset: 7744)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !301, file: !302, line: 838, baseType: !562, size: 64, offset: 7808)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !565, line: 19, baseType: !566)
!565 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !565, line: 19, size: 64, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !566, file: !565, line: 19, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 1)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !301, file: !302, line: 839, baseType: !573, size: 64, offset: 7872)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !301, file: !302, line: 840, baseType: !564, size: 64, offset: 7936)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !301, file: !302, line: 841, baseType: !30, size: 64, offset: 8000)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !301, file: !302, line: 843, baseType: !36, size: 16, offset: 8064)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !301, file: !302, line: 845, baseType: !36, size: 16, offset: 8080)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !301, file: !302, line: 848, baseType: !32, size: 32, offset: 8096)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !301, file: !302, line: 849, baseType: !580, size: 32, offset: 8128)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !302, line: 718, size: 32, elements: !581)
!581 = !{!582, !589}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !580, file: !302, line: 724, baseType: !583, size: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !302, line: 719, size: 32, elements: !584)
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !583, file: !302, line: 720, baseType: !93, size: 8)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !583, file: !302, line: 721, baseType: !93, size: 8, offset: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !583, file: !302, line: 722, baseType: !93, size: 8, offset: 16)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !583, file: !302, line: 723, baseType: !93, size: 8, offset: 24)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !580, file: !302, line: 725, baseType: !311, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !301, file: !302, line: 850, baseType: !107, size: 128, offset: 8192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !301, file: !302, line: 851, baseType: !592, size: 64, offset: 8320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !302, line: 60, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !301, file: !302, line: 855, baseType: !49, size: 64, offset: 8384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !301, file: !302, line: 856, baseType: !93, size: 8, offset: 8448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !301, file: !302, line: 857, baseType: !93, size: 8, offset: 8456)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !301, file: !302, line: 858, baseType: !32, size: 32, offset: 8480)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !301, file: !302, line: 859, baseType: !107, size: 128, offset: 8512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !301, file: !302, line: 860, baseType: !32, size: 32, offset: 8640)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !301, file: !302, line: 861, baseType: !107, size: 128, offset: 8704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !301, file: !302, line: 873, baseType: !602, size: 256, offset: 8832)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !302, line: 376, size: 256, elements: !603)
!603 = !{!604, !605, !606, !607}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !602, file: !302, line: 381, baseType: !49, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !602, file: !302, line: 384, baseType: !371, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !602, file: !302, line: 389, baseType: !371, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !602, file: !302, line: 392, baseType: !371, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !301, file: !302, line: 875, baseType: !107, size: 128, offset: 9088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !301, file: !302, line: 877, baseType: !610, size: 320, offset: 9216)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !611, line: 86, size: 320, elements: !612)
!611 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!612 = !{!613, !614, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !610, file: !611, line: 87, baseType: !32, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !610, file: !611, line: 88, baseType: !107, size: 128, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !610, file: !611, line: 89, baseType: !107, size: 128, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !301, file: !302, line: 878, baseType: !361, size: 192, align: 64, offset: 9536)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !301, file: !302, line: 881, baseType: !618, size: 64, offset: 9728)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !141, line: 733, size: 10240, elements: !620)
!620 = !{!621, !4944}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !141, line: 734, baseType: !622, size: 10240)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !141, line: 734, size: 10240, elements: !623)
!623 = !{!624, !628, !642, !4823, !4824, !4825, !4826, !4827, !4828, !4835, !4836, !4837, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4876, !4878, !4881, !4924, !4925, !4926, !4929, !4930, !4931, !4934, !4935, !4936, !4942, !4943}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !141, line: 739, baseType: !625, size: 512, align: 512)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !622, file: !141, line: 739, size: 512, align: 512, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !625, file: !141, line: 747, baseType: !59, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !622, file: !141, line: 750, baseType: !629, size: 128, offset: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !630, line: 218, size: 128, elements: !631)
!630 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!631 = !{!632, !640, !641}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !630, line: 219, baseType: !633, size: 32)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !630, line: 219, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !633, file: !630, line: 220, baseType: !69, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !633, file: !630, line: 221, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !630, line: 197, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 197, elements: !639)
!639 = !{}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !629, file: !630, line: 223, baseType: !18, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !629, file: !630, line: 224, baseType: !30, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !622, file: !141, line: 752, baseType: !643, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!49, !646, !49, !49, !49, !49}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !249, line: 994, size: 1856, align: 64, elements: !648)
!648 = !{!649, !663, !664, !666, !673, !685, !686, !687, !1068, !1146, !1155, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822}
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !249, line: 995, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !249, line: 995, size: 128, elements: !651)
!651 = !{!652, !653, !662}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !650, file: !249, line: 996, baseType: !330, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !650, file: !249, line: 997, baseType: !654, size: 128, align: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !35, line: 232, size: 128, align: 64, elements: !655)
!655 = !{!656, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !35, line: 233, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !654, file: !35, line: 234, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !657}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !650, file: !249, line: 998, baseType: !18, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !647, file: !249, line: 1005, baseType: !69, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !647, file: !249, line: 1006, baseType: !665, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !35, line: 156, baseType: !18)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !647, file: !249, line: 1007, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !668, line: 13, baseType: !669)
!668 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !35, line: 181, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 179, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !670, file: !35, line: 180, baseType: !380, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !647, file: !249, line: 1008, baseType: !674, size: 256, offset: 256)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !675, line: 66, size: 256, elements: !676)
!675 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!676 = !{!677, !678, !679, !684}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !674, file: !675, line: 67, baseType: !667, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !674, file: !675, line: 68, baseType: !461, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !674, file: !675, line: 70, baseType: !680, size: 32, offset: 96)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !681, line: 15, size: 32, elements: !682)
!681 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !680, file: !681, line: 20, baseType: !59, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !674, file: !675, line: 72, baseType: !107, size: 128, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !647, file: !249, line: 1009, baseType: !51, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !647, file: !249, line: 1010, baseType: !18, size: 32, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !647, file: !249, line: 1011, baseType: !688, size: 256, offset: 640)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !249, line: 948, size: 256, elements: !689)
!689 = !{!690, !713, !1064, !1065, !1066, !1067}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !688, file: !249, line: 949, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !692, line: 34, baseType: !693)
!692 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !692, line: 25, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !693, file: !692, line: 26, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !697, line: 27, baseType: !698)
!697 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !697, line: 13, size: 64, elements: !699)
!699 = !{!700, !712}
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !697, line: 14, baseType: !701, size: 32)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !697, line: 14, size: 32, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !701, file: !697, line: 15, baseType: !59, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !697, line: 16, baseType: !705, size: 32)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !697, line: 16, size: 32, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !705, file: !697, line: 18, baseType: !93, size: 8)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !705, file: !697, line: 19, baseType: !709, size: 24, offset: 8)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 3)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !698, file: !697, line: 26, baseType: !81, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !688, file: !249, line: 950, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !118, line: 59, size: 768, elements: !716)
!716 = !{!717, !718, !719, !720, !733, !734, !735, !736}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !118, line: 61, baseType: !317, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !715, file: !118, line: 62, baseType: !18, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !118, line: 63, baseType: !69, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !715, file: !118, line: 65, baseType: !721, size: 256, offset: 128)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 256, elements: !731)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !35, line: 194, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !722, file: !35, line: 195, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !35, line: 198, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !35, line: 199, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !726, file: !35, line: 199, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!731 = !{!732}
!732 = !DISubrange(count: 4)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !715, file: !118, line: 66, baseType: !722, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !715, file: !118, line: 68, baseType: !64, size: 192, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !715, file: !118, line: 69, baseType: !654, size: 128, align: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !715, file: !118, line: 70, baseType: !737, offset: 768)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, elements: !1062)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !118, line: 54, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !738, file: !118, line: 55, baseType: !32, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !738, file: !118, line: 56, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !744, line: 26, size: 1152, elements: !745)
!744 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!745 = !{!746, !760, !761, !762, !763, !767, !768, !769, !772, !1058, !1059, !1060, !1061}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !743, file: !744, line: 27, baseType: !747, size: 192)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !748, line: 19, size: 192, elements: !749)
!748 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!749 = !{!750, !758, !759}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !747, file: !748, line: 20, baseType: !751, size: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !752, line: 296, size: 128, elements: !753)
!752 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!753 = !{!754, !755, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !751, file: !752, line: 297, baseType: !69, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !751, file: !752, line: 299, baseType: !756, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !35, line: 154, baseType: !18)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !751, file: !752, line: 300, baseType: !30, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !747, file: !748, line: 21, baseType: !18, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !747, file: !748, line: 22, baseType: !18, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !743, file: !744, line: 28, baseType: !654, size: 128, align: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !743, file: !744, line: 29, baseType: !18, size: 32, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !743, file: !744, line: 30, baseType: !300, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !743, file: !744, line: 31, baseType: !764, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !766, line: 325, flags: DIFlagFwdDecl)
!766 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !743, file: !744, line: 32, baseType: !18, size: 32, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !743, file: !744, line: 33, baseType: !742, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !743, file: !744, line: 35, baseType: !770, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !744, line: 17, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !743, file: !744, line: 37, baseType: !773, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !775, line: 68, size: 4800, elements: !776)
!775 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!776 = !{!777, !799, !800, !801, !802, !803, !811, !818, !829, !830, !833, !834, !956, !957, !969, !1039, !1040, !1054, !1056}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !774, file: !775, line: 69, baseType: !778, size: 576)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !775, line: 23, size: 576, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !778, file: !775, line: 24, baseType: !311, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !775, line: 25, baseType: !782, size: 512, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !775, line: 25, size: 512, elements: !783)
!783 = !{!784, !793}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !782, file: !775, line: 26, baseType: !785, size: 480)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 480, elements: !791)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !775, line: 17, size: 96, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !786, file: !775, line: 18, baseType: !311, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !786, file: !775, line: 19, baseType: !311, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !786, file: !775, line: 20, baseType: !311, size: 32, offset: 64)
!791 = !{!792}
!792 = !DISubrange(count: 5)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !775, line: 27, baseType: !794, size: 128)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !775, line: 27, size: 128, elements: !795)
!795 = !{!796, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !794, file: !775, line: 28, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !794, file: !775, line: 29, baseType: !797, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !774, file: !775, line: 70, baseType: !778, size: 576, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !774, file: !775, line: 71, baseType: !778, size: 576, offset: 1152)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !774, file: !775, line: 72, baseType: !773, size: 64, offset: 1728)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !774, file: !775, line: 73, baseType: !32, size: 32, offset: 1792)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !774, file: !775, line: 74, baseType: !804, size: 32, offset: 1824)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !805, line: 23, baseType: !806)
!805 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 21, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !806, file: !805, line: 22, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !35, line: 37, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !47, line: 49, baseType: !18)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !774, file: !775, line: 75, baseType: !812, size: 32, offset: 1856)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !805, line: 28, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 26, size: 32, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !813, file: !805, line: 27, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !35, line: 38, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !47, line: 50, baseType: !18)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !774, file: !775, line: 76, baseType: !819, size: 192, offset: 1920)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !820, line: 9, size: 192, elements: !821)
!820 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!821 = !{!822, !823, !827, !828}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !819, file: !820, line: 10, baseType: !667, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !819, file: !820, line: 11, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !820, line: 7, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !819, file: !820, line: 12, baseType: !18, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !819, file: !820, line: 13, baseType: !317, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 77, baseType: !49, size: 64, offset: 2112)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !774, file: !775, line: 80, baseType: !831, size: 8, offset: 2176)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !35, line: 35, baseType: !832)
!832 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !774, file: !775, line: 88, baseType: !107, size: 128, offset: 2240)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !774, file: !775, line: 89, baseType: !835, size: 64, offset: 2368)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !837, line: 195, size: 1728, elements: !838)
!837 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!838 = !{!839, !840, !845, !850, !859, !862, !863, !870, !871, !872, !873, !876, !877, !878, !880, !881, !920, !941}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !837, line: 196, baseType: !317, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !836, file: !837, line: 197, baseType: !841, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !837, line: 28, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !35, line: 104, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !94, line: 20, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !96, line: 26, baseType: !32)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 198, baseType: !846, size: 192, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 198, size: 192, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !846, file: !837, line: 199, baseType: !107, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !846, file: !837, line: 200, baseType: !361, size: 192, align: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !836, file: !837, line: 205, baseType: !851, size: 320, offset: 256)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !852, line: 48, size: 320, elements: !853)
!852 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!853 = !{!854, !855, !856, !857, !858}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !851, file: !852, line: 49, baseType: !667, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !851, file: !852, line: 55, baseType: !667, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !851, file: !852, line: 57, baseType: !680, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !851, file: !852, line: 59, baseType: !461, size: 32, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !851, file: !852, line: 60, baseType: !107, size: 128, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !836, file: !837, line: 206, baseType: !860, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !837, line: 206, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !836, file: !837, line: 207, baseType: !30, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 208, baseType: !864, size: 64, offset: 704)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 208, size: 64, elements: !865)
!865 = !{!866, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !864, file: !837, line: 209, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !868, line: 8, baseType: !381)
!868 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !864, file: !837, line: 210, baseType: !867, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !836, file: !837, line: 212, baseType: !867, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !836, file: !837, line: 213, baseType: !804, size: 32, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !836, file: !837, line: 214, baseType: !812, size: 32, offset: 864)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !836, file: !837, line: 215, baseType: !874, size: 32, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !837, line: 31, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 110, baseType: !311)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !836, file: !837, line: 216, baseType: !36, size: 16, offset: 928)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !836, file: !837, line: 217, baseType: !36, size: 16, offset: 944)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !836, file: !837, line: 221, baseType: !879, size: 16, offset: 960)
!879 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !837, line: 228, baseType: !49, size: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 245, baseType: !882, size: 320, offset: 1088)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 245, size: 320, elements: !883)
!883 = !{!884, !911}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !882, file: !837, line: 246, baseType: !885, size: 320)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !837, line: 114, size: 320, elements: !886)
!886 = !{!887, !888, !900, !903, !910}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !885, file: !837, line: 116, baseType: !49, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !837, line: 117, baseType: !889, size: 64, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !837, line: 117, size: 64, elements: !890)
!890 = !{!891, !899}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !837, line: 118, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !837, line: 118, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !892, file: !837, line: 120, baseType: !103, size: 16)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !892, file: !837, line: 121, baseType: !896, size: 48, offset: 16)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 6)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !889, file: !837, line: 127, baseType: !49, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !837, line: 129, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !837, line: 102, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !885, file: !837, line: 130, baseType: !904, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !837, line: 108, size: 192, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !905, file: !837, line: 109, baseType: !654, size: 128, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !905, file: !837, line: 110, baseType: !317, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !905, file: !837, line: 111, baseType: !831, size: 8, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !885, file: !837, line: 131, baseType: !27, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !837, line: 247, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !837, line: 247, size: 320, elements: !913)
!913 = !{!914, !915, !916, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !912, file: !837, line: 248, baseType: !49, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !912, file: !837, line: 249, baseType: !49, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !912, file: !837, line: 250, baseType: !901, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !912, file: !837, line: 251, baseType: !904, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !912, file: !837, line: 252, baseType: !919, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 260, baseType: !921, size: 256, offset: 1408)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 260, size: 256, elements: !922)
!922 = !{!923, !929}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !921, file: !837, line: 261, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !837, line: 134, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !924, file: !837, line: 135, baseType: !30, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !924, file: !837, line: 136, baseType: !928, size: 256)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !731)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !837, line: 262, baseType: !930, size: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !837, line: 262, size: 256, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !930, file: !837, line: 264, baseType: !107, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !930, file: !837, line: 265, baseType: !934, size: 128, offset: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !935, line: 22, size: 128, elements: !936)
!935 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!936 = !{!937, !940}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !934, file: !935, line: 23, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !935, line: 23, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !934, file: !935, line: 24, baseType: !49, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !836, file: !837, line: 280, baseType: !942, size: 64, offset: 1664)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !837, line: 176, size: 192, elements: !944)
!944 = !{!945, !954, !955}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !943, file: !837, line: 177, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !837, line: 171, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!32, !835, !950, !952, !835}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !943, file: !837, line: 178, baseType: !835, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !943, file: !837, line: 179, baseType: !901, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !774, file: !775, line: 90, baseType: !851, size: 320, offset: 2432)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !774, file: !775, line: 97, baseType: !958, size: 256, offset: 2752)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !959, line: 98, size: 256, elements: !960)
!959 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !958, file: !959, line: 99, baseType: !667, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !958, file: !959, line: 100, baseType: !107, size: 128, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !958, file: !959, line: 101, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !959, line: 21, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !774, file: !775, line: 99, baseType: !970, size: 768, offset: 3008)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !23, line: 199, size: 768, elements: !971)
!971 = !{!972, !977}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !970, file: !23, line: 200, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!32, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !970, file: !23, line: 201, baseType: !978, size: 704, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !23, line: 193, size: 704, elements: !979)
!979 = !{!980, !1038}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !978, file: !23, line: 195, baseType: !981, size: 640)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !23, line: 173, size: 640, elements: !982)
!982 = !{!983, !995, !1007, !1008, !1028, !1029, !1031, !1037}
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !23, line: 174, baseType: !984, size: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !23, line: 174, size: 192, elements: !985)
!985 = !{!986, !994}
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !23, line: 175, baseType: !987, size: 192)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !23, line: 175, size: 192, elements: !988)
!988 = !{!989, !990, !991, !992, !993}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !987, file: !23, line: 176, baseType: !43, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !987, file: !23, line: 177, baseType: !32, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !987, file: !23, line: 178, baseType: !32, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !23, line: 179, baseType: !32, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !987, file: !23, line: 180, baseType: !32, size: 32, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !984, file: !23, line: 182, baseType: !654, size: 128, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !981, file: !23, line: 184, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !998, line: 26, size: 256, elements: !999)
!998 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !997, file: !998, line: 27, baseType: !18, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !997, file: !998, line: 28, baseType: !1002, size: 192, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1003, line: 43, size: 192, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1002, file: !1003, line: 44, baseType: !461, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1002, file: !1003, line: 45, baseType: !107, size: 128, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !981, file: !23, line: 185, baseType: !43, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !981, file: !23, line: 186, baseType: !1009, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !23, line: 204, size: 960, elements: !1011)
!1011 = !{!1012, !1013, !1017, !1024}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1010, file: !23, line: 205, baseType: !970, size: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1010, file: !23, line: 206, baseType: !1014, size: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!976, !1009}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1010, file: !23, line: 207, baseType: !1018, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1021, !1022, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1010, file: !23, line: 209, baseType: !1025, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!32, !1021, !43}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !981, file: !23, line: 187, baseType: !976, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !981, file: !23, line: 188, baseType: !1030, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !981, file: !23, line: 189, baseType: !1032, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !23, line: 157, size: 256, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1033, file: !23, line: 158, baseType: !361, size: 192, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1033, file: !23, line: 159, baseType: !1021, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !981, file: !23, line: 190, baseType: !722, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !978, file: !23, line: 196, baseType: !504, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !774, file: !775, line: 100, baseType: !1021, size: 64, offset: 3776)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !774, file: !775, line: 102, baseType: !1041, size: 64, offset: 3840)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !775, line: 107, size: 1152, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1052}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1042, file: !775, line: 108, baseType: !726, size: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1042, file: !775, line: 109, baseType: !773, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1042, file: !775, line: 110, baseType: !804, size: 32, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1042, file: !775, line: 111, baseType: !59, size: 32, offset: 224)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1042, file: !775, line: 112, baseType: !1049, size: 640, offset: 256)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 640, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 10)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1042, file: !775, line: 113, baseType: !1053, size: 256, offset: 896)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 256, elements: !731)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !774, file: !775, line: 103, baseType: !1055, size: 640, offset: 3904)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 640, elements: !1050)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !774, file: !775, line: 104, baseType: !1057, size: 256, offset: 4544)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !731)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !743, file: !744, line: 38, baseType: !1041, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !743, file: !744, line: 39, baseType: !32, size: 32, offset: 832)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !743, file: !744, line: 40, baseType: !819, size: 192, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !743, file: !744, line: 42, baseType: !32, size: 32, offset: 1088)
!1062 = !{!1063}
!1063 = !DISubrange(count: -1)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !688, file: !249, line: 951, baseType: !117, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !688, file: !249, line: 952, baseType: !804, size: 32, offset: 160)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !688, file: !249, line: 952, baseType: !804, size: 32, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !688, file: !249, line: 953, baseType: !32, size: 32, offset: 224)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !647, file: !249, line: 1012, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1072, line: 110, size: 1472, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1131, !1132, !1133, !1141}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1071, file: !1072, line: 111, baseType: !667, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1071, file: !1072, line: 112, baseType: !804, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1071, file: !1072, line: 113, baseType: !812, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1071, file: !1072, line: 114, baseType: !804, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1071, file: !1072, line: 115, baseType: !812, size: 32, offset: 160)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1071, file: !1072, line: 116, baseType: !804, size: 32, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1071, file: !1072, line: 117, baseType: !812, size: 32, offset: 224)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1071, file: !1072, line: 118, baseType: !804, size: 32, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1071, file: !1072, line: 119, baseType: !812, size: 32, offset: 288)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1071, file: !1072, line: 120, baseType: !18, size: 32, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1071, file: !1072, line: 121, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1086, line: 24, baseType: !1087)
!1086 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 24, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1087, file: !1086, line: 24, baseType: !369, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1071, file: !1072, line: 122, baseType: !1085, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1071, file: !1072, line: 123, baseType: !1085, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1071, file: !1072, line: 124, baseType: !1085, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1071, file: !1072, line: 125, baseType: !1085, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1071, file: !1072, line: 127, baseType: !97, size: 8, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1071, file: !1072, line: 129, baseType: !835, size: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1071, file: !1072, line: 130, baseType: !835, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1071, file: !1072, line: 131, baseType: !835, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1071, file: !1072, line: 132, baseType: !835, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1071, file: !1072, line: 135, baseType: !30, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1071, file: !1072, line: 137, baseType: !1101, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1103, line: 14, size: 1088, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1104 = !{!1105, !1106, !1115, !1116, !1117, !1118, !1119, !1120}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1102, file: !1103, line: 15, baseType: !317, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1102, file: !1103, line: 17, baseType: !1107, size: 320, offset: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1108, line: 22, size: 320, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1107, file: !1108, line: 23, baseType: !461, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1107, file: !1108, line: 24, baseType: !380, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1107, file: !1108, line: 26, baseType: !107, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1107, file: !1108, line: 28, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1102, file: !1103, line: 19, baseType: !49, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1102, file: !1103, line: 20, baseType: !667, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1102, file: !1103, line: 23, baseType: !726, size: 128, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1102, file: !1103, line: 24, baseType: !804, size: 32, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1102, file: !1103, line: 29, baseType: !667, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1102, file: !1103, line: 36, baseType: !1121, size: 320, offset: 768)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1122, line: 15, size: 320, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1122, line: 16, baseType: !461, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1121, file: !1122, line: 18, baseType: !32, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1121, file: !1122, line: 19, baseType: !32, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1121, file: !1122, line: 20, baseType: !32, size: 32, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1121, file: !1122, line: 21, baseType: !32, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1121, file: !1122, line: 22, baseType: !49, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !1122, line: 23, baseType: !49, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1071, file: !1072, line: 138, baseType: !773, size: 64, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1071, file: !1072, line: 139, baseType: !1041, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1071, file: !1072, line: 140, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1072, line: 25, size: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !1072, line: 26, baseType: !59, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1135, file: !1072, line: 27, baseType: !32, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1135, file: !1072, line: 28, baseType: !1140, offset: 64)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, elements: !1062)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1072, line: 142, baseType: !1142, size: 128, offset: 1344)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !1072, line: 142, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1142, file: !1072, line: 143, baseType: !32, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !1072, line: 144, baseType: !654, size: 128, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !647, file: !249, line: 1013, baseType: !1147, size: 256, offset: 960)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !249, line: 970, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1147, file: !249, line: 971, baseType: !49, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !249, line: 972, baseType: !18, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1147, file: !249, line: 973, baseType: !18, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1147, file: !249, line: 974, baseType: !18, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1147, file: !249, line: 975, baseType: !18, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1147, file: !249, line: 976, baseType: !51, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !647, file: !249, line: 1014, baseType: !1156, size: 128, offset: 1216)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1157, line: 8, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1158 = !{!1159, !4813}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1156, file: !1157, line: 9, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1162, line: 70, size: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1163 = !{!1164, !4810, !4811, !4812}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1161, file: !1162, line: 71, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1167, line: 82, size: 1536, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1168 = !{!1169, !1170, !1175, !1183, !1184, !1199, !4778, !4780, !4793, !4794, !4795, !4796, !4797, !4802, !4803, !4804}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1166, file: !1167, line: 84, baseType: !18, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1166, file: !1167, line: 85, baseType: !1171, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !488, line: 275, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !488, line: 275, size: 32, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1172, file: !488, line: 275, baseType: !492, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1166, file: !1167, line: 86, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1177, line: 38, size: 128, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1178 = !{!1179, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !1177, line: 39, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1176, file: !1177, line: 39, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1166, file: !1167, line: 87, baseType: !1165, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1166, file: !1167, line: 88, baseType: !1185, size: 128, offset: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1167, line: 49, size: 128, elements: !1186)
!1186 = !{!1187, !1196}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1167, line: 50, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1167, line: 50, size: 64, elements: !1189)
!1189 = !{!1190, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1167, line: 51, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !1167, line: 51, size: 64, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1191, file: !1167, line: 52, baseType: !311, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1191, file: !1167, line: 52, baseType: !311, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1188, file: !1167, line: 54, baseType: !369, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1185, file: !1167, line: 56, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1166, file: !1167, line: 89, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !249, line: 641, size: 4800, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1212, !1213, !1400, !4593, !4594, !4595, !4596, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4760, !4763, !4764, !4765, !4774, !4775, !4776, !4777}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1201, file: !249, line: 642, baseType: !34, size: 16)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1201, file: !249, line: 643, baseType: !36, size: 16, offset: 16)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1201, file: !249, line: 644, baseType: !804, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1201, file: !249, line: 645, baseType: !107, size: 128, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1201, file: !249, line: 646, baseType: !812, size: 32, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1201, file: !249, line: 647, baseType: !18, size: 32, offset: 224)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1201, file: !249, line: 650, baseType: !1210, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !249, line: 607, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1201, file: !249, line: 651, baseType: !1210, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1201, file: !249, line: 654, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !249, line: 1966, size: 2048, align: 512, elements: !1217)
!1217 = !{!1218, !1222, !1235, !1241, !1245, !1249, !1253, !1257, !1261, !1265, !1269, !1270, !1276, !1280, !1317, !1348, !1355, !1361, !1365, !1369, !1373, !1377, !1381, !1387, !1391}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1216, file: !249, line: 1967, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1165, !1200, !1165, !18}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1216, file: !249, line: 1968, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!27, !1165, !1200, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1228, line: 10, size: 128, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1229 = !{!1230, !1234}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1227, file: !1228, line: 11, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !30}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1227, file: !1228, line: 12, baseType: !30, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1216, file: !249, line: 1969, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!32, !1239, !1200, !32}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1086, line: 42, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1216, file: !249, line: 1970, baseType: !1242, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1210, !1200, !32, !831}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1216, file: !249, line: 1972, baseType: !1246, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!32, !1165, !919, !32}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1216, file: !249, line: 1974, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!32, !1239, !1200, !1165, !34, !831}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1216, file: !249, line: 1976, baseType: !1254, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!32, !1165, !1200, !1165}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1216, file: !249, line: 1977, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!32, !1200, !1165}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1216, file: !249, line: 1978, baseType: !1262, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!32, !1239, !1200, !1165, !27}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1216, file: !249, line: 1980, baseType: !1266, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!32, !1239, !1200, !1165, !34}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1216, file: !249, line: 1982, baseType: !1258, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1216, file: !249, line: 1983, baseType: !1271, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!32, !1239, !1200, !1165, !34, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !35, line: 21, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !35, line: 18, baseType: !311)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1216, file: !249, line: 1985, baseType: !1277, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!32, !1239, !1200, !1165, !1200, !1165, !18}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1216, file: !249, line: 1987, baseType: !1281, size: 64, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!32, !1239, !1165, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !249, line: 226, size: 640, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1299, !1308, !1309, !1314, !1315, !1316}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1285, file: !249, line: 227, baseType: !18, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1285, file: !249, line: 228, baseType: !34, size: 16, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !249, line: 241, baseType: !1290, size: 32, offset: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !249, line: 241, size: 32, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1290, file: !249, line: 242, baseType: !804, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1290, file: !249, line: 243, baseType: !1294, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1295, line: 16, baseType: !1296)
!1295 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 14, size: 32, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1296, file: !1295, line: 15, baseType: !809, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !249, line: 245, baseType: !1300, size: 32, offset: 96)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !249, line: 245, size: 32, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1300, file: !249, line: 246, baseType: !812, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1300, file: !249, line: 247, baseType: !1304, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1295, line: 20, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 18, size: 32, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1305, file: !1295, line: 19, baseType: !816, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1285, file: !249, line: 249, baseType: !51, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1285, file: !249, line: 250, baseType: !1310, size: 128, offset: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !868, line: 13, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1310, file: !868, line: 14, baseType: !867, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1310, file: !868, line: 15, baseType: !297, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1285, file: !249, line: 251, baseType: !1310, size: 128, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1285, file: !249, line: 252, baseType: !1310, size: 128, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1285, file: !249, line: 259, baseType: !646, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1216, file: !249, line: 1988, baseType: !1318, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!32, !1239, !1321, !1323, !311, !18}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1325, line: 22, size: 1280, elements: !1326)
!1325 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1324, file: !1325, line: 23, baseType: !311, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1324, file: !1325, line: 24, baseType: !34, size: 16, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1324, file: !1325, line: 25, baseType: !18, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1324, file: !1325, line: 26, baseType: !875, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1324, file: !1325, line: 27, baseType: !369, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1324, file: !1325, line: 28, baseType: !369, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1324, file: !1325, line: 41, baseType: !369, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1324, file: !1325, line: 42, baseType: !1274, size: 32, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1324, file: !1325, line: 43, baseType: !1274, size: 32, offset: 352)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1324, file: !1325, line: 44, baseType: !804, size: 32, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1324, file: !1325, line: 45, baseType: !812, size: 32, offset: 416)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1324, file: !1325, line: 46, baseType: !51, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1324, file: !1325, line: 47, baseType: !1310, size: 128, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1324, file: !1325, line: 48, baseType: !1310, size: 128, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1324, file: !1325, line: 49, baseType: !1310, size: 128, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1324, file: !1325, line: 50, baseType: !1310, size: 128, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1324, file: !1325, line: 51, baseType: !369, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1324, file: !1325, line: 52, baseType: !369, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1324, file: !1325, line: 53, baseType: !311, size: 32, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1324, file: !1325, line: 54, baseType: !311, size: 32, offset: 1184)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1324, file: !1325, line: 55, baseType: !369, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1216, file: !249, line: 1990, baseType: !1349, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !1165, !919, !45}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !35, line: 66, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !47, line: 73, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !47, line: 15, baseType: !297)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1216, file: !249, line: 1991, baseType: !1356, size: 64, offset: 1024)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!32, !1200, !1359, !369, !369}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !249, line: 55, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1216, file: !249, line: 1993, baseType: !1362, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!32, !1200, !32}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1216, file: !249, line: 1994, baseType: !1366, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!32, !1200, !1165, !646, !18, !34}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1216, file: !249, line: 1997, baseType: !1370, size: 64, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!32, !1239, !1200, !646, !34}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1216, file: !249, line: 1999, baseType: !1374, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1210, !1239, !1165, !32}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1216, file: !249, line: 2001, baseType: !1378, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!32, !1239, !1165, !1210, !32}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1216, file: !249, line: 2003, baseType: !1382, size: 64, offset: 1408)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!32, !1239, !1165, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !249, line: 76, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1216, file: !249, line: 2005, baseType: !1388, size: 64, offset: 1472)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!32, !1165, !1385}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1216, file: !249, line: 2006, baseType: !1392, size: 64, offset: 1536)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !1200}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !249, line: 3192, size: 192, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1396, file: !249, line: 3193, baseType: !751, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1396, file: !249, line: 3194, baseType: !311, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1201, file: !249, line: 655, baseType: !1401, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !249, line: 1190, size: 10752, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !4110, !4242, !4282, !4365, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4382, !4386, !4387, !4390, !4393, !4396, !4399, !4400, !4401, !4442, !4464, !4465, !4466, !4467, !4468, !4469, !4472, !4476, !4485, !4486, !4487, !4488, !4547, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1402, file: !249, line: 1191, baseType: !107, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1402, file: !249, line: 1192, baseType: !1274, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1402, file: !249, line: 1193, baseType: !97, size: 8, offset: 160)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1402, file: !249, line: 1194, baseType: !49, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1402, file: !249, line: 1195, baseType: !51, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1402, file: !249, line: 1196, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !249, line: 2366, size: 576, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1421, !1425, !1429, !1433, !4098, !4099, !4100, !4102, !4103, !4104, !4106, !4107, !4108, !4109}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !249, line: 2367, baseType: !27, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1411, file: !249, line: 2368, baseType: !32, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1411, file: !249, line: 2376, baseType: !1416, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!32, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1162, line: 21, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1411, file: !249, line: 2377, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !249, line: 75, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1411, file: !249, line: 2378, baseType: !1426, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1165, !1410, !32, !27, !30}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1411, file: !249, line: 2380, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1401}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1411, file: !249, line: 2381, baseType: !1434, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !126, line: 402, size: 9216, align: 512, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1443, !2304, !2330, !2331, !2332, !2333, !2337, !2340, !2341, !2342, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2410, !2414, !2434, !2454, !2455, !2456, !2457, !2466, !2489, !2490, !2493, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2507, !2508, !2607, !2615, !2616, !2617, !2619, !4076, !4077, !4086, !4087, !4088, !4089, !4091, !4092, !4093, !4094, !4095, !4096, !4097}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1435, file: !126, line: 403, baseType: !125, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1435, file: !126, line: 406, baseType: !107, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1435, file: !126, line: 409, baseType: !1440, size: 448, offset: 192)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 56)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1435, file: !126, line: 417, baseType: !1444, size: 768, offset: 640)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !126, line: 45, size: 768, elements: !1445)
!1445 = !{!1446, !2298, !2299, !2300, !2303}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1444, file: !126, line: 46, baseType: !1447, size: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1448, line: 64, size: 512, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1449 = !{!1450, !1451, !1452, !1454, !1498, !2145, !2288, !2293, !2294, !2295, !2296, !2297}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1447, file: !1448, line: 65, baseType: !27, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1447, file: !1448, line: 66, baseType: !107, size: 128, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1447, file: !1448, line: 67, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1447, file: !1448, line: 68, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1448, line: 168, size: 768, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1456, file: !1448, line: 169, baseType: !107, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1456, file: !1448, line: 170, baseType: !69, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1456, file: !1448, line: 171, baseType: !1447, size: 512, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1456, file: !1448, line: 172, baseType: !1462, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1448, line: 133, size: 192, elements: !1465)
!1465 = !{!1466, !1473, !1478}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1464, file: !1448, line: 134, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!32, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1464, file: !1448, line: 135, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!27, !1471}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1464, file: !1448, line: 136, baseType: !1479, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!32, !1471, !1483}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1448, line: 125, size: 20736, elements: !1485)
!1485 = !{!1486, !1488, !1492, !1493, !1497}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1484, file: !1448, line: 126, baseType: !1487, size: 192)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 192, elements: !710)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1484, file: !1448, line: 127, baseType: !1489, size: 4096, offset: 192)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 4096, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1484, file: !1448, line: 128, baseType: !32, size: 32, offset: 4288)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1484, file: !1448, line: 129, baseType: !1494, size: 16384, offset: 4320)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 2048)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1484, file: !1448, line: 130, baseType: !32, size: 32, offset: 20704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1447, file: !1448, line: 69, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1448, line: 116, size: 384, elements: !1502)
!1502 = !{!1503, !1507, !1526, !2106, !2137, !2141}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1501, file: !1448, line: 117, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1453}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1501, file: !1448, line: 118, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1511, line: 254, size: 128, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1512 = !{!1513, !1522}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1510, file: !1511, line: 255, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1352, !1453, !1517, !919}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1511, line: 30, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1518, file: !1511, line: 31, baseType: !27, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1518, file: !1511, line: 32, baseType: !34, size: 16, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1510, file: !1511, line: 256, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1352, !1453, !1517, !27, !45}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1501, file: !1448, line: 119, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1511, line: 84, size: 320, elements: !1531)
!1531 = !{!1532, !1533, !1537, !2102, !2104}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1530, file: !1511, line: 85, baseType: !27, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1530, file: !1511, line: 86, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!34, !1453, !1517, !32}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1530, file: !1511, line: 88, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!34, !1453, !1541, !32}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1511, line: 175, size: 512, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !2093, !2097, !2098}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1542, file: !1511, line: 176, baseType: !1518, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1542, file: !1511, line: 177, baseType: !45, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1542, file: !1511, line: 178, baseType: !30, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1542, file: !1511, line: 179, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !249, line: 472, size: 1536, align: 64, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !2085, !2086, !2087, !2090, !2091, !2092}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1552, file: !249, line: 473, baseType: !1200, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1552, file: !249, line: 474, baseType: !751, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1552, file: !249, line: 475, baseType: !851, size: 320, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1552, file: !249, line: 476, baseType: !756, size: 32, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1552, file: !249, line: 477, baseType: !59, size: 32, offset: 544)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1552, file: !249, line: 482, baseType: !501, size: 128, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1552, file: !249, line: 483, baseType: !49, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1552, file: !249, line: 484, baseType: !49, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1552, file: !249, line: 485, baseType: !1563, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !249, line: 404, size: 1280, elements: !1566)
!1566 = !{!1567, !1860, !1930, !1934, !1938, !1944, !1950, !1954, !1959, !1963, !1967, !1971, !2049, !2053, !2057, !2061, !2066, !2070, !2077, !2081}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1565, file: !249, line: 405, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!32, !1571, !1858}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !141, line: 74, size: 512, align: 128, elements: !1573)
!1573 = !{!1574, !1575, !1852, !1857}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !141, line: 75, baseType: !49, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !141, line: 83, baseType: !1576, size: 320, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !141, line: 83, size: 320, elements: !1577)
!1577 = !{!1578, !1599, !1613, !1617, !1851}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !141, line: 84, baseType: !1579, size: 320)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !141, line: 84, size: 320, elements: !1580)
!1580 = !{!1581, !1592, !1593, !1598}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !141, line: 90, baseType: !1582, size: 128)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !141, line: 90, size: 128, elements: !1583)
!1583 = !{!1584, !1585, !1590, !1591}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1582, file: !141, line: 91, baseType: !107, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !141, line: 94, baseType: !1586, size: 128)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !141, line: 94, size: 128, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1586, file: !141, line: 96, baseType: !30, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1586, file: !141, line: 98, baseType: !18, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1582, file: !141, line: 102, baseType: !107, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1582, file: !141, line: 103, baseType: !107, size: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1579, file: !141, line: 106, baseType: !1551, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !141, line: 107, baseType: !1594, size: 64, offset: 192)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !141, line: 107, size: 64, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1594, file: !141, line: 108, baseType: !49, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1594, file: !141, line: 109, baseType: !49, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1579, file: !141, line: 117, baseType: !49, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !141, line: 119, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !141, line: 119, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1606, !1607, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1600, file: !141, line: 124, baseType: !49, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1600, file: !141, line: 125, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !141, line: 125, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1600, file: !141, line: 126, baseType: !49, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1600, file: !141, line: 127, baseType: !49, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !141, line: 128, baseType: !1609, size: 64, offset: 256)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !141, line: 128, size: 64, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1609, file: !141, line: 133, baseType: !49, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1609, file: !141, line: 138, baseType: !667, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !141, line: 141, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !141, line: 141, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1614, file: !141, line: 142, baseType: !49, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !141, line: 144, baseType: !1618, size: 128)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !141, line: 144, size: 128, elements: !1619)
!1619 = !{!1620, !1850}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1618, file: !141, line: 146, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !133, line: 126, size: 1216, elements: !1623)
!1623 = !{!1624, !1634, !1655, !1656, !1657, !1658, !1659, !1832, !1833, !1834}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1622, file: !133, line: 127, baseType: !1625, size: 384)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !133, line: 21, size: 384, elements: !1626)
!1626 = !{!1627, !1628, !1630, !1631, !1632, !1633}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1625, file: !133, line: 22, baseType: !49, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1625, file: !133, line: 23, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1625, file: !133, line: 24, baseType: !1629, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1625, file: !133, line: 25, baseType: !49, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1625, file: !133, line: 26, baseType: !49, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1625, file: !133, line: 27, baseType: !49, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1622, file: !133, line: 128, baseType: !1635, size: 128, offset: 384)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1636, line: 105, size: 128, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1635, file: !1636, line: 110, baseType: !49, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1635, file: !1636, line: 118, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1636, line: 95, size: 448, elements: !1642)
!1642 = !{!1643, !1644, !1650, !1651, !1652, !1653, !1654}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1641, file: !1636, line: 96, baseType: !667, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1641, file: !1636, line: 97, baseType: !1645, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1636, line: 60, baseType: !1647)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1641, file: !1636, line: 98, baseType: !1645, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1641, file: !1636, line: 99, baseType: !831, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1641, file: !1636, line: 100, baseType: !831, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1641, file: !1636, line: 101, baseType: !654, size: 128, align: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1641, file: !1636, line: 102, baseType: !1649, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1622, file: !133, line: 129, baseType: !997, size: 256, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1622, file: !133, line: 130, baseType: !132, size: 32, offset: 768)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !133, line: 131, baseType: !18, size: 32, offset: 800)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1622, file: !133, line: 132, baseType: !49, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1622, file: !133, line: 133, baseType: !1660, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !133, line: 77, size: 192, elements: !1663)
!1663 = !{!1664, !1668, !1828}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1662, file: !133, line: 83, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1571}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1662, file: !133, line: 89, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !141, line: 1184, baseType: !18)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1675, line: 512, size: 896, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1676 = !{!1677, !1795, !1796, !1803, !1810, !1820, !1821, !1822, !1824, !1826}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1675, line: 513, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1675, line: 513, size: 320, elements: !1679)
!1679 = !{!1680, !1791, !1792, !1793, !1794}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1678, file: !1675, line: 514, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !141, line: 625, size: 1344, elements: !1683)
!1683 = !{!1684, !1693, !1694, !1702, !1709, !1710, !1715, !1716, !1721, !1722, !1725, !1784, !1785, !1786, !1787, !1788, !1789}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !141, line: 628, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !141, line: 628, size: 128, elements: !1686)
!1686 = !{!1687, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !141, line: 629, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !141, line: 629, size: 128, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1688, file: !141, line: 631, baseType: !49, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1688, file: !141, line: 632, baseType: !49, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1685, file: !141, line: 635, baseType: !654, size: 128, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1682, file: !141, line: 639, baseType: !618, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1682, file: !141, line: 640, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1696, line: 297, baseType: !1697)
!1696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1696, line: 297, size: 64, elements: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1697, file: !1696, line: 297, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1701, line: 19, baseType: !49)
!1701 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !141, line: 646, baseType: !1703, size: 64, offset: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !141, line: 646, size: 64, elements: !1704)
!1704 = !{!1705, !1708}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1703, file: !141, line: 647, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !141, line: 542, baseType: !49)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1703, file: !141, line: 648, baseType: !1707, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1682, file: !141, line: 666, baseType: !32, size: 32, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1682, file: !141, line: 667, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !141, line: 579, size: 320, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1712, file: !141, line: 580, baseType: !851, size: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1682, file: !141, line: 670, baseType: !831, size: 8, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1682, file: !141, line: 681, baseType: !1717, size: 256, offset: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !141, line: 678, size: 256, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1717, file: !141, line: 679, baseType: !361, size: 192, align: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1717, file: !141, line: 680, baseType: !49, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1682, file: !141, line: 689, baseType: !107, size: 128, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1682, file: !141, line: 691, baseType: !1723, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !141, line: 691, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1682, file: !141, line: 694, baseType: !1726, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1675, line: 563, size: 1024, elements: !1729)
!1729 = !{!1730, !1734, !1735, !1739, !1743, !1747, !1748, !1752, !1756, !1760, !1761, !1762, !1766, !1770, !1776, !1780}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1728, file: !1675, line: 564, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1681}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1728, file: !1675, line: 569, baseType: !1731, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1728, file: !1675, line: 571, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!32, !1681, !49}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1728, file: !1675, line: 572, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!32, !1681}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1728, file: !1675, line: 578, baseType: !1744, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!32, !1681, !49, !49, !49}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1728, file: !1675, line: 580, baseType: !1669, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1728, file: !1675, line: 581, baseType: !1749, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1672, !1673, !18}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1728, file: !1675, line: 582, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1672, !1673, !49, !49}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1728, file: !1675, line: 584, baseType: !1757, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!49, !1681}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1728, file: !1675, line: 588, baseType: !1669, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1728, file: !1675, line: 591, baseType: !1669, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1728, file: !1675, line: 597, baseType: !1763, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!32, !1681, !49, !30, !32, !32}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1728, file: !1675, line: 603, baseType: !1767, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!27, !1681}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1728, file: !1675, line: 613, baseType: !1771, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!32, !1681, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !141, line: 717, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1728, file: !1675, line: 625, baseType: !1777, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1774, !1681, !49}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1728, file: !1675, line: 633, baseType: !1781, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1571, !1681, !49}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1682, file: !141, line: 697, baseType: !49, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1682, file: !141, line: 699, baseType: !646, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1682, file: !141, line: 700, baseType: !30, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1682, file: !141, line: 711, baseType: !667, size: 64, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1682, file: !141, line: 717, baseType: !1774, size: 64, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1682, file: !141, line: 722, baseType: !1790, offset: 1344)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !141, line: 570, elements: !639)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1678, file: !1675, line: 515, baseType: !756, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1678, file: !1675, line: 516, baseType: !49, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1678, file: !1675, line: 517, baseType: !49, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1678, file: !1675, line: 518, baseType: !49, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !1675, line: 520, baseType: !140, size: 32, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1674, file: !1675, line: 522, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1701, line: 22, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1701, line: 22, size: 64, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1799, file: !1701, line: 22, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1701, line: 15, baseType: !49)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1674, file: !1675, line: 524, baseType: !1804, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1696, line: 372, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 372, size: 64, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1806, file: !1696, line: 372, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1701, line: 16, baseType: !49)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1675, line: 527, baseType: !1811, size: 64, offset: 512)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !1675, line: 527, size: 64, elements: !1812)
!1812 = !{!1813, !1819}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1811, file: !1675, line: 528, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1701, line: 21, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1701, line: 21, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1815, file: !1701, line: 21, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1701, line: 14, baseType: !49)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1811, file: !1675, line: 529, baseType: !1798, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1674, file: !1675, line: 534, baseType: !1571, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1674, file: !1675, line: 535, baseType: !1571, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1674, file: !1675, line: 541, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1674, file: !1675, line: 545, baseType: !1825, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1674, file: !1675, line: 549, baseType: !1827, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1696, line: 520, baseType: !1571)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1662, file: !133, line: 100, baseType: !1829, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!32, !1621, !49, !49, !32}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1622, file: !133, line: 134, baseType: !30, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1622, file: !133, line: 135, baseType: !32, size: 32, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !133, line: 136, baseType: !1835, size: 128, offset: 1088)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !133, line: 136, size: 128, elements: !1836)
!1836 = !{!1837, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1835, file: !133, line: 137, baseType: !1838, size: 128)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1839, line: 6, size: 128, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1838, file: !1839, line: 7, baseType: !369, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1838, file: !1839, line: 8, baseType: !369, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !133, line: 138, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1835, file: !133, line: 138, elements: !1845)
!1845 = !{!1846, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1844, file: !133, line: 138, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !133, line: 138, elements: !639)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1844, file: !133, line: 138, baseType: !1849)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, elements: !1062)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1618, file: !141, line: 147, baseType: !30, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1576, file: !141, line: 161, baseType: !654, size: 128, align: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !141, line: 164, baseType: !1853, size: 32, offset: 384)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !141, line: 164, size: 32, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1853, file: !141, line: 169, baseType: !59, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1853, file: !141, line: 177, baseType: !18, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1572, file: !141, line: 181, baseType: !59, size: 32, offset: 416)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !249, line: 309, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1565, file: !249, line: 406, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!32, !646, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !141, line: 293, size: 1536, elements: !1866)
!1866 = !{!1867, !1897, !1911}
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !141, line: 295, baseType: !1868, size: 512)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !141, line: 295, size: 512, elements: !1869)
!1869 = !{!1870, !1896}
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !141, line: 296, baseType: !1871, size: 448)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !141, line: 296, size: 448, elements: !1872)
!1872 = !{!1873, !1874, !1883, !1884, !1885, !1894, !1895}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1871, file: !141, line: 298, baseType: !49, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !141, line: 299, baseType: !1875, size: 128, offset: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !141, line: 299, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1875, file: !141, line: 300, baseType: !107, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !141, line: 302, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !141, line: 302, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1879, file: !141, line: 303, baseType: !30, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1879, file: !141, line: 305, baseType: !18, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1871, file: !141, line: 310, baseType: !1551, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1871, file: !141, line: 311, baseType: !49, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !141, line: 312, baseType: !1886, size: 64, offset: 320)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !141, line: 312, size: 64, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1886, file: !141, line: 313, baseType: !30, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1886, file: !141, line: 314, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !141, line: 257, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 255, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1891, file: !141, line: 256, baseType: !49, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1871, file: !141, line: 316, baseType: !59, size: 32, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1871, file: !141, line: 317, baseType: !59, size: 32, offset: 416)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1868, file: !141, line: 323, baseType: !1572, size: 512, align: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !141, line: 325, baseType: !1898, size: 512, offset: 512)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !141, line: 325, size: 512, elements: !1899)
!1899 = !{!1900, !1910}
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !141, line: 326, baseType: !1901, size: 320)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1898, file: !141, line: 326, size: 320, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1901, file: !141, line: 327, baseType: !49, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1901, file: !141, line: 328, baseType: !49, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1901, file: !141, line: 329, baseType: !49, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1901, file: !141, line: 331, baseType: !59, size: 32, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1901, file: !141, line: 332, baseType: !59, size: 32, offset: 224)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1901, file: !141, line: 333, baseType: !59, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1901, file: !141, line: 335, baseType: !18, size: 32, offset: 288)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1898, file: !141, line: 339, baseType: !1572, size: 512, align: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !141, line: 341, baseType: !1912, size: 512, offset: 1024)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !141, line: 341, size: 512, elements: !1913)
!1913 = !{!1914, !1923, !1929}
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !141, line: 342, baseType: !1915, size: 384)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !141, line: 342, size: 384, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1915, file: !141, line: 343, baseType: !49, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1915, file: !141, line: 344, baseType: !49, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1915, file: !141, line: 346, baseType: !30, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1915, file: !141, line: 347, baseType: !30, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1915, file: !141, line: 348, baseType: !30, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1915, file: !141, line: 349, baseType: !30, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !141, line: 352, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !141, line: 352, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1924, file: !141, line: 353, baseType: !49, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1924, file: !141, line: 354, baseType: !49, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1924, file: !141, line: 356, baseType: !107, size: 128, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1912, file: !141, line: 359, baseType: !1572, size: 512, align: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1565, file: !249, line: 409, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!32, !1551, !1858}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1565, file: !249, line: 412, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!831, !1551, !1864}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1565, file: !249, line: 414, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !249, line: 310, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1565, file: !249, line: 416, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!32, !646, !1551, !51, !18, !1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1565, file: !249, line: 419, baseType: !1951, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!32, !646, !1551, !51, !18, !18, !1571, !30}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1565, file: !249, line: 424, baseType: !1955, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1958, !1551, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !35, line: 131, baseType: !369)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1565, file: !249, line: 425, baseType: !1960, size: 64, offset: 512)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1864, !45, !45}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1565, file: !249, line: 426, baseType: !1964, size: 64, offset: 576)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!831, !1864, !756}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1565, file: !249, line: 427, baseType: !1968, size: 64, offset: 640)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1864}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1565, file: !249, line: 428, baseType: !1972, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1352, !1975, !1997}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !249, line: 373, size: 384, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1984, !1985, !1986, !1987}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1976, file: !249, line: 374, baseType: !646, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1976, file: !249, line: 375, baseType: !51, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1976, file: !249, line: 376, baseType: !1981, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1975, !297}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1976, file: !249, line: 377, baseType: !30, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1976, file: !249, line: 378, baseType: !32, size: 32, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1976, file: !249, line: 379, baseType: !103, size: 16, offset: 288)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !249, line: 380, baseType: !1988, size: 64, offset: 320)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !249, line: 380, size: 64, elements: !1989)
!1989 = !{!1990, !1993}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1988, file: !249, line: 386, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !249, line: 386, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1988, file: !249, line: 395, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1352, !30}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1999, line: 41, size: 320, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2011, !2044}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1998, file: !1999, line: 42, baseType: !93, size: 8)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1998, file: !1999, line: 43, baseType: !831, size: 8, offset: 8)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1998, file: !1999, line: 44, baseType: !831, size: 8, offset: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1998, file: !1999, line: 45, baseType: !831, size: 8, offset: 24)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1998, file: !1999, line: 46, baseType: !831, size: 8, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1999, line: 47, baseType: !2007, size: 64, offset: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1999, line: 47, size: 64, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2007, file: !1999, line: 48, baseType: !45, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2007, file: !1999, line: 49, baseType: !32, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1999, line: 61, baseType: !2012, size: 128, offset: 128)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1999, line: 61, size: 128, elements: !2013)
!2013 = !{!2014, !2020}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2012, file: !1999, line: 67, baseType: !2015, size: 128)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2016, line: 17, size: 128, elements: !2017)
!2016 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2015, file: !2016, line: 19, baseType: !30, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2015, file: !2016, line: 20, baseType: !46, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !1999, line: 68, baseType: !2021, size: 128)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !1999, line: 68, size: 128, elements: !2022)
!2022 = !{!2023, !2043}
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !1999, line: 69, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !1999, line: 69, size: 64, elements: !2025)
!2025 = !{!2026, !2029, !2036, !2040, !2042}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2024, file: !1999, line: 71, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2024, file: !1999, line: 72, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1999, line: 17, size: 128, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2032, file: !1999, line: 18, baseType: !30, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2032, file: !1999, line: 19, baseType: !45, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2024, file: !1999, line: 73, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1999, line: 73, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2024, file: !1999, line: 74, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2024, file: !1999, line: 75, baseType: !30, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2021, file: !1999, line: 77, baseType: !45, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1999, line: 80, baseType: !2045, size: 64, offset: 256)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1999, line: 80, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2045, file: !1999, line: 81, baseType: !49, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2045, file: !1999, line: 82, baseType: !51, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1565, file: !249, line: 433, baseType: !2050, size: 64, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!32, !1551, !1864, !1864, !156}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1565, file: !249, line: 435, baseType: !2054, size: 64, offset: 832)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!32, !1864}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1565, file: !249, line: 436, baseType: !2058, size: 64, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!831, !1864, !45, !45}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1565, file: !249, line: 438, baseType: !2062, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !1864, !2065, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1565, file: !249, line: 439, baseType: !2067, size: 64, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!32, !1551, !1571}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1565, file: !249, line: 442, baseType: !2071, size: 64, offset: 1088)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!32, !2074, !646, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !249, line: 66, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1565, file: !249, line: 444, baseType: !2078, size: 64, offset: 1152)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !646}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1565, file: !249, line: 445, baseType: !2082, size: 64, offset: 1216)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!32, !1975, !1997}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !249, line: 486, baseType: !49, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1552, file: !249, line: 487, baseType: !851, size: 320, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1552, file: !249, line: 488, baseType: !2088, size: 32, offset: 1280)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2089, line: 8, baseType: !311)
!2089 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1552, file: !249, line: 489, baseType: !69, size: 32, offset: 1312)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1552, file: !249, line: 490, baseType: !107, size: 128, offset: 1344)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1552, file: !249, line: 491, baseType: !30, size: 64, offset: 1472)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1542, file: !1511, line: 180, baseType: !2094, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!1352, !646, !1453, !1541, !919, !51, !45}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1542, file: !1511, line: 182, baseType: !2094, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1542, file: !1511, line: 184, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!32, !646, !1453, !1541, !1681}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1530, file: !1511, line: 90, baseType: !2103, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1530, file: !1511, line: 91, baseType: !2105, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1501, file: !1448, line: 120, baseType: !2107, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!2110, !1471}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !164, line: 39, size: 384, elements: !2113)
!2113 = !{!2114, !2115, !2119, !2123, !2132, !2136}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2112, file: !164, line: 40, baseType: !163, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2112, file: !164, line: 41, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!831}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2112, file: !164, line: 42, baseType: !2120, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!30}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2112, file: !164, line: 43, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2131, line: 17, flags: DIFlagFwdDecl)
!2131 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2112, file: !164, line: 44, baseType: !2133, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2127}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2112, file: !164, line: 45, baseType: !1231, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1501, file: !1448, line: 121, baseType: !2138, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2127, !1471}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1501, file: !1448, line: 122, baseType: !2142, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !1471, !1022, !1023}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1447, file: !1448, line: 70, baseType: !2146, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2148, line: 190, size: 1152, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2280, !2281, !2282, !2283, !2284, !2287}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2147, file: !2148, line: 191, baseType: !59, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2147, file: !2148, line: 192, baseType: !59, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2147, file: !2148, line: 202, baseType: !2146, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2147, file: !2148, line: 203, baseType: !27, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2147, file: !2148, line: 205, baseType: !361, size: 192, align: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2147, file: !2148, line: 207, baseType: !2127, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2147, file: !2148, line: 208, baseType: !18, size: 32, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2148, line: 209, baseType: !2158, size: 256, offset: 512)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2148, line: 209, size: 256, elements: !2159)
!2159 = !{!2160, !2169, !2173}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2158, file: !2148, line: 210, baseType: !2161, size: 256)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2148, line: 153, size: 256, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2168}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2161, file: !2148, line: 154, baseType: !49, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2161, file: !2148, line: 156, baseType: !504, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2161, file: !2148, line: 162, baseType: !2166, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2148, line: 162, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2161, file: !2148, line: 167, baseType: !49, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2158, file: !2148, line: 211, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2148, line: 170, size: 64, elements: !2171)
!2171 = !{!2172}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2170, file: !2148, line: 171, baseType: !2146, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2158, file: !2148, line: 212, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2148, line: 174, size: 256, elements: !2175)
!2175 = !{!2176, !2275, !2278, !2279}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2174, file: !2148, line: 175, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2148, line: 271, size: 768, elements: !2180)
!2180 = !{!2181, !2239, !2243, !2244, !2245, !2246, !2247, !2251, !2252, !2253, !2254, !2271}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2179, file: !2148, line: 276, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!32, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2148, line: 251, size: 1216, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2186, file: !2148, line: 253, baseType: !2146, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2186, file: !2148, line: 254, baseType: !646, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2186, file: !2148, line: 255, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2193, line: 17, size: 960, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2224, !2225, !2228}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2192, file: !2193, line: 18, baseType: !919, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2192, file: !2193, line: 19, baseType: !45, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2192, file: !2193, line: 20, baseType: !45, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2192, file: !2193, line: 21, baseType: !45, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2192, file: !2193, line: 22, baseType: !45, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2192, file: !2193, line: 23, baseType: !51, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2192, file: !2193, line: 24, baseType: !51, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2192, file: !2193, line: 25, baseType: !674, size: 256, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2192, file: !2193, line: 26, baseType: !2204, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2193, line: 32, size: 256, elements: !2207)
!2207 = !{!2208, !2212, !2216, !2220}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2206, file: !2193, line: 33, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!30, !2191, !50}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2206, file: !2193, line: 34, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2191, !30}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2206, file: !2193, line: 35, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!30, !2191, !30, !50}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2206, file: !2193, line: 36, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!32, !2191, !30}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2192, file: !2193, line: 27, baseType: !32, size: 32, offset: 768)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2192, file: !2193, line: 28, baseType: !2226, size: 64, offset: 832)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2192, file: !2193, line: 29, baseType: !30, size: 64, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2186, file: !2148, line: 256, baseType: !30, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2186, file: !2148, line: 259, baseType: !674, size: 256, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2186, file: !2148, line: 260, baseType: !674, size: 256, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2186, file: !2148, line: 261, baseType: !32, size: 32, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2186, file: !2148, line: 262, baseType: !107, size: 128, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2186, file: !2148, line: 263, baseType: !919, size: 64, offset: 960)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2186, file: !2148, line: 265, baseType: !45, size: 64, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2186, file: !2148, line: 266, baseType: !831, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2186, file: !2148, line: 267, baseType: !831, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2186, file: !2148, line: 268, baseType: !1726, size: 64, offset: 1152)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2179, file: !2148, line: 277, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2185}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2179, file: !2148, line: 290, baseType: !2221, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2179, file: !2148, line: 292, baseType: !2209, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2179, file: !2148, line: 293, baseType: !2217, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2179, file: !2148, line: 294, baseType: !2213, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2179, file: !2148, line: 296, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!1352, !2185, !919, !45, !51}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2179, file: !2148, line: 306, baseType: !45, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2179, file: !2148, line: 313, baseType: !831, size: 8, offset: 512)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2179, file: !2148, line: 314, baseType: !2248, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2179, file: !2148, line: 317, baseType: !2255, size: 64, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !2185, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2259, line: 59, baseType: !18)
!2259 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2262, line: 37, size: 128, elements: !2263)
!2262 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2263 = !{!2264, !2270}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2261, file: !2262, line: 38, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2262, line: 31, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !646, !2269, !2260}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2261, file: !2262, line: 39, baseType: !2258, size: 32, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2179, file: !2148, line: 320, baseType: !2272, size: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!32, !2185, !1681}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2174, file: !2148, line: 176, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2148, line: 35, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2174, file: !2148, line: 177, baseType: !51, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2174, file: !2148, line: 178, baseType: !2146, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2147, file: !2148, line: 215, baseType: !30, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2147, file: !2148, line: 221, baseType: !369, size: 64, offset: 832)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 223, baseType: !36, size: 16, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2147, file: !2148, line: 224, baseType: !34, size: 16, offset: 912)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2147, file: !2148, line: 225, baseType: !2285, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2148, line: 36, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2147, file: !2148, line: 227, baseType: !654, size: 128, align: 64, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1447, file: !1448, line: 71, baseType: !2289, size: 32, offset: 448)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2290, line: 19, size: 32, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2291 = !{!2292}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2289, file: !2290, line: 20, baseType: !317, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1447, file: !1448, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1447, file: !1448, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1447, file: !1448, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1447, file: !1448, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1447, file: !1448, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1444, file: !126, line: 47, baseType: !1434, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1444, file: !126, line: 48, baseType: !1453, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1444, file: !126, line: 49, baseType: !2301, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !126, line: 49, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1444, file: !126, line: 50, baseType: !996, size: 64, offset: 704)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1435, file: !126, line: 418, baseType: !2305, size: 64, offset: 1408)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !126, line: 53, size: 448, elements: !2307)
!2307 = !{!2308, !2309, !2314, !2318, !2322, !2326}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2306, file: !126, line: 54, baseType: !1518, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2306, file: !126, line: 55, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!1352, !2305, !2313, !919}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2306, file: !126, line: 57, baseType: !2315, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1352, !2305, !2313, !27, !45}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2306, file: !126, line: 59, baseType: !2319, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !1434, !27}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2306, file: !126, line: 60, baseType: !2323, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!32, !1434}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2306, file: !126, line: 61, baseType: !2327, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !1434}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1435, file: !126, line: 419, baseType: !27, size: 64, offset: 1472)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1435, file: !126, line: 420, baseType: !27, size: 64, offset: 1536)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1435, file: !126, line: 421, baseType: !1453, size: 64, offset: 1600)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1435, file: !126, line: 424, baseType: !2334, size: 64, offset: 1664)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2336)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !126, line: 424, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1435, file: !126, line: 425, baseType: !2338, size: 64, offset: 1728)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1435, file: !126, line: 426, baseType: !18, size: 32, offset: 1792)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1435, file: !126, line: 435, baseType: !674, size: 256, offset: 1856)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1435, file: !126, line: 437, baseType: !2343, size: 64, offset: 2112)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2345, line: 69, size: 320, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2346 = !{!2347, !2348, !2349, !2366, !2368, !2372, !2373}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !2345, line: 70, baseType: !27, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2344, file: !2345, line: 71, baseType: !1434, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2344, file: !2345, line: 72, baseType: !2350, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2345, line: 47, size: 256, elements: !2353)
!2353 = !{!2354, !2355, !2361, !2365}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2352, file: !2345, line: 49, baseType: !18, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2352, file: !2345, line: 51, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!32, !27, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2352, file: !2345, line: 53, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!32, !919, !2359}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2352, file: !2345, line: 55, baseType: !1231, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2344, file: !2345, line: 73, baseType: !2367, size: 16, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2344, file: !2345, line: 74, baseType: !2369, size: 8, offset: 208)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !94, line: 16, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !96, line: 20, baseType: !2371)
!2371 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !2345, line: 75, baseType: !93, size: 8, offset: 216)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !2345, line: 76, baseType: !2374, size: 64, offset: 256)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2344, file: !2345, line: 76, size: 64, elements: !2375)
!2375 = !{!2376, !2377, !2384}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2374, file: !2345, line: 77, baseType: !30, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2374, file: !2345, line: 78, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2345, line: 86, size: 128, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2380, file: !2345, line: 87, baseType: !18, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2380, file: !2345, line: 88, baseType: !919, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2374, file: !2345, line: 79, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2345, line: 92, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2393, !2394}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2387, file: !2345, line: 94, baseType: !18, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2387, file: !2345, line: 95, baseType: !18, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2387, file: !2345, line: 96, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2387, file: !2345, line: 97, baseType: !2350, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2387, file: !2345, line: 98, baseType: !30, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1435, file: !126, line: 438, baseType: !18, size: 32, offset: 2176)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1435, file: !126, line: 441, baseType: !18, size: 32, offset: 2208)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1435, file: !126, line: 442, baseType: !2334, size: 64, offset: 2240)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1435, file: !126, line: 443, baseType: !2338, size: 64, offset: 2304)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1435, file: !126, line: 444, baseType: !831, size: 8, offset: 2368)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1435, file: !126, line: 451, baseType: !831, size: 8, offset: 2376)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1435, file: !126, line: 454, baseType: !18, size: 32, offset: 2400)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1435, file: !126, line: 455, baseType: !2403, size: 64, offset: 2432)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2405, line: 23, size: 96, elements: !2406)
!2405 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2404, file: !2405, line: 24, baseType: !32, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2404, file: !2405, line: 24, baseType: !32, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2404, file: !2405, line: 24, baseType: !32, size: 32, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1435, file: !126, line: 458, baseType: !2411, size: 64, offset: 2496)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!32}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1435, file: !126, line: 460, baseType: !2415, size: 4032, align: 512, offset: 2560)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, size: 4032, elements: !2432)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !126, line: 362, size: 576, elements: !2417)
!2417 = !{!2418, !2419, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2416, file: !126, line: 363, baseType: !30, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2416, file: !126, line: 364, baseType: !18, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2416, file: !126, line: 367, baseType: !2421, size: 448, offset: 128)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !126, line: 319, size: 448, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2421, file: !126, line: 320, baseType: !1434, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2421, file: !126, line: 321, baseType: !2425, size: 384, offset: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2426, line: 40, size: 384, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2427 = !{!2428}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2425, file: !2426, line: 41, baseType: !2429, size: 384, align: 64)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 384, align: 64, elements: !2430)
!2430 = !{!2431}
!2431 = !DISubrange(count: 2)
!2432 = !{!2433}
!2433 = !DISubrange(count: 7)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1435, file: !126, line: 463, baseType: !2435, size: 192, offset: 6592)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2436, line: 8, size: 192, elements: !2437)
!2436 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2437 = !{!2438, !2439, !2441}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2435, file: !2436, line: 10, baseType: !18, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2435, file: !2436, line: 11, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2435, file: !2436, line: 12, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2444, line: 59, size: 48, elements: !2445)
!2444 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2445 = !{!2446, !2449, !2450, !2451, !2452, !2453}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2443, file: !2444, line: 60, baseType: !2447, size: 16)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !879)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2443, file: !2444, line: 61, baseType: !2447, size: 16, offset: 16)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2443, file: !2444, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2443, file: !2444, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !2444, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2443, file: !2444, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1435, file: !126, line: 465, baseType: !49, size: 64, offset: 6784)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1435, file: !126, line: 469, baseType: !18, size: 32, offset: 6848)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1435, file: !126, line: 470, baseType: !107, size: 128, offset: 6912)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1435, file: !126, line: 471, baseType: !2458, size: 64, offset: 7040)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2460, line: 33, size: 96, elements: !2461)
!2460 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2461 = !{!2462, !2463, !2464, !2465}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2459, file: !2460, line: 37, baseType: !32, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2459, file: !2460, line: 43, baseType: !32, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2459, file: !2460, line: 45, baseType: !36, size: 16, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2459, file: !2460, line: 47, baseType: !36, size: 16, offset: 80)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1435, file: !126, line: 476, baseType: !2467, size: 64, offset: 7104)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !126, line: 378, size: 256, elements: !2469)
!2469 = !{!2470, !2486, !2487, !2488}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2468, file: !126, line: 379, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2473, line: 204, baseType: !2474)
!2473 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2473, line: 197, size: 192, elements: !2475)
!2475 = !{!2476, !2478, !2479, !2480, !2482, !2484}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2474, file: !2473, line: 198, baseType: !2477, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2473, line: 21, baseType: !312)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2474, file: !2473, line: 199, baseType: !97, size: 8, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2474, file: !2473, line: 200, baseType: !97, size: 8, offset: 40)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2474, file: !2473, line: 201, baseType: !2481, size: 16, offset: 48)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2473, line: 17, baseType: !104)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2474, file: !2473, line: 202, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2473, line: 16, baseType: !370)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2474, file: !2473, line: 203, baseType: !2485, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2473, line: 22, baseType: !370)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2468, file: !126, line: 380, baseType: !18, size: 32, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2468, file: !126, line: 381, baseType: !919, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2468, file: !126, line: 382, baseType: !919, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1435, file: !126, line: 477, baseType: !2468, size: 256, offset: 7168)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1435, file: !126, line: 480, baseType: !2491, size: 64, offset: 7424)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !126, line: 480, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1435, file: !126, line: 483, baseType: !2494, size: 64, offset: 7488)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !126, line: 483, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1435, file: !126, line: 488, baseType: !919, size: 64, offset: 7552)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1435, file: !126, line: 492, baseType: !30, size: 64, offset: 7616)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1435, file: !126, line: 493, baseType: !18, size: 32, offset: 7680)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1435, file: !126, line: 495, baseType: !30, size: 64, offset: 7744)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1435, file: !126, line: 496, baseType: !18, size: 32, offset: 7808)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1435, file: !126, line: 499, baseType: !18, size: 32, offset: 7840)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1435, file: !126, line: 500, baseType: !2503, size: 64, offset: 7872)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2505, line: 45, baseType: !2506)
!2505 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1435, file: !126, line: 503, baseType: !18, size: 32, offset: 7936)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1435, file: !126, line: 504, baseType: !2509, size: 64, offset: 8000)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2512, line: 96, size: 192, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2513 = !{!2514, !2515, !2568, !2571}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2511, file: !2512, line: 97, baseType: !18, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2511, file: !2512, line: 98, baseType: !2516, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2512, line: 24, size: 3072, elements: !2518)
!2518 = !{!2519, !2521, !2522, !2523, !2524, !2537, !2538, !2539, !2540, !2552, !2553, !2554, !2565, !2566, !2567}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2517, file: !2512, line: 26, baseType: !2520, size: 128)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 128, elements: !2430)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2517, file: !2512, line: 27, baseType: !2520, size: 128, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2517, file: !2512, line: 28, baseType: !32, size: 32, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2517, file: !2512, line: 31, baseType: !69, size: 32, align: 512, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2517, file: !2512, line: 32, baseType: !2525, size: 960, offset: 576)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2526, line: 206, size: 960, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2527 = !{!2528, !2529, !2532, !2534, !2535, !2536}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2525, file: !2526, line: 207, baseType: !657, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2525, file: !2526, line: 208, baseType: !2530, size: 256, offset: 64)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2531, size: 256, elements: !731)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2525, file: !2526, line: 209, baseType: !2533, size: 256, offset: 320)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, elements: !731)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2525, file: !2526, line: 213, baseType: !297, size: 64, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2525, file: !2526, line: 215, baseType: !1057, size: 256, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2525, file: !2526, line: 216, baseType: !93, size: 8, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2517, file: !2512, line: 33, baseType: !49, size: 64, offset: 1536)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2517, file: !2512, line: 34, baseType: !49, size: 64, offset: 1600)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2517, file: !2512, line: 35, baseType: !831, size: 8, offset: 1664)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2517, file: !2512, line: 36, baseType: !2541, size: 320, offset: 1728)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2542, line: 11, size: 320, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2543 = !{!2544, !2545, !2546, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2541, file: !2542, line: 16, baseType: !726, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2541, file: !2542, line: 17, baseType: !49, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2541, file: !2542, line: 18, baseType: !2547, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2541, file: !2542, line: 19, baseType: !311, size: 32, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2517, file: !2512, line: 37, baseType: !958, size: 256, offset: 2048)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2517, file: !2512, line: 38, baseType: !654, size: 128, align: 64, offset: 2304)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2517, file: !2512, line: 39, baseType: !2555, size: 64, offset: 2432)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2512, line: 49, size: 768, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2556, file: !2512, line: 50, baseType: !69, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2556, file: !2512, line: 51, baseType: !2533, size: 256, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2556, file: !2512, line: 53, baseType: !2533, size: 256, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2556, file: !2512, line: 54, baseType: !49, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2556, file: !2512, line: 55, baseType: !2555, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2556, file: !2512, line: 56, baseType: !32, size: 32, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2556, file: !2512, line: 57, baseType: !32, size: 32, offset: 736)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2517, file: !2512, line: 40, baseType: !49, size: 64, offset: 2496)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2517, file: !2512, line: 42, baseType: !32, size: 32, offset: 2560)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2517, file: !2512, line: 43, baseType: !2510, size: 64, offset: 2624)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2511, file: !2512, line: 99, baseType: !2569, offset: 128)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2570, line: 211, elements: !639)
!2570 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2511, file: !2512, line: 100, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2512, line: 63, size: 3008, elements: !2574)
!2574 = !{!2575, !2576, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2606}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2573, file: !2512, line: 64, baseType: !2555, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2573, file: !2512, line: 65, baseType: !2577, size: 192, offset: 64)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2555, size: 192, elements: !710)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2573, file: !2512, line: 67, baseType: !32, size: 32, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2573, file: !2512, line: 68, baseType: !674, size: 256, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2573, file: !2512, line: 69, baseType: !69, size: 32, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2573, file: !2512, line: 70, baseType: !674, size: 256, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2573, file: !2512, line: 71, baseType: !49, size: 64, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2573, file: !2512, line: 72, baseType: !49, size: 64, offset: 960)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2573, file: !2512, line: 73, baseType: !49, size: 64, offset: 1024)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2573, file: !2512, line: 74, baseType: !49, size: 64, offset: 1088)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2573, file: !2512, line: 75, baseType: !49, size: 64, offset: 1152)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2573, file: !2512, line: 76, baseType: !49, size: 64, offset: 1216)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2573, file: !2512, line: 77, baseType: !49, size: 64, offset: 1280)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2573, file: !2512, line: 78, baseType: !49, size: 64, offset: 1344)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2573, file: !2512, line: 79, baseType: !831, size: 8, offset: 1408)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2573, file: !2512, line: 80, baseType: !49, size: 64, offset: 1472)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2573, file: !2512, line: 81, baseType: !674, size: 256, offset: 1536)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2573, file: !2512, line: 82, baseType: !997, size: 256, offset: 1792)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2573, file: !2512, line: 84, baseType: !59, size: 32, offset: 2048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2573, file: !2512, line: 87, baseType: !49, size: 64, offset: 2112)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2573, file: !2512, line: 88, baseType: !49, size: 64, offset: 2176)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2573, file: !2512, line: 89, baseType: !2598, size: 704, offset: 2240)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !959, line: 111, size: 704, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2605}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2598, file: !959, line: 112, baseType: !958, size: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2598, file: !959, line: 113, baseType: !2541, size: 320, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2598, file: !959, line: 116, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !959, line: 18, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2598, file: !959, line: 117, baseType: !32, size: 32, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2573, file: !2512, line: 90, baseType: !2510, size: 64, offset: 2944)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1435, file: !126, line: 515, baseType: !2608, size: 64, offset: 8064)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2610, line: 117, size: 128, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2611 = !{!2612, !2613, !2614}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2609, file: !2610, line: 118, baseType: !843, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2609, file: !2610, line: 119, baseType: !843, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2609, file: !2610, line: 120, baseType: !297, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1435, file: !126, line: 516, baseType: !18, size: 32, offset: 8128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1435, file: !126, line: 519, baseType: !18, size: 32, offset: 8160)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1435, file: !126, line: 520, baseType: !2618, size: 64, offset: 8192)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1435, file: !126, line: 523, baseType: !2620, size: 64, offset: 8256)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !170, line: 372, size: 1024, elements: !2623)
!2623 = !{!2624, !2625, !2665, !2725, !2806, !2807, !2810, !2815, !2816, !2817, !2818, !2820, !2823}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2622, file: !170, line: 373, baseType: !107, size: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2622, file: !170, line: 374, baseType: !2626, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !170, line: 291, size: 576, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2636, !2659, !2663, !2664}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2627, file: !170, line: 292, baseType: !27, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2627, file: !170, line: 293, baseType: !30, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2627, file: !170, line: 295, baseType: !30, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2627, file: !170, line: 297, baseType: !2633, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!32, !2621, !169, !30}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2627, file: !170, line: 299, baseType: !2637, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !170, line: 275, size: 320, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2638, file: !170, line: 276, baseType: !27, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !170, line: 277, baseType: !2642, size: 256, offset: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2638, file: !170, line: 277, size: 256, elements: !2643)
!2643 = !{!2644, !2655}
!2644 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !170, line: 278, baseType: !2645, size: 256)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !170, line: 278, size: 256, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2650, !2652, !2653, !2654}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2645, file: !170, line: 279, baseType: !27, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2645, file: !170, line: 280, baseType: !2506, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2645, file: !170, line: 281, baseType: !2506, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2645, file: !170, line: 282, baseType: !2651, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2645, file: !170, line: 283, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2645, file: !170, line: 284, baseType: !2506, size: 32, offset: 160)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2645, file: !170, line: 285, baseType: !2506, size: 32, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2642, file: !170, line: 287, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!32, !2621}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2627, file: !170, line: 300, baseType: !2660, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!110, !2621}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2627, file: !170, line: 301, baseType: !107, size: 128, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2627, file: !170, line: 302, baseType: !2656, size: 64, offset: 512)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !170, line: 375, baseType: !2666, size: 64, offset: 192)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !170, line: 375, size: 64, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2666, file: !170, line: 376, baseType: !27, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2666, file: !170, line: 378, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2505, line: 32, size: 640, elements: !2672)
!2672 = !{!2673, !2674, !2686, !2710, !2711, !2712, !2713, !2714, !2718}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2671, file: !2505, line: 33, baseType: !27, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2671, file: !2505, line: 34, baseType: !2675, size: 128, offset: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2610, line: 85, size: 128, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2675, file: !2610, line: 86, baseType: !59, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !2675, file: !2610, line: 101, baseType: !2679, size: 64, offset: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2675, file: !2610, line: 101, size: 64, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2679, file: !2610, line: 102, baseType: !49, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2679, file: !2610, line: 103, baseType: !2608, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2679, file: !2610, line: 104, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2610, line: 104, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2671, file: !2505, line: 35, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2689, line: 61, size: 128, elements: !2690)
!2689 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2688, file: !2689, line: 62, baseType: !30, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2688, file: !2689, line: 63, baseType: !2693, size: 64, offset: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2688, file: !2689, line: 63, size: 64, elements: !2694)
!2694 = !{!2695, !2696, !2709}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2693, file: !2689, line: 65, baseType: !49, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2693, file: !2689, line: 66, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2699, line: 169, size: 192, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2698, file: !2699, line: 170, baseType: !2697, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2698, file: !2699, line: 171, baseType: !1434, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2698, file: !2699, line: 172, baseType: !2704, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2689, line: 32, size: 64, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2705, file: !2689, line: 33, baseType: !843, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2705, file: !2689, line: 34, baseType: !843, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2693, file: !2689, line: 67, baseType: !2704, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2671, file: !2505, line: 36, baseType: !30, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2671, file: !2505, line: 37, baseType: !30, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2671, file: !2505, line: 38, baseType: !30, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2671, file: !2505, line: 39, baseType: !2411, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2671, file: !2505, line: 40, baseType: !2715, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2671, file: !2505, line: 41, baseType: !2719, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2505, line: 26, size: 192, elements: !2721)
!2721 = !{!2722, !2723, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2720, file: !2505, line: 27, baseType: !30, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2720, file: !2505, line: 28, baseType: !30, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2720, file: !2505, line: 29, baseType: !32, size: 32, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2622, file: !170, line: 380, baseType: !2726, size: 256, offset: 256)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !170, line: 148, size: 256, elements: !2727)
!2727 = !{!2728, !2729, !2730}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2726, file: !170, line: 149, baseType: !726, size: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2726, file: !170, line: 150, baseType: !32, size: 32, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2726, file: !170, line: 151, baseType: !2731, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !170, line: 141, size: 256, elements: !2733)
!2733 = !{!2734, !2803, !2804, !2805}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2732, file: !170, line: 142, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !170, line: 138, baseType: !2736)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!180, !2739, !32, !2802}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !170, line: 93, size: 67776, elements: !2741)
!2741 = !{!2742, !2745, !2748, !2751, !2752, !2753, !2754, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2782, !2785, !2786, !2787, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2740, file: !170, line: 94, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !170, line: 13, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2740, file: !170, line: 95, baseType: !2746, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !170, line: 15, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2740, file: !170, line: 96, baseType: !2749, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !170, line: 14, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2740, file: !170, line: 97, baseType: !30, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2740, file: !170, line: 98, baseType: !32, size: 32, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2740, file: !170, line: 99, baseType: !674, size: 256, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2740, file: !170, line: 100, baseType: !2755, size: 64, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2758, line: 10, flags: DIFlagFwdDecl)
!2758 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2740, file: !170, line: 101, baseType: !49, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2740, file: !170, line: 102, baseType: !30, size: 64, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2740, file: !170, line: 103, baseType: !18, size: 32, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2740, file: !170, line: 104, baseType: !919, size: 64, offset: 832)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2740, file: !170, line: 105, baseType: !18, size: 32, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2740, file: !170, line: 106, baseType: !297, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2740, file: !170, line: 109, baseType: !2766, size: 33088, offset: 1024)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2767, line: 14, size: 33088, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2768 = !{!2769, !2773, !2780, !2781}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2766, file: !2767, line: 15, baseType: !2770, size: 32768)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2771)
!2771 = !{!2772}
!2772 = !DISubrange(count: 4096)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2766, file: !2767, line: 16, baseType: !2774, size: 192, offset: 32768)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2775, line: 18, size: 192, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2776 = !{!2777, !2778, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2774, file: !2775, line: 19, baseType: !919, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2774, file: !2775, line: 20, baseType: !45, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2774, file: !2775, line: 21, baseType: !45, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2766, file: !2767, line: 17, baseType: !45, size: 64, offset: 32960)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2766, file: !2767, line: 18, baseType: !32, size: 32, offset: 33024)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2740, file: !170, line: 111, baseType: !2783, size: 64, offset: 34112)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !565, line: 913, baseType: !2784)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 64, elements: !570)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2740, file: !170, line: 114, baseType: !831, size: 8, offset: 34176)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2740, file: !170, line: 117, baseType: !2766, size: 33088, offset: 34240)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2740, file: !170, line: 118, baseType: !2788, size: 64, offset: 67328)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !170, line: 79, size: 64, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2789, file: !170, line: 80, baseType: !36, size: 16)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !170, line: 81, baseType: !97, size: 8, offset: 16)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2789, file: !170, line: 82, baseType: !97, size: 8, offset: 24)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2789, file: !170, line: 83, baseType: !32, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2740, file: !170, line: 119, baseType: !49, size: 64, offset: 67392)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2740, file: !170, line: 120, baseType: !32, size: 32, offset: 67456)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2740, file: !170, line: 121, baseType: !32, size: 32, offset: 67488)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2740, file: !170, line: 122, baseType: !32, size: 32, offset: 67520)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2740, file: !170, line: 123, baseType: !369, size: 64, offset: 67584)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2740, file: !170, line: 125, baseType: !51, size: 64, offset: 67648)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2740, file: !170, line: 126, baseType: !297, size: 64, offset: 67712)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2732, file: !170, line: 143, baseType: !2735, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2732, file: !170, line: 144, baseType: !2735, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2732, file: !170, line: 145, baseType: !2735, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2622, file: !170, line: 381, baseType: !919, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2622, file: !170, line: 382, baseType: !2808, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !240, line: 821, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2622, file: !170, line: 387, baseType: !2811, size: 64, offset: 640)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2622, file: !170, line: 387, size: 64, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2811, file: !170, line: 388, baseType: !30, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2811, file: !170, line: 389, baseType: !59, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2622, file: !170, line: 391, baseType: !30, size: 64, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2622, file: !170, line: 394, baseType: !32, size: 32, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2622, file: !170, line: 397, baseType: !32, size: 32, offset: 800)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2622, file: !170, line: 398, baseType: !2819, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2622, file: !170, line: 399, baseType: !2821, size: 64, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !170, line: 399, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2622, file: !170, line: 401, baseType: !2824, size: 64, offset: 960)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!32, !2621, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !240, line: 671, size: 8512, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !3362, !3363, !3364, !3365, !3371, !3372, !3373, !3374, !3375, !3459, !3460, !3461, !3462, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3582, !3583, !3584, !3585, !3586, !3587, !3602, !3603, !3604, !3605, !3606, !3612, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3629, !3800, !3801, !3802, !3803, !4073, !4074, !4075}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2828, file: !240, line: 678, baseType: !107, size: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2828, file: !240, line: 684, baseType: !107, size: 128, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2828, file: !240, line: 685, baseType: !107, size: 128, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2828, file: !240, line: 689, baseType: !361, size: 192, align: 64, offset: 384)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2828, file: !240, line: 690, baseType: !369, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2828, file: !240, line: 696, baseType: !107, size: 128, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2828, file: !240, line: 698, baseType: !726, size: 128, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2828, file: !240, line: 699, baseType: !107, size: 128, offset: 896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2828, file: !240, line: 700, baseType: !32, size: 32, offset: 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2828, file: !240, line: 703, baseType: !32, size: 32, offset: 1056)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2828, file: !240, line: 705, baseType: !32, size: 32, offset: 1088)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2828, file: !240, line: 707, baseType: !18, size: 32, offset: 1120)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2828, file: !240, line: 708, baseType: !2827, size: 64, offset: 1152)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2828, file: !240, line: 714, baseType: !2844, size: 64, offset: 1216)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !240, line: 302, size: 2432, elements: !2846)
!2846 = !{!2847, !2848, !2849, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3272, !3273, !3274, !3275, !3276, !3280, !3281, !3285, !3289, !3290, !3294, !3298, !3299, !3300, !3304, !3308, !3312, !3313, !3314, !3318, !3319, !3323, !3327, !3328, !3348, !3352, !3353, !3354, !3358}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2845, file: !240, line: 303, baseType: !107, size: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2845, file: !240, line: 305, baseType: !1434, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2845, file: !240, line: 306, baseType: !2850, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !193, line: 705, size: 5824, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2858, !2859, !2912, !2982, !2983, !2984, !2985, !2986, !2993, !3085, !3098, !3108, !3112, !3114, !3115, !3116, !3120, !3127, !3128, !3131, !3134, !3138, !3141, !3142, !3143, !3144, !3145, !3146, !3176, !3177, !3178, !3181, !3184, !3193, !3194, !3195, !3196, !3197, !3198}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2851, file: !193, line: 706, baseType: !1447, size: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2851, file: !193, line: 707, baseType: !2850, size: 64, offset: 512)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2851, file: !193, line: 709, baseType: !2856, size: 64, offset: 576)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !193, line: 37, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2851, file: !193, line: 711, baseType: !27, size: 64, offset: 640)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2851, file: !193, line: 712, baseType: !2860, size: 64, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !193, line: 89, size: 384, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2872, !2877, !2881}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2862, file: !193, line: 90, baseType: !27, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2862, file: !193, line: 91, baseType: !1527, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2862, file: !193, line: 92, baseType: !2867, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!32, !2870, !1483}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2851)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2862, file: !193, line: 93, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!919, !2870, !2876, !1022, !1023}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2862, file: !193, line: 95, baseType: !2878, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2850}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2862, file: !193, line: 97, baseType: !2882, size: 64, offset: 320)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2884)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !200, line: 286, size: 1472, elements: !2885)
!2885 = !{!2886, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2884, file: !200, line: 287, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!32, !2850}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2884, file: !200, line: 288, baseType: !2878, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2884, file: !200, line: 289, baseType: !2887, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2884, file: !200, line: 290, baseType: !2887, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2884, file: !200, line: 291, baseType: !2887, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2884, file: !200, line: 292, baseType: !2887, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2884, file: !200, line: 293, baseType: !2887, size: 64, offset: 384)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2884, file: !200, line: 294, baseType: !2887, size: 64, offset: 448)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2884, file: !200, line: 295, baseType: !2887, size: 64, offset: 512)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2884, file: !200, line: 296, baseType: !2887, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2884, file: !200, line: 297, baseType: !2887, size: 64, offset: 640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2884, file: !200, line: 298, baseType: !2887, size: 64, offset: 704)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2884, file: !200, line: 299, baseType: !2887, size: 64, offset: 768)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2884, file: !200, line: 300, baseType: !2887, size: 64, offset: 832)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2884, file: !200, line: 301, baseType: !2887, size: 64, offset: 896)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2884, file: !200, line: 302, baseType: !2887, size: 64, offset: 960)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2884, file: !200, line: 303, baseType: !2887, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2884, file: !200, line: 304, baseType: !2887, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2884, file: !200, line: 305, baseType: !2887, size: 64, offset: 1152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2884, file: !200, line: 306, baseType: !2887, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2884, file: !200, line: 307, baseType: !2887, size: 64, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2884, file: !200, line: 308, baseType: !2887, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2884, file: !200, line: 309, baseType: !2887, size: 64, offset: 1408)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2851, file: !193, line: 714, baseType: !2913, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2916, line: 80, size: 1344, elements: !2917)
!2916 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2917 = !{!2918, !2919, !2920, !2921, !2922, !2923, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2981}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2915, file: !2916, line: 81, baseType: !27, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2915, file: !2916, line: 82, baseType: !27, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2915, file: !2916, line: 83, baseType: !1527, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2915, file: !2916, line: 84, baseType: !1527, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2915, file: !2916, line: 85, baseType: !1527, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2915, file: !2916, line: 87, baseType: !2924, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!32, !2850, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !187, line: 96, size: 1152, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2940, !2944, !2945, !2946, !2947, !2948, !2956, !2957, !2958, !2959, !2960, !2961}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2928, file: !187, line: 97, baseType: !27, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2928, file: !187, line: 98, baseType: !2913, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2928, file: !187, line: 100, baseType: !1434, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2928, file: !187, line: 101, baseType: !27, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2928, file: !187, line: 103, baseType: !831, size: 8, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2928, file: !187, line: 104, baseType: !186, size: 32, offset: 288)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2928, file: !187, line: 106, baseType: !2937, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !187, line: 106, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2928, file: !187, line: 107, baseType: !2941, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !187, line: 107, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2928, file: !187, line: 109, baseType: !2887, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2928, file: !187, line: 110, baseType: !2878, size: 64, offset: 512)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2928, file: !187, line: 111, baseType: !2887, size: 64, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2928, file: !187, line: 112, baseType: !2878, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2928, file: !187, line: 113, baseType: !2949, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!32, !2850, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !200, line: 60, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !200, line: 58, size: 32, elements: !2954)
!2954 = !{!2955}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2953, file: !200, line: 59, baseType: !32, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2928, file: !187, line: 114, baseType: !2887, size: 64, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2928, file: !187, line: 115, baseType: !1527, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2928, file: !187, line: 116, baseType: !1527, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2928, file: !187, line: 118, baseType: !2882, size: 64, offset: 960)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2928, file: !187, line: 119, baseType: !2878, size: 64, offset: 1024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2928, file: !187, line: 121, baseType: !2962, size: 64, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !187, line: 121, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2915, file: !2916, line: 88, baseType: !2867, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2915, file: !2916, line: 89, baseType: !2887, size: 64, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2915, file: !2916, line: 90, baseType: !2878, size: 64, offset: 512)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2915, file: !2916, line: 91, baseType: !2878, size: 64, offset: 576)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2915, file: !2916, line: 92, baseType: !2878, size: 64, offset: 640)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2915, file: !2916, line: 94, baseType: !2887, size: 64, offset: 704)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2915, file: !2916, line: 95, baseType: !2887, size: 64, offset: 768)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2915, file: !2916, line: 97, baseType: !2949, size: 64, offset: 832)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2915, file: !2916, line: 98, baseType: !2887, size: 64, offset: 896)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2915, file: !2916, line: 100, baseType: !2887, size: 64, offset: 960)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2915, file: !2916, line: 102, baseType: !2887, size: 64, offset: 1024)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2915, file: !2916, line: 103, baseType: !2878, size: 64, offset: 1088)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2915, file: !2916, line: 105, baseType: !2882, size: 64, offset: 1152)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2915, file: !2916, line: 107, baseType: !2978, size: 64, offset: 1216)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2916, line: 107, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2915, file: !2916, line: 109, baseType: !831, size: 8, offset: 1280)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2851, file: !193, line: 715, baseType: !2927, size: 64, offset: 832)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2851, file: !193, line: 717, baseType: !30, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2851, file: !193, line: 719, baseType: !30, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2851, file: !193, line: 721, baseType: !674, size: 256, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2851, file: !193, line: 725, baseType: !2987, size: 448, offset: 1280)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !193, line: 517, size: 448, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2987, file: !193, line: 518, baseType: !107, size: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2987, file: !193, line: 519, baseType: !107, size: 128, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2987, file: !193, line: 520, baseType: !107, size: 128, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2987, file: !193, line: 521, baseType: !192, size: 32, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2851, file: !193, line: 726, baseType: !2994, size: 2496, offset: 1728)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !200, line: 663, size: 2496, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3078, !3082}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2994, file: !200, line: 664, baseType: !2952, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2994, file: !200, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2994, file: !200, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2994, file: !200, line: 667, baseType: !831, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2994, file: !200, line: 668, baseType: !831, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2994, file: !200, line: 669, baseType: !831, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2994, file: !200, line: 670, baseType: !831, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2994, file: !200, line: 671, baseType: !831, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2994, file: !200, line: 672, baseType: !831, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2994, file: !200, line: 673, baseType: !831, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2994, file: !200, line: 674, baseType: !831, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2994, file: !200, line: 675, baseType: !311, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2994, file: !200, line: 676, baseType: !69, size: 32, offset: 96)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2994, file: !200, line: 678, baseType: !107, size: 128, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2994, file: !200, line: 679, baseType: !997, size: 256, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2994, file: !200, line: 680, baseType: !3012, size: 64, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3014, line: 43, size: 1536, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3013, file: !3014, line: 44, baseType: !27, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3013, file: !3014, line: 45, baseType: !32, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3013, file: !3014, line: 46, baseType: !107, size: 128, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3013, file: !3014, line: 47, baseType: !69, size: 32, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3013, file: !3014, line: 48, baseType: !3021, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !200, line: 629, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3013, file: !3014, line: 49, baseType: !2541, size: 320, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3013, file: !3014, line: 50, baseType: !49, size: 64, offset: 704)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3013, file: !3014, line: 51, baseType: !444, size: 64, offset: 768)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3013, file: !3014, line: 52, baseType: !444, size: 64, offset: 832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3013, file: !3014, line: 53, baseType: !444, size: 64, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3013, file: !3014, line: 54, baseType: !444, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3013, file: !3014, line: 55, baseType: !444, size: 64, offset: 1024)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3013, file: !3014, line: 56, baseType: !49, size: 64, offset: 1088)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3013, file: !3014, line: 57, baseType: !49, size: 64, offset: 1152)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3013, file: !3014, line: 58, baseType: !49, size: 64, offset: 1216)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3013, file: !3014, line: 59, baseType: !49, size: 64, offset: 1280)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3013, file: !3014, line: 60, baseType: !49, size: 64, offset: 1344)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3013, file: !3014, line: 61, baseType: !2850, size: 64, offset: 1408)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3013, file: !3014, line: 62, baseType: !831, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3013, file: !3014, line: 63, baseType: !831, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2994, file: !200, line: 681, baseType: !831, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2994, file: !200, line: 682, baseType: !831, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2994, file: !200, line: 683, baseType: !831, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2994, file: !200, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2994, file: !200, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2994, file: !200, line: 690, baseType: !436, size: 512, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2994, file: !200, line: 691, baseType: !369, size: 64, offset: 1152)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2994, file: !200, line: 692, baseType: !958, size: 256, offset: 1216)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2994, file: !200, line: 693, baseType: !64, size: 192, offset: 1472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2994, file: !200, line: 694, baseType: !3021, size: 64, offset: 1664)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2994, file: !200, line: 695, baseType: !59, size: 32, offset: 1728)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2994, file: !200, line: 696, baseType: !59, size: 32, offset: 1760)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2994, file: !200, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2994, file: !200, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2994, file: !200, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2994, file: !200, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2994, file: !200, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2994, file: !200, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2994, file: !200, line: 703, baseType: !831, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2994, file: !200, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2994, file: !200, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2994, file: !200, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2994, file: !200, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2994, file: !200, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2994, file: !200, line: 709, baseType: !18, size: 32, offset: 1824)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2994, file: !200, line: 710, baseType: !199, size: 32, offset: 1856)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2994, file: !200, line: 711, baseType: !207, size: 32, offset: 1888)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2994, file: !200, line: 712, baseType: !207, size: 32, offset: 1920)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2994, file: !200, line: 713, baseType: !32, size: 32, offset: 1952)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2994, file: !200, line: 714, baseType: !32, size: 32, offset: 1984)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2994, file: !200, line: 715, baseType: !369, size: 64, offset: 2048)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2994, file: !200, line: 716, baseType: !369, size: 64, offset: 2112)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2994, file: !200, line: 717, baseType: !369, size: 64, offset: 2176)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2994, file: !200, line: 718, baseType: !369, size: 64, offset: 2240)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2994, file: !200, line: 720, baseType: !3073, size: 64, offset: 2304)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !200, line: 632, size: 64, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3074, file: !200, line: 633, baseType: !69, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3074, file: !200, line: 634, baseType: !18, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2994, file: !200, line: 721, baseType: !3079, size: 64, offset: 2368)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !2850, !843}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2994, file: !200, line: 722, baseType: !3083, size: 64, offset: 2432)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !200, line: 722, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2851, file: !193, line: 727, baseType: !3086, size: 64, offset: 4224)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !200, line: 742, size: 1792, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3095, !3096, !3097}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3087, file: !200, line: 743, baseType: !2884, size: 1472)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3087, file: !200, line: 744, baseType: !2887, size: 64, offset: 1472)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3087, file: !200, line: 745, baseType: !3092, size: 64, offset: 1536)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !2850, !831}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3087, file: !200, line: 746, baseType: !2887, size: 64, offset: 1600)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3087, file: !200, line: 747, baseType: !2878, size: 64, offset: 1664)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3087, file: !200, line: 748, baseType: !2878, size: 64, offset: 1728)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2851, file: !193, line: 736, baseType: !3099, size: 128, offset: 4288)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !193, line: 529, size: 128, elements: !3100)
!3100 = !{!3101, !3105}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3099, file: !193, line: 531, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3104, line: 13, flags: DIFlagFwdDecl)
!3104 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3099, file: !193, line: 532, baseType: !3106, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !193, line: 49, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2851, file: !193, line: 738, baseType: !3109, size: 64, offset: 4416)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !193, line: 738, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2851, file: !193, line: 740, baseType: !3113, size: 64, offset: 4480)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2851, file: !193, line: 741, baseType: !369, size: 64, offset: 4544)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2851, file: !193, line: 746, baseType: !369, size: 64, offset: 4608)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2851, file: !193, line: 747, baseType: !3117, size: 64, offset: 4672)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !193, line: 747, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2851, file: !193, line: 749, baseType: !3121, size: 64, offset: 4736)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !193, line: 428, size: 128, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3122, file: !193, line: 433, baseType: !18, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3122, file: !193, line: 434, baseType: !18, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3122, file: !193, line: 435, baseType: !49, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2851, file: !193, line: 751, baseType: !107, size: 128, offset: 4800)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2851, file: !193, line: 762, baseType: !3129, size: 64, offset: 4928)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !193, line: 762, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2851, file: !193, line: 770, baseType: !3132, offset: 4992)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3133, line: 5, elements: !639)
!3133 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2851, file: !193, line: 772, baseType: !3135, size: 64, offset: 4992)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3137, line: 18, flags: DIFlagFwdDecl)
!3137 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2851, file: !193, line: 773, baseType: !3139, size: 64, offset: 5056)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2916, line: 22, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2851, file: !193, line: 776, baseType: !32, size: 32, offset: 5120)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2851, file: !193, line: 778, baseType: !1274, size: 32, offset: 5152)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2851, file: !193, line: 779, baseType: !311, size: 32, offset: 5184)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2851, file: !193, line: 781, baseType: !69, size: 32, offset: 5216)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2851, file: !193, line: 782, baseType: !107, size: 128, offset: 5248)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2851, file: !193, line: 784, baseType: !3147, size: 64, offset: 5376)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3150, line: 52, size: 768, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3160, !3164, !3165, !3166, !3167, !3171, !3175}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3149, file: !3150, line: 53, baseType: !27, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3149, file: !3150, line: 55, baseType: !1527, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3149, file: !3150, line: 56, baseType: !1527, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3149, file: !3150, line: 58, baseType: !2867, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3149, file: !3150, line: 59, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!919, !2870, !2876}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3149, file: !3150, line: 61, baseType: !3161, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3147}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3149, file: !3150, line: 62, baseType: !2878, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3149, file: !3150, line: 64, baseType: !2887, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3149, file: !3150, line: 66, baseType: !2110, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3149, file: !3150, line: 67, baseType: !3168, size: 64, offset: 576)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!2127, !2870}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3149, file: !3150, line: 69, baseType: !3172, size: 64, offset: 640)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !2870, !1022, !1023}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3149, file: !3150, line: 71, baseType: !2882, size: 64, offset: 704)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2851, file: !193, line: 785, baseType: !1527, size: 64, offset: 5440)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2851, file: !193, line: 787, baseType: !2878, size: 64, offset: 5504)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2851, file: !193, line: 788, baseType: !3179, size: 64, offset: 5568)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !193, line: 46, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2851, file: !193, line: 789, baseType: !3182, size: 64, offset: 5632)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !193, line: 48, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2851, file: !193, line: 791, baseType: !3185, size: 64, offset: 5696)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !193, line: 597, size: 128, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3192}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3186, file: !193, line: 598, baseType: !214, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3186, file: !193, line: 599, baseType: !223, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3186, file: !193, line: 600, baseType: !228, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3186, file: !193, line: 601, baseType: !831, size: 8, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3186, file: !193, line: 602, baseType: !831, size: 8, offset: 104)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2851, file: !193, line: 793, baseType: !233, size: 32, offset: 5760)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2851, file: !193, line: 795, baseType: !831, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2851, file: !193, line: 796, baseType: !831, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2851, file: !193, line: 797, baseType: !831, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2851, file: !193, line: 798, baseType: !831, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2851, file: !193, line: 799, baseType: !831, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2845, file: !240, line: 307, baseType: !2850, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2845, file: !240, line: 308, baseType: !1527, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2845, file: !240, line: 309, baseType: !1527, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2845, file: !240, line: 310, baseType: !27, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2845, file: !240, line: 311, baseType: !32, size: 32, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2845, file: !240, line: 316, baseType: !32, size: 32, offset: 544)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2845, file: !240, line: 318, baseType: !2440, size: 64, offset: 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2845, file: !240, line: 319, baseType: !3207, size: 64, offset: 640)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !240, line: 977, size: 1856, elements: !3209)
!3209 = !{!3210, !3262, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3208, file: !240, line: 978, baseType: !3211, size: 896)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !240, line: 873, size: 896, elements: !3212)
!3212 = !{!3213, !3214, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3211, file: !240, line: 874, baseType: !2844, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3211, file: !240, line: 875, baseType: !3215, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !240, line: 912, size: 1792, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3216, file: !240, line: 917, baseType: !461, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3216, file: !240, line: 923, baseType: !674, size: 256, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3216, file: !240, line: 925, baseType: !107, size: 128, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3216, file: !240, line: 926, baseType: !3222, size: 128, offset: 448)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !240, line: 901, size: 128, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3222, file: !240, line: 902, baseType: !504, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3222, file: !240, line: 903, baseType: !369, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3216, file: !240, line: 927, baseType: !3222, size: 128, offset: 576)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3216, file: !240, line: 928, baseType: !107, size: 128, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3216, file: !240, line: 930, baseType: !32, size: 32, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3216, file: !240, line: 931, baseType: !32, size: 32, offset: 864)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3216, file: !240, line: 932, baseType: !32, size: 32, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3216, file: !240, line: 934, baseType: !32, size: 32, offset: 928)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3216, file: !240, line: 935, baseType: !32, size: 32, offset: 960)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3216, file: !240, line: 936, baseType: !32, size: 32, offset: 992)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3216, file: !240, line: 937, baseType: !32, size: 32, offset: 1024)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3216, file: !240, line: 939, baseType: !317, size: 32, offset: 1056)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3216, file: !240, line: 940, baseType: !300, size: 64, offset: 1088)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3216, file: !240, line: 945, baseType: !369, size: 64, offset: 1152)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3216, file: !240, line: 946, baseType: !369, size: 64, offset: 1216)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3216, file: !240, line: 947, baseType: !369, size: 64, offset: 1280)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3216, file: !240, line: 953, baseType: !3215, size: 64, offset: 1344)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3216, file: !240, line: 954, baseType: !369, size: 64, offset: 1408)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3216, file: !240, line: 955, baseType: !369, size: 64, offset: 1472)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3216, file: !240, line: 956, baseType: !32, size: 32, offset: 1536)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3216, file: !240, line: 958, baseType: !32, size: 32, offset: 1568)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3216, file: !240, line: 960, baseType: !654, size: 128, align: 64, offset: 1600)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3216, file: !240, line: 968, baseType: !3247, size: 64, offset: 1728)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3248, line: 12, baseType: !3249)
!3248 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3248, line: 10, size: 64, elements: !3250)
!3250 = !{!3251}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3249, file: !3248, line: 11, baseType: !667, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3211, file: !240, line: 877, baseType: !107, size: 128, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3211, file: !240, line: 879, baseType: !107, size: 128, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3211, file: !240, line: 880, baseType: !107, size: 128, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3211, file: !240, line: 883, baseType: !18, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3211, file: !240, line: 885, baseType: !18, size: 32, offset: 544)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3211, file: !240, line: 886, baseType: !18, size: 32, offset: 576)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3211, file: !240, line: 888, baseType: !59, size: 32, offset: 608)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3211, file: !240, line: 889, baseType: !654, size: 128, align: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3211, file: !240, line: 891, baseType: !30, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3211, file: !240, line: 898, baseType: !32, size: 32, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3208, file: !240, line: 979, baseType: !3263, size: 64, offset: 896)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3208, file: !240, line: 981, baseType: !107, size: 128, offset: 960)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3208, file: !240, line: 982, baseType: !32, size: 32, offset: 1088)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3208, file: !240, line: 984, baseType: !32, size: 32, offset: 1120)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3208, file: !240, line: 985, baseType: !32, size: 32, offset: 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3208, file: !240, line: 987, baseType: !461, size: 32, offset: 1184)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3208, file: !240, line: 988, baseType: !436, size: 512, offset: 1216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3208, file: !240, line: 989, baseType: !444, size: 64, offset: 1728)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3208, file: !240, line: 990, baseType: !18, size: 32, offset: 1792)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2845, file: !240, line: 320, baseType: !59, size: 32, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2845, file: !240, line: 321, baseType: !32, size: 32, offset: 736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2845, file: !240, line: 322, baseType: !32, size: 32, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2845, file: !240, line: 325, baseType: !18, size: 32, offset: 800)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2845, file: !240, line: 331, baseType: !3277, size: 64, offset: 832)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !2844}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2845, file: !240, line: 332, baseType: !3277, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2845, file: !240, line: 350, baseType: !3282, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!32, !2827}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2845, file: !240, line: 356, baseType: !3286, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !2827, !618}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2845, file: !240, line: 357, baseType: !3286, size: 64, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2845, file: !240, line: 385, baseType: !3291, size: 64, offset: 1152)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!32, !2827, !32}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2845, file: !240, line: 386, baseType: !3295, size: 64, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !2827, !32}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2845, file: !240, line: 406, baseType: !3295, size: 64, offset: 1280)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2845, file: !240, line: 407, baseType: !3295, size: 64, offset: 1344)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2845, file: !240, line: 415, baseType: !3301, size: 64, offset: 1408)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !2827}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2845, file: !240, line: 427, baseType: !3305, size: 64, offset: 1472)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !2844, !18}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2845, file: !240, line: 436, baseType: !3309, size: 64, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!32, !2844}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2845, file: !240, line: 443, baseType: !3277, size: 64, offset: 1600)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2845, file: !240, line: 450, baseType: !3282, size: 64, offset: 1664)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2845, file: !240, line: 455, baseType: !3315, size: 64, offset: 1728)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3263, !831}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2845, file: !240, line: 461, baseType: !764, size: 64, offset: 1792)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2845, file: !240, line: 469, baseType: !3320, size: 64, offset: 1856)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3263, !3263}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2845, file: !240, line: 476, baseType: !3324, size: 64, offset: 1920)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!30, !2827, !1949, !32, !831}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2845, file: !240, line: 483, baseType: !1231, size: 64, offset: 1984)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2845, file: !240, line: 494, baseType: !3329, size: 64, offset: 2048)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!297, !2827, !3332, !49}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !240, line: 1014, size: 448, elements: !3334)
!3334 = !{!3335, !3336, !3339, !3340, !3341, !3342, !3347}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3333, file: !240, line: 1015, baseType: !2827, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3333, file: !240, line: 1016, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !240, line: 641, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3333, file: !240, line: 1017, baseType: !49, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3333, file: !240, line: 1018, baseType: !49, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3333, file: !240, line: 1019, baseType: !369, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3333, file: !240, line: 1020, baseType: !3343, size: 64, offset: 320)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3333, file: !240, line: 1020, size: 64, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3343, file: !240, line: 1021, baseType: !30, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3343, file: !240, line: 1022, baseType: !49, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3333, file: !240, line: 1024, baseType: !32, size: 32, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2845, file: !240, line: 506, baseType: !3349, size: 64, offset: 2112)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!32, !110}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2845, file: !240, line: 520, baseType: !3301, size: 64, offset: 2176)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2845, file: !240, line: 530, baseType: !3282, size: 64, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2845, file: !240, line: 537, baseType: !3355, size: 64, offset: 2304)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!831, !2844, !32}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2845, file: !240, line: 542, baseType: !3359, size: 64, offset: 2368)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!32, !2827, !369}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2828, file: !240, line: 715, baseType: !30, size: 64, offset: 1280)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2828, file: !240, line: 717, baseType: !239, size: 32, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2828, file: !240, line: 718, baseType: !18, size: 32, offset: 1376)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2828, file: !240, line: 719, baseType: !3366, size: 64, offset: 1408)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3367, line: 26, baseType: !3368)
!3367 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3367, line: 24, size: 64, elements: !3369)
!3369 = !{!3370}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3368, file: !3367, line: 25, baseType: !3247, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2828, file: !240, line: 720, baseType: !669, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2828, file: !240, line: 728, baseType: !369, size: 64, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2828, file: !240, line: 729, baseType: !369, size: 64, offset: 1600)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2828, file: !240, line: 730, baseType: !369, size: 64, offset: 1664)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2828, file: !240, line: 732, baseType: !3376, size: 1088, offset: 1728)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3377, line: 385, size: 1088, elements: !3378)
!3377 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3378 = !{!3379, !3380, !3381, !3382, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3432, !3433, !3440, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3376, file: !3377, line: 390, baseType: !312, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3376, file: !3377, line: 395, baseType: !312, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3376, file: !3377, line: 400, baseType: !370, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 402, baseType: !3383, size: 64, offset: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 402, size: 64, elements: !3384)
!3384 = !{!3385, !3386}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3383, file: !3377, line: 403, baseType: !370, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3383, file: !3377, line: 404, baseType: !370, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3376, file: !3377, line: 407, baseType: !370, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3376, file: !3377, line: 408, baseType: !370, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3376, file: !3377, line: 410, baseType: !370, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3376, file: !3377, line: 411, baseType: !370, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3376, file: !3377, line: 412, baseType: !370, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3376, file: !3377, line: 413, baseType: !370, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3376, file: !3377, line: 414, baseType: !370, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3376, file: !3377, line: 415, baseType: !370, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3376, file: !3377, line: 416, baseType: !370, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3376, file: !3377, line: 417, baseType: !370, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3376, file: !3377, line: 418, baseType: !370, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3376, file: !3377, line: 419, baseType: !370, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3376, file: !3377, line: 420, baseType: !370, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3376, file: !3377, line: 421, baseType: !370, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3376, file: !3377, line: 422, baseType: !370, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3376, file: !3377, line: 423, baseType: !370, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3376, file: !3377, line: 424, baseType: !370, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3376, file: !3377, line: 435, baseType: !370, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3376, file: !3377, line: 436, baseType: !370, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3376, file: !3377, line: 437, baseType: !370, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3376, file: !3377, line: 439, baseType: !370, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3376, file: !3377, line: 440, baseType: !370, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3376, file: !3377, line: 442, baseType: !370, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3376, file: !3377, line: 443, baseType: !370, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3376, file: !3377, line: 444, baseType: !370, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3376, file: !3377, line: 445, baseType: !370, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3376, file: !3377, line: 446, baseType: !370, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3376, file: !3377, line: 447, baseType: !370, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3376, file: !3377, line: 448, baseType: !370, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3376, file: !3377, line: 449, baseType: !370, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3376, file: !3377, line: 450, baseType: !370, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3376, file: !3377, line: 451, baseType: !370, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3376, file: !3377, line: 452, baseType: !370, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3376, file: !3377, line: 453, baseType: !370, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3376, file: !3377, line: 454, baseType: !370, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3376, file: !3377, line: 455, baseType: !370, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3376, file: !3377, line: 456, baseType: !370, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3376, file: !3377, line: 457, baseType: !370, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3376, file: !3377, line: 458, baseType: !370, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3376, file: !3377, line: 459, baseType: !370, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 461, baseType: !3428, size: 32, offset: 384)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 461, size: 32, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3428, file: !3377, line: 462, baseType: !312, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3428, file: !3377, line: 463, baseType: !312, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3376, file: !3377, line: 466, baseType: !312, size: 32, offset: 416)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 467, baseType: !3434, size: 64, offset: 448)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 467, size: 64, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3434, file: !3377, line: 468, baseType: !370, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3434, file: !3377, line: 469, baseType: !370, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3434, file: !3377, line: 470, baseType: !370, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3434, file: !3377, line: 471, baseType: !370, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 473, baseType: !3441, size: 64, offset: 512)
!3441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 473, size: 64, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3441, file: !3377, line: 474, baseType: !370, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3441, file: !3377, line: 475, baseType: !370, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3441, file: !3377, line: 476, baseType: !370, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3441, file: !3377, line: 477, baseType: !370, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3376, file: !3377, line: 479, baseType: !370, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3376, file: !3377, line: 485, baseType: !370, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3376, file: !3377, line: 490, baseType: !312, size: 32, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3376, file: !3377, line: 492, baseType: !844, size: 32, offset: 736)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3376, file: !3377, line: 501, baseType: !370, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3376, file: !3377, line: 506, baseType: !312, size: 32, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3376, file: !3377, line: 507, baseType: !104, size: 16, offset: 864)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3376, file: !3377, line: 508, baseType: !104, size: 16, offset: 880)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3376, file: !3377, line: 509, baseType: !312, size: 32, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3376, file: !3377, line: 510, baseType: !312, size: 32, offset: 928)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3376, file: !3377, line: 518, baseType: !370, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3376, file: !3377, line: 520, baseType: !370, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2828, file: !240, line: 733, baseType: !103, size: 16, offset: 2816)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2828, file: !240, line: 734, baseType: !103, size: 16, offset: 2832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2828, file: !240, line: 735, baseType: !103, size: 16, offset: 2848)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2828, file: !240, line: 736, baseType: !3463, size: 1536, offset: 2880)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !240, line: 155, size: 1536, elements: !3464)
!3464 = !{!3465, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3549, !3550, !3551, !3552}
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !240, line: 157, baseType: !3466, size: 768)
!3466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !240, line: 157, size: 768, elements: !3467)
!3467 = !{!3468, !3487, !3491, !3495, !3500, !3522}
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 158, baseType: !3469, size: 768)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 158, size: 768, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3486}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3469, file: !240, line: 159, baseType: !369, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3469, file: !240, line: 160, baseType: !369, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3469, file: !240, line: 161, baseType: !49, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3469, file: !240, line: 162, baseType: !49, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3469, file: !240, line: 163, baseType: !32, size: 32, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3469, file: !240, line: 164, baseType: !32, size: 32, offset: 288)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3469, file: !240, line: 165, baseType: !32, size: 32, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3469, file: !240, line: 166, baseType: !32, size: 32, offset: 352)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3469, file: !240, line: 168, baseType: !3480, size: 192, offset: 384)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !240, line: 134, size: 192, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3485}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3480, file: !240, line: 135, baseType: !369, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3480, file: !240, line: 136, baseType: !18, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3480, file: !240, line: 137, baseType: !32, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3480, file: !240, line: 138, baseType: !32, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3469, file: !240, line: 169, baseType: !3480, size: 192, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 171, baseType: !3488, size: 512)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 171, size: 512, elements: !3489)
!3489 = !{!3490}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3488, file: !240, line: 172, baseType: !436, size: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 174, baseType: !3492, size: 128)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 174, size: 128, elements: !3493)
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3492, file: !240, line: 176, baseType: !107, size: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 178, baseType: !3496, size: 128)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 178, size: 128, elements: !3497)
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3496, file: !240, line: 179, baseType: !369, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3496, file: !240, line: 180, baseType: !369, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 183, baseType: !3501, size: 320)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 183, size: 320, elements: !3502)
!3502 = !{!3503, !3511}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3501, file: !240, line: 189, baseType: !3504, size: 192)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3505, line: 14, size: 192, elements: !3506)
!3505 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3504, file: !3505, line: 15, baseType: !49, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3504, file: !3505, line: 16, baseType: !49, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3504, file: !3505, line: 17, baseType: !93, size: 8, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3504, file: !3505, line: 18, baseType: !93, size: 8, offset: 136)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3501, file: !240, line: 190, baseType: !3512, size: 128, offset: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3513, line: 21, size: 128, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3514 = !{!3515, !3520}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3512, file: !3513, line: 22, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3513, line: 17, size: 64, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3516, file: !3513, line: 18, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3512, file: !3513, line: 23, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !240, line: 193, baseType: !3523, size: 192)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3466, file: !240, line: 193, size: 192, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3523, file: !240, line: 194, baseType: !93, size: 8)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3523, file: !240, line: 195, baseType: !93, size: 8, offset: 8)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3523, file: !240, line: 196, baseType: !103, size: 16, offset: 16)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3523, file: !240, line: 197, baseType: !369, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3523, file: !240, line: 198, baseType: !369, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3463, file: !240, line: 205, baseType: !300, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3463, file: !240, line: 211, baseType: !30, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3463, file: !240, line: 214, baseType: !49, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3463, file: !240, line: 223, baseType: !32, size: 32, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3463, file: !240, line: 229, baseType: !3366, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3463, file: !240, line: 234, baseType: !369, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !240, line: 236, baseType: !3537, size: 128, offset: 1152)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !240, line: 236, size: 128, elements: !3538)
!3538 = !{!3539, !3544}
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !240, line: 237, baseType: !3540, size: 128)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3537, file: !240, line: 237, size: 128, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3540, file: !240, line: 241, baseType: !369, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3540, file: !240, line: 249, baseType: !3366, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !240, line: 251, baseType: !3545, size: 128)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3537, file: !240, line: 251, size: 128, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3545, file: !240, line: 252, baseType: !369, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3545, file: !240, line: 253, baseType: !369, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3463, file: !240, line: 261, baseType: !369, size: 64, offset: 1280)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3463, file: !240, line: 262, baseType: !369, size: 64, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3463, file: !240, line: 268, baseType: !369, size: 64, offset: 1408)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3463, file: !240, line: 269, baseType: !369, size: 64, offset: 1472)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2828, file: !240, line: 738, baseType: !3215, size: 64, offset: 4416)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2828, file: !240, line: 744, baseType: !3263, size: 64, offset: 4480)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2828, file: !240, line: 745, baseType: !667, size: 64, offset: 4544)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2828, file: !240, line: 751, baseType: !669, size: 64, offset: 4608)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2828, file: !240, line: 752, baseType: !669, size: 64, offset: 4672)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2828, file: !240, line: 757, baseType: !674, size: 256, offset: 4736)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2828, file: !240, line: 758, baseType: !107, size: 128, offset: 4992)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2828, file: !240, line: 759, baseType: !2827, size: 64, offset: 5120)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2828, file: !240, line: 761, baseType: !32, size: 32, offset: 5184)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2828, file: !240, line: 762, baseType: !32, size: 32, offset: 5216)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2828, file: !240, line: 764, baseType: !107, size: 128, offset: 5248)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2828, file: !240, line: 765, baseType: !300, size: 64, offset: 5376)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2828, file: !240, line: 768, baseType: !674, size: 256, offset: 5440)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2828, file: !240, line: 769, baseType: !59, size: 32, offset: 5696)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2828, file: !240, line: 771, baseType: !3337, size: 64, offset: 5760)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2828, file: !240, line: 772, baseType: !107, size: 128, offset: 5824)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2828, file: !240, line: 773, baseType: !49, size: 64, offset: 5952)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2828, file: !240, line: 774, baseType: !32, size: 32, offset: 6016)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2828, file: !240, line: 777, baseType: !64, size: 192, offset: 6080)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2828, file: !240, line: 778, baseType: !3573, size: 64, offset: 6272)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !249, line: 1083, size: 384, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579, !3580, !3581}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3574, file: !249, line: 1084, baseType: !691, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3574, file: !249, line: 1085, baseType: !32, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3574, file: !249, line: 1086, baseType: !32, size: 32, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3574, file: !249, line: 1087, baseType: !3573, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3574, file: !249, line: 1088, baseType: !646, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3574, file: !249, line: 1089, baseType: !654, size: 128, align: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2828, file: !240, line: 781, baseType: !18, size: 32, offset: 6336)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2828, file: !240, line: 782, baseType: !18, size: 32, offset: 6368)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2828, file: !240, line: 783, baseType: !18, size: 32, offset: 6400)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2828, file: !240, line: 784, baseType: !18, size: 32, offset: 6432)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2828, file: !240, line: 785, baseType: !49, size: 64, offset: 6464)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2828, file: !240, line: 786, baseType: !3588, size: 256, offset: 6528)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3589, line: 17, size: 256, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3590 = !{!3591, !3592, !3597}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3588, file: !3589, line: 18, baseType: !326, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3588, file: !3589, line: 19, baseType: !3593, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3588, file: !3589, line: 20, baseType: !3598, size: 64, offset: 192)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3599, line: 16, size: 64, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3600 = !{!3601}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3598, file: !3599, line: 17, baseType: !300, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2828, file: !240, line: 787, baseType: !654, size: 128, align: 64, offset: 6784)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2828, file: !240, line: 788, baseType: !18, size: 32, offset: 6912)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2828, file: !240, line: 789, baseType: !3598, size: 64, offset: 6976)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2828, file: !240, line: 791, baseType: !59, size: 32, offset: 7040)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2828, file: !240, line: 794, baseType: !3607, size: 192, offset: 7104)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !240, line: 579, size: 192, elements: !3608)
!3608 = !{!3609, !3610, !3611}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3607, file: !240, line: 580, baseType: !107, size: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3607, file: !240, line: 581, baseType: !461, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3607, file: !240, line: 582, baseType: !18, size: 32, offset: 160)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2828, file: !240, line: 796, baseType: !3613, size: 64, offset: 7296)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !240, line: 585, size: 128, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3614, file: !240, line: 586, baseType: !49, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3614, file: !240, line: 587, baseType: !49, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2828, file: !240, line: 797, baseType: !49, size: 64, offset: 7360)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2828, file: !240, line: 800, baseType: !2827, size: 64, offset: 7424)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2828, file: !240, line: 802, baseType: !3301, size: 64, offset: 7488)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2828, file: !240, line: 803, baseType: !654, size: 128, align: 64, offset: 7552)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2828, file: !240, line: 805, baseType: !742, size: 64, offset: 7680)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2828, file: !240, line: 806, baseType: !369, size: 64, offset: 7744)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2828, file: !240, line: 808, baseType: !669, size: 64, offset: 7808)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2828, file: !240, line: 810, baseType: !3626, size: 64, offset: 7872)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!369}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2828, file: !240, line: 811, baseType: !3630, size: 64, offset: 7936)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !240, line: 605, baseType: !3631)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !2827, !3634, !3739}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !240, line: 1148, size: 2048, align: 512, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3646, !3647, !3648, !3653, !3654, !3661, !3682, !3704, !3714, !3732, !3733, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3635, file: !240, line: 1153, baseType: !369, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3635, file: !240, line: 1154, baseType: !369, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3635, file: !240, line: 1155, baseType: !369, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3635, file: !240, line: 1161, baseType: !369, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3635, file: !240, line: 1165, baseType: !3642, size: 64, offset: 256)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3635, file: !240, line: 1162, size: 64, elements: !3643)
!3643 = !{!3644, !3645}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3642, file: !240, line: 1163, baseType: !311, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3642, file: !240, line: 1164, baseType: !311, size: 32, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3635, file: !240, line: 1166, baseType: !369, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3635, file: !240, line: 1167, baseType: !369, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3635, file: !240, line: 1171, baseType: !3649, size: 64, offset: 448)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3635, file: !240, line: 1168, size: 64, elements: !3650)
!3650 = !{!3651, !3652}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3649, file: !240, line: 1169, baseType: !311, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3649, file: !240, line: 1170, baseType: !311, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3635, file: !240, line: 1177, baseType: !369, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3635, file: !240, line: 1178, baseType: !3655, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !240, line: 67, size: 64, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3656, file: !240, line: 68, baseType: !370, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3656, file: !240, line: 69, baseType: !3660, offset: 64)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !1062)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3635, file: !240, line: 1179, baseType: !3662, size: 64, offset: 640)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !240, line: 93, size: 256, elements: !3664)
!3664 = !{!3665, !3681}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3663, file: !240, line: 94, baseType: !3666, size: 224)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !240, line: 83, size: 224, elements: !3667)
!3667 = !{!3668, !3674, !3679, !3680}
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3666, file: !240, line: 84, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3666, file: !240, line: 84, size: 64, elements: !3670)
!3670 = !{!3671, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3669, file: !240, line: 85, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3669, file: !240, line: 86, baseType: !49, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3666, file: !240, line: 88, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !240, line: 80, baseType: !3676)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!49, !30, !2127, !49, !49}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3666, file: !240, line: 89, baseType: !30, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3666, file: !240, line: 90, baseType: !311, size: 32, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3663, file: !240, line: 95, baseType: !311, size: 32, offset: 224)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3635, file: !240, line: 1180, baseType: !3683, size: 64, offset: 704)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !240, line: 123, size: 128, elements: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3684, file: !240, line: 124, baseType: !370, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3684, file: !240, line: 125, baseType: !370, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3684, file: !240, line: 126, baseType: !3689, offset: 128)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3690, elements: !1062)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3377, line: 1415, size: 192, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3690, file: !3377, line: 1416, baseType: !370, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3690, file: !3377, line: 1417, baseType: !370, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3690, file: !3377, line: 1418, baseType: !370, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3690, file: !3377, line: 1419, baseType: !370, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3690, file: !3377, line: 1420, baseType: !370, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3690, file: !3377, line: 1421, baseType: !370, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3690, file: !3377, line: 1422, baseType: !370, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3690, file: !3377, line: 1423, baseType: !370, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3690, file: !3377, line: 1424, baseType: !370, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3690, file: !3377, line: 1425, baseType: !370, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3690, file: !3377, line: 1426, baseType: !370, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3690, file: !3377, line: 1427, baseType: !370, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3635, file: !240, line: 1181, baseType: !3705, size: 64, offset: 768)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3377, line: 1430, size: 64, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3705, file: !3377, line: 1431, baseType: !370, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3705, file: !3377, line: 1433, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3705, file: !3377, line: 1433, size: 64, elements: !3710)
!3710 = !{!3711, !3712, !3713}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3709, file: !3377, line: 1434, baseType: !312, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3709, file: !3377, line: 1435, baseType: !104, size: 16, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3709, file: !3377, line: 1436, baseType: !104, size: 16, offset: 48)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3635, file: !240, line: 1182, baseType: !3715, size: 64, offset: 832)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3377, line: 1267, size: 64, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3715, file: !3377, line: 1268, baseType: !370, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !3377, line: 1269, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3715, file: !3377, line: 1269, size: 64, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3719, file: !3377, line: 1270, baseType: !370, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3719, file: !3377, line: 1271, baseType: !370, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3719, file: !3377, line: 1272, baseType: !370, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3719, file: !3377, line: 1273, baseType: !370, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3719, file: !3377, line: 1274, baseType: !370, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3719, file: !3377, line: 1275, baseType: !370, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3719, file: !3377, line: 1276, baseType: !370, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3719, file: !3377, line: 1277, baseType: !370, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3719, file: !3377, line: 1278, baseType: !370, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3719, file: !3377, line: 1279, baseType: !370, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3719, file: !3377, line: 1280, baseType: !370, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3635, file: !240, line: 1183, baseType: !369, size: 64, offset: 896)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3635, file: !240, line: 1185, baseType: !3734, size: 128, offset: 960)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3735, line: 7, size: 128, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3734, file: !3735, line: 8, baseType: !370, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3734, file: !3735, line: 9, baseType: !3739, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3741, line: 103, size: 1344, elements: !3742)
!3741 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3771, !3772, !3773}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3740, file: !3741, line: 109, baseType: !49, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3740, file: !3741, line: 110, baseType: !49, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3740, file: !3741, line: 111, baseType: !49, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3740, file: !3741, line: 112, baseType: !49, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3740, file: !3741, line: 113, baseType: !49, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3740, file: !3741, line: 114, baseType: !49, size: 64, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3740, file: !3741, line: 117, baseType: !49, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3740, file: !3741, line: 118, baseType: !49, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3740, file: !3741, line: 119, baseType: !49, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3740, file: !3741, line: 120, baseType: !49, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3740, file: !3741, line: 121, baseType: !49, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3740, file: !3741, line: 122, baseType: !49, size: 64, offset: 704)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3740, file: !3741, line: 123, baseType: !49, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3740, file: !3741, line: 124, baseType: !49, size: 64, offset: 832)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3740, file: !3741, line: 125, baseType: !49, size: 64, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3740, file: !3741, line: 139, baseType: !49, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3740, file: !3741, line: 142, baseType: !49, size: 64, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3740, file: !3741, line: 144, baseType: !3761, size: 64, offset: 1088)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3740, file: !3741, line: 144, size: 64, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3761, file: !3741, line: 146, baseType: !103, size: 16)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3761, file: !3741, line: 148, baseType: !369, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3761, file: !3741, line: 150, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3741, line: 59, size: 64, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3766, file: !3741, line: 61, baseType: !369, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3766, file: !3741, line: 63, baseType: !369, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3766, file: !3741, line: 65, baseType: !369, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3740, file: !3741, line: 153, baseType: !49, size: 64, offset: 1152)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3740, file: !3741, line: 154, baseType: !49, size: 64, offset: 1216)
!3773 = !DIDerivedType(tag: DW_TAG_member, scope: !3740, file: !3741, line: 156, baseType: !3774, size: 64, offset: 1280)
!3774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3740, file: !3741, line: 156, size: 64, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3774, file: !3741, line: 158, baseType: !103, size: 16)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3774, file: !3741, line: 160, baseType: !369, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3774, file: !3741, line: 162, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3741, line: 69, size: 64, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3779, file: !3741, line: 71, baseType: !369, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3779, file: !3741, line: 73, baseType: !369, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3779, file: !3741, line: 75, baseType: !369, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3779, file: !3741, line: 77, baseType: !369, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3779, file: !3741, line: 80, baseType: !369, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3779, file: !3741, line: 83, baseType: !369, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3779, file: !3741, line: 86, baseType: !369, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3779, file: !3741, line: 88, baseType: !369, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3779, file: !3741, line: 93, baseType: !369, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3779, file: !3741, line: 100, baseType: !369, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3635, file: !240, line: 1186, baseType: !3734, size: 128, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3635, file: !240, line: 1187, baseType: !369, size: 64, offset: 1216)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3635, file: !240, line: 1189, baseType: !369, size: 64, offset: 1280)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3635, file: !240, line: 1190, baseType: !369, size: 64, offset: 1344)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3635, file: !240, line: 1191, baseType: !369, size: 64, offset: 1408)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3635, file: !240, line: 1192, baseType: !369, size: 64, offset: 1472)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3635, file: !240, line: 1193, baseType: !369, size: 64, offset: 1536)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3635, file: !240, line: 1194, baseType: !369, size: 64, offset: 1600)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3635, file: !240, line: 1195, baseType: !369, size: 64, offset: 1664)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2828, file: !240, line: 812, baseType: !30, size: 64, offset: 8000)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2828, file: !240, line: 820, baseType: !2621, size: 64, offset: 8064)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2828, file: !240, line: 821, baseType: !2808, size: 64, offset: 8128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2828, file: !240, line: 828, baseType: !3804, size: 64, offset: 8192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !240, line: 1046, size: 1664, elements: !3806)
!3806 = !{!3807, !4065}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3805, file: !240, line: 1047, baseType: !3808, size: 1600)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3809, line: 152, size: 1600, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3810 = !{!3811, !3921, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4064}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3808, file: !3809, line: 154, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3809, line: 389, size: 7872, elements: !3814)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3834, !3835, !3839, !3840, !3841, !3842, !3843, !3848, !3864, !3865, !3867, !3868, !3869, !3891, !3892, !3893, !3894, !3900, !3901, !3902, !3903, !3904, !3908, !3911, !3912, !3919}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3813, file: !3809, line: 391, baseType: !3808, size: 1600)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3813, file: !3809, line: 393, baseType: !49, size: 64, offset: 1600)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3813, file: !3809, line: 401, baseType: !32, size: 32, offset: 1664)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3813, file: !3809, line: 404, baseType: !32, size: 32, offset: 1696)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3813, file: !3809, line: 417, baseType: !32, size: 32, offset: 1728)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3813, file: !3809, line: 418, baseType: !32, size: 32, offset: 1760)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3813, file: !3809, line: 419, baseType: !32, size: 32, offset: 1792)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3813, file: !3809, line: 432, baseType: !32, size: 32, offset: 1824)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3813, file: !3809, line: 433, baseType: !32, size: 32, offset: 1856)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3813, file: !3809, line: 434, baseType: !32, size: 32, offset: 1888)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3813, file: !3809, line: 436, baseType: !32, size: 32, offset: 1920)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3813, file: !3809, line: 439, baseType: !18, size: 32, offset: 1952)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3813, file: !3809, line: 441, baseType: !2146, size: 64, offset: 1984)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3813, file: !3809, line: 442, baseType: !3829, size: 448, offset: 2048)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3809, line: 138, size: 448, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3829, file: !3809, line: 140, baseType: !2146, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3829, file: !3809, line: 141, baseType: !49, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3829, file: !3809, line: 142, baseType: !2541, size: 320, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3813, file: !3809, line: 443, baseType: !3829, size: 448, offset: 2496)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3813, file: !3809, line: 446, baseType: !3836, offset: 2944)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3829, elements: !3837)
!3837 = !{!3838}
!3838 = !DISubrange(count: 0)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3813, file: !3809, line: 455, baseType: !103, size: 16, offset: 2944)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3813, file: !3809, line: 456, baseType: !103, size: 16, offset: 2960)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3813, file: !3809, line: 457, baseType: !103, size: 16, offset: 2976)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3813, file: !3809, line: 458, baseType: !103, size: 16, offset: 2992)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3813, file: !3809, line: 461, baseType: !3844, size: 896, offset: 3008)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 896, elements: !3846)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3846 = !{!3847}
!3847 = !DISubrange(count: 14)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3813, file: !3809, line: 463, baseType: !3849, size: 64, offset: 3904)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3809, line: 537, size: 41664, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3850, file: !3809, line: 538, baseType: !2166, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3850, file: !3809, line: 541, baseType: !18, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3850, file: !3809, line: 544, baseType: !32, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3850, file: !3809, line: 547, baseType: !107, size: 128, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3850, file: !3809, line: 548, baseType: !654, size: 128, align: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3850, file: !3809, line: 555, baseType: !3813, size: 7872, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3850, file: !3809, line: 558, baseType: !3812, size: 64, offset: 8256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3850, file: !3809, line: 561, baseType: !59, size: 32, offset: 8320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !3809, line: 564, baseType: !18, size: 32, offset: 8352)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3850, file: !3809, line: 567, baseType: !2770, size: 32768, offset: 8384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !3809, line: 570, baseType: !3863, size: 512, offset: 41152)
!3863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1490)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3813, file: !3809, line: 469, baseType: !107, size: 128, offset: 3968)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3813, file: !3809, line: 478, baseType: !3866, size: 1792, offset: 4096)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1792, elements: !3846)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3813, file: !3809, line: 487, baseType: !3812, size: 64, offset: 5888)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3813, file: !3809, line: 488, baseType: !3812, size: 64, offset: 5952)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3813, file: !3809, line: 491, baseType: !3870, size: 64, offset: 6016)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3809, line: 327, size: 896, elements: !3872)
!3872 = !{!3873, !3876, !3886, !3887, !3888, !3889, !3890}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3871, file: !3809, line: 332, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3875, line: 64, elements: !639)
!3875 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3871, file: !3809, line: 333, baseType: !3877, size: 192)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3809, line: 299, size: 192, elements: !3878)
!3878 = !{!3879}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3877, file: !3809, line: 300, baseType: !3880, size: 192)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3881, line: 17, size: 192, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3880, file: !3881, line: 18, baseType: !369, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3880, file: !3881, line: 19, baseType: !369, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3880, file: !3881, line: 20, baseType: !371, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3871, file: !3809, line: 339, baseType: !3877, size: 192, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3871, file: !3809, line: 347, baseType: !3877, size: 192, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3871, file: !3809, line: 353, baseType: !3877, size: 192, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3871, file: !3809, line: 366, baseType: !3812, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3871, file: !3809, line: 367, baseType: !3812, size: 64, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3813, file: !3809, line: 492, baseType: !107, size: 128, offset: 6080)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3813, file: !3809, line: 495, baseType: !3877, size: 192, offset: 6208)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3813, file: !3809, line: 496, baseType: !3877, size: 192, offset: 6400)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3813, file: !3809, line: 497, baseType: !3895, size: 192, offset: 6592)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !302, line: 324, size: 192, elements: !3896)
!3896 = !{!3897, !3898, !3899}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3895, file: !302, line: 326, baseType: !369, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3895, file: !302, line: 327, baseType: !369, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !302, line: 328, baseType: !461, size: 32, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3813, file: !3809, line: 503, baseType: !107, size: 128, offset: 6784)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3813, file: !3809, line: 504, baseType: !674, size: 256, offset: 6912)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3813, file: !3809, line: 507, baseType: !64, size: 192, offset: 7168)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3813, file: !3809, line: 510, baseType: !958, size: 256, offset: 7360)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3813, file: !3809, line: 513, baseType: !3905, size: 64, offset: 7616)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3907, line: 214, elements: !639)
!3907 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3813, file: !3809, line: 516, baseType: !3909, offset: 7680)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3910, line: 76, elements: !639)
!3910 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3813, file: !3809, line: 519, baseType: !59, size: 32, offset: 7680)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3813, file: !3809, line: 522, baseType: !3913, size: 128, offset: 7712)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3809, line: 370, size: 128, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3913, file: !3809, line: 372, baseType: !831, size: 8)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3913, file: !3809, line: 375, baseType: !32, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3913, file: !3809, line: 380, baseType: !32, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3913, file: !3809, line: 386, baseType: !32, size: 32, offset: 96)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3813, file: !3809, line: 529, baseType: !3920, offset: 7872)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3812, elements: !1062)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3808, file: !3809, line: 157, baseType: !3922, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3809, line: 669, size: 1984, elements: !3924)
!3924 = !{!3925, !3929, !3933, !3937, !3938, !3939, !3940, !3944, !3948, !3949, !3955, !3959, !3960, !3961, !3990, !3994, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4047, !4048}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3923, file: !3809, line: 670, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3845, !3845}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3923, file: !3809, line: 671, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!32, !3845}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3923, file: !3809, line: 672, baseType: !3934, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3845}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3923, file: !3809, line: 673, baseType: !3934, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3923, file: !3809, line: 674, baseType: !3934, size: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3923, file: !3809, line: 675, baseType: !3934, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3923, file: !3809, line: 676, baseType: !3941, size: 64, offset: 384)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !3845, !32}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3923, file: !3809, line: 677, baseType: !3945, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!32, !2191, !3845}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3923, file: !3809, line: 679, baseType: !3945, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3923, file: !3809, line: 682, baseType: !3950, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!32, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3809, line: 30, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3923, file: !3809, line: 683, baseType: !3956, size: 64, offset: 640)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3953}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3923, file: !3809, line: 684, baseType: !3956, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3923, file: !3809, line: 685, baseType: !2715, size: 64, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3923, file: !3809, line: 686, baseType: !3962, size: 64, offset: 832)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!32, !300, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3809, line: 209, size: 4736, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3966, file: !3809, line: 215, baseType: !3844, size: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3966, file: !3809, line: 218, baseType: !317, size: 32, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3966, file: !3809, line: 226, baseType: !3965, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3966, file: !3809, line: 229, baseType: !3812, size: 64, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3966, file: !3809, line: 232, baseType: !32, size: 32, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3966, file: !3809, line: 241, baseType: !107, size: 128, offset: 1152)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3966, file: !3809, line: 242, baseType: !107, size: 128, offset: 1280)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3966, file: !3809, line: 243, baseType: !107, size: 128, offset: 1408)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3966, file: !3809, line: 246, baseType: !107, size: 128, offset: 1536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3966, file: !3809, line: 255, baseType: !3866, size: 1792, offset: 1664)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3966, file: !3809, line: 258, baseType: !107, size: 128, offset: 3456)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3966, file: !3809, line: 259, baseType: !107, size: 128, offset: 3584)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3966, file: !3809, line: 265, baseType: !726, size: 128, offset: 3712)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3966, file: !3809, line: 271, baseType: !107, size: 128, offset: 3840)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3966, file: !3809, line: 277, baseType: !107, size: 128, offset: 3968)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3966, file: !3809, line: 278, baseType: !107, size: 128, offset: 4096)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3966, file: !3809, line: 279, baseType: !107, size: 128, offset: 4224)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3966, file: !3809, line: 288, baseType: !3812, size: 64, offset: 4352)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3966, file: !3809, line: 289, baseType: !3812, size: 64, offset: 4416)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3966, file: !3809, line: 290, baseType: !3965, size: 64, offset: 4480)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3966, file: !3809, line: 293, baseType: !831, size: 8, offset: 4544)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3966, file: !3809, line: 296, baseType: !654, size: 128, align: 64, offset: 4608)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3923, file: !3809, line: 688, baseType: !3991, size: 64, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !300, !3965}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3923, file: !3809, line: 689, baseType: !3995, size: 64, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !300}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3923, file: !3809, line: 690, baseType: !3995, size: 64, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3923, file: !3809, line: 691, baseType: !3995, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3923, file: !3809, line: 692, baseType: !3934, size: 64, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3923, file: !3809, line: 694, baseType: !831, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3923, file: !3809, line: 707, baseType: !831, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3923, file: !3809, line: 719, baseType: !831, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3923, file: !3809, line: 722, baseType: !32, size: 32, offset: 1248)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3923, file: !3809, line: 723, baseType: !27, size: 64, offset: 1280)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3923, file: !3809, line: 726, baseType: !27, size: 64, offset: 1344)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3923, file: !3809, line: 729, baseType: !3849, size: 64, offset: 1408)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3923, file: !3809, line: 732, baseType: !747, size: 192, offset: 1472)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3923, file: !3809, line: 738, baseType: !107, size: 128, offset: 1664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3923, file: !3809, line: 744, baseType: !4011, size: 64, offset: 1792)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3809, line: 580, size: 1728, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4023, !4024, !4025, !4029, !4033, !4034, !4035, !4036, !4037, !4041, !4045, !4046}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !3809, line: 586, baseType: !3863, size: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4012, file: !3809, line: 587, baseType: !49, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4012, file: !3809, line: 593, baseType: !45, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4012, file: !3809, line: 596, baseType: !18, size: 32, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4012, file: !3809, line: 604, baseType: !18, size: 32, offset: 672)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4012, file: !3809, line: 610, baseType: !3922, size: 64, offset: 704)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4012, file: !3809, line: 611, baseType: !107, size: 128, offset: 768)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4012, file: !3809, line: 612, baseType: !4022, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4012, file: !3809, line: 614, baseType: !2182, size: 64, offset: 960)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4012, file: !3809, line: 615, baseType: !2240, size: 64, offset: 1024)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4012, file: !3809, line: 621, baseType: !4026, size: 64, offset: 1088)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!369, !3845, !4011}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4012, file: !3809, line: 625, baseType: !4030, size: 64, offset: 1152)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!380, !3845, !4011}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4012, file: !3809, line: 628, baseType: !2221, size: 64, offset: 1216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4012, file: !3809, line: 631, baseType: !2209, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4012, file: !3809, line: 632, baseType: !2217, size: 64, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4012, file: !3809, line: 633, baseType: !2213, size: 64, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4012, file: !3809, line: 640, baseType: !4038, size: 64, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!32, !3845, !4011, !369}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4012, file: !3809, line: 645, baseType: !4042, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!32, !3845, !4011, !380}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4012, file: !3809, line: 654, baseType: !2248, size: 64, offset: 1600)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4012, file: !3809, line: 657, baseType: !2255, size: 64, offset: 1664)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3923, file: !3809, line: 745, baseType: !4011, size: 64, offset: 1856)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3923, file: !3809, line: 754, baseType: !18, size: 32, offset: 1920)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3808, file: !3809, line: 160, baseType: !1635, size: 128, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3808, file: !3809, line: 163, baseType: !107, size: 128, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3808, file: !3809, line: 164, baseType: !107, size: 128, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3808, file: !3809, line: 167, baseType: !107, size: 128, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3808, file: !3809, line: 173, baseType: !32, size: 32, offset: 640)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !3809, line: 175, baseType: !18, size: 32, offset: 672)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3808, file: !3809, line: 183, baseType: !369, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3808, file: !3809, line: 189, baseType: !59, size: 32, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3808, file: !3809, line: 192, baseType: !958, size: 256, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3808, file: !3809, line: 193, baseType: !4059, size: 448, offset: 1088)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !959, line: 120, size: 448, elements: !4060)
!4060 = !{!4061, !4062, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4059, file: !959, line: 121, baseType: !958, size: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4059, file: !959, line: 122, baseType: !654, size: 128, align: 64, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4059, file: !959, line: 125, baseType: !2603, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3808, file: !3809, line: 199, baseType: !3845, size: 64, offset: 1536)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3805, file: !240, line: 1048, baseType: !4066, size: 64, offset: 1600)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !240, line: 1039, size: 256, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4067, file: !240, line: 1040, baseType: !369, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4067, file: !240, line: 1041, baseType: !369, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4067, file: !240, line: 1042, baseType: !369, size: 64, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4067, file: !240, line: 1043, baseType: !32, size: 32, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2828, file: !240, line: 832, baseType: !30, size: 64, offset: 8256)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2828, file: !240, line: 834, baseType: !107, size: 128, offset: 8320)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2828, file: !240, line: 842, baseType: !312, size: 32, offset: 8448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1435, file: !126, line: 524, baseType: !18, size: 32, offset: 8320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1435, file: !126, line: 525, baseType: !4078, size: 64, offset: 8384)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4081, line: 28, size: 192, elements: !4082)
!4081 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4082 = !{!4083, !4084, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4080, file: !4081, line: 29, baseType: !27, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4080, file: !4081, line: 30, baseType: !27, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4080, file: !4081, line: 31, baseType: !49, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1435, file: !126, line: 526, baseType: !18, size: 32, offset: 8448)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1435, file: !126, line: 533, baseType: !30, size: 64, offset: 8512)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1435, file: !126, line: 534, baseType: !18, size: 32, offset: 8576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1435, file: !126, line: 535, baseType: !4090, size: 64, offset: 8640)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1435, file: !126, line: 536, baseType: !18, size: 32, offset: 8704)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1435, file: !126, line: 539, baseType: !32, size: 32, offset: 8736)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1435, file: !126, line: 540, baseType: !2704, size: 64, offset: 8768)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1435, file: !126, line: 563, baseType: !107, size: 128, offset: 8832)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1435, file: !126, line: 565, baseType: !107, size: 128, offset: 8960)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1435, file: !126, line: 568, baseType: !2715, size: 64, offset: 9088)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1435, file: !126, line: 570, baseType: !59, size: 32, offset: 9152)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1411, file: !249, line: 2382, baseType: !1410, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1411, file: !249, line: 2383, baseType: !722, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1411, file: !249, line: 2385, baseType: !4101, offset: 576)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2570, line: 206, elements: !639)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1411, file: !249, line: 2386, baseType: !4101, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1411, file: !249, line: 2387, baseType: !4101, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1411, file: !249, line: 2388, baseType: !4105, offset: 576)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4101, elements: !710)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1411, file: !249, line: 2390, baseType: !4101, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1411, file: !249, line: 2391, baseType: !4101, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1411, file: !249, line: 2392, baseType: !4101, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1411, file: !249, line: 2393, baseType: !4101, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1402, file: !249, line: 1197, baseType: !4111, size: 64, offset: 384)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !249, line: 2057, size: 1664, elements: !4114)
!4114 = !{!4115, !4119, !4123, !4124, !4128, !4132, !4136, !4137, !4138, !4142, !4146, !4150, !4151, !4152, !4158, !4162, !4163, !4167, !4168, !4169, !4170, !4174, !4178, !4225, !4240, !4241}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4113, file: !249, line: 2058, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!1200, !1401}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4113, file: !249, line: 2059, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !1200}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4113, file: !249, line: 2060, baseType: !4120, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4113, file: !249, line: 2062, baseType: !4125, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !1200, !32}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4113, file: !249, line: 2063, baseType: !4129, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!32, !1200, !1858}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4113, file: !249, line: 2064, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!32, !1200}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4113, file: !249, line: 2065, baseType: !4120, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4113, file: !249, line: 2066, baseType: !1430, size: 64, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4113, file: !249, line: 2067, baseType: !4139, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!32, !1401, !32}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4113, file: !249, line: 2068, baseType: !4143, size: 64, offset: 576)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!32, !1401, !248}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4113, file: !249, line: 2069, baseType: !4147, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!32, !1401}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4113, file: !249, line: 2070, baseType: !4143, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4113, file: !249, line: 2071, baseType: !4147, size: 64, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4113, file: !249, line: 2072, baseType: !4153, size: 64, offset: 832)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!32, !1165, !4156}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !249, line: 62, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4113, file: !249, line: 2073, baseType: !4159, size: 64, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!32, !1401, !2440, !919}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4113, file: !249, line: 2074, baseType: !1430, size: 64, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4113, file: !249, line: 2076, baseType: !4164, size: 64, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!32, !2191, !1165}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4113, file: !249, line: 2077, baseType: !4164, size: 64, offset: 1088)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4113, file: !249, line: 2078, baseType: !4164, size: 64, offset: 1152)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4113, file: !249, line: 2079, baseType: !4164, size: 64, offset: 1216)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4113, file: !249, line: 2081, baseType: !4171, size: 64, offset: 1280)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!1352, !1401, !32, !919, !45, !51}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4113, file: !249, line: 2082, baseType: !4175, size: 64, offset: 1344)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!1352, !1401, !32, !27, !45, !51}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4113, file: !249, line: 2083, baseType: !4179, size: 64, offset: 1408)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!4182, !1200}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !254, line: 296, size: 1664, elements: !4185)
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4210, !4211, !4212}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4184, file: !254, line: 297, baseType: !726, size: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4184, file: !254, line: 298, baseType: !107, size: 128, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4184, file: !254, line: 299, baseType: !107, size: 128, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4184, file: !254, line: 300, baseType: !107, size: 128, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4184, file: !254, line: 301, baseType: !674, size: 256, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4184, file: !254, line: 302, baseType: !69, size: 32, offset: 768)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4184, file: !254, line: 303, baseType: !59, size: 32, offset: 800)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4184, file: !254, line: 304, baseType: !1401, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4184, file: !254, line: 305, baseType: !4195, size: 64, offset: 896)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !254, line: 68, size: 64, elements: !4196)
!4196 = !{!4197, !4209}
!4197 = !DIDerivedType(tag: DW_TAG_member, scope: !4195, file: !254, line: 69, baseType: !4198, size: 32)
!4198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4195, file: !254, line: 69, size: 32, elements: !4199)
!4199 = !{!4200, !4201, !4202}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4198, file: !254, line: 70, baseType: !804, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4198, file: !254, line: 71, baseType: !812, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4198, file: !254, line: 72, baseType: !4203, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4204, line: 24, baseType: !4205)
!4204 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4204, line: 22, size: 32, elements: !4206)
!4206 = !{!4207}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4205, file: !4204, line: 23, baseType: !4208, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4204, line: 20, baseType: !810)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4195, file: !254, line: 74, baseType: !253, size: 32, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4184, file: !254, line: 306, baseType: !51, size: 64, offset: 960)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4184, file: !254, line: 307, baseType: !49, size: 64, offset: 1024)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4184, file: !254, line: 308, baseType: !4213, size: 576, offset: 1088)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !254, line: 205, size: 576, elements: !4214)
!4214 = !{!4215, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4213, file: !254, line: 206, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !254, line: 66, baseType: !53)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4213, file: !254, line: 207, baseType: !4216, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4213, file: !254, line: 208, baseType: !4216, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4213, file: !254, line: 209, baseType: !4216, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4213, file: !254, line: 210, baseType: !4216, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4213, file: !254, line: 211, baseType: !4216, size: 64, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4213, file: !254, line: 212, baseType: !4216, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4213, file: !254, line: 213, baseType: !867, size: 64, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4213, file: !254, line: 214, baseType: !867, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4113, file: !249, line: 2085, baseType: !4226, size: 64, offset: 1472)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!297, !1401, !4229}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4231, line: 15, size: 256, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4232 = !{!4233, !4234, !4235, !4236, !4237}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4230, file: !4231, line: 16, baseType: !756, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4230, file: !4231, line: 19, baseType: !32, size: 32, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4230, file: !4231, line: 26, baseType: !49, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4230, file: !4231, line: 33, baseType: !49, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4230, file: !4231, line: 36, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !141, line: 33, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4113, file: !249, line: 2087, baseType: !4226, size: 64, offset: 1536)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4113, file: !249, line: 2089, baseType: !1430, size: 64, offset: 1600)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1402, file: !249, line: 1198, baseType: !4243, size: 64, offset: 448)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !254, line: 324, size: 704, elements: !4246)
!4246 = !{!4247, !4251, !4255, !4259, !4260, !4261, !4262, !4263, !4268, !4273, !4277}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4245, file: !254, line: 325, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!32, !4183}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4245, file: !254, line: 326, baseType: !4252, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!4183, !1401, !32}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4245, file: !254, line: 327, baseType: !4256, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4183}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4245, file: !254, line: 328, baseType: !4248, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4245, file: !254, line: 329, baseType: !4248, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4245, file: !254, line: 330, baseType: !4248, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4245, file: !254, line: 331, baseType: !4139, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4245, file: !254, line: 334, baseType: !4264, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!4267, !1200}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4245, file: !254, line: 335, baseType: !4269, size: 64, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!32, !1200, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4245, file: !254, line: 337, baseType: !4274, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!32, !1200, !4267}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4245, file: !254, line: 339, baseType: !4278, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!32, !1401, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1402, file: !249, line: 1199, baseType: !4283, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !254, line: 430, size: 704, elements: !4286)
!4286 = !{!4287, !4291, !4292, !4296, !4297, !4298, !4313, !4336, !4340, !4341, !4364}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4285, file: !254, line: 431, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!32, !1401, !32, !32, !1321}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4285, file: !254, line: 432, baseType: !4139, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4285, file: !254, line: 433, baseType: !4293, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!32, !1401, !18}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4285, file: !254, line: 434, baseType: !4293, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4285, file: !254, line: 435, baseType: !4139, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4285, file: !254, line: 436, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!32, !1401, !32, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !254, line: 417, size: 256, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4303, file: !254, line: 418, baseType: !32, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4303, file: !254, line: 419, baseType: !18, size: 32, offset: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4303, file: !254, line: 420, baseType: !18, size: 32, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4303, file: !254, line: 422, baseType: !18, size: 32, offset: 96)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4303, file: !254, line: 423, baseType: !18, size: 32, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4303, file: !254, line: 424, baseType: !18, size: 32, offset: 160)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4303, file: !254, line: 425, baseType: !18, size: 32, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4303, file: !254, line: 426, baseType: !18, size: 32, offset: 224)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4285, file: !254, line: 437, baseType: !4314, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!32, !1401, !4195, !4317}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !254, line: 345, size: 960, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4318, file: !254, line: 346, baseType: !32, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4318, file: !254, line: 347, baseType: !369, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4318, file: !254, line: 348, baseType: !369, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4318, file: !254, line: 349, baseType: !369, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4318, file: !254, line: 350, baseType: !369, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4318, file: !254, line: 351, baseType: !369, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4318, file: !254, line: 352, baseType: !369, size: 64, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4318, file: !254, line: 353, baseType: !380, size: 64, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4318, file: !254, line: 355, baseType: !380, size: 64, offset: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4318, file: !254, line: 356, baseType: !32, size: 32, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4318, file: !254, line: 357, baseType: !32, size: 32, offset: 608)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4318, file: !254, line: 358, baseType: !369, size: 64, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4318, file: !254, line: 359, baseType: !369, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4318, file: !254, line: 360, baseType: !369, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4318, file: !254, line: 361, baseType: !380, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4318, file: !254, line: 362, baseType: !32, size: 32, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4285, file: !254, line: 438, baseType: !4337, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!32, !1401, !4281, !4317}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4285, file: !254, line: 440, baseType: !4314, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4285, file: !254, line: 441, baseType: !4342, size: 64, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!32, !1401, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !254, line: 411, size: 1408, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4346, file: !254, line: 412, baseType: !18, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4346, file: !254, line: 413, baseType: !4350, size: 1344, offset: 64)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4351, size: 1344, elements: !710)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !254, line: 397, size: 448, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4363}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4351, file: !254, line: 398, baseType: !18, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4351, file: !254, line: 399, baseType: !18, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4351, file: !254, line: 401, baseType: !18, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4351, file: !254, line: 402, baseType: !18, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4351, file: !254, line: 403, baseType: !18, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4351, file: !254, line: 404, baseType: !18, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4351, file: !254, line: 405, baseType: !18, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4351, file: !254, line: 406, baseType: !371, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4351, file: !254, line: 407, baseType: !4362, size: 64, offset: 320)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !35, line: 132, baseType: !369)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4351, file: !254, line: 408, baseType: !4362, size: 64, offset: 384)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4285, file: !254, line: 442, baseType: !4293, size: 64, offset: 640)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1402, file: !249, line: 1200, baseType: !4366, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4368)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !249, line: 54, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1402, file: !249, line: 1201, baseType: !49, size: 64, offset: 640)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1402, file: !249, line: 1202, baseType: !49, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1402, file: !249, line: 1203, baseType: !49, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1402, file: !249, line: 1204, baseType: !1165, size: 64, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1402, file: !249, line: 1205, baseType: !851, size: 320, offset: 896)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1402, file: !249, line: 1206, baseType: !32, size: 32, offset: 1216)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1402, file: !249, line: 1207, baseType: !59, size: 32, offset: 1248)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1402, file: !249, line: 1209, baseType: !30, size: 64, offset: 1280)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1402, file: !249, line: 1211, baseType: !4378, size: 64, offset: 1344)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !249, line: 1211, flags: DIFlagFwdDecl)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1402, file: !249, line: 1223, baseType: !4383, size: 64, offset: 1408)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1177, line: 34, size: 64, elements: !4384)
!4384 = !{!4385}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4383, file: !1177, line: 35, baseType: !1180, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1402, file: !249, line: 1224, baseType: !107, size: 128, offset: 1472)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1402, file: !249, line: 1225, baseType: !4388, size: 64, offset: 1600)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !249, line: 1225, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1402, file: !249, line: 1226, baseType: !4391, size: 64, offset: 1664)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !249, line: 1226, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1402, file: !249, line: 1227, baseType: !4394, size: 64, offset: 1728)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !249, line: 50, flags: DIFlagFwdDecl)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1402, file: !249, line: 1228, baseType: !4397, size: 64, offset: 1792)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !249, line: 1228, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1402, file: !249, line: 1229, baseType: !726, size: 128, offset: 1856)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1402, file: !249, line: 1230, baseType: !18, size: 32, offset: 1984)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1402, file: !249, line: 1231, baseType: !4402, size: 2496, offset: 2048)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !254, line: 521, size: 2496, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4408, !4440}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4402, file: !254, line: 522, baseType: !18, size: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4402, file: !254, line: 523, baseType: !851, size: 320, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4402, file: !254, line: 524, baseType: !4407, size: 192, offset: 384)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 192, elements: !710)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4402, file: !254, line: 525, baseType: !4409, size: 1728, offset: 576)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4410, size: 1728, elements: !710)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !254, line: 222, size: 576, elements: !4411)
!4411 = !{!4412, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4410, file: !254, line: 223, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !254, line: 445, size: 256, elements: !4415)
!4415 = !{!4416, !4417, !4430, !4431}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4414, file: !254, line: 446, baseType: !32, size: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4414, file: !254, line: 447, baseType: !4418, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !254, line: 312, size: 512, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4420, file: !254, line: 313, baseType: !4139, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4420, file: !254, line: 314, baseType: !4139, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4420, file: !254, line: 315, baseType: !4139, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4420, file: !254, line: 316, baseType: !4139, size: 64, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4420, file: !254, line: 317, baseType: !4248, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4420, file: !254, line: 318, baseType: !4248, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4420, file: !254, line: 319, baseType: !4248, size: 64, offset: 384)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4420, file: !254, line: 320, baseType: !4278, size: 64, offset: 448)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4414, file: !254, line: 448, baseType: !1434, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4414, file: !254, line: 449, baseType: !4413, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4410, file: !254, line: 224, baseType: !32, size: 32, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4410, file: !254, line: 226, baseType: !107, size: 128, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4410, file: !254, line: 227, baseType: !49, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4410, file: !254, line: 228, baseType: !18, size: 32, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4410, file: !254, line: 229, baseType: !18, size: 32, offset: 352)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4410, file: !254, line: 230, baseType: !4216, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4410, file: !254, line: 231, baseType: !4216, size: 64, offset: 448)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4410, file: !254, line: 232, baseType: !30, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4402, file: !254, line: 526, baseType: !4441, size: 192, offset: 2304)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4418, size: 192, elements: !710)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1402, file: !249, line: 1233, baseType: !4443, size: 2368, offset: 4544)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !249, line: 1184, size: 2368, elements: !4444)
!4444 = !{!4445, !4446, !4447}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4443, file: !249, line: 1185, baseType: !36, size: 16)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4443, file: !249, line: 1186, baseType: !36, size: 16, offset: 16)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4443, file: !249, line: 1187, baseType: !4448, size: 2304, offset: 64)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4449, size: 2304, elements: !710)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4450, line: 12, size: 768, elements: !4451)
!4450 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4451 = !{!4452, !4460, !4461, !4462, !4463}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4449, file: !4450, line: 13, baseType: !4453, size: 384)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4454, line: 17, size: 384, elements: !4455)
!4454 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4455 = !{!4456, !4457, !4458, !4459}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4453, file: !4454, line: 18, baseType: !32, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4453, file: !4454, line: 19, baseType: !32, size: 32, offset: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4453, file: !4454, line: 20, baseType: !64, size: 192, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4453, file: !4454, line: 22, baseType: !654, size: 128, align: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4449, file: !4450, line: 14, baseType: !2392, size: 64, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4449, file: !4450, line: 15, baseType: !3598, size: 64, offset: 448)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4449, file: !4450, line: 16, baseType: !64, size: 192, offset: 512)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4449, file: !4450, line: 17, baseType: !59, size: 32, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1402, file: !249, line: 1240, baseType: !30, size: 64, offset: 6912)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1402, file: !249, line: 1243, baseType: !311, size: 32, offset: 6976)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1402, file: !249, line: 1245, baseType: !867, size: 64, offset: 7040)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1402, file: !249, line: 1246, baseType: !867, size: 64, offset: 7104)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1402, file: !249, line: 1248, baseType: !312, size: 32, offset: 7168)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1402, file: !249, line: 1249, baseType: !4470, size: 64, offset: 7232)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !249, line: 634, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1402, file: !249, line: 1252, baseType: !4473, size: 256, offset: 7296)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4474)
!4474 = !{!4475}
!4475 = !DISubrange(count: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1402, file: !249, line: 1253, baseType: !4477, size: 128, offset: 7552)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4478, line: 21, baseType: !4479)
!4478 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4478, line: 19, size: 128, elements: !4480)
!4480 = !{!4481}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4479, file: !4478, line: 20, baseType: !4482, size: 128)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !4483)
!4483 = !{!4484}
!4484 = !DISubrange(count: 16)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1402, file: !249, line: 1255, baseType: !18, size: 32, offset: 7680)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1402, file: !249, line: 1261, baseType: !674, size: 256, offset: 7744)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1402, file: !249, line: 1267, baseType: !27, size: 64, offset: 8000)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1402, file: !249, line: 1269, baseType: !4489, size: 64, offset: 8064)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1167, line: 128, size: 1024, align: 512, elements: !4492)
!4492 = !{!4493, !4497, !4498, !4505, !4511, !4515, !4519, !4523, !4524, !4528, !4532, !4537, !4541}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4491, file: !1167, line: 129, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!32, !1165, !18}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4491, file: !1167, line: 130, baseType: !4494, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4491, file: !1167, line: 131, baseType: !4499, size: 64, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!32, !4502, !4504}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4491, file: !1167, line: 132, baseType: !4506, size: 64, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!32, !4502, !18, !27, !4509}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4491, file: !1167, line: 134, baseType: !4512, size: 64, offset: 256)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!32, !4502}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4491, file: !1167, line: 135, baseType: !4516, size: 64, offset: 320)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!32, !1165}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4491, file: !1167, line: 136, baseType: !4520, size: 64, offset: 384)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !1165}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4491, file: !1167, line: 137, baseType: !4520, size: 64, offset: 448)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4491, file: !1167, line: 138, baseType: !4525, size: 64, offset: 512)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !1165, !1200}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4491, file: !1167, line: 139, baseType: !4529, size: 64, offset: 576)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!919, !1165, !919, !32}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4491, file: !1167, line: 140, baseType: !4533, size: 64, offset: 640)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!1160, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4491, file: !1167, line: 141, baseType: !4538, size: 64, offset: 704)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!32, !1321, !831}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4491, file: !1167, line: 142, baseType: !4542, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!1165, !1165, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1402, file: !249, line: 1271, baseType: !4548, size: 448, offset: 8128)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4231, line: 63, size: 448, elements: !4549)
!4549 = !{!4550, !4555, !4556, !4557, !4558, !4559, !4560}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4548, file: !4231, line: 64, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!49, !4554, !4229}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4548, file: !4231, line: 66, baseType: !4551, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4548, file: !4231, line: 69, baseType: !297, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4548, file: !4231, line: 70, baseType: !32, size: 32, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4548, file: !4231, line: 71, baseType: !18, size: 32, offset: 224)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4548, file: !4231, line: 74, baseType: !107, size: 128, offset: 256)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4548, file: !4231, line: 85, baseType: !4561, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1402, file: !249, line: 1274, baseType: !667, size: 64, offset: 8576)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1402, file: !249, line: 1280, baseType: !667, size: 64, offset: 8640)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1402, file: !249, line: 1283, baseType: !32, size: 32, offset: 8704)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1402, file: !249, line: 1286, baseType: !2088, size: 32, offset: 8736)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1402, file: !249, line: 1289, baseType: !2603, size: 64, offset: 8768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1402, file: !249, line: 1290, baseType: !722, size: 64, offset: 8832)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1402, file: !249, line: 1297, baseType: !773, size: 64, offset: 8896)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1402, file: !249, line: 1304, baseType: !4570, size: 64, offset: 8960)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4571, line: 49, size: 64, elements: !4572)
!4571 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4572 = !{!4573}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4570, file: !4571, line: 50, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4571, line: 41, size: 512, align: 512, elements: !4576)
!4576 = !{!4577, !4578, !4583}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4575, file: !4571, line: 43, baseType: !69, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4575, file: !4571, line: 45, baseType: !4579, size: 192, offset: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4571, line: 29, size: 192, elements: !4580)
!4580 = !{!4581, !4582}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4579, file: !4571, line: 30, baseType: !107, size: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4579, file: !4571, line: 32, baseType: !297, size: 64, offset: 128)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4575, file: !4571, line: 46, baseType: !297, size: 64, offset: 256)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1402, file: !249, line: 1305, baseType: !4570, size: 64, offset: 9024)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1402, file: !249, line: 1306, baseType: !654, size: 128, align: 64, offset: 9088)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1402, file: !249, line: 1307, baseType: !958, size: 256, offset: 9216)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1402, file: !249, line: 1309, baseType: !674, size: 256, offset: 9472)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1402, file: !249, line: 1314, baseType: !32, size: 32, offset: 9728)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1402, file: !249, line: 1317, baseType: !69, size: 32, align: 512, offset: 10240)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1402, file: !249, line: 1318, baseType: !107, size: 128, offset: 10304)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1402, file: !249, line: 1320, baseType: !69, size: 32, offset: 10432)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1402, file: !249, line: 1321, baseType: !107, size: 128, offset: 10496)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1201, file: !249, line: 656, baseType: !1551, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1201, file: !249, line: 659, baseType: !30, size: 64, offset: 576)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1201, file: !249, line: 663, baseType: !49, size: 64, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !249, line: 671, baseType: !4597, size: 32, offset: 704)
!4597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !249, line: 671, size: 32, elements: !4598)
!4598 = !{!4599, !4600}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4597, file: !249, line: 672, baseType: !2651, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4597, file: !249, line: 673, baseType: !18, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1201, file: !249, line: 675, baseType: !1274, size: 32, offset: 736)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1201, file: !249, line: 676, baseType: !51, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1201, file: !249, line: 677, baseType: !1310, size: 128, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1201, file: !249, line: 678, baseType: !1310, size: 128, offset: 960)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1201, file: !249, line: 679, baseType: !1310, size: 128, offset: 1088)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1201, file: !249, line: 680, baseType: !69, size: 32, offset: 1216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1201, file: !249, line: 681, baseType: !36, size: 16, offset: 1248)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1201, file: !249, line: 682, baseType: !93, size: 8, offset: 1264)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1201, file: !249, line: 683, baseType: !93, size: 8, offset: 1272)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1201, file: !249, line: 684, baseType: !4362, size: 64, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1201, file: !249, line: 691, baseType: !49, size: 64, offset: 1344)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1201, file: !249, line: 692, baseType: !851, size: 320, offset: 1408)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1201, file: !249, line: 694, baseType: !49, size: 64, offset: 1728)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1201, file: !249, line: 695, baseType: !49, size: 64, offset: 1792)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1201, file: !249, line: 697, baseType: !726, size: 128, offset: 1856)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1201, file: !249, line: 698, baseType: !107, size: 128, offset: 1984)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1201, file: !249, line: 707, baseType: !107, size: 128, offset: 2112)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1201, file: !249, line: 708, baseType: !107, size: 128, offset: 2240)
!4619 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !249, line: 709, baseType: !4620, size: 128, offset: 2368)
!4620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !249, line: 709, size: 128, elements: !4621)
!4621 = !{!4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4620, file: !249, line: 710, baseType: !722, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4620, file: !249, line: 711, baseType: !654, size: 128, align: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1201, file: !249, line: 713, baseType: !669, size: 64, offset: 2496)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1201, file: !249, line: 714, baseType: !669, size: 64, offset: 2560)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1201, file: !249, line: 715, baseType: !59, size: 32, offset: 2624)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1201, file: !249, line: 716, baseType: !59, size: 32, offset: 2656)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1201, file: !249, line: 717, baseType: !59, size: 32, offset: 2688)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1201, file: !249, line: 719, baseType: !59, size: 32, offset: 2720)
!4630 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !249, line: 721, baseType: !4631, size: 64, offset: 2752)
!4631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !249, line: 721, size: 64, elements: !4632)
!4632 = !{!4633, !4759}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4631, file: !249, line: 722, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4636)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !249, line: 1914, size: 2112, elements: !4637)
!4637 = !{!4638, !4639, !4643, !4647, !4651, !4652, !4653, !4659, !4672, !4676, !4680, !4681, !4685, !4686, !4690, !4695, !4696, !4700, !4704, !4710, !4711, !4715, !4716, !4722, !4726, !4727, !4732, !4736, !4740, !4744, !4748, !4749, !4755}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4636, file: !249, line: 1915, baseType: !1434, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4636, file: !249, line: 1916, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!51, !646, !51, !32}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4636, file: !249, line: 1917, baseType: !4644, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!1352, !646, !919, !45, !50}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4636, file: !249, line: 1918, baseType: !4648, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!1352, !646, !27, !45, !50}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4636, file: !249, line: 1919, baseType: !1972, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4636, file: !249, line: 1920, baseType: !1972, size: 64, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4636, file: !249, line: 1921, baseType: !4654, size: 64, offset: 384)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!32, !1975, !4657, !18}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !249, line: 53, flags: DIFlagFwdDecl)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4636, file: !249, line: 1923, baseType: !4660, size: 64, offset: 448)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!32, !646, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !249, line: 1858, size: 128, elements: !4665)
!4665 = !{!4666, !4671}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4664, file: !249, line: 1859, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !249, line: 1855, baseType: !4668)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!831, !4663, !27, !32, !51, !369, !18}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4664, file: !249, line: 1860, baseType: !51, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4636, file: !249, line: 1924, baseType: !4673, size: 64, offset: 512)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!2258, !646, !2260}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4636, file: !249, line: 1925, baseType: !4677, size: 64, offset: 576)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!297, !646, !18, !49}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4636, file: !249, line: 1926, baseType: !4677, size: 64, offset: 640)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4636, file: !249, line: 1927, baseType: !4682, size: 64, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!32, !646, !1681}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4636, file: !249, line: 1928, baseType: !49, size: 64, offset: 768)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4636, file: !249, line: 1929, baseType: !4687, size: 64, offset: 832)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!32, !1200, !646}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4636, file: !249, line: 1930, baseType: !4691, size: 64, offset: 896)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!32, !646, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !249, line: 1061, baseType: !30)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4636, file: !249, line: 1931, baseType: !4687, size: 64, offset: 960)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4636, file: !249, line: 1932, baseType: !4697, size: 64, offset: 1024)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!32, !646, !51, !51, !32}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4636, file: !249, line: 1933, baseType: !4701, size: 64, offset: 1088)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!32, !32, !646, !32}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4636, file: !249, line: 1934, baseType: !4705, size: 64, offset: 1152)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!32, !646, !32, !4708}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !249, line: 1063, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4636, file: !249, line: 1935, baseType: !643, size: 64, offset: 1216)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4636, file: !249, line: 1936, baseType: !4712, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!32, !32}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4636, file: !249, line: 1937, baseType: !4705, size: 64, offset: 1344)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4636, file: !249, line: 1938, baseType: !4717, size: 64, offset: 1408)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!1352, !4720, !646, !50, !45, !18}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !302, line: 59, flags: DIFlagFwdDecl)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4636, file: !249, line: 1939, baseType: !4723, size: 64, offset: 1472)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!1352, !646, !50, !4720, !45, !18}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4636, file: !249, line: 1940, baseType: !2078, size: 64, offset: 1536)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4636, file: !249, line: 1941, baseType: !4728, size: 64, offset: 1600)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!32, !646, !32, !4731, !1949}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4636, file: !249, line: 1942, baseType: !4733, size: 64, offset: 1664)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!297, !646, !32, !51, !51}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4636, file: !249, line: 1944, baseType: !4737, size: 64, offset: 1728)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !2191, !646}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4636, file: !249, line: 1948, baseType: !4741, size: 64, offset: 1792)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!1352, !646, !51, !646, !51, !45, !18}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4636, file: !249, line: 1950, baseType: !4745, size: 64, offset: 1856)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!51, !646, !51, !646, !51, !51, !18}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4636, file: !249, line: 1953, baseType: !4697, size: 64, offset: 1920)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4636, file: !249, line: 1954, baseType: !4750, size: 64, offset: 1984)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!32, !4753, !18}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !249, line: 1911, flags: DIFlagFwdDecl)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4636, file: !249, line: 1955, baseType: !4756, size: 64, offset: 2048)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!32, !4753, !4657, !18}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4631, file: !249, line: 723, baseType: !4120, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1201, file: !249, line: 725, baseType: !4761, size: 64, offset: 2816)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !249, line: 725, flags: DIFlagFwdDecl)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1201, file: !249, line: 726, baseType: !1552, size: 1536, align: 64, offset: 2880)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1201, file: !249, line: 727, baseType: !107, size: 128, offset: 4416)
!4765 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !249, line: 728, baseType: !4766, size: 64, offset: 4544)
!4766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !249, line: 728, size: 64, elements: !4767)
!4767 = !{!4768, !4769, !4772, !4773}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4766, file: !249, line: 729, baseType: !4720, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4766, file: !249, line: 730, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !249, line: 730, flags: DIFlagFwdDecl)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4766, file: !249, line: 731, baseType: !919, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4766, file: !249, line: 732, baseType: !18, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1201, file: !249, line: 735, baseType: !312, size: 32, offset: 4608)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1201, file: !249, line: 738, baseType: !312, size: 32, offset: 4640)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1201, file: !249, line: 739, baseType: !4470, size: 64, offset: 4672)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1201, file: !249, line: 750, baseType: !30, size: 64, offset: 4736)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1166, file: !1167, line: 91, baseType: !4779, size: 256, offset: 448)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !4474)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1166, file: !1167, line: 94, baseType: !4781, size: 64, offset: 704)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4782, line: 25, size: 64, elements: !4783)
!4782 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4783 = !{!4784}
!4784 = !DIDerivedType(tag: DW_TAG_member, scope: !4781, file: !4782, line: 26, baseType: !4785, size: 64)
!4785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4781, file: !4782, line: 26, size: 64, elements: !4786)
!4786 = !{!4787, !4788}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4785, file: !4782, line: 28, baseType: !370, size: 64, align: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !4785, file: !4782, line: 30, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4785, file: !4782, line: 30, size: 64, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4789, file: !4782, line: 31, baseType: !69, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4789, file: !4782, line: 32, baseType: !32, size: 32, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1166, file: !1167, line: 95, baseType: !4489, size: 64, offset: 768)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1166, file: !1167, line: 96, baseType: !1401, size: 64, offset: 832)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1166, file: !1167, line: 97, baseType: !49, size: 64, offset: 896)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1166, file: !1167, line: 98, baseType: !30, size: 64, offset: 960)
!4797 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1167, line: 100, baseType: !4798, size: 128, offset: 1024)
!4798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 100, size: 128, elements: !4799)
!4799 = !{!4800, !4801}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4798, file: !1167, line: 101, baseType: !107, size: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4798, file: !1167, line: 102, baseType: !2269, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1166, file: !1167, line: 104, baseType: !107, size: 128, offset: 1152)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1166, file: !1167, line: 105, baseType: !107, size: 128, offset: 1280)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1166, file: !1167, line: 113, baseType: !4805, size: 128, offset: 1408)
!4805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 109, size: 128, elements: !4806)
!4806 = !{!4807, !4808, !4809}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4805, file: !1167, line: 110, baseType: !726, size: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4805, file: !1167, line: 111, baseType: !1176, size: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4805, file: !1167, line: 112, baseType: !654, size: 128, align: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1161, file: !1162, line: 72, baseType: !1401, size: 64, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1161, file: !1162, line: 73, baseType: !32, size: 32, offset: 128)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1161, file: !1162, line: 74, baseType: !1239, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1156, file: !1157, line: 10, baseType: !1165, size: 64, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !647, file: !249, line: 1015, baseType: !1200, size: 64, offset: 1344)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !647, file: !249, line: 1016, baseType: !4634, size: 64, offset: 1408)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !647, file: !249, line: 1018, baseType: !369, size: 64, offset: 1472)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !647, file: !249, line: 1020, baseType: !30, size: 64, offset: 1536)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !647, file: !249, line: 1023, baseType: !30, size: 64, offset: 1600)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !647, file: !249, line: 1027, baseType: !2819, size: 64, offset: 1664)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !647, file: !249, line: 1029, baseType: !1551, size: 64, offset: 1728)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !647, file: !249, line: 1030, baseType: !2088, size: 32, offset: 1792)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !647, file: !249, line: 1031, baseType: !2088, size: 32, offset: 1824)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !622, file: !141, line: 756, baseType: !49, size: 64, offset: 704)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !622, file: !141, line: 757, baseType: !49, size: 64, offset: 768)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !622, file: !141, line: 760, baseType: !49, size: 64, offset: 832)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !622, file: !141, line: 761, baseType: !49, size: 64, offset: 896)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !622, file: !141, line: 763, baseType: !49, size: 64, offset: 960)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !622, file: !141, line: 764, baseType: !4829, size: 64, offset: 1024)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1696, line: 299, baseType: !4831)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 299, size: 64, elements: !4832)
!4832 = !{!4833}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4831, file: !1696, line: 299, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1701, line: 18, baseType: !49)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !622, file: !141, line: 773, baseType: !59, size: 32, offset: 1088)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !622, file: !141, line: 785, baseType: !59, size: 32, offset: 1120)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !622, file: !141, line: 795, baseType: !4838, size: 64, offset: 1152)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !141, line: 726, size: 128, elements: !4840)
!4840 = !{!4841, !4842}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4839, file: !141, line: 727, baseType: !369, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4839, file: !141, line: 728, baseType: !32, size: 32, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !622, file: !141, line: 801, baseType: !49, size: 64, offset: 1216)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !622, file: !141, line: 804, baseType: !667, size: 64, offset: 1280)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !622, file: !141, line: 806, baseType: !32, size: 32, offset: 1344)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !622, file: !141, line: 808, baseType: !69, size: 32, offset: 1376)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !622, file: !141, line: 823, baseType: !851, size: 320, offset: 1408)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !622, file: !141, line: 825, baseType: !107, size: 128, offset: 1728)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !622, file: !141, line: 845, baseType: !32, size: 32, offset: 1856)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !622, file: !141, line: 849, baseType: !49, size: 64, offset: 1920)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !622, file: !141, line: 850, baseType: !49, size: 64, offset: 1984)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !622, file: !141, line: 852, baseType: !49, size: 64, offset: 2048)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !622, file: !141, line: 853, baseType: !49, size: 64, offset: 2112)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !622, file: !141, line: 854, baseType: !669, size: 64, offset: 2176)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !622, file: !141, line: 855, baseType: !49, size: 64, offset: 2240)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !622, file: !141, line: 856, baseType: !49, size: 64, offset: 2304)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !622, file: !141, line: 857, baseType: !49, size: 64, offset: 2368)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !622, file: !141, line: 858, baseType: !49, size: 64, offset: 2432)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !622, file: !141, line: 865, baseType: !492, size: 32, offset: 2496)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !622, file: !141, line: 867, baseType: !69, size: 32, offset: 2528)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !622, file: !141, line: 869, baseType: !49, size: 64, offset: 2560)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !622, file: !141, line: 869, baseType: !49, size: 64, offset: 2624)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !622, file: !141, line: 869, baseType: !49, size: 64, offset: 2688)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !622, file: !141, line: 869, baseType: !49, size: 64, offset: 2752)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !622, file: !141, line: 870, baseType: !49, size: 64, offset: 2816)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !622, file: !141, line: 870, baseType: !49, size: 64, offset: 2880)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !622, file: !141, line: 870, baseType: !49, size: 64, offset: 2944)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !622, file: !141, line: 871, baseType: !49, size: 64, offset: 3008)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !622, file: !141, line: 871, baseType: !49, size: 64, offset: 3072)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !622, file: !141, line: 871, baseType: !49, size: 64, offset: 3136)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !622, file: !141, line: 871, baseType: !49, size: 64, offset: 3200)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !622, file: !141, line: 873, baseType: !4873, size: 3328, offset: 3264)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 3328, elements: !4874)
!4874 = !{!4875}
!4875 = !DISubrange(count: 52)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !622, file: !141, line: 875, baseType: !4877, size: 1280, offset: 6592)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 1280, elements: !731)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !622, file: !141, line: 877, baseType: !4879, size: 64, offset: 7872)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !141, line: 877, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !622, file: !141, line: 880, baseType: !4882, size: 1088, offset: 7936)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4883, line: 72, baseType: !4884)
!4883 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4883, line: 23, size: 1088, elements: !4885)
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4893, !4894, !4895, !4896, !4921, !4922, !4923}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4884, file: !4883, line: 28, baseType: !369, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4884, file: !4883, line: 38, baseType: !669, size: 64, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4884, file: !4883, line: 40, baseType: !49, size: 64, offset: 128)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4884, file: !4883, line: 43, baseType: !851, size: 320, offset: 192)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4884, file: !4883, line: 44, baseType: !4891, size: 64, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4883, line: 44, flags: DIFlagFwdDecl)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4884, file: !4883, line: 48, baseType: !49, size: 64, offset: 576)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4884, file: !4883, line: 59, baseType: !674, size: 256, offset: 640)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4884, file: !4883, line: 60, baseType: !30, size: 64, offset: 896)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4884, file: !4883, line: 61, baseType: !4897, size: 64, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4899)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4900, line: 13, size: 1216, elements: !4901)
!4900 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4901 = !{!4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4899, file: !4900, line: 14, baseType: !30, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4899, file: !4900, line: 15, baseType: !49, size: 64, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4899, file: !4900, line: 17, baseType: !49, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4899, file: !4900, line: 17, baseType: !49, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4899, file: !4900, line: 18, baseType: !49, size: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4899, file: !4900, line: 18, baseType: !49, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4899, file: !4900, line: 19, baseType: !2127, size: 64, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4899, file: !4900, line: 21, baseType: !297, size: 64, offset: 448)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4899, file: !4900, line: 23, baseType: !297, size: 64, offset: 512)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4899, file: !4900, line: 24, baseType: !297, size: 64, offset: 576)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4899, file: !4900, line: 25, baseType: !297, size: 64, offset: 640)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4899, file: !4900, line: 26, baseType: !297, size: 64, offset: 704)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4899, file: !4900, line: 27, baseType: !297, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4899, file: !4900, line: 28, baseType: !297, size: 64, offset: 832)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4899, file: !4900, line: 29, baseType: !297, size: 64, offset: 896)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4899, file: !4900, line: 30, baseType: !297, size: 64, offset: 960)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4899, file: !4900, line: 31, baseType: !297, size: 64, offset: 1024)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4899, file: !4900, line: 32, baseType: !297, size: 64, offset: 1088)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4899, file: !4900, line: 33, baseType: !297, size: 64, offset: 1152)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4884, file: !4883, line: 63, baseType: !59, size: 32, offset: 1024)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4884, file: !4883, line: 69, baseType: !103, size: 16, offset: 1056)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4884, file: !4883, line: 70, baseType: !2447, size: 16, offset: 1072)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !141, line: 882, baseType: !49, size: 64, offset: 9024)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !622, file: !141, line: 885, baseType: !69, size: 32, offset: 9088)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !622, file: !141, line: 886, baseType: !4927, size: 64, offset: 9152)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !141, line: 732, flags: DIFlagFwdDecl)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !622, file: !141, line: 901, baseType: !773, size: 64, offset: 9216)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !622, file: !141, line: 904, baseType: !646, size: 64, offset: 9280)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !622, file: !141, line: 906, baseType: !4932, size: 64, offset: 9344)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !141, line: 906, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !622, file: !141, line: 930, baseType: !59, size: 32, offset: 9408)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !622, file: !141, line: 933, baseType: !59, size: 32, offset: 9440)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !622, file: !141, line: 935, baseType: !4937, size: 64, offset: 9472)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !266, line: 103, size: 64, elements: !4938)
!4938 = !{!4939}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4937, file: !266, line: 104, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !266, line: 101, flags: DIFlagFwdDecl)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !622, file: !141, line: 940, baseType: !667, size: 64, offset: 9536)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !622, file: !141, line: 942, baseType: !958, size: 256, offset: 9600)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !619, file: !141, line: 986, baseType: !4945, offset: 10240)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, elements: !1062)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !301, file: !302, line: 882, baseType: !618, size: 64, offset: 9792)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !301, file: !302, line: 884, baseType: !32, size: 32, offset: 9856)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !301, file: !302, line: 885, baseType: !32, size: 32, offset: 9888)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !301, file: !302, line: 886, baseType: !32, size: 32, offset: 9920)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !301, file: !302, line: 888, baseType: !32, size: 32, offset: 9952)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !301, file: !302, line: 890, baseType: !49, size: 64, offset: 9984)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !301, file: !302, line: 893, baseType: !18, size: 32, offset: 10048)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !301, file: !302, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !301, file: !302, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !301, file: !302, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !301, file: !302, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !301, file: !302, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !301, file: !302, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !301, file: !302, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !301, file: !302, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !301, file: !302, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !301, file: !302, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !301, file: !302, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !301, file: !302, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !301, file: !302, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !301, file: !302, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !301, file: !302, line: 969, baseType: !49, size: 64, offset: 10176)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !301, file: !302, line: 971, baseType: !4969, size: 448, offset: 10240)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !260, line: 25, size: 448, elements: !4970)
!4970 = !{!4971, !4972, !4977}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4969, file: !260, line: 26, baseType: !49, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4969, file: !260, line: 27, baseType: !4973, size: 64, offset: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!297, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, scope: !4969, file: !260, line: 28, baseType: !4978, size: 320, offset: 128)
!4978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4969, file: !260, line: 28, size: 320, elements: !4979)
!4979 = !{!4980, !4990, !5015}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4978, file: !260, line: 37, baseType: !4981, size: 320)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4978, file: !260, line: 30, size: 320, elements: !4982)
!4982 = !{!4983, !4985, !4986, !4987, !4988, !4989}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4981, file: !260, line: 31, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4981, file: !260, line: 32, baseType: !311, size: 32, offset: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4981, file: !260, line: 33, baseType: !311, size: 32, offset: 96)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4981, file: !260, line: 34, baseType: !311, size: 32, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4981, file: !260, line: 35, baseType: !369, size: 64, offset: 192)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4981, file: !260, line: 36, baseType: !4984, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4978, file: !260, line: 47, baseType: !4991, size: 192)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4978, file: !260, line: 39, size: 192, elements: !4992)
!4992 = !{!4993, !4994, !4995, !5014}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4991, file: !260, line: 40, baseType: !484, size: 32)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4991, file: !260, line: 41, baseType: !259, size: 32, offset: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, scope: !4991, file: !260, line: 42, baseType: !4996, size: 64, offset: 64)
!4996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4991, file: !260, line: 42, size: 64, elements: !4997)
!4997 = !{!4998, !5006}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4996, file: !260, line: 43, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5001, line: 7, size: 128, elements: !5002)
!5001 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5002 = !{!5003, !5005}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5000, file: !5001, line: 8, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !47, line: 93, baseType: !53)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5000, file: !5001, line: 9, baseType: !53, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4996, file: !260, line: 44, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5009, line: 7, size: 64, elements: !5010)
!5009 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5010 = !{!5011, !5013}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5008, file: !5009, line: 8, baseType: !5012, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5009, line: 5, baseType: !843)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5008, file: !5009, line: 9, baseType: !843, size: 32, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4991, file: !260, line: 46, baseType: !369, size: 64, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4978, file: !260, line: 55, baseType: !5016, size: 256)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4978, file: !260, line: 49, size: 256, elements: !5017)
!5017 = !{!5018, !5026, !5027, !5028, !5029}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5016, file: !260, line: 50, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5021, line: 36, size: 64, elements: !5022)
!5021 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5022 = !{!5023, !5024, !5025}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5020, file: !5021, line: 37, baseType: !32, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5020, file: !5021, line: 38, baseType: !879, size: 16, offset: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5020, file: !5021, line: 39, baseType: !879, size: 16, offset: 48)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5016, file: !260, line: 51, baseType: !32, size: 32, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5016, file: !260, line: 52, baseType: !32, size: 32, offset: 96)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5016, file: !260, line: 53, baseType: !49, size: 64, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5016, file: !260, line: 54, baseType: !49, size: 64, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !301, file: !302, line: 973, baseType: !5031, size: 32, offset: 10688)
!5031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !35, line: 27, baseType: !5032)
!5032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !47, line: 28, baseType: !32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !301, file: !302, line: 974, baseType: !5031, size: 32, offset: 10720)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !301, file: !302, line: 978, baseType: !49, size: 64, offset: 10752)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !301, file: !302, line: 987, baseType: !300, size: 64, offset: 10816)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !301, file: !302, line: 990, baseType: !300, size: 64, offset: 10880)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !301, file: !302, line: 995, baseType: !107, size: 128, offset: 10944)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !301, file: !302, line: 996, baseType: !107, size: 128, offset: 11072)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !301, file: !302, line: 997, baseType: !300, size: 64, offset: 11200)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !301, file: !302, line: 1005, baseType: !107, size: 128, offset: 11264)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !301, file: !302, line: 1006, baseType: !107, size: 128, offset: 11392)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !301, file: !302, line: 1009, baseType: !714, size: 64, offset: 11520)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !301, file: !302, line: 1010, baseType: !5044, size: 512, offset: 11584)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 512, elements: !731)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !301, file: !302, line: 1011, baseType: !107, size: 128, offset: 12096)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !301, file: !302, line: 1012, baseType: !107, size: 128, offset: 12224)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !301, file: !302, line: 1014, baseType: !996, size: 64, offset: 12352)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !301, file: !302, line: 1017, baseType: !2440, size: 64, offset: 12416)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !301, file: !302, line: 1020, baseType: !2440, size: 64, offset: 12480)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !301, file: !302, line: 1023, baseType: !30, size: 64, offset: 12544)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !301, file: !302, line: 1025, baseType: !369, size: 64, offset: 12608)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !301, file: !302, line: 1026, baseType: !369, size: 64, offset: 12672)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !301, file: !302, line: 1031, baseType: !369, size: 64, offset: 12736)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !301, file: !302, line: 1032, baseType: !3895, size: 192, offset: 12800)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !301, file: !302, line: 1041, baseType: !49, size: 64, offset: 12992)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !301, file: !302, line: 1042, baseType: !49, size: 64, offset: 13056)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !301, file: !302, line: 1045, baseType: !369, size: 64, offset: 13120)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !301, file: !302, line: 1048, baseType: !369, size: 64, offset: 13184)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !301, file: !302, line: 1051, baseType: !49, size: 64, offset: 13248)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !301, file: !302, line: 1052, baseType: !49, size: 64, offset: 13312)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !301, file: !302, line: 1055, baseType: !5062, size: 640, offset: 13376)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5063, line: 132, size: 640, elements: !5064)
!5063 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5064 = !{!5065, !5071, !5072}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5062, file: !5063, line: 133, baseType: !5066, size: 576)
!5066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5067, size: 576, elements: !710)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5063, line: 117, size: 192, elements: !5068)
!5068 = !{!5069, !5070}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5067, file: !5063, line: 118, baseType: !369, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5067, file: !5063, line: 119, baseType: !498, size: 128, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5062, file: !5063, line: 134, baseType: !18, size: 32, offset: 576)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5062, file: !5063, line: 135, baseType: !18, size: 32, offset: 608)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !301, file: !302, line: 1058, baseType: !5074, size: 448, offset: 14016)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5063, line: 144, size: 448, elements: !5075)
!5075 = !{!5076, !5077, !5078}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5074, file: !5063, line: 145, baseType: !654, size: 128, align: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5074, file: !5063, line: 146, baseType: !674, size: 256, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5074, file: !5063, line: 147, baseType: !18, size: 32, offset: 384)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !301, file: !302, line: 1064, baseType: !1069, size: 64, offset: 14464)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !301, file: !302, line: 1067, baseType: !1069, size: 64, offset: 14528)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !301, file: !302, line: 1070, baseType: !1069, size: 64, offset: 14592)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !301, file: !302, line: 1074, baseType: !835, size: 64, offset: 14656)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !301, file: !302, line: 1084, baseType: !5084, size: 128, offset: 14720)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4483)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !301, file: !302, line: 1086, baseType: !5086, size: 64, offset: 14848)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !302, line: 55, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !301, file: !302, line: 1089, baseType: !5089, size: 64, offset: 14912)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5090, line: 12, size: 64, elements: !5091)
!5090 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5091 = !{!5092}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5089, file: !5090, line: 13, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5090, line: 8, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !301, file: !302, line: 1090, baseType: !5096, size: 128, offset: 14976)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5097, line: 13, size: 128, elements: !5098)
!5097 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5098 = !{!5099}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5096, file: !5097, line: 14, baseType: !107, size: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !301, file: !302, line: 1097, baseType: !5101, size: 64, offset: 15104)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !302, line: 50, flags: DIFlagFwdDecl)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !301, file: !302, line: 1100, baseType: !5104, size: 64, offset: 15168)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !302, line: 1100, flags: DIFlagFwdDecl)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !301, file: !302, line: 1103, baseType: !5107, size: 64, offset: 15232)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !302, line: 53, flags: DIFlagFwdDecl)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !301, file: !302, line: 1107, baseType: !5110, size: 64, offset: 15296)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5112, line: 31, size: 576, elements: !5113)
!5112 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5113 = !{!5114, !5115, !5118, !5121, !5124, !5125, !5128, !5143, !5144}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5111, file: !5112, line: 32, baseType: !317, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5111, file: !5112, line: 33, baseType: !5116, size: 64, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5112, line: 9, flags: DIFlagFwdDecl)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5111, file: !5112, line: 34, baseType: !5119, size: 64, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5112, line: 10, flags: DIFlagFwdDecl)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5111, file: !5112, line: 35, baseType: !5122, size: 64, offset: 192)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5112, line: 8, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5111, file: !5112, line: 36, baseType: !742, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5111, file: !5112, line: 37, baseType: !5126, size: 64, offset: 320)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !837, line: 34, flags: DIFlagFwdDecl)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5111, file: !5112, line: 38, baseType: !5129, size: 64, offset: 384)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5131, line: 19, size: 704, elements: !5132)
!5131 = !DIFile(filename: "./include/linux/time_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e4f4316dfa2293dcdad2ed9ce6a78cf")
!5132 = !{!5133, !5134, !5135, !5136, !5141, !5142}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5130, file: !5131, line: 20, baseType: !773, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5130, file: !5131, line: 21, baseType: !1041, size: 64, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5130, file: !5131, line: 22, baseType: !819, size: 192, offset: 128)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5130, file: !5131, line: 23, baseType: !5137, size: 256, offset: 320)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offsets", file: !5131, line: 14, size: 256, elements: !5138)
!5138 = !{!5139, !5140}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !5137, file: !5131, line: 15, baseType: !1310, size: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !5137, file: !5131, line: 16, baseType: !1310, size: 128, offset: 128)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "vvar_page", scope: !5130, file: !5131, line: 24, baseType: !1571, size: 64, offset: 576)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "frozen_offsets", scope: !5130, file: !5131, line: 26, baseType: !831, size: 8, offset: 640)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5111, file: !5112, line: 39, baseType: !5129, size: 64, offset: 448)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5111, file: !5112, line: 40, baseType: !5145, size: 64, offset: 512)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5147, line: 771, size: 384, elements: !5148)
!5147 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5148 = !{!5149, !5150, !5151, !5152}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5146, file: !5147, line: 772, baseType: !819, size: 192)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5146, file: !5147, line: 773, baseType: !773, size: 64, offset: 192)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5146, file: !5147, line: 774, baseType: !1041, size: 64, offset: 256)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5146, file: !5147, line: 775, baseType: !3965, size: 64, offset: 320)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !301, file: !302, line: 1110, baseType: !5154, size: 64, offset: 15360)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5156, line: 93, size: 8768, elements: !5157)
!5156 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5206, !5215, !5216, !5218, !5219, !5220, !5223, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5261, !5262, !5269, !5279, !5341, !5342, !5345, !5346, !5347, !5348, !5349, !5350}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5155, file: !5156, line: 94, baseType: !317, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5155, file: !5156, line: 95, baseType: !59, size: 32, offset: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5155, file: !5156, line: 96, baseType: !32, size: 32, offset: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5155, file: !5156, line: 97, baseType: !32, size: 32, offset: 96)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5155, file: !5156, line: 98, baseType: !107, size: 128, offset: 128)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5155, file: !5156, line: 100, baseType: !64, size: 192, offset: 256)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5155, file: !5156, line: 103, baseType: !300, size: 64, offset: 448)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5155, file: !5156, line: 106, baseType: !5166, size: 192, offset: 512)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5167, line: 32, size: 192, elements: !5168)
!5167 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5168 = !{!5169, !5170}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5166, file: !5167, line: 33, baseType: !107, size: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5166, file: !5167, line: 34, baseType: !5171, size: 64, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5172, line: 25, baseType: !5173)
!5172 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5172, line: 23, size: 64, elements: !5174)
!5174 = !{!5175}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5173, file: !5172, line: 24, baseType: !569, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5155, file: !5156, line: 109, baseType: !722, size: 64, offset: 704)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5155, file: !5156, line: 112, baseType: !32, size: 32, offset: 768)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5155, file: !5156, line: 114, baseType: !32, size: 32, offset: 800)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5155, file: !5156, line: 115, baseType: !300, size: 64, offset: 832)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5155, file: !5156, line: 118, baseType: !32, size: 32, offset: 896)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5155, file: !5156, line: 119, baseType: !18, size: 32, offset: 928)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5155, file: !5156, line: 121, baseType: !5183, size: 64, offset: 960)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5156, line: 80, size: 448, elements: !5185)
!5185 = !{!5186, !5187, !5193}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5184, file: !5156, line: 81, baseType: !59, size: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5184, file: !5156, line: 82, baseType: !5188, size: 128, offset: 64)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5156, line: 75, size: 128, elements: !5189)
!5189 = !{!5190, !5191}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5188, file: !5156, line: 76, baseType: !300, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5188, file: !5156, line: 77, baseType: !5192, size: 64, offset: 64)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5184, file: !5156, line: 83, baseType: !997, size: 256, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5155, file: !5156, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5155, file: !5156, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5155, file: !5156, line: 138, baseType: !18, size: 32, offset: 1056)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5155, file: !5156, line: 139, baseType: !107, size: 128, offset: 1088)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5155, file: !5156, line: 142, baseType: !436, size: 512, offset: 1216)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5155, file: !5156, line: 143, baseType: !444, size: 64, offset: 1728)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5155, file: !5156, line: 150, baseType: !5201, size: 256, offset: 1792)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5202, size: 256, elements: !2430)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5156, line: 38, size: 128, elements: !5203)
!5203 = !{!5204, !5205}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5202, file: !5156, line: 39, baseType: !369, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5202, file: !5156, line: 40, baseType: !369, size: 64, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5155, file: !5156, line: 156, baseType: !5207, size: 192, offset: 2048)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5156, line: 66, size: 192, elements: !5208)
!5208 = !{!5209}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5207, file: !5156, line: 67, baseType: !5210, size: 192)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5156, line: 47, size: 192, elements: !5211)
!5211 = !{!5212, !5213, !5214}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5210, file: !5156, line: 48, baseType: !669, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5210, file: !5156, line: 49, baseType: !669, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5210, file: !5156, line: 50, baseType: !669, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5155, file: !5156, line: 160, baseType: !5062, size: 640, offset: 2240)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5155, file: !5156, line: 163, baseType: !5217, size: 256, offset: 2880)
!5217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !731)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5155, file: !5156, line: 169, baseType: !714, size: 64, offset: 3136)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5155, file: !5156, line: 172, baseType: !32, size: 32, offset: 3200)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5155, file: !5156, line: 174, baseType: !5221, size: 64, offset: 3264)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5156, line: 174, flags: DIFlagFwdDecl)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5155, file: !5156, line: 185, baseType: !5224, size: 64, offset: 3328)
!5224 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !488, line: 860, baseType: !5225)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 853, size: 64, elements: !5226)
!5226 = !{!5227, !5228}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5225, file: !488, line: 858, baseType: !1171, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5225, file: !488, line: 859, baseType: !69, size: 32, offset: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5155, file: !5156, line: 186, baseType: !369, size: 64, offset: 3392)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5155, file: !5156, line: 186, baseType: !369, size: 64, offset: 3456)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5155, file: !5156, line: 186, baseType: !369, size: 64, offset: 3520)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5155, file: !5156, line: 186, baseType: !369, size: 64, offset: 3584)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5155, file: !5156, line: 187, baseType: !369, size: 64, offset: 3648)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5155, file: !5156, line: 188, baseType: !369, size: 64, offset: 3712)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5155, file: !5156, line: 189, baseType: !3895, size: 192, offset: 3776)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5155, file: !5156, line: 190, baseType: !49, size: 64, offset: 3968)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5155, file: !5156, line: 190, baseType: !49, size: 64, offset: 4032)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5155, file: !5156, line: 190, baseType: !49, size: 64, offset: 4096)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5155, file: !5156, line: 190, baseType: !49, size: 64, offset: 4160)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5155, file: !5156, line: 191, baseType: !49, size: 64, offset: 4224)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5155, file: !5156, line: 191, baseType: !49, size: 64, offset: 4288)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5155, file: !5156, line: 191, baseType: !49, size: 64, offset: 4352)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5155, file: !5156, line: 191, baseType: !49, size: 64, offset: 4416)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5155, file: !5156, line: 192, baseType: !49, size: 64, offset: 4480)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5155, file: !5156, line: 192, baseType: !49, size: 64, offset: 4544)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5155, file: !5156, line: 192, baseType: !49, size: 64, offset: 4608)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5155, file: !5156, line: 192, baseType: !49, size: 64, offset: 4672)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5155, file: !5156, line: 193, baseType: !49, size: 64, offset: 4736)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5155, file: !5156, line: 193, baseType: !49, size: 64, offset: 4800)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5155, file: !5156, line: 194, baseType: !5251, size: 448, offset: 4864)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5252, line: 12, size: 448, elements: !5253)
!5252 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259, !5260}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5251, file: !5252, line: 15, baseType: !369, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5251, file: !5252, line: 17, baseType: !369, size: 64, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5251, file: !5252, line: 19, baseType: !369, size: 64, offset: 128)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5251, file: !5252, line: 21, baseType: !369, size: 64, offset: 192)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5251, file: !5252, line: 29, baseType: !369, size: 64, offset: 256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5251, file: !5252, line: 35, baseType: !369, size: 64, offset: 320)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5251, file: !5252, line: 44, baseType: !369, size: 64, offset: 384)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5155, file: !5156, line: 202, baseType: !371, size: 64, offset: 5312)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5155, file: !5156, line: 213, baseType: !5263, size: 2048, offset: 5376)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5264, size: 2048, elements: !4483)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5265, line: 43, size: 128, elements: !5266)
!5265 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5266 = !{!5267, !5268}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5264, file: !5265, line: 44, baseType: !48, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5264, file: !5265, line: 45, baseType: !48, size: 64, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5155, file: !5156, line: 216, baseType: !5270, size: 448, offset: 7424)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5156, line: 30, size: 448, elements: !5271)
!5271 = !{!5272, !5273, !5274, !5275, !5276, !5277, !5278}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5270, file: !5156, line: 31, baseType: !32, size: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5270, file: !5156, line: 32, baseType: !297, size: 64, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5270, file: !5156, line: 33, baseType: !49, size: 64, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5270, file: !5156, line: 34, baseType: !369, size: 64, offset: 192)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5270, file: !5156, line: 34, baseType: !369, size: 64, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5270, file: !5156, line: 35, baseType: !49, size: 64, offset: 320)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5270, file: !5156, line: 35, baseType: !49, size: 64, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5155, file: !5156, line: 219, baseType: !5280, size: 64, offset: 7872)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5282, line: 41, size: 3456, elements: !5283)
!5282 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5281, file: !5282, line: 47, baseType: !104, size: 16)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5281, file: !5282, line: 48, baseType: !312, size: 32, offset: 32)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5281, file: !5282, line: 54, baseType: !95, size: 8, offset: 64)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5281, file: !5282, line: 55, baseType: !95, size: 8, offset: 72)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5281, file: !5282, line: 73, baseType: !370, size: 64, align: 64, offset: 128)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5281, file: !5282, line: 74, baseType: !370, size: 64, offset: 192)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5281, file: !5282, line: 81, baseType: !370, size: 64, offset: 256)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5281, file: !5282, line: 82, baseType: !370, size: 64, offset: 320)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5281, file: !5282, line: 85, baseType: !370, size: 64, offset: 384)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5281, file: !5282, line: 86, baseType: !370, size: 64, offset: 448)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5281, file: !5282, line: 94, baseType: !370, size: 64, offset: 512)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5281, file: !5282, line: 102, baseType: !370, size: 64, offset: 576)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5281, file: !5282, line: 107, baseType: !4473, size: 256, offset: 640)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5281, file: !5282, line: 108, baseType: !95, size: 8, align: 64, offset: 896)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5281, file: !5282, line: 110, baseType: !5299, size: 24, offset: 904)
!5299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !710)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5281, file: !5282, line: 111, baseType: !312, size: 32, align: 64, offset: 960)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5281, file: !5282, line: 113, baseType: !312, size: 32, offset: 992)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5281, file: !5282, line: 114, baseType: !312, size: 32, offset: 1024)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5281, file: !5282, line: 115, baseType: !312, size: 32, offset: 1056)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5281, file: !5282, line: 117, baseType: !312, size: 32, offset: 1088)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5281, file: !5282, line: 118, baseType: !370, size: 64, align: 64, offset: 1152)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5281, file: !5282, line: 120, baseType: !370, size: 64, offset: 1216)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5281, file: !5282, line: 121, baseType: !370, size: 64, offset: 1280)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5281, file: !5282, line: 122, baseType: !370, size: 64, offset: 1344)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5281, file: !5282, line: 123, baseType: !370, size: 64, offset: 1408)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5281, file: !5282, line: 133, baseType: !370, size: 64, offset: 1472)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5281, file: !5282, line: 137, baseType: !370, size: 64, offset: 1536)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5281, file: !5282, line: 142, baseType: !370, size: 64, offset: 1600)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5281, file: !5282, line: 143, baseType: !370, size: 64, offset: 1664)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5281, file: !5282, line: 146, baseType: !370, size: 64, offset: 1728)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5281, file: !5282, line: 147, baseType: !370, size: 64, offset: 1792)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5281, file: !5282, line: 148, baseType: !370, size: 64, offset: 1856)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5281, file: !5282, line: 149, baseType: !370, size: 64, offset: 1920)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5281, file: !5282, line: 154, baseType: !370, size: 64, offset: 1984)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5281, file: !5282, line: 155, baseType: !370, size: 64, offset: 2048)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5281, file: !5282, line: 156, baseType: !370, size: 64, offset: 2112)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5281, file: !5282, line: 158, baseType: !370, size: 64, offset: 2176)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5281, file: !5282, line: 159, baseType: !370, size: 64, offset: 2240)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5281, file: !5282, line: 162, baseType: !370, size: 64, offset: 2304)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5281, file: !5282, line: 163, baseType: !370, size: 64, offset: 2368)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5281, file: !5282, line: 164, baseType: !370, size: 64, offset: 2432)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5281, file: !5282, line: 167, baseType: !370, size: 64, offset: 2496)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5281, file: !5282, line: 168, baseType: !370, size: 64, offset: 2560)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5281, file: !5282, line: 171, baseType: !370, size: 64, offset: 2624)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5281, file: !5282, line: 172, baseType: !370, size: 64, offset: 2688)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5281, file: !5282, line: 175, baseType: !370, size: 64, offset: 2752)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5281, file: !5282, line: 178, baseType: !370, size: 64, offset: 2816)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5281, file: !5282, line: 179, baseType: !370, size: 64, offset: 2880)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5281, file: !5282, line: 182, baseType: !312, size: 32, offset: 2944)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5281, file: !5282, line: 186, baseType: !370, size: 64, align: 64, offset: 3008)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5281, file: !5282, line: 194, baseType: !370, size: 64, offset: 3072)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5281, file: !5282, line: 195, baseType: !370, size: 64, offset: 3136)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5281, file: !5282, line: 199, baseType: !370, size: 64, offset: 3200)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5281, file: !5282, line: 200, baseType: !370, size: 64, offset: 3264)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5281, file: !5282, line: 203, baseType: !370, size: 64, offset: 3328)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5281, file: !5282, line: 204, baseType: !370, size: 64, offset: 3392)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5155, file: !5156, line: 222, baseType: !18, size: 32, offset: 7936)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5155, file: !5156, line: 223, baseType: !5343, size: 64, offset: 8000)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5156, line: 223, flags: DIFlagFwdDecl)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5155, file: !5156, line: 230, baseType: !831, size: 8, offset: 8064)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5155, file: !5156, line: 231, baseType: !879, size: 16, offset: 8080)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5155, file: !5156, line: 232, baseType: !879, size: 16, offset: 8096)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5155, file: !5156, line: 234, baseType: !618, size: 64, offset: 8128)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5155, file: !5156, line: 237, baseType: !674, size: 256, offset: 8192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5155, file: !5156, line: 243, baseType: !851, size: 320, offset: 8448)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !301, file: !302, line: 1111, baseType: !5352, size: 64, offset: 15424)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5156, line: 20, size: 16640, elements: !5354)
!5354 = !{!5355, !5356, !5357, !5358}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5353, file: !5156, line: 21, baseType: !69, size: 32)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5353, file: !5156, line: 22, baseType: !317, size: 32, offset: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5353, file: !5156, line: 23, baseType: !64, size: 192, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5353, file: !5156, line: 24, baseType: !5359, size: 16384, offset: 256)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5360, size: 16384, elements: !1490)
!5360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5167, line: 51, size: 256, elements: !5361)
!5361 = !{!5362}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5360, file: !5167, line: 52, baseType: !5363, size: 256)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5167, line: 37, size: 256, elements: !5364)
!5364 = !{!5365, !5372, !5373, !5377}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5363, file: !5167, line: 39, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5367, line: 83, baseType: !5368)
!5367 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5367, line: 82, baseType: !5370)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !32}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5363, file: !5167, line: 40, baseType: !49, size: 64, offset: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5363, file: !5167, line: 46, baseType: !5374, size: 64, offset: 128)
!5374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5367, line: 86, baseType: !5375)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5367, line: 85, baseType: !2716)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5363, file: !5167, line: 48, baseType: !5171, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !301, file: !302, line: 1112, baseType: !5171, size: 64, offset: 15488)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !301, file: !302, line: 1113, baseType: !5171, size: 64, offset: 15552)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !301, file: !302, line: 1115, baseType: !5171, size: 64, offset: 15616)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !301, file: !302, line: 1116, baseType: !5166, size: 192, offset: 15680)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !301, file: !302, line: 1117, baseType: !49, size: 64, offset: 15872)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !301, file: !302, line: 1118, baseType: !45, size: 64, offset: 15936)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !301, file: !302, line: 1119, baseType: !18, size: 32, offset: 16000)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !301, file: !302, line: 1121, baseType: !657, size: 64, offset: 16064)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !301, file: !302, line: 1125, baseType: !5387, size: 64, offset: 16128)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !302, line: 43, flags: DIFlagFwdDecl)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !301, file: !302, line: 1127, baseType: !804, size: 32, offset: 16192)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !301, file: !302, line: 1128, baseType: !18, size: 32, offset: 16224)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !301, file: !302, line: 1130, baseType: !5392, size: 128, offset: 16256)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5393, line: 37, size: 128, elements: !5394)
!5393 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5394 = !{!5395, !5396, !5397}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5392, file: !5393, line: 38, baseType: !32, size: 32)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5392, file: !5393, line: 39, baseType: !59, size: 32, offset: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5392, file: !5393, line: 40, baseType: !5398, size: 64, offset: 64)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5393, line: 24, flags: DIFlagFwdDecl)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !301, file: !302, line: 1131, baseType: !5401, size: 256, offset: 16384)
!5401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5402, line: 12, size: 256, elements: !5403)
!5402 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5403 = !{!5404, !5405, !5406, !5407}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5401, file: !5402, line: 13, baseType: !919, size: 64)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5401, file: !5402, line: 14, baseType: !49, size: 64, offset: 64)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5401, file: !5402, line: 15, baseType: !49, size: 64, offset: 128)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5401, file: !5402, line: 16, baseType: !831, size: 8, offset: 192)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !301, file: !302, line: 1134, baseType: !369, size: 64, offset: 16640)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !301, file: !302, line: 1135, baseType: !369, size: 64, offset: 16704)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !301, file: !302, line: 1138, baseType: !69, size: 32, offset: 16768)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !301, file: !302, line: 1141, baseType: !461, size: 32, offset: 16800)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !301, file: !302, line: 1143, baseType: !5413, size: 64, offset: 16832)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !302, line: 735, size: 64, elements: !5414)
!5414 = !{!5415}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5413, file: !302, line: 736, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !301, file: !302, line: 1147, baseType: !501, size: 128, offset: 16896)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !301, file: !302, line: 1149, baseType: !300, size: 64, offset: 17024)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !301, file: !302, line: 1151, baseType: !5420, size: 64, offset: 17088)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !302, line: 1151, flags: DIFlagFwdDecl)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !301, file: !302, line: 1188, baseType: !30, size: 64, offset: 17152)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !301, file: !302, line: 1191, baseType: !5424, size: 64, offset: 17216)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !302, line: 44, flags: DIFlagFwdDecl)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !301, file: !302, line: 1194, baseType: !5427, size: 64, offset: 17280)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !302, line: 45, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !301, file: !302, line: 1197, baseType: !5430, size: 64, offset: 17344)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !302, line: 61, flags: DIFlagFwdDecl)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !301, file: !302, line: 1199, baseType: !5433, size: 64, offset: 17408)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5435, line: 99, size: 128, elements: !5436)
!5435 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5436 = !{!5437, !5438, !5439}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5434, file: !5435, line: 100, baseType: !667, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5434, file: !5435, line: 101, baseType: !59, size: 32, offset: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5434, file: !5435, line: 103, baseType: !36, size: 16, offset: 96)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !301, file: !302, line: 1202, baseType: !5441, size: 64, offset: 17472)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !302, line: 48, flags: DIFlagFwdDecl)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !301, file: !302, line: 1205, baseType: !49, size: 64, offset: 17536)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !301, file: !302, line: 1206, baseType: !5445, size: 64, offset: 17600)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5167, line: 14, baseType: !5447)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5167, line: 12, size: 384, elements: !5448)
!5448 = !{!5449}
!5449 = !DIDerivedType(tag: DW_TAG_member, scope: !5447, file: !5167, line: 13, baseType: !5450, size: 384)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5167, line: 13, size: 384, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5450, file: !5167, line: 13, baseType: !32, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5450, file: !5167, line: 13, baseType: !32, size: 32, offset: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5450, file: !5167, line: 13, baseType: !32, size: 32, offset: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5450, file: !5167, line: 13, baseType: !5456, size: 256, offset: 128)
!5456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5457, line: 37, size: 256, elements: !5458)
!5457 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5458 = !{!5459, !5464, !5477, !5483, !5492, !5519, !5524}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5456, file: !5457, line: 42, baseType: !5460, size: 64)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 39, size: 64, elements: !5461)
!5461 = !{!5462, !5463}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5460, file: !5457, line: 40, baseType: !5032, size: 32)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5460, file: !5457, line: 41, baseType: !810, size: 32, offset: 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5456, file: !5457, line: 50, baseType: !5465, size: 192)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 45, size: 192, elements: !5466)
!5466 = !{!5467, !5469, !5470, !5476}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5465, file: !5457, line: 46, baseType: !5468, size: 32)
!5468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !47, line: 95, baseType: !32)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5465, file: !5457, line: 47, baseType: !32, size: 32, offset: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5465, file: !5457, line: 48, baseType: !5471, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5457, line: 11, baseType: !5472)
!5472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5457, line: 8, size: 64, elements: !5473)
!5473 = !{!5474, !5475}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5472, file: !5457, line: 9, baseType: !32, size: 32)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5472, file: !5457, line: 10, baseType: !30, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5465, file: !5457, line: 49, baseType: !32, size: 32, offset: 128)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5456, file: !5457, line: 57, baseType: !5478, size: 128)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 53, size: 128, elements: !5479)
!5479 = !{!5480, !5481, !5482}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5478, file: !5457, line: 54, baseType: !5032, size: 32)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5478, file: !5457, line: 55, baseType: !810, size: 32, offset: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5478, file: !5457, line: 56, baseType: !5471, size: 64, offset: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5456, file: !5457, line: 66, baseType: !5484, size: 256)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 60, size: 256, elements: !5485)
!5485 = !{!5486, !5487, !5488, !5489, !5491}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5484, file: !5457, line: 61, baseType: !5032, size: 32)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5484, file: !5457, line: 62, baseType: !810, size: 32, offset: 32)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5484, file: !5457, line: 63, baseType: !32, size: 32, offset: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5484, file: !5457, line: 64, baseType: !5490, size: 64, offset: 128)
!5490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !47, line: 94, baseType: !1354)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5484, file: !5457, line: 65, baseType: !5490, size: 64, offset: 192)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5456, file: !5457, line: 105, baseType: !5493, size: 256)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 69, size: 256, elements: !5494)
!5494 = !{!5495, !5496}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5493, file: !5457, line: 70, baseType: !30, size: 64)
!5496 = !DIDerivedType(tag: DW_TAG_member, scope: !5493, file: !5457, line: 79, baseType: !5497, size: 192, offset: 64)
!5497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5493, file: !5457, line: 79, size: 192, elements: !5498)
!5498 = !{!5499, !5500, !5501, !5508, !5513}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5497, file: !5457, line: 81, baseType: !32, size: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5497, file: !5457, line: 86, baseType: !879, size: 16)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5497, file: !5457, line: 92, baseType: !5502, size: 192)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 88, size: 192, elements: !5503)
!5503 = !{!5504, !5506, !5507}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5502, file: !5457, line: 89, baseType: !5505, size: 64)
!5505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !480)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5502, file: !5457, line: 90, baseType: !30, size: 64, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5502, file: !5457, line: 91, baseType: !30, size: 64, offset: 128)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5497, file: !5457, line: 97, baseType: !5509, size: 96)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 94, size: 96, elements: !5510)
!5510 = !{!5511, !5512}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5509, file: !5457, line: 95, baseType: !5505, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5509, file: !5457, line: 96, baseType: !312, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5497, file: !5457, line: 103, baseType: !5514, size: 128)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 99, size: 128, elements: !5515)
!5515 = !{!5516, !5517, !5518}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5514, file: !5457, line: 100, baseType: !49, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5514, file: !5457, line: 101, baseType: !312, size: 32, offset: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5514, file: !5457, line: 102, baseType: !312, size: 32, offset: 96)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5456, file: !5457, line: 111, baseType: !5520, size: 128)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 108, size: 128, elements: !5521)
!5521 = !{!5522, !5523}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5520, file: !5457, line: 109, baseType: !297, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5520, file: !5457, line: 110, baseType: !32, size: 32, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5456, file: !5457, line: 118, baseType: !5525, size: 128)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 114, size: 128, elements: !5526)
!5526 = !{!5527, !5528, !5529}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5525, file: !5457, line: 115, baseType: !30, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5525, file: !5457, line: 116, baseType: !32, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5525, file: !5457, line: 117, baseType: !18, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !301, file: !302, line: 1208, baseType: !5251, size: 448, offset: 17664)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !301, file: !302, line: 1215, baseType: !369, size: 64, offset: 18112)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !301, file: !302, line: 1217, baseType: !369, size: 64, offset: 18176)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !301, file: !302, line: 1219, baseType: !369, size: 64, offset: 18240)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !301, file: !302, line: 1223, baseType: !5535, size: 64, offset: 18304)
!5535 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5536, line: 99, baseType: !5537)
!5536 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5536, line: 99, size: 64, elements: !5538)
!5538 = !{!5539}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5537, file: !5536, line: 99, baseType: !569, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !301, file: !302, line: 1225, baseType: !1171, size: 32, offset: 18368)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !301, file: !302, line: 1226, baseType: !32, size: 32, offset: 18400)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !301, file: !302, line: 1227, baseType: !32, size: 32, offset: 18432)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !301, file: !302, line: 1231, baseType: !3965, size: 64, offset: 18496)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !301, file: !302, line: 1233, baseType: !107, size: 128, offset: 18560)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !301, file: !302, line: 1240, baseType: !287, size: 64, offset: 18688)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !301, file: !302, line: 1242, baseType: !5547, size: 64, offset: 18752)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5549, line: 392, size: 96, elements: !5550)
!5549 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5550 = !{!5551, !5557, !5559}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5548, file: !5549, line: 393, baseType: !5552, size: 32)
!5552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5549, line: 388, size: 32, elements: !5553)
!5553 = !{!5554}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5552, file: !5549, line: 389, baseType: !5555, size: 32)
!5555 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5556, line: 46, baseType: !311)
!5556 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5548, file: !5549, line: 394, baseType: !5558, size: 32, offset: 32)
!5558 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5556, line: 42, baseType: !843)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5548, file: !5549, line: 395, baseType: !5555, size: 32, offset: 64)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !301, file: !302, line: 1244, baseType: !107, size: 128, offset: 18816)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !301, file: !302, line: 1245, baseType: !5562, size: 64, offset: 18944)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !5564, line: 54, size: 704, elements: !5565)
!5564 = !DIFile(filename: "kernel/futex/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b31fce36210e902319cec20378aafe08")
!5565 = !{!5566, !5567, !5574, !5575, !5576}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5563, file: !5564, line: 59, baseType: !107, size: 128)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_mutex", scope: !5563, file: !5564, line: 64, baseType: !5568, size: 256, offset: 128)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !5569, line: 23, size: 256, elements: !5570)
!5569 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!5570 = !{!5571, !5572, !5573}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5568, file: !5569, line: 24, baseType: !461, size: 32)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5568, file: !5569, line: 25, baseType: !501, size: 128, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5568, file: !5569, line: 26, baseType: !300, size: 64, offset: 192)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5563, file: !5564, line: 66, baseType: !300, size: 64, offset: 384)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5563, file: !5564, line: 67, baseType: !317, size: 32, offset: 448)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5563, file: !5564, line: 69, baseType: !5577, size: 192, offset: 512)
!5577 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "futex_key", file: !5578, line: 32, size: 192, elements: !5579)
!5578 = !DIFile(filename: "./include/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aa02e7d322e20d7feefbd4fcf13a2f0")
!5579 = !{!5580, !5586, !5596}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !5577, file: !5578, line: 37, baseType: !5581, size: 192)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5577, file: !5578, line: 33, size: 192, elements: !5582)
!5582 = !{!5583, !5584, !5585}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "i_seq", scope: !5581, file: !5578, line: 34, baseType: !369, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !5581, file: !5578, line: 35, baseType: !49, size: 64, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5581, file: !5578, line: 36, baseType: !18, size: 32, offset: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5577, file: !5578, line: 45, baseType: !5587, size: 192)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5577, file: !5578, line: 38, size: 192, elements: !5588)
!5588 = !{!5589, !5594, !5595}
!5589 = !DIDerivedType(tag: DW_TAG_member, scope: !5587, file: !5578, line: 39, baseType: !5590, size: 64)
!5590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5587, file: !5578, line: 39, size: 64, elements: !5591)
!5591 = !{!5592, !5593}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5590, file: !5578, line: 40, baseType: !618, size: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "__tmp", scope: !5590, file: !5578, line: 41, baseType: !369, size: 64)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5587, file: !5578, line: 43, baseType: !49, size: 64, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5587, file: !5578, line: 44, baseType: !18, size: 32, offset: 128)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "both", scope: !5577, file: !5578, line: 50, baseType: !5597, size: 192)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5577, file: !5578, line: 46, size: 192, elements: !5598)
!5598 = !{!5599, !5600, !5601}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5597, file: !5578, line: 47, baseType: !369, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5597, file: !5578, line: 48, baseType: !49, size: 64, offset: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5597, file: !5578, line: 49, baseType: !18, size: 32, offset: 128)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !301, file: !302, line: 1246, baseType: !674, size: 256, offset: 19008)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !301, file: !302, line: 1247, baseType: !18, size: 32, offset: 19264)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !301, file: !302, line: 1250, baseType: !3215, size: 64, offset: 19328)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !301, file: !302, line: 1251, baseType: !674, size: 256, offset: 19392)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !301, file: !302, line: 1252, baseType: !107, size: 128, offset: 19648)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !301, file: !302, line: 1259, baseType: !1774, size: 64, offset: 19776)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !301, file: !302, line: 1260, baseType: !879, size: 16, offset: 19840)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !301, file: !302, line: 1261, baseType: !879, size: 16, offset: 19856)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !301, file: !302, line: 1314, baseType: !5611, size: 64, offset: 19904)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5612, size: 64)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5613, line: 62, size: 256, align: 256, elements: !5614)
!5613 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5614 = !{!5615, !5616, !5617, !5618, !5619, !5620, !5621}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5612, file: !5613, line: 75, baseType: !312, size: 32)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5612, file: !5613, line: 90, baseType: !312, size: 32, offset: 32)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5612, file: !5613, line: 112, baseType: !370, size: 64, offset: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5612, file: !5613, line: 132, baseType: !312, size: 32, offset: 128)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5612, file: !5613, line: 140, baseType: !312, size: 32, offset: 160)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5612, file: !5613, line: 149, baseType: !312, size: 32, offset: 192)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5612, file: !5613, line: 154, baseType: !5622, offset: 224)
!5622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1062)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !301, file: !302, line: 1315, baseType: !311, size: 32, offset: 19968)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !301, file: !302, line: 1316, baseType: !311, size: 32, offset: 20000)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !301, file: !302, line: 1321, baseType: !49, size: 64, offset: 20032)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !301, file: !302, line: 1325, baseType: !32, size: 32, offset: 20096)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !301, file: !302, line: 1326, baseType: !32, size: 32, offset: 20128)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !301, file: !302, line: 1327, baseType: !32, size: 32, offset: 20160)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !301, file: !302, line: 1328, baseType: !32, size: 32, offset: 20192)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !301, file: !302, line: 1329, baseType: !654, size: 128, align: 64, offset: 20224)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !301, file: !302, line: 1332, baseType: !5632, size: 128, offset: 20352)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5633, line: 51, size: 128, elements: !5634)
!5633 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5634 = !{!5635, !5640, !5641}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5632, file: !5633, line: 60, baseType: !5636, size: 64)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5637, line: 7, size: 64, elements: !5638)
!5637 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5638 = !{!5639}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5636, file: !5637, line: 12, baseType: !566, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5632, file: !5633, line: 63, baseType: !831, size: 8, offset: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5632, file: !5633, line: 70, baseType: !831, size: 8, offset: 72)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !301, file: !302, line: 1335, baseType: !4720, size: 64, offset: 20480)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !301, file: !302, line: 1337, baseType: !5644, size: 128, offset: 20544)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5633, line: 39, size: 128, elements: !5645)
!5645 = !{!5646, !5647, !5648}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5644, file: !5633, line: 40, baseType: !1571, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5644, file: !5633, line: 42, baseType: !312, size: 32, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5644, file: !5633, line: 43, baseType: !312, size: 32, offset: 96)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !301, file: !302, line: 1340, baseType: !5650, size: 64, offset: 20672)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !302, line: 69, flags: DIFlagFwdDecl)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !301, file: !302, line: 1351, baseType: !32, size: 32, offset: 20736)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !301, file: !302, line: 1352, baseType: !32, size: 32, offset: 20768)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !301, file: !302, line: 1354, baseType: !49, size: 64, offset: 20800)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !301, file: !302, line: 1364, baseType: !369, size: 64, offset: 20864)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !301, file: !302, line: 1365, baseType: !369, size: 64, offset: 20928)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !301, file: !302, line: 1412, baseType: !49, size: 64, offset: 20992)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !301, file: !302, line: 1453, baseType: !5659, size: 64, offset: 21056)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !302, line: 1453, flags: DIFlagFwdDecl)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !301, file: !302, line: 1457, baseType: !5662, size: 64, offset: 21120)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !266, line: 61, size: 576, elements: !5664)
!5664 = !{!5665, !5666, !5685, !5688, !5689, !5722, !5732}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5663, file: !266, line: 62, baseType: !265, size: 32)
!5666 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !266, line: 64, baseType: !5667, size: 192, offset: 64)
!5667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5663, file: !266, line: 64, size: 192, elements: !5668)
!5668 = !{!5669, !5680}
!5669 = !DIDerivedType(tag: DW_TAG_member, scope: !5667, file: !266, line: 65, baseType: !5670, size: 192)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5667, file: !266, line: 65, size: 192, elements: !5671)
!5671 = !{!5672, !5679}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5670, file: !266, line: 66, baseType: !5673, size: 128)
!5673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5674, line: 50, size: 128, elements: !5675)
!5674 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5675 = !{!5676, !5677, !5678}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5673, file: !5674, line: 52, baseType: !49, size: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5673, file: !5674, line: 54, baseType: !18, size: 32, offset: 64)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5673, file: !5674, line: 55, baseType: !18, size: 32, offset: 96)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5670, file: !266, line: 67, baseType: !49, size: 64, offset: 128)
!5680 = !DIDerivedType(tag: DW_TAG_member, scope: !5667, file: !266, line: 70, baseType: !5681, size: 192)
!5681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5667, file: !266, line: 70, size: 192, elements: !5682)
!5682 = !{!5683, !5684}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5681, file: !266, line: 71, baseType: !654, size: 128, align: 64)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5681, file: !266, line: 72, baseType: !49, size: 64, offset: 128)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5663, file: !266, line: 76, baseType: !5686, size: 64, offset: 256)
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !266, line: 76, flags: DIFlagFwdDecl)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5663, file: !266, line: 77, baseType: !49, size: 64, offset: 320)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5663, file: !266, line: 79, baseType: !5690, size: 64, offset: 384)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5674, line: 25, size: 256, elements: !5692)
!5692 = !{!5693, !5699, !5703}
!5693 = !DIDerivedType(tag: DW_TAG_member, scope: !5691, file: !5674, line: 26, baseType: !5694, size: 128)
!5694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5691, file: !5674, line: 26, size: 128, elements: !5695)
!5695 = !{!5696, !5698}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5694, file: !5674, line: 27, baseType: !5697, size: 128)
!5697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !4483)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5694, file: !5674, line: 28, baseType: !5697, size: 128)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5691, file: !5674, line: 31, baseType: !5700, size: 64, offset: 128)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5702)
!5702 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5674, line: 23, flags: DIFlagFwdDecl)
!5703 = !DIDerivedType(tag: DW_TAG_member, scope: !5691, file: !5674, line: 33, baseType: !5704, size: 64, offset: 192)
!5704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5691, file: !5674, line: 33, size: 64, elements: !5705)
!5705 = !{!5706, !5712, !5717}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5704, file: !5674, line: 38, baseType: !5707, size: 64)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5704, file: !5674, line: 34, size: 64, elements: !5708)
!5708 = !{!5709, !5710, !5711}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5707, file: !5674, line: 35, baseType: !843, size: 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5707, file: !5674, line: 36, baseType: !93, size: 8, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5707, file: !5674, line: 37, baseType: !93, size: 8, offset: 40)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5704, file: !5674, line: 42, baseType: !5713, size: 16)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5704, file: !5674, line: 39, size: 16, elements: !5714)
!5714 = !{!5715, !5716}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5713, file: !5674, line: 40, baseType: !93, size: 8)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5713, file: !5674, line: 41, baseType: !93, size: 8, offset: 8)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5704, file: !5674, line: 46, baseType: !5718, size: 16)
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5704, file: !5674, line: 43, size: 16, elements: !5719)
!5719 = !{!5720, !5721}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5718, file: !5674, line: 44, baseType: !93, size: 8)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5718, file: !5674, line: 45, baseType: !93, size: 8, offset: 8)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5663, file: !266, line: 81, baseType: !5723, size: 64, offset: 448)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !266, line: 85, size: 384, elements: !5725)
!5725 = !{!5726, !5727, !5728, !5729, !5730, !5731}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5724, file: !266, line: 86, baseType: !5686, size: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5724, file: !266, line: 87, baseType: !49, size: 64, offset: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5724, file: !266, line: 88, baseType: !49, size: 64, offset: 128)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5724, file: !266, line: 89, baseType: !49, size: 64, offset: 192)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5724, file: !266, line: 90, baseType: !831, size: 8, offset: 256)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5724, file: !266, line: 92, baseType: !5723, size: 64, offset: 320)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5663, file: !266, line: 82, baseType: !18, size: 32, offset: 512)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !301, file: !302, line: 1463, baseType: !5734, offset: 21184)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !302, line: 739, elements: !639)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !301, file: !302, line: 1470, baseType: !654, size: 128, align: 64, offset: 21184)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !301, file: !302, line: 1471, baseType: !317, size: 32, offset: 21312)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !301, file: !302, line: 1472, baseType: !32, size: 32, offset: 21344)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !301, file: !302, line: 1474, baseType: !300, size: 64, offset: 21376)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !301, file: !302, line: 1475, baseType: !2541, size: 320, offset: 21440)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !301, file: !302, line: 1478, baseType: !5741, size: 64, offset: 21760)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !302, line: 1478, flags: DIFlagFwdDecl)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !301, file: !302, line: 1482, baseType: !317, size: 32, offset: 21824)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !301, file: !302, line: 1489, baseType: !30, size: 64, offset: 21888)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !301, file: !302, line: 1504, baseType: !30, size: 64, offset: 21952)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !301, file: !302, line: 1505, baseType: !370, size: 64, offset: 22016)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !301, file: !302, line: 1506, baseType: !369, size: 64, offset: 22080)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !301, file: !302, line: 1507, baseType: !370, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !301, file: !302, line: 1508, baseType: !370, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !301, file: !302, line: 1509, baseType: !370, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !301, file: !302, line: 1510, baseType: !654, size: 128, align: 64, offset: 22208)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !301, file: !302, line: 1511, baseType: !32, size: 32, offset: 22336)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !301, file: !302, line: 1515, baseType: !5754, size: 64, offset: 22400)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !331, line: 56, size: 64, elements: !5755)
!5755 = !{!5756}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5754, file: !331, line: 57, baseType: !334, size: 64)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !301, file: !302, line: 1518, baseType: !5754, size: 64, offset: 22464)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !301, file: !302, line: 1528, baseType: !654, size: 128, align: 64, offset: 22528)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !301, file: !302, line: 1552, baseType: !5760, size: 35328, offset: 23040)
!5760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5761, line: 430, size: 35328, elements: !5762)
!5761 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5762 = !{!5763, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5790, !5791, !5792, !5793, !5794, !5795, !5798, !5799, !5800, !5801}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5760, file: !5761, line: 432, baseType: !5764, size: 192)
!5764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5765, size: 192, elements: !710)
!5765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5766, line: 16, size: 64, elements: !5767)
!5766 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5767 = !{!5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5765, file: !5766, line: 17, baseType: !103, size: 16)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5765, file: !5766, line: 18, baseType: !103, size: 16, offset: 16)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5765, file: !5766, line: 19, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5765, file: !5766, line: 19, baseType: !103, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5765, file: !5766, line: 19, baseType: !103, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5765, file: !5766, line: 19, baseType: !103, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5765, file: !5766, line: 19, baseType: !103, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5765, file: !5766, line: 20, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5765, file: !5766, line: 20, baseType: !103, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5765, file: !5766, line: 20, baseType: !103, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5765, file: !5766, line: 20, baseType: !103, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5765, file: !5766, line: 20, baseType: !103, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5765, file: !5766, line: 20, baseType: !103, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5760, file: !5761, line: 436, baseType: !49, size: 64, offset: 192)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5760, file: !5761, line: 440, baseType: !36, size: 16, offset: 256)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5760, file: !5761, line: 441, baseType: !36, size: 16, offset: 272)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5760, file: !5761, line: 442, baseType: !36, size: 16, offset: 288)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5760, file: !5761, line: 443, baseType: !36, size: 16, offset: 304)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5760, file: !5761, line: 447, baseType: !49, size: 64, offset: 320)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5760, file: !5761, line: 448, baseType: !49, size: 64, offset: 384)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5760, file: !5761, line: 459, baseType: !5789, size: 256, offset: 448)
!5789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 256, elements: !731)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5760, file: !5761, line: 461, baseType: !49, size: 64, offset: 704)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5760, file: !5761, line: 463, baseType: !49, size: 64, offset: 768)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5760, file: !5761, line: 465, baseType: !49, size: 64, offset: 832)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5760, file: !5761, line: 466, baseType: !49, size: 64, offset: 896)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5760, file: !5761, line: 467, baseType: !49, size: 64, offset: 960)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5760, file: !5761, line: 473, baseType: !5796, size: 64, offset: 1024)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5761, line: 10, flags: DIFlagFwdDecl)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5760, file: !5761, line: 480, baseType: !49, size: 64, offset: 1088)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5760, file: !5761, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5760, file: !5761, line: 491, baseType: !311, size: 32, offset: 1184)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5760, file: !5761, line: 501, baseType: !5802, size: 33792, offset: 1536)
!5802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5803, line: 448, size: 33792, elements: !5804)
!5803 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5804 = !{!5805, !5806, !5807, !5915, !5916, !5922, !5923}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5802, file: !5803, line: 461, baseType: !18, size: 32)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5802, file: !5803, line: 468, baseType: !49, size: 64, offset: 64)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5802, file: !5803, line: 476, baseType: !5808, size: 64, offset: 128)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5803, line: 356, size: 33280, align: 512, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5809, file: !5803, line: 358, baseType: !18, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5809, file: !5803, line: 361, baseType: !18, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5809, file: !5803, line: 364, baseType: !369, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5809, file: !5803, line: 367, baseType: !369, size: 64, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5809, file: !5803, line: 370, baseType: !369, size: 64, offset: 192)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5809, file: !5803, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5809, file: !5803, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5809, file: !5803, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5809, file: !5803, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5809, file: !5803, line: 397, baseType: !5821, size: 32768, offset: 512)
!5821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5803, line: 348, size: 32768, elements: !5822)
!5822 = !{!5823, !5838, !5875, !5900, !5913}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5821, file: !5803, line: 349, baseType: !5824, size: 896)
!5824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5803, line: 12, size: 896, elements: !5825)
!5825 = !{!5826, !5827, !5828, !5829, !5830, !5831, !5832, !5833, !5837}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5824, file: !5803, line: 13, baseType: !311, size: 32)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5824, file: !5803, line: 14, baseType: !311, size: 32, offset: 32)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5824, file: !5803, line: 15, baseType: !311, size: 32, offset: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5824, file: !5803, line: 16, baseType: !311, size: 32, offset: 96)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5824, file: !5803, line: 17, baseType: !311, size: 32, offset: 128)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5824, file: !5803, line: 18, baseType: !311, size: 32, offset: 160)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5824, file: !5803, line: 19, baseType: !311, size: 32, offset: 192)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5824, file: !5803, line: 22, baseType: !5834, size: 640, offset: 224)
!5834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 640, elements: !5835)
!5835 = !{!5836}
!5836 = !DISubrange(count: 20)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5824, file: !5803, line: 25, baseType: !311, size: 32, offset: 864)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5821, file: !5803, line: 350, baseType: !5839, size: 4096, align: 128)
!5839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5803, line: 34, size: 4096, align: 128, elements: !5840)
!5840 = !{!5841, !5842, !5843, !5844, !5845, !5860, !5861, !5862, !5864, !5866, !5870}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5839, file: !5803, line: 35, baseType: !103, size: 16)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5839, file: !5803, line: 36, baseType: !103, size: 16, offset: 16)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5839, file: !5803, line: 37, baseType: !103, size: 16, offset: 32)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5839, file: !5803, line: 38, baseType: !103, size: 16, offset: 48)
!5845 = !DIDerivedType(tag: DW_TAG_member, scope: !5839, file: !5803, line: 39, baseType: !5846, size: 128, offset: 64)
!5846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5839, file: !5803, line: 39, size: 128, elements: !5847)
!5847 = !{!5848, !5853}
!5848 = !DIDerivedType(tag: DW_TAG_member, scope: !5846, file: !5803, line: 40, baseType: !5849, size: 128)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5846, file: !5803, line: 40, size: 128, elements: !5850)
!5850 = !{!5851, !5852}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5849, file: !5803, line: 41, baseType: !369, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5849, file: !5803, line: 42, baseType: !369, size: 64, offset: 64)
!5853 = !DIDerivedType(tag: DW_TAG_member, scope: !5846, file: !5803, line: 44, baseType: !5854, size: 128)
!5854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5846, file: !5803, line: 44, size: 128, elements: !5855)
!5855 = !{!5856, !5857, !5858, !5859}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5854, file: !5803, line: 45, baseType: !311, size: 32)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5854, file: !5803, line: 46, baseType: !311, size: 32, offset: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5854, file: !5803, line: 47, baseType: !311, size: 32, offset: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5854, file: !5803, line: 48, baseType: !311, size: 32, offset: 96)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5839, file: !5803, line: 51, baseType: !311, size: 32, offset: 192)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5839, file: !5803, line: 52, baseType: !311, size: 32, offset: 224)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5839, file: !5803, line: 55, baseType: !5863, size: 1024, offset: 256)
!5863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 1024, elements: !4474)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5839, file: !5803, line: 58, baseType: !5865, size: 2048, offset: 1280)
!5865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 2048, elements: !1490)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5839, file: !5803, line: 60, baseType: !5867, size: 384, offset: 3328)
!5867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !5868)
!5868 = !{!5869}
!5869 = !DISubrange(count: 12)
!5870 = !DIDerivedType(tag: DW_TAG_member, scope: !5839, file: !5803, line: 62, baseType: !5871, size: 384, offset: 3712)
!5871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5839, file: !5803, line: 62, size: 384, elements: !5872)
!5872 = !{!5873, !5874}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5871, file: !5803, line: 63, baseType: !5867, size: 384)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5871, file: !5803, line: 64, baseType: !5867, size: 384)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5821, file: !5803, line: 351, baseType: !5876, size: 1088)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5803, line: 79, size: 1088, elements: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5899}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5876, file: !5803, line: 80, baseType: !311, size: 32)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5876, file: !5803, line: 81, baseType: !311, size: 32, offset: 32)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5876, file: !5803, line: 82, baseType: !311, size: 32, offset: 64)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5876, file: !5803, line: 83, baseType: !311, size: 32, offset: 96)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5876, file: !5803, line: 84, baseType: !311, size: 32, offset: 128)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5876, file: !5803, line: 85, baseType: !311, size: 32, offset: 160)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5876, file: !5803, line: 86, baseType: !311, size: 32, offset: 192)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5876, file: !5803, line: 88, baseType: !5834, size: 640, offset: 224)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5876, file: !5803, line: 89, baseType: !93, size: 8, offset: 864)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5876, file: !5803, line: 90, baseType: !93, size: 8, offset: 872)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5876, file: !5803, line: 91, baseType: !93, size: 8, offset: 880)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5876, file: !5803, line: 92, baseType: !93, size: 8, offset: 888)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5876, file: !5803, line: 93, baseType: !93, size: 8, offset: 896)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5876, file: !5803, line: 94, baseType: !93, size: 8, offset: 904)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5876, file: !5803, line: 95, baseType: !5893, size: 64, offset: 960)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5895, line: 11, size: 128, elements: !5896)
!5895 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5896 = !{!5897, !5898}
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5894, file: !5895, line: 12, baseType: !297, size: 64)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5894, file: !5895, line: 13, baseType: !3739, size: 64, offset: 64)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5876, file: !5803, line: 96, baseType: !311, size: 32, offset: 1024)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5821, file: !5803, line: 352, baseType: !5901, size: 4608, align: 512)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5803, line: 333, size: 4608, align: 512, elements: !5902)
!5902 = !{!5903, !5904, !5911}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5901, file: !5803, line: 334, baseType: !5839, size: 4096, align: 128)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5901, file: !5803, line: 335, baseType: !5905, size: 512, offset: 4096)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5803, line: 312, size: 512, elements: !5906)
!5906 = !{!5907, !5908, !5909}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5905, file: !5803, line: 313, baseType: !369, size: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5905, file: !5803, line: 314, baseType: !369, size: 64, offset: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5905, file: !5803, line: 315, baseType: !5910, size: 384, offset: 128)
!5910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, elements: !897)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5901, file: !5803, line: 336, baseType: !5912, offset: 4608)
!5912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, elements: !1062)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5821, file: !5803, line: 353, baseType: !5914, size: 32768)
!5914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32768, elements: !2771)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5802, file: !5803, line: 484, baseType: !5808, size: 64, offset: 192)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5802, file: !5803, line: 491, baseType: !5917, size: 128, offset: 256)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5803, line: 404, size: 128, elements: !5918)
!5918 = !{!5919, !5920, !5921}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5917, file: !5803, line: 424, baseType: !369, size: 64)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5917, file: !5803, line: 432, baseType: !18, size: 32, offset: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5917, file: !5803, line: 440, baseType: !18, size: 32, offset: 96)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5802, file: !5803, line: 498, baseType: !5917, size: 128, offset: 384)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5802, file: !5803, line: 508, baseType: !5809, size: 33280, align: 512, offset: 512)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5000)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_waitv", file: !289, line: 64, size: 192, elements: !5929)
!5929 = !{!5930, !5931, !5932, !5933}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5928, file: !289, line: 65, baseType: !370, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5928, file: !289, line: 66, baseType: !370, size: 64, offset: 64)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5928, file: !289, line: 67, baseType: !312, size: 32, offset: 128)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !5928, file: !289, line: 68, baseType: !312, size: 32, offset: 160)
!5934 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_size_t", file: !5556, line: 30, baseType: !311)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5938, size: 64)
!5938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!5939 = !{!0, !7}
!5940 = !{!"rsp"}
!5941 = !{i32 7, !"Dwarf Version", i32 5}
!5942 = !{i32 2, !"Debug Info Version", i32 3}
!5943 = !{i32 1, !"wchar_size", i32 2}
!5944 = !{i32 8, !"cf-protection-branch", i32 1}
!5945 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5946 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5947 = !{i32 1, !"Code Model", i32 2}
!5948 = !{i32 1, !"override-stack-alignment", i32 8}
!5949 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5950 = distinct !DISubprogram(name: "__x64_sys_set_robust_list", scope: !14, file: !14, line: 29, type: !5951, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5955)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!297, !5953}
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!5955 = !{!5956}
!5956 = !DILocalVariable(name: "regs", arg: 1, scope: !5950, file: !14, line: 29, type: !5953)
!5957 = !DILocation(line: 29, column: 1, scope: !5950)
!5958 = distinct !DISubprogram(name: "__se_sys_set_robust_list", scope: !14, file: !14, line: 29, type: !5959, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5961)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!297, !297, !297}
!5961 = !{!5962, !5963, !5964}
!5962 = !DILocalVariable(name: "head", arg: 1, scope: !5958, file: !14, line: 29, type: !297)
!5963 = !DILocalVariable(name: "len", arg: 2, scope: !5958, file: !14, line: 29, type: !297)
!5964 = !DILocalVariable(name: "ret", scope: !5958, file: !14, line: 29, type: !297)
!5965 = !DILocation(line: 29, column: 1, scope: !5958)
!5966 = !DILocation(line: 29, column: 1, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5958, file: !14, line: 29, column: 1)
!5968 = distinct !DISubprogram(name: "__ia32_sys_set_robust_list", scope: !14, file: !14, line: 29, type: !5951, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5969)
!5969 = !{!5970}
!5970 = !DILocalVariable(name: "regs", arg: 1, scope: !5968, file: !14, line: 29, type: !5953)
!5971 = !DILocation(line: 29, column: 1, scope: !5968)
!5972 = distinct !DISubprogram(name: "__x64_sys_get_robust_list", scope: !14, file: !14, line: 49, type: !5951, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5973)
!5973 = !{!5974}
!5974 = !DILocalVariable(name: "regs", arg: 1, scope: !5972, file: !14, line: 49, type: !5953)
!5975 = !DILocation(line: 49, column: 1, scope: !5972)
!5976 = distinct !DISubprogram(name: "__se_sys_get_robust_list", scope: !14, file: !14, line: 49, type: !5977, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5979)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!297, !297, !297, !297}
!5979 = !{!5980, !5981, !5982, !5983}
!5980 = !DILocalVariable(name: "pid", arg: 1, scope: !5976, file: !14, line: 49, type: !297)
!5981 = !DILocalVariable(name: "head_ptr", arg: 2, scope: !5976, file: !14, line: 49, type: !297)
!5982 = !DILocalVariable(name: "len_ptr", arg: 3, scope: !5976, file: !14, line: 49, type: !297)
!5983 = !DILocalVariable(name: "ret", scope: !5976, file: !14, line: 49, type: !297)
!5984 = !DILocation(line: 49, column: 1, scope: !5976)
!5985 = !DILocation(line: 49, column: 1, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5976, file: !14, line: 49, column: 1)
!5987 = distinct !DISubprogram(name: "__ia32_sys_get_robust_list", scope: !14, file: !14, line: 49, type: !5951, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5988)
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "regs", arg: 1, scope: !5987, file: !14, line: 49, type: !5953)
!5990 = !DILocation(line: 49, column: 1, scope: !5987)
!5991 = distinct !DISubprogram(name: "do_futex", scope: !14, file: !14, line: 85, type: !5992, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5995)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!297, !4984, !32, !311, !5994, !4984, !311, !311}
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004}
!5996 = !DILocalVariable(name: "uaddr", arg: 1, scope: !5991, file: !14, line: 85, type: !4984)
!5997 = !DILocalVariable(name: "op", arg: 2, scope: !5991, file: !14, line: 85, type: !32)
!5998 = !DILocalVariable(name: "val", arg: 3, scope: !5991, file: !14, line: 85, type: !311)
!5999 = !DILocalVariable(name: "timeout", arg: 4, scope: !5991, file: !14, line: 85, type: !5994)
!6000 = !DILocalVariable(name: "uaddr2", arg: 5, scope: !5991, file: !14, line: 86, type: !4984)
!6001 = !DILocalVariable(name: "val2", arg: 6, scope: !5991, file: !14, line: 86, type: !311)
!6002 = !DILocalVariable(name: "val3", arg: 7, scope: !5991, file: !14, line: 86, type: !311)
!6003 = !DILocalVariable(name: "cmd", scope: !5991, file: !14, line: 88, type: !32)
!6004 = !DILocalVariable(name: "flags", scope: !5991, file: !14, line: 89, type: !18)
!6005 = !DILocation(line: 85, column: 27, scope: !5991)
!6006 = !DILocation(line: 85, column: 38, scope: !5991)
!6007 = !DILocation(line: 85, column: 46, scope: !5991)
!6008 = !DILocation(line: 85, column: 60, scope: !5991)
!6009 = !DILocation(line: 86, column: 15, scope: !5991)
!6010 = !DILocation(line: 86, column: 27, scope: !5991)
!6011 = !DILocation(line: 86, column: 37, scope: !5991)
!6012 = !DILocation(line: 88, column: 2, scope: !5991)
!6013 = !DILocation(line: 88, column: 6, scope: !5991)
!6014 = !DILocation(line: 88, column: 12, scope: !5991)
!6015 = !DILocation(line: 88, column: 15, scope: !5991)
!6016 = !DILocation(line: 89, column: 2, scope: !5991)
!6017 = !DILocation(line: 89, column: 15, scope: !5991)
!6018 = !DILocation(line: 91, column: 8, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5991, file: !14, line: 91, column: 6)
!6020 = !DILocation(line: 91, column: 11, scope: !6019)
!6021 = !DILocation(line: 91, column: 6, scope: !5991)
!6022 = !DILocation(line: 92, column: 9, scope: !6019)
!6023 = !DILocation(line: 92, column: 3, scope: !6019)
!6024 = !DILocation(line: 94, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5991, file: !14, line: 94, column: 6)
!6026 = !DILocation(line: 94, column: 9, scope: !6025)
!6027 = !DILocation(line: 94, column: 6, scope: !5991)
!6028 = !DILocation(line: 95, column: 9, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6025, file: !14, line: 94, column: 33)
!6030 = !DILocation(line: 96, column: 7, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6029, file: !14, line: 96, column: 7)
!6032 = !DILocation(line: 96, column: 11, scope: !6031)
!6033 = !DILocation(line: 96, column: 32, scope: !6031)
!6034 = !DILocation(line: 96, column: 35, scope: !6031)
!6035 = !DILocation(line: 96, column: 39, scope: !6031)
!6036 = !DILocation(line: 96, column: 64, scope: !6031)
!6037 = !DILocation(line: 97, column: 7, scope: !6031)
!6038 = !DILocation(line: 97, column: 11, scope: !6031)
!6039 = !DILocation(line: 96, column: 7, scope: !6029)
!6040 = !DILocation(line: 98, column: 4, scope: !6031)
!6041 = !DILocation(line: 99, column: 2, scope: !6029)
!6042 = !DILocation(line: 101, column: 10, scope: !5991)
!6043 = !DILocation(line: 101, column: 2, scope: !5991)
!6044 = !DILocation(line: 103, column: 8, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5991, file: !14, line: 101, column: 15)
!6046 = !DILocation(line: 103, column: 3, scope: !6045)
!6047 = !DILocation(line: 106, column: 21, scope: !6045)
!6048 = !DILocation(line: 106, column: 28, scope: !6045)
!6049 = !DILocation(line: 106, column: 35, scope: !6045)
!6050 = !DILocation(line: 106, column: 40, scope: !6045)
!6051 = !DILocation(line: 106, column: 49, scope: !6045)
!6052 = !DILocation(line: 106, column: 10, scope: !6045)
!6053 = !DILocation(line: 106, column: 3, scope: !6045)
!6054 = !DILocation(line: 108, column: 8, scope: !6045)
!6055 = !DILocation(line: 108, column: 3, scope: !6045)
!6056 = !DILocation(line: 111, column: 21, scope: !6045)
!6057 = !DILocation(line: 111, column: 28, scope: !6045)
!6058 = !DILocation(line: 111, column: 35, scope: !6045)
!6059 = !DILocation(line: 111, column: 40, scope: !6045)
!6060 = !DILocation(line: 111, column: 10, scope: !6045)
!6061 = !DILocation(line: 111, column: 3, scope: !6045)
!6062 = !DILocation(line: 113, column: 24, scope: !6045)
!6063 = !DILocation(line: 113, column: 31, scope: !6045)
!6064 = !DILocation(line: 113, column: 38, scope: !6045)
!6065 = !DILocation(line: 113, column: 46, scope: !6045)
!6066 = !DILocation(line: 113, column: 51, scope: !6045)
!6067 = !DILocation(line: 113, column: 10, scope: !6045)
!6068 = !DILocation(line: 113, column: 3, scope: !6045)
!6069 = !DILocation(line: 115, column: 24, scope: !6045)
!6070 = !DILocation(line: 115, column: 31, scope: !6045)
!6071 = !DILocation(line: 115, column: 38, scope: !6045)
!6072 = !DILocation(line: 115, column: 46, scope: !6045)
!6073 = !DILocation(line: 115, column: 51, scope: !6045)
!6074 = !DILocation(line: 115, column: 10, scope: !6045)
!6075 = !DILocation(line: 115, column: 3, scope: !6045)
!6076 = !DILocation(line: 117, column: 24, scope: !6045)
!6077 = !DILocation(line: 117, column: 31, scope: !6045)
!6078 = !DILocation(line: 117, column: 38, scope: !6045)
!6079 = !DILocation(line: 117, column: 46, scope: !6045)
!6080 = !DILocation(line: 117, column: 51, scope: !6045)
!6081 = !DILocation(line: 117, column: 57, scope: !6045)
!6082 = !DILocation(line: 117, column: 10, scope: !6045)
!6083 = !DILocation(line: 117, column: 3, scope: !6045)
!6084 = !DILocation(line: 119, column: 9, scope: !6045)
!6085 = !DILocation(line: 119, column: 3, scope: !6045)
!6086 = !DILocation(line: 122, column: 24, scope: !6045)
!6087 = !DILocation(line: 122, column: 31, scope: !6045)
!6088 = !DILocation(line: 122, column: 38, scope: !6045)
!6089 = !DILocation(line: 122, column: 10, scope: !6045)
!6090 = !DILocation(line: 122, column: 3, scope: !6045)
!6091 = !DILocation(line: 124, column: 26, scope: !6045)
!6092 = !DILocation(line: 124, column: 33, scope: !6045)
!6093 = !DILocation(line: 124, column: 10, scope: !6045)
!6094 = !DILocation(line: 124, column: 3, scope: !6045)
!6095 = !DILocation(line: 126, column: 24, scope: !6045)
!6096 = !DILocation(line: 126, column: 31, scope: !6045)
!6097 = !DILocation(line: 126, column: 10, scope: !6045)
!6098 = !DILocation(line: 126, column: 3, scope: !6045)
!6099 = !DILocation(line: 128, column: 8, scope: !6045)
!6100 = !DILocation(line: 129, column: 32, scope: !6045)
!6101 = !DILocation(line: 129, column: 39, scope: !6045)
!6102 = !DILocation(line: 129, column: 46, scope: !6045)
!6103 = !DILocation(line: 129, column: 51, scope: !6045)
!6104 = !DILocation(line: 129, column: 60, scope: !6045)
!6105 = !DILocation(line: 130, column: 11, scope: !6045)
!6106 = !DILocation(line: 129, column: 10, scope: !6045)
!6107 = !DILocation(line: 129, column: 3, scope: !6045)
!6108 = !DILocation(line: 132, column: 24, scope: !6045)
!6109 = !DILocation(line: 132, column: 31, scope: !6045)
!6110 = !DILocation(line: 132, column: 38, scope: !6045)
!6111 = !DILocation(line: 132, column: 46, scope: !6045)
!6112 = !DILocation(line: 132, column: 51, scope: !6045)
!6113 = !DILocation(line: 132, column: 10, scope: !6045)
!6114 = !DILocation(line: 132, column: 3, scope: !6045)
!6115 = !DILocation(line: 134, column: 2, scope: !5991)
!6116 = !DILocation(line: 135, column: 1, scope: !5991)
!6117 = !DISubprogram(name: "futex_wait", scope: !5564, file: !5564, line: 267, type: !6118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!32, !4984, !18, !311, !5994, !311}
!6120 = !DISubprogram(name: "futex_wake", scope: !5564, file: !5564, line: 285, type: !6121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{!32, !4984, !18, !32, !311}
!6123 = !DISubprogram(name: "futex_requeue", scope: !5564, file: !5564, line: 263, type: !6124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!32, !4984, !18, !4984, !32, !32, !4984, !32}
!6126 = !DISubprogram(name: "futex_wake_op", scope: !5564, file: !5564, line: 287, type: !6127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!32, !4984, !18, !4984, !32, !32, !32}
!6129 = !DISubprogram(name: "futex_lock_pi", scope: !5564, file: !5564, line: 292, type: !6130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{!32, !4984, !18, !5994, !32}
!6132 = !DISubprogram(name: "futex_unlock_pi", scope: !5564, file: !5564, line: 290, type: !6133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!32, !4984, !18}
!6135 = !DISubprogram(name: "futex_wait_requeue_pi", scope: !5564, file: !5564, line: 259, type: !6136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6136 = !DISubroutineType(types: !6137)
!6137 = !{!32, !4984, !18, !311, !5994, !311, !4984}
!6138 = distinct !DISubprogram(name: "__x64_sys_futex", scope: !14, file: !14, line: 164, type: !5951, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6139)
!6139 = !{!6140}
!6140 = !DILocalVariable(name: "regs", arg: 1, scope: !6138, file: !14, line: 164, type: !5953)
!6141 = !DILocation(line: 164, column: 1, scope: !6138)
!6142 = distinct !DISubprogram(name: "__se_sys_futex", scope: !14, file: !14, line: 164, type: !6143, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6145)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!297, !297, !297, !297, !297, !297, !297}
!6145 = !{!6146, !6147, !6148, !6149, !6150, !6151, !6152}
!6146 = !DILocalVariable(name: "uaddr", arg: 1, scope: !6142, file: !14, line: 164, type: !297)
!6147 = !DILocalVariable(name: "op", arg: 2, scope: !6142, file: !14, line: 164, type: !297)
!6148 = !DILocalVariable(name: "val", arg: 3, scope: !6142, file: !14, line: 164, type: !297)
!6149 = !DILocalVariable(name: "utime", arg: 4, scope: !6142, file: !14, line: 164, type: !297)
!6150 = !DILocalVariable(name: "uaddr2", arg: 5, scope: !6142, file: !14, line: 164, type: !297)
!6151 = !DILocalVariable(name: "val3", arg: 6, scope: !6142, file: !14, line: 164, type: !297)
!6152 = !DILocalVariable(name: "ret", scope: !6142, file: !14, line: 164, type: !297)
!6153 = !DILocation(line: 164, column: 1, scope: !6142)
!6154 = !DILocation(line: 164, column: 1, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6142, file: !14, line: 164, column: 1)
!6156 = distinct !DISubprogram(name: "__ia32_sys_futex", scope: !14, file: !14, line: 164, type: !5951, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6157)
!6157 = !{!6158}
!6158 = !DILocalVariable(name: "regs", arg: 1, scope: !6156, file: !14, line: 164, type: !5953)
!6159 = !DILocation(line: 164, column: 1, scope: !6156)
!6160 = distinct !DISubprogram(name: "__x64_sys_futex_waitv", scope: !14, file: !14, line: 246, type: !5951, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6161)
!6161 = !{!6162}
!6162 = !DILocalVariable(name: "regs", arg: 1, scope: !6160, file: !14, line: 246, type: !5953)
!6163 = !DILocation(line: 246, column: 1, scope: !6160)
!6164 = distinct !DISubprogram(name: "__se_sys_futex_waitv", scope: !14, file: !14, line: 246, type: !6165, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6167)
!6165 = !DISubroutineType(types: !6166)
!6166 = !{!297, !297, !297, !297, !297, !297}
!6167 = !{!6168, !6169, !6170, !6171, !6172, !6173}
!6168 = !DILocalVariable(name: "waiters", arg: 1, scope: !6164, file: !14, line: 246, type: !297)
!6169 = !DILocalVariable(name: "nr_futexes", arg: 2, scope: !6164, file: !14, line: 246, type: !297)
!6170 = !DILocalVariable(name: "flags", arg: 3, scope: !6164, file: !14, line: 246, type: !297)
!6171 = !DILocalVariable(name: "timeout", arg: 4, scope: !6164, file: !14, line: 246, type: !297)
!6172 = !DILocalVariable(name: "clockid", arg: 5, scope: !6164, file: !14, line: 246, type: !297)
!6173 = !DILocalVariable(name: "ret", scope: !6164, file: !14, line: 246, type: !297)
!6174 = !DILocation(line: 246, column: 1, scope: !6164)
!6175 = !DILocation(line: 246, column: 1, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6164, file: !14, line: 246, column: 1)
!6177 = distinct !DISubprogram(name: "__ia32_sys_futex_waitv", scope: !14, file: !14, line: 246, type: !5951, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6178)
!6178 = !{!6179}
!6179 = !DILocalVariable(name: "regs", arg: 1, scope: !6177, file: !14, line: 246, type: !5953)
!6180 = !DILocation(line: 246, column: 1, scope: !6177)
!6181 = distinct !DISubprogram(name: "__ia32_compat_sys_set_robust_list", scope: !14, file: !14, line: 309, type: !5951, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6182)
!6182 = !{!6183}
!6183 = !DILocalVariable(name: "regs", arg: 1, scope: !6181, file: !14, line: 309, type: !5953)
!6184 = !DILocation(line: 309, column: 1, scope: !6181)
!6185 = distinct !DISubprogram(name: "__se_compat_sys_set_robust_list", scope: !14, file: !14, line: 309, type: !5959, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6186)
!6186 = !{!6187, !6188}
!6187 = !DILocalVariable(name: "head", arg: 1, scope: !6185, file: !14, line: 309, type: !297)
!6188 = !DILocalVariable(name: "len", arg: 2, scope: !6185, file: !14, line: 309, type: !297)
!6189 = !DILocation(line: 309, column: 1, scope: !6185)
!6190 = distinct !DISubprogram(name: "__ia32_compat_sys_get_robust_list", scope: !14, file: !14, line: 321, type: !5951, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6191)
!6191 = !{!6192}
!6192 = !DILocalVariable(name: "regs", arg: 1, scope: !6190, file: !14, line: 321, type: !5953)
!6193 = !DILocation(line: 321, column: 1, scope: !6190)
!6194 = distinct !DISubprogram(name: "__se_compat_sys_get_robust_list", scope: !14, file: !14, line: 321, type: !5977, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6195)
!6195 = !{!6196, !6197, !6198}
!6196 = !DILocalVariable(name: "pid", arg: 1, scope: !6194, file: !14, line: 321, type: !297)
!6197 = !DILocalVariable(name: "head_ptr", arg: 2, scope: !6194, file: !14, line: 321, type: !297)
!6198 = !DILocalVariable(name: "len_ptr", arg: 3, scope: !6194, file: !14, line: 321, type: !297)
!6199 = !DILocation(line: 321, column: 1, scope: !6194)
!6200 = distinct !DISubprogram(name: "__x64_sys_futex_time32", scope: !14, file: !14, line: 359, type: !5951, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6201)
!6201 = !{!6202}
!6202 = !DILocalVariable(name: "regs", arg: 1, scope: !6200, file: !14, line: 359, type: !5953)
!6203 = !DILocation(line: 359, column: 1, scope: !6200)
!6204 = distinct !DISubprogram(name: "__se_sys_futex_time32", scope: !14, file: !14, line: 359, type: !6143, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6205)
!6205 = !{!6206, !6207, !6208, !6209, !6210, !6211, !6212}
!6206 = !DILocalVariable(name: "uaddr", arg: 1, scope: !6204, file: !14, line: 359, type: !297)
!6207 = !DILocalVariable(name: "op", arg: 2, scope: !6204, file: !14, line: 359, type: !297)
!6208 = !DILocalVariable(name: "val", arg: 3, scope: !6204, file: !14, line: 359, type: !297)
!6209 = !DILocalVariable(name: "utime", arg: 4, scope: !6204, file: !14, line: 359, type: !297)
!6210 = !DILocalVariable(name: "uaddr2", arg: 5, scope: !6204, file: !14, line: 359, type: !297)
!6211 = !DILocalVariable(name: "val3", arg: 6, scope: !6204, file: !14, line: 359, type: !297)
!6212 = !DILocalVariable(name: "ret", scope: !6204, file: !14, line: 359, type: !297)
!6213 = !DILocation(line: 359, column: 1, scope: !6204)
!6214 = !DILocation(line: 359, column: 1, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6204, file: !14, line: 359, column: 1)
!6216 = distinct !DISubprogram(name: "__ia32_sys_futex_time32", scope: !14, file: !14, line: 359, type: !5951, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6217)
!6217 = !{!6218}
!6218 = !DILocalVariable(name: "regs", arg: 1, scope: !6216, file: !14, line: 359, type: !5953)
!6219 = !DILocation(line: 359, column: 1, scope: !6216)
!6220 = distinct !DISubprogram(name: "__do_sys_set_robust_list", scope: !14, file: !14, line: 29, type: !6221, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6223)
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!297, !287, !45}
!6223 = !{!6224, !6225}
!6224 = !DILocalVariable(name: "head", arg: 1, scope: !6220, file: !14, line: 29, type: !287)
!6225 = !DILocalVariable(name: "len", arg: 2, scope: !6220, file: !14, line: 29, type: !45)
!6226 = !DILocation(line: 29, column: 1, scope: !6220)
!6227 = !DILocation(line: 35, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6220, file: !14, line: 35, column: 6)
!6229 = !DILocation(line: 35, column: 6, scope: !6220)
!6230 = !DILocation(line: 36, column: 3, scope: !6228)
!6231 = !DILocation(line: 38, column: 25, scope: !6220)
!6232 = !DILocation(line: 38, column: 2, scope: !6220)
!6233 = !DILocation(line: 38, column: 11, scope: !6220)
!6234 = !DILocation(line: 38, column: 23, scope: !6220)
!6235 = !DILocation(line: 40, column: 2, scope: !6220)
!6236 = !DILocation(line: 41, column: 1, scope: !6220)
!6237 = distinct !DISubprogram(name: "get_current", scope: !6238, file: !6238, line: 39, type: !6239, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6241)
!6238 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!300}
!6241 = !{!6242, !6244, !6246}
!6242 = !DILocalVariable(name: "pscr_ret__", scope: !6243, file: !6238, line: 41, type: !300)
!6243 = distinct !DILexicalBlock(scope: !6237, file: !6238, line: 41, column: 9)
!6244 = !DILocalVariable(name: "__vpp_verify", scope: !6245, file: !6238, line: 41, type: !2127)
!6245 = distinct !DILexicalBlock(scope: !6243, file: !6238, line: 41, column: 9)
!6246 = !DILocalVariable(name: "pfo_val__", scope: !6247, file: !6238, line: 41, type: !369)
!6247 = distinct !DILexicalBlock(scope: !6243, file: !6238, line: 41, column: 9)
!6248 = !DILocation(line: 41, column: 9, scope: !6243)
!6249 = !DILocation(line: 41, column: 9, scope: !6245)
!6250 = !DILocation(line: 41, column: 9, scope: !6247)
!6251 = !{i64 2148429059}
!6252 = !DILocation(line: 41, column: 9, scope: !6237)
!6253 = !DILocation(line: 41, column: 2, scope: !6237)
!6254 = distinct !DISubprogram(name: "__do_sys_get_robust_list", scope: !14, file: !14, line: 49, type: !6255, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6257)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!297, !32, !5924, !44}
!6257 = !{!6258, !6259, !6260, !6261, !6262, !6263, !6264, !6268, !6269, !6270, !6271, !6272, !6275, !6276, !6277, !6278, !6279}
!6258 = !DILocalVariable(name: "pid", arg: 1, scope: !6254, file: !14, line: 49, type: !32)
!6259 = !DILocalVariable(name: "head_ptr", arg: 2, scope: !6254, file: !14, line: 49, type: !5924)
!6260 = !DILocalVariable(name: "len_ptr", arg: 3, scope: !6254, file: !14, line: 49, type: !44)
!6261 = !DILocalVariable(name: "head", scope: !6254, file: !14, line: 53, type: !287)
!6262 = !DILocalVariable(name: "ret", scope: !6254, file: !14, line: 54, type: !49)
!6263 = !DILocalVariable(name: "p", scope: !6254, file: !14, line: 55, type: !300)
!6264 = !DILocalVariable(name: "__ret_pu", scope: !6265, file: !14, line: 75, type: !32)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !14, line: 75, column: 6)
!6266 = distinct !DILexicalBlock(scope: !6267, file: !14, line: 75, column: 6)
!6267 = distinct !DILexicalBlock(scope: !6254, file: !14, line: 75, column: 6)
!6268 = !DILocalVariable(name: "__ptr_pu", scope: !6265, file: !14, line: 75, type: !30)
!6269 = !DILocalVariable(name: "__val_pu", scope: !6265, file: !14, line: 75, type: !45)
!6270 = !DILocalVariable(name: "__x", scope: !6265, file: !14, line: 75, type: !45)
!6271 = !DILocalVariable(name: "__ptr", scope: !6265, file: !14, line: 75, type: !44)
!6272 = !DILocalVariable(name: "__ret_pu", scope: !6273, file: !14, line: 77, type: !32)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !14, line: 77, column: 9)
!6274 = distinct !DILexicalBlock(scope: !6254, file: !14, line: 77, column: 9)
!6275 = !DILocalVariable(name: "__ptr_pu", scope: !6273, file: !14, line: 77, type: !30)
!6276 = !DILocalVariable(name: "__val_pu", scope: !6273, file: !14, line: 77, type: !287)
!6277 = !DILocalVariable(name: "__x", scope: !6273, file: !14, line: 77, type: !287)
!6278 = !DILocalVariable(name: "__ptr", scope: !6273, file: !14, line: 77, type: !5924)
!6279 = !DILabel(scope: !6254, name: "err_unlock", file: !14, line: 79)
!6280 = !DILocation(line: 49, column: 1, scope: !6254)
!6281 = !DILocation(line: 53, column: 2, scope: !6254)
!6282 = !DILocation(line: 53, column: 34, scope: !6254)
!6283 = !DILocation(line: 54, column: 2, scope: !6254)
!6284 = !DILocation(line: 54, column: 16, scope: !6254)
!6285 = !DILocation(line: 55, column: 2, scope: !6254)
!6286 = !DILocation(line: 55, column: 22, scope: !6254)
!6287 = !DILocation(line: 57, column: 2, scope: !6254)
!6288 = !DILocation(line: 59, column: 6, scope: !6254)
!6289 = !DILocation(line: 60, column: 7, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6254, file: !14, line: 60, column: 6)
!6291 = !DILocation(line: 60, column: 6, scope: !6254)
!6292 = !DILocation(line: 61, column: 7, scope: !6290)
!6293 = !DILocation(line: 61, column: 5, scope: !6290)
!6294 = !DILocation(line: 61, column: 3, scope: !6290)
!6295 = !DILocation(line: 63, column: 25, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6290, file: !14, line: 62, column: 7)
!6297 = !DILocation(line: 63, column: 7, scope: !6296)
!6298 = !DILocation(line: 63, column: 5, scope: !6296)
!6299 = !DILocation(line: 64, column: 8, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6296, file: !14, line: 64, column: 7)
!6301 = !DILocation(line: 64, column: 7, scope: !6296)
!6302 = !DILocation(line: 65, column: 4, scope: !6300)
!6303 = !DILocation(line: 68, column: 6, scope: !6254)
!6304 = !DILocation(line: 69, column: 25, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6254, file: !14, line: 69, column: 6)
!6306 = !DILocation(line: 69, column: 7, scope: !6305)
!6307 = !DILocation(line: 69, column: 6, scope: !6254)
!6308 = !DILocation(line: 70, column: 3, scope: !6305)
!6309 = !DILocation(line: 72, column: 9, scope: !6254)
!6310 = !DILocation(line: 72, column: 12, scope: !6254)
!6311 = !DILocation(line: 72, column: 7, scope: !6254)
!6312 = !DILocation(line: 73, column: 2, scope: !6254)
!6313 = !DILocation(line: 75, column: 6, scope: !6266)
!6314 = !DILocation(line: 75, column: 6, scope: !6265)
!6315 = !{i64 2155657219}
!6316 = !DILocation(line: 75, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6265, file: !14, line: 75, column: 6)
!6318 = !DILocation(line: 75, column: 6, scope: !6267)
!6319 = !DILocation(line: 75, column: 6, scope: !6254)
!6320 = !DILocation(line: 76, column: 3, scope: !6267)
!6321 = !DILocation(line: 77, column: 9, scope: !6274)
!6322 = !DILocation(line: 77, column: 9, scope: !6273)
!6323 = !{i64 2155658288}
!6324 = !DILocation(line: 77, column: 9, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6273, file: !14, line: 77, column: 9)
!6326 = !DILocation(line: 77, column: 2, scope: !6254)
!6327 = !DILocation(line: 79, column: 1, scope: !6254)
!6328 = !DILocation(line: 80, column: 2, scope: !6254)
!6329 = !DILocation(line: 82, column: 9, scope: !6254)
!6330 = !DILocation(line: 82, column: 2, scope: !6254)
!6331 = !DILocation(line: 83, column: 1, scope: !6254)
!6332 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6333, file: !6333, line: 782, type: !2716, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6333 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6334 = !DILocation(line: 784, column: 2, scope: !6332)
!6335 = !DILocation(line: 786, column: 2, scope: !6332)
!6336 = !DILocation(line: 786, column: 2, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6332, file: !6333, line: 786, column: 2)
!6338 = !DILocation(line: 787, column: 2, scope: !6332)
!6339 = !DILocation(line: 787, column: 2, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6332, file: !6333, line: 787, column: 2)
!6341 = !DILocation(line: 789, column: 1, scope: !6332)
!6342 = !DISubprogram(name: "find_task_by_vpid", scope: !302, file: !302, line: 1989, type: !6343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!300, !5031}
!6345 = !DISubprogram(name: "ptrace_may_access", scope: !6346, file: !6346, line: 88, type: !6347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DIFile(filename: "./include/linux/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2c607984366a17bb2bcdc39b38f3eca")
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!831, !300, !18}
!6349 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6333, file: !6333, line: 813, type: !2716, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6350 = !DILocation(line: 815, column: 2, scope: !6349)
!6351 = !DILocation(line: 815, column: 2, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6349, file: !6333, line: 815, column: 2)
!6353 = !DILocation(line: 818, column: 2, scope: !6349)
!6354 = !DILocation(line: 819, column: 2, scope: !6349)
!6355 = !DILocation(line: 819, column: 2, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6349, file: !6333, line: 819, column: 2)
!6357 = !DILocation(line: 820, column: 1, scope: !6349)
!6358 = distinct !DISubprogram(name: "might_fault", scope: !6359, file: !6359, line: 202, type: !2716, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6359 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6360 = !DILocation(line: 202, column: 40, scope: !6358)
!6361 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6362, file: !6362, line: 76, type: !6363, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6365)
!6362 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6363 = !DISubroutineType(types: !6364)
!6364 = !{null, !30, !2127, !45, !45}
!6365 = !{!6366, !6367, !6368, !6369}
!6366 = !DILocalVariable(name: "to", arg: 1, scope: !6361, file: !6362, line: 76, type: !30)
!6367 = !DILocalVariable(name: "from", arg: 2, scope: !6361, file: !6362, line: 76, type: !2127)
!6368 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6361, file: !6362, line: 77, type: !45)
!6369 = !DILocalVariable(name: "left", arg: 4, scope: !6361, file: !6362, line: 77, type: !45)
!6370 = !DILocation(line: 76, column: 52, scope: !6361)
!6371 = !DILocation(line: 76, column: 68, scope: !6361)
!6372 = !DILocation(line: 77, column: 18, scope: !6361)
!6373 = !DILocation(line: 77, column: 34, scope: !6361)
!6374 = !DILocation(line: 79, column: 1, scope: !6361)
!6375 = !DISubprogram(name: "__rcu_read_lock", scope: !6333, file: !6333, line: 74, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6376 = !DISubprogram(name: "__rcu_read_unlock", scope: !6333, file: !6333, line: 75, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6377 = distinct !DISubprogram(name: "__do_sys_futex", scope: !14, file: !14, line: 164, type: !6378, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6380)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!297, !4984, !32, !311, !5925, !4984, !311}
!6380 = !{!6381, !6382, !6383, !6384, !6385, !6386, !6387, !6388, !6389, !6390, !6391}
!6381 = !DILocalVariable(name: "uaddr", arg: 1, scope: !6377, file: !14, line: 164, type: !4984)
!6382 = !DILocalVariable(name: "op", arg: 2, scope: !6377, file: !14, line: 164, type: !32)
!6383 = !DILocalVariable(name: "val", arg: 3, scope: !6377, file: !14, line: 164, type: !311)
!6384 = !DILocalVariable(name: "utime", arg: 4, scope: !6377, file: !14, line: 164, type: !5925)
!6385 = !DILocalVariable(name: "uaddr2", arg: 5, scope: !6377, file: !14, line: 164, type: !4984)
!6386 = !DILocalVariable(name: "val3", arg: 6, scope: !6377, file: !14, line: 164, type: !311)
!6387 = !DILocalVariable(name: "ret", scope: !6377, file: !14, line: 168, type: !32)
!6388 = !DILocalVariable(name: "cmd", scope: !6377, file: !14, line: 168, type: !32)
!6389 = !DILocalVariable(name: "t", scope: !6377, file: !14, line: 169, type: !444)
!6390 = !DILocalVariable(name: "tp", scope: !6377, file: !14, line: 169, type: !5994)
!6391 = !DILocalVariable(name: "ts", scope: !6377, file: !14, line: 170, type: !1310)
!6392 = !DILocation(line: 164, column: 1, scope: !6377)
!6393 = !DILocation(line: 168, column: 2, scope: !6377)
!6394 = !DILocation(line: 168, column: 6, scope: !6377)
!6395 = !DILocation(line: 168, column: 11, scope: !6377)
!6396 = !DILocation(line: 168, column: 17, scope: !6377)
!6397 = !DILocation(line: 168, column: 20, scope: !6377)
!6398 = !DILocation(line: 169, column: 2, scope: !6377)
!6399 = !DILocation(line: 169, column: 10, scope: !6377)
!6400 = !DILocation(line: 169, column: 14, scope: !6377)
!6401 = !DILocation(line: 170, column: 2, scope: !6377)
!6402 = !DILocation(line: 170, column: 20, scope: !6377)
!6403 = !DILocation(line: 172, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6377, file: !14, line: 172, column: 6)
!6405 = !DILocation(line: 172, column: 12, scope: !6404)
!6406 = !DILocation(line: 172, column: 37, scope: !6404)
!6407 = !DILocation(line: 172, column: 15, scope: !6404)
!6408 = !DILocation(line: 172, column: 6, scope: !6377)
!6409 = !DILocation(line: 173, column: 7, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !14, line: 173, column: 7)
!6411 = distinct !DILexicalBlock(scope: !6404, file: !14, line: 172, column: 43)
!6412 = !DILocation(line: 173, column: 7, scope: !6411)
!6413 = !DILocation(line: 174, column: 4, scope: !6410)
!6414 = !DILocation(line: 175, column: 27, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6411, file: !14, line: 175, column: 7)
!6416 = !DILocation(line: 175, column: 7, scope: !6415)
!6417 = !DILocation(line: 175, column: 7, scope: !6411)
!6418 = !DILocation(line: 176, column: 4, scope: !6415)
!6419 = !DILocation(line: 177, column: 28, scope: !6411)
!6420 = !DILocation(line: 177, column: 33, scope: !6411)
!6421 = !DILocation(line: 177, column: 9, scope: !6411)
!6422 = !DILocation(line: 177, column: 7, scope: !6411)
!6423 = !DILocation(line: 178, column: 7, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6411, file: !14, line: 178, column: 7)
!6425 = !DILocation(line: 178, column: 7, scope: !6411)
!6426 = !DILocation(line: 179, column: 11, scope: !6424)
!6427 = !DILocation(line: 179, column: 4, scope: !6424)
!6428 = !DILocation(line: 180, column: 6, scope: !6411)
!6429 = !DILocation(line: 181, column: 2, scope: !6411)
!6430 = !DILocation(line: 183, column: 18, scope: !6377)
!6431 = !DILocation(line: 183, column: 25, scope: !6377)
!6432 = !DILocation(line: 183, column: 29, scope: !6377)
!6433 = !DILocation(line: 183, column: 34, scope: !6377)
!6434 = !DILocation(line: 183, column: 38, scope: !6377)
!6435 = !DILocation(line: 183, column: 61, scope: !6377)
!6436 = !DILocation(line: 183, column: 46, scope: !6377)
!6437 = !DILocation(line: 183, column: 68, scope: !6377)
!6438 = !DILocation(line: 183, column: 9, scope: !6377)
!6439 = !DILocation(line: 183, column: 2, scope: !6377)
!6440 = !DILocation(line: 184, column: 1, scope: !6377)
!6441 = distinct !DISubprogram(name: "futex_cmd_has_timeout", scope: !14, file: !14, line: 137, type: !6442, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6444)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!831, !311}
!6444 = !{!6445}
!6445 = !DILocalVariable(name: "cmd", arg: 1, scope: !6441, file: !14, line: 137, type: !311)
!6446 = !DILocation(line: 137, column: 55, scope: !6441)
!6447 = !DILocation(line: 139, column: 10, scope: !6441)
!6448 = !DILocation(line: 139, column: 2, scope: !6441)
!6449 = !DILocation(line: 145, column: 3, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6441, file: !14, line: 139, column: 15)
!6451 = !DILocation(line: 147, column: 2, scope: !6441)
!6452 = !DILocation(line: 148, column: 1, scope: !6441)
!6453 = distinct !DISubprogram(name: "should_fail_futex", scope: !5564, file: !5564, line: 34, type: !6454, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!831, !831}
!6456 = !{!6457}
!6457 = !DILocalVariable(name: "fshared", arg: 1, scope: !6453, file: !5564, line: 34, type: !831)
!6458 = !DILocation(line: 34, column: 43, scope: !6453)
!6459 = !DILocation(line: 36, column: 2, scope: !6453)
!6460 = !DISubprogram(name: "get_timespec64", scope: !6461, file: !6461, line: 11, type: !6462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6461 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!32, !6464, !5925}
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!6465 = distinct !DISubprogram(name: "futex_init_timeout", scope: !14, file: !14, line: 151, type: !6466, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6468)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!32, !311, !311, !6464, !5994}
!6468 = !{!6469, !6470, !6471, !6472}
!6469 = !DILocalVariable(name: "cmd", arg: 1, scope: !6465, file: !14, line: 151, type: !311)
!6470 = !DILocalVariable(name: "op", arg: 2, scope: !6465, file: !14, line: 151, type: !311)
!6471 = !DILocalVariable(name: "ts", arg: 3, scope: !6465, file: !14, line: 151, type: !6464)
!6472 = !DILocalVariable(name: "t", arg: 4, scope: !6465, file: !14, line: 151, type: !5994)
!6473 = !DILocation(line: 151, column: 24, scope: !6465)
!6474 = !DILocation(line: 151, column: 33, scope: !6465)
!6475 = !DILocation(line: 151, column: 56, scope: !6465)
!6476 = !DILocation(line: 151, column: 69, scope: !6465)
!6477 = !DILocation(line: 153, column: 24, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6465, file: !14, line: 153, column: 6)
!6479 = !DILocation(line: 153, column: 7, scope: !6478)
!6480 = !DILocation(line: 153, column: 6, scope: !6465)
!6481 = !DILocation(line: 154, column: 3, scope: !6478)
!6482 = !DILocation(line: 156, column: 28, scope: !6465)
!6483 = !DILocation(line: 156, column: 7, scope: !6465)
!6484 = !DILocation(line: 156, column: 3, scope: !6465)
!6485 = !DILocation(line: 156, column: 5, scope: !6465)
!6486 = !DILocation(line: 157, column: 6, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6465, file: !14, line: 157, column: 6)
!6488 = !DILocation(line: 157, column: 10, scope: !6487)
!6489 = !DILocation(line: 157, column: 6, scope: !6465)
!6490 = !DILocation(line: 158, column: 23, scope: !6487)
!6491 = !DILocation(line: 158, column: 37, scope: !6487)
!6492 = !DILocation(line: 158, column: 36, scope: !6487)
!6493 = !DILocation(line: 158, column: 8, scope: !6487)
!6494 = !DILocation(line: 158, column: 4, scope: !6487)
!6495 = !DILocation(line: 158, column: 6, scope: !6487)
!6496 = !DILocation(line: 158, column: 3, scope: !6487)
!6497 = !DILocation(line: 159, column: 11, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6487, file: !14, line: 159, column: 11)
!6499 = !DILocation(line: 159, column: 15, scope: !6498)
!6500 = !DILocation(line: 159, column: 32, scope: !6498)
!6501 = !DILocation(line: 159, column: 37, scope: !6498)
!6502 = !DILocation(line: 159, column: 40, scope: !6498)
!6503 = !DILocation(line: 159, column: 11, scope: !6487)
!6504 = !DILocation(line: 160, column: 47, scope: !6498)
!6505 = !DILocation(line: 160, column: 46, scope: !6498)
!6506 = !DILocation(line: 160, column: 8, scope: !6498)
!6507 = !DILocation(line: 160, column: 4, scope: !6498)
!6508 = !DILocation(line: 160, column: 6, scope: !6498)
!6509 = !DILocation(line: 160, column: 3, scope: !6498)
!6510 = !DILocation(line: 161, column: 2, scope: !6465)
!6511 = !DILocation(line: 162, column: 1, scope: !6465)
!6512 = distinct !DISubprogram(name: "timespec64_valid", scope: !868, file: !868, line: 92, type: !6513, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6517)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!831, !6515}
!6515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6516, size: 64)
!6516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!6517 = !{!6518}
!6518 = !DILocalVariable(name: "ts", arg: 1, scope: !6512, file: !868, line: 92, type: !6515)
!6519 = !DILocation(line: 92, column: 62, scope: !6512)
!6520 = !DILocation(line: 95, column: 6, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6512, file: !868, line: 95, column: 6)
!6522 = !DILocation(line: 95, column: 10, scope: !6521)
!6523 = !DILocation(line: 95, column: 17, scope: !6521)
!6524 = !DILocation(line: 95, column: 6, scope: !6512)
!6525 = !DILocation(line: 96, column: 3, scope: !6521)
!6526 = !DILocation(line: 98, column: 21, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6512, file: !868, line: 98, column: 6)
!6528 = !DILocation(line: 98, column: 25, scope: !6527)
!6529 = !DILocation(line: 98, column: 33, scope: !6527)
!6530 = !DILocation(line: 98, column: 6, scope: !6512)
!6531 = !DILocation(line: 99, column: 3, scope: !6527)
!6532 = !DILocation(line: 100, column: 2, scope: !6512)
!6533 = !DILocation(line: 101, column: 1, scope: !6512)
!6534 = distinct !DISubprogram(name: "timespec64_to_ktime", scope: !445, file: !445, line: 71, type: !6535, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6537)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{!444, !1310}
!6537 = !{!6538}
!6538 = !DILocalVariable(name: "ts", arg: 1, scope: !6534, file: !445, line: 71, type: !1310)
!6539 = !DILocation(line: 71, column: 61, scope: !6534)
!6540 = !DILocation(line: 73, column: 22, scope: !6534)
!6541 = !DILocation(line: 73, column: 33, scope: !6534)
!6542 = !DILocation(line: 73, column: 9, scope: !6534)
!6543 = !DILocation(line: 73, column: 2, scope: !6534)
!6544 = !DISubprogram(name: "ktime_add_safe", scope: !445, file: !445, line: 199, type: !6545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!444, !6547, !6547}
!6547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!6548 = !DISubprogram(name: "ktime_get", scope: !6549, file: !6549, line: 67, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6549 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!6550 = distinct !DISubprogram(name: "timens_ktime_to_host", scope: !5131, file: !5131, line: 96, type: !6551, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6553)
!6551 = !DISubroutineType(types: !6552)
!6552 = !{!444, !484, !444}
!6553 = !{!6554, !6555, !6556}
!6554 = !DILocalVariable(name: "clockid", arg: 1, scope: !6550, file: !5131, line: 96, type: !484)
!6555 = !DILocalVariable(name: "tim", arg: 2, scope: !6550, file: !5131, line: 96, type: !444)
!6556 = !DILocalVariable(name: "ns", scope: !6550, file: !5131, line: 98, type: !5129)
!6557 = !DILocation(line: 96, column: 54, scope: !6550)
!6558 = !DILocation(line: 96, column: 71, scope: !6550)
!6559 = !DILocation(line: 98, column: 2, scope: !6550)
!6560 = !DILocation(line: 98, column: 25, scope: !6550)
!6561 = !DILocation(line: 98, column: 30, scope: !6550)
!6562 = !DILocation(line: 98, column: 39, scope: !6550)
!6563 = !DILocation(line: 98, column: 48, scope: !6550)
!6564 = !DILocation(line: 100, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6550, file: !5131, line: 100, column: 6)
!6566 = !DILocation(line: 100, column: 6, scope: !6550)
!6567 = !DILocation(line: 101, column: 10, scope: !6565)
!6568 = !DILocation(line: 101, column: 3, scope: !6565)
!6569 = !DILocation(line: 103, column: 33, scope: !6550)
!6570 = !DILocation(line: 103, column: 42, scope: !6550)
!6571 = !DILocation(line: 103, column: 48, scope: !6550)
!6572 = !DILocation(line: 103, column: 52, scope: !6550)
!6573 = !DILocation(line: 103, column: 9, scope: !6550)
!6574 = !DILocation(line: 103, column: 2, scope: !6550)
!6575 = !DILocation(line: 104, column: 1, scope: !6550)
!6576 = distinct !DISubprogram(name: "ktime_set", scope: !445, file: !445, line: 38, type: !6577, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6580)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{!444, !6579, !1629}
!6579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!6580 = !{!6581, !6582}
!6581 = !DILocalVariable(name: "secs", arg: 1, scope: !6576, file: !445, line: 38, type: !6579)
!6582 = !DILocalVariable(name: "nsecs", arg: 2, scope: !6576, file: !445, line: 38, type: !1629)
!6583 = !DILocation(line: 38, column: 43, scope: !6576)
!6584 = !DILocation(line: 38, column: 69, scope: !6576)
!6585 = !DILocation(line: 40, column: 6, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6576, file: !445, line: 40, column: 6)
!6587 = !DILocation(line: 40, column: 6, scope: !6576)
!6588 = !DILocation(line: 41, column: 3, scope: !6586)
!6589 = !DILocation(line: 43, column: 9, scope: !6576)
!6590 = !DILocation(line: 43, column: 14, scope: !6576)
!6591 = !DILocation(line: 43, column: 36, scope: !6576)
!6592 = !DILocation(line: 43, column: 29, scope: !6576)
!6593 = !DILocation(line: 43, column: 2, scope: !6576)
!6594 = !DILocation(line: 44, column: 1, scope: !6576)
!6595 = !DISubprogram(name: "do_timens_ktime_to_host", scope: !5131, file: !5131, line: 93, type: !6596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6596 = !DISubroutineType(types: !6597)
!6597 = !{!444, !484, !444, !6598}
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!6599 = distinct !DISubprogram(name: "__do_sys_futex_waitv", scope: !14, file: !14, line: 246, type: !6600, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6602)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!297, !5927, !18, !18, !4999, !484}
!6602 = !{!6603, !6604, !6605, !6606, !6607, !6608, !6613, !6631, !6632, !6633, !6634, !6637, !6638}
!6603 = !DILocalVariable(name: "waiters", arg: 1, scope: !6599, file: !14, line: 246, type: !5927)
!6604 = !DILocalVariable(name: "nr_futexes", arg: 2, scope: !6599, file: !14, line: 246, type: !18)
!6605 = !DILocalVariable(name: "flags", arg: 3, scope: !6599, file: !14, line: 246, type: !18)
!6606 = !DILocalVariable(name: "timeout", arg: 4, scope: !6599, file: !14, line: 246, type: !4999)
!6607 = !DILocalVariable(name: "clockid", arg: 5, scope: !6599, file: !14, line: 246, type: !484)
!6608 = !DILocalVariable(name: "to", scope: !6599, file: !14, line: 250, type: !6609)
!6609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_sleeper", file: !17, line: 136, size: 576, elements: !6610)
!6610 = !{!6611, !6612}
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !6609, file: !17, line: 137, baseType: !436, size: 512)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !6609, file: !17, line: 138, baseType: !300, size: 64, offset: 512)
!6613 = !DILocalVariable(name: "futexv", scope: !6599, file: !14, line: 251, type: !6614)
!6614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6615, size: 64)
!6615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_vector", file: !5564, line: 277, size: 1088, elements: !6616)
!6616 = !{!6617, !6618}
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !6615, file: !5564, line: 278, baseType: !5928, size: 192)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !6615, file: !5564, line: 279, baseType: !6619, size: 896, offset: 192)
!6619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_q", file: !5564, line: 96, size: 896, elements: !6620)
!6620 = !{!6621, !6622, !6623, !6624, !6625, !6626, !6627, !6629, !6630}
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6619, file: !5564, line: 97, baseType: !610, size: 320)
!6622 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !6619, file: !5564, line: 99, baseType: !300, size: 64, offset: 320)
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ptr", scope: !6619, file: !5564, line: 100, baseType: !1825, size: 64, offset: 384)
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6619, file: !5564, line: 101, baseType: !5577, size: 192, offset: 448)
!6625 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state", scope: !6619, file: !5564, line: 102, baseType: !5562, size: 64, offset: 640)
!6626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_waiter", scope: !6619, file: !5564, line: 103, baseType: !5420, size: 64, offset: 704)
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_pi_key", scope: !6619, file: !5564, line: 104, baseType: !6628, size: 64, offset: 768)
!6628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !6619, file: !5564, line: 105, baseType: !311, size: 32, offset: 832)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_state", scope: !6619, file: !5564, line: 106, baseType: !59, size: 32, offset: 864)
!6631 = !DILocalVariable(name: "ts", scope: !6599, file: !14, line: 252, type: !1310)
!6632 = !DILocalVariable(name: "time", scope: !6599, file: !14, line: 253, type: !444)
!6633 = !DILocalVariable(name: "ret", scope: !6599, file: !14, line: 254, type: !32)
!6634 = !DILocalVariable(name: "flag_clkid", scope: !6635, file: !14, line: 264, type: !32)
!6635 = distinct !DILexicalBlock(scope: !6636, file: !14, line: 263, column: 15)
!6636 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 263, column: 6)
!6637 = !DILocalVariable(name: "flag_init", scope: !6635, file: !14, line: 264, type: !32)
!6638 = !DILabel(scope: !6599, name: "destroy_timer", file: !14, line: 300)
!6639 = !DILocation(line: 246, column: 1, scope: !6599)
!6640 = !DILocation(line: 250, column: 2, scope: !6599)
!6641 = !DILocation(line: 250, column: 25, scope: !6599)
!6642 = !DILocation(line: 251, column: 2, scope: !6599)
!6643 = !DILocation(line: 251, column: 23, scope: !6599)
!6644 = !DILocation(line: 252, column: 2, scope: !6599)
!6645 = !DILocation(line: 252, column: 20, scope: !6599)
!6646 = !DILocation(line: 253, column: 2, scope: !6599)
!6647 = !DILocation(line: 253, column: 10, scope: !6599)
!6648 = !DILocation(line: 254, column: 2, scope: !6599)
!6649 = !DILocation(line: 254, column: 6, scope: !6599)
!6650 = !DILocation(line: 257, column: 6, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 257, column: 6)
!6652 = !DILocation(line: 257, column: 6, scope: !6599)
!6653 = !DILocation(line: 258, column: 3, scope: !6651)
!6654 = !DILocation(line: 260, column: 7, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 260, column: 6)
!6656 = !DILocation(line: 260, column: 18, scope: !6655)
!6657 = !DILocation(line: 260, column: 21, scope: !6655)
!6658 = !DILocation(line: 260, column: 32, scope: !6655)
!6659 = !DILocation(line: 260, column: 50, scope: !6655)
!6660 = !DILocation(line: 260, column: 54, scope: !6655)
!6661 = !DILocation(line: 260, column: 6, scope: !6599)
!6662 = !DILocation(line: 261, column: 3, scope: !6655)
!6663 = !DILocation(line: 263, column: 6, scope: !6636)
!6664 = !DILocation(line: 263, column: 6, scope: !6599)
!6665 = !DILocation(line: 264, column: 3, scope: !6635)
!6666 = !DILocation(line: 264, column: 7, scope: !6635)
!6667 = !DILocation(line: 264, column: 23, scope: !6635)
!6668 = !DILocation(line: 266, column: 7, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6635, file: !14, line: 266, column: 7)
!6670 = !DILocation(line: 266, column: 15, scope: !6669)
!6671 = !DILocation(line: 266, column: 7, scope: !6635)
!6672 = !DILocation(line: 267, column: 15, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6669, file: !14, line: 266, column: 34)
!6674 = !DILocation(line: 268, column: 14, scope: !6673)
!6675 = !DILocation(line: 269, column: 3, scope: !6673)
!6676 = !DILocation(line: 271, column: 7, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6635, file: !14, line: 271, column: 7)
!6678 = !DILocation(line: 271, column: 15, scope: !6677)
!6679 = !DILocation(line: 271, column: 33, scope: !6677)
!6680 = !DILocation(line: 271, column: 36, scope: !6677)
!6681 = !DILocation(line: 271, column: 44, scope: !6677)
!6682 = !DILocation(line: 271, column: 7, scope: !6635)
!6683 = !DILocation(line: 272, column: 4, scope: !6677)
!6684 = !DILocation(line: 274, column: 27, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6635, file: !14, line: 274, column: 7)
!6686 = !DILocation(line: 274, column: 7, scope: !6685)
!6687 = !DILocation(line: 274, column: 7, scope: !6635)
!6688 = !DILocation(line: 275, column: 4, scope: !6685)
!6689 = !DILocation(line: 281, column: 47, scope: !6635)
!6690 = !DILocation(line: 281, column: 9, scope: !6635)
!6691 = !DILocation(line: 281, column: 7, scope: !6635)
!6692 = !DILocation(line: 282, column: 7, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6635, file: !14, line: 282, column: 7)
!6694 = !DILocation(line: 282, column: 7, scope: !6635)
!6695 = !DILocation(line: 283, column: 11, scope: !6693)
!6696 = !DILocation(line: 283, column: 4, scope: !6693)
!6697 = !DILocation(line: 285, column: 33, scope: !6635)
!6698 = !DILocation(line: 285, column: 3, scope: !6635)
!6699 = !DILocation(line: 286, column: 2, scope: !6636)
!6700 = !DILocation(line: 286, column: 2, scope: !6635)
!6701 = !DILocation(line: 288, column: 19, scope: !6599)
!6702 = !DILocation(line: 288, column: 11, scope: !6599)
!6703 = !DILocation(line: 288, column: 9, scope: !6599)
!6704 = !DILocation(line: 289, column: 7, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 289, column: 6)
!6706 = !DILocation(line: 289, column: 6, scope: !6599)
!6707 = !DILocation(line: 290, column: 7, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6705, file: !14, line: 289, column: 15)
!6709 = !DILocation(line: 291, column: 3, scope: !6708)
!6710 = !DILocation(line: 294, column: 26, scope: !6599)
!6711 = !DILocation(line: 294, column: 34, scope: !6599)
!6712 = !DILocation(line: 294, column: 43, scope: !6599)
!6713 = !DILocation(line: 294, column: 8, scope: !6599)
!6714 = !DILocation(line: 294, column: 6, scope: !6599)
!6715 = !DILocation(line: 295, column: 7, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 295, column: 6)
!6717 = !DILocation(line: 295, column: 6, scope: !6599)
!6718 = !DILocation(line: 296, column: 29, scope: !6716)
!6719 = !DILocation(line: 296, column: 37, scope: !6716)
!6720 = !DILocation(line: 296, column: 49, scope: !6716)
!6721 = !DILocation(line: 296, column: 9, scope: !6716)
!6722 = !DILocation(line: 296, column: 7, scope: !6716)
!6723 = !DILocation(line: 296, column: 3, scope: !6716)
!6724 = !DILocation(line: 298, column: 8, scope: !6599)
!6725 = !DILocation(line: 298, column: 2, scope: !6599)
!6726 = !DILocation(line: 300, column: 1, scope: !6599)
!6727 = !DILocation(line: 301, column: 6, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6599, file: !14, line: 301, column: 6)
!6729 = !DILocation(line: 301, column: 6, scope: !6599)
!6730 = !DILocation(line: 302, column: 22, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6728, file: !14, line: 301, column: 15)
!6732 = !DILocation(line: 302, column: 3, scope: !6731)
!6733 = !DILocation(line: 303, column: 32, scope: !6731)
!6734 = !DILocation(line: 303, column: 3, scope: !6731)
!6735 = !DILocation(line: 304, column: 2, scope: !6731)
!6736 = !DILocation(line: 305, column: 9, scope: !6599)
!6737 = !DILocation(line: 305, column: 2, scope: !6599)
!6738 = !DILocation(line: 306, column: 1, scope: !6599)
!6739 = !DISubprogram(name: "futex_setup_timer", scope: !5564, file: !5564, line: 123, type: !6740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{!6742, !5994, !6742, !32, !369}
!6742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6609, size: 64)
!6743 = distinct !DISubprogram(name: "kcalloc", scope: !2, file: !2, line: 666, type: !6744, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6746)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!30, !45, !45, !756}
!6746 = !{!6747, !6748, !6749}
!6747 = !DILocalVariable(name: "n", arg: 1, scope: !6743, file: !2, line: 666, type: !45)
!6748 = !DILocalVariable(name: "size", arg: 2, scope: !6743, file: !2, line: 666, type: !45)
!6749 = !DILocalVariable(name: "flags", arg: 3, scope: !6743, file: !2, line: 666, type: !756)
!6750 = !DILocation(line: 666, column: 55, scope: !6743)
!6751 = !DILocation(line: 666, column: 65, scope: !6743)
!6752 = !DILocation(line: 666, column: 77, scope: !6743)
!6753 = !DILocation(line: 668, column: 23, scope: !6743)
!6754 = !DILocation(line: 668, column: 26, scope: !6743)
!6755 = !DILocation(line: 668, column: 32, scope: !6743)
!6756 = !DILocation(line: 668, column: 38, scope: !6743)
!6757 = !DILocation(line: 668, column: 9, scope: !6743)
!6758 = !DILocation(line: 668, column: 2, scope: !6743)
!6759 = distinct !DISubprogram(name: "futex_parse_waitv", scope: !14, file: !14, line: 197, type: !6760, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6762)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!32, !6614, !5927, !18}
!6762 = !{!6763, !6764, !6765, !6766, !6767}
!6763 = !DILocalVariable(name: "futexv", arg: 1, scope: !6759, file: !14, line: 197, type: !6614)
!6764 = !DILocalVariable(name: "uwaitv", arg: 2, scope: !6759, file: !14, line: 198, type: !5927)
!6765 = !DILocalVariable(name: "nr_futexes", arg: 3, scope: !6759, file: !14, line: 199, type: !18)
!6766 = !DILocalVariable(name: "aux", scope: !6759, file: !14, line: 201, type: !5928)
!6767 = !DILocalVariable(name: "i", scope: !6759, file: !14, line: 202, type: !18)
!6768 = !DILocation(line: 197, column: 51, scope: !6759)
!6769 = !DILocation(line: 198, column: 36, scope: !6759)
!6770 = !DILocation(line: 199, column: 22, scope: !6759)
!6771 = !DILocation(line: 201, column: 2, scope: !6759)
!6772 = !DILocation(line: 201, column: 21, scope: !6759)
!6773 = !DILocation(line: 202, column: 2, scope: !6759)
!6774 = !DILocation(line: 202, column: 15, scope: !6759)
!6775 = !DILocation(line: 204, column: 9, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6759, file: !14, line: 204, column: 2)
!6777 = !DILocation(line: 204, column: 7, scope: !6776)
!6778 = !DILocation(line: 204, column: 14, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6776, file: !14, line: 204, column: 2)
!6780 = !DILocation(line: 204, column: 18, scope: !6779)
!6781 = !DILocation(line: 204, column: 16, scope: !6779)
!6782 = !DILocation(line: 204, column: 2, scope: !6776)
!6783 = !DILocation(line: 205, column: 29, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6785, file: !14, line: 205, column: 7)
!6785 = distinct !DILexicalBlock(scope: !6779, file: !14, line: 204, column: 35)
!6786 = !DILocation(line: 205, column: 36, scope: !6784)
!6787 = !DILocation(line: 205, column: 7, scope: !6784)
!6788 = !DILocation(line: 205, column: 7, scope: !6785)
!6789 = !DILocation(line: 206, column: 4, scope: !6784)
!6790 = !DILocation(line: 208, column: 12, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6785, file: !14, line: 208, column: 7)
!6792 = !DILocation(line: 208, column: 18, scope: !6791)
!6793 = !DILocation(line: 208, column: 41, scope: !6791)
!6794 = !DILocation(line: 208, column: 48, scope: !6791)
!6795 = !DILocation(line: 208, column: 44, scope: !6791)
!6796 = !DILocation(line: 208, column: 7, scope: !6785)
!6797 = !DILocation(line: 209, column: 4, scope: !6791)
!6798 = !DILocation(line: 211, column: 13, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6785, file: !14, line: 211, column: 7)
!6800 = !DILocation(line: 211, column: 19, scope: !6799)
!6801 = !DILocation(line: 211, column: 7, scope: !6785)
!6802 = !DILocation(line: 212, column: 4, scope: !6799)
!6803 = !DILocation(line: 214, column: 27, scope: !6785)
!6804 = !DILocation(line: 214, column: 3, scope: !6785)
!6805 = !DILocation(line: 214, column: 10, scope: !6785)
!6806 = !DILocation(line: 214, column: 13, scope: !6785)
!6807 = !DILocation(line: 214, column: 15, scope: !6785)
!6808 = !DILocation(line: 214, column: 21, scope: !6785)
!6809 = !DILocation(line: 215, column: 25, scope: !6785)
!6810 = !DILocation(line: 215, column: 3, scope: !6785)
!6811 = !DILocation(line: 215, column: 10, scope: !6785)
!6812 = !DILocation(line: 215, column: 13, scope: !6785)
!6813 = !DILocation(line: 215, column: 15, scope: !6785)
!6814 = !DILocation(line: 215, column: 19, scope: !6785)
!6815 = !DILocation(line: 216, column: 27, scope: !6785)
!6816 = !DILocation(line: 216, column: 3, scope: !6785)
!6817 = !DILocation(line: 216, column: 10, scope: !6785)
!6818 = !DILocation(line: 216, column: 13, scope: !6785)
!6819 = !DILocation(line: 216, column: 15, scope: !6785)
!6820 = !DILocation(line: 216, column: 21, scope: !6785)
!6821 = !DILocation(line: 217, column: 3, scope: !6785)
!6822 = !DILocation(line: 217, column: 10, scope: !6785)
!6823 = !DILocation(line: 217, column: 13, scope: !6785)
!6824 = !DILocation(line: 217, column: 17, scope: !6785)
!6825 = !DILocation(line: 218, column: 2, scope: !6785)
!6826 = !DILocation(line: 204, column: 31, scope: !6779)
!6827 = !DILocation(line: 204, column: 2, scope: !6779)
!6828 = distinct !{!6828, !6782, !6829, !6830, !6831}
!6829 = !DILocation(line: 218, column: 2, scope: !6776)
!6830 = !{!"llvm.loop.mustprogress"}
!6831 = !{!"llvm.loop.unroll.disable"}
!6832 = !DILocation(line: 220, column: 2, scope: !6759)
!6833 = !DILocation(line: 221, column: 1, scope: !6759)
!6834 = !DISubprogram(name: "futex_wait_multiple", scope: !5564, file: !5564, line: 282, type: !6835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6835 = !DISubroutineType(types: !6836)
!6836 = !{!32, !6614, !18, !6742}
!6837 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !6838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{null, !2127}
!6840 = !DISubprogram(name: "hrtimer_cancel", scope: !17, file: !17, line: 423, type: !6841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6841 = !DISubroutineType(types: !6842)
!6842 = !{!32, !451}
!6843 = distinct !DISubprogram(name: "destroy_hrtimer_on_stack", scope: !17, file: !17, line: 402, type: !6844, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6846)
!6844 = !DISubroutineType(types: !6845)
!6845 = !{null, !451}
!6846 = !{!6847}
!6847 = !DILocalVariable(name: "timer", arg: 1, scope: !6843, file: !17, line: 402, type: !451)
!6848 = !DILocation(line: 402, column: 61, scope: !6843)
!6849 = !DILocation(line: 402, column: 70, scope: !6843)
!6850 = distinct !DISubprogram(name: "kmalloc_array", scope: !2, file: !2, line: 629, type: !6744, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6851)
!6851 = !{!6852, !6853, !6854, !6855}
!6852 = !DILocalVariable(name: "n", arg: 1, scope: !6850, file: !2, line: 629, type: !45)
!6853 = !DILocalVariable(name: "size", arg: 2, scope: !6850, file: !2, line: 629, type: !45)
!6854 = !DILocalVariable(name: "flags", arg: 3, scope: !6850, file: !2, line: 629, type: !756)
!6855 = !DILocalVariable(name: "bytes", scope: !6850, file: !2, line: 631, type: !45)
!6856 = !DILocation(line: 629, column: 61, scope: !6850)
!6857 = !DILocation(line: 629, column: 71, scope: !6850)
!6858 = !DILocation(line: 629, column: 83, scope: !6850)
!6859 = !DILocation(line: 631, column: 2, scope: !6850)
!6860 = !DILocation(line: 631, column: 9, scope: !6850)
!6861 = !DILocation(line: 633, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6850, file: !2, line: 633, column: 6)
!6863 = !DILocation(line: 633, column: 6, scope: !6850)
!6864 = !DILocation(line: 634, column: 3, scope: !6862)
!6865 = !DILocation(line: 635, column: 27, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6850, file: !2, line: 635, column: 6)
!6867 = !DILocation(line: 635, column: 6, scope: !6866)
!6868 = !DILocation(line: 635, column: 30, scope: !6866)
!6869 = !DILocation(line: 635, column: 54, scope: !6866)
!6870 = !DILocation(line: 635, column: 33, scope: !6866)
!6871 = !DILocation(line: 635, column: 6, scope: !6850)
!6872 = !DILocation(line: 636, column: 18, scope: !6866)
!6873 = !DILocation(line: 636, column: 25, scope: !6866)
!6874 = !DILocation(line: 636, column: 10, scope: !6866)
!6875 = !DILocation(line: 636, column: 3, scope: !6866)
!6876 = !DILocation(line: 637, column: 19, scope: !6850)
!6877 = !DILocation(line: 637, column: 26, scope: !6850)
!6878 = !DILocation(line: 637, column: 9, scope: !6850)
!6879 = !DILocation(line: 637, column: 2, scope: !6850)
!6880 = !DILocation(line: 638, column: 1, scope: !6850)
!6881 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6882, file: !6882, line: 51, type: !6454, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6883)
!6882 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6883 = !{!6884}
!6884 = !DILocalVariable(name: "overflow", arg: 1, scope: !6881, file: !6882, line: 51, type: !831)
!6885 = !DILocation(line: 51, column: 60, scope: !6881)
!6886 = !DILocation(line: 53, column: 9, scope: !6881)
!6887 = !{i8 0, i8 2}
!6888 = !DILocation(line: 53, column: 2, scope: !6881)
!6889 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !6890, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6892)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{!30, !45, !756}
!6892 = !{!6893, !6894, !6895}
!6893 = !DILocalVariable(name: "size", arg: 1, scope: !6889, file: !2, line: 591, type: !45)
!6894 = !DILocalVariable(name: "flags", arg: 2, scope: !6889, file: !2, line: 591, type: !756)
!6895 = !DILocalVariable(name: "index", scope: !6896, file: !2, line: 594, type: !18)
!6896 = distinct !DILexicalBlock(scope: !6897, file: !2, line: 593, column: 42)
!6897 = distinct !DILexicalBlock(scope: !6889, file: !2, line: 593, column: 6)
!6898 = !DILocation(line: 591, column: 61, scope: !6889)
!6899 = !DILocation(line: 591, column: 73, scope: !6889)
!6900 = !DILocation(line: 593, column: 27, scope: !6897)
!6901 = !DILocation(line: 593, column: 6, scope: !6897)
!6902 = !DILocation(line: 593, column: 33, scope: !6897)
!6903 = !DILocation(line: 593, column: 36, scope: !6897)
!6904 = !DILocation(line: 593, column: 6, scope: !6889)
!6905 = !DILocation(line: 594, column: 3, scope: !6896)
!6906 = !DILocation(line: 594, column: 16, scope: !6896)
!6907 = !DILocation(line: 596, column: 7, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6896, file: !2, line: 596, column: 7)
!6909 = !DILocation(line: 596, column: 12, scope: !6908)
!6910 = !DILocation(line: 596, column: 7, scope: !6896)
!6911 = !DILocation(line: 597, column: 25, scope: !6908)
!6912 = !DILocation(line: 597, column: 31, scope: !6908)
!6913 = !DILocation(line: 597, column: 11, scope: !6908)
!6914 = !DILocation(line: 597, column: 4, scope: !6908)
!6915 = !DILocation(line: 599, column: 11, scope: !6896)
!6916 = !DILocation(line: 599, column: 9, scope: !6896)
!6917 = !DILocation(line: 601, column: 33, scope: !6896)
!6918 = !DILocation(line: 601, column: 40, scope: !6896)
!6919 = !DILocation(line: 601, column: 20, scope: !6896)
!6920 = !DILocation(line: 601, column: 5, scope: !6896)
!6921 = !DILocation(line: 601, column: 51, scope: !6896)
!6922 = !DILocation(line: 602, column: 5, scope: !6896)
!6923 = !DILocation(line: 602, column: 12, scope: !6896)
!6924 = !DILocation(line: 600, column: 10, scope: !6896)
!6925 = !DILocation(line: 600, column: 3, scope: !6896)
!6926 = !DILocation(line: 603, column: 2, scope: !6897)
!6927 = !DILocation(line: 604, column: 19, scope: !6889)
!6928 = !DILocation(line: 604, column: 25, scope: !6889)
!6929 = !DILocation(line: 604, column: 9, scope: !6889)
!6930 = !DILocation(line: 604, column: 2, scope: !6889)
!6931 = !DILocation(line: 605, column: 1, scope: !6889)
!6932 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !6890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6933 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !6890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6934 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !6935, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6937)
!6935 = !DISubroutineType(types: !6936)
!6936 = !{!18, !45, !831}
!6937 = !{!6938, !6939}
!6938 = !DILocalVariable(name: "size", arg: 1, scope: !6934, file: !2, line: 444, type: !45)
!6939 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6934, file: !2, line: 445, type: !831)
!6940 = !DILocation(line: 444, column: 60, scope: !6934)
!6941 = !DILocation(line: 445, column: 16, scope: !6934)
!6942 = !DILocation(line: 447, column: 7, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 447, column: 6)
!6944 = !DILocation(line: 447, column: 6, scope: !6934)
!6945 = !DILocation(line: 448, column: 3, scope: !6943)
!6946 = !DILocation(line: 450, column: 6, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 450, column: 6)
!6948 = !DILocation(line: 450, column: 11, scope: !6947)
!6949 = !DILocation(line: 450, column: 6, scope: !6934)
!6950 = !DILocation(line: 451, column: 3, scope: !6947)
!6951 = !DILocation(line: 453, column: 32, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 453, column: 6)
!6953 = !DILocation(line: 453, column: 37, scope: !6952)
!6954 = !DILocation(line: 453, column: 42, scope: !6952)
!6955 = !DILocation(line: 453, column: 45, scope: !6952)
!6956 = !DILocation(line: 453, column: 50, scope: !6952)
!6957 = !DILocation(line: 453, column: 6, scope: !6934)
!6958 = !DILocation(line: 454, column: 3, scope: !6952)
!6959 = !DILocation(line: 455, column: 32, scope: !6960)
!6960 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 455, column: 6)
!6961 = !DILocation(line: 455, column: 37, scope: !6960)
!6962 = !DILocation(line: 455, column: 43, scope: !6960)
!6963 = !DILocation(line: 455, column: 46, scope: !6960)
!6964 = !DILocation(line: 455, column: 51, scope: !6960)
!6965 = !DILocation(line: 455, column: 6, scope: !6934)
!6966 = !DILocation(line: 456, column: 3, scope: !6960)
!6967 = !DILocation(line: 457, column: 6, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 457, column: 6)
!6969 = !DILocation(line: 457, column: 11, scope: !6968)
!6970 = !DILocation(line: 457, column: 6, scope: !6934)
!6971 = !DILocation(line: 457, column: 26, scope: !6968)
!6972 = !DILocation(line: 458, column: 6, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 458, column: 6)
!6974 = !DILocation(line: 458, column: 11, scope: !6973)
!6975 = !DILocation(line: 458, column: 6, scope: !6934)
!6976 = !DILocation(line: 458, column: 26, scope: !6973)
!6977 = !DILocation(line: 459, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 459, column: 6)
!6979 = !DILocation(line: 459, column: 11, scope: !6978)
!6980 = !DILocation(line: 459, column: 6, scope: !6934)
!6981 = !DILocation(line: 459, column: 26, scope: !6978)
!6982 = !DILocation(line: 460, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 460, column: 6)
!6984 = !DILocation(line: 460, column: 11, scope: !6983)
!6985 = !DILocation(line: 460, column: 6, scope: !6934)
!6986 = !DILocation(line: 460, column: 26, scope: !6983)
!6987 = !DILocation(line: 461, column: 6, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 461, column: 6)
!6989 = !DILocation(line: 461, column: 11, scope: !6988)
!6990 = !DILocation(line: 461, column: 6, scope: !6934)
!6991 = !DILocation(line: 461, column: 26, scope: !6988)
!6992 = !DILocation(line: 462, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 462, column: 6)
!6994 = !DILocation(line: 462, column: 11, scope: !6993)
!6995 = !DILocation(line: 462, column: 6, scope: !6934)
!6996 = !DILocation(line: 462, column: 26, scope: !6993)
!6997 = !DILocation(line: 463, column: 6, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 463, column: 6)
!6999 = !DILocation(line: 463, column: 11, scope: !6998)
!7000 = !DILocation(line: 463, column: 6, scope: !6934)
!7001 = !DILocation(line: 463, column: 26, scope: !6998)
!7002 = !DILocation(line: 464, column: 6, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 464, column: 6)
!7004 = !DILocation(line: 464, column: 11, scope: !7003)
!7005 = !DILocation(line: 464, column: 6, scope: !6934)
!7006 = !DILocation(line: 464, column: 26, scope: !7003)
!7007 = !DILocation(line: 465, column: 6, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 465, column: 6)
!7009 = !DILocation(line: 465, column: 11, scope: !7008)
!7010 = !DILocation(line: 465, column: 6, scope: !6934)
!7011 = !DILocation(line: 465, column: 26, scope: !7008)
!7012 = !DILocation(line: 466, column: 6, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 466, column: 6)
!7014 = !DILocation(line: 466, column: 11, scope: !7013)
!7015 = !DILocation(line: 466, column: 6, scope: !6934)
!7016 = !DILocation(line: 466, column: 26, scope: !7013)
!7017 = !DILocation(line: 467, column: 6, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 467, column: 6)
!7019 = !DILocation(line: 467, column: 11, scope: !7018)
!7020 = !DILocation(line: 467, column: 6, scope: !6934)
!7021 = !DILocation(line: 467, column: 26, scope: !7018)
!7022 = !DILocation(line: 468, column: 6, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 468, column: 6)
!7024 = !DILocation(line: 468, column: 11, scope: !7023)
!7025 = !DILocation(line: 468, column: 6, scope: !6934)
!7026 = !DILocation(line: 468, column: 26, scope: !7023)
!7027 = !DILocation(line: 469, column: 6, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 469, column: 6)
!7029 = !DILocation(line: 469, column: 11, scope: !7028)
!7030 = !DILocation(line: 469, column: 6, scope: !6934)
!7031 = !DILocation(line: 469, column: 26, scope: !7028)
!7032 = !DILocation(line: 470, column: 6, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 470, column: 6)
!7034 = !DILocation(line: 470, column: 11, scope: !7033)
!7035 = !DILocation(line: 470, column: 6, scope: !6934)
!7036 = !DILocation(line: 470, column: 26, scope: !7033)
!7037 = !DILocation(line: 471, column: 6, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 471, column: 6)
!7039 = !DILocation(line: 471, column: 11, scope: !7038)
!7040 = !DILocation(line: 471, column: 6, scope: !6934)
!7041 = !DILocation(line: 471, column: 26, scope: !7038)
!7042 = !DILocation(line: 472, column: 6, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 472, column: 6)
!7044 = !DILocation(line: 472, column: 11, scope: !7043)
!7045 = !DILocation(line: 472, column: 6, scope: !6934)
!7046 = !DILocation(line: 472, column: 26, scope: !7043)
!7047 = !DILocation(line: 473, column: 6, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 473, column: 6)
!7049 = !DILocation(line: 473, column: 11, scope: !7048)
!7050 = !DILocation(line: 473, column: 6, scope: !6934)
!7051 = !DILocation(line: 473, column: 26, scope: !7048)
!7052 = !DILocation(line: 474, column: 6, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 474, column: 6)
!7054 = !DILocation(line: 474, column: 11, scope: !7053)
!7055 = !DILocation(line: 474, column: 6, scope: !6934)
!7056 = !DILocation(line: 474, column: 27, scope: !7053)
!7057 = !DILocation(line: 475, column: 6, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 475, column: 6)
!7059 = !DILocation(line: 475, column: 11, scope: !7058)
!7060 = !DILocation(line: 475, column: 6, scope: !6934)
!7061 = !DILocation(line: 475, column: 32, scope: !7058)
!7062 = !DILocation(line: 477, column: 50, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !6934, file: !2, line: 477, column: 6)
!7064 = !DILocation(line: 477, column: 6, scope: !6934)
!7065 = !DILocation(line: 478, column: 3, scope: !7063)
!7066 = !DILocation(line: 478, column: 3, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7068, file: !2, line: 478, column: 3)
!7068 = distinct !DILexicalBlock(scope: !7063, file: !2, line: 478, column: 3)
!7069 = !{i32 -2141609759}
!7070 = !DILocation(line: 478, column: 3, scope: !7068)
!7071 = !DILocation(line: 480, column: 3, scope: !7063)
!7072 = !DILocation(line: 480, column: 3, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7063, file: !2, line: 480, column: 3)
!7074 = !DILocation(line: 480, column: 3, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7073, file: !2, line: 480, column: 3)
!7076 = !DILocation(line: 480, column: 3, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7073, file: !2, line: 480, column: 3)
!7078 = !{i64 2153357740, i64 2153357769, i64 2153357815, i64 2153357873, i64 2153357927, i64 2153357981, i64 2153358036, i64 2153358067}
!7079 = !DILocation(line: 483, column: 2, scope: !6934)
!7080 = !DILocation(line: 484, column: 1, scope: !6934)
!7081 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !7082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{!30, !764, !756, !45}
!7084 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !7085, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7087)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!277, !756, !49}
!7087 = !{!7088, !7089}
!7088 = !DILocalVariable(name: "flags", arg: 1, scope: !7084, file: !2, line: 401, type: !756)
!7089 = !DILocalVariable(name: "caller", arg: 2, scope: !7084, file: !2, line: 401, type: !49)
!7090 = !DILocation(line: 401, column: 67, scope: !7084)
!7091 = !DILocation(line: 401, column: 88, scope: !7084)
!7092 = !DILocation(line: 407, column: 6, scope: !7093)
!7093 = distinct !DILexicalBlock(scope: !7084, file: !2, line: 407, column: 6)
!7094 = !DILocation(line: 407, column: 6, scope: !7084)
!7095 = !DILocation(line: 413, column: 3, scope: !7093)
!7096 = !DILocation(line: 423, column: 38, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7084, file: !2, line: 423, column: 6)
!7098 = !DILocation(line: 423, column: 44, scope: !7097)
!7099 = !DILocation(line: 423, column: 6, scope: !7084)
!7100 = !DILocation(line: 424, column: 3, scope: !7097)
!7101 = !DILocation(line: 426, column: 3, scope: !7102)
!7102 = distinct !DILexicalBlock(scope: !7084, file: !2, line: 425, column: 6)
!7103 = !DILocation(line: 429, column: 1, scope: !7084)
!7104 = !DISubprogram(name: "__compiletime_assert_245", scope: !2, file: !2, line: 478, type: !2716, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7105 = distinct !DISubprogram(name: "copy_from_user", scope: !7106, file: !7106, line: 180, type: !7107, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7109)
!7106 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!7107 = !DISubroutineType(types: !7108)
!7108 = !{!49, !30, !2127, !49}
!7109 = !{!7110, !7111, !7112}
!7110 = !DILocalVariable(name: "to", arg: 1, scope: !7105, file: !7106, line: 180, type: !30)
!7111 = !DILocalVariable(name: "from", arg: 2, scope: !7105, file: !7106, line: 180, type: !2127)
!7112 = !DILocalVariable(name: "n", arg: 3, scope: !7105, file: !7106, line: 180, type: !49)
!7113 = !DILocation(line: 180, column: 22, scope: !7105)
!7114 = !DILocation(line: 180, column: 45, scope: !7105)
!7115 = !DILocation(line: 180, column: 65, scope: !7105)
!7116 = !DILocation(line: 182, column: 22, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7105, file: !7106, line: 182, column: 6)
!7118 = !DILocation(line: 182, column: 26, scope: !7117)
!7119 = !DILocation(line: 182, column: 6, scope: !7117)
!7120 = !DILocation(line: 182, column: 6, scope: !7105)
!7121 = !DILocation(line: 183, column: 23, scope: !7117)
!7122 = !DILocation(line: 183, column: 27, scope: !7117)
!7123 = !DILocation(line: 183, column: 33, scope: !7117)
!7124 = !DILocation(line: 183, column: 7, scope: !7117)
!7125 = !DILocation(line: 183, column: 5, scope: !7117)
!7126 = !DILocation(line: 183, column: 3, scope: !7117)
!7127 = !DILocation(line: 184, column: 9, scope: !7105)
!7128 = !DILocation(line: 184, column: 2, scope: !7105)
!7129 = distinct !DISubprogram(name: "check_copy_size", scope: !9, file: !9, line: 237, type: !7130, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7132)
!7130 = !DISubroutineType(types: !7131)
!7131 = !{!831, !2127, !45, !831}
!7132 = !{!7133, !7134, !7135, !7136, !7137, !7140}
!7133 = !DILocalVariable(name: "addr", arg: 1, scope: !7129, file: !9, line: 237, type: !2127)
!7134 = !DILocalVariable(name: "bytes", arg: 2, scope: !7129, file: !9, line: 237, type: !45)
!7135 = !DILocalVariable(name: "is_source", arg: 3, scope: !7129, file: !9, line: 237, type: !831)
!7136 = !DILocalVariable(name: "sz", scope: !7129, file: !9, line: 239, type: !32)
!7137 = !DILocalVariable(name: "__ret_warn_on", scope: !7138, file: !9, line: 249, type: !32)
!7138 = distinct !DILexicalBlock(scope: !7139, file: !9, line: 249, column: 6)
!7139 = distinct !DILexicalBlock(scope: !7129, file: !9, line: 249, column: 6)
!7140 = !DILocalVariable(name: "__flags", scope: !7141, file: !9, line: 249, type: !32)
!7141 = distinct !DILexicalBlock(scope: !7142, file: !9, line: 249, column: 6)
!7142 = distinct !DILexicalBlock(scope: !7138, file: !9, line: 249, column: 6)
!7143 = !DILocation(line: 237, column: 29, scope: !7129)
!7144 = !DILocation(line: 237, column: 42, scope: !7129)
!7145 = !DILocation(line: 237, column: 54, scope: !7129)
!7146 = !DILocation(line: 239, column: 2, scope: !7129)
!7147 = !DILocation(line: 239, column: 6, scope: !7129)
!7148 = !DILocation(line: 239, column: 33, scope: !7129)
!7149 = !DILocation(line: 239, column: 11, scope: !7129)
!7150 = !DILocation(line: 240, column: 6, scope: !7151)
!7151 = distinct !DILexicalBlock(scope: !7129, file: !9, line: 240, column: 6)
!7152 = !DILocation(line: 0, scope: !7151)
!7153 = !DILocation(line: 240, column: 6, scope: !7129)
!7154 = !DILocation(line: 241, column: 29, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7156, file: !9, line: 241, column: 7)
!7156 = distinct !DILexicalBlock(scope: !7151, file: !9, line: 240, column: 39)
!7157 = !DILocation(line: 241, column: 8, scope: !7155)
!7158 = !DILocation(line: 241, column: 7, scope: !7156)
!7159 = !DILocation(line: 242, column: 18, scope: !7155)
!7160 = !DILocation(line: 242, column: 22, scope: !7155)
!7161 = !DILocation(line: 242, column: 4, scope: !7155)
!7162 = !DILocation(line: 243, column: 12, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7155, file: !9, line: 243, column: 12)
!7164 = !DILocation(line: 243, column: 12, scope: !7155)
!7165 = !DILocation(line: 244, column: 4, scope: !7163)
!7166 = !{i32 2070929}
!7167 = !DILocation(line: 246, column: 4, scope: !7163)
!7168 = !{i32 2070958}
!7169 = !DILocation(line: 247, column: 3, scope: !7156)
!7170 = !DILocation(line: 249, column: 6, scope: !7138)
!7171 = !DILocation(line: 249, column: 6, scope: !7142)
!7172 = !DILocation(line: 249, column: 6, scope: !7141)
!7173 = !DILocation(line: 249, column: 6, scope: !7174)
!7174 = distinct !DILexicalBlock(scope: !7141, file: !9, line: 249, column: 6)
!7175 = !DILocation(line: 249, column: 6, scope: !7176)
!7176 = distinct !DILexicalBlock(scope: !7141, file: !9, line: 249, column: 6)
!7177 = !{i64 2149571391, i64 2149571420, i64 2149571466, i64 2149571524, i64 2149571578, i64 2149571632, i64 2149571687, i64 2149571718, i64 2149572026, i64 2149572032, i64 2149572079, i64 2149572102, i64 2149572128}
!7178 = !DILocation(line: 249, column: 6, scope: !7179)
!7179 = distinct !DILexicalBlock(scope: !7141, file: !9, line: 249, column: 6)
!7180 = !DILocation(line: 249, column: 6, scope: !7139)
!7181 = !DILocation(line: 249, column: 6, scope: !7129)
!7182 = !DILocation(line: 250, column: 3, scope: !7139)
!7183 = !DILocation(line: 251, column: 20, scope: !7129)
!7184 = !DILocation(line: 251, column: 26, scope: !7129)
!7185 = !DILocation(line: 251, column: 33, scope: !7129)
!7186 = !DILocation(line: 251, column: 2, scope: !7129)
!7187 = !DILocation(line: 252, column: 2, scope: !7129)
!7188 = !DILocation(line: 253, column: 1, scope: !7129)
!7189 = !DISubprogram(name: "_copy_from_user", scope: !7106, file: !7106, line: 158, type: !7107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7190 = distinct !DISubprogram(name: "copy_overflow", scope: !9, file: !9, line: 230, type: !7191, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7193)
!7191 = !DISubroutineType(types: !7192)
!7192 = !{null, !32, !49}
!7193 = !{!7194, !7195}
!7194 = !DILocalVariable(name: "size", arg: 1, scope: !7190, file: !9, line: 230, type: !32)
!7195 = !DILocalVariable(name: "count", arg: 2, scope: !7190, file: !9, line: 230, type: !49)
!7196 = !DILocation(line: 230, column: 38, scope: !7190)
!7197 = !DILocation(line: 230, column: 58, scope: !7190)
!7198 = !DILocation(line: 233, column: 19, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7190, file: !9, line: 232, column: 6)
!7200 = !DILocation(line: 233, column: 25, scope: !7199)
!7201 = !DILocation(line: 233, column: 3, scope: !7199)
!7202 = !DILocation(line: 234, column: 1, scope: !7190)
!7203 = !DISubprogram(name: "__bad_copy_from", scope: !9, file: !9, line: 224, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7204 = !DISubprogram(name: "__bad_copy_to", scope: !9, file: !9, line: 226, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7205 = distinct !DISubprogram(name: "check_object_size", scope: !9, file: !9, line: 218, type: !7206, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7208)
!7206 = !DISubroutineType(types: !7207)
!7207 = !{null, !2127, !49, !831}
!7208 = !{!7209, !7210, !7211}
!7209 = !DILocalVariable(name: "ptr", arg: 1, scope: !7205, file: !9, line: 218, type: !2127)
!7210 = !DILocalVariable(name: "n", arg: 2, scope: !7205, file: !9, line: 218, type: !49)
!7211 = !DILocalVariable(name: "to_user", arg: 3, scope: !7205, file: !9, line: 219, type: !831)
!7212 = !DILocation(line: 218, column: 50, scope: !7205)
!7213 = !DILocation(line: 218, column: 69, scope: !7205)
!7214 = !DILocation(line: 219, column: 15, scope: !7205)
!7215 = !DILocation(line: 220, column: 3, scope: !7205)
!7216 = !DISubprogram(name: "__copy_overflow", scope: !9, file: !9, line: 228, type: !7191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7217 = distinct !DISubprogram(name: "__do_compat_sys_set_robust_list", scope: !14, file: !14, line: 309, type: !7218, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7220)
!7218 = !DISubroutineType(types: !7219)
!7219 = !{!297, !5547, !5934}
!7220 = !{!7221, !7222}
!7221 = !DILocalVariable(name: "head", arg: 1, scope: !7217, file: !14, line: 309, type: !5547)
!7222 = !DILocalVariable(name: "len", arg: 2, scope: !7217, file: !14, line: 309, type: !5934)
!7223 = !DILocation(line: 309, column: 1, scope: !7217)
!7224 = !DILocation(line: 313, column: 6, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7217, file: !14, line: 313, column: 6)
!7226 = !DILocation(line: 313, column: 6, scope: !7217)
!7227 = !DILocation(line: 314, column: 3, scope: !7225)
!7228 = !DILocation(line: 316, column: 32, scope: !7217)
!7229 = !DILocation(line: 316, column: 2, scope: !7217)
!7230 = !DILocation(line: 316, column: 11, scope: !7217)
!7231 = !DILocation(line: 316, column: 30, scope: !7217)
!7232 = !DILocation(line: 318, column: 2, scope: !7217)
!7233 = !DILocation(line: 319, column: 1, scope: !7217)
!7234 = distinct !DISubprogram(name: "__do_compat_sys_get_robust_list", scope: !14, file: !14, line: 321, type: !7235, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7237)
!7235 = !DISubroutineType(types: !7236)
!7236 = !{!297, !32, !5935, !5936}
!7237 = !{!7238, !7239, !7240, !7241, !7242, !7243, !7244, !7248, !7249, !7250, !7251, !7252, !7255, !7256, !7257, !7258, !7259}
!7238 = !DILocalVariable(name: "pid", arg: 1, scope: !7234, file: !14, line: 321, type: !32)
!7239 = !DILocalVariable(name: "head_ptr", arg: 2, scope: !7234, file: !14, line: 321, type: !5935)
!7240 = !DILocalVariable(name: "len_ptr", arg: 3, scope: !7234, file: !14, line: 321, type: !5936)
!7241 = !DILocalVariable(name: "head", scope: !7234, file: !14, line: 325, type: !5547)
!7242 = !DILocalVariable(name: "ret", scope: !7234, file: !14, line: 326, type: !49)
!7243 = !DILocalVariable(name: "p", scope: !7234, file: !14, line: 327, type: !300)
!7244 = !DILocalVariable(name: "__ret_pu", scope: !7245, file: !14, line: 347, type: !32)
!7245 = distinct !DILexicalBlock(scope: !7246, file: !14, line: 347, column: 6)
!7246 = distinct !DILexicalBlock(scope: !7247, file: !14, line: 347, column: 6)
!7247 = distinct !DILexicalBlock(scope: !7234, file: !14, line: 347, column: 6)
!7248 = !DILocalVariable(name: "__ptr_pu", scope: !7245, file: !14, line: 347, type: !30)
!7249 = !DILocalVariable(name: "__val_pu", scope: !7245, file: !14, line: 347, type: !5934)
!7250 = !DILocalVariable(name: "__x", scope: !7245, file: !14, line: 347, type: !5934)
!7251 = !DILocalVariable(name: "__ptr", scope: !7245, file: !14, line: 347, type: !5936)
!7252 = !DILocalVariable(name: "__ret_pu", scope: !7253, file: !14, line: 349, type: !32)
!7253 = distinct !DILexicalBlock(scope: !7254, file: !14, line: 349, column: 9)
!7254 = distinct !DILexicalBlock(scope: !7234, file: !14, line: 349, column: 9)
!7255 = !DILocalVariable(name: "__ptr_pu", scope: !7253, file: !14, line: 349, type: !30)
!7256 = !DILocalVariable(name: "__val_pu", scope: !7253, file: !14, line: 349, type: !5555)
!7257 = !DILocalVariable(name: "__x", scope: !7253, file: !14, line: 349, type: !5555)
!7258 = !DILocalVariable(name: "__ptr", scope: !7253, file: !14, line: 349, type: !5935)
!7259 = !DILabel(scope: !7234, name: "err_unlock", file: !14, line: 351)
!7260 = !DILocation(line: 321, column: 1, scope: !7234)
!7261 = !DILocation(line: 325, column: 2, scope: !7234)
!7262 = !DILocation(line: 325, column: 41, scope: !7234)
!7263 = !DILocation(line: 326, column: 2, scope: !7234)
!7264 = !DILocation(line: 326, column: 16, scope: !7234)
!7265 = !DILocation(line: 327, column: 2, scope: !7234)
!7266 = !DILocation(line: 327, column: 22, scope: !7234)
!7267 = !DILocation(line: 329, column: 2, scope: !7234)
!7268 = !DILocation(line: 331, column: 6, scope: !7234)
!7269 = !DILocation(line: 332, column: 7, scope: !7270)
!7270 = distinct !DILexicalBlock(scope: !7234, file: !14, line: 332, column: 6)
!7271 = !DILocation(line: 332, column: 6, scope: !7234)
!7272 = !DILocation(line: 333, column: 7, scope: !7270)
!7273 = !DILocation(line: 333, column: 5, scope: !7270)
!7274 = !DILocation(line: 333, column: 3, scope: !7270)
!7275 = !DILocation(line: 335, column: 25, scope: !7276)
!7276 = distinct !DILexicalBlock(scope: !7270, file: !14, line: 334, column: 7)
!7277 = !DILocation(line: 335, column: 7, scope: !7276)
!7278 = !DILocation(line: 335, column: 5, scope: !7276)
!7279 = !DILocation(line: 336, column: 8, scope: !7280)
!7280 = distinct !DILexicalBlock(scope: !7276, file: !14, line: 336, column: 7)
!7281 = !DILocation(line: 336, column: 7, scope: !7276)
!7282 = !DILocation(line: 337, column: 4, scope: !7280)
!7283 = !DILocation(line: 340, column: 6, scope: !7234)
!7284 = !DILocation(line: 341, column: 25, scope: !7285)
!7285 = distinct !DILexicalBlock(scope: !7234, file: !14, line: 341, column: 6)
!7286 = !DILocation(line: 341, column: 7, scope: !7285)
!7287 = !DILocation(line: 341, column: 6, scope: !7234)
!7288 = !DILocation(line: 342, column: 3, scope: !7285)
!7289 = !DILocation(line: 344, column: 9, scope: !7234)
!7290 = !DILocation(line: 344, column: 12, scope: !7234)
!7291 = !DILocation(line: 344, column: 7, scope: !7234)
!7292 = !DILocation(line: 345, column: 2, scope: !7234)
!7293 = !DILocation(line: 347, column: 6, scope: !7246)
!7294 = !DILocation(line: 347, column: 6, scope: !7245)
!7295 = !{i64 2155726147}
!7296 = !DILocation(line: 347, column: 6, scope: !7297)
!7297 = distinct !DILexicalBlock(scope: !7245, file: !14, line: 347, column: 6)
!7298 = !DILocation(line: 347, column: 6, scope: !7247)
!7299 = !DILocation(line: 347, column: 6, scope: !7234)
!7300 = !DILocation(line: 348, column: 3, scope: !7247)
!7301 = !DILocation(line: 349, column: 9, scope: !7254)
!7302 = !DILocation(line: 349, column: 9, scope: !7253)
!7303 = !{i64 2155727231}
!7304 = !DILocation(line: 349, column: 9, scope: !7305)
!7305 = distinct !DILexicalBlock(scope: !7253, file: !14, line: 349, column: 9)
!7306 = !DILocation(line: 349, column: 2, scope: !7234)
!7307 = !DILocation(line: 351, column: 1, scope: !7234)
!7308 = !DILocation(line: 352, column: 2, scope: !7234)
!7309 = !DILocation(line: 354, column: 9, scope: !7234)
!7310 = !DILocation(line: 354, column: 2, scope: !7234)
!7311 = !DILocation(line: 355, column: 1, scope: !7234)
!7312 = distinct !DISubprogram(name: "ptr_to_compat", scope: !5549, file: !5549, line: 983, type: !7313, scopeLine: 984, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7315)
!7313 = !DISubroutineType(types: !7314)
!7314 = !{!5555, !30}
!7315 = !{!7316}
!7316 = !DILocalVariable(name: "uptr", arg: 1, scope: !7312, file: !5549, line: 983, type: !30)
!7317 = !DILocation(line: 983, column: 56, scope: !7312)
!7318 = !DILocation(line: 985, column: 29, scope: !7312)
!7319 = !DILocation(line: 985, column: 14, scope: !7312)
!7320 = !DILocation(line: 985, column: 9, scope: !7312)
!7321 = !DILocation(line: 985, column: 2, scope: !7312)
!7322 = distinct !DISubprogram(name: "__do_sys_futex_time32", scope: !14, file: !14, line: 359, type: !7323, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7325)
!7323 = !DISubroutineType(types: !7324)
!7324 = !{!297, !4984, !32, !311, !5937, !4984, !311}
!7325 = !{!7326, !7327, !7328, !7329, !7330, !7331, !7332, !7333, !7334, !7335, !7336}
!7326 = !DILocalVariable(name: "uaddr", arg: 1, scope: !7322, file: !14, line: 359, type: !4984)
!7327 = !DILocalVariable(name: "op", arg: 2, scope: !7322, file: !14, line: 359, type: !32)
!7328 = !DILocalVariable(name: "val", arg: 3, scope: !7322, file: !14, line: 359, type: !311)
!7329 = !DILocalVariable(name: "utime", arg: 4, scope: !7322, file: !14, line: 359, type: !5937)
!7330 = !DILocalVariable(name: "uaddr2", arg: 5, scope: !7322, file: !14, line: 359, type: !4984)
!7331 = !DILocalVariable(name: "val3", arg: 6, scope: !7322, file: !14, line: 359, type: !311)
!7332 = !DILocalVariable(name: "ret", scope: !7322, file: !14, line: 363, type: !32)
!7333 = !DILocalVariable(name: "cmd", scope: !7322, file: !14, line: 363, type: !32)
!7334 = !DILocalVariable(name: "t", scope: !7322, file: !14, line: 364, type: !444)
!7335 = !DILocalVariable(name: "tp", scope: !7322, file: !14, line: 364, type: !5994)
!7336 = !DILocalVariable(name: "ts", scope: !7322, file: !14, line: 365, type: !1310)
!7337 = !DILocation(line: 359, column: 1, scope: !7322)
!7338 = !DILocation(line: 363, column: 2, scope: !7322)
!7339 = !DILocation(line: 363, column: 6, scope: !7322)
!7340 = !DILocation(line: 363, column: 11, scope: !7322)
!7341 = !DILocation(line: 363, column: 17, scope: !7322)
!7342 = !DILocation(line: 363, column: 20, scope: !7322)
!7343 = !DILocation(line: 364, column: 2, scope: !7322)
!7344 = !DILocation(line: 364, column: 10, scope: !7322)
!7345 = !DILocation(line: 364, column: 14, scope: !7322)
!7346 = !DILocation(line: 365, column: 2, scope: !7322)
!7347 = !DILocation(line: 365, column: 20, scope: !7322)
!7348 = !DILocation(line: 367, column: 6, scope: !7349)
!7349 = distinct !DILexicalBlock(scope: !7322, file: !14, line: 367, column: 6)
!7350 = !DILocation(line: 367, column: 12, scope: !7349)
!7351 = !DILocation(line: 367, column: 37, scope: !7349)
!7352 = !DILocation(line: 367, column: 15, scope: !7349)
!7353 = !DILocation(line: 367, column: 6, scope: !7322)
!7354 = !DILocation(line: 368, column: 31, scope: !7355)
!7355 = distinct !DILexicalBlock(scope: !7356, file: !14, line: 368, column: 7)
!7356 = distinct !DILexicalBlock(scope: !7349, file: !14, line: 367, column: 43)
!7357 = !DILocation(line: 368, column: 7, scope: !7355)
!7358 = !DILocation(line: 368, column: 7, scope: !7356)
!7359 = !DILocation(line: 369, column: 4, scope: !7355)
!7360 = !DILocation(line: 370, column: 28, scope: !7356)
!7361 = !DILocation(line: 370, column: 33, scope: !7356)
!7362 = !DILocation(line: 370, column: 9, scope: !7356)
!7363 = !DILocation(line: 370, column: 7, scope: !7356)
!7364 = !DILocation(line: 371, column: 7, scope: !7365)
!7365 = distinct !DILexicalBlock(scope: !7356, file: !14, line: 371, column: 7)
!7366 = !DILocation(line: 371, column: 7, scope: !7356)
!7367 = !DILocation(line: 372, column: 11, scope: !7365)
!7368 = !DILocation(line: 372, column: 4, scope: !7365)
!7369 = !DILocation(line: 373, column: 6, scope: !7356)
!7370 = !DILocation(line: 374, column: 2, scope: !7356)
!7371 = !DILocation(line: 376, column: 18, scope: !7322)
!7372 = !DILocation(line: 376, column: 25, scope: !7322)
!7373 = !DILocation(line: 376, column: 29, scope: !7322)
!7374 = !DILocation(line: 376, column: 34, scope: !7322)
!7375 = !DILocation(line: 376, column: 38, scope: !7322)
!7376 = !DILocation(line: 376, column: 61, scope: !7322)
!7377 = !DILocation(line: 376, column: 46, scope: !7322)
!7378 = !DILocation(line: 376, column: 68, scope: !7322)
!7379 = !DILocation(line: 376, column: 9, scope: !7322)
!7380 = !DILocation(line: 376, column: 2, scope: !7322)
!7381 = !DILocation(line: 377, column: 1, scope: !7322)
!7382 = !DISubprogram(name: "get_old_timespec32", scope: !7383, file: !7383, line: 54, type: !7384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7383 = !DIFile(filename: "./include/linux/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "116b85661f57b3db3f5060e0f70ae53a")
!7384 = !DISubroutineType(types: !7385)
!7385 = !{!32, !6464, !2127}
