; ModuleID = 'kernel/time/itimer.c'
source_filename = "kernel/time/itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.23 }
%struct.atomic_t = type { i32 }
%union.anon.23 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
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
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.restart_block = type { i64, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.nodemask_t = type { [1 x i64] }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.17, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.20 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i64, i64 }
%union.anon.20 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.__kernel_old_itimerval = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.old_itimerval32 = type { %struct.old_timeval32, %struct.old_timeval32 }
%struct.old_timeval32 = type { i32, i32 }

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0
@__tracepoint_itimer_expire = external dso_local global %struct.tracepoint, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"include/trace/events/timer.h\00", align 1, !dbg !7
@trace_itimer_expire.__UNIQUE_ID___addressable___SCK__tp_func_itimer_expire405 = internal global ptr @__SCK__tp_func_itimer_expire, section ".discard.addressable", align 8, !dbg !13
@__SCK__tp_func_itimer_expire = external dso_local global %struct.static_call_key, align 8
@trace_itimer_expire.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5902
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_itimer_state = external dso_local global %struct.tracepoint, align 8
@trace_itimer_state.__UNIQUE_ID___addressable___SCK__tp_func_itimer_state397 = internal global ptr @__SCK__tp_func_itimer_state, section ".discard.addressable", align 8, !dbg !5904
@__SCK__tp_func_itimer_state = external dso_local global %struct.static_call_key, align 8
@trace_itimer_state.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5941
@__do_sys_setitimer.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5943
@.str.2 = private unnamed_addr constant [88 x i8] c"\014%s calls setitimer() with new_value NULL pointer. Misfeature support will be removed\0A\00", align 1, !dbg !5963
@__do_compat_sys_setitimer.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !5968
@llvm.compiler.used = appending global [4 x ptr] [ptr @trace_itimer_expire.__UNIQUE_ID___addressable___SCK__tp_func_itimer_expire405, ptr @trace_itimer_expire.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406, ptr @trace_itimer_state.__UNIQUE_ID___addressable___SCK__tp_func_itimer_state397, ptr @trace_itimer_state.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getitimer(ptr noundef %regs) #0 align 16 !dbg !6023 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6030
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6030
  %1 = load i64, ptr %di, align 8, !dbg !6030
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6030
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6030
  %3 = load i64, ptr %si, align 8, !dbg !6030
  %call = call i64 @__se_sys_getitimer(i64 noundef %1, i64 noundef %3) #16, !dbg !6030
  ret i64 %call, !dbg !6030
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getitimer(i64 noundef %which, i64 noundef %value) #0 align 16 !dbg !6031 {
entry:
  %which.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6035, metadata !DIExpression()), !dbg !6038
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load i64, ptr %which.addr, align 8, !dbg !6038
  %conv = trunc i64 %0 to i32, !dbg !6038
  %1 = load i64, ptr %value.addr, align 8, !dbg !6038
  %2 = inttoptr i64 %1 to ptr, !dbg !6038
  %call = call i64 @__do_sys_getitimer(i32 noundef %conv, ptr noundef %2) #16, !dbg !6038
  store i64 %call, ptr %ret, align 8, !dbg !6038
  br label %do.body, !dbg !6038

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6039

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6039

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6038
  ret i64 %3, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getitimer(ptr noundef %regs) #0 align 16 !dbg !6041 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6044
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6044
  %1 = load i64, ptr %bx, align 8, !dbg !6044
  %conv = trunc i64 %1 to i32, !dbg !6044
  %conv1 = zext i32 %conv to i64, !dbg !6044
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6044
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6044
  %3 = load i64, ptr %cx, align 8, !dbg !6044
  %conv2 = trunc i64 %3 to i32, !dbg !6044
  %conv3 = zext i32 %conv2 to i64, !dbg !6044
  %call = call i64 @__se_sys_getitimer(i64 noundef %conv1, i64 noundef %conv3) #16, !dbg !6044
  ret i64 %call, !dbg !6044
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_getitimer(ptr noundef %regs) #0 align 16 !dbg !6045 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6048
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6048
  %1 = load i64, ptr %bx, align 8, !dbg !6048
  %conv = trunc i64 %1 to i32, !dbg !6048
  %conv1 = zext i32 %conv to i64, !dbg !6048
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6048
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6048
  %3 = load i64, ptr %cx, align 8, !dbg !6048
  %conv2 = trunc i64 %3 to i32, !dbg !6048
  %conv3 = zext i32 %conv2 to i64, !dbg !6048
  %call = call i64 @__se_compat_sys_getitimer(i64 noundef %conv1, i64 noundef %conv3) #16, !dbg !6048
  ret i64 %call, !dbg !6048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_getitimer(i64 noundef %which, i64 noundef %value) #0 align 16 !dbg !6049 {
entry:
  %which.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load i64, ptr %which.addr, align 8, !dbg !6053
  %conv = trunc i64 %0 to i32, !dbg !6053
  %1 = load i64, ptr %value.addr, align 8, !dbg !6053
  %2 = inttoptr i64 %1 to ptr, !dbg !6053
  %call = call i64 @__do_compat_sys_getitimer(i32 noundef %conv, ptr noundef %2) #16, !dbg !6053
  ret i64 %call, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @it_real_fn(ptr noundef %timer) #0 align 16 !dbg !6054 {
entry:
  %timer.addr = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %leader_pid = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6056, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #17, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !6057, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6058, metadata !DIExpression()), !dbg !6064
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6064
  store ptr %0, ptr %__mptr, align 8, !dbg !6064
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6064
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !6064
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6064
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6065
  %2 = load ptr, ptr %tmp, align 8, !dbg !6064
  store ptr %2, ptr %sig, align 8, !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %leader_pid) #17, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %leader_pid, metadata !6060, metadata !DIExpression()), !dbg !6067
  %3 = load ptr, ptr %sig, align 8, !dbg !6068
  %pids = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 23, !dbg !6069
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 1, !dbg !6068
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !6068
  store ptr %4, ptr %leader_pid, align 8, !dbg !6067
  %5 = load ptr, ptr %leader_pid, align 8, !dbg !6070
  call void @trace_itimer_expire(i32 noundef 0, ptr noundef %5, i64 noundef 0) #16, !dbg !6071
  %6 = load ptr, ptr %leader_pid, align 8, !dbg !6072
  %call = call i32 @kill_pid_info(i32 noundef 14, ptr noundef inttoptr (i64 1 to ptr), ptr noundef %6) #16, !dbg !6073
  call void @llvm.lifetime.end.p0(i64 8, ptr %leader_pid) #17, !dbg !6074
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #17, !dbg !6074
  ret i32 0, !dbg !6075
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_itimer_expire(i32 noundef %which, ptr noundef %pid, i64 noundef %now) #3 align 16 !dbg !15 {
entry:
  %which.addr = alloca i32, align 4
  %pid.addr = alloca ptr, align 8
  %now.addr = alloca i64, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu403 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5989, metadata !DIExpression()), !dbg !6076
  store ptr %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5990, metadata !DIExpression()), !dbg !6076
  store i64 %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !5991, metadata !DIExpression()), !dbg !6076
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 1)) #16, !dbg !6077
  br i1 %call, label %if.then, label %if.end68, !dbg !6076

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6077

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #17, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5992, metadata !DIExpression()), !dbg !6078
  store i32 0, ptr %__idx, align 4, !dbg !6078
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5995, metadata !DIExpression()), !dbg !6079
  br label %do.body1, !dbg !6079

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5998, metadata !DIExpression()), !dbg !6080
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6080
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6079
  br label %do.cond, !dbg !6080

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6080

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6000, metadata !DIExpression()), !dbg !6081
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !6081, !srcloc !6082
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6081
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6081
  %conv = zext i32 %2 to i64, !dbg !6081
  %conv2 = trunc i64 %conv to i32, !dbg !6081
  store i32 %conv2, ptr %tmp, align 4, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !6079
  %3 = load i32, ptr %tmp, align 4, !dbg !6081
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6079
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6079
  store i32 %4, ptr %tmp3, align 4, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6083
  %5 = load i32, ptr %tmp3, align 4, !dbg !6079
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #16, !dbg !6083
  br i1 %call4, label %if.end, label %if.then5, !dbg !6078

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6084
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6002, metadata !DIExpression()), !dbg !6084
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6084
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6085
  %tobool = icmp ne i32 %6, 0, !dbg !6085
  %lnot = xor i1 %tobool, true, !dbg !6085
  %lnot6 = xor i1 %lnot, true, !dbg !6085
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6085
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6085
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6085
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6085
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6084

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6085

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6005, metadata !DIExpression()), !dbg !6086
  store i32 2307, ptr %__flags, align 4, !dbg !6086
  br label %do.body11, !dbg !6086

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6087

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6087

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6086

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6089
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 368, i32 %7, i64 12) #17, !dbg !6089, !srcloc !6091
  br label %do.cond15, !dbg !6089

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6089

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6086

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6092

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6092

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6085
  br label %do.cond20, !dbg !6086

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6086

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6086

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6084
  %tobool24 = icmp ne i32 %8, 0, !dbg !6084
  %lnot25 = xor i1 %tobool24, true, !dbg !6084
  %lnot27 = xor i1 %lnot25, true, !dbg !6084
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6084
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6084
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6084
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6094
  %9 = load i64, ptr %tmp23, align 8, !dbg !6084
  %tobool31 = icmp ne i64 %9, 0, !dbg !6094
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6078

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6094

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6078

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !6095
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6095, !srcloc !6097
  br label %do.cond35, !dbg !6095

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6095

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6078

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #17, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6008, metadata !DIExpression()), !dbg !6098
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #17, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6010, metadata !DIExpression()), !dbg !6098
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu403) #17, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu403, metadata !6011, metadata !DIExpression()), !dbg !6099
  br label %do.body38, !dbg !6100

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6102

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6102

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 8), align 8, !dbg !6100
  store ptr %10, ptr %tmp41, align 8, !dbg !6102
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6100
  store ptr %11, ptr %__UNIQUE_ID_rcu403, align 8, !dbg !6099
  %12 = load ptr, ptr %__UNIQUE_ID_rcu403, align 8, !dbg !6099
  store ptr %12, ptr %tmp42, align 8, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu403) #17, !dbg !6098
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6099
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6098
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6104
  %tobool43 = icmp ne ptr %14, null, !dbg !6104
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6098

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6106
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6106
  %16 = load ptr, ptr %data, align 8, !dbg !6106
  store ptr %16, ptr %__data, align 8, !dbg !6106
  store ptr @__SCT__tp_func_itimer_expire, ptr %tmp45, align 8, !dbg !6108
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6108
  %18 = load ptr, ptr %__data, align 8, !dbg !6106
  %19 = load i32, ptr %which.addr, align 4, !dbg !6106
  %20 = load ptr, ptr %pid.addr, align 8, !dbg !6106
  %21 = load i64, ptr %now.addr, align 8, !dbg !6106
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef %20, i64 noundef %21) #16, !dbg !6106
  br label %if.end47, !dbg !6106

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #17, !dbg !6078
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #17, !dbg !6078
  br label %do.cond48, !dbg !6098

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6098

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6078

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6110, !srcloc !6112
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !6113
  %lnot52 = xor i1 %call51, true, !dbg !6113
  %lnot54 = xor i1 %lnot52, true, !dbg !6113
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6113
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6113
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6113
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6113
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6110

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6113

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !6013), !dbg !6115
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #17, !dbg !6115, !srcloc !6117
  call void @llvm.write_register.i64(metadata !6013, i64 %23), !dbg !6115
  br label %do.cond61, !dbg !6115

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6115

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6115

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6110

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6110

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6077
  br label %cleanup, !dbg !6077

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #17, !dbg !6077
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6078

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6078

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6076

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6118 dso_local i32 @kill_pid_info(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clear_itimer() #0 align 16 !dbg !6121 {
entry:
  %v = alloca %struct.itimerspec64, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr %v) #17, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6123, metadata !DIExpression()), !dbg !6126
  call void @llvm.memset.p0.i64(ptr align 8 %v, i8 0, i64 32, i1 false), !dbg !6126
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !6127
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6124, metadata !DIExpression()), !dbg !6128
  store i32 0, ptr %i, align 4, !dbg !6129
  br label %for.cond, !dbg !6131

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6132
  %cmp = icmp slt i32 %0, 3, !dbg !6134
  br i1 %cmp, label %for.body, label %for.end, !dbg !6135

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6136
  %call = call i32 @do_setitimer(i32 noundef %1, ptr noundef %v, ptr noundef null) #16, !dbg !6137
  br label %for.inc, !dbg !6137

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !6138
  %inc = add i32 %2, 1, !dbg !6138
  store i32 %inc, ptr %i, align 4, !dbg !6138
  br label %for.cond, !dbg !6139, !llvm.loop !6140

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 32, ptr %v) #17, !dbg !6144
  ret void, !dbg !6144
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_setitimer(i32 noundef %which, ptr noundef %value, ptr noundef %ovalue) #0 align 16 !dbg !6145 {
entry:
  %retval = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %ovalue.addr = alloca ptr, align 8
  %tsk = alloca ptr, align 8
  %timer = alloca ptr, align 8
  %expires = alloca i64, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6150, metadata !DIExpression()), !dbg !6158
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6151, metadata !DIExpression()), !dbg !6159
  store ptr %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !6152, metadata !DIExpression()), !dbg !6160
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #17, !dbg !6161
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !6153, metadata !DIExpression()), !dbg !6162
  %call = call ptr @get_current() #16, !dbg !6163
  store ptr %call, ptr %tsk, align 8, !dbg !6162
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer) #17, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !6154, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %expires) #17, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %expires, metadata !6155, metadata !DIExpression()), !dbg !6167
  %0 = load i32, ptr %which.addr, align 4, !dbg !6168
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
  ], !dbg !6169

sw.bb:                                            ; preds = %entry
  br label %again, !dbg !6170

again:                                            ; preds = %if.then6, %sw.bb
  call void @llvm.dbg.label(metadata !6156), !dbg !6171
  %1 = load ptr, ptr %tsk, align 8, !dbg !6172
  %sighand = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 105, !dbg !6173
  %2 = load ptr, ptr %sighand, align 8, !dbg !6173
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !6174
  call void @spin_lock_irq(ptr noundef %siglock) #16, !dbg !6175
  %3 = load ptr, ptr %tsk, align 8, !dbg !6176
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 104, !dbg !6177
  %4 = load ptr, ptr %signal, align 64, !dbg !6177
  %real_timer = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 18, !dbg !6178
  store ptr %real_timer, ptr %timer, align 8, !dbg !6179
  %5 = load ptr, ptr %ovalue.addr, align 8, !dbg !6180
  %tobool = icmp ne ptr %5, null, !dbg !6180
  br i1 %tobool, label %if.then, label %if.end, !dbg !6182

if.then:                                          ; preds = %again
  %6 = load ptr, ptr %ovalue.addr, align 8, !dbg !6183
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %6, i32 0, i32 1, !dbg !6185
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #17, !dbg !6186
  %7 = load ptr, ptr %timer, align 8, !dbg !6187
  %call1 = call { i64, i64 } @itimer_get_remtime(ptr noundef %7) #16, !dbg !6186
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6186
  %9 = extractvalue { i64, i64 } %call1, 0, !dbg !6186
  store i64 %9, ptr %8, align 8, !dbg !6186
  %10 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6186
  %11 = extractvalue { i64, i64 } %call1, 1, !dbg !6186
  store i64 %11, ptr %10, align 8, !dbg !6186
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_value, ptr align 8 %tmp, i64 16, i1 false), !dbg !6186
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #17, !dbg !6186
  %12 = load ptr, ptr %ovalue.addr, align 8, !dbg !6188
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %12, i32 0, i32 0, !dbg !6189
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp2) #17, !dbg !6190
  %13 = load ptr, ptr %tsk, align 8, !dbg !6190
  %signal3 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 104, !dbg !6190
  %14 = load ptr, ptr %signal3, align 64, !dbg !6190
  %it_real_incr = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 19, !dbg !6190
  %15 = load i64, ptr %it_real_incr, align 8, !dbg !6190
  %call4 = call { i64, i64 } @ns_to_timespec64(i64 noundef %15) #16, !dbg !6190
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 0, !dbg !6190
  %17 = extractvalue { i64, i64 } %call4, 0, !dbg !6190
  store i64 %17, ptr %16, align 8, !dbg !6190
  %18 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 1, !dbg !6190
  %19 = extractvalue { i64, i64 } %call4, 1, !dbg !6190
  store i64 %19, ptr %18, align 8, !dbg !6190
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_interval, ptr align 8 %tmp2, i64 16, i1 false), !dbg !6190
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp2) #17, !dbg !6190
  br label %if.end, !dbg !6191

if.end:                                           ; preds = %if.then, %again
  %20 = load ptr, ptr %timer, align 8, !dbg !6192
  %call5 = call i32 @hrtimer_try_to_cancel(ptr noundef %20) #16, !dbg !6194
  %cmp = icmp slt i32 %call5, 0, !dbg !6195
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !6196

if.then6:                                         ; preds = %if.end
  %21 = load ptr, ptr %tsk, align 8, !dbg !6197
  %sighand7 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 105, !dbg !6199
  %22 = load ptr, ptr %sighand7, align 8, !dbg !6199
  %siglock8 = getelementptr inbounds %struct.sighand_struct, ptr %22, i32 0, i32 0, !dbg !6200
  call void @spin_unlock_irq(ptr noundef %siglock8) #16, !dbg !6201
  %23 = load ptr, ptr %timer, align 8, !dbg !6202
  call void @hrtimer_cancel_wait_running(ptr noundef %23) #16, !dbg !6203
  br label %again, !dbg !6204

if.end9:                                          ; preds = %if.end
  %24 = load ptr, ptr %value.addr, align 8, !dbg !6205
  %it_value10 = getelementptr inbounds %struct.itimerspec64, ptr %24, i32 0, i32 1, !dbg !6206
  %25 = getelementptr inbounds { i64, i64 }, ptr %it_value10, i32 0, i32 0, !dbg !6207
  %26 = load i64, ptr %25, align 8, !dbg !6207
  %27 = getelementptr inbounds { i64, i64 }, ptr %it_value10, i32 0, i32 1, !dbg !6207
  %28 = load i64, ptr %27, align 8, !dbg !6207
  %call11 = call i64 @timespec64_to_ktime(i64 %26, i64 %28) #16, !dbg !6207
  store i64 %call11, ptr %expires, align 8, !dbg !6208
  %29 = load i64, ptr %expires, align 8, !dbg !6209
  %cmp12 = icmp ne i64 %29, 0, !dbg !6211
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !6212

if.then13:                                        ; preds = %if.end9
  %30 = load ptr, ptr %value.addr, align 8, !dbg !6213
  %it_interval14 = getelementptr inbounds %struct.itimerspec64, ptr %30, i32 0, i32 0, !dbg !6215
  %31 = getelementptr inbounds { i64, i64 }, ptr %it_interval14, i32 0, i32 0, !dbg !6216
  %32 = load i64, ptr %31, align 8, !dbg !6216
  %33 = getelementptr inbounds { i64, i64 }, ptr %it_interval14, i32 0, i32 1, !dbg !6216
  %34 = load i64, ptr %33, align 8, !dbg !6216
  %call15 = call i64 @timespec64_to_ktime(i64 %32, i64 %34) #16, !dbg !6216
  %35 = load ptr, ptr %tsk, align 8, !dbg !6217
  %signal16 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 104, !dbg !6218
  %36 = load ptr, ptr %signal16, align 64, !dbg !6218
  %it_real_incr17 = getelementptr inbounds %struct.signal_struct, ptr %36, i32 0, i32 19, !dbg !6219
  store i64 %call15, ptr %it_real_incr17, align 8, !dbg !6220
  %37 = load ptr, ptr %timer, align 8, !dbg !6221
  %38 = load i64, ptr %expires, align 8, !dbg !6222
  call void @hrtimer_start(ptr noundef %37, i64 noundef %38, i32 noundef 1) #16, !dbg !6223
  br label %if.end20, !dbg !6224

if.else:                                          ; preds = %if.end9
  %39 = load ptr, ptr %tsk, align 8, !dbg !6225
  %signal18 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 104, !dbg !6226
  %40 = load ptr, ptr %signal18, align 64, !dbg !6226
  %it_real_incr19 = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 19, !dbg !6227
  store i64 0, ptr %it_real_incr19, align 8, !dbg !6228
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %41 = load ptr, ptr %value.addr, align 8, !dbg !6229
  call void @trace_itimer_state(i32 noundef 0, ptr noundef %41, i64 noundef 0) #16, !dbg !6230
  %42 = load ptr, ptr %tsk, align 8, !dbg !6231
  %sighand21 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 105, !dbg !6232
  %43 = load ptr, ptr %sighand21, align 8, !dbg !6232
  %siglock22 = getelementptr inbounds %struct.sighand_struct, ptr %43, i32 0, i32 0, !dbg !6233
  call void @spin_unlock_irq(ptr noundef %siglock22) #16, !dbg !6234
  br label %sw.epilog, !dbg !6235

sw.bb23:                                          ; preds = %entry
  %44 = load ptr, ptr %tsk, align 8, !dbg !6236
  %45 = load ptr, ptr %value.addr, align 8, !dbg !6237
  %46 = load ptr, ptr %ovalue.addr, align 8, !dbg !6238
  call void @set_cpu_itimer(ptr noundef %44, i32 noundef 1, ptr noundef %45, ptr noundef %46) #16, !dbg !6239
  br label %sw.epilog, !dbg !6240

sw.bb24:                                          ; preds = %entry
  %47 = load ptr, ptr %tsk, align 8, !dbg !6241
  %48 = load ptr, ptr %value.addr, align 8, !dbg !6242
  %49 = load ptr, ptr %ovalue.addr, align 8, !dbg !6243
  call void @set_cpu_itimer(ptr noundef %47, i32 noundef 0, ptr noundef %48, ptr noundef %49) #16, !dbg !6244
  br label %sw.epilog, !dbg !6245

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6246

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb23, %if.end20
  store i32 0, ptr %retval, align 4, !dbg !6247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6247

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %expires) #17, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer) #17, !dbg !6248
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #17, !dbg !6248
  %50 = load i32, ptr %retval, align 4, !dbg !6248
  ret i32 %50, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_alarm(ptr noundef %regs) #0 align 16 !dbg !6249 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6252
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6252
  %1 = load i64, ptr %di, align 8, !dbg !6252
  %call = call i64 @__se_sys_alarm(i64 noundef %1) #16, !dbg !6252
  ret i64 %call, !dbg !6252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_alarm(i64 noundef %seconds) #0 align 16 !dbg !6253 {
entry:
  %seconds.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %seconds, ptr %seconds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !6257, metadata !DIExpression()), !dbg !6259
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load i64, ptr %seconds.addr, align 8, !dbg !6259
  %conv = trunc i64 %0 to i32, !dbg !6259
  %call = call i64 @__do_sys_alarm(i32 noundef %conv) #16, !dbg !6259
  store i64 %call, ptr %ret, align 8, !dbg !6259
  br label %do.body, !dbg !6259

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6260

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6259
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6259
  ret i64 %1, !dbg !6259
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_alarm(ptr noundef %regs) #0 align 16 !dbg !6262 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6265
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6265
  %1 = load i64, ptr %bx, align 8, !dbg !6265
  %conv = trunc i64 %1 to i32, !dbg !6265
  %conv1 = zext i32 %conv to i64, !dbg !6265
  %call = call i64 @__se_sys_alarm(i64 noundef %conv1) #16, !dbg !6265
  ret i64 %call, !dbg !6265
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setitimer(ptr noundef %regs) #0 align 16 !dbg !6266 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6269
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6269
  %1 = load i64, ptr %di, align 8, !dbg !6269
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6269
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6269
  %3 = load i64, ptr %si, align 8, !dbg !6269
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6269
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6269
  %5 = load i64, ptr %dx, align 8, !dbg !6269
  %call = call i64 @__se_sys_setitimer(i64 noundef %1, i64 noundef %3, i64 noundef %5) #16, !dbg !6269
  ret i64 %call, !dbg !6269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setitimer(i64 noundef %which, i64 noundef %value, i64 noundef %ovalue) #0 align 16 !dbg !6270 {
entry:
  %which.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %ovalue.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6274, metadata !DIExpression()), !dbg !6278
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6275, metadata !DIExpression()), !dbg !6278
  store i64 %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !6276, metadata !DIExpression()), !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6278
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6277, metadata !DIExpression()), !dbg !6278
  %0 = load i64, ptr %which.addr, align 8, !dbg !6278
  %conv = trunc i64 %0 to i32, !dbg !6278
  %1 = load i64, ptr %value.addr, align 8, !dbg !6278
  %2 = inttoptr i64 %1 to ptr, !dbg !6278
  %3 = load i64, ptr %ovalue.addr, align 8, !dbg !6278
  %4 = inttoptr i64 %3 to ptr, !dbg !6278
  %call = call i64 @__do_sys_setitimer(i32 noundef %conv, ptr noundef %2, ptr noundef %4) #16, !dbg !6278
  store i64 %call, ptr %ret, align 8, !dbg !6278
  br label %do.body, !dbg !6278

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6279

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6279

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6278
  ret i64 %5, !dbg !6278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setitimer(ptr noundef %regs) #0 align 16 !dbg !6281 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6283, metadata !DIExpression()), !dbg !6284
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6284
  %1 = load i64, ptr %bx, align 8, !dbg !6284
  %conv = trunc i64 %1 to i32, !dbg !6284
  %conv1 = zext i32 %conv to i64, !dbg !6284
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6284
  %3 = load i64, ptr %cx, align 8, !dbg !6284
  %conv2 = trunc i64 %3 to i32, !dbg !6284
  %conv3 = zext i32 %conv2 to i64, !dbg !6284
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6284
  %5 = load i64, ptr %dx, align 8, !dbg !6284
  %conv4 = trunc i64 %5 to i32, !dbg !6284
  %conv5 = zext i32 %conv4 to i64, !dbg !6284
  %call = call i64 @__se_sys_setitimer(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #16, !dbg !6284
  ret i64 %call, !dbg !6284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_setitimer(ptr noundef %regs) #0 align 16 !dbg !6285 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6288
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6288
  %1 = load i64, ptr %bx, align 8, !dbg !6288
  %conv = trunc i64 %1 to i32, !dbg !6288
  %conv1 = zext i32 %conv to i64, !dbg !6288
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6288
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6288
  %3 = load i64, ptr %cx, align 8, !dbg !6288
  %conv2 = trunc i64 %3 to i32, !dbg !6288
  %conv3 = zext i32 %conv2 to i64, !dbg !6288
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6288
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6288
  %5 = load i64, ptr %dx, align 8, !dbg !6288
  %conv4 = trunc i64 %5 to i32, !dbg !6288
  %conv5 = zext i32 %conv4 to i64, !dbg !6288
  %call = call i64 @__se_compat_sys_setitimer(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #16, !dbg !6288
  ret i64 %call, !dbg !6288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_setitimer(i64 noundef %which, i64 noundef %value, i64 noundef %ovalue) #0 align 16 !dbg !6289 {
entry:
  %which.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %ovalue.addr = alloca i64, align 8
  store i64 %which, ptr %which.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6292, metadata !DIExpression()), !dbg !6294
  store i64 %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load i64, ptr %which.addr, align 8, !dbg !6294
  %conv = trunc i64 %0 to i32, !dbg !6294
  %1 = load i64, ptr %value.addr, align 8, !dbg !6294
  %2 = inttoptr i64 %1 to ptr, !dbg !6294
  %3 = load i64, ptr %ovalue.addr, align 8, !dbg !6294
  %4 = inttoptr i64 %3 to ptr, !dbg !6294
  %call = call i64 @__do_compat_sys_setitimer(i32 noundef %conv, ptr noundef %2, ptr noundef %4) #16, !dbg !6294
  ret i64 %call, !dbg !6294
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getitimer(i32 noundef %which, ptr noundef %value) #3 align 16 !dbg !6295 {
entry:
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %get_buffer = alloca %struct.itimerspec64, align 8
  %error = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6299, metadata !DIExpression()), !dbg !6303
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6300, metadata !DIExpression()), !dbg !6303
  call void @llvm.lifetime.start.p0(i64 32, ptr %get_buffer) #17, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %get_buffer, metadata !6301, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6302, metadata !DIExpression()), !dbg !6307
  %0 = load i32, ptr %which.addr, align 4, !dbg !6308
  %call = call i32 @do_getitimer(i32 noundef %0, ptr noundef %get_buffer) #16, !dbg !6309
  store i32 %call, ptr %error, align 4, !dbg !6307
  %1 = load i32, ptr %error, align 4, !dbg !6310
  %tobool = icmp ne i32 %1, 0, !dbg !6310
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6312

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !dbg !6313
  %call1 = call i32 @put_itimerval(ptr noundef %2, ptr noundef %get_buffer) #16, !dbg !6314
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6314
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6315

if.then:                                          ; preds = %land.lhs.true
  store i32 -14, ptr %error, align 4, !dbg !6316
  br label %if.end, !dbg !6317

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, ptr %error, align 4, !dbg !6318
  %conv = sext i32 %3 to i64, !dbg !6318
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 32, ptr %get_buffer) #17, !dbg !6319
  ret i64 %conv, !dbg !6320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_getitimer(i32 noundef %which, ptr noundef %value) #0 align 16 !dbg !6321 {
entry:
  %retval = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %tsk = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6325, metadata !DIExpression()), !dbg !6328
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6326, metadata !DIExpression()), !dbg !6329
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #17, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !6327, metadata !DIExpression()), !dbg !6331
  %call = call ptr @get_current() #16, !dbg !6332
  store ptr %call, ptr %tsk, align 8, !dbg !6331
  %0 = load i32, ptr %which.addr, align 4, !dbg !6333
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ], !dbg !6334

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %tsk, align 8, !dbg !6335
  %sighand = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 105, !dbg !6337
  %2 = load ptr, ptr %sighand, align 8, !dbg !6337
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !6338
  call void @spin_lock_irq(ptr noundef %siglock) #16, !dbg !6339
  %3 = load ptr, ptr %value.addr, align 8, !dbg !6340
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1, !dbg !6341
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #17, !dbg !6342
  %4 = load ptr, ptr %tsk, align 8, !dbg !6343
  %signal = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 104, !dbg !6344
  %5 = load ptr, ptr %signal, align 64, !dbg !6344
  %real_timer = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 18, !dbg !6345
  %call1 = call { i64, i64 } @itimer_get_remtime(ptr noundef %real_timer) #16, !dbg !6342
  %6 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6342
  %7 = extractvalue { i64, i64 } %call1, 0, !dbg !6342
  store i64 %7, ptr %6, align 8, !dbg !6342
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6342
  %9 = extractvalue { i64, i64 } %call1, 1, !dbg !6342
  store i64 %9, ptr %8, align 8, !dbg !6342
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_value, ptr align 8 %tmp, i64 16, i1 false), !dbg !6342
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #17, !dbg !6342
  %10 = load ptr, ptr %value.addr, align 8, !dbg !6346
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %10, i32 0, i32 0, !dbg !6347
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp2) #17, !dbg !6348
  %11 = load ptr, ptr %tsk, align 8, !dbg !6348
  %signal3 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 104, !dbg !6348
  %12 = load ptr, ptr %signal3, align 64, !dbg !6348
  %it_real_incr = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 19, !dbg !6348
  %13 = load i64, ptr %it_real_incr, align 8, !dbg !6348
  %call4 = call { i64, i64 } @ns_to_timespec64(i64 noundef %13) #16, !dbg !6348
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 0, !dbg !6348
  %15 = extractvalue { i64, i64 } %call4, 0, !dbg !6348
  store i64 %15, ptr %14, align 8, !dbg !6348
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp2, i32 0, i32 1, !dbg !6348
  %17 = extractvalue { i64, i64 } %call4, 1, !dbg !6348
  store i64 %17, ptr %16, align 8, !dbg !6348
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_interval, ptr align 8 %tmp2, i64 16, i1 false), !dbg !6348
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp2) #17, !dbg !6348
  %18 = load ptr, ptr %tsk, align 8, !dbg !6349
  %sighand5 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 105, !dbg !6350
  %19 = load ptr, ptr %sighand5, align 8, !dbg !6350
  %siglock6 = getelementptr inbounds %struct.sighand_struct, ptr %19, i32 0, i32 0, !dbg !6351
  call void @spin_unlock_irq(ptr noundef %siglock6) #16, !dbg !6352
  br label %sw.epilog, !dbg !6353

sw.bb7:                                           ; preds = %entry
  %20 = load ptr, ptr %tsk, align 8, !dbg !6354
  %21 = load ptr, ptr %value.addr, align 8, !dbg !6355
  call void @get_cpu_itimer(ptr noundef %20, i32 noundef 1, ptr noundef %21) #16, !dbg !6356
  br label %sw.epilog, !dbg !6357

sw.bb8:                                           ; preds = %entry
  %22 = load ptr, ptr %tsk, align 8, !dbg !6358
  %23 = load ptr, ptr %value.addr, align 8, !dbg !6359
  call void @get_cpu_itimer(ptr noundef %22, i32 noundef 0, ptr noundef %23) #16, !dbg !6360
  br label %sw.epilog, !dbg !6361

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6362

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !6363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #17, !dbg !6364
  %24 = load i32, ptr %retval, align 4, !dbg !6364
  ret i32 %24, !dbg !6364
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_itimerval(ptr noundef %o, ptr noundef %i) #0 align 16 !dbg !6365 {
entry:
  %o.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %v = alloca %struct.__kernel_old_itimerval, align 8
  store ptr %o, ptr %o.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !6369, metadata !DIExpression()), !dbg !6372
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6370, metadata !DIExpression()), !dbg !6373
  call void @llvm.lifetime.start.p0(i64 32, ptr %v) #17, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6371, metadata !DIExpression()), !dbg !6375
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6376
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 0, !dbg !6377
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %it_interval, i32 0, i32 0, !dbg !6378
  %1 = load i64, ptr %tv_sec, align 8, !dbg !6378
  %it_interval1 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !6379
  %tv_sec2 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval1, i32 0, i32 0, !dbg !6380
  store i64 %1, ptr %tv_sec2, align 8, !dbg !6381
  %2 = load ptr, ptr %i.addr, align 8, !dbg !6382
  %it_interval3 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 0, !dbg !6383
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %it_interval3, i32 0, i32 1, !dbg !6384
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !6384
  %div = sdiv i64 %3, 1000, !dbg !6385
  %it_interval4 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !6386
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval4, i32 0, i32 1, !dbg !6387
  store i64 %div, ptr %tv_usec, align 8, !dbg !6388
  %4 = load ptr, ptr %i.addr, align 8, !dbg !6389
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %4, i32 0, i32 1, !dbg !6390
  %tv_sec5 = getelementptr inbounds %struct.timespec64, ptr %it_value, i32 0, i32 0, !dbg !6391
  %5 = load i64, ptr %tv_sec5, align 8, !dbg !6391
  %it_value6 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !6392
  %tv_sec7 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value6, i32 0, i32 0, !dbg !6393
  store i64 %5, ptr %tv_sec7, align 8, !dbg !6394
  %6 = load ptr, ptr %i.addr, align 8, !dbg !6395
  %it_value8 = getelementptr inbounds %struct.itimerspec64, ptr %6, i32 0, i32 1, !dbg !6396
  %tv_nsec9 = getelementptr inbounds %struct.timespec64, ptr %it_value8, i32 0, i32 1, !dbg !6397
  %7 = load i64, ptr %tv_nsec9, align 8, !dbg !6397
  %div10 = sdiv i64 %7, 1000, !dbg !6398
  %it_value11 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !6399
  %tv_usec12 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value11, i32 0, i32 1, !dbg !6400
  store i64 %div10, ptr %tv_usec12, align 8, !dbg !6401
  %8 = load ptr, ptr %o.addr, align 8, !dbg !6402
  %call = call i64 @copy_to_user(ptr noundef %8, ptr noundef %v, i64 noundef 32) #16, !dbg !6403
  %tobool = icmp ne i64 %call, 0, !dbg !6403
  %9 = zext i1 %tobool to i64, !dbg !6403
  %cond = select i1 %tobool, i32 -14, i32 0, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 32, ptr %v) #17, !dbg !6404
  ret i32 %cond, !dbg !6405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6406 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6411, metadata !DIExpression()), !dbg !6417
  br label %do.body, !dbg !6417

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6413, metadata !DIExpression()), !dbg !6418
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6418
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6418
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6417
  br label %do.cond, !dbg !6418

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6418

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6415, metadata !DIExpression()), !dbg !6419
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !6419, !srcloc !6420
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6419
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6419
  %3 = inttoptr i64 %2 to ptr, !dbg !6419
  store ptr %3, ptr %tmp, align 8, !dbg !6419
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !6417
  %4 = load ptr, ptr %tmp, align 8, !dbg !6419
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6417
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6417
  store ptr %5, ptr %tmp1, align 8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !6421
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6417
  ret ptr %6, !dbg !6422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !6423 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6430
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6430
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !6430
  ret void, !dbg !6431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @itimer_get_remtime(ptr noundef %timer) #0 align 16 !dbg !6432 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %timer.addr = alloca ptr, align 8
  %rem = alloca i64, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6436, metadata !DIExpression()), !dbg !6438
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #17, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !6437, metadata !DIExpression()), !dbg !6440
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6441
  %call = call i64 @__hrtimer_get_remaining(ptr noundef %0, i1 noundef zeroext true) #16, !dbg !6442
  store i64 %call, ptr %rem, align 8, !dbg !6440
  %1 = load ptr, ptr %timer.addr, align 8, !dbg !6443
  %call1 = call zeroext i1 @hrtimer_active(ptr noundef %1) #16, !dbg !6445
  br i1 %call1, label %if.then, label %if.else, !dbg !6446

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %rem, align 8, !dbg !6447
  %cmp = icmp sle i64 %2, 0, !dbg !6450
  br i1 %cmp, label %if.then2, label %if.end, !dbg !6451

if.then2:                                         ; preds = %if.then
  store i64 1000, ptr %rem, align 8, !dbg !6452
  br label %if.end, !dbg !6453

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !6454

if.else:                                          ; preds = %entry
  store i64 0, ptr %rem, align 8, !dbg !6455
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %3 = load i64, ptr %rem, align 8, !dbg !6456
  %call4 = call { i64, i64 } @ns_to_timespec64(i64 noundef %3) #16, !dbg !6456
  %4 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !6456
  %5 = extractvalue { i64, i64 } %call4, 0, !dbg !6456
  store i64 %5, ptr %4, align 8, !dbg !6456
  %6 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !6456
  %7 = extractvalue { i64, i64 } %call4, 1, !dbg !6456
  store i64 %7, ptr %6, align 8, !dbg !6456
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #17, !dbg !6457
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !6457
  ret { i64, i64 } %8, !dbg !6457
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6458 dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !6461 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6465
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6465
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !6465
  ret void, !dbg !6466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_cpu_itimer(ptr noundef %tsk, i32 noundef %clock_id, ptr noundef %value) #0 align 16 !dbg !6467 {
entry:
  %tsk.addr = alloca ptr, align 8
  %clock_id.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  %interval = alloca i64, align 8
  %it = alloca ptr, align 8
  %t = alloca i64, align 8
  %samples = alloca [3 x i64], align 16
  %tmp = alloca %struct.timespec64, align 8
  %tmp8 = alloca %struct.timespec64, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6472, metadata !DIExpression()), !dbg !6484
  store i32 %clock_id, ptr %clock_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock_id.addr, metadata !6473, metadata !DIExpression()), !dbg !6485
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6474, metadata !DIExpression()), !dbg !6486
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6475, metadata !DIExpression()), !dbg !6488
  call void @llvm.lifetime.start.p0(i64 8, ptr %interval) #17, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %interval, metadata !6476, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 8, ptr %it) #17, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %it, metadata !6477, metadata !DIExpression()), !dbg !6491
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6492
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !6493
  %1 = load ptr, ptr %signal, align 64, !dbg !6493
  %it1 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, !dbg !6494
  %2 = load i32, ptr %clock_id.addr, align 4, !dbg !6495
  %idxprom = zext i32 %2 to i64, !dbg !6492
  %arrayidx = getelementptr [2 x %struct.cpu_itimer], ptr %it1, i64 0, i64 %idxprom, !dbg !6492
  store ptr %arrayidx, ptr %it, align 8, !dbg !6491
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !6496
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 105, !dbg !6497
  %4 = load ptr, ptr %sighand, align 8, !dbg !6497
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %4, i32 0, i32 0, !dbg !6498
  call void @spin_lock_irq(ptr noundef %siglock) #16, !dbg !6499
  %5 = load ptr, ptr %it, align 8, !dbg !6500
  %expires = getelementptr inbounds %struct.cpu_itimer, ptr %5, i32 0, i32 0, !dbg !6501
  %6 = load i64, ptr %expires, align 8, !dbg !6501
  store i64 %6, ptr %val, align 8, !dbg !6502
  %7 = load ptr, ptr %it, align 8, !dbg !6503
  %incr = getelementptr inbounds %struct.cpu_itimer, ptr %7, i32 0, i32 1, !dbg !6504
  %8 = load i64, ptr %incr, align 8, !dbg !6504
  store i64 %8, ptr %interval, align 8, !dbg !6505
  %9 = load i64, ptr %val, align 8, !dbg !6506
  %tobool = icmp ne i64 %9, 0, !dbg !6506
  br i1 %tobool, label %if.then, label %if.end5, !dbg !6507

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #17, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6479, metadata !DIExpression()), !dbg !6509
  call void @llvm.lifetime.start.p0(i64 24, ptr %samples) #17, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %samples, metadata !6482, metadata !DIExpression()), !dbg !6510
  %10 = load ptr, ptr %tsk.addr, align 8, !dbg !6511
  %arraydecay = getelementptr inbounds [3 x i64], ptr %samples, i64 0, i64 0, !dbg !6512
  call void @thread_group_sample_cputime(ptr noundef %10, ptr noundef %arraydecay) #16, !dbg !6513
  %11 = load i32, ptr %clock_id.addr, align 4, !dbg !6514
  %idxprom2 = zext i32 %11 to i64, !dbg !6515
  %arrayidx3 = getelementptr [3 x i64], ptr %samples, i64 0, i64 %idxprom2, !dbg !6515
  %12 = load i64, ptr %arrayidx3, align 8, !dbg !6515
  store i64 %12, ptr %t, align 8, !dbg !6516
  %13 = load i64, ptr %val, align 8, !dbg !6517
  %14 = load i64, ptr %t, align 8, !dbg !6519
  %cmp = icmp ult i64 %13, %14, !dbg !6520
  br i1 %cmp, label %if.then4, label %if.else, !dbg !6521

if.then4:                                         ; preds = %if.then
  store i64 1000000, ptr %val, align 8, !dbg !6522
  br label %if.end, !dbg !6523

if.else:                                          ; preds = %if.then
  %15 = load i64, ptr %t, align 8, !dbg !6524
  %16 = load i64, ptr %val, align 8, !dbg !6525
  %sub = sub i64 %16, %15, !dbg !6525
  store i64 %sub, ptr %val, align 8, !dbg !6525
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 24, ptr %samples) #17, !dbg !6526
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #17, !dbg !6526
  br label %if.end5, !dbg !6527

if.end5:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %tsk.addr, align 8, !dbg !6528
  %sighand6 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 105, !dbg !6529
  %18 = load ptr, ptr %sighand6, align 8, !dbg !6529
  %siglock7 = getelementptr inbounds %struct.sighand_struct, ptr %18, i32 0, i32 0, !dbg !6530
  call void @spin_unlock_irq(ptr noundef %siglock7) #16, !dbg !6531
  %19 = load ptr, ptr %value.addr, align 8, !dbg !6532
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %19, i32 0, i32 1, !dbg !6533
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #17, !dbg !6534
  %20 = load i64, ptr %val, align 8, !dbg !6535
  %call = call { i64, i64 } @ns_to_timespec64(i64 noundef %20) #16, !dbg !6534
  %21 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6534
  %22 = extractvalue { i64, i64 } %call, 0, !dbg !6534
  store i64 %22, ptr %21, align 8, !dbg !6534
  %23 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6534
  %24 = extractvalue { i64, i64 } %call, 1, !dbg !6534
  store i64 %24, ptr %23, align 8, !dbg !6534
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_value, ptr align 8 %tmp, i64 16, i1 false), !dbg !6534
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #17, !dbg !6534
  %25 = load ptr, ptr %value.addr, align 8, !dbg !6536
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %25, i32 0, i32 0, !dbg !6537
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp8) #17, !dbg !6538
  %26 = load i64, ptr %interval, align 8, !dbg !6539
  %call9 = call { i64, i64 } @ns_to_timespec64(i64 noundef %26) #16, !dbg !6538
  %27 = getelementptr inbounds { i64, i64 }, ptr %tmp8, i32 0, i32 0, !dbg !6538
  %28 = extractvalue { i64, i64 } %call9, 0, !dbg !6538
  store i64 %28, ptr %27, align 8, !dbg !6538
  %29 = getelementptr inbounds { i64, i64 }, ptr %tmp8, i32 0, i32 1, !dbg !6538
  %30 = extractvalue { i64, i64 } %call9, 1, !dbg !6538
  store i64 %30, ptr %29, align 8, !dbg !6538
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_interval, ptr align 8 %tmp8, i64 16, i1 false), !dbg !6538
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp8) #17, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 8, ptr %it) #17, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %interval) #17, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !6540
  ret void, !dbg !6540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6541 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6546 dso_local i64 @__hrtimer_get_remaining(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6551 dso_local zeroext i1 @hrtimer_active(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6554 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6555 dso_local void @thread_group_sample_cputime(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !6559 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6564, metadata !DIExpression()), !dbg !6567
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6570
  %1 = load i64, ptr %n.addr, align 8, !dbg !6572
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #16, !dbg !6573
  br i1 %call, label %if.then, label %if.end, !dbg !6574

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6575
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6576
  %4 = load i64, ptr %n.addr, align 8, !dbg !6577
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !6578
  store i64 %call1, ptr %n.addr, align 8, !dbg !6579
  br label %if.end, !dbg !6580

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6581
  ret i64 %5, !dbg !6582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !6583 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6587, metadata !DIExpression()), !dbg !6597
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6588, metadata !DIExpression()), !dbg !6598
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6589, metadata !DIExpression()), !dbg !6599
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6590, metadata !DIExpression()), !dbg !6601
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6602
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6603
  %conv = trunc i64 %1 to i32, !dbg !6603
  store i32 %conv, ptr %sz, align 4, !dbg !6601
  %2 = load i32, ptr %sz, align 4, !dbg !6604
  %cmp = icmp sge i32 %2, 0, !dbg !6604
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6604

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6604
  %conv2 = sext i32 %3 to i64, !dbg !6604
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6604
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6604
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6606
  %lnot = xor i1 %5, true, !dbg !6604
  %lnot5 = xor i1 %lnot, true, !dbg !6604
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6604
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6604
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6604
  %tobool = icmp ne i64 %expval, 0, !dbg !6604
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6607

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6608
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6611
  br i1 %7, label %if.else, label %if.then7, !dbg !6612

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6613
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6614
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !6615
  br label %if.end11, !dbg !6615

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6616, !range !6618, !noundef !481
  %tobool8 = trunc i8 %10 to i1, !dbg !6616
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6619

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !6620, !srcloc !6621
  br label %if.end, !dbg !6620

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !6622, !srcloc !6623
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6624

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6625
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6591, metadata !DIExpression()), !dbg !6625
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6625
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6625
  %lnot15 = xor i1 %cmp13, true, !dbg !6625
  %lnot17 = xor i1 %lnot15, true, !dbg !6625
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6625
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6625
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6626
  %tobool19 = icmp ne i32 %12, 0, !dbg !6626
  %lnot20 = xor i1 %tobool19, true, !dbg !6626
  %lnot22 = xor i1 %lnot20, true, !dbg !6626
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6626
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6626
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6626
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6626
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6625

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6626

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6594, metadata !DIExpression()), !dbg !6627
  store i32 2307, ptr %__flags, align 4, !dbg !6627
  br label %do.body28, !dbg !6627

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6628

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6628

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6627

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6630
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #17, !dbg !6630, !srcloc !6632
  br label %do.cond30, !dbg !6630

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6630

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6627

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6633

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6633

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6626
  br label %do.cond35, !dbg !6627

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6627

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6627

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6625
  %tobool38 = icmp ne i32 %14, 0, !dbg !6625
  %lnot39 = xor i1 %tobool38, true, !dbg !6625
  %lnot41 = xor i1 %lnot39, true, !dbg !6625
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6625
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6625
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6625
  store i64 %expval44, ptr %tmp, align 8, !dbg !6626
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6635
  %15 = load i64, ptr %tmp, align 8, !dbg !6625
  %tobool45 = icmp ne i64 %15, 0, !dbg !6635
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6636

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6637

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6638
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6639
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6640, !range !6618, !noundef !481
  %tobool48 = trunc i8 %18 to i1, !dbg !6640
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !6641
  store i1 true, ptr %retval, align 1, !dbg !6642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6642

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !6643
  %19 = load i1, ptr %retval, align 1, !dbg !6643
  ret i1 %19, !dbg !6643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6644 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !6645 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6650, metadata !DIExpression()), !dbg !6652
  %0 = load i32, ptr %size.addr, align 4, !dbg !6653
  %1 = load i64, ptr %count.addr, align 8, !dbg !6655
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !6656
  ret void, !dbg !6657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6658 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6659 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !6660 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6664, metadata !DIExpression()), !dbg !6667
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6665, metadata !DIExpression()), !dbg !6668
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6666, metadata !DIExpression()), !dbg !6669
  ret void, !dbg !6670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6671 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_getitimer(i32 noundef %which, ptr noundef %value) #3 align 16 !dbg !6672 {
entry:
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %get_buffer = alloca %struct.itimerspec64, align 8
  %error = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !6676, metadata !DIExpression()), !dbg !6680
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6677, metadata !DIExpression()), !dbg !6680
  call void @llvm.lifetime.start.p0(i64 32, ptr %get_buffer) #17, !dbg !6681
  call void @llvm.dbg.declare(metadata ptr %get_buffer, metadata !6678, metadata !DIExpression()), !dbg !6682
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !6683
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6679, metadata !DIExpression()), !dbg !6684
  %0 = load i32, ptr %which.addr, align 4, !dbg !6685
  %call = call i32 @do_getitimer(i32 noundef %0, ptr noundef %get_buffer) #16, !dbg !6686
  store i32 %call, ptr %error, align 4, !dbg !6684
  %1 = load i32, ptr %error, align 4, !dbg !6687
  %tobool = icmp ne i32 %1, 0, !dbg !6687
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6689

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !dbg !6690
  %call1 = call i32 @put_old_itimerval32(ptr noundef %2, ptr noundef %get_buffer) #16, !dbg !6691
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6691
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6692

if.then:                                          ; preds = %land.lhs.true
  store i32 -14, ptr %error, align 4, !dbg !6693
  br label %if.end, !dbg !6694

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, ptr %error, align 4, !dbg !6695
  %conv = sext i32 %3 to i64, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !6696
  call void @llvm.lifetime.end.p0(i64 32, ptr %get_buffer) #17, !dbg !6696
  ret i64 %conv, !dbg !6697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_old_itimerval32(ptr noundef %o, ptr noundef %i) #0 align 16 !dbg !6698 {
entry:
  %o.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %v32 = alloca %struct.old_itimerval32, align 4
  store ptr %o, ptr %o.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !6702, metadata !DIExpression()), !dbg !6705
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6703, metadata !DIExpression()), !dbg !6706
  call void @llvm.lifetime.start.p0(i64 16, ptr %v32) #17, !dbg !6707
  call void @llvm.dbg.declare(metadata ptr %v32, metadata !6704, metadata !DIExpression()), !dbg !6708
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6709
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %0, i32 0, i32 0, !dbg !6710
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %it_interval, i32 0, i32 0, !dbg !6711
  %1 = load i64, ptr %tv_sec, align 8, !dbg !6711
  %conv = trunc i64 %1 to i32, !dbg !6709
  %it_interval1 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !6712
  %tv_sec2 = getelementptr inbounds %struct.old_timeval32, ptr %it_interval1, i32 0, i32 0, !dbg !6713
  store i32 %conv, ptr %tv_sec2, align 4, !dbg !6714
  %2 = load ptr, ptr %i.addr, align 8, !dbg !6715
  %it_interval3 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 0, !dbg !6716
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %it_interval3, i32 0, i32 1, !dbg !6717
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !6717
  %div = sdiv i64 %3, 1000, !dbg !6718
  %conv4 = trunc i64 %div to i32, !dbg !6715
  %it_interval5 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !6719
  %tv_usec = getelementptr inbounds %struct.old_timeval32, ptr %it_interval5, i32 0, i32 1, !dbg !6720
  store i32 %conv4, ptr %tv_usec, align 4, !dbg !6721
  %4 = load ptr, ptr %i.addr, align 8, !dbg !6722
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %4, i32 0, i32 1, !dbg !6723
  %tv_sec6 = getelementptr inbounds %struct.timespec64, ptr %it_value, i32 0, i32 0, !dbg !6724
  %5 = load i64, ptr %tv_sec6, align 8, !dbg !6724
  %conv7 = trunc i64 %5 to i32, !dbg !6722
  %it_value8 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !6725
  %tv_sec9 = getelementptr inbounds %struct.old_timeval32, ptr %it_value8, i32 0, i32 0, !dbg !6726
  store i32 %conv7, ptr %tv_sec9, align 4, !dbg !6727
  %6 = load ptr, ptr %i.addr, align 8, !dbg !6728
  %it_value10 = getelementptr inbounds %struct.itimerspec64, ptr %6, i32 0, i32 1, !dbg !6729
  %tv_nsec11 = getelementptr inbounds %struct.timespec64, ptr %it_value10, i32 0, i32 1, !dbg !6730
  %7 = load i64, ptr %tv_nsec11, align 8, !dbg !6730
  %div12 = sdiv i64 %7, 1000, !dbg !6731
  %conv13 = trunc i64 %div12 to i32, !dbg !6728
  %it_value14 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !6732
  %tv_usec15 = getelementptr inbounds %struct.old_timeval32, ptr %it_value14, i32 0, i32 1, !dbg !6733
  store i32 %conv13, ptr %tv_usec15, align 4, !dbg !6734
  %8 = load ptr, ptr %o.addr, align 8, !dbg !6735
  %call = call i64 @copy_to_user(ptr noundef %8, ptr noundef %v32, i64 noundef 16) #16, !dbg !6736
  %tobool = icmp ne i64 %call, 0, !dbg !6736
  %9 = zext i1 %tobool to i64, !dbg !6736
  %cond = select i1 %tobool, i32 -14, i32 0, !dbg !6736
  call void @llvm.lifetime.end.p0(i64 16, ptr %v32) #17, !dbg !6737
  ret i32 %cond, !dbg !6738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !6739 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6746
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !6747
  ret i1 %call, !dbg !6748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !6749 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6753, metadata !DIExpression()), !dbg !6754
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6755
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #16, !dbg !6756
  ret i1 %call, !dbg !6757
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !6758 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6761, metadata !DIExpression()), !dbg !6768
  br label %do.body, !dbg !6769

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !6770
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6762, metadata !DIExpression()), !dbg !6770
  %0 = load i32, ptr %val.addr, align 4, !dbg !6770
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6770
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6770

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6770
  %cmp = icmp eq i32 %2, 1, !dbg !6770
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6770

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6770
  %cmp1 = icmp eq i32 %3, -1, !dbg !6770
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6770

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6770
  br label %cond.end, !dbg !6770

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6770
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6770
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6771
  %cmp2 = icmp eq i32 %5, 1, !dbg !6771
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6770

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6772, !srcloc !6774
  br label %if.end8, !dbg !6771

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6775
  %cmp3 = icmp eq i32 %6, -1, !dbg !6775
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6771

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6776, !srcloc !6778
  br label %if.end, !dbg !6775

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6775

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !6779
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6764, metadata !DIExpression()), !dbg !6779
  %7 = load i32, ptr %val.addr, align 4, !dbg !6779
  %conv = sext i32 %7 to i64, !dbg !6779
  %and = and i64 %conv, 4294967295, !dbg !6779
  %conv7 = trunc i64 %and to i32, !dbg !6779
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6779
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6779
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6779, !srcloc !6780
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !6775
  br label %do.cond, !dbg !6779

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6779

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !6769
  br label %do.end10, !dbg !6770

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6781
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_itimer_expire(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !6782 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6784, metadata !DIExpression()), !dbg !6786
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !6786, !srcloc !6787
  %1 = icmp ult i8 %0, 2, !dbg !6786
  call void @llvm.assume(i1 %1), !dbg !6786
  store i8 %0, ptr %c, align 1, !dbg !6786
  %2 = load i8, ptr %c, align 1, !dbg !6786, !range !6618, !noundef !481
  %tobool = trunc i8 %2 to i1, !dbg !6786
  %frombool = zext i1 %tobool to i8, !dbg !6786
  store i8 %frombool, ptr %tmp, align 1, !dbg !6786
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !6788
  %3 = load i8, ptr %tmp, align 1, !dbg !6786, !range !6618, !noundef !481
  %tobool1 = trunc i8 %3 to i1, !dbg !6786
  ret i1 %tobool1, !dbg !6789
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !6790 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6795, metadata !DIExpression()), !dbg !6798
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6796, metadata !DIExpression()), !dbg !6799
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6800
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6801, !range !6618, !noundef !481
  %tobool = trunc i8 %1 to i1, !dbg !6801
  %conv = zext i1 %tobool to i32, !dbg !6801
  %or = or i32 2, %conv, !dbg !6802
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #17
          to label %asm.fallthrough [label %l_yes], !dbg !6803, !srcloc !6804

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6805
  br label %return, !dbg !6805

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6797), !dbg !6806
  store i1 true, ptr %retval, align 1, !dbg !6807
  br label %return, !dbg !6807

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6808
  ret i1 %2, !dbg !6808
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !6809 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6813, metadata !DIExpression()), !dbg !6815
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6814, metadata !DIExpression()), !dbg !6816
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6817
  %call = call i32 @cpumask_check(i32 noundef %0) #16, !dbg !6817
  %conv = zext i32 %call to i64, !dbg !6817
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6817
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6817
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6817
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #16, !dbg !6817
  ret i1 %call1, !dbg !6818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6819 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6827, metadata !DIExpression()), !dbg !6829
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6828, metadata !DIExpression()), !dbg !6830
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6831
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6832
  %div = udiv i64 %1, 64, !dbg !6832
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6833
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !6834
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6835
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6836
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6837
  ret i1 %call, !dbg !6838
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !6839 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6843, metadata !DIExpression()), !dbg !6844
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6845
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #16, !dbg !6846
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6847
  ret i32 %1, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6849 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6861
  %1 = load i64, ptr %size.addr, align 8, !dbg !6862
  %conv = trunc i64 %1 to i32, !dbg !6862
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !6863
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6864
  %3 = load i64, ptr %size.addr, align 8, !dbg !6864
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !6864
  ret void, !dbg !6865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6866 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6869, metadata !DIExpression()), !dbg !6871
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6873
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6874
  br i1 %1, label %cond.true, label %cond.false, !dbg !6874

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6875
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6876
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6877
  %conv = zext i1 %call to i32, !dbg !6877
  br label %cond.end, !dbg !6874

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6878
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6879
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !6880
  %conv2 = zext i1 %call1 to i32, !dbg !6880
  br label %cond.end, !dbg !6874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6874
  %tobool = icmp ne i32 %cond, 0, !dbg !6874
  ret i1 %tobool, !dbg !6881
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6882 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6887, metadata !DIExpression()), !dbg !6889
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6888, metadata !DIExpression()), !dbg !6890
  ret i1 true, !dbg !6891
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6892 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6897, metadata !DIExpression()), !dbg !6900
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6898, metadata !DIExpression()), !dbg !6901
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6899, metadata !DIExpression()), !dbg !6902
  ret void, !dbg !6903
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6904 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6908, metadata !DIExpression()), !dbg !6910
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6909, metadata !DIExpression()), !dbg !6911
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6912
  %and = and i64 %0, 63, !dbg !6913
  %shl = shl i64 1, %and, !dbg !6914
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6915
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6916
  %shr = ashr i64 %2, 6, !dbg !6917
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6915
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6915
  %and1 = and i64 %shl, %3, !dbg !6918
  %cmp = icmp ne i64 %and1, 0, !dbg !6919
  ret i1 %cmp, !dbg !6920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6921 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6923, metadata !DIExpression()), !dbg !6926
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6924, metadata !DIExpression()), !dbg !6927
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !6928
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6925, metadata !DIExpression()), !dbg !6929
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6930
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6931
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !6932, !srcloc !6933
  %3 = icmp ult i8 %2, 2, !dbg !6932
  call void @llvm.assume(i1 %3), !dbg !6932
  store i8 %2, ptr %oldbit, align 1, !dbg !6932
  %4 = load i8, ptr %oldbit, align 1, !dbg !6934, !range !6618, !noundef !481
  %tobool = trunc i8 %4 to i1, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !6935
  ret i1 %tobool, !dbg !6936
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !6937 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6942, metadata !DIExpression()), !dbg !6944
  ret void, !dbg !6945
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6946 dso_local i32 @hrtimer_try_to_cancel(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_cancel_wait_running(ptr noundef %timer) #3 align 16 !dbg !6949 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6953, metadata !DIExpression()), !dbg !6954
  call void @cpu_relax() #16, !dbg !6955
  ret void, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timespec64_to_ktime(i64 %ts.coerce0, i64 %ts.coerce1) #3 align 16 !dbg !6957 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !6961, metadata !DIExpression()), !dbg !6962
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !6963
  %2 = load i64, ptr %tv_sec, align 8, !dbg !6963
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !6964
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !6964
  %call = call i64 @ktime_set(i64 noundef %2, i64 noundef %3) #16, !dbg !6965
  ret i64 %call, !dbg !6966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hrtimer_start(ptr noundef %timer, i64 noundef %tim, i32 noundef %mode) #3 align 16 !dbg !6967 {
entry:
  %timer.addr = alloca ptr, align 8
  %tim.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6972, metadata !DIExpression()), !dbg !6975
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !6973, metadata !DIExpression()), !dbg !6976
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6974, metadata !DIExpression()), !dbg !6977
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6978
  %1 = load i64, ptr %tim.addr, align 8, !dbg !6979
  %2 = load i32, ptr %mode.addr, align 4, !dbg !6980
  call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef 0, i32 noundef %2) #16, !dbg !6981
  ret void, !dbg !6982
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_itimer_state(i32 noundef %which, ptr noundef %value, i64 noundef %expires) #3 align 16 !dbg !5906 {
entry:
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %expires.addr = alloca i64, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu395 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5917, metadata !DIExpression()), !dbg !6983
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5918, metadata !DIExpression()), !dbg !6983
  store i64 %expires, ptr %expires.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expires.addr, metadata !5919, metadata !DIExpression()), !dbg !6983
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_state, i32 0, i32 1)) #16, !dbg !6984
  br i1 %call, label %if.then, label %if.end68, !dbg !6983

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6984

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #17, !dbg !6985
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5920, metadata !DIExpression()), !dbg !6985
  store i32 0, ptr %__idx, align 4, !dbg !6985
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6986
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5923, metadata !DIExpression()), !dbg !6986
  br label %do.body1, !dbg !6986

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6987
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5926, metadata !DIExpression()), !dbg !6987
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6987
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !6986
  br label %do.cond, !dbg !6987

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6987

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !6988
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5928, metadata !DIExpression()), !dbg !6988
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !6988, !srcloc !6989
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6988
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6988
  %conv = zext i32 %2 to i64, !dbg !6988
  %conv2 = trunc i64 %conv to i32, !dbg !6988
  store i32 %conv2, ptr %tmp, align 4, !dbg !6988
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !6986
  %3 = load i32, ptr %tmp, align 4, !dbg !6988
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6986
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6986
  store i32 %4, ptr %tmp3, align 4, !dbg !6986
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !6990
  %5 = load i32, ptr %tmp3, align 4, !dbg !6986
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #16, !dbg !6990
  br i1 %call4, label %if.end, label %if.then5, !dbg !6985

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6990

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6991
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5930, metadata !DIExpression()), !dbg !6991
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6991
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6992
  %tobool = icmp ne i32 %6, 0, !dbg !6992
  %lnot = xor i1 %tobool, true, !dbg !6992
  %lnot6 = xor i1 %lnot, true, !dbg !6992
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6992
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6992
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6992
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6992
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6991

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6992

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6993
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5933, metadata !DIExpression()), !dbg !6993
  store i32 2307, ptr %__flags, align 4, !dbg !6993
  br label %do.body11, !dbg !6993

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6994

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6994

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6993

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6996
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 340, i32 %7, i64 12) #17, !dbg !6996, !srcloc !6998
  br label %do.cond15, !dbg !6996

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6996

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6993

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6999

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6999

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6992
  br label %do.cond20, !dbg !6993

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6993

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6993

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6991
  %tobool24 = icmp ne i32 %8, 0, !dbg !6991
  %lnot25 = xor i1 %tobool24, true, !dbg !6991
  %lnot27 = xor i1 %lnot25, true, !dbg !6991
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6991
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6991
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6991
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6992
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !7001
  %9 = load i64, ptr %tmp23, align 8, !dbg !6991
  %tobool31 = icmp ne i64 %9, 0, !dbg !7001
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6985

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7001

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6985

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !7002
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !7002, !srcloc !7004
  br label %do.cond35, !dbg !7002

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !7002

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6985

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #17, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5936, metadata !DIExpression()), !dbg !7005
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #17, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5938, metadata !DIExpression()), !dbg !7005
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu395) #17, !dbg !7006
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu395, metadata !5939, metadata !DIExpression()), !dbg !7006
  br label %do.body38, !dbg !7007

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !7009

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !7009

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_state, i32 0, i32 8), align 8, !dbg !7007
  store ptr %10, ptr %tmp41, align 8, !dbg !7009
  %11 = load ptr, ptr %tmp41, align 8, !dbg !7007
  store ptr %11, ptr %__UNIQUE_ID_rcu395, align 8, !dbg !7006
  %12 = load ptr, ptr %__UNIQUE_ID_rcu395, align 8, !dbg !7006
  store ptr %12, ptr %tmp42, align 8, !dbg !7006
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu395) #17, !dbg !7005
  %13 = load ptr, ptr %tmp42, align 8, !dbg !7006
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !7005
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !7011
  %tobool43 = icmp ne ptr %14, null, !dbg !7011
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !7005

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !7013
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !7013
  %16 = load ptr, ptr %data, align 8, !dbg !7013
  store ptr %16, ptr %__data, align 8, !dbg !7013
  store ptr @__SCT__tp_func_itimer_state, ptr %tmp45, align 8, !dbg !7015
  %17 = load ptr, ptr %tmp45, align 8, !dbg !7015
  %18 = load ptr, ptr %__data, align 8, !dbg !7013
  %19 = load i32, ptr %which.addr, align 4, !dbg !7013
  %20 = load ptr, ptr %value.addr, align 8, !dbg !7013
  %21 = load i64, ptr %expires.addr, align 8, !dbg !7013
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef %20, i64 noundef %21) #16, !dbg !7013
  br label %if.end47, !dbg !7013

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #17, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #17, !dbg !6985
  br label %do.cond48, !dbg !7005

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !7005

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6985

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !7017, !srcloc !7019
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !7020
  %lnot52 = xor i1 %call51, true, !dbg !7020
  %lnot54 = xor i1 %lnot52, true, !dbg !7020
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !7020
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !7020
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !7020
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !7020
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !7017

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !7020

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !6013), !dbg !7022
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #17, !dbg !7022, !srcloc !7024
  call void @llvm.write_register.i64(metadata !6013, i64 %23), !dbg !7022
  br label %do.cond61, !dbg !7022

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !7022

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !7022

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !7017

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !7017

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6984
  br label %cleanup, !dbg !6984

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #17, !dbg !6984
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6985

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6985

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6983

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_cpu_itimer(ptr noundef %tsk, i32 noundef %clock_id, ptr noundef %value, ptr noundef %ovalue) #0 align 16 !dbg !7025 {
entry:
  %tsk.addr = alloca ptr, align 8
  %clock_id.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %ovalue.addr = alloca ptr, align 8
  %oval = alloca i64, align 8
  %nval = alloca i64, align 8
  %ointerval = alloca i64, align 8
  %ninterval = alloca i64, align 8
  %it = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp16 = alloca %struct.timespec64, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !7029, metadata !DIExpression()), !dbg !7038
  store i32 %clock_id, ptr %clock_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock_id.addr, metadata !7030, metadata !DIExpression()), !dbg !7039
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7031, metadata !DIExpression()), !dbg !7040
  store ptr %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !7032, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 8, ptr %oval) #17, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %oval, metadata !7033, metadata !DIExpression()), !dbg !7043
  call void @llvm.lifetime.start.p0(i64 8, ptr %nval) #17, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %nval, metadata !7034, metadata !DIExpression()), !dbg !7044
  call void @llvm.lifetime.start.p0(i64 8, ptr %ointerval) #17, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %ointerval, metadata !7035, metadata !DIExpression()), !dbg !7045
  call void @llvm.lifetime.start.p0(i64 8, ptr %ninterval) #17, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %ninterval, metadata !7036, metadata !DIExpression()), !dbg !7046
  call void @llvm.lifetime.start.p0(i64 8, ptr %it) #17, !dbg !7047
  call void @llvm.dbg.declare(metadata ptr %it, metadata !7037, metadata !DIExpression()), !dbg !7048
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !7049
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !7050
  %1 = load ptr, ptr %signal, align 64, !dbg !7050
  %it1 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, !dbg !7051
  %2 = load i32, ptr %clock_id.addr, align 4, !dbg !7052
  %idxprom = zext i32 %2 to i64, !dbg !7049
  %arrayidx = getelementptr [2 x %struct.cpu_itimer], ptr %it1, i64 0, i64 %idxprom, !dbg !7049
  store ptr %arrayidx, ptr %it, align 8, !dbg !7048
  %3 = load ptr, ptr %value.addr, align 8, !dbg !7053
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1, !dbg !7054
  %call = call i64 @timespec64_to_ns(ptr noundef %it_value) #16, !dbg !7055
  store i64 %call, ptr %nval, align 8, !dbg !7056
  %4 = load ptr, ptr %value.addr, align 8, !dbg !7057
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %4, i32 0, i32 0, !dbg !7058
  %call2 = call i64 @timespec64_to_ns(ptr noundef %it_interval) #16, !dbg !7059
  store i64 %call2, ptr %ninterval, align 8, !dbg !7060
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !7061
  %sighand = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 105, !dbg !7062
  %6 = load ptr, ptr %sighand, align 8, !dbg !7062
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %6, i32 0, i32 0, !dbg !7063
  call void @spin_lock_irq(ptr noundef %siglock) #16, !dbg !7064
  %7 = load ptr, ptr %it, align 8, !dbg !7065
  %expires = getelementptr inbounds %struct.cpu_itimer, ptr %7, i32 0, i32 0, !dbg !7066
  %8 = load i64, ptr %expires, align 8, !dbg !7066
  store i64 %8, ptr %oval, align 8, !dbg !7067
  %9 = load ptr, ptr %it, align 8, !dbg !7068
  %incr = getelementptr inbounds %struct.cpu_itimer, ptr %9, i32 0, i32 1, !dbg !7069
  %10 = load i64, ptr %incr, align 8, !dbg !7069
  store i64 %10, ptr %ointerval, align 8, !dbg !7070
  %11 = load i64, ptr %oval, align 8, !dbg !7071
  %tobool = icmp ne i64 %11, 0, !dbg !7071
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !7073

lor.lhs.false:                                    ; preds = %entry
  %12 = load i64, ptr %nval, align 8, !dbg !7074
  %tobool3 = icmp ne i64 %12, 0, !dbg !7074
  br i1 %tobool3, label %if.then, label %if.end5, !dbg !7075

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i64, ptr %nval, align 8, !dbg !7076
  %cmp = icmp ugt i64 %13, 0, !dbg !7079
  br i1 %cmp, label %if.then4, label %if.end, !dbg !7080

if.then4:                                         ; preds = %if.then
  %14 = load i64, ptr %nval, align 8, !dbg !7081
  %add = add i64 %14, 1000000, !dbg !7081
  store i64 %add, ptr %nval, align 8, !dbg !7081
  br label %if.end, !dbg !7082

if.end:                                           ; preds = %if.then4, %if.then
  %15 = load ptr, ptr %tsk.addr, align 8, !dbg !7083
  %16 = load i32, ptr %clock_id.addr, align 4, !dbg !7084
  call void @set_process_cpu_timer(ptr noundef %15, i32 noundef %16, ptr noundef %nval, ptr noundef %oval) #16, !dbg !7085
  br label %if.end5, !dbg !7086

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  %17 = load i64, ptr %nval, align 8, !dbg !7087
  %18 = load ptr, ptr %it, align 8, !dbg !7088
  %expires6 = getelementptr inbounds %struct.cpu_itimer, ptr %18, i32 0, i32 0, !dbg !7089
  store i64 %17, ptr %expires6, align 8, !dbg !7090
  %19 = load i64, ptr %ninterval, align 8, !dbg !7091
  %20 = load ptr, ptr %it, align 8, !dbg !7092
  %incr7 = getelementptr inbounds %struct.cpu_itimer, ptr %20, i32 0, i32 1, !dbg !7093
  store i64 %19, ptr %incr7, align 8, !dbg !7094
  %21 = load i32, ptr %clock_id.addr, align 4, !dbg !7095
  %cmp8 = icmp eq i32 %21, 1, !dbg !7096
  %22 = zext i1 %cmp8 to i64, !dbg !7095
  %cond = select i1 %cmp8, i32 1, i32 2, !dbg !7095
  %23 = load ptr, ptr %value.addr, align 8, !dbg !7097
  %24 = load i64, ptr %nval, align 8, !dbg !7098
  call void @trace_itimer_state(i32 noundef %cond, ptr noundef %23, i64 noundef %24) #16, !dbg !7099
  %25 = load ptr, ptr %tsk.addr, align 8, !dbg !7100
  %sighand9 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 105, !dbg !7101
  %26 = load ptr, ptr %sighand9, align 8, !dbg !7101
  %siglock10 = getelementptr inbounds %struct.sighand_struct, ptr %26, i32 0, i32 0, !dbg !7102
  call void @spin_unlock_irq(ptr noundef %siglock10) #16, !dbg !7103
  %27 = load ptr, ptr %ovalue.addr, align 8, !dbg !7104
  %tobool11 = icmp ne ptr %27, null, !dbg !7104
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !7106

if.then12:                                        ; preds = %if.end5
  %28 = load ptr, ptr %ovalue.addr, align 8, !dbg !7107
  %it_value13 = getelementptr inbounds %struct.itimerspec64, ptr %28, i32 0, i32 1, !dbg !7109
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #17, !dbg !7110
  %29 = load i64, ptr %oval, align 8, !dbg !7111
  %call14 = call { i64, i64 } @ns_to_timespec64(i64 noundef %29) #16, !dbg !7110
  %30 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !7110
  %31 = extractvalue { i64, i64 } %call14, 0, !dbg !7110
  store i64 %31, ptr %30, align 8, !dbg !7110
  %32 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !7110
  %33 = extractvalue { i64, i64 } %call14, 1, !dbg !7110
  store i64 %33, ptr %32, align 8, !dbg !7110
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_value13, ptr align 8 %tmp, i64 16, i1 false), !dbg !7110
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #17, !dbg !7110
  %34 = load ptr, ptr %ovalue.addr, align 8, !dbg !7112
  %it_interval15 = getelementptr inbounds %struct.itimerspec64, ptr %34, i32 0, i32 0, !dbg !7113
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp16) #17, !dbg !7114
  %35 = load i64, ptr %ointerval, align 8, !dbg !7115
  %call17 = call { i64, i64 } @ns_to_timespec64(i64 noundef %35) #16, !dbg !7114
  %36 = getelementptr inbounds { i64, i64 }, ptr %tmp16, i32 0, i32 0, !dbg !7114
  %37 = extractvalue { i64, i64 } %call17, 0, !dbg !7114
  store i64 %37, ptr %36, align 8, !dbg !7114
  %38 = getelementptr inbounds { i64, i64 }, ptr %tmp16, i32 0, i32 1, !dbg !7114
  %39 = extractvalue { i64, i64 } %call17, 1, !dbg !7114
  store i64 %39, ptr %38, align 8, !dbg !7114
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %it_interval15, ptr align 8 %tmp16, i64 16, i1 false), !dbg !7114
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp16) #17, !dbg !7114
  br label %if.end18, !dbg !7116

if.end18:                                         ; preds = %if.then12, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %it) #17, !dbg !7117
  call void @llvm.lifetime.end.p0(i64 8, ptr %ninterval) #17, !dbg !7117
  call void @llvm.lifetime.end.p0(i64 8, ptr %ointerval) #17, !dbg !7117
  call void @llvm.lifetime.end.p0(i64 8, ptr %nval) #17, !dbg !7117
  call void @llvm.lifetime.end.p0(i64 8, ptr %oval) #17, !dbg !7117
  ret void, !dbg !7117
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !7118 {
entry:
  call void @rep_nop() #16, !dbg !7120
  ret void, !dbg !7121
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !7122 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !7123, !srcloc !7124
  ret void, !dbg !7125
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #3 align 16 !dbg !7126 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !7131, metadata !DIExpression()), !dbg !7133
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !7132, metadata !DIExpression()), !dbg !7134
  %0 = load i64, ptr %secs.addr, align 8, !dbg !7135
  %cmp = icmp sge i64 %0, 9223372036, !dbg !7135
  %lnot = xor i1 %cmp, true, !dbg !7135
  %lnot1 = xor i1 %lnot, true, !dbg !7135
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7135
  %conv = sext i32 %lnot.ext to i64, !dbg !7135
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7135
  %tobool = icmp ne i64 %expval, 0, !dbg !7135
  br i1 %tobool, label %if.then, label %if.end, !dbg !7137

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !7138
  br label %return, !dbg !7138

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !7139
  %mul = mul i64 %1, 1000000000, !dbg !7140
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !7141
  %add = add i64 %mul, %2, !dbg !7142
  store i64 %add, ptr %retval, align 8, !dbg !7143
  br label %return, !dbg !7143

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !7144
  ret i64 %3, !dbg !7144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7145 dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_itimer_state(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timespec64_to_ns(ptr noundef %ts) #3 align 16 !dbg !7148 {
entry:
  %retval = alloca i64, align 8
  %ts.addr = alloca ptr, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !7154, metadata !DIExpression()), !dbg !7155
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !7156
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 0, !dbg !7158
  %1 = load i64, ptr %tv_sec, align 8, !dbg !7158
  %cmp = icmp sge i64 %1, 9223372036, !dbg !7159
  br i1 %cmp, label %if.then, label %if.end, !dbg !7160

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !7161
  br label %return, !dbg !7161

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !7162
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 0, !dbg !7164
  %3 = load i64, ptr %tv_sec1, align 8, !dbg !7164
  %cmp2 = icmp sle i64 %3, -9223372036, !dbg !7165
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !7166

if.then3:                                         ; preds = %if.end
  store i64 -9223372036854775808, ptr %retval, align 8, !dbg !7167
  br label %return, !dbg !7167

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %ts.addr, align 8, !dbg !7168
  %tv_sec5 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 0, !dbg !7169
  %5 = load i64, ptr %tv_sec5, align 8, !dbg !7169
  %mul = mul i64 %5, 1000000000, !dbg !7170
  %6 = load ptr, ptr %ts.addr, align 8, !dbg !7171
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1, !dbg !7172
  %7 = load i64, ptr %tv_nsec, align 8, !dbg !7172
  %add = add i64 %mul, %7, !dbg !7173
  store i64 %add, ptr %retval, align 8, !dbg !7174
  br label %return, !dbg !7174

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !7175
  ret i64 %8, !dbg !7175
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7176 dso_local void @set_process_cpu_timer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_alarm(i32 noundef %seconds) #3 align 16 !dbg !7179 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !7183, metadata !DIExpression()), !dbg !7184
  %0 = load i32, ptr %seconds.addr, align 4, !dbg !7185
  %call = call i32 @alarm_setitimer(i32 noundef %0) #16, !dbg !7186
  %conv = zext i32 %call to i64, !dbg !7186
  ret i64 %conv, !dbg !7187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alarm_setitimer(i32 noundef %seconds) #0 align 16 !dbg !7188 {
entry:
  %seconds.addr = alloca i32, align 4
  %it_new = alloca %struct.itimerspec64, align 8
  %it_old = alloca %struct.itimerspec64, align 8
  store i32 %seconds, ptr %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !7190, metadata !DIExpression()), !dbg !7193
  call void @llvm.lifetime.start.p0(i64 32, ptr %it_new) #17, !dbg !7194
  call void @llvm.dbg.declare(metadata ptr %it_new, metadata !7191, metadata !DIExpression()), !dbg !7195
  call void @llvm.lifetime.start.p0(i64 32, ptr %it_old) #17, !dbg !7194
  call void @llvm.dbg.declare(metadata ptr %it_old, metadata !7192, metadata !DIExpression()), !dbg !7196
  %0 = load i32, ptr %seconds.addr, align 4, !dbg !7197
  %conv = zext i32 %0 to i64, !dbg !7197
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %it_new, i32 0, i32 1, !dbg !7198
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %it_value, i32 0, i32 0, !dbg !7199
  store i64 %conv, ptr %tv_sec, align 8, !dbg !7200
  %it_value1 = getelementptr inbounds %struct.itimerspec64, ptr %it_new, i32 0, i32 1, !dbg !7201
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %it_value1, i32 0, i32 1, !dbg !7202
  store i64 0, ptr %tv_nsec, align 8, !dbg !7203
  %it_interval = getelementptr inbounds %struct.itimerspec64, ptr %it_new, i32 0, i32 0, !dbg !7204
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %it_interval, i32 0, i32 1, !dbg !7205
  store i64 0, ptr %tv_nsec2, align 8, !dbg !7206
  %it_interval3 = getelementptr inbounds %struct.itimerspec64, ptr %it_new, i32 0, i32 0, !dbg !7207
  %tv_sec4 = getelementptr inbounds %struct.timespec64, ptr %it_interval3, i32 0, i32 0, !dbg !7208
  store i64 0, ptr %tv_sec4, align 8, !dbg !7209
  %call = call i32 @do_setitimer(i32 noundef 0, ptr noundef %it_new, ptr noundef %it_old) #16, !dbg !7210
  %it_value5 = getelementptr inbounds %struct.itimerspec64, ptr %it_old, i32 0, i32 1, !dbg !7211
  %tv_sec6 = getelementptr inbounds %struct.timespec64, ptr %it_value5, i32 0, i32 0, !dbg !7213
  %1 = load i64, ptr %tv_sec6, align 8, !dbg !7213
  %tobool = icmp ne i64 %1, 0, !dbg !7214
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !7215

land.lhs.true:                                    ; preds = %entry
  %it_value7 = getelementptr inbounds %struct.itimerspec64, ptr %it_old, i32 0, i32 1, !dbg !7216
  %tv_nsec8 = getelementptr inbounds %struct.timespec64, ptr %it_value7, i32 0, i32 1, !dbg !7217
  %2 = load i64, ptr %tv_nsec8, align 8, !dbg !7217
  %tobool9 = icmp ne i64 %2, 0, !dbg !7218
  br i1 %tobool9, label %if.then, label %lor.lhs.false, !dbg !7219

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %it_value10 = getelementptr inbounds %struct.itimerspec64, ptr %it_old, i32 0, i32 1, !dbg !7220
  %tv_nsec11 = getelementptr inbounds %struct.timespec64, ptr %it_value10, i32 0, i32 1, !dbg !7221
  %3 = load i64, ptr %tv_nsec11, align 8, !dbg !7221
  %cmp = icmp sge i64 %3, 500000000, !dbg !7222
  br i1 %cmp, label %if.then, label %if.end, !dbg !7223

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %it_value13 = getelementptr inbounds %struct.itimerspec64, ptr %it_old, i32 0, i32 1, !dbg !7224
  %tv_sec14 = getelementptr inbounds %struct.timespec64, ptr %it_value13, i32 0, i32 0, !dbg !7225
  %4 = load i64, ptr %tv_sec14, align 8, !dbg !7226
  %inc = add i64 %4, 1, !dbg !7226
  store i64 %inc, ptr %tv_sec14, align 8, !dbg !7226
  br label %if.end, !dbg !7227

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %it_value15 = getelementptr inbounds %struct.itimerspec64, ptr %it_old, i32 0, i32 1, !dbg !7228
  %tv_sec16 = getelementptr inbounds %struct.timespec64, ptr %it_value15, i32 0, i32 0, !dbg !7229
  %5 = load i64, ptr %tv_sec16, align 8, !dbg !7229
  %conv17 = trunc i64 %5 to i32, !dbg !7230
  call void @llvm.lifetime.end.p0(i64 32, ptr %it_old) #17, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 32, ptr %it_new) #17, !dbg !7231
  ret i32 %conv17, !dbg !7232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setitimer(i32 noundef %which, ptr noundef %value, ptr noundef %ovalue) #3 align 16 !dbg !5945 {
entry:
  %retval = alloca i64, align 8
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %ovalue.addr = alloca ptr, align 8
  %set_buffer = alloca %struct.itimerspec64, align 8
  %get_buffer = alloca %struct.itimerspec64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  %tmp28 = alloca i64, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5949, metadata !DIExpression()), !dbg !7233
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5950, metadata !DIExpression()), !dbg !7233
  store ptr %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !5951, metadata !DIExpression()), !dbg !7233
  call void @llvm.lifetime.start.p0(i64 32, ptr %set_buffer) #17, !dbg !7234
  call void @llvm.dbg.declare(metadata ptr %set_buffer, metadata !5952, metadata !DIExpression()), !dbg !7235
  call void @llvm.lifetime.start.p0(i64 32, ptr %get_buffer) #17, !dbg !7234
  call void @llvm.dbg.declare(metadata ptr %get_buffer, metadata !5953, metadata !DIExpression()), !dbg !7236
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !7237
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5954, metadata !DIExpression()), !dbg !7238
  %0 = load ptr, ptr %value.addr, align 8, !dbg !7239
  %tobool = icmp ne ptr %0, null, !dbg !7239
  br i1 %tobool, label %if.then, label %if.else, !dbg !7240

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !dbg !7241
  %call = call i32 @get_itimerval(ptr noundef %set_buffer, ptr noundef %1) #16, !dbg !7243
  store i32 %call, ptr %error, align 4, !dbg !7244
  %2 = load i32, ptr %error, align 4, !dbg !7245
  %tobool1 = icmp ne i32 %2, 0, !dbg !7245
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !7247

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %error, align 4, !dbg !7248
  %conv = sext i32 %3 to i64, !dbg !7248
  store i64 %conv, ptr %retval, align 8, !dbg !7249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7249

if.end:                                           ; preds = %if.then
  br label %if.end36, !dbg !7250

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %set_buffer, i8 0, i64 32, i1 false), !dbg !7251
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !7252
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5955, metadata !DIExpression()), !dbg !7252
  store i8 1, ptr %__ret_do_once, align 1, !dbg !7252
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !7253
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5959, metadata !DIExpression()), !dbg !7253
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !7253, !range !6618, !noundef !481
  %tobool3 = trunc i8 %4 to i1, !dbg !7253
  %lnot = xor i1 %tobool3, true, !dbg !7253
  %lnot4 = xor i1 %lnot, true, !dbg !7253
  %frombool = zext i1 %lnot4 to i8, !dbg !7253
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !7253
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !7253
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5962, metadata !DIExpression()), !dbg !7253
  store i8 0, ptr %__ret_once, align 1, !dbg !7253
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !7254, !range !6618, !noundef !481
  %tobool5 = trunc i8 %5 to i1, !dbg !7254
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !7254

land.rhs:                                         ; preds = %if.else
  %6 = load i8, ptr @__do_sys_setitimer.__already_done, align 1, !dbg !7254, !range !6618, !noundef !481
  %tobool7 = trunc i8 %6 to i1, !dbg !7254
  %lnot8 = xor i1 %tobool7, true, !dbg !7254
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %7 = phi i1 [ false, %if.else ], [ %lnot8, %land.rhs ], !dbg !7256
  %lnot9 = xor i1 %7, true, !dbg !7254
  %lnot10 = xor i1 %lnot9, true, !dbg !7254
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !7254
  %conv11 = sext i32 %lnot.ext to i64, !dbg !7254
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !7254
  %tobool12 = icmp ne i64 %expval, 0, !dbg !7254
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !7253

if.then13:                                        ; preds = %land.end
  store i8 1, ptr @__do_sys_setitimer.__already_done, align 1, !dbg !7257
  store i8 1, ptr %__ret_once, align 1, !dbg !7257
  br label %if.end14, !dbg !7257

if.end14:                                         ; preds = %if.then13, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !7253, !range !6618, !noundef !481
  %tobool15 = trunc i8 %8 to i1, !dbg !7253
  %lnot16 = xor i1 %tobool15, true, !dbg !7253
  %lnot18 = xor i1 %lnot16, true, !dbg !7253
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !7253
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !7253
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !7253
  store i64 %expval21, ptr %tmp, align 8, !dbg !7254
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !7259
  %9 = load i64, ptr %tmp, align 8, !dbg !7253
  %tobool22 = icmp ne i64 %9, 0, !dbg !7259
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !7252

if.then23:                                        ; preds = %if.end14
  br label %do.body, !dbg !7260

do.body:                                          ; preds = %if.then23
  br label %do.cond, !dbg !7262

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7262

do.end:                                           ; preds = %do.cond
  %call25 = call ptr @get_current() #16, !dbg !7260
  %comm = getelementptr inbounds %struct.task_struct, ptr %call25, i32 0, i32 96, !dbg !7260
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !7260
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %arraydecay) #19, !dbg !7260
  store i32 %call26, ptr %tmp24, align 4, !dbg !7262
  %10 = load i32, ptr %tmp24, align 4, !dbg !7260
  br label %if.end27, !dbg !7259

if.end27:                                         ; preds = %do.end, %if.end14
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !7252, !range !6618, !noundef !481
  %tobool29 = trunc i8 %11 to i1, !dbg !7252
  %lnot30 = xor i1 %tobool29, true, !dbg !7252
  %lnot32 = xor i1 %lnot30, true, !dbg !7252
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !7252
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !7252
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !7252
  store i64 %expval35, ptr %tmp28, align 8, !dbg !7259
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !7264
  %12 = load i64, ptr %tmp28, align 8, !dbg !7252
  br label %if.end36

if.end36:                                         ; preds = %if.end27, %if.end
  %13 = load i32, ptr %which.addr, align 4, !dbg !7265
  %14 = load ptr, ptr %ovalue.addr, align 8, !dbg !7266
  %tobool37 = icmp ne ptr %14, null, !dbg !7266
  br i1 %tobool37, label %cond.true, label %cond.false, !dbg !7266

cond.true:                                        ; preds = %if.end36
  br label %cond.end, !dbg !7266

cond.false:                                       ; preds = %if.end36
  br label %cond.end, !dbg !7266

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %get_buffer, %cond.true ], [ null, %cond.false ], !dbg !7266
  %call38 = call i32 @do_setitimer(i32 noundef %13, ptr noundef %set_buffer, ptr noundef %cond) #16, !dbg !7267
  store i32 %call38, ptr %error, align 4, !dbg !7268
  %15 = load i32, ptr %error, align 4, !dbg !7269
  %tobool39 = icmp ne i32 %15, 0, !dbg !7269
  br i1 %tobool39, label %if.then41, label %lor.lhs.false, !dbg !7271

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load ptr, ptr %ovalue.addr, align 8, !dbg !7272
  %tobool40 = icmp ne ptr %16, null, !dbg !7272
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !7273

if.then41:                                        ; preds = %lor.lhs.false, %cond.end
  %17 = load i32, ptr %error, align 4, !dbg !7274
  %conv42 = sext i32 %17 to i64, !dbg !7274
  store i64 %conv42, ptr %retval, align 8, !dbg !7275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7275

if.end43:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %ovalue.addr, align 8, !dbg !7276
  %call44 = call i32 @put_itimerval(ptr noundef %18, ptr noundef %get_buffer) #16, !dbg !7278
  %tobool45 = icmp ne i32 %call44, 0, !dbg !7278
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7279

if.then46:                                        ; preds = %if.end43
  store i64 -14, ptr %retval, align 8, !dbg !7280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7280

if.end47:                                         ; preds = %if.end43
  store i64 0, ptr %retval, align 8, !dbg !7281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7281

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then41, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !7282
  call void @llvm.lifetime.end.p0(i64 32, ptr %get_buffer) #17, !dbg !7282
  call void @llvm.lifetime.end.p0(i64 32, ptr %set_buffer) #17, !dbg !7282
  %19 = load i64, ptr %retval, align 8, !dbg !7282
  ret i64 %19, !dbg !7282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_itimerval(ptr noundef %o, ptr noundef %i) #0 align 16 !dbg !7283 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %v = alloca %struct.__kernel_old_itimerval, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !7289, metadata !DIExpression()), !dbg !7292
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7290, metadata !DIExpression()), !dbg !7293
  call void @llvm.lifetime.start.p0(i64 32, ptr %v) #17, !dbg !7294
  call void @llvm.dbg.declare(metadata ptr %v, metadata !7291, metadata !DIExpression()), !dbg !7295
  %0 = load ptr, ptr %i.addr, align 8, !dbg !7296
  %call = call i64 @copy_from_user(ptr noundef %v, ptr noundef %0, i64 noundef 32) #16, !dbg !7298
  %tobool = icmp ne i64 %call, 0, !dbg !7298
  br i1 %tobool, label %if.then, label %if.end, !dbg !7299

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !7300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7300

if.end:                                           ; preds = %entry
  %it_value = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !7301
  %tv_sec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value, i32 0, i32 0, !dbg !7301
  %1 = load i64, ptr %tv_sec, align 8, !dbg !7301
  %cmp = icmp sge i64 %1, 0, !dbg !7301
  br i1 %cmp, label %land.lhs.true, label %if.then9, !dbg !7301

land.lhs.true:                                    ; preds = %if.end
  %it_value1 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !7301
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value1, i32 0, i32 1, !dbg !7301
  %2 = load i64, ptr %tv_usec, align 8, !dbg !7301
  %cmp2 = icmp ult i64 %2, 1000000, !dbg !7301
  br i1 %cmp2, label %lor.lhs.false, label %if.then9, !dbg !7303

lor.lhs.false:                                    ; preds = %land.lhs.true
  %it_interval = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !7304
  %tv_sec3 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval, i32 0, i32 0, !dbg !7304
  %3 = load i64, ptr %tv_sec3, align 8, !dbg !7304
  %cmp4 = icmp sge i64 %3, 0, !dbg !7304
  br i1 %cmp4, label %land.lhs.true5, label %if.then9, !dbg !7304

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %it_interval6 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !7304
  %tv_usec7 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval6, i32 0, i32 1, !dbg !7304
  %4 = load i64, ptr %tv_usec7, align 8, !dbg !7304
  %cmp8 = icmp ult i64 %4, 1000000, !dbg !7304
  br i1 %cmp8, label %if.end10, label %if.then9, !dbg !7305

if.then9:                                         ; preds = %land.lhs.true5, %lor.lhs.false, %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !7306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7306

if.end10:                                         ; preds = %land.lhs.true5
  %it_interval11 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !7307
  %tv_sec12 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval11, i32 0, i32 0, !dbg !7308
  %5 = load i64, ptr %tv_sec12, align 8, !dbg !7308
  %6 = load ptr, ptr %o.addr, align 8, !dbg !7309
  %it_interval13 = getelementptr inbounds %struct.itimerspec64, ptr %6, i32 0, i32 0, !dbg !7310
  %tv_sec14 = getelementptr inbounds %struct.timespec64, ptr %it_interval13, i32 0, i32 0, !dbg !7311
  store i64 %5, ptr %tv_sec14, align 8, !dbg !7312
  %it_interval15 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 0, !dbg !7313
  %tv_usec16 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_interval15, i32 0, i32 1, !dbg !7314
  %7 = load i64, ptr %tv_usec16, align 8, !dbg !7314
  %mul = mul i64 %7, 1000, !dbg !7315
  %8 = load ptr, ptr %o.addr, align 8, !dbg !7316
  %it_interval17 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 0, !dbg !7317
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %it_interval17, i32 0, i32 1, !dbg !7318
  store i64 %mul, ptr %tv_nsec, align 8, !dbg !7319
  %it_value18 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !7320
  %tv_sec19 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value18, i32 0, i32 0, !dbg !7321
  %9 = load i64, ptr %tv_sec19, align 8, !dbg !7321
  %10 = load ptr, ptr %o.addr, align 8, !dbg !7322
  %it_value20 = getelementptr inbounds %struct.itimerspec64, ptr %10, i32 0, i32 1, !dbg !7323
  %tv_sec21 = getelementptr inbounds %struct.timespec64, ptr %it_value20, i32 0, i32 0, !dbg !7324
  store i64 %9, ptr %tv_sec21, align 8, !dbg !7325
  %it_value22 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %v, i32 0, i32 1, !dbg !7326
  %tv_usec23 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %it_value22, i32 0, i32 1, !dbg !7327
  %11 = load i64, ptr %tv_usec23, align 8, !dbg !7327
  %mul24 = mul i64 %11, 1000, !dbg !7328
  %12 = load ptr, ptr %o.addr, align 8, !dbg !7329
  %it_value25 = getelementptr inbounds %struct.itimerspec64, ptr %12, i32 0, i32 1, !dbg !7330
  %tv_nsec26 = getelementptr inbounds %struct.timespec64, ptr %it_value25, i32 0, i32 1, !dbg !7331
  store i64 %mul24, ptr %tv_nsec26, align 8, !dbg !7332
  store i32 0, ptr %retval, align 4, !dbg !7333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7333

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %v) #17, !dbg !7334
  %13 = load i32, ptr %retval, align 4, !dbg !7334
  ret i32 %13, !dbg !7334
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7335 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !7339 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7341, metadata !DIExpression()), !dbg !7344
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7342, metadata !DIExpression()), !dbg !7345
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7343, metadata !DIExpression()), !dbg !7346
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7347
  %1 = load i64, ptr %n.addr, align 8, !dbg !7349
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !7350
  br i1 %call, label %if.then, label %if.end, !dbg !7351

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7352
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7353
  %4 = load i64, ptr %n.addr, align 8, !dbg !7354
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !7355
  store i64 %call1, ptr %n.addr, align 8, !dbg !7356
  br label %if.end, !dbg !7357

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7358
  ret i64 %5, !dbg !7359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7360 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_setitimer(i32 noundef %which, ptr noundef %value, ptr noundef %ovalue) #3 align 16 !dbg !5970 {
entry:
  %retval = alloca i64, align 8
  %which.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %ovalue.addr = alloca ptr, align 8
  %set_buffer = alloca %struct.itimerspec64, align 8
  %get_buffer = alloca %struct.itimerspec64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  %tmp28 = alloca i64, align 8
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5974, metadata !DIExpression()), !dbg !7361
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5975, metadata !DIExpression()), !dbg !7361
  store ptr %ovalue, ptr %ovalue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ovalue.addr, metadata !5976, metadata !DIExpression()), !dbg !7361
  call void @llvm.lifetime.start.p0(i64 32, ptr %set_buffer) #17, !dbg !7362
  call void @llvm.dbg.declare(metadata ptr %set_buffer, metadata !5977, metadata !DIExpression()), !dbg !7363
  call void @llvm.lifetime.start.p0(i64 32, ptr %get_buffer) #17, !dbg !7362
  call void @llvm.dbg.declare(metadata ptr %get_buffer, metadata !5978, metadata !DIExpression()), !dbg !7364
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !7365
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5979, metadata !DIExpression()), !dbg !7366
  %0 = load ptr, ptr %value.addr, align 8, !dbg !7367
  %tobool = icmp ne ptr %0, null, !dbg !7367
  br i1 %tobool, label %if.then, label %if.else, !dbg !7368

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !dbg !7369
  %call = call i32 @get_old_itimerval32(ptr noundef %set_buffer, ptr noundef %1) #16, !dbg !7371
  store i32 %call, ptr %error, align 4, !dbg !7372
  %2 = load i32, ptr %error, align 4, !dbg !7373
  %tobool1 = icmp ne i32 %2, 0, !dbg !7373
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !7375

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %error, align 4, !dbg !7376
  %conv = sext i32 %3 to i64, !dbg !7376
  store i64 %conv, ptr %retval, align 8, !dbg !7377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7377

if.end:                                           ; preds = %if.then
  br label %if.end36, !dbg !7378

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %set_buffer, i8 0, i64 32, i1 false), !dbg !7379
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #17, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !5980, metadata !DIExpression()), !dbg !7380
  store i8 1, ptr %__ret_do_once, align 1, !dbg !7380
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #17, !dbg !7381
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !5984, metadata !DIExpression()), !dbg !7381
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !7381, !range !6618, !noundef !481
  %tobool3 = trunc i8 %4 to i1, !dbg !7381
  %lnot = xor i1 %tobool3, true, !dbg !7381
  %lnot4 = xor i1 %lnot, true, !dbg !7381
  %frombool = zext i1 %lnot4 to i8, !dbg !7381
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !7381
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #17, !dbg !7381
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !5987, metadata !DIExpression()), !dbg !7381
  store i8 0, ptr %__ret_once, align 1, !dbg !7381
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !7382, !range !6618, !noundef !481
  %tobool5 = trunc i8 %5 to i1, !dbg !7382
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !7382

land.rhs:                                         ; preds = %if.else
  %6 = load i8, ptr @__do_compat_sys_setitimer.__already_done, align 1, !dbg !7382, !range !6618, !noundef !481
  %tobool7 = trunc i8 %6 to i1, !dbg !7382
  %lnot8 = xor i1 %tobool7, true, !dbg !7382
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %7 = phi i1 [ false, %if.else ], [ %lnot8, %land.rhs ], !dbg !7384
  %lnot9 = xor i1 %7, true, !dbg !7382
  %lnot10 = xor i1 %lnot9, true, !dbg !7382
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !7382
  %conv11 = sext i32 %lnot.ext to i64, !dbg !7382
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !7382
  %tobool12 = icmp ne i64 %expval, 0, !dbg !7382
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !7381

if.then13:                                        ; preds = %land.end
  store i8 1, ptr @__do_compat_sys_setitimer.__already_done, align 1, !dbg !7385
  store i8 1, ptr %__ret_once, align 1, !dbg !7385
  br label %if.end14, !dbg !7385

if.end14:                                         ; preds = %if.then13, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !7381, !range !6618, !noundef !481
  %tobool15 = trunc i8 %8 to i1, !dbg !7381
  %lnot16 = xor i1 %tobool15, true, !dbg !7381
  %lnot18 = xor i1 %lnot16, true, !dbg !7381
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !7381
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !7381
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !7381
  store i64 %expval21, ptr %tmp, align 8, !dbg !7382
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #17, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #17, !dbg !7387
  %9 = load i64, ptr %tmp, align 8, !dbg !7381
  %tobool22 = icmp ne i64 %9, 0, !dbg !7387
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !7380

if.then23:                                        ; preds = %if.end14
  br label %do.body, !dbg !7388

do.body:                                          ; preds = %if.then23
  br label %do.cond, !dbg !7390

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7390

do.end:                                           ; preds = %do.cond
  %call25 = call ptr @get_current() #16, !dbg !7388
  %comm = getelementptr inbounds %struct.task_struct, ptr %call25, i32 0, i32 96, !dbg !7388
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !7388
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %arraydecay) #19, !dbg !7388
  store i32 %call26, ptr %tmp24, align 4, !dbg !7390
  %10 = load i32, ptr %tmp24, align 4, !dbg !7388
  br label %if.end27, !dbg !7387

if.end27:                                         ; preds = %do.end, %if.end14
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !7380, !range !6618, !noundef !481
  %tobool29 = trunc i8 %11 to i1, !dbg !7380
  %lnot30 = xor i1 %tobool29, true, !dbg !7380
  %lnot32 = xor i1 %lnot30, true, !dbg !7380
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !7380
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !7380
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !7380
  store i64 %expval35, ptr %tmp28, align 8, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #17, !dbg !7392
  %12 = load i64, ptr %tmp28, align 8, !dbg !7380
  br label %if.end36

if.end36:                                         ; preds = %if.end27, %if.end
  %13 = load i32, ptr %which.addr, align 4, !dbg !7393
  %14 = load ptr, ptr %ovalue.addr, align 8, !dbg !7394
  %tobool37 = icmp ne ptr %14, null, !dbg !7394
  br i1 %tobool37, label %cond.true, label %cond.false, !dbg !7394

cond.true:                                        ; preds = %if.end36
  br label %cond.end, !dbg !7394

cond.false:                                       ; preds = %if.end36
  br label %cond.end, !dbg !7394

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %get_buffer, %cond.true ], [ null, %cond.false ], !dbg !7394
  %call38 = call i32 @do_setitimer(i32 noundef %13, ptr noundef %set_buffer, ptr noundef %cond) #16, !dbg !7395
  store i32 %call38, ptr %error, align 4, !dbg !7396
  %15 = load i32, ptr %error, align 4, !dbg !7397
  %tobool39 = icmp ne i32 %15, 0, !dbg !7397
  br i1 %tobool39, label %if.then41, label %lor.lhs.false, !dbg !7399

lor.lhs.false:                                    ; preds = %cond.end
  %16 = load ptr, ptr %ovalue.addr, align 8, !dbg !7400
  %tobool40 = icmp ne ptr %16, null, !dbg !7400
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !7401

if.then41:                                        ; preds = %lor.lhs.false, %cond.end
  %17 = load i32, ptr %error, align 4, !dbg !7402
  %conv42 = sext i32 %17 to i64, !dbg !7402
  store i64 %conv42, ptr %retval, align 8, !dbg !7403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7403

if.end43:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %ovalue.addr, align 8, !dbg !7404
  %call44 = call i32 @put_old_itimerval32(ptr noundef %18, ptr noundef %get_buffer) #16, !dbg !7406
  %tobool45 = icmp ne i32 %call44, 0, !dbg !7406
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7407

if.then46:                                        ; preds = %if.end43
  store i64 -14, ptr %retval, align 8, !dbg !7408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7408

if.end47:                                         ; preds = %if.end43
  store i64 0, ptr %retval, align 8, !dbg !7409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7409

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then41, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !7410
  call void @llvm.lifetime.end.p0(i64 32, ptr %get_buffer) #17, !dbg !7410
  call void @llvm.lifetime.end.p0(i64 32, ptr %set_buffer) #17, !dbg !7410
  %19 = load i64, ptr %retval, align 8, !dbg !7410
  ret i64 %19, !dbg !7410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_old_itimerval32(ptr noundef %o, ptr noundef %i) #0 align 16 !dbg !7411 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %v32 = alloca %struct.old_itimerval32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !7417, metadata !DIExpression()), !dbg !7420
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7418, metadata !DIExpression()), !dbg !7421
  call void @llvm.lifetime.start.p0(i64 16, ptr %v32) #17, !dbg !7422
  call void @llvm.dbg.declare(metadata ptr %v32, metadata !7419, metadata !DIExpression()), !dbg !7423
  %0 = load ptr, ptr %i.addr, align 8, !dbg !7424
  %call = call i64 @copy_from_user(ptr noundef %v32, ptr noundef %0, i64 noundef 16) #16, !dbg !7426
  %tobool = icmp ne i64 %call, 0, !dbg !7426
  br i1 %tobool, label %if.then, label %if.end, !dbg !7427

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !7428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7428

if.end:                                           ; preds = %entry
  %it_value = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !7429
  %tv_sec = getelementptr inbounds %struct.old_timeval32, ptr %it_value, i32 0, i32 0, !dbg !7429
  %1 = load i32, ptr %tv_sec, align 4, !dbg !7429
  %cmp = icmp sge i32 %1, 0, !dbg !7429
  br i1 %cmp, label %land.lhs.true, label %if.then13, !dbg !7429

land.lhs.true:                                    ; preds = %if.end
  %it_value1 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !7429
  %tv_usec = getelementptr inbounds %struct.old_timeval32, ptr %it_value1, i32 0, i32 1, !dbg !7429
  %2 = load i32, ptr %tv_usec, align 4, !dbg !7429
  %conv = sext i32 %2 to i64, !dbg !7429
  %cmp2 = icmp ult i64 %conv, 1000000, !dbg !7429
  br i1 %cmp2, label %lor.lhs.false, label %if.then13, !dbg !7431

lor.lhs.false:                                    ; preds = %land.lhs.true
  %it_interval = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !7432
  %tv_sec4 = getelementptr inbounds %struct.old_timeval32, ptr %it_interval, i32 0, i32 0, !dbg !7432
  %3 = load i32, ptr %tv_sec4, align 4, !dbg !7432
  %cmp5 = icmp sge i32 %3, 0, !dbg !7432
  br i1 %cmp5, label %land.lhs.true7, label %if.then13, !dbg !7432

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %it_interval8 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !7432
  %tv_usec9 = getelementptr inbounds %struct.old_timeval32, ptr %it_interval8, i32 0, i32 1, !dbg !7432
  %4 = load i32, ptr %tv_usec9, align 4, !dbg !7432
  %conv10 = sext i32 %4 to i64, !dbg !7432
  %cmp11 = icmp ult i64 %conv10, 1000000, !dbg !7432
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !7433

if.then13:                                        ; preds = %land.lhs.true7, %lor.lhs.false, %land.lhs.true, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !7434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7434

if.end14:                                         ; preds = %land.lhs.true7
  %it_interval15 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !7435
  %tv_sec16 = getelementptr inbounds %struct.old_timeval32, ptr %it_interval15, i32 0, i32 0, !dbg !7436
  %5 = load i32, ptr %tv_sec16, align 4, !dbg !7436
  %conv17 = sext i32 %5 to i64, !dbg !7437
  %6 = load ptr, ptr %o.addr, align 8, !dbg !7438
  %it_interval18 = getelementptr inbounds %struct.itimerspec64, ptr %6, i32 0, i32 0, !dbg !7439
  %tv_sec19 = getelementptr inbounds %struct.timespec64, ptr %it_interval18, i32 0, i32 0, !dbg !7440
  store i64 %conv17, ptr %tv_sec19, align 8, !dbg !7441
  %it_interval20 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 0, !dbg !7442
  %tv_usec21 = getelementptr inbounds %struct.old_timeval32, ptr %it_interval20, i32 0, i32 1, !dbg !7443
  %7 = load i32, ptr %tv_usec21, align 4, !dbg !7443
  %conv22 = sext i32 %7 to i64, !dbg !7444
  %mul = mul i64 %conv22, 1000, !dbg !7445
  %8 = load ptr, ptr %o.addr, align 8, !dbg !7446
  %it_interval23 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 0, !dbg !7447
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %it_interval23, i32 0, i32 1, !dbg !7448
  store i64 %mul, ptr %tv_nsec, align 8, !dbg !7449
  %it_value24 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !7450
  %tv_sec25 = getelementptr inbounds %struct.old_timeval32, ptr %it_value24, i32 0, i32 0, !dbg !7451
  %9 = load i32, ptr %tv_sec25, align 4, !dbg !7451
  %conv26 = sext i32 %9 to i64, !dbg !7452
  %10 = load ptr, ptr %o.addr, align 8, !dbg !7453
  %it_value27 = getelementptr inbounds %struct.itimerspec64, ptr %10, i32 0, i32 1, !dbg !7454
  %tv_sec28 = getelementptr inbounds %struct.timespec64, ptr %it_value27, i32 0, i32 0, !dbg !7455
  store i64 %conv26, ptr %tv_sec28, align 8, !dbg !7456
  %it_value29 = getelementptr inbounds %struct.old_itimerval32, ptr %v32, i32 0, i32 1, !dbg !7457
  %tv_usec30 = getelementptr inbounds %struct.old_timeval32, ptr %it_value29, i32 0, i32 1, !dbg !7458
  %11 = load i32, ptr %tv_usec30, align 4, !dbg !7458
  %conv31 = sext i32 %11 to i64, !dbg !7459
  %mul32 = mul i64 %conv31, 1000, !dbg !7460
  %12 = load ptr, ptr %o.addr, align 8, !dbg !7461
  %it_value33 = getelementptr inbounds %struct.itimerspec64, ptr %12, i32 0, i32 1, !dbg !7462
  %tv_nsec34 = getelementptr inbounds %struct.timespec64, ptr %it_value33, i32 0, i32 1, !dbg !7463
  store i64 %mul32, ptr %tv_nsec34, align 8, !dbg !7464
  store i32 0, ptr %retval, align 4, !dbg !7465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7465

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %v32) #17, !dbg !7466
  %13 = load i32, ptr %retval, align 4, !dbg !7466
  ret i32 %13, !dbg !7466
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { nounwind memory(none) }
attributes #19 = { cold noredzone }

!llvm.dbg.cu = !{!5850}
!llvm.named.register.rsp = !{!6013}
!llvm.module.flags = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020, !6021}
!llvm.ident = !{!6022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 348, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/trace/events/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc63a8e3b4592f78a32fffd4a05adfa4")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 29)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_itimer_expire405", scope: !15, file: !9, line: 348, type: !132, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "trace_itimer_expire", scope: !9, file: !9, line: 348, type: !16, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !5988)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !205}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !21, line: 59, size: 768, elements: !22)
!21 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!22 = !{!23, !34, !36, !75, !88, !89, !101, !110}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !20, file: !21, line: 61, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !25, line: 113, baseType: !26)
!25 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !25, line: 111, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !26, file: !25, line: 112, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !31, file: !30, line: 173, baseType: !18, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !20, file: !21, line: 62, baseType: !35, size: 32, offset: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !20, file: !21, line: 63, baseType: !37, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !38, line: 29, baseType: !39)
!38 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !38, line: 17, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !38, line: 18, baseType: !42, size: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !38, line: 18, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !42, file: !38, line: 19, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !46, line: 14, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !45, file: !46, line: 15, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !50, line: 44, baseType: !51)
!50 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !50, line: 14, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !50, line: 15, baseType: !54, size: 32)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !51, file: !50, line: 15, size: 32, elements: !55)
!55 = !{!56, !57, !67}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !50, line: 16, baseType: !29, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !54, file: !50, line: 24, baseType: !58, size: 16)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !50, line: 24, size: 16, elements: !59)
!59 = !{!60, !66}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !58, file: !50, line: 25, baseType: !61, size: 8)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !62, line: 17, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !64, line: 21, baseType: !65)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !58, file: !50, line: 26, baseType: !61, size: 8, offset: 8)
!67 = !DIDerivedType(tag: DW_TAG_member, scope: !54, file: !50, line: 28, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !50, line: 28, size: 32, elements: !69)
!69 = !{!70, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !68, file: !50, line: 29, baseType: !71, size: 16)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !62, line: 19, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 24, baseType: !73)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !68, file: !50, line: 30, baseType: !71, size: 16, offset: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !20, file: !21, line: 65, baseType: !76, size: 256, offset: 128)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !86)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !77, file: !30, line: 195, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !30, line: 199, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !81, file: !30, line: 199, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!86 = !{!87}
!87 = !DISubrange(count: 4)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !20, file: !21, line: 66, baseType: !77, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !20, file: !21, line: 68, baseType: !90, size: 192, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !91, line: 41, baseType: !92)
!91 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !91, line: 37, size: 192, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !92, file: !91, line: 38, baseType: !37, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !92, file: !91, line: 39, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !97)
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !30, line: 191, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !30, line: 191, baseType: !99, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !20, file: !21, line: 69, baseType: !102, size: 128, align: 64, offset: 640)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 233, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !102, file: !30, line: 234, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !105}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !20, file: !21, line: 70, baseType: !111, offset: 768)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !955)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !21, line: 54, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !112, file: !21, line: 55, baseType: !18, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !112, file: !21, line: 56, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !118, line: 26, size: 1152, elements: !119)
!118 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!119 = !{!120, !135, !136, !137, !5839, !5840, !5841, !5842, !5845, !5846, !5847, !5848, !5849}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !117, file: !118, line: 27, baseType: !121, size: 192)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !122, line: 19, size: 192, elements: !123)
!122 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!123 = !{!124, !133, !134}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !121, file: !122, line: 20, baseType: !125, size: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !126, line: 296, size: 128, elements: !127)
!126 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!127 = !{!128, !129, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !125, file: !126, line: 297, baseType: !37, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !125, file: !126, line: 299, baseType: !130, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !35)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !125, file: !126, line: 300, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !121, file: !122, line: 21, baseType: !35, size: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !121, file: !122, line: 22, baseType: !35, size: 32, offset: 160)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !117, file: !118, line: 28, baseType: !102, size: 128, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !117, file: !118, line: 29, baseType: !35, size: 32, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !117, file: !118, line: 30, baseType: !138, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !140, line: 746, size: 58368, elements: !141)
!140 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!141 = !{!142, !153, !154, !155, !156, !157, !158, !159, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !243, !254, !361, !365, !368, !399, !400, !401, !402, !413, !415, !416, !417, !418, !419, !420, !431, !432, !435, !436, !437, !438, !439, !440, !441, !442, !449, !450, !457, !458, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4987, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5030, !5036, !5037, !5038, !5039, !5040, !5042, !5045, !5052, !5057, !5060, !5063, !5066, !5098, !5296, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5334, !5335, !5336, !5345, !5353, !5354, !5355, !5356, !5357, !5362, !5363, !5364, !5367, !5368, !5371, !5374, !5377, !5385, !5388, !5389, !5475, !5476, !5477, !5478, !5479, !5485, !5486, !5487, !5488, !5489, !5490, !5493, !5507, !5508, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5551, !5552, !5558, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5570, !5648, !5650, !5651, !5652, !5653, !5654, !5655, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5672, !5673, !5674}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !139, file: !140, line: 752, baseType: !143, size: 192)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !144, line: 56, size: 192, elements: !145)
!144 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!145 = !{!146, !148, !149, !152}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !144, line: 57, baseType: !147, size: 64)
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !143, file: !144, line: 58, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !143, file: !144, line: 59, baseType: !150, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !35)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !143, file: !144, line: 61, baseType: !150, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !139, file: !140, line: 754, baseType: !35, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !139, file: !140, line: 767, baseType: !132, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !139, file: !140, line: 768, baseType: !24, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !140, line: 770, baseType: !35, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !139, file: !140, line: 771, baseType: !35, size: 32, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !139, file: !140, line: 774, baseType: !18, size: 32, offset: 416)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !139, file: !140, line: 775, baseType: !160, size: 128, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !161, line: 58, size: 128, elements: !162)
!161 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!162 = !{!163, !169, !174, !175}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !160, file: !161, line: 59, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !165, line: 60, size: 64, elements: !166)
!165 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 61, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !161, line: 60, baseType: !170, size: 32, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !161, line: 60, size: 32, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !170, file: !161, line: 61, baseType: !35, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !170, file: !161, line: 62, baseType: !29, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !160, file: !161, line: 65, baseType: !71, size: 16, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !160, file: !161, line: 65, baseType: !71, size: 16, offset: 112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !139, file: !140, line: 776, baseType: !35, size: 32, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !139, file: !140, line: 777, baseType: !147, size: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !139, file: !140, line: 778, baseType: !138, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !139, file: !140, line: 787, baseType: !18, size: 32, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !139, file: !140, line: 788, baseType: !18, size: 32, offset: 800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !139, file: !140, line: 790, baseType: !18, size: 32, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !139, file: !140, line: 792, baseType: !18, size: 32, offset: 864)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !139, file: !140, line: 793, baseType: !18, size: 32, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !139, file: !140, line: 794, baseType: !18, size: 32, offset: 928)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !139, file: !140, line: 795, baseType: !35, size: 32, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !139, file: !140, line: 797, baseType: !187, size: 2048, offset: 1024)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !140, line: 551, size: 2048, elements: !188)
!188 = !{!189, !194, !202, !206, !207, !208, !209, !210, !211, !212, !213, !217, !218, !219, !220, !222, !225, !226, !227}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !187, file: !140, line: 553, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !140, line: 411, size: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !190, file: !140, line: 412, baseType: !147, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !190, file: !140, line: 413, baseType: !150, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !187, file: !140, line: 554, baseType: !195, size: 192, align: 64, offset: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !196, line: 5, size: 192, align: 64, elements: !197)
!196 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!197 = !{!198, !199, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !195, file: !196, line: 6, baseType: !147, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !195, file: !196, line: 7, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !195, file: !196, line: 8, baseType: !200, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !187, file: !140, line: 555, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !205)
!205 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !187, file: !140, line: 556, baseType: !203, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !187, file: !140, line: 558, baseType: !96, size: 128, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !187, file: !140, line: 559, baseType: !35, size: 32, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !187, file: !140, line: 561, baseType: !203, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !187, file: !140, line: 562, baseType: !203, size: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !187, file: !140, line: 563, baseType: !203, size: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !187, file: !140, line: 564, baseType: !203, size: 64, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !187, file: !140, line: 565, baseType: !214, size: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !62, line: 22, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !64, line: 30, baseType: !216)
!216 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !187, file: !140, line: 566, baseType: !203, size: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !187, file: !140, line: 568, baseType: !203, size: 64, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !187, file: !140, line: 571, baseType: !18, size: 32, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !140, line: 572, baseType: !221, size: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !187, file: !140, line: 574, baseType: !223, size: 64, offset: 1216)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !140, line: 49, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !187, file: !140, line: 576, baseType: !223, size: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !187, file: !140, line: 578, baseType: !147, size: 64, offset: 1344)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !187, file: !140, line: 588, baseType: !228, size: 512, align: 512, offset: 1536)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !140, line: 497, size: 512, align: 512, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !228, file: !140, line: 498, baseType: !203, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !228, file: !140, line: 499, baseType: !203, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !228, file: !140, line: 500, baseType: !203, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !228, file: !140, line: 501, baseType: !150, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !228, file: !140, line: 502, baseType: !150, size: 32, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !228, file: !140, line: 503, baseType: !147, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !228, file: !140, line: 504, baseType: !147, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !228, file: !140, line: 505, baseType: !147, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !228, file: !140, line: 506, baseType: !239, size: 64, align: 64, offset: 448)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !140, line: 445, size: 64, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !239, file: !140, line: 446, baseType: !35, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !239, file: !140, line: 447, baseType: !35, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !139, file: !140, line: 798, baseType: !244, size: 384, offset: 3072)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !140, line: 592, size: 384, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !244, file: !140, line: 593, baseType: !96, size: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !244, file: !140, line: 594, baseType: !147, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !244, file: !140, line: 595, baseType: !147, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !244, file: !140, line: 596, baseType: !35, size: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !244, file: !140, line: 597, baseType: !73, size: 16, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !244, file: !140, line: 598, baseType: !73, size: 16, offset: 304)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !244, file: !140, line: 600, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !139, file: !140, line: 799, baseType: !255, size: 1792, offset: 3456)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !140, line: 610, size: 1792, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !358, !359}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !255, file: !140, line: 611, baseType: !195, size: 192, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !255, file: !140, line: 618, baseType: !203, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !255, file: !140, line: 619, baseType: !203, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !255, file: !140, line: 620, baseType: !203, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !255, file: !140, line: 621, baseType: !203, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !255, file: !140, line: 622, baseType: !203, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !255, file: !140, line: 629, baseType: !214, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !255, file: !140, line: 630, baseType: !203, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !140, line: 631, baseType: !35, size: 32, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !255, file: !140, line: 653, baseType: !35, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !255, file: !140, line: 654, baseType: !35, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !255, file: !140, line: 655, baseType: !35, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !255, file: !140, line: 656, baseType: !35, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !255, file: !140, line: 662, baseType: !271, size: 512, offset: 704)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !272, line: 118, size: 512, elements: !273)
!272 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!273 = !{!274, !282, !283, !292, !354, !355, !356, !357}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !271, file: !272, line: 119, baseType: !275, size: 256)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !276, line: 9, size: 256, elements: !277)
!276 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !276, line: 10, baseType: !195, size: 192, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !275, file: !276, line: 11, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !281, line: 29, baseType: !214)
!281 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !271, file: !272, line: 120, baseType: !280, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !271, file: !272, line: 121, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !291}
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !272, line: 65, baseType: !35, size: 32, elements: !288)
!288 = !{!289, !290}
!289 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!290 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !271, file: !272, line: 122, baseType: !293, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !272, line: 159, size: 512, align: 512, elements: !295)
!295 = !{!296, !322, !323, !327, !337, !338, !349, !353}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !294, file: !272, line: 160, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !272, line: 215, size: 4608, align: 512, elements: !299)
!299 = !{!300, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !298, file: !272, line: 216, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !46, line: 23, baseType: !45)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !298, file: !272, line: 217, baseType: !35, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !298, file: !272, line: 218, baseType: !35, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !298, file: !272, line: 219, baseType: !35, size: 32, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !298, file: !272, line: 220, baseType: !35, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !298, file: !272, line: 221, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !298, file: !272, line: 222, baseType: !35, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !298, file: !272, line: 223, baseType: !35, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !298, file: !272, line: 224, baseType: !35, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !298, file: !272, line: 226, baseType: !35, size: 32, offset: 160)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !298, file: !272, line: 227, baseType: !73, size: 16, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !298, file: !272, line: 228, baseType: !73, size: 16, offset: 208)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !298, file: !272, line: 229, baseType: !35, size: 32, offset: 224)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !298, file: !272, line: 235, baseType: !280, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !298, file: !272, line: 236, baseType: !291, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !298, file: !272, line: 237, baseType: !280, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !298, file: !272, line: 238, baseType: !291, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !298, file: !272, line: 239, baseType: !319, size: 4096, align: 512, offset: 512)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, align: 512, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !294, file: !272, line: 161, baseType: !35, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !294, file: !272, line: 162, baseType: !324, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !326, line: 96, baseType: !18)
!326 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !294, file: !272, line: 163, baseType: !328, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !329, line: 274, baseType: !330)
!329 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !329, line: 274, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !330, file: !329, line: 274, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !329, line: 69, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !329, line: 64, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !334, file: !329, line: 65, baseType: !35, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !294, file: !272, line: 164, baseType: !291, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !294, file: !272, line: 165, baseType: !339, size: 128, offset: 256)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !276, line: 14, size: 128, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !339, file: !276, line: 15, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !196, line: 26, size: 128, elements: !343)
!343 = !{!344, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !342, file: !196, line: 27, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !196, line: 12, size: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !345, file: !196, line: 13, baseType: !200, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !342, file: !196, line: 28, baseType: !200, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !294, file: !272, line: 166, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!280}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !294, file: !272, line: 167, baseType: !280, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !272, line: 123, baseType: !61, size: 8, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !271, file: !272, line: 124, baseType: !61, size: 8, offset: 456)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !271, file: !272, line: 125, baseType: !61, size: 8, offset: 464)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !271, file: !272, line: 126, baseType: !61, size: 8, offset: 472)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !255, file: !140, line: 671, baseType: !271, size: 512, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !255, file: !140, line: 679, baseType: !360, size: 64, offset: 1728)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !139, file: !140, line: 800, baseType: !362, size: 64, offset: 5248)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !140, line: 800, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !139, file: !140, line: 809, baseType: !366, size: 64, offset: 5312)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !140, line: 70, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !139, file: !140, line: 825, baseType: !369, size: 2048, align: 512, offset: 5632)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !140, line: 509, size: 2048, align: 512, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !369, file: !140, line: 511, baseType: !203, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !369, file: !140, line: 512, baseType: !203, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !369, file: !140, line: 513, baseType: !203, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !369, file: !140, line: 514, baseType: !203, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !369, file: !140, line: 515, baseType: !203, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !369, file: !140, line: 516, baseType: !203, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !369, file: !140, line: 518, baseType: !203, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !369, file: !140, line: 519, baseType: !203, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !369, file: !140, line: 520, baseType: !214, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !369, file: !140, line: 522, baseType: !203, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !369, file: !140, line: 523, baseType: !203, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !369, file: !140, line: 524, baseType: !214, size: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !369, file: !140, line: 526, baseType: !214, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !369, file: !140, line: 527, baseType: !203, size: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !369, file: !140, line: 529, baseType: !203, size: 64, offset: 896)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !369, file: !140, line: 530, baseType: !203, size: 64, offset: 960)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !369, file: !140, line: 531, baseType: !203, size: 64, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !369, file: !140, line: 532, baseType: !203, size: 64, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !369, file: !140, line: 533, baseType: !203, size: 64, offset: 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !369, file: !140, line: 535, baseType: !203, size: 64, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !369, file: !140, line: 536, baseType: !203, size: 64, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !369, file: !140, line: 537, baseType: !203, size: 64, offset: 1344)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !369, file: !140, line: 538, baseType: !203, size: 64, offset: 1408)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !369, file: !140, line: 539, baseType: !203, size: 64, offset: 1472)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !369, file: !140, line: 540, baseType: !203, size: 64, offset: 1536)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !369, file: !140, line: 541, baseType: !203, size: 64, offset: 1600)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !369, file: !140, line: 542, baseType: !203, size: 64, offset: 1664)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !369, file: !140, line: 543, baseType: !203, size: 64, offset: 1728)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !139, file: !140, line: 833, baseType: !35, size: 32, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !139, file: !140, line: 836, baseType: !35, size: 32, offset: 7712)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !139, file: !140, line: 837, baseType: !18, size: 32, offset: 7744)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !139, file: !140, line: 838, baseType: !403, size: 64, offset: 7808)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !406, line: 19, baseType: !407)
!406 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !406, line: 19, size: 64, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !407, file: !406, line: 19, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 1)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !139, file: !140, line: 839, baseType: !414, size: 64, offset: 7872)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !139, file: !140, line: 840, baseType: !405, size: 64, offset: 7936)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !139, file: !140, line: 841, baseType: !132, size: 64, offset: 8000)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !139, file: !140, line: 843, baseType: !73, size: 16, offset: 8064)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !139, file: !140, line: 845, baseType: !73, size: 16, offset: 8080)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !139, file: !140, line: 848, baseType: !18, size: 32, offset: 8096)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !139, file: !140, line: 849, baseType: !421, size: 32, offset: 8128)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !140, line: 718, size: 32, elements: !422)
!422 = !{!423, !430}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !421, file: !140, line: 724, baseType: !424, size: 32)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !140, line: 719, size: 32, elements: !425)
!425 = !{!426, !427, !428, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !424, file: !140, line: 720, baseType: !61, size: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !424, file: !140, line: 721, baseType: !61, size: 8, offset: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !424, file: !140, line: 722, baseType: !61, size: 8, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !424, file: !140, line: 723, baseType: !61, size: 8, offset: 24)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !421, file: !140, line: 725, baseType: !150, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !139, file: !140, line: 850, baseType: !96, size: 128, offset: 8192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !139, file: !140, line: 851, baseType: !433, size: 64, offset: 8320)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !140, line: 60, flags: DIFlagFwdDecl)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !139, file: !140, line: 855, baseType: !147, size: 64, offset: 8384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !139, file: !140, line: 856, baseType: !61, size: 8, offset: 8448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !139, file: !140, line: 857, baseType: !61, size: 8, offset: 8456)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !139, file: !140, line: 858, baseType: !18, size: 32, offset: 8480)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !139, file: !140, line: 859, baseType: !96, size: 128, offset: 8512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !139, file: !140, line: 860, baseType: !18, size: 32, offset: 8640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !139, file: !140, line: 861, baseType: !96, size: 128, offset: 8704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !139, file: !140, line: 873, baseType: !443, size: 256, offset: 8832)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !140, line: 376, size: 256, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !443, file: !140, line: 381, baseType: !147, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !443, file: !140, line: 384, baseType: !205, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !443, file: !140, line: 389, baseType: !205, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !443, file: !140, line: 392, baseType: !205, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !139, file: !140, line: 875, baseType: !96, size: 128, offset: 9088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !139, file: !140, line: 877, baseType: !451, size: 320, offset: 9216)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !452, line: 86, size: 320, elements: !453)
!452 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!453 = !{!454, !455, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !451, file: !452, line: 87, baseType: !18, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !451, file: !452, line: 88, baseType: !96, size: 128, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !451, file: !452, line: 89, baseType: !96, size: 128, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !139, file: !140, line: 878, baseType: !195, size: 192, align: 64, offset: 9536)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !139, file: !140, line: 881, baseType: !459, size: 64, offset: 9728)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !461, line: 733, size: 10240, elements: !462)
!461 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!462 = !{!463, !4895}
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 734, baseType: !464, size: 10240)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !461, line: 734, size: 10240, elements: !465)
!465 = !{!466, !470, !484, !4773, !4774, !4775, !4776, !4777, !4778, !4785, !4786, !4787, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4826, !4828, !4831, !4874, !4875, !4876, !4879, !4880, !4881, !4884, !4885, !4886, !4893, !4894}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !461, line: 739, baseType: !467, size: 512, align: 512)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !464, file: !461, line: 739, size: 512, align: 512, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !467, file: !461, line: 747, baseType: !29, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !464, file: !461, line: 750, baseType: !471, size: 128, offset: 512)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !472, line: 218, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!473 = !{!474, !482, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !472, line: 219, baseType: !475, size: 32)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !471, file: !472, line: 219, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !475, file: !472, line: 220, baseType: !37, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !475, file: !472, line: 221, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !472, line: 197, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 197, elements: !481)
!481 = !{}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !471, file: !472, line: 223, baseType: !35, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !471, file: !472, line: 224, baseType: !132, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !464, file: !461, line: 752, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!147, !488, !147, !147, !147, !147}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !490, line: 994, size: 1856, align: 64, elements: !491)
!490 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!491 = !{!492, !498, !499, !501, !508, !520, !523, !524, !569, !962, !971, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !490, line: 995, baseType: !493, size: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !490, line: 995, size: 128, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !493, file: !490, line: 996, baseType: !164, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !493, file: !490, line: 997, baseType: !102, size: 128, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !493, file: !490, line: 998, baseType: !35, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !489, file: !490, line: 1005, baseType: !37, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !489, file: !490, line: 1006, baseType: !500, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !35)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !489, file: !490, line: 1007, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !503, line: 13, baseType: !504)
!503 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !505, file: !30, line: 180, baseType: !214, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !489, file: !490, line: 1008, baseType: !509, size: 256, offset: 256)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !510, line: 66, size: 256, elements: !511)
!510 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!511 = !{!512, !513, !514, !519}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !509, file: !510, line: 67, baseType: !502, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !509, file: !510, line: 68, baseType: !301, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !509, file: !510, line: 70, baseType: !515, size: 32, offset: 96)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !516, line: 15, size: 32, elements: !517)
!516 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !515, file: !516, line: 20, baseType: !29, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !509, file: !510, line: 72, baseType: !96, size: 128, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !489, file: !490, line: 1009, baseType: !521, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !326, line: 88, baseType: !216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !489, file: !490, line: 1010, baseType: !35, size: 32, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !489, file: !490, line: 1011, baseType: !525, size: 256, offset: 640)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !490, line: 948, size: 256, elements: !526)
!526 = !{!527, !550, !551, !559, !567, !568}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !525, file: !490, line: 949, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !529, line: 34, baseType: !530)
!529 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 25, size: 64, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !530, file: !529, line: 26, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !534, line: 27, baseType: !535)
!534 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !534, line: 13, size: 64, elements: !536)
!536 = !{!537, !549}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !534, line: 14, baseType: !538, size: 32)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !534, line: 14, size: 32, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !538, file: !534, line: 15, baseType: !29, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !534, line: 16, baseType: !542, size: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !538, file: !534, line: 16, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !542, file: !534, line: 18, baseType: !61, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !542, file: !534, line: 19, baseType: !546, size: 24, offset: 8)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 24, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 3)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !535, file: !534, line: 26, baseType: !49, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !525, file: !490, line: 950, baseType: !19, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !525, file: !490, line: 951, baseType: !552, size: 32, offset: 128)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !21, line: 9, baseType: !35, size: 32, elements: !553)
!553 = !{!554, !555, !556, !557, !558}
!554 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!555 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!556 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!557 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!558 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !525, file: !490, line: 952, baseType: !560, size: 32, offset: 160)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !561, line: 23, baseType: !562)
!561 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 21, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !562, file: !561, line: 22, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !326, line: 49, baseType: !35)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !525, file: !490, line: 952, baseType: !560, size: 32, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !525, file: !490, line: 953, baseType: !18, size: 32, offset: 224)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !489, file: !490, line: 1012, baseType: !570, size: 64, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !573, line: 110, size: 1472, elements: !574)
!573 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!574 = !{!575, !576, !577, !584, !585, !586, !587, !588, !589, !590, !591, !597, !598, !599, !600, !601, !602, !728, !729, !730, !731, !732, !763, !946, !947, !957}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !572, file: !573, line: 111, baseType: !502, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !572, file: !573, line: 112, baseType: !560, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !572, file: !573, line: 113, baseType: !578, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !561, line: 28, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 26, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !579, file: !561, line: 27, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !326, line: 50, baseType: !35)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !572, file: !573, line: 114, baseType: !560, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !572, file: !573, line: 115, baseType: !578, size: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !572, file: !573, line: 116, baseType: !560, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !572, file: !573, line: 117, baseType: !578, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !572, file: !573, line: 118, baseType: !560, size: 32, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !572, file: !573, line: 119, baseType: !578, size: 32, offset: 288)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !572, file: !573, line: 120, baseType: !35, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !572, file: !573, line: 121, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !593, line: 24, baseType: !594)
!593 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 24, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !593, line: 24, baseType: !203, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !572, file: !573, line: 122, baseType: !592, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !572, file: !573, line: 123, baseType: !592, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !572, file: !573, line: 124, baseType: !592, size: 64, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !572, file: !573, line: 125, baseType: !592, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !572, file: !573, line: 127, baseType: !65, size: 8, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !572, file: !573, line: 129, baseType: !603, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !605, line: 195, size: 1728, elements: !606)
!605 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!606 = !{!607, !608, !613, !618, !627, !630, !631, !638, !639, !640, !641, !644, !645, !646, !648, !649, !692, !713}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !604, file: !605, line: 196, baseType: !24, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !604, file: !605, line: 197, baseType: !609, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !605, line: 28, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !62, line: 20, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !64, line: 26, baseType: !18)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 198, baseType: !614, size: 192, offset: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 198, size: 192, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !614, file: !605, line: 199, baseType: !96, size: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !614, file: !605, line: 200, baseType: !195, size: 192, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !604, file: !605, line: 205, baseType: !619, size: 320, offset: 256)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !620, line: 48, size: 320, elements: !621)
!620 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!621 = !{!622, !623, !624, !625, !626}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !619, file: !620, line: 49, baseType: !502, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !620, line: 55, baseType: !502, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !619, file: !620, line: 57, baseType: !515, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !619, file: !620, line: 59, baseType: !301, size: 32, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !619, file: !620, line: 60, baseType: !96, size: 128, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !604, file: !605, line: 206, baseType: !628, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !605, line: 206, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !604, file: !605, line: 207, baseType: !132, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 208, baseType: !632, size: 64, offset: 704)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 208, size: 64, elements: !633)
!633 = !{!634, !637}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !632, file: !605, line: 209, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !636, line: 8, baseType: !215)
!636 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !632, file: !605, line: 210, baseType: !635, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !604, file: !605, line: 212, baseType: !635, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 213, baseType: !560, size: 32, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !604, file: !605, line: 214, baseType: !578, size: 32, offset: 864)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !604, file: !605, line: 215, baseType: !642, size: 32, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !605, line: 31, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !150)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !604, file: !605, line: 216, baseType: !73, size: 16, offset: 928)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !604, file: !605, line: 217, baseType: !73, size: 16, offset: 944)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !604, file: !605, line: 221, baseType: !647, size: 16, offset: 960)
!647 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !605, line: 228, baseType: !147, size: 64, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 245, baseType: !650, size: 320, offset: 1088)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 245, size: 320, elements: !651)
!651 = !{!652, !683}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !650, file: !605, line: 246, baseType: !653, size: 320)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !605, line: 114, size: 320, elements: !654)
!654 = !{!655, !656, !668, !671, !680}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !653, file: !605, line: 116, baseType: !147, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !605, line: 117, baseType: !657, size: 64, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !605, line: 117, size: 64, elements: !658)
!658 = !{!659, !667}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !605, line: 118, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !605, line: 118, size: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !660, file: !605, line: 120, baseType: !71, size: 16)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !660, file: !605, line: 121, baseType: !664, size: 48, offset: 16)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 6)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !657, file: !605, line: 127, baseType: !147, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !605, line: 129, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !605, line: 102, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !653, file: !605, line: 130, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !605, line: 108, size: 192, elements: !674)
!674 = !{!675, !676, !677}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !673, file: !605, line: 109, baseType: !102, size: 128, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !673, file: !605, line: 110, baseType: !24, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !673, file: !605, line: 111, baseType: !678, size: 8, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !679)
!679 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !653, file: !605, line: 131, baseType: !681, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !605, line: 247, baseType: !684, size: 320)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !650, file: !605, line: 247, size: 320, elements: !685)
!685 = !{!686, !687, !688, !689, !690}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !684, file: !605, line: 248, baseType: !147, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !684, file: !605, line: 249, baseType: !147, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !605, line: 250, baseType: !669, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !684, file: !605, line: 251, baseType: !672, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !684, file: !605, line: 252, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 260, baseType: !693, size: 256, offset: 1408)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 260, size: 256, elements: !694)
!694 = !{!695, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !693, file: !605, line: 261, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !605, line: 134, size: 256, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !696, file: !605, line: 135, baseType: !132, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !696, file: !605, line: 136, baseType: !700, size: 256)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !86)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !605, line: 262, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !605, line: 262, size: 256, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !702, file: !605, line: 264, baseType: !96, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !702, file: !605, line: 265, baseType: !706, size: 128, offset: 128)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !707, line: 22, size: 128, elements: !708)
!707 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!708 = !{!709, !712}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !706, file: !707, line: 23, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !707, line: 23, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !706, file: !707, line: 24, baseType: !147, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !604, file: !605, line: 280, baseType: !714, size: 64, offset: 1664)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !605, line: 176, size: 192, elements: !716)
!716 = !{!717, !726, !727}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !715, file: !605, line: 177, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !605, line: 171, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!18, !603, !722, !724, !603}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !715, file: !605, line: 178, baseType: !603, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !715, file: !605, line: 179, baseType: !669, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !572, file: !573, line: 130, baseType: !603, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !572, file: !573, line: 131, baseType: !603, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !572, file: !573, line: 132, baseType: !603, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !572, file: !573, line: 135, baseType: !132, size: 64, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !572, file: !573, line: 137, baseType: !733, size: 64, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !735, line: 14, size: 1088, elements: !736)
!735 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!736 = !{!737, !738, !747, !748, !749, !750, !751, !752}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !734, file: !735, line: 15, baseType: !24, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !734, file: !735, line: 17, baseType: !739, size: 320, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !740, line: 22, size: 320, elements: !741)
!740 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!741 = !{!742, !743, !744, !745}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !740, line: 23, baseType: !301, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !739, file: !740, line: 24, baseType: !214, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !740, line: 26, baseType: !96, size: 128, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !739, file: !740, line: 28, baseType: !746, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !734, file: !735, line: 19, baseType: !147, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !734, file: !735, line: 20, baseType: !502, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !734, file: !735, line: 23, baseType: !81, size: 128, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !734, file: !735, line: 24, baseType: !560, size: 32, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !734, file: !735, line: 29, baseType: !502, size: 64, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !734, file: !735, line: 36, baseType: !753, size: 320, offset: 768)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !754, line: 15, size: 320, elements: !755)
!754 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!755 = !{!756, !757, !758, !759, !760, !761, !762}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !754, line: 16, baseType: !301, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !753, file: !754, line: 18, baseType: !18, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !753, file: !754, line: 19, baseType: !18, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !753, file: !754, line: 20, baseType: !18, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !753, file: !754, line: 21, baseType: !18, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !753, file: !754, line: 22, baseType: !147, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !754, line: 23, baseType: !147, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !572, file: !573, line: 138, baseType: !764, size: 64, offset: 1152)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !766, line: 68, size: 4800, elements: !767)
!766 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!767 = !{!768, !790, !791, !792, !793, !794, !795, !796, !807, !808, !809, !810, !811, !812, !824, !926, !927, !941, !944}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !765, file: !766, line: 69, baseType: !769, size: 576)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !766, line: 23, size: 576, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !769, file: !766, line: 24, baseType: !150, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !766, line: 25, baseType: !773, size: 512, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !766, line: 25, size: 512, elements: !774)
!774 = !{!775, !784}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !773, file: !766, line: 26, baseType: !776, size: 480)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 480, elements: !782)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !766, line: 17, size: 96, elements: !778)
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !777, file: !766, line: 18, baseType: !150, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !777, file: !766, line: 19, baseType: !150, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !777, file: !766, line: 20, baseType: !150, size: 32, offset: 64)
!782 = !{!783}
!783 = !DISubrange(count: 5)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !766, line: 27, baseType: !785, size: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !766, line: 27, size: 128, elements: !786)
!786 = !{!787, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !785, file: !766, line: 28, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !785, file: !766, line: 29, baseType: !788, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !765, file: !766, line: 70, baseType: !769, size: 576, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !765, file: !766, line: 71, baseType: !769, size: 576, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !765, file: !766, line: 72, baseType: !764, size: 64, offset: 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !765, file: !766, line: 73, baseType: !18, size: 32, offset: 1792)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !765, file: !766, line: 74, baseType: !560, size: 32, offset: 1824)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !765, file: !766, line: 75, baseType: !578, size: 32, offset: 1856)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !765, file: !766, line: 76, baseType: !797, size: 192, offset: 1920)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !798, line: 9, size: 192, elements: !799)
!798 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!799 = !{!800, !801, !805, !806}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !797, file: !798, line: 10, baseType: !502, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !797, file: !798, line: 11, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !798, line: 7, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !797, file: !798, line: 12, baseType: !35, size: 32, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !798, line: 13, baseType: !24, size: 32, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !766, line: 77, baseType: !147, size: 64, offset: 2112)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !765, file: !766, line: 80, baseType: !678, size: 8, offset: 2176)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !765, file: !766, line: 88, baseType: !96, size: 128, offset: 2240)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !765, file: !766, line: 89, baseType: !603, size: 64, offset: 2368)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !765, file: !766, line: 90, baseType: !619, size: 320, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !765, file: !766, line: 97, baseType: !813, size: 256, offset: 2752)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !814, line: 98, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !813, file: !814, line: 99, baseType: !502, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !813, file: !814, line: 100, baseType: !96, size: 128, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !813, file: !814, line: 101, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !814, line: 21, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !765, file: !766, line: 99, baseType: !825, size: 768, offset: 3008)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !826, line: 199, size: 768, elements: !827)
!826 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!827 = !{!828, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !825, file: !826, line: 200, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!18, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !825, file: !826, line: 201, baseType: !834, size: 704, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !826, line: 193, size: 704, elements: !835)
!835 = !{!836, !925}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !834, file: !826, line: 195, baseType: !837, size: 640)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !826, line: 173, size: 640, elements: !838)
!838 = !{!839, !882, !894, !895, !915, !916, !918, !924}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !826, line: 174, baseType: !840, size: 192)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !826, line: 174, size: 192, elements: !841)
!841 = !{!842, !881}
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !826, line: 175, baseType: !843, size: 192)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !826, line: 175, size: 192, elements: !844)
!844 = !{!845, !877, !878, !879, !880}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !843, file: !826, line: 176, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !826, line: 135, size: 512, elements: !848)
!848 = !{!849, !850, !851, !852, !854, !859, !869, !875, !876}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !847, file: !826, line: 136, baseType: !681, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !847, file: !826, line: 137, baseType: !132, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !847, file: !826, line: 138, baseType: !18, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !847, file: !826, line: 139, baseType: !853, size: 16, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !73)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !826, line: 150, baseType: !855, size: 32, offset: 192)
!855 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !847, file: !826, line: 147, baseType: !35, size: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!858 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !847, file: !826, line: 151, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !826, line: 64, baseType: !862)
!862 = !DISubroutineType(types: !863)
!863 = !{!18, !846, !18, !132, !864, !868}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !326, line: 72, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !326, line: 16, baseType: !147)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !847, file: !826, line: 152, baseType: !870, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !826, line: 117, size: 256, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !871, file: !826, line: 118, baseType: !29, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !871, file: !826, line: 119, baseType: !90, size: 192, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !847, file: !826, line: 153, baseType: !132, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !847, file: !826, line: 154, baseType: !132, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !843, file: !826, line: 177, baseType: !18, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !843, file: !826, line: 178, baseType: !18, size: 32, offset: 96)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !843, file: !826, line: 179, baseType: !18, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !843, file: !826, line: 180, baseType: !18, size: 32, offset: 160)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !840, file: !826, line: 182, baseType: !102, size: 128, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !837, file: !826, line: 184, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !885, line: 26, size: 256, elements: !886)
!885 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !884, file: !885, line: 27, baseType: !35, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !884, file: !885, line: 28, baseType: !889, size: 192, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !890, line: 43, size: 192, elements: !891)
!890 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !889, file: !890, line: 44, baseType: !301, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !889, file: !890, line: 45, baseType: !96, size: 128, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !837, file: !826, line: 185, baseType: !846, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !837, file: !826, line: 186, baseType: !896, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !826, line: 204, size: 960, elements: !898)
!898 = !{!899, !900, !904, !911}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !897, file: !826, line: 205, baseType: !825, size: 768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !897, file: !826, line: 206, baseType: !901, size: 64, offset: 768)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!832, !896}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !897, file: !826, line: 207, baseType: !905, size: 64, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !897, file: !826, line: 209, baseType: !912, size: 64, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!18, !908, !846}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !837, file: !826, line: 187, baseType: !832, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !837, file: !826, line: 188, baseType: !917, size: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !837, file: !826, line: 189, baseType: !919, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !826, line: 157, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !920, file: !826, line: 158, baseType: !195, size: 192, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !920, file: !826, line: 159, baseType: !908, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !837, file: !826, line: 190, baseType: !77, size: 64, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !834, file: !826, line: 196, baseType: !345, size: 64, offset: 640)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !765, file: !766, line: 100, baseType: !908, size: 64, offset: 3776)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !765, file: !766, line: 102, baseType: !928, size: 64, offset: 3840)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !766, line: 107, size: 1152, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !939}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !766, line: 108, baseType: !81, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !929, file: !766, line: 109, baseType: !764, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !929, file: !766, line: 110, baseType: !560, size: 32, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !929, file: !766, line: 111, baseType: !29, size: 32, offset: 224)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !929, file: !766, line: 112, baseType: !936, size: 640, offset: 256)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 640, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 10)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !929, file: !766, line: 113, baseType: !940, size: 256, offset: 896)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 256, elements: !86)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !765, file: !766, line: 103, baseType: !942, size: 640, offset: 3904)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 640, elements: !937)
!943 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !765, file: !766, line: 104, baseType: !945, size: 256, offset: 4544)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 256, elements: !86)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !572, file: !573, line: 139, baseType: !928, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !572, file: !573, line: 140, baseType: !948, size: 64, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !573, line: 25, size: 64, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !949, file: !573, line: 26, baseType: !29, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !949, file: !573, line: 27, baseType: !18, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !949, file: !573, line: 28, baseType: !954, offset: 64)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: -1)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !573, line: 142, baseType: !958, size: 128, offset: 1344)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !572, file: !573, line: 142, size: 128, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !958, file: !573, line: 143, baseType: !18, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !958, file: !573, line: 144, baseType: !102, size: 128, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !489, file: !490, line: 1013, baseType: !963, size: 256, offset: 960)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !490, line: 970, size: 256, elements: !964)
!964 = !{!965, !966, !967, !968, !969, !970}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !963, file: !490, line: 971, baseType: !147, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !963, file: !490, line: 972, baseType: !35, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !963, file: !490, line: 973, baseType: !35, size: 32, offset: 96)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !963, file: !490, line: 974, baseType: !35, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !963, file: !490, line: 975, baseType: !35, size: 32, offset: 160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !963, file: !490, line: 976, baseType: !521, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !489, file: !490, line: 1014, baseType: !972, size: 128, offset: 1216)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !973, line: 8, size: 128, elements: !974)
!973 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!974 = !{!975, !4763}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !972, file: !973, line: 9, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !978, line: 70, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!979 = !{!980, !4760, !4761, !4762}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !977, file: !978, line: 71, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !983, line: 82, size: 1536, elements: !984)
!983 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!984 = !{!985, !986, !991, !999, !1000, !1015, !4728, !4730, !4743, !4744, !4745, !4746, !4747, !4752, !4753, !4754}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !982, file: !983, line: 84, baseType: !35, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !982, file: !983, line: 85, baseType: !987, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !329, line: 275, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !329, line: 275, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !988, file: !329, line: 275, baseType: !333, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !982, file: !983, line: 86, baseType: !992, size: 128, offset: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !993, line: 38, size: 128, elements: !994)
!993 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!994 = !{!995, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !993, line: 39, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !992, file: !993, line: 39, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !982, file: !983, line: 87, baseType: !981, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !982, file: !983, line: 88, baseType: !1001, size: 128, offset: 256)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !983, line: 49, size: 128, elements: !1002)
!1002 = !{!1003, !1012}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !983, line: 50, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !983, line: 50, size: 64, elements: !1005)
!1005 = !{!1006, !1011}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !983, line: 51, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !983, line: 51, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1007, file: !983, line: 52, baseType: !150, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1007, file: !983, line: 52, baseType: !150, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1004, file: !983, line: 54, baseType: !203, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1001, file: !983, line: 56, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !982, file: !983, line: 89, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !490, line: 641, size: 4800, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1028, !1029, !1216, !4543, !4544, !4545, !4546, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4710, !4713, !4714, !4715, !4724, !4725, !4726, !4727}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1017, file: !490, line: 642, baseType: !853, size: 16)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1017, file: !490, line: 643, baseType: !73, size: 16, offset: 16)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1017, file: !490, line: 644, baseType: !560, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1017, file: !490, line: 645, baseType: !96, size: 128, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1017, file: !490, line: 646, baseType: !578, size: 32, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1017, file: !490, line: 647, baseType: !35, size: 32, offset: 224)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1017, file: !490, line: 650, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !490, line: 607, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1017, file: !490, line: 651, baseType: !1026, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1017, file: !490, line: 654, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !490, line: 1966, size: 2048, align: 512, elements: !1033)
!1033 = !{!1034, !1038, !1051, !1057, !1061, !1065, !1069, !1073, !1077, !1081, !1085, !1086, !1092, !1096, !1133, !1164, !1171, !1177, !1181, !1185, !1189, !1193, !1197, !1203, !1207}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1032, file: !490, line: 1967, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!981, !1016, !981, !35}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1032, file: !490, line: 1968, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!681, !981, !1016, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1044, line: 10, size: 128, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1045 = !{!1046, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1043, file: !1044, line: 11, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !132}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1043, file: !1044, line: 12, baseType: !132, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1032, file: !490, line: 1969, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!18, !1055, !1016, !18}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !593, line: 42, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1032, file: !490, line: 1970, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1026, !1016, !18, !678}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1032, file: !490, line: 1972, baseType: !1062, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!18, !981, !691, !18}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1032, file: !490, line: 1974, baseType: !1066, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!18, !1055, !1016, !981, !853, !678}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1032, file: !490, line: 1976, baseType: !1070, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!18, !981, !1016, !981}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1032, file: !490, line: 1977, baseType: !1074, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!18, !1016, !981}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1032, file: !490, line: 1978, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!18, !1055, !1016, !981, !681}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1032, file: !490, line: 1980, baseType: !1082, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!18, !1055, !1016, !981, !853}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1032, file: !490, line: 1982, baseType: !1074, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1032, file: !490, line: 1983, baseType: !1087, size: 64, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!18, !1055, !1016, !981, !853, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !150)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1032, file: !490, line: 1985, baseType: !1093, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!18, !1055, !1016, !981, !1016, !981, !35}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1032, file: !490, line: 1987, baseType: !1097, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!18, !1055, !981, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !490, line: 226, size: 640, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1115, !1124, !1125, !1130, !1131, !1132}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1101, file: !490, line: 227, baseType: !35, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1101, file: !490, line: 228, baseType: !853, size: 16, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !490, line: 241, baseType: !1106, size: 32, offset: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !490, line: 241, size: 32, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1106, file: !490, line: 242, baseType: !560, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1106, file: !490, line: 243, baseType: !1110, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1111, line: 16, baseType: !1112)
!1111 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 14, size: 32, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1112, file: !1111, line: 15, baseType: !565, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !490, line: 245, baseType: !1116, size: 32, offset: 96)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !490, line: 245, size: 32, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1116, file: !490, line: 246, baseType: !578, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1116, file: !490, line: 247, baseType: !1120, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1111, line: 20, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 18, size: 32, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1121, file: !1111, line: 19, baseType: !582, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1101, file: !490, line: 249, baseType: !521, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1101, file: !490, line: 250, baseType: !1126, size: 128, offset: 192)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !636, line: 13, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1126, file: !636, line: 14, baseType: !635, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1126, file: !636, line: 15, baseType: !943, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1101, file: !490, line: 251, baseType: !1126, size: 128, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1101, file: !490, line: 252, baseType: !1126, size: 128, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1101, file: !490, line: 259, baseType: !488, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1032, file: !490, line: 1988, baseType: !1134, size: 64, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!18, !1055, !1137, !1139, !150, !35}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1141, line: 22, size: 1280, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1140, file: !1141, line: 23, baseType: !150, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1140, file: !1141, line: 24, baseType: !853, size: 16, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1140, file: !1141, line: 25, baseType: !35, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1140, file: !1141, line: 26, baseType: !643, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1140, file: !1141, line: 27, baseType: !203, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1140, file: !1141, line: 28, baseType: !203, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1140, file: !1141, line: 41, baseType: !203, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1140, file: !1141, line: 42, baseType: !1090, size: 32, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1140, file: !1141, line: 43, baseType: !1090, size: 32, offset: 352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1140, file: !1141, line: 44, baseType: !560, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1140, file: !1141, line: 45, baseType: !578, size: 32, offset: 416)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 46, baseType: !521, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1140, file: !1141, line: 47, baseType: !1126, size: 128, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1140, file: !1141, line: 48, baseType: !1126, size: 128, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1140, file: !1141, line: 49, baseType: !1126, size: 128, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1140, file: !1141, line: 50, baseType: !1126, size: 128, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1140, file: !1141, line: 51, baseType: !203, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1140, file: !1141, line: 52, baseType: !203, size: 64, offset: 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1140, file: !1141, line: 53, baseType: !150, size: 32, offset: 1152)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1140, file: !1141, line: 54, baseType: !150, size: 32, offset: 1184)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1140, file: !1141, line: 55, baseType: !203, size: 64, offset: 1216)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1032, file: !490, line: 1990, baseType: !1165, size: 64, offset: 960)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1168, !981, !691, !865}
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !326, line: 73, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !326, line: 15, baseType: !943)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1032, file: !490, line: 1991, baseType: !1172, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!18, !1016, !1175, !203, !203}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !490, line: 55, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1032, file: !490, line: 1993, baseType: !1178, size: 64, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!18, !1016, !18}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1032, file: !490, line: 1994, baseType: !1182, size: 64, offset: 1152)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!18, !1016, !981, !488, !35, !853}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1032, file: !490, line: 1997, baseType: !1186, size: 64, offset: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!18, !1055, !1016, !488, !853}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1032, file: !490, line: 1999, baseType: !1190, size: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1026, !1055, !981, !18}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1032, file: !490, line: 2001, baseType: !1194, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !1055, !981, !1026, !18}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1032, file: !490, line: 2003, baseType: !1198, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!18, !1055, !981, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !490, line: 76, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1032, file: !490, line: 2005, baseType: !1204, size: 64, offset: 1472)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!18, !981, !1201}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1032, file: !490, line: 2006, baseType: !1208, size: 64, offset: 1536)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211, !1016}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !490, line: 3192, size: 192, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1212, file: !490, line: 3193, baseType: !125, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1212, file: !490, line: 3194, baseType: !150, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1017, file: !490, line: 655, baseType: !1217, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !490, line: 1190, size: 10752, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !4050, !4192, !4232, !4315, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4332, !4336, !4337, !4340, !4343, !4346, !4349, !4350, !4351, !4392, !4414, !4415, !4416, !4417, !4418, !4419, !4422, !4426, !4435, !4436, !4437, !4438, !4497, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1218, file: !490, line: 1191, baseType: !96, size: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1218, file: !490, line: 1192, baseType: !1090, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1218, file: !490, line: 1193, baseType: !65, size: 8, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1218, file: !490, line: 1194, baseType: !147, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1218, file: !490, line: 1195, baseType: !521, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1218, file: !490, line: 1196, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !490, line: 2366, size: 576, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1237, !1241, !1245, !1249, !4038, !4039, !4040, !4042, !4043, !4044, !4046, !4047, !4048, !4049}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1227, file: !490, line: 2367, baseType: !681, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1227, file: !490, line: 2368, baseType: !18, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1227, file: !490, line: 2376, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!18, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !978, line: 21, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1227, file: !490, line: 2377, baseType: !1238, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !490, line: 75, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1227, file: !490, line: 2378, baseType: !1242, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!981, !1226, !18, !681, !132}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1227, file: !490, line: 2380, baseType: !1246, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1217}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1227, file: !490, line: 2381, baseType: !1250, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1252, line: 402, size: 9216, align: 512, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1253 = !{!1254, !1261, !1262, !1266, !2162, !2188, !2189, !2190, !2191, !2195, !2198, !2199, !2200, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2268, !2272, !2292, !2312, !2313, !2314, !2315, !2324, !2347, !2348, !2351, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2365, !2366, !2465, !2473, !2474, !2475, !2477, !4016, !4017, !4026, !4027, !4028, !4029, !4031, !4032, !4033, !4034, !4035, !4036, !4037}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1251, file: !1252, line: 403, baseType: !1255, size: 32)
!1255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1252, line: 312, baseType: !35, size: 32, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1258 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1259 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1260 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1251, file: !1252, line: 406, baseType: !96, size: 128, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1251, file: !1252, line: 409, baseType: !1263, size: 448, offset: 192)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 56)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1251, file: !1252, line: 417, baseType: !1267, size: 768, offset: 640)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1252, line: 45, size: 768, elements: !1268)
!1268 = !{!1269, !2156, !2157, !2158, !2161}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1267, file: !1252, line: 46, baseType: !1270, size: 512)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1271, line: 64, size: 512, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1272 = !{!1273, !1274, !1275, !1277, !1321, !2003, !2146, !2151, !2152, !2153, !2154, !2155}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1270, file: !1271, line: 65, baseType: !681, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1270, file: !1271, line: 66, baseType: !96, size: 128, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1270, file: !1271, line: 67, baseType: !1276, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1270, file: !1271, line: 68, baseType: !1278, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1271, line: 168, size: 768, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1279, file: !1271, line: 169, baseType: !96, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1279, file: !1271, line: 170, baseType: !37, size: 32, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1279, file: !1271, line: 171, baseType: !1270, size: 512, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1279, file: !1271, line: 172, baseType: !1285, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1271, line: 133, size: 192, elements: !1288)
!1288 = !{!1289, !1296, !1301}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1287, file: !1271, line: 134, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!18, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1287, file: !1271, line: 135, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!681, !1294}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1287, file: !1271, line: 136, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!18, !1294, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1271, line: 125, size: 20736, elements: !1308)
!1308 = !{!1309, !1311, !1315, !1316, !1320}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1307, file: !1271, line: 126, baseType: !1310, size: 192)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 192, elements: !547)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1307, file: !1271, line: 127, baseType: !1312, size: 4096, offset: 192)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 4096, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1307, file: !1271, line: 128, baseType: !18, size: 32, offset: 4288)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1307, file: !1271, line: 129, baseType: !1317, size: 16384, offset: 4320)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 2048)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1307, file: !1271, line: 130, baseType: !18, size: 32, offset: 20704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1270, file: !1271, line: 69, baseType: !1322, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1271, line: 116, size: 384, elements: !1325)
!1325 = !{!1326, !1330, !1349, !1959, !1995, !1999}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1324, file: !1271, line: 117, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1276}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1324, file: !1271, line: 118, baseType: !1331, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1334, line: 254, size: 128, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1335 = !{!1336, !1345}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1333, file: !1334, line: 255, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1168, !1276, !1340, !691}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1334, line: 30, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1341, file: !1334, line: 31, baseType: !681, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1341, file: !1334, line: 32, baseType: !853, size: 16, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1333, file: !1334, line: 256, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1168, !1276, !1340, !681, !865}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1324, file: !1271, line: 119, baseType: !1350, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1334, line: 84, size: 320, elements: !1354)
!1354 = !{!1355, !1356, !1360, !1955, !1957}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1353, file: !1334, line: 85, baseType: !681, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1353, file: !1334, line: 86, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!853, !1276, !1340, !18}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1353, file: !1334, line: 88, baseType: !1361, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!853, !1276, !1364, !18}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1334, line: 175, size: 512, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1946, !1950, !1951}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1365, file: !1334, line: 176, baseType: !1341, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1365, file: !1334, line: 177, baseType: !865, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1365, file: !1334, line: 178, baseType: !132, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1365, file: !1334, line: 179, baseType: !1371, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !490, line: 472, size: 1536, align: 64, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1938, !1939, !1940, !1943, !1944, !1945}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1375, file: !490, line: 473, baseType: !1016, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1375, file: !490, line: 474, baseType: !125, size: 128, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1375, file: !490, line: 475, baseType: !619, size: 320, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1375, file: !490, line: 476, baseType: !130, size: 32, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1375, file: !490, line: 477, baseType: !29, size: 32, offset: 544)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1375, file: !490, line: 482, baseType: !342, size: 128, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1375, file: !490, line: 483, baseType: !147, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1375, file: !490, line: 484, baseType: !147, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1375, file: !490, line: 485, baseType: !1386, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !490, line: 404, size: 1280, elements: !1389)
!1389 = !{!1390, !1706, !1776, !1780, !1784, !1790, !1796, !1800, !1805, !1809, !1813, !1817, !1895, !1906, !1910, !1914, !1919, !1923, !1930, !1934}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1388, file: !490, line: 405, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!18, !1394, !1704}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !461, line: 74, size: 512, align: 128, elements: !1396)
!1396 = !{!1397, !1398, !1698, !1703}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !461, line: 75, baseType: !147, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !461, line: 83, baseType: !1399, size: 320, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !461, line: 83, size: 320, elements: !1400)
!1400 = !{!1401, !1422, !1436, !1440, !1697}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !461, line: 84, baseType: !1402, size: 320)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !461, line: 84, size: 320, elements: !1403)
!1403 = !{!1404, !1415, !1416, !1421}
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !461, line: 90, baseType: !1405, size: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !461, line: 90, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1405, file: !461, line: 91, baseType: !96, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !461, line: 94, baseType: !1409, size: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !461, line: 94, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1409, file: !461, line: 96, baseType: !132, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1409, file: !461, line: 98, baseType: !35, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1405, file: !461, line: 102, baseType: !96, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1405, file: !461, line: 103, baseType: !96, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1402, file: !461, line: 106, baseType: !1374, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !461, line: 107, baseType: !1417, size: 64, offset: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !461, line: 107, size: 64, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1417, file: !461, line: 108, baseType: !147, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1417, file: !461, line: 109, baseType: !147, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1402, file: !461, line: 117, baseType: !147, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !461, line: 119, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !461, line: 119, size: 320, elements: !1424)
!1424 = !{!1425, !1426, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1423, file: !461, line: 124, baseType: !147, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1423, file: !461, line: 125, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !461, line: 125, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1423, file: !461, line: 126, baseType: !147, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1423, file: !461, line: 127, baseType: !147, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !461, line: 128, baseType: !1432, size: 64, offset: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !461, line: 128, size: 64, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1432, file: !461, line: 133, baseType: !147, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1432, file: !461, line: 138, baseType: !502, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !461, line: 141, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !461, line: 141, size: 64, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1437, file: !461, line: 142, baseType: !147, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !461, line: 144, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !461, line: 144, size: 128, elements: !1442)
!1442 = !{!1443, !1696}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1441, file: !461, line: 146, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1446, line: 126, size: 1216, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1447 = !{!1448, !1458, !1479, !1480, !1488, !1489, !1490, !1678, !1679, !1680}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1445, file: !1446, line: 127, baseType: !1449, size: 384)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1446, line: 21, size: 384, elements: !1450)
!1450 = !{!1451, !1452, !1454, !1455, !1456, !1457}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1449, file: !1446, line: 22, baseType: !147, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1449, file: !1446, line: 23, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1449, file: !1446, line: 24, baseType: !1453, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1449, file: !1446, line: 25, baseType: !147, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1449, file: !1446, line: 26, baseType: !147, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1449, file: !1446, line: 27, baseType: !147, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1445, file: !1446, line: 128, baseType: !1459, size: 128, offset: 384)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1460, line: 105, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1459, file: !1460, line: 110, baseType: !147, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1459, file: !1460, line: 118, baseType: !1464, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1460, line: 95, size: 448, elements: !1466)
!1466 = !{!1467, !1468, !1474, !1475, !1476, !1477, !1478}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1465, file: !1460, line: 96, baseType: !502, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1465, file: !1460, line: 97, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1460, line: 60, baseType: !1471)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1465, file: !1460, line: 98, baseType: !1469, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1465, file: !1460, line: 99, baseType: !678, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1465, file: !1460, line: 100, baseType: !678, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1465, file: !1460, line: 101, baseType: !102, size: 128, align: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1465, file: !1460, line: 102, baseType: !1473, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1445, file: !1446, line: 129, baseType: !884, size: 256, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !1446, line: 130, baseType: !1481, size: 32, offset: 768)
!1481 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1446, line: 68, baseType: !35, size: 32, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1484 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1485 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1486 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1487 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !1446, line: 131, baseType: !35, size: 32, offset: 800)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1445, file: !1446, line: 132, baseType: !147, size: 64, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1445, file: !1446, line: 133, baseType: !1491, size: 64, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1446, line: 77, size: 192, elements: !1494)
!1494 = !{!1495, !1499, !1674}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1493, file: !1446, line: 83, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1394}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1493, file: !1446, line: 89, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !461, line: 1184, baseType: !35)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1506, line: 512, size: 896, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1507 = !{!1508, !1626, !1642, !1649, !1656, !1666, !1667, !1668, !1670, !1672}
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !1506, line: 513, baseType: !1509, size: 320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !1506, line: 513, size: 320, elements: !1510)
!1510 = !{!1511, !1622, !1623, !1624, !1625}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1509, file: !1506, line: 514, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !461, line: 625, size: 1344, elements: !1514)
!1514 = !{!1515, !1524, !1525, !1533, !1540, !1541, !1546, !1547, !1552, !1553, !1556, !1615, !1616, !1617, !1618, !1619, !1620}
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !461, line: 628, baseType: !1516, size: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !461, line: 628, size: 128, elements: !1517)
!1517 = !{!1518, !1523}
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !461, line: 629, baseType: !1519, size: 128)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !461, line: 629, size: 128, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1519, file: !461, line: 631, baseType: !147, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1519, file: !461, line: 632, baseType: !147, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1516, file: !461, line: 635, baseType: !102, size: 128, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1513, file: !461, line: 639, baseType: !459, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1513, file: !461, line: 640, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1527, line: 297, baseType: !1528)
!1527 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1527, line: 297, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1528, file: !1527, line: 297, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1532, line: 19, baseType: !147)
!1532 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !461, line: 646, baseType: !1534, size: 64, offset: 256)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !461, line: 646, size: 64, elements: !1535)
!1535 = !{!1536, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1534, file: !461, line: 647, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !461, line: 542, baseType: !147)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1534, file: !461, line: 648, baseType: !1538, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1513, file: !461, line: 666, baseType: !18, size: 32, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1513, file: !461, line: 667, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !461, line: 579, size: 320, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1543, file: !461, line: 580, baseType: !619, size: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1513, file: !461, line: 670, baseType: !678, size: 8, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1513, file: !461, line: 681, baseType: !1548, size: 256, offset: 512)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !461, line: 678, size: 256, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1548, file: !461, line: 679, baseType: !195, size: 192, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1548, file: !461, line: 680, baseType: !147, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1513, file: !461, line: 689, baseType: !96, size: 128, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1513, file: !461, line: 691, baseType: !1554, size: 64, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !461, line: 691, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1513, file: !461, line: 694, baseType: !1557, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1506, line: 563, size: 1024, elements: !1560)
!1560 = !{!1561, !1565, !1566, !1570, !1574, !1578, !1579, !1583, !1587, !1591, !1592, !1593, !1597, !1601, !1607, !1611}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1559, file: !1506, line: 564, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1512}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1559, file: !1506, line: 569, baseType: !1562, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1559, file: !1506, line: 571, baseType: !1567, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!18, !1512, !147}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1559, file: !1506, line: 572, baseType: !1571, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!18, !1512}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1559, file: !1506, line: 578, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!18, !1512, !147, !147, !147}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1559, file: !1506, line: 580, baseType: !1500, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1559, file: !1506, line: 581, baseType: !1580, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1503, !1504, !35}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1559, file: !1506, line: 582, baseType: !1584, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1503, !1504, !147, !147}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1559, file: !1506, line: 584, baseType: !1588, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!147, !1512}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1559, file: !1506, line: 588, baseType: !1500, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1559, file: !1506, line: 591, baseType: !1500, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1559, file: !1506, line: 597, baseType: !1594, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!18, !1512, !147, !132, !18, !18}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1559, file: !1506, line: 603, baseType: !1598, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!681, !1512}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1559, file: !1506, line: 613, baseType: !1602, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!18, !1512, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !461, line: 717, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1559, file: !1506, line: 625, baseType: !1608, size: 64, offset: 896)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1605, !1512, !147}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1559, file: !1506, line: 633, baseType: !1612, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1394, !1512, !147}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1513, file: !461, line: 697, baseType: !147, size: 64, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1513, file: !461, line: 699, baseType: !488, size: 64, offset: 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1513, file: !461, line: 700, baseType: !132, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1513, file: !461, line: 711, baseType: !502, size: 64, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1513, file: !461, line: 717, baseType: !1605, size: 64, offset: 1280)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1513, file: !461, line: 722, baseType: !1621, offset: 1344)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !461, line: 570, elements: !481)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1509, file: !1506, line: 515, baseType: !130, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1509, file: !1506, line: 516, baseType: !147, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1509, file: !1506, line: 517, baseType: !147, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1509, file: !1506, line: 518, baseType: !147, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !1506, line: 520, baseType: !1627, size: 32, offset: 320)
!1627 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !461, line: 1325, baseType: !35, size: 32, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1629 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1630 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1631 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1632 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1633 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1634 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1635 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1636 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1637 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1638 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1639 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1640 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1641 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1505, file: !1506, line: 522, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1532, line: 22, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 22, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1645, file: !1532, line: 22, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1532, line: 15, baseType: !147)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1505, file: !1506, line: 524, baseType: !1650, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1527, line: 372, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 372, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1652, file: !1527, line: 372, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1532, line: 16, baseType: !147)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !1506, line: 527, baseType: !1657, size: 64, offset: 512)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1505, file: !1506, line: 527, size: 64, elements: !1658)
!1658 = !{!1659, !1665}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1657, file: !1506, line: 528, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1532, line: 21, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1532, line: 21, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1661, file: !1532, line: 21, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1532, line: 14, baseType: !147)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1657, file: !1506, line: 529, baseType: !1644, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1505, file: !1506, line: 534, baseType: !1394, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1505, file: !1506, line: 535, baseType: !1394, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1505, file: !1506, line: 541, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1505, file: !1506, line: 545, baseType: !1671, size: 64, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1505, file: !1506, line: 549, baseType: !1673, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1527, line: 520, baseType: !1394)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1493, file: !1446, line: 100, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!18, !1444, !147, !147, !18}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1445, file: !1446, line: 134, baseType: !132, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1445, file: !1446, line: 135, baseType: !18, size: 32, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 136, baseType: !1681, size: 128, offset: 1088)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 136, size: 128, elements: !1682)
!1682 = !{!1683, !1689}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1681, file: !1446, line: 137, baseType: !1684, size: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1685, line: 6, size: 128, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1684, file: !1685, line: 7, baseType: !203, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1684, file: !1685, line: 8, baseType: !203, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !1446, line: 138, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !1446, line: 138, elements: !1691)
!1691 = !{!1692, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1690, file: !1446, line: 138, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1446, line: 138, elements: !481)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1690, file: !1446, line: 138, baseType: !1695)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1684, elements: !955)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1441, file: !461, line: 147, baseType: !132, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1399, file: !461, line: 161, baseType: !102, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !461, line: 164, baseType: !1699, size: 32, offset: 384)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !461, line: 164, size: 32, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1699, file: !461, line: 169, baseType: !29, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1699, file: !461, line: 177, baseType: !35, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1395, file: !461, line: 181, baseType: !29, size: 32, offset: 416)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !490, line: 309, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1388, file: !490, line: 406, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!18, !488, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !461, line: 293, size: 1536, elements: !1712)
!1712 = !{!1713, !1743, !1757}
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !461, line: 295, baseType: !1714, size: 512)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !461, line: 295, size: 512, elements: !1715)
!1715 = !{!1716, !1742}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !461, line: 296, baseType: !1717, size: 448)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !461, line: 296, size: 448, elements: !1718)
!1718 = !{!1719, !1720, !1729, !1730, !1731, !1740, !1741}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1717, file: !461, line: 298, baseType: !147, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !461, line: 299, baseType: !1721, size: 128, offset: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !461, line: 299, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1721, file: !461, line: 300, baseType: !96, size: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !461, line: 302, baseType: !1725, size: 128)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !461, line: 302, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1725, file: !461, line: 303, baseType: !132, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1725, file: !461, line: 305, baseType: !35, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1717, file: !461, line: 310, baseType: !1374, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1717, file: !461, line: 311, baseType: !147, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !461, line: 312, baseType: !1732, size: 64, offset: 320)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !461, line: 312, size: 64, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1732, file: !461, line: 313, baseType: !132, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1732, file: !461, line: 314, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !461, line: 257, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 255, size: 64, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1737, file: !461, line: 256, baseType: !147, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1717, file: !461, line: 316, baseType: !29, size: 32, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1717, file: !461, line: 317, baseType: !29, size: 32, offset: 416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1714, file: !461, line: 323, baseType: !1395, size: 512, align: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !461, line: 325, baseType: !1744, size: 512, offset: 512)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !461, line: 325, size: 512, elements: !1745)
!1745 = !{!1746, !1756}
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !461, line: 326, baseType: !1747, size: 320)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1744, file: !461, line: 326, size: 320, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1747, file: !461, line: 327, baseType: !147, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1747, file: !461, line: 328, baseType: !147, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1747, file: !461, line: 329, baseType: !147, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1747, file: !461, line: 331, baseType: !29, size: 32, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1747, file: !461, line: 332, baseType: !29, size: 32, offset: 224)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1747, file: !461, line: 333, baseType: !29, size: 32, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1747, file: !461, line: 335, baseType: !35, size: 32, offset: 288)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1744, file: !461, line: 339, baseType: !1395, size: 512, align: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !461, line: 341, baseType: !1758, size: 512, offset: 1024)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !461, line: 341, size: 512, elements: !1759)
!1759 = !{!1760, !1769, !1775}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !461, line: 342, baseType: !1761, size: 384)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !461, line: 342, size: 384, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1761, file: !461, line: 343, baseType: !147, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1761, file: !461, line: 344, baseType: !147, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1761, file: !461, line: 346, baseType: !132, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1761, file: !461, line: 347, baseType: !132, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1761, file: !461, line: 348, baseType: !132, size: 64, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1761, file: !461, line: 349, baseType: !132, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !461, line: 352, baseType: !1770, size: 256)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !461, line: 352, size: 256, elements: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1770, file: !461, line: 353, baseType: !147, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1770, file: !461, line: 354, baseType: !147, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1770, file: !461, line: 356, baseType: !96, size: 128, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1758, file: !461, line: 359, baseType: !1395, size: 512, align: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1388, file: !490, line: 409, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!18, !1374, !1704}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1388, file: !490, line: 412, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!678, !1374, !1710}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1388, file: !490, line: 414, baseType: !1785, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !490, line: 310, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1388, file: !490, line: 416, baseType: !1791, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!18, !488, !1374, !521, !35, !1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1388, file: !490, line: 419, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!18, !488, !1374, !521, !35, !35, !1394, !132}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1388, file: !490, line: 424, baseType: !1801, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1804, !1374, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !203)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1388, file: !490, line: 425, baseType: !1806, size: 64, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !1710, !865, !865}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1388, file: !490, line: 426, baseType: !1810, size: 64, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!678, !1710, !130}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1388, file: !490, line: 427, baseType: !1814, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1710}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1388, file: !490, line: 428, baseType: !1818, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1168, !1821, !1843}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !490, line: 373, size: 384, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1830, !1831, !1832, !1833}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1822, file: !490, line: 374, baseType: !488, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1822, file: !490, line: 375, baseType: !521, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1822, file: !490, line: 376, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1821, !943}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1822, file: !490, line: 377, baseType: !132, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1822, file: !490, line: 378, baseType: !18, size: 32, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1822, file: !490, line: 379, baseType: !71, size: 16, offset: 288)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !490, line: 380, baseType: !1834, size: 64, offset: 320)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !490, line: 380, size: 64, elements: !1835)
!1835 = !{!1836, !1839}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1834, file: !490, line: 386, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !490, line: 386, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1834, file: !490, line: 395, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1168, !132}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1845, line: 41, size: 320, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1857, !1890}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1844, file: !1845, line: 42, baseType: !61, size: 8)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1844, file: !1845, line: 43, baseType: !678, size: 8, offset: 8)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1844, file: !1845, line: 44, baseType: !678, size: 8, offset: 16)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1844, file: !1845, line: 45, baseType: !678, size: 8, offset: 24)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1844, file: !1845, line: 46, baseType: !678, size: 8, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 47, baseType: !1853, size: 64, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 47, size: 64, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1853, file: !1845, line: 48, baseType: !865, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1853, file: !1845, line: 49, baseType: !18, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 61, baseType: !1858, size: 128, offset: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 61, size: 128, elements: !1859)
!1859 = !{!1860, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1858, file: !1845, line: 67, baseType: !1861, size: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1862, line: 17, size: 128, elements: !1863)
!1862 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1861, file: !1862, line: 19, baseType: !132, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1861, file: !1862, line: 20, baseType: !866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1845, line: 68, baseType: !1867, size: 128)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1845, line: 68, size: 128, elements: !1868)
!1868 = !{!1869, !1889}
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1845, line: 69, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !1845, line: 69, size: 64, elements: !1871)
!1871 = !{!1872, !1875, !1882, !1886, !1888}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1870, file: !1845, line: 71, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1870, file: !1845, line: 72, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1845, line: 17, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1878, file: !1845, line: 18, baseType: !132, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1878, file: !1845, line: 19, baseType: !865, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1870, file: !1845, line: 73, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1845, line: 73, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1870, file: !1845, line: 74, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1870, file: !1845, line: 75, baseType: !132, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1867, file: !1845, line: 77, baseType: !865, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1845, line: 80, baseType: !1891, size: 64, offset: 256)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1845, line: 80, size: 64, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1891, file: !1845, line: 81, baseType: !147, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1891, file: !1845, line: 82, baseType: !521, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1388, file: !490, line: 433, baseType: !1896, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!18, !1374, !1710, !1710, !1899}
!1899 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1900, line: 15, baseType: !35, size: 32, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1901 = !{!1902, !1903, !1904, !1905}
!1902 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1903 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1904 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1905 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1388, file: !490, line: 435, baseType: !1907, size: 64, offset: 832)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!18, !1710}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1388, file: !490, line: 436, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!678, !1710, !865, !865}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1388, file: !490, line: 438, baseType: !1915, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1710, !1918, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1388, file: !490, line: 439, baseType: !1920, size: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!18, !1374, !1394}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1388, file: !490, line: 442, baseType: !1924, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!18, !1927, !488, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !490, line: 66, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1388, file: !490, line: 444, baseType: !1931, size: 64, offset: 1152)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !488}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1388, file: !490, line: 445, baseType: !1935, size: 64, offset: 1216)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!18, !1821, !1843}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !490, line: 486, baseType: !147, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1375, file: !490, line: 487, baseType: !619, size: 320, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1375, file: !490, line: 488, baseType: !1941, size: 32, offset: 1280)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1942, line: 8, baseType: !150)
!1942 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1375, file: !490, line: 489, baseType: !37, size: 32, offset: 1312)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1375, file: !490, line: 490, baseType: !96, size: 128, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1375, file: !490, line: 491, baseType: !132, size: 64, offset: 1472)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1365, file: !1334, line: 180, baseType: !1947, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1168, !488, !1276, !1364, !691, !521, !865}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1365, file: !1334, line: 182, baseType: !1947, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1365, file: !1334, line: 184, baseType: !1952, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!18, !488, !1276, !1364, !1512}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1353, file: !1334, line: 90, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1353, file: !1334, line: 91, baseType: !1958, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1324, file: !1271, line: 120, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1963, !1294}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1966, line: 39, size: 384, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1967 = !{!1968, !1974, !1978, !1982, !1990, !1994}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1965, file: !1966, line: 40, baseType: !1969, size: 32)
!1969 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1966, line: 26, baseType: !35, size: 32, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1972 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1973 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1965, file: !1966, line: 41, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!678}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1965, file: !1966, line: 42, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!132}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1965, file: !1966, line: 43, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1966, line: 19, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1965, file: !1966, line: 44, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1986}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1965, file: !1966, line: 45, baseType: !1047, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1324, file: !1271, line: 121, baseType: !1996, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1986, !1294}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1324, file: !1271, line: 122, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1294, !909, !910}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1270, file: !1271, line: 70, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2006, line: 190, size: 1152, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2138, !2139, !2140, !2141, !2142, !2145}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2005, file: !2006, line: 191, baseType: !29, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2005, file: !2006, line: 192, baseType: !29, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2005, file: !2006, line: 202, baseType: !2004, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2005, file: !2006, line: 203, baseType: !681, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2005, file: !2006, line: 205, baseType: !195, size: 192, align: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2005, file: !2006, line: 207, baseType: !1986, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2005, file: !2006, line: 208, baseType: !35, size: 32, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2005, file: !2006, line: 209, baseType: !2016, size: 256, offset: 512)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2005, file: !2006, line: 209, size: 256, elements: !2017)
!2017 = !{!2018, !2027, !2031}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2016, file: !2006, line: 210, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2006, line: 153, size: 256, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2019, file: !2006, line: 154, baseType: !147, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2019, file: !2006, line: 156, baseType: !345, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2019, file: !2006, line: 162, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2006, line: 162, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2019, file: !2006, line: 167, baseType: !147, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2016, file: !2006, line: 211, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2006, line: 170, size: 64, elements: !2029)
!2029 = !{!2030}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2028, file: !2006, line: 171, baseType: !2004, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2016, file: !2006, line: 212, baseType: !2032, size: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2006, line: 174, size: 256, elements: !2033)
!2033 = !{!2034, !2133, !2136, !2137}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2032, file: !2006, line: 175, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2006, line: 271, size: 768, elements: !2038)
!2038 = !{!2039, !2097, !2101, !2102, !2103, !2104, !2105, !2109, !2110, !2111, !2112, !2129}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2037, file: !2006, line: 276, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!18, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2006, line: 251, size: 1216, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2044, file: !2006, line: 253, baseType: !2004, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2044, file: !2006, line: 254, baseType: !488, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2044, file: !2006, line: 255, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2051, line: 17, size: 960, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2082, !2083, !2086}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2050, file: !2051, line: 18, baseType: !691, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2050, file: !2051, line: 19, baseType: !865, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2050, file: !2051, line: 20, baseType: !865, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2050, file: !2051, line: 21, baseType: !865, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2050, file: !2051, line: 22, baseType: !865, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2050, file: !2051, line: 23, baseType: !521, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2050, file: !2051, line: 24, baseType: !521, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2050, file: !2051, line: 25, baseType: !509, size: 256, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2050, file: !2051, line: 26, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2051, line: 32, size: 256, elements: !2065)
!2065 = !{!2066, !2070, !2074, !2078}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2064, file: !2051, line: 33, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!132, !2049, !868}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2064, file: !2051, line: 34, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !2049, !132}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2064, file: !2051, line: 35, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!132, !2049, !132, !868}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2064, file: !2051, line: 36, baseType: !2079, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!18, !2049, !132}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2050, file: !2051, line: 27, baseType: !18, size: 32, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2050, file: !2051, line: 28, baseType: !2084, size: 64, offset: 832)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2050, file: !2051, line: 29, baseType: !132, size: 64, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2044, file: !2006, line: 256, baseType: !132, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2044, file: !2006, line: 259, baseType: !509, size: 256, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2044, file: !2006, line: 260, baseType: !509, size: 256, offset: 512)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2044, file: !2006, line: 261, baseType: !18, size: 32, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2044, file: !2006, line: 262, baseType: !96, size: 128, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2044, file: !2006, line: 263, baseType: !691, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2044, file: !2006, line: 265, baseType: !865, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2044, file: !2006, line: 266, baseType: !678, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2044, file: !2006, line: 267, baseType: !678, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2044, file: !2006, line: 268, baseType: !1557, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2037, file: !2006, line: 277, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2043}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2037, file: !2006, line: 290, baseType: !2079, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2037, file: !2006, line: 292, baseType: !2067, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2037, file: !2006, line: 293, baseType: !2075, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2037, file: !2006, line: 294, baseType: !2071, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2037, file: !2006, line: 296, baseType: !2106, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!1168, !2043, !691, !865, !521}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2037, file: !2006, line: 306, baseType: !865, size: 64, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2037, file: !2006, line: 313, baseType: !678, size: 8, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2037, file: !2006, line: 314, baseType: !2106, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2037, file: !2006, line: 317, baseType: !2113, size: 64, offset: 640)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2116, !2043, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2117, line: 59, baseType: !35)
!2117 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2120, line: 37, size: 128, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2121 = !{!2122, !2128}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2119, file: !2120, line: 38, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2120, line: 31, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !488, !2127, !2118}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2119, file: !2120, line: 39, baseType: !2116, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2037, file: !2006, line: 320, baseType: !2130, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!18, !2043, !1512}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2032, file: !2006, line: 176, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2006, line: 35, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2032, file: !2006, line: 177, baseType: !521, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2032, file: !2006, line: 178, baseType: !2004, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2005, file: !2006, line: 215, baseType: !132, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2005, file: !2006, line: 221, baseType: !203, size: 64, offset: 832)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !2006, line: 223, baseType: !73, size: 16, offset: 896)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2005, file: !2006, line: 224, baseType: !853, size: 16, offset: 912)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2005, file: !2006, line: 225, baseType: !2143, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2006, line: 36, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2005, file: !2006, line: 227, baseType: !102, size: 128, align: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1270, file: !1271, line: 71, baseType: !2147, size: 32, offset: 448)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2148, line: 19, size: 32, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2147, file: !2148, line: 20, baseType: !24, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1270, file: !1271, line: 73, baseType: !35, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1270, file: !1271, line: 74, baseType: !35, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1270, file: !1271, line: 75, baseType: !35, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1270, file: !1271, line: 76, baseType: !35, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1270, file: !1271, line: 77, baseType: !35, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1267, file: !1252, line: 47, baseType: !1250, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1267, file: !1252, line: 48, baseType: !1276, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1267, file: !1252, line: 49, baseType: !2159, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1252, line: 49, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1267, file: !1252, line: 50, baseType: !883, size: 64, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1251, file: !1252, line: 418, baseType: !2163, size: 64, offset: 1408)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1252, line: 53, size: 448, elements: !2165)
!2165 = !{!2166, !2167, !2172, !2176, !2180, !2184}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2164, file: !1252, line: 54, baseType: !1341, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2164, file: !1252, line: 55, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!1168, !2163, !2171, !691}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2164, file: !1252, line: 57, baseType: !2173, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!1168, !2163, !2171, !681, !865}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2164, file: !1252, line: 59, baseType: !2177, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !1250, !681}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2164, file: !1252, line: 60, baseType: !2181, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!18, !1250}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2164, file: !1252, line: 61, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1250}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1251, file: !1252, line: 419, baseType: !681, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1251, file: !1252, line: 420, baseType: !681, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1251, file: !1252, line: 421, baseType: !1276, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1251, file: !1252, line: 424, baseType: !2192, size: 64, offset: 1664)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1252, line: 424, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1251, file: !1252, line: 425, baseType: !2196, size: 64, offset: 1728)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1251, file: !1252, line: 426, baseType: !35, size: 32, offset: 1792)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1251, file: !1252, line: 435, baseType: !509, size: 256, offset: 1856)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1251, file: !1252, line: 437, baseType: !2201, size: 64, offset: 2112)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2203, line: 69, size: 320, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2204 = !{!2205, !2206, !2207, !2224, !2226, !2230, !2231}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2202, file: !2203, line: 70, baseType: !681, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2202, file: !2203, line: 71, baseType: !1250, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2202, file: !2203, line: 72, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2203, line: 47, size: 256, elements: !2211)
!2211 = !{!2212, !2213, !2219, !2223}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2203, line: 49, baseType: !35, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2210, file: !2203, line: 51, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!18, !681, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2210, file: !2203, line: 53, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!18, !691, !2217}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2210, file: !2203, line: 55, baseType: !1047, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2202, file: !2203, line: 73, baseType: !2225, size: 16, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2202, file: !2203, line: 74, baseType: !2227, size: 8, offset: 208)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !62, line: 16, baseType: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !64, line: 20, baseType: !2229)
!2229 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !2203, line: 75, baseType: !61, size: 8, offset: 216)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2203, line: 76, baseType: !2232, size: 64, offset: 256)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2203, line: 76, size: 64, elements: !2233)
!2233 = !{!2234, !2235, !2242}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2232, file: !2203, line: 77, baseType: !132, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2232, file: !2203, line: 78, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2203, line: 86, size: 128, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2238, file: !2203, line: 87, baseType: !35, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2238, file: !2203, line: 88, baseType: !691, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2232, file: !2203, line: 79, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2203, line: 92, size: 256, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2251, !2252}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2245, file: !2203, line: 94, baseType: !35, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2245, file: !2203, line: 95, baseType: !35, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2245, file: !2203, line: 96, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2245, file: !2203, line: 97, baseType: !2208, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2245, file: !2203, line: 98, baseType: !132, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1251, file: !1252, line: 438, baseType: !35, size: 32, offset: 2176)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1251, file: !1252, line: 441, baseType: !35, size: 32, offset: 2208)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1251, file: !1252, line: 442, baseType: !2192, size: 64, offset: 2240)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1251, file: !1252, line: 443, baseType: !2196, size: 64, offset: 2304)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1251, file: !1252, line: 444, baseType: !678, size: 8, offset: 2368)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1251, file: !1252, line: 451, baseType: !678, size: 8, offset: 2376)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1251, file: !1252, line: 454, baseType: !35, size: 32, offset: 2400)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1251, file: !1252, line: 455, baseType: !2261, size: 64, offset: 2432)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2263, line: 23, size: 96, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2262, file: !2263, line: 24, baseType: !18, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2262, file: !2263, line: 24, baseType: !18, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2262, file: !2263, line: 24, baseType: !18, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1251, file: !1252, line: 458, baseType: !2269, size: 64, offset: 2496)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!18}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1251, file: !1252, line: 460, baseType: !2273, size: 4032, align: 512, offset: 2560)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, size: 4032, elements: !2290)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1252, line: 362, size: 576, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2274, file: !1252, line: 363, baseType: !132, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2274, file: !1252, line: 364, baseType: !35, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2274, file: !1252, line: 367, baseType: !2279, size: 448, offset: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1252, line: 319, size: 448, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2279, file: !1252, line: 320, baseType: !1250, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2279, file: !1252, line: 321, baseType: !2283, size: 384, offset: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2284, line: 40, size: 384, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2283, file: !2284, line: 41, baseType: !2287, size: 384, align: 64)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 384, align: 64, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 2)
!2290 = !{!2291}
!2291 = !DISubrange(count: 7)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1251, file: !1252, line: 463, baseType: !2293, size: 192, offset: 6592)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2294, line: 8, size: 192, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2295 = !{!2296, !2297, !2299}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2293, file: !2294, line: 10, baseType: !35, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2293, file: !2294, line: 11, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2293, file: !2294, line: 12, baseType: !2300, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2302, line: 59, size: 48, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2303 = !{!2304, !2307, !2308, !2309, !2310, !2311}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2301, file: !2302, line: 60, baseType: !2305, size: 16)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !62, line: 18, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !64, line: 23, baseType: !647)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2301, file: !2302, line: 61, baseType: !2305, size: 16, offset: 16)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2301, file: !2302, line: 63, baseType: !35, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2301, file: !2302, line: 64, baseType: !35, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2301, file: !2302, line: 65, baseType: !35, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2301, file: !2302, line: 66, baseType: !35, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1251, file: !1252, line: 465, baseType: !147, size: 64, offset: 6784)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1251, file: !1252, line: 469, baseType: !35, size: 32, offset: 6848)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1251, file: !1252, line: 470, baseType: !96, size: 128, offset: 6912)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1251, file: !1252, line: 471, baseType: !2316, size: 64, offset: 7040)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2318, line: 33, size: 96, elements: !2319)
!2318 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2317, file: !2318, line: 37, baseType: !18, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2317, file: !2318, line: 43, baseType: !18, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2317, file: !2318, line: 45, baseType: !73, size: 16, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !2318, line: 47, baseType: !73, size: 16, offset: 80)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1251, file: !1252, line: 476, baseType: !2325, size: 64, offset: 7104)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1252, line: 378, size: 256, elements: !2327)
!2327 = !{!2328, !2344, !2345, !2346}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2326, file: !1252, line: 379, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2331, line: 204, baseType: !2332)
!2331 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2331, line: 197, size: 192, elements: !2333)
!2333 = !{!2334, !2336, !2337, !2338, !2340, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2332, file: !2331, line: 198, baseType: !2335, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2331, line: 21, baseType: !151)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2332, file: !2331, line: 199, baseType: !65, size: 8, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2332, file: !2331, line: 200, baseType: !65, size: 8, offset: 40)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2332, file: !2331, line: 201, baseType: !2339, size: 16, offset: 48)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2331, line: 17, baseType: !72)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2332, file: !2331, line: 202, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2331, line: 16, baseType: !204)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2332, file: !2331, line: 203, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2331, line: 22, baseType: !204)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2326, file: !1252, line: 380, baseType: !35, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2326, file: !1252, line: 381, baseType: !691, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2326, file: !1252, line: 382, baseType: !691, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1251, file: !1252, line: 477, baseType: !2326, size: 256, offset: 7168)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1251, file: !1252, line: 480, baseType: !2349, size: 64, offset: 7424)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1252, line: 480, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1251, file: !1252, line: 483, baseType: !2352, size: 64, offset: 7488)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1252, line: 483, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1251, file: !1252, line: 488, baseType: !691, size: 64, offset: 7552)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1251, file: !1252, line: 492, baseType: !132, size: 64, offset: 7616)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1251, file: !1252, line: 493, baseType: !35, size: 32, offset: 7680)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1251, file: !1252, line: 495, baseType: !132, size: 64, offset: 7744)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1251, file: !1252, line: 496, baseType: !35, size: 32, offset: 7808)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1251, file: !1252, line: 499, baseType: !35, size: 32, offset: 7840)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1251, file: !1252, line: 500, baseType: !2361, size: 64, offset: 7872)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2363, line: 45, baseType: !2364)
!2363 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1251, file: !1252, line: 503, baseType: !35, size: 32, offset: 7936)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1251, file: !1252, line: 504, baseType: !2367, size: 64, offset: 8000)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2370, line: 96, size: 192, elements: !2371)
!2370 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2371 = !{!2372, !2373, !2426, !2429}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2369, file: !2370, line: 97, baseType: !35, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2369, file: !2370, line: 98, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2370, line: 24, size: 3072, elements: !2376)
!2376 = !{!2377, !2379, !2380, !2381, !2382, !2395, !2396, !2397, !2398, !2410, !2411, !2412, !2423, !2424, !2425}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2375, file: !2370, line: 26, baseType: !2378, size: 128)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 128, elements: !2288)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2375, file: !2370, line: 27, baseType: !2378, size: 128, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2375, file: !2370, line: 28, baseType: !18, size: 32, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2375, file: !2370, line: 31, baseType: !37, size: 32, align: 512, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2375, file: !2370, line: 32, baseType: !2383, size: 960, offset: 576)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2384, line: 206, size: 960, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2385 = !{!2386, !2387, !2390, !2392, !2393, !2394}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2383, file: !2384, line: 207, baseType: !105, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2383, file: !2384, line: 208, baseType: !2388, size: 256, offset: 64)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 256, elements: !86)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2383, file: !2384, line: 209, baseType: !2391, size: 256, offset: 320)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !86)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2383, file: !2384, line: 213, baseType: !943, size: 64, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2383, file: !2384, line: 215, baseType: !945, size: 256, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2383, file: !2384, line: 216, baseType: !61, size: 8, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2375, file: !2370, line: 33, baseType: !147, size: 64, offset: 1536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2375, file: !2370, line: 34, baseType: !147, size: 64, offset: 1600)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2375, file: !2370, line: 35, baseType: !678, size: 8, offset: 1664)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2375, file: !2370, line: 36, baseType: !2399, size: 320, offset: 1728)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2400, line: 11, size: 320, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2401 = !{!2402, !2403, !2404, !2409}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2399, file: !2400, line: 16, baseType: !81, size: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2399, file: !2400, line: 17, baseType: !147, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2399, file: !2400, line: 18, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2399, file: !2400, line: 19, baseType: !150, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2375, file: !2370, line: 37, baseType: !813, size: 256, offset: 2048)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2375, file: !2370, line: 38, baseType: !102, size: 128, align: 64, offset: 2304)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2375, file: !2370, line: 39, baseType: !2413, size: 64, offset: 2432)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2370, line: 49, size: 768, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2414, file: !2370, line: 50, baseType: !37, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2414, file: !2370, line: 51, baseType: !2391, size: 256, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2414, file: !2370, line: 53, baseType: !2391, size: 256, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2414, file: !2370, line: 54, baseType: !147, size: 64, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2414, file: !2370, line: 55, baseType: !2413, size: 64, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2414, file: !2370, line: 56, baseType: !18, size: 32, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2414, file: !2370, line: 57, baseType: !18, size: 32, offset: 736)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2375, file: !2370, line: 40, baseType: !147, size: 64, offset: 2496)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2375, file: !2370, line: 42, baseType: !18, size: 32, offset: 2560)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2375, file: !2370, line: 43, baseType: !2368, size: 64, offset: 2624)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2369, file: !2370, line: 99, baseType: !2427, offset: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2428, line: 211, elements: !481)
!2428 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2369, file: !2370, line: 100, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2370, line: 63, size: 3008, elements: !2432)
!2432 = !{!2433, !2434, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2464}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2431, file: !2370, line: 64, baseType: !2413, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2431, file: !2370, line: 65, baseType: !2435, size: 192, offset: 64)
!2435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2413, size: 192, elements: !547)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2431, file: !2370, line: 67, baseType: !18, size: 32, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2431, file: !2370, line: 68, baseType: !509, size: 256, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2431, file: !2370, line: 69, baseType: !37, size: 32, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2431, file: !2370, line: 70, baseType: !509, size: 256, offset: 640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2431, file: !2370, line: 71, baseType: !147, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2431, file: !2370, line: 72, baseType: !147, size: 64, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2431, file: !2370, line: 73, baseType: !147, size: 64, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2431, file: !2370, line: 74, baseType: !147, size: 64, offset: 1088)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2431, file: !2370, line: 75, baseType: !147, size: 64, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2431, file: !2370, line: 76, baseType: !147, size: 64, offset: 1216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2431, file: !2370, line: 77, baseType: !147, size: 64, offset: 1280)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2431, file: !2370, line: 78, baseType: !147, size: 64, offset: 1344)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2431, file: !2370, line: 79, baseType: !678, size: 8, offset: 1408)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2431, file: !2370, line: 80, baseType: !147, size: 64, offset: 1472)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2431, file: !2370, line: 81, baseType: !509, size: 256, offset: 1536)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2431, file: !2370, line: 82, baseType: !884, size: 256, offset: 1792)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2431, file: !2370, line: 84, baseType: !29, size: 32, offset: 2048)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2431, file: !2370, line: 87, baseType: !147, size: 64, offset: 2112)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2431, file: !2370, line: 88, baseType: !147, size: 64, offset: 2176)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2431, file: !2370, line: 89, baseType: !2456, size: 704, offset: 2240)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !814, line: 111, size: 704, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2463}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2456, file: !814, line: 112, baseType: !813, size: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2456, file: !814, line: 113, baseType: !2399, size: 320, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2456, file: !814, line: 116, baseType: !2461, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !814, line: 18, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2456, file: !814, line: 117, baseType: !18, size: 32, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2431, file: !2370, line: 90, baseType: !2368, size: 64, offset: 2944)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1251, file: !1252, line: 515, baseType: !2466, size: 64, offset: 8064)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2468, line: 117, size: 128, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2467, file: !2468, line: 118, baseType: !611, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2467, file: !2468, line: 119, baseType: !611, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2467, file: !2468, line: 120, baseType: !943, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1251, file: !1252, line: 516, baseType: !35, size: 32, offset: 8128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1251, file: !1252, line: 519, baseType: !35, size: 32, offset: 8160)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1251, file: !1252, line: 520, baseType: !2476, size: 64, offset: 8192)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1251, file: !1252, line: 523, baseType: !2478, size: 64, offset: 8256)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !2481, line: 372, size: 1024, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!2482 = !{!2483, !2484, !2534, !2594, !2681, !2682, !2686, !2691, !2692, !2693, !2694, !2696, !2699}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2480, file: !2481, line: 373, baseType: !96, size: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2480, file: !2481, line: 374, baseType: !2485, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !2481, line: 291, size: 576, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2505, !2528, !2532, !2533}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2486, file: !2481, line: 292, baseType: !681, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2486, file: !2481, line: 293, baseType: !132, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2486, file: !2481, line: 295, baseType: !132, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2486, file: !2481, line: 297, baseType: !2492, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!18, !2479, !2495, !132}
!2495 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !2481, line: 253, baseType: !35, size: 32, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2497 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!2498 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!2499 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!2500 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!2501 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!2502 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!2503 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!2504 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2486, file: !2481, line: 299, baseType: !2506, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !2481, line: 275, size: 320, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2507, file: !2481, line: 276, baseType: !681, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !2481, line: 277, baseType: !2511, size: 256, offset: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !2481, line: 277, size: 256, elements: !2512)
!2512 = !{!2513, !2524}
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2481, line: 278, baseType: !2514, size: 256)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2511, file: !2481, line: 278, size: 256, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2521, !2522, !2523}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2514, file: !2481, line: 279, baseType: !681, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2514, file: !2481, line: 280, baseType: !2364, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2514, file: !2481, line: 281, baseType: !2364, size: 32, offset: 96)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2514, file: !2481, line: 282, baseType: !2520, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2514, file: !2481, line: 283, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2514, file: !2481, line: 284, baseType: !2364, size: 32, offset: 160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2514, file: !2481, line: 285, baseType: !2364, size: 32, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2511, file: !2481, line: 287, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!18, !2479}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2486, file: !2481, line: 300, baseType: !2529, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!99, !2479}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2486, file: !2481, line: 301, baseType: !96, size: 128, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2486, file: !2481, line: 302, baseType: !2525, size: 64, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !2481, line: 375, baseType: !2535, size: 64, offset: 192)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !2481, line: 375, size: 64, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2535, file: !2481, line: 376, baseType: !681, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2535, file: !2481, line: 378, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2363, line: 32, size: 640, elements: !2541)
!2541 = !{!2542, !2543, !2555, !2579, !2580, !2581, !2582, !2583, !2587}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2540, file: !2363, line: 33, baseType: !681, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2540, file: !2363, line: 34, baseType: !2544, size: 128, offset: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2468, line: 85, size: 128, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2544, file: !2468, line: 86, baseType: !29, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !2468, line: 101, baseType: !2548, size: 64, offset: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !2468, line: 101, size: 64, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2548, file: !2468, line: 102, baseType: !147, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2548, file: !2468, line: 103, baseType: !2466, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2548, file: !2468, line: 104, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2468, line: 104, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2540, file: !2363, line: 35, baseType: !2556, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2558, line: 61, size: 128, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2557, file: !2558, line: 62, baseType: !132, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2558, line: 63, baseType: !2562, size: 64, offset: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2558, line: 63, size: 64, elements: !2563)
!2563 = !{!2564, !2565, !2578}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2562, file: !2558, line: 65, baseType: !147, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2562, file: !2558, line: 66, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2568, line: 169, size: 192, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2567, file: !2568, line: 170, baseType: !2566, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2567, file: !2568, line: 171, baseType: !1250, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2567, file: !2568, line: 172, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2558, line: 32, size: 64, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2574, file: !2558, line: 33, baseType: !611, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2574, file: !2558, line: 34, baseType: !611, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2562, file: !2558, line: 67, baseType: !2573, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2540, file: !2363, line: 36, baseType: !132, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2540, file: !2363, line: 37, baseType: !132, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2540, file: !2363, line: 38, baseType: !132, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2540, file: !2363, line: 39, baseType: !2269, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2540, file: !2363, line: 40, baseType: !2584, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2540, file: !2363, line: 41, baseType: !2588, size: 64, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2363, line: 26, size: 192, elements: !2590)
!2590 = !{!2591, !2592, !2593}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2589, file: !2363, line: 27, baseType: !132, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2589, file: !2363, line: 28, baseType: !132, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2589, file: !2363, line: 29, baseType: !18, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2480, file: !2481, line: 380, baseType: !2595, size: 256, offset: 256)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !2481, line: 148, size: 256, elements: !2596)
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2595, file: !2481, line: 149, baseType: !81, size: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2595, file: !2481, line: 150, baseType: !18, size: 32, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2595, file: !2481, line: 151, baseType: !2600, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !2481, line: 141, size: 256, elements: !2602)
!2602 = !{!2603, !2678, !2679, !2680}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2601, file: !2481, line: 142, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !2481, line: 138, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!2608, !2614, !18, !2677}
!2608 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !2481, line: 158, baseType: !35, size: 32, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!2611 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!2612 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!2613 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !2481, line: 93, size: 67776, elements: !2616)
!2616 = !{!2617, !2620, !2623, !2626, !2627, !2628, !2629, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2657, !2660, !2661, !2662, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2615, file: !2481, line: 94, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !2481, line: 13, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2615, file: !2481, line: 95, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !2481, line: 15, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2615, file: !2481, line: 96, baseType: !2624, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !2481, line: 14, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2615, file: !2481, line: 97, baseType: !132, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2615, file: !2481, line: 98, baseType: !18, size: 32, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2615, file: !2481, line: 99, baseType: !509, size: 256, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2615, file: !2481, line: 100, baseType: !2630, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2633, line: 10, flags: DIFlagFwdDecl)
!2633 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2615, file: !2481, line: 101, baseType: !147, size: 64, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2615, file: !2481, line: 102, baseType: !132, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2615, file: !2481, line: 103, baseType: !35, size: 32, offset: 768)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2615, file: !2481, line: 104, baseType: !691, size: 64, offset: 832)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2615, file: !2481, line: 105, baseType: !35, size: 32, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2615, file: !2481, line: 106, baseType: !943, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2615, file: !2481, line: 109, baseType: !2641, size: 33088, offset: 1024)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2642, line: 14, size: 33088, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2643 = !{!2644, !2648, !2655, !2656}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2641, file: !2642, line: 15, baseType: !2645, size: 32768)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2646)
!2646 = !{!2647}
!2647 = !DISubrange(count: 4096)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2641, file: !2642, line: 16, baseType: !2649, size: 192, offset: 32768)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2650, line: 18, size: 192, elements: !2651)
!2650 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2651 = !{!2652, !2653, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2649, file: !2650, line: 19, baseType: !691, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2649, file: !2650, line: 20, baseType: !865, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2649, file: !2650, line: 21, baseType: !865, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2641, file: !2642, line: 17, baseType: !865, size: 64, offset: 32960)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2641, file: !2642, line: 18, baseType: !18, size: 32, offset: 33024)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2615, file: !2481, line: 111, baseType: !2658, size: 64, offset: 34112)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !406, line: 913, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 64, elements: !411)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2615, file: !2481, line: 114, baseType: !678, size: 8, offset: 34176)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2615, file: !2481, line: 117, baseType: !2641, size: 33088, offset: 34240)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2615, file: !2481, line: 118, baseType: !2663, size: 64, offset: 67328)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !2481, line: 79, size: 64, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2664, file: !2481, line: 80, baseType: !73, size: 16)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !2481, line: 81, baseType: !65, size: 8, offset: 16)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2664, file: !2481, line: 82, baseType: !65, size: 8, offset: 24)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2664, file: !2481, line: 83, baseType: !18, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2615, file: !2481, line: 119, baseType: !147, size: 64, offset: 67392)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2615, file: !2481, line: 120, baseType: !18, size: 32, offset: 67456)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2615, file: !2481, line: 121, baseType: !18, size: 32, offset: 67488)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2615, file: !2481, line: 122, baseType: !18, size: 32, offset: 67520)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2615, file: !2481, line: 123, baseType: !203, size: 64, offset: 67584)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2615, file: !2481, line: 125, baseType: !521, size: 64, offset: 67648)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2615, file: !2481, line: 126, baseType: !943, size: 64, offset: 67712)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2601, file: !2481, line: 143, baseType: !2604, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2601, file: !2481, line: 144, baseType: !2604, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2601, file: !2481, line: 145, baseType: !2604, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2480, file: !2481, line: 381, baseType: !691, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2480, file: !2481, line: 382, baseType: !2683, size: 64, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !2685, line: 821, flags: DIFlagFwdDecl)
!2685 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !2481, line: 387, baseType: !2687, size: 64, offset: 640)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !2481, line: 387, size: 64, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2687, file: !2481, line: 388, baseType: !132, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2687, file: !2481, line: 389, baseType: !29, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2480, file: !2481, line: 391, baseType: !132, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2480, file: !2481, line: 394, baseType: !18, size: 32, offset: 768)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2480, file: !2481, line: 397, baseType: !18, size: 32, offset: 800)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2480, file: !2481, line: 398, baseType: !2695, size: 64, offset: 832)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2480, file: !2481, line: 399, baseType: !2697, size: 64, offset: 896)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !2481, line: 399, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2480, file: !2481, line: 401, baseType: !2700, size: 64, offset: 960)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!18, !2479, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2685, line: 671, size: 8512, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !3294, !3295, !3304, !3305, !3311, !3312, !3313, !3314, !3315, !3399, !3400, !3401, !3402, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3522, !3523, !3524, !3525, !3526, !3527, !3542, !3543, !3544, !3545, !3546, !3552, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3569, !3740, !3741, !3742, !3743, !4013, !4014, !4015}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2704, file: !2685, line: 678, baseType: !96, size: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2704, file: !2685, line: 684, baseType: !96, size: 128, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2704, file: !2685, line: 685, baseType: !96, size: 128, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2704, file: !2685, line: 689, baseType: !195, size: 192, align: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2704, file: !2685, line: 690, baseType: !203, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2704, file: !2685, line: 696, baseType: !96, size: 128, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2704, file: !2685, line: 698, baseType: !81, size: 128, offset: 768)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2704, file: !2685, line: 699, baseType: !96, size: 128, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2704, file: !2685, line: 700, baseType: !18, size: 32, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2704, file: !2685, line: 703, baseType: !18, size: 32, offset: 1056)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2704, file: !2685, line: 705, baseType: !18, size: 32, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2704, file: !2685, line: 707, baseType: !35, size: 32, offset: 1120)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2704, file: !2685, line: 708, baseType: !2703, size: 64, offset: 1152)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2704, file: !2685, line: 714, baseType: !2720, size: 64, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !2685, line: 302, size: 2432, elements: !2722)
!2722 = !{!2723, !2724, !2725, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3201, !3202, !3203, !3204, !3205, !3209, !3210, !3214, !3218, !3219, !3223, !3227, !3228, !3229, !3233, !3237, !3241, !3242, !3243, !3247, !3251, !3255, !3259, !3260, !3280, !3284, !3285, !3286, !3290}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2721, file: !2685, line: 303, baseType: !96, size: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2721, file: !2685, line: 305, baseType: !1250, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2721, file: !2685, line: 306, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2728, line: 705, size: 5824, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2729 = !{!2730, !2731, !2732, !2735, !2736, !2790, !2866, !2867, !2868, !2869, !2870, !2883, !2989, !3002, !3012, !3016, !3018, !3019, !3020, !3024, !3031, !3032, !3035, !3038, !3042, !3045, !3046, !3047, !3048, !3049, !3050, !3080, !3081, !3082, !3085, !3088, !3116, !3123, !3124, !3125, !3126, !3127}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2727, file: !2728, line: 706, baseType: !1270, size: 512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2727, file: !2728, line: 707, baseType: !2726, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2727, file: !2728, line: 709, baseType: !2733, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2728, line: 37, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2727, file: !2728, line: 711, baseType: !681, size: 64, offset: 640)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2727, file: !2728, line: 712, baseType: !2737, size: 64, offset: 704)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2728, line: 89, size: 384, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2749, !2754, !2758}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2739, file: !2728, line: 90, baseType: !681, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2739, file: !2728, line: 91, baseType: !1350, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2739, file: !2728, line: 92, baseType: !2744, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!18, !2747, !1306}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2727)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2739, file: !2728, line: 93, baseType: !2750, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!691, !2747, !2753, !909, !910}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2739, file: !2728, line: 95, baseType: !2755, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2726}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2739, file: !2728, line: 97, baseType: !2759, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2761)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2762, line: 286, size: 1472, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2763 = !{!2764, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2761, file: !2762, line: 287, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!18, !2726}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2761, file: !2762, line: 288, baseType: !2755, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2761, file: !2762, line: 289, baseType: !2765, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2761, file: !2762, line: 290, baseType: !2765, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2761, file: !2762, line: 291, baseType: !2765, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2761, file: !2762, line: 292, baseType: !2765, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2761, file: !2762, line: 293, baseType: !2765, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2761, file: !2762, line: 294, baseType: !2765, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2761, file: !2762, line: 295, baseType: !2765, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2761, file: !2762, line: 296, baseType: !2765, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2761, file: !2762, line: 297, baseType: !2765, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2761, file: !2762, line: 298, baseType: !2765, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2761, file: !2762, line: 299, baseType: !2765, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2761, file: !2762, line: 300, baseType: !2765, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2761, file: !2762, line: 301, baseType: !2765, size: 64, offset: 896)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2761, file: !2762, line: 302, baseType: !2765, size: 64, offset: 960)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2761, file: !2762, line: 303, baseType: !2765, size: 64, offset: 1024)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2761, file: !2762, line: 304, baseType: !2765, size: 64, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2761, file: !2762, line: 305, baseType: !2765, size: 64, offset: 1152)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2761, file: !2762, line: 306, baseType: !2765, size: 64, offset: 1216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2761, file: !2762, line: 307, baseType: !2765, size: 64, offset: 1280)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2761, file: !2762, line: 308, baseType: !2765, size: 64, offset: 1344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2761, file: !2762, line: 309, baseType: !2765, size: 64, offset: 1408)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2727, file: !2728, line: 714, baseType: !2791, size: 64, offset: 768)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2794, line: 80, size: 1344, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2865}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2793, file: !2794, line: 81, baseType: !681, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2793, file: !2794, line: 82, baseType: !681, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2793, file: !2794, line: 83, baseType: !1350, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2793, file: !2794, line: 84, baseType: !1350, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2793, file: !2794, line: 85, baseType: !1350, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2793, file: !2794, line: 87, baseType: !2802, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!18, !2726, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2807, line: 96, size: 1152, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2820, !2824, !2828, !2829, !2830, !2831, !2832, !2840, !2841, !2842, !2843, !2844, !2845}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2806, file: !2807, line: 97, baseType: !681, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2806, file: !2807, line: 98, baseType: !2791, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2806, file: !2807, line: 100, baseType: !1250, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2806, file: !2807, line: 101, baseType: !681, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2806, file: !2807, line: 103, baseType: !678, size: 8, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2806, file: !2807, line: 104, baseType: !2815, size: 32, offset: 288)
!2815 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2807, line: 45, baseType: !35, size: 32, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2818 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2819 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2806, file: !2807, line: 106, baseType: !2821, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2807, line: 106, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2806, file: !2807, line: 107, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2807, line: 107, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2806, file: !2807, line: 109, baseType: !2765, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2806, file: !2807, line: 110, baseType: !2755, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2806, file: !2807, line: 111, baseType: !2765, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2806, file: !2807, line: 112, baseType: !2755, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2806, file: !2807, line: 113, baseType: !2833, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!18, !2726, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2762, line: 60, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2762, line: 58, size: 32, elements: !2838)
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2837, file: !2762, line: 59, baseType: !18, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2806, file: !2807, line: 114, baseType: !2765, size: 64, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2806, file: !2807, line: 115, baseType: !1350, size: 64, offset: 832)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2806, file: !2807, line: 116, baseType: !1350, size: 64, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2806, file: !2807, line: 118, baseType: !2759, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2806, file: !2807, line: 119, baseType: !2755, size: 64, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2806, file: !2807, line: 121, baseType: !2846, size: 64, offset: 1088)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2807, line: 121, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2793, file: !2794, line: 88, baseType: !2744, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2793, file: !2794, line: 89, baseType: !2765, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2793, file: !2794, line: 90, baseType: !2755, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2793, file: !2794, line: 91, baseType: !2755, size: 64, offset: 576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2793, file: !2794, line: 92, baseType: !2755, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2793, file: !2794, line: 94, baseType: !2765, size: 64, offset: 704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2793, file: !2794, line: 95, baseType: !2765, size: 64, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2793, file: !2794, line: 97, baseType: !2833, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2793, file: !2794, line: 98, baseType: !2765, size: 64, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2793, file: !2794, line: 100, baseType: !2765, size: 64, offset: 960)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2793, file: !2794, line: 102, baseType: !2765, size: 64, offset: 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2793, file: !2794, line: 103, baseType: !2755, size: 64, offset: 1088)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2793, file: !2794, line: 105, baseType: !2759, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2793, file: !2794, line: 107, baseType: !2862, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2864)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2794, line: 107, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2793, file: !2794, line: 109, baseType: !678, size: 8, offset: 1280)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2727, file: !2728, line: 715, baseType: !2805, size: 64, offset: 832)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2727, file: !2728, line: 717, baseType: !132, size: 64, offset: 896)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2727, file: !2728, line: 719, baseType: !132, size: 64, offset: 960)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2727, file: !2728, line: 721, baseType: !509, size: 256, offset: 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2727, file: !2728, line: 725, baseType: !2871, size: 448, offset: 1280)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2728, line: 517, size: 448, elements: !2872)
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2871, file: !2728, line: 518, baseType: !96, size: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2871, file: !2728, line: 519, baseType: !96, size: 128, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2871, file: !2728, line: 520, baseType: !96, size: 128, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2871, file: !2728, line: 521, baseType: !2877, size: 32, offset: 384)
!2877 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2728, line: 487, baseType: !35, size: 32, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2882}
!2879 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2880 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2881 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2882 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2727, file: !2728, line: 726, baseType: !2884, size: 2496, offset: 1728)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2762, line: 663, size: 2496, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2961, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2982, !2986}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2884, file: !2762, line: 664, baseType: !2836, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2884, file: !2762, line: 665, baseType: !35, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2884, file: !2762, line: 666, baseType: !35, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2884, file: !2762, line: 667, baseType: !678, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2884, file: !2762, line: 668, baseType: !678, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2884, file: !2762, line: 669, baseType: !678, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2884, file: !2762, line: 670, baseType: !678, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2884, file: !2762, line: 671, baseType: !678, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2884, file: !2762, line: 672, baseType: !678, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2884, file: !2762, line: 673, baseType: !678, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2884, file: !2762, line: 674, baseType: !678, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2884, file: !2762, line: 675, baseType: !150, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2884, file: !2762, line: 676, baseType: !37, size: 32, offset: 96)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2884, file: !2762, line: 678, baseType: !96, size: 128, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2884, file: !2762, line: 679, baseType: !884, size: 256, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2884, file: !2762, line: 680, baseType: !2902, size: 64, offset: 512)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2904, line: 43, size: 1536, elements: !2905)
!2904 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2903, file: !2904, line: 44, baseType: !681, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2903, file: !2904, line: 45, baseType: !18, size: 32, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2903, file: !2904, line: 46, baseType: !96, size: 128, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2903, file: !2904, line: 47, baseType: !37, size: 32, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2903, file: !2904, line: 48, baseType: !2911, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2762, line: 629, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2903, file: !2904, line: 49, baseType: !2399, size: 320, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2903, file: !2904, line: 50, baseType: !147, size: 64, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2903, file: !2904, line: 51, baseType: !280, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2903, file: !2904, line: 52, baseType: !280, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2903, file: !2904, line: 53, baseType: !280, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2903, file: !2904, line: 54, baseType: !280, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2903, file: !2904, line: 55, baseType: !280, size: 64, offset: 1024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2903, file: !2904, line: 56, baseType: !147, size: 64, offset: 1088)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2903, file: !2904, line: 57, baseType: !147, size: 64, offset: 1152)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2903, file: !2904, line: 58, baseType: !147, size: 64, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2903, file: !2904, line: 59, baseType: !147, size: 64, offset: 1280)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2903, file: !2904, line: 60, baseType: !147, size: 64, offset: 1344)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2903, file: !2904, line: 61, baseType: !2726, size: 64, offset: 1408)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2903, file: !2904, line: 62, baseType: !678, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2903, file: !2904, line: 63, baseType: !678, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2884, file: !2762, line: 681, baseType: !678, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2884, file: !2762, line: 682, baseType: !678, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2884, file: !2762, line: 683, baseType: !678, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2884, file: !2762, line: 684, baseType: !35, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2884, file: !2762, line: 685, baseType: !35, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2884, file: !2762, line: 690, baseType: !271, size: 512, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2884, file: !2762, line: 691, baseType: !203, size: 64, offset: 1152)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2884, file: !2762, line: 692, baseType: !813, size: 256, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2884, file: !2762, line: 693, baseType: !90, size: 192, offset: 1472)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2884, file: !2762, line: 694, baseType: !2911, size: 64, offset: 1664)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2884, file: !2762, line: 695, baseType: !29, size: 32, offset: 1728)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2884, file: !2762, line: 696, baseType: !29, size: 32, offset: 1760)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2884, file: !2762, line: 697, baseType: !35, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2884, file: !2762, line: 698, baseType: !35, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2884, file: !2762, line: 699, baseType: !35, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2884, file: !2762, line: 700, baseType: !35, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2884, file: !2762, line: 701, baseType: !35, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2884, file: !2762, line: 702, baseType: !35, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2884, file: !2762, line: 703, baseType: !678, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2884, file: !2762, line: 704, baseType: !35, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2884, file: !2762, line: 705, baseType: !35, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2884, file: !2762, line: 706, baseType: !35, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2884, file: !2762, line: 707, baseType: !35, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2884, file: !2762, line: 708, baseType: !35, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2884, file: !2762, line: 709, baseType: !35, size: 32, offset: 1824)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2884, file: !2762, line: 710, baseType: !2954, size: 32, offset: 1856)
!2954 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2762, line: 620, baseType: !35, size: 32, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960}
!2956 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2957 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2958 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2959 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2960 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2884, file: !2762, line: 711, baseType: !2962, size: 32, offset: 1888)
!2962 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2762, line: 597, baseType: !18, size: 32, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968}
!2964 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2965 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2966 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2967 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2968 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2884, file: !2762, line: 712, baseType: !2962, size: 32, offset: 1920)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2884, file: !2762, line: 713, baseType: !18, size: 32, offset: 1952)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2884, file: !2762, line: 714, baseType: !18, size: 32, offset: 1984)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2884, file: !2762, line: 715, baseType: !203, size: 64, offset: 2048)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2884, file: !2762, line: 716, baseType: !203, size: 64, offset: 2112)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2884, file: !2762, line: 717, baseType: !203, size: 64, offset: 2176)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2884, file: !2762, line: 718, baseType: !203, size: 64, offset: 2240)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2884, file: !2762, line: 720, baseType: !2977, size: 64, offset: 2304)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2762, line: 632, size: 64, elements: !2979)
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2978, file: !2762, line: 633, baseType: !37, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2978, file: !2762, line: 634, baseType: !35, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2884, file: !2762, line: 721, baseType: !2983, size: 64, offset: 2368)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2726, !611}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2884, file: !2762, line: 722, baseType: !2987, size: 64, offset: 2432)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2762, line: 722, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2727, file: !2728, line: 727, baseType: !2990, size: 64, offset: 4224)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2762, line: 742, size: 1792, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2999, !3000, !3001}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2991, file: !2762, line: 743, baseType: !2761, size: 1472)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2991, file: !2762, line: 744, baseType: !2765, size: 64, offset: 1472)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2991, file: !2762, line: 745, baseType: !2996, size: 64, offset: 1536)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2726, !678}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2991, file: !2762, line: 746, baseType: !2765, size: 64, offset: 1600)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2991, file: !2762, line: 747, baseType: !2755, size: 64, offset: 1664)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2991, file: !2762, line: 748, baseType: !2755, size: 64, offset: 1728)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2727, file: !2728, line: 736, baseType: !3003, size: 128, offset: 4288)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2728, line: 529, size: 128, elements: !3004)
!3004 = !{!3005, !3009}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3003, file: !2728, line: 531, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3008, line: 13, flags: DIFlagFwdDecl)
!3008 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3003, file: !2728, line: 532, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2728, line: 49, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2727, file: !2728, line: 738, baseType: !3013, size: 64, offset: 4416)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2728, line: 738, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2727, file: !2728, line: 740, baseType: !3017, size: 64, offset: 4480)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2727, file: !2728, line: 741, baseType: !203, size: 64, offset: 4544)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2727, file: !2728, line: 746, baseType: !203, size: 64, offset: 4608)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2727, file: !2728, line: 747, baseType: !3021, size: 64, offset: 4672)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3023)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2728, line: 747, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2727, file: !2728, line: 749, baseType: !3025, size: 64, offset: 4736)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2728, line: 428, size: 128, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3026, file: !2728, line: 433, baseType: !35, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3026, file: !2728, line: 434, baseType: !35, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3026, file: !2728, line: 435, baseType: !147, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2727, file: !2728, line: 751, baseType: !96, size: 128, offset: 4800)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2727, file: !2728, line: 762, baseType: !3033, size: 64, offset: 4928)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2728, line: 762, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2727, file: !2728, line: 770, baseType: !3036, offset: 4992)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3037, line: 5, elements: !481)
!3037 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2727, file: !2728, line: 772, baseType: !3039, size: 64, offset: 4992)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3041, line: 18, flags: DIFlagFwdDecl)
!3041 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2727, file: !2728, line: 773, baseType: !3043, size: 64, offset: 5056)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2794, line: 22, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2727, file: !2728, line: 776, baseType: !18, size: 32, offset: 5120)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2727, file: !2728, line: 778, baseType: !1090, size: 32, offset: 5152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2727, file: !2728, line: 779, baseType: !150, size: 32, offset: 5184)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2727, file: !2728, line: 781, baseType: !37, size: 32, offset: 5216)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2727, file: !2728, line: 782, baseType: !96, size: 128, offset: 5248)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2727, file: !2728, line: 784, baseType: !3051, size: 64, offset: 5376)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3054, line: 52, size: 768, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3064, !3068, !3069, !3070, !3071, !3075, !3079}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3053, file: !3054, line: 53, baseType: !681, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3053, file: !3054, line: 55, baseType: !1350, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3053, file: !3054, line: 56, baseType: !1350, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3053, file: !3054, line: 58, baseType: !2744, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3053, file: !3054, line: 59, baseType: !3061, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!691, !2747, !2753}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3053, file: !3054, line: 61, baseType: !3065, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !3051}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3053, file: !3054, line: 62, baseType: !2755, size: 64, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3053, file: !3054, line: 64, baseType: !2765, size: 64, offset: 448)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3053, file: !3054, line: 66, baseType: !1963, size: 64, offset: 512)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3053, file: !3054, line: 67, baseType: !3072, size: 64, offset: 576)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!1986, !2747}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3053, file: !3054, line: 69, baseType: !3076, size: 64, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !2747, !909, !910}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3053, file: !3054, line: 71, baseType: !2759, size: 64, offset: 704)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2727, file: !2728, line: 785, baseType: !1350, size: 64, offset: 5440)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2727, file: !2728, line: 787, baseType: !2755, size: 64, offset: 5504)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2727, file: !2728, line: 788, baseType: !3083, size: 64, offset: 5568)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2728, line: 46, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2727, file: !2728, line: 789, baseType: !3086, size: 64, offset: 5632)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2728, line: 48, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2727, file: !2728, line: 791, baseType: !3089, size: 64, offset: 5696)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2728, line: 597, size: 128, elements: !3091)
!3091 = !{!3092, !3102, !3108, !3114, !3115}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3090, file: !2728, line: 598, baseType: !3093, size: 32)
!3093 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2728, line: 547, baseType: !35, size: 32, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101}
!3095 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3096 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3097 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3098 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3099 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3100 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3101 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3090, file: !2728, line: 599, baseType: !3103, size: 32, offset: 32)
!3103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2728, line: 564, baseType: !35, size: 32, elements: !3104)
!3104 = !{!3105, !3106, !3107}
!3105 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3106 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3107 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3090, file: !2728, line: 600, baseType: !3109, size: 32, offset: 64)
!3109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2728, line: 577, baseType: !35, size: 32, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3112 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3113 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3090, file: !2728, line: 601, baseType: !678, size: 8, offset: 96)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3090, file: !2728, line: 602, baseType: !678, size: 8, offset: 104)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2727, file: !2728, line: 793, baseType: !3117, size: 32, offset: 5760)
!3117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2728, line: 503, baseType: !35, size: 32, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3120 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3121 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3122 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2727, file: !2728, line: 795, baseType: !678, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2727, file: !2728, line: 796, baseType: !678, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2727, file: !2728, line: 797, baseType: !678, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2727, file: !2728, line: 798, baseType: !678, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2727, file: !2728, line: 799, baseType: !678, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2721, file: !2685, line: 307, baseType: !2726, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2721, file: !2685, line: 308, baseType: !1350, size: 64, offset: 320)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2721, file: !2685, line: 309, baseType: !1350, size: 64, offset: 384)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2721, file: !2685, line: 310, baseType: !681, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2721, file: !2685, line: 311, baseType: !18, size: 32, offset: 512)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2721, file: !2685, line: 316, baseType: !18, size: 32, offset: 544)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2721, file: !2685, line: 318, baseType: !2298, size: 64, offset: 576)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2721, file: !2685, line: 319, baseType: !3136, size: 64, offset: 640)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !2685, line: 977, size: 1856, elements: !3138)
!3138 = !{!3139, !3191, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3137, file: !2685, line: 978, baseType: !3140, size: 896)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !2685, line: 873, size: 896, elements: !3141)
!3141 = !{!3142, !3143, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3140, file: !2685, line: 874, baseType: !2720, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3140, file: !2685, line: 875, baseType: !3144, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2685, line: 912, size: 1792, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3145, file: !2685, line: 917, baseType: !301, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3145, file: !2685, line: 923, baseType: !509, size: 256, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3145, file: !2685, line: 925, baseType: !96, size: 128, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3145, file: !2685, line: 926, baseType: !3151, size: 128, offset: 448)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !2685, line: 901, size: 128, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3151, file: !2685, line: 902, baseType: !345, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3151, file: !2685, line: 903, baseType: !203, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3145, file: !2685, line: 927, baseType: !3151, size: 128, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3145, file: !2685, line: 928, baseType: !96, size: 128, offset: 704)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3145, file: !2685, line: 930, baseType: !18, size: 32, offset: 832)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3145, file: !2685, line: 931, baseType: !18, size: 32, offset: 864)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3145, file: !2685, line: 932, baseType: !18, size: 32, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3145, file: !2685, line: 934, baseType: !18, size: 32, offset: 928)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3145, file: !2685, line: 935, baseType: !18, size: 32, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3145, file: !2685, line: 936, baseType: !18, size: 32, offset: 992)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3145, file: !2685, line: 937, baseType: !18, size: 32, offset: 1024)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3145, file: !2685, line: 939, baseType: !24, size: 32, offset: 1056)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3145, file: !2685, line: 940, baseType: !138, size: 64, offset: 1088)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3145, file: !2685, line: 945, baseType: !203, size: 64, offset: 1152)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3145, file: !2685, line: 946, baseType: !203, size: 64, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3145, file: !2685, line: 947, baseType: !203, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3145, file: !2685, line: 953, baseType: !3144, size: 64, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3145, file: !2685, line: 954, baseType: !203, size: 64, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3145, file: !2685, line: 955, baseType: !203, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3145, file: !2685, line: 956, baseType: !18, size: 32, offset: 1536)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3145, file: !2685, line: 958, baseType: !18, size: 32, offset: 1568)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3145, file: !2685, line: 960, baseType: !102, size: 128, align: 64, offset: 1600)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3145, file: !2685, line: 968, baseType: !3176, size: 64, offset: 1728)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3177, line: 12, baseType: !3178)
!3177 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3177, line: 10, size: 64, elements: !3179)
!3179 = !{!3180}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3178, file: !3177, line: 11, baseType: !502, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3140, file: !2685, line: 877, baseType: !96, size: 128, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3140, file: !2685, line: 879, baseType: !96, size: 128, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3140, file: !2685, line: 880, baseType: !96, size: 128, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3140, file: !2685, line: 883, baseType: !35, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3140, file: !2685, line: 885, baseType: !35, size: 32, offset: 544)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3140, file: !2685, line: 886, baseType: !35, size: 32, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3140, file: !2685, line: 888, baseType: !29, size: 32, offset: 608)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3140, file: !2685, line: 889, baseType: !102, size: 128, align: 64, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3140, file: !2685, line: 891, baseType: !132, size: 64, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3140, file: !2685, line: 898, baseType: !18, size: 32, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3137, file: !2685, line: 979, baseType: !3192, size: 64, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3137, file: !2685, line: 981, baseType: !96, size: 128, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3137, file: !2685, line: 982, baseType: !18, size: 32, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3137, file: !2685, line: 984, baseType: !18, size: 32, offset: 1120)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3137, file: !2685, line: 985, baseType: !18, size: 32, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3137, file: !2685, line: 987, baseType: !301, size: 32, offset: 1184)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3137, file: !2685, line: 988, baseType: !271, size: 512, offset: 1216)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3137, file: !2685, line: 989, baseType: !280, size: 64, offset: 1728)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3137, file: !2685, line: 990, baseType: !35, size: 32, offset: 1792)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2721, file: !2685, line: 320, baseType: !29, size: 32, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2721, file: !2685, line: 321, baseType: !18, size: 32, offset: 736)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2721, file: !2685, line: 322, baseType: !18, size: 32, offset: 768)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2721, file: !2685, line: 325, baseType: !35, size: 32, offset: 800)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2721, file: !2685, line: 331, baseType: !3206, size: 64, offset: 832)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !2720}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2721, file: !2685, line: 332, baseType: !3206, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2721, file: !2685, line: 350, baseType: !3211, size: 64, offset: 960)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!18, !2703}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2721, file: !2685, line: 356, baseType: !3215, size: 64, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !2703, !459}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2721, file: !2685, line: 357, baseType: !3215, size: 64, offset: 1088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2721, file: !2685, line: 385, baseType: !3220, size: 64, offset: 1152)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!18, !2703, !18}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2721, file: !2685, line: 386, baseType: !3224, size: 64, offset: 1216)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !2703, !18}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2721, file: !2685, line: 406, baseType: !3224, size: 64, offset: 1280)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2721, file: !2685, line: 407, baseType: !3224, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2721, file: !2685, line: 415, baseType: !3230, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !2703}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2721, file: !2685, line: 427, baseType: !3234, size: 64, offset: 1472)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !2720, !35}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2721, file: !2685, line: 436, baseType: !3238, size: 64, offset: 1536)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!18, !2720}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2721, file: !2685, line: 443, baseType: !3206, size: 64, offset: 1600)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2721, file: !2685, line: 450, baseType: !3211, size: 64, offset: 1664)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2721, file: !2685, line: 455, baseType: !3244, size: 64, offset: 1728)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3192, !678}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2721, file: !2685, line: 461, baseType: !3248, size: 64, offset: 1792)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3250, line: 11, flags: DIFlagFwdDecl)
!3250 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2721, file: !2685, line: 469, baseType: !3252, size: 64, offset: 1856)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3192, !3192}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2721, file: !2685, line: 476, baseType: !3256, size: 64, offset: 1920)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!132, !2703, !1795, !18, !678}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2721, file: !2685, line: 483, baseType: !1047, size: 64, offset: 1984)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2721, file: !2685, line: 494, baseType: !3261, size: 64, offset: 2048)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!943, !2703, !3264, !147}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !2685, line: 1014, size: 448, elements: !3266)
!3266 = !{!3267, !3268, !3271, !3272, !3273, !3274, !3279}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3265, file: !2685, line: 1015, baseType: !2703, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3265, file: !2685, line: 1016, baseType: !3269, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !2685, line: 641, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3265, file: !2685, line: 1017, baseType: !147, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3265, file: !2685, line: 1018, baseType: !147, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3265, file: !2685, line: 1019, baseType: !203, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !2685, line: 1020, baseType: !3275, size: 64, offset: 320)
!3275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !2685, line: 1020, size: 64, elements: !3276)
!3276 = !{!3277, !3278}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3275, file: !2685, line: 1021, baseType: !132, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3275, file: !2685, line: 1022, baseType: !147, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3265, file: !2685, line: 1024, baseType: !18, size: 32, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2721, file: !2685, line: 506, baseType: !3281, size: 64, offset: 2112)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!18, !99}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2721, file: !2685, line: 520, baseType: !3230, size: 64, offset: 2176)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2721, file: !2685, line: 530, baseType: !3211, size: 64, offset: 2240)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2721, file: !2685, line: 537, baseType: !3287, size: 64, offset: 2304)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!678, !2720, !18}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2721, file: !2685, line: 542, baseType: !3291, size: 64, offset: 2368)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!18, !2703, !203}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2704, file: !2685, line: 715, baseType: !132, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2704, file: !2685, line: 717, baseType: !3296, size: 32, offset: 1344)
!3296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !2685, line: 593, baseType: !18, size: 32, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303}
!3298 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!3299 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!3300 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!3301 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!3302 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!3303 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2704, file: !2685, line: 718, baseType: !35, size: 32, offset: 1376)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2704, file: !2685, line: 719, baseType: !3306, size: 64, offset: 1408)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3307, line: 26, baseType: !3308)
!3307 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3307, line: 24, size: 64, elements: !3309)
!3309 = !{!3310}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3308, file: !3307, line: 25, baseType: !3176, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2704, file: !2685, line: 720, baseType: !504, size: 64, offset: 1472)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2704, file: !2685, line: 728, baseType: !203, size: 64, offset: 1536)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2704, file: !2685, line: 729, baseType: !203, size: 64, offset: 1600)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2704, file: !2685, line: 730, baseType: !203, size: 64, offset: 1664)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2704, file: !2685, line: 732, baseType: !3316, size: 1088, offset: 1728)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3317, line: 385, size: 1088, elements: !3318)
!3317 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3318 = !{!3319, !3320, !3321, !3322, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3372, !3373, !3380, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3316, file: !3317, line: 390, baseType: !151, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3316, file: !3317, line: 395, baseType: !151, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3316, file: !3317, line: 400, baseType: !204, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !3317, line: 402, baseType: !3323, size: 64, offset: 128)
!3323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !3317, line: 402, size: 64, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3323, file: !3317, line: 403, baseType: !204, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3323, file: !3317, line: 404, baseType: !204, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3316, file: !3317, line: 407, baseType: !204, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3316, file: !3317, line: 408, baseType: !204, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3316, file: !3317, line: 410, baseType: !204, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3316, file: !3317, line: 411, baseType: !204, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3316, file: !3317, line: 412, baseType: !204, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3316, file: !3317, line: 413, baseType: !204, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3316, file: !3317, line: 414, baseType: !204, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3316, file: !3317, line: 415, baseType: !204, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3316, file: !3317, line: 416, baseType: !204, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3316, file: !3317, line: 417, baseType: !204, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3316, file: !3317, line: 418, baseType: !204, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3316, file: !3317, line: 419, baseType: !204, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3316, file: !3317, line: 420, baseType: !204, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3316, file: !3317, line: 421, baseType: !204, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3316, file: !3317, line: 422, baseType: !204, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3316, file: !3317, line: 423, baseType: !204, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3316, file: !3317, line: 424, baseType: !204, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3316, file: !3317, line: 435, baseType: !204, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3316, file: !3317, line: 436, baseType: !204, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3316, file: !3317, line: 437, baseType: !204, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3316, file: !3317, line: 439, baseType: !204, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3316, file: !3317, line: 440, baseType: !204, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3316, file: !3317, line: 442, baseType: !204, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3316, file: !3317, line: 443, baseType: !204, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3316, file: !3317, line: 444, baseType: !204, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3316, file: !3317, line: 445, baseType: !204, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3316, file: !3317, line: 446, baseType: !204, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3316, file: !3317, line: 447, baseType: !204, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3316, file: !3317, line: 448, baseType: !204, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3316, file: !3317, line: 449, baseType: !204, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3316, file: !3317, line: 450, baseType: !204, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3316, file: !3317, line: 451, baseType: !204, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3316, file: !3317, line: 452, baseType: !204, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3316, file: !3317, line: 453, baseType: !204, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3316, file: !3317, line: 454, baseType: !204, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3316, file: !3317, line: 455, baseType: !204, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3316, file: !3317, line: 456, baseType: !204, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3316, file: !3317, line: 457, baseType: !204, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3316, file: !3317, line: 458, baseType: !204, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3316, file: !3317, line: 459, baseType: !204, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !3317, line: 461, baseType: !3368, size: 32, offset: 384)
!3368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !3317, line: 461, size: 32, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3368, file: !3317, line: 462, baseType: !151, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3368, file: !3317, line: 463, baseType: !151, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3316, file: !3317, line: 466, baseType: !151, size: 32, offset: 416)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !3317, line: 467, baseType: !3374, size: 64, offset: 448)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !3317, line: 467, size: 64, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3374, file: !3317, line: 468, baseType: !204, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3374, file: !3317, line: 469, baseType: !204, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3374, file: !3317, line: 470, baseType: !204, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3374, file: !3317, line: 471, baseType: !204, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !3317, line: 473, baseType: !3381, size: 64, offset: 512)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !3317, line: 473, size: 64, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3381, file: !3317, line: 474, baseType: !204, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3381, file: !3317, line: 475, baseType: !204, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3381, file: !3317, line: 476, baseType: !204, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3381, file: !3317, line: 477, baseType: !204, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3316, file: !3317, line: 479, baseType: !204, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3316, file: !3317, line: 485, baseType: !204, size: 64, offset: 640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3316, file: !3317, line: 490, baseType: !151, size: 32, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3316, file: !3317, line: 492, baseType: !612, size: 32, offset: 736)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3316, file: !3317, line: 501, baseType: !204, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3316, file: !3317, line: 506, baseType: !151, size: 32, offset: 832)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3316, file: !3317, line: 507, baseType: !72, size: 16, offset: 864)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3316, file: !3317, line: 508, baseType: !72, size: 16, offset: 880)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3316, file: !3317, line: 509, baseType: !151, size: 32, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3316, file: !3317, line: 510, baseType: !151, size: 32, offset: 928)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3316, file: !3317, line: 518, baseType: !204, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3316, file: !3317, line: 520, baseType: !204, size: 64, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2704, file: !2685, line: 733, baseType: !71, size: 16, offset: 2816)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2704, file: !2685, line: 734, baseType: !71, size: 16, offset: 2832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2704, file: !2685, line: 735, baseType: !71, size: 16, offset: 2848)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2704, file: !2685, line: 736, baseType: !3403, size: 1536, offset: 2880)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !2685, line: 155, size: 1536, elements: !3404)
!3404 = !{!3405, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3489, !3490, !3491, !3492}
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !2685, line: 157, baseType: !3406, size: 768)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !2685, line: 157, size: 768, elements: !3407)
!3407 = !{!3408, !3427, !3431, !3435, !3440, !3462}
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 158, baseType: !3409, size: 768)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 158, size: 768, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3426}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3409, file: !2685, line: 159, baseType: !203, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3409, file: !2685, line: 160, baseType: !203, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3409, file: !2685, line: 161, baseType: !147, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3409, file: !2685, line: 162, baseType: !147, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3409, file: !2685, line: 163, baseType: !18, size: 32, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3409, file: !2685, line: 164, baseType: !18, size: 32, offset: 288)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3409, file: !2685, line: 165, baseType: !18, size: 32, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3409, file: !2685, line: 166, baseType: !18, size: 32, offset: 352)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3409, file: !2685, line: 168, baseType: !3420, size: 192, offset: 384)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !2685, line: 134, size: 192, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3420, file: !2685, line: 135, baseType: !203, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3420, file: !2685, line: 136, baseType: !35, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3420, file: !2685, line: 137, baseType: !18, size: 32, offset: 96)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3420, file: !2685, line: 138, baseType: !18, size: 32, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3409, file: !2685, line: 169, baseType: !3420, size: 192, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 171, baseType: !3428, size: 512)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 171, size: 512, elements: !3429)
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3428, file: !2685, line: 172, baseType: !271, size: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 174, baseType: !3432, size: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 174, size: 128, elements: !3433)
!3433 = !{!3434}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3432, file: !2685, line: 176, baseType: !96, size: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 178, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 178, size: 128, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3436, file: !2685, line: 179, baseType: !203, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3436, file: !2685, line: 180, baseType: !203, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 183, baseType: !3441, size: 320)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 183, size: 320, elements: !3442)
!3442 = !{!3443, !3451}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3441, file: !2685, line: 189, baseType: !3444, size: 192)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3445, line: 14, size: 192, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3446 = !{!3447, !3448, !3449, !3450}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3444, file: !3445, line: 15, baseType: !147, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3444, file: !3445, line: 16, baseType: !147, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3444, file: !3445, line: 17, baseType: !61, size: 8, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3444, file: !3445, line: 18, baseType: !61, size: 8, offset: 136)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3441, file: !2685, line: 190, baseType: !3452, size: 128, offset: 192)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3453, line: 21, size: 128, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3454 = !{!3455, !3460}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3452, file: !3453, line: 22, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3453, line: 17, size: 64, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3456, file: !3453, line: 18, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3452, file: !3453, line: 23, baseType: !3461, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !2685, line: 193, baseType: !3463, size: 192)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !2685, line: 193, size: 192, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3463, file: !2685, line: 194, baseType: !61, size: 8)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3463, file: !2685, line: 195, baseType: !61, size: 8, offset: 8)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3463, file: !2685, line: 196, baseType: !71, size: 16, offset: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3463, file: !2685, line: 197, baseType: !203, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3463, file: !2685, line: 198, baseType: !203, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3403, file: !2685, line: 205, baseType: !138, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3403, file: !2685, line: 211, baseType: !132, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3403, file: !2685, line: 214, baseType: !147, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3403, file: !2685, line: 223, baseType: !18, size: 32, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3403, file: !2685, line: 229, baseType: !3306, size: 64, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3403, file: !2685, line: 234, baseType: !203, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !2685, line: 236, baseType: !3477, size: 128, offset: 1152)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !2685, line: 236, size: 128, elements: !3478)
!3478 = !{!3479, !3484}
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !2685, line: 237, baseType: !3480, size: 128)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !2685, line: 237, size: 128, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3480, file: !2685, line: 241, baseType: !203, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3480, file: !2685, line: 249, baseType: !3306, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !2685, line: 251, baseType: !3485, size: 128)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !2685, line: 251, size: 128, elements: !3486)
!3486 = !{!3487, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3485, file: !2685, line: 252, baseType: !203, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3485, file: !2685, line: 253, baseType: !203, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3403, file: !2685, line: 261, baseType: !203, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3403, file: !2685, line: 262, baseType: !203, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3403, file: !2685, line: 268, baseType: !203, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3403, file: !2685, line: 269, baseType: !203, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2704, file: !2685, line: 738, baseType: !3144, size: 64, offset: 4416)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2704, file: !2685, line: 744, baseType: !3192, size: 64, offset: 4480)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2704, file: !2685, line: 745, baseType: !502, size: 64, offset: 4544)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2704, file: !2685, line: 751, baseType: !504, size: 64, offset: 4608)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2704, file: !2685, line: 752, baseType: !504, size: 64, offset: 4672)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2704, file: !2685, line: 757, baseType: !509, size: 256, offset: 4736)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2704, file: !2685, line: 758, baseType: !96, size: 128, offset: 4992)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2704, file: !2685, line: 759, baseType: !2703, size: 64, offset: 5120)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2704, file: !2685, line: 761, baseType: !18, size: 32, offset: 5184)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2704, file: !2685, line: 762, baseType: !18, size: 32, offset: 5216)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2704, file: !2685, line: 764, baseType: !96, size: 128, offset: 5248)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2704, file: !2685, line: 765, baseType: !138, size: 64, offset: 5376)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2704, file: !2685, line: 768, baseType: !509, size: 256, offset: 5440)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2704, file: !2685, line: 769, baseType: !29, size: 32, offset: 5696)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2704, file: !2685, line: 771, baseType: !3269, size: 64, offset: 5760)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2704, file: !2685, line: 772, baseType: !96, size: 128, offset: 5824)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2704, file: !2685, line: 773, baseType: !147, size: 64, offset: 5952)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2704, file: !2685, line: 774, baseType: !18, size: 32, offset: 6016)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2704, file: !2685, line: 777, baseType: !90, size: 192, offset: 6080)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2704, file: !2685, line: 778, baseType: !3513, size: 64, offset: 6272)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !490, line: 1083, size: 384, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3514, file: !490, line: 1084, baseType: !528, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3514, file: !490, line: 1085, baseType: !18, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3514, file: !490, line: 1086, baseType: !18, size: 32, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3514, file: !490, line: 1087, baseType: !3513, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3514, file: !490, line: 1088, baseType: !488, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3514, file: !490, line: 1089, baseType: !102, size: 128, align: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2704, file: !2685, line: 781, baseType: !35, size: 32, offset: 6336)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2704, file: !2685, line: 782, baseType: !35, size: 32, offset: 6368)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2704, file: !2685, line: 783, baseType: !35, size: 32, offset: 6400)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2704, file: !2685, line: 784, baseType: !35, size: 32, offset: 6432)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2704, file: !2685, line: 785, baseType: !147, size: 64, offset: 6464)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2704, file: !2685, line: 786, baseType: !3528, size: 256, offset: 6528)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3529, line: 17, size: 256, elements: !3530)
!3529 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3530 = !{!3531, !3532, !3537}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3528, file: !3529, line: 18, baseType: !160, size: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3528, file: !3529, line: 19, baseType: !3533, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3528, file: !3529, line: 20, baseType: !3538, size: 64, offset: 192)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3539, line: 16, size: 64, elements: !3540)
!3539 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3540 = !{!3541}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3538, file: !3539, line: 17, baseType: !138, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2704, file: !2685, line: 787, baseType: !102, size: 128, align: 64, offset: 6784)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2704, file: !2685, line: 788, baseType: !35, size: 32, offset: 6912)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2704, file: !2685, line: 789, baseType: !3538, size: 64, offset: 6976)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2704, file: !2685, line: 791, baseType: !29, size: 32, offset: 7040)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2704, file: !2685, line: 794, baseType: !3547, size: 192, offset: 7104)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !2685, line: 579, size: 192, elements: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3547, file: !2685, line: 580, baseType: !96, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3547, file: !2685, line: 581, baseType: !301, size: 32, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3547, file: !2685, line: 582, baseType: !35, size: 32, offset: 160)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2704, file: !2685, line: 796, baseType: !3553, size: 64, offset: 7296)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !2685, line: 585, size: 128, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3554, file: !2685, line: 586, baseType: !147, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3554, file: !2685, line: 587, baseType: !147, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2704, file: !2685, line: 797, baseType: !147, size: 64, offset: 7360)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2704, file: !2685, line: 800, baseType: !2703, size: 64, offset: 7424)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2704, file: !2685, line: 802, baseType: !3230, size: 64, offset: 7488)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2704, file: !2685, line: 803, baseType: !102, size: 128, align: 64, offset: 7552)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2704, file: !2685, line: 805, baseType: !116, size: 64, offset: 7680)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2704, file: !2685, line: 806, baseType: !203, size: 64, offset: 7744)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2704, file: !2685, line: 808, baseType: !504, size: 64, offset: 7808)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2704, file: !2685, line: 810, baseType: !3566, size: 64, offset: 7872)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!203}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2704, file: !2685, line: 811, baseType: !3570, size: 64, offset: 7936)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !2685, line: 605, baseType: !3571)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{null, !2703, !3574, !3679}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !2685, line: 1148, size: 2048, align: 512, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3586, !3587, !3588, !3593, !3594, !3601, !3622, !3644, !3654, !3672, !3673, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3575, file: !2685, line: 1153, baseType: !203, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3575, file: !2685, line: 1154, baseType: !203, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3575, file: !2685, line: 1155, baseType: !203, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3575, file: !2685, line: 1161, baseType: !203, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3575, file: !2685, line: 1165, baseType: !3582, size: 64, offset: 256)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3575, file: !2685, line: 1162, size: 64, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3582, file: !2685, line: 1163, baseType: !150, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3582, file: !2685, line: 1164, baseType: !150, size: 32, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3575, file: !2685, line: 1166, baseType: !203, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3575, file: !2685, line: 1167, baseType: !203, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3575, file: !2685, line: 1171, baseType: !3589, size: 64, offset: 448)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3575, file: !2685, line: 1168, size: 64, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3589, file: !2685, line: 1169, baseType: !150, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3589, file: !2685, line: 1170, baseType: !150, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3575, file: !2685, line: 1177, baseType: !203, size: 64, offset: 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3575, file: !2685, line: 1178, baseType: !3595, size: 64, offset: 576)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !2685, line: 67, size: 64, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3596, file: !2685, line: 68, baseType: !204, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3596, file: !2685, line: 69, baseType: !3600, offset: 64)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !955)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3575, file: !2685, line: 1179, baseType: !3602, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !2685, line: 93, size: 256, elements: !3604)
!3604 = !{!3605, !3621}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3603, file: !2685, line: 94, baseType: !3606, size: 224)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !2685, line: 83, size: 224, elements: !3607)
!3607 = !{!3608, !3614, !3619, !3620}
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !2685, line: 84, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !2685, line: 84, size: 64, elements: !3610)
!3610 = !{!3611, !3613}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3609, file: !2685, line: 85, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3609, file: !2685, line: 86, baseType: !147, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3606, file: !2685, line: 88, baseType: !3615, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !2685, line: 80, baseType: !3616)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!147, !132, !1986, !147, !147}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3606, file: !2685, line: 89, baseType: !132, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3606, file: !2685, line: 90, baseType: !150, size: 32, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3603, file: !2685, line: 95, baseType: !150, size: 32, offset: 224)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3575, file: !2685, line: 1180, baseType: !3623, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !2685, line: 123, size: 128, elements: !3625)
!3625 = !{!3626, !3627, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3624, file: !2685, line: 124, baseType: !204, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3624, file: !2685, line: 125, baseType: !204, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3624, file: !2685, line: 126, baseType: !3629, offset: 128)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3630, elements: !955)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3317, line: 1415, size: 192, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3630, file: !3317, line: 1416, baseType: !204, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3630, file: !3317, line: 1417, baseType: !204, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3630, file: !3317, line: 1418, baseType: !204, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3630, file: !3317, line: 1419, baseType: !204, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3630, file: !3317, line: 1420, baseType: !204, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3630, file: !3317, line: 1421, baseType: !204, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3630, file: !3317, line: 1422, baseType: !204, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3630, file: !3317, line: 1423, baseType: !204, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3630, file: !3317, line: 1424, baseType: !204, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3630, file: !3317, line: 1425, baseType: !204, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3630, file: !3317, line: 1426, baseType: !204, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3630, file: !3317, line: 1427, baseType: !204, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3575, file: !2685, line: 1181, baseType: !3645, size: 64, offset: 768)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3317, line: 1430, size: 64, elements: !3646)
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3645, file: !3317, line: 1431, baseType: !204, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !3317, line: 1433, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3317, line: 1433, size: 64, elements: !3650)
!3650 = !{!3651, !3652, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3649, file: !3317, line: 1434, baseType: !151, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3649, file: !3317, line: 1435, baseType: !72, size: 16, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3649, file: !3317, line: 1436, baseType: !72, size: 16, offset: 48)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3575, file: !2685, line: 1182, baseType: !3655, size: 64, offset: 832)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3317, line: 1267, size: 64, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3655, file: !3317, line: 1268, baseType: !204, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3317, line: 1269, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !3317, line: 1269, size: 64, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3659, file: !3317, line: 1270, baseType: !204, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3659, file: !3317, line: 1271, baseType: !204, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3659, file: !3317, line: 1272, baseType: !204, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3659, file: !3317, line: 1273, baseType: !204, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3659, file: !3317, line: 1274, baseType: !204, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3659, file: !3317, line: 1275, baseType: !204, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3659, file: !3317, line: 1276, baseType: !204, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3659, file: !3317, line: 1277, baseType: !204, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3659, file: !3317, line: 1278, baseType: !204, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3659, file: !3317, line: 1279, baseType: !204, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3659, file: !3317, line: 1280, baseType: !204, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3575, file: !2685, line: 1183, baseType: !203, size: 64, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3575, file: !2685, line: 1185, baseType: !3674, size: 128, offset: 960)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3675, line: 7, size: 128, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3674, file: !3675, line: 8, baseType: !204, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3674, file: !3675, line: 9, baseType: !3679, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3681, line: 103, size: 1344, elements: !3682)
!3681 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3711, !3712, !3713}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3680, file: !3681, line: 109, baseType: !147, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3680, file: !3681, line: 110, baseType: !147, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3680, file: !3681, line: 111, baseType: !147, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3680, file: !3681, line: 112, baseType: !147, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3680, file: !3681, line: 113, baseType: !147, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3680, file: !3681, line: 114, baseType: !147, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3680, file: !3681, line: 117, baseType: !147, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3680, file: !3681, line: 118, baseType: !147, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3680, file: !3681, line: 119, baseType: !147, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3680, file: !3681, line: 120, baseType: !147, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3680, file: !3681, line: 121, baseType: !147, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3680, file: !3681, line: 122, baseType: !147, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3680, file: !3681, line: 123, baseType: !147, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3680, file: !3681, line: 124, baseType: !147, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3680, file: !3681, line: 125, baseType: !147, size: 64, offset: 896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3680, file: !3681, line: 139, baseType: !147, size: 64, offset: 960)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3680, file: !3681, line: 142, baseType: !147, size: 64, offset: 1024)
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !3681, line: 144, baseType: !3701, size: 64, offset: 1088)
!3701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !3681, line: 144, size: 64, elements: !3702)
!3702 = !{!3703, !3704, !3705}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3701, file: !3681, line: 146, baseType: !71, size: 16)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3701, file: !3681, line: 148, baseType: !203, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3701, file: !3681, line: 150, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3681, line: 59, size: 64, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3706, file: !3681, line: 61, baseType: !203, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3706, file: !3681, line: 63, baseType: !203, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3706, file: !3681, line: 65, baseType: !203, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3680, file: !3681, line: 153, baseType: !147, size: 64, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3680, file: !3681, line: 154, baseType: !147, size: 64, offset: 1216)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !3681, line: 156, baseType: !3714, size: 64, offset: 1280)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !3681, line: 156, size: 64, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3714, file: !3681, line: 158, baseType: !71, size: 16)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3714, file: !3681, line: 160, baseType: !203, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3714, file: !3681, line: 162, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3681, line: 69, size: 64, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3719, file: !3681, line: 71, baseType: !203, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3719, file: !3681, line: 73, baseType: !203, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3719, file: !3681, line: 75, baseType: !203, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3719, file: !3681, line: 77, baseType: !203, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3719, file: !3681, line: 80, baseType: !203, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3719, file: !3681, line: 83, baseType: !203, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3719, file: !3681, line: 86, baseType: !203, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3719, file: !3681, line: 88, baseType: !203, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3719, file: !3681, line: 93, baseType: !203, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3719, file: !3681, line: 100, baseType: !203, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3575, file: !2685, line: 1186, baseType: !3674, size: 128, offset: 1088)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3575, file: !2685, line: 1187, baseType: !203, size: 64, offset: 1216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3575, file: !2685, line: 1189, baseType: !203, size: 64, offset: 1280)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3575, file: !2685, line: 1190, baseType: !203, size: 64, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3575, file: !2685, line: 1191, baseType: !203, size: 64, offset: 1408)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3575, file: !2685, line: 1192, baseType: !203, size: 64, offset: 1472)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3575, file: !2685, line: 1193, baseType: !203, size: 64, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3575, file: !2685, line: 1194, baseType: !203, size: 64, offset: 1600)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3575, file: !2685, line: 1195, baseType: !203, size: 64, offset: 1664)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2704, file: !2685, line: 812, baseType: !132, size: 64, offset: 8000)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2704, file: !2685, line: 820, baseType: !2479, size: 64, offset: 8064)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2704, file: !2685, line: 821, baseType: !2683, size: 64, offset: 8128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2704, file: !2685, line: 828, baseType: !3744, size: 64, offset: 8192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !2685, line: 1046, size: 1664, elements: !3746)
!3746 = !{!3747, !4005}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3745, file: !2685, line: 1047, baseType: !3748, size: 1600)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3749, line: 152, size: 1600, elements: !3750)
!3749 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3750 = !{!3751, !3861, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4004}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3748, file: !3749, line: 154, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3749, line: 389, size: 7872, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3774, !3775, !3779, !3780, !3781, !3782, !3783, !3788, !3804, !3805, !3807, !3808, !3809, !3831, !3832, !3833, !3834, !3840, !3841, !3842, !3843, !3844, !3848, !3851, !3852, !3859}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3753, file: !3749, line: 391, baseType: !3748, size: 1600)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3753, file: !3749, line: 393, baseType: !147, size: 64, offset: 1600)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3753, file: !3749, line: 401, baseType: !18, size: 32, offset: 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3753, file: !3749, line: 404, baseType: !18, size: 32, offset: 1696)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3753, file: !3749, line: 417, baseType: !18, size: 32, offset: 1728)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3753, file: !3749, line: 418, baseType: !18, size: 32, offset: 1760)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3753, file: !3749, line: 419, baseType: !18, size: 32, offset: 1792)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3753, file: !3749, line: 432, baseType: !18, size: 32, offset: 1824)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3753, file: !3749, line: 433, baseType: !18, size: 32, offset: 1856)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3753, file: !3749, line: 434, baseType: !18, size: 32, offset: 1888)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3753, file: !3749, line: 436, baseType: !18, size: 32, offset: 1920)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3753, file: !3749, line: 439, baseType: !35, size: 32, offset: 1952)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3753, file: !3749, line: 441, baseType: !2004, size: 64, offset: 1984)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3753, file: !3749, line: 442, baseType: !3769, size: 448, offset: 2048)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3749, line: 138, size: 448, elements: !3770)
!3770 = !{!3771, !3772, !3773}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3769, file: !3749, line: 140, baseType: !2004, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3769, file: !3749, line: 141, baseType: !147, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3769, file: !3749, line: 142, baseType: !2399, size: 320, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3753, file: !3749, line: 443, baseType: !3769, size: 448, offset: 2496)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3753, file: !3749, line: 446, baseType: !3776, offset: 2944)
!3776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3769, elements: !3777)
!3777 = !{!3778}
!3778 = !DISubrange(count: 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3753, file: !3749, line: 455, baseType: !71, size: 16, offset: 2944)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3753, file: !3749, line: 456, baseType: !71, size: 16, offset: 2960)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3753, file: !3749, line: 457, baseType: !71, size: 16, offset: 2976)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3753, file: !3749, line: 458, baseType: !71, size: 16, offset: 2992)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3753, file: !3749, line: 461, baseType: !3784, size: 896, offset: 3008)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3785, size: 896, elements: !3786)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3786 = !{!3787}
!3787 = !DISubrange(count: 14)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3753, file: !3749, line: 463, baseType: !3789, size: 64, offset: 3904)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3749, line: 537, size: 41664, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3790, file: !3749, line: 538, baseType: !2024, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3790, file: !3749, line: 541, baseType: !35, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3790, file: !3749, line: 544, baseType: !18, size: 32, offset: 96)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3790, file: !3749, line: 547, baseType: !96, size: 128, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3790, file: !3749, line: 548, baseType: !102, size: 128, align: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3790, file: !3749, line: 555, baseType: !3753, size: 7872, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3790, file: !3749, line: 558, baseType: !3752, size: 64, offset: 8256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3790, file: !3749, line: 561, baseType: !29, size: 32, offset: 8320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3790, file: !3749, line: 564, baseType: !35, size: 32, offset: 8352)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3790, file: !3749, line: 567, baseType: !2645, size: 32768, offset: 8384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3790, file: !3749, line: 570, baseType: !3803, size: 512, offset: 41152)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1313)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3753, file: !3749, line: 469, baseType: !96, size: 128, offset: 3968)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3753, file: !3749, line: 478, baseType: !3806, size: 1792, offset: 4096)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1792, elements: !3786)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3753, file: !3749, line: 487, baseType: !3752, size: 64, offset: 5888)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3753, file: !3749, line: 488, baseType: !3752, size: 64, offset: 5952)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3753, file: !3749, line: 491, baseType: !3810, size: 64, offset: 6016)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3749, line: 327, size: 896, elements: !3812)
!3812 = !{!3813, !3816, !3826, !3827, !3828, !3829, !3830}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3811, file: !3749, line: 332, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3815, line: 64, elements: !481)
!3815 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3811, file: !3749, line: 333, baseType: !3817, size: 192)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3749, line: 299, size: 192, elements: !3818)
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3817, file: !3749, line: 300, baseType: !3820, size: 192)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3821, line: 17, size: 192, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3820, file: !3821, line: 18, baseType: !203, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3820, file: !3821, line: 19, baseType: !203, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3820, file: !3821, line: 20, baseType: !205, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3811, file: !3749, line: 339, baseType: !3817, size: 192, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3811, file: !3749, line: 347, baseType: !3817, size: 192, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3811, file: !3749, line: 353, baseType: !3817, size: 192, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3811, file: !3749, line: 366, baseType: !3752, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3811, file: !3749, line: 367, baseType: !3752, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3753, file: !3749, line: 492, baseType: !96, size: 128, offset: 6080)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3753, file: !3749, line: 495, baseType: !3817, size: 192, offset: 6208)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3753, file: !3749, line: 496, baseType: !3817, size: 192, offset: 6400)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3753, file: !3749, line: 497, baseType: !3835, size: 192, offset: 6592)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !140, line: 324, size: 192, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3835, file: !140, line: 326, baseType: !203, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3835, file: !140, line: 327, baseType: !203, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3835, file: !140, line: 328, baseType: !301, size: 32, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3753, file: !3749, line: 503, baseType: !96, size: 128, offset: 6784)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3753, file: !3749, line: 504, baseType: !509, size: 256, offset: 6912)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3753, file: !3749, line: 507, baseType: !90, size: 192, offset: 7168)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3753, file: !3749, line: 510, baseType: !813, size: 256, offset: 7360)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3753, file: !3749, line: 513, baseType: !3845, size: 64, offset: 7616)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3847, line: 214, elements: !481)
!3847 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3753, file: !3749, line: 516, baseType: !3849, offset: 7680)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3850, line: 76, elements: !481)
!3850 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3753, file: !3749, line: 519, baseType: !29, size: 32, offset: 7680)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3753, file: !3749, line: 522, baseType: !3853, size: 128, offset: 7712)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3749, line: 370, size: 128, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3853, file: !3749, line: 372, baseType: !678, size: 8)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3853, file: !3749, line: 375, baseType: !18, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3853, file: !3749, line: 380, baseType: !18, size: 32, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3853, file: !3749, line: 386, baseType: !18, size: 32, offset: 96)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3753, file: !3749, line: 529, baseType: !3860, offset: 7872)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3752, elements: !955)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3748, file: !3749, line: 157, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3749, line: 669, size: 1984, elements: !3864)
!3864 = !{!3865, !3869, !3873, !3877, !3878, !3879, !3880, !3884, !3888, !3889, !3895, !3899, !3900, !3901, !3930, !3934, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3987, !3988}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3863, file: !3749, line: 670, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!3785, !3785}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3863, file: !3749, line: 671, baseType: !3870, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!18, !3785}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3863, file: !3749, line: 672, baseType: !3874, size: 64, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3785}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3863, file: !3749, line: 673, baseType: !3874, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3863, file: !3749, line: 674, baseType: !3874, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3863, file: !3749, line: 675, baseType: !3874, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3863, file: !3749, line: 676, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3785, !18}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3863, file: !3749, line: 677, baseType: !3885, size: 64, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!18, !2049, !3785}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3863, file: !3749, line: 679, baseType: !3885, size: 64, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3863, file: !3749, line: 682, baseType: !3890, size: 64, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!18, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3749, line: 30, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3863, file: !3749, line: 683, baseType: !3896, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3893}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3863, file: !3749, line: 684, baseType: !3896, size: 64, offset: 704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3863, file: !3749, line: 685, baseType: !2584, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3863, file: !3749, line: 686, baseType: !3902, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!18, !138, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3749, line: 209, size: 4736, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3906, file: !3749, line: 215, baseType: !3784, size: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3906, file: !3749, line: 218, baseType: !24, size: 32, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3906, file: !3749, line: 226, baseType: !3905, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3906, file: !3749, line: 229, baseType: !3752, size: 64, offset: 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3906, file: !3749, line: 232, baseType: !18, size: 32, offset: 1088)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3906, file: !3749, line: 241, baseType: !96, size: 128, offset: 1152)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3906, file: !3749, line: 242, baseType: !96, size: 128, offset: 1280)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3906, file: !3749, line: 243, baseType: !96, size: 128, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3906, file: !3749, line: 246, baseType: !96, size: 128, offset: 1536)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3906, file: !3749, line: 255, baseType: !3806, size: 1792, offset: 1664)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3906, file: !3749, line: 258, baseType: !96, size: 128, offset: 3456)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3906, file: !3749, line: 259, baseType: !96, size: 128, offset: 3584)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3906, file: !3749, line: 265, baseType: !81, size: 128, offset: 3712)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3906, file: !3749, line: 271, baseType: !96, size: 128, offset: 3840)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3906, file: !3749, line: 277, baseType: !96, size: 128, offset: 3968)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3906, file: !3749, line: 278, baseType: !96, size: 128, offset: 4096)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3906, file: !3749, line: 279, baseType: !96, size: 128, offset: 4224)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3906, file: !3749, line: 288, baseType: !3752, size: 64, offset: 4352)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3906, file: !3749, line: 289, baseType: !3752, size: 64, offset: 4416)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3906, file: !3749, line: 290, baseType: !3905, size: 64, offset: 4480)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3906, file: !3749, line: 293, baseType: !678, size: 8, offset: 4544)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3906, file: !3749, line: 296, baseType: !102, size: 128, align: 64, offset: 4608)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3863, file: !3749, line: 688, baseType: !3931, size: 64, offset: 896)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !138, !3905}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3863, file: !3749, line: 689, baseType: !3935, size: 64, offset: 960)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !138}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3863, file: !3749, line: 690, baseType: !3935, size: 64, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3863, file: !3749, line: 691, baseType: !3935, size: 64, offset: 1088)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3863, file: !3749, line: 692, baseType: !3874, size: 64, offset: 1152)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3863, file: !3749, line: 694, baseType: !678, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3863, file: !3749, line: 707, baseType: !678, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3863, file: !3749, line: 719, baseType: !678, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3863, file: !3749, line: 722, baseType: !18, size: 32, offset: 1248)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3863, file: !3749, line: 723, baseType: !681, size: 64, offset: 1280)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3863, file: !3749, line: 726, baseType: !681, size: 64, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3863, file: !3749, line: 729, baseType: !3789, size: 64, offset: 1408)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3863, file: !3749, line: 732, baseType: !121, size: 192, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3863, file: !3749, line: 738, baseType: !96, size: 128, offset: 1664)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3863, file: !3749, line: 744, baseType: !3951, size: 64, offset: 1792)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3749, line: 580, size: 1728, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3963, !3964, !3965, !3969, !3973, !3974, !3975, !3976, !3977, !3981, !3985, !3986}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3952, file: !3749, line: 586, baseType: !3803, size: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3952, file: !3749, line: 587, baseType: !147, size: 64, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3952, file: !3749, line: 593, baseType: !865, size: 64, offset: 576)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3952, file: !3749, line: 596, baseType: !35, size: 32, offset: 640)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3952, file: !3749, line: 604, baseType: !35, size: 32, offset: 672)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3952, file: !3749, line: 610, baseType: !3862, size: 64, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3952, file: !3749, line: 611, baseType: !96, size: 128, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3952, file: !3749, line: 612, baseType: !3962, size: 64, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3952, file: !3749, line: 614, baseType: !2040, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3952, file: !3749, line: 615, baseType: !2098, size: 64, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3952, file: !3749, line: 621, baseType: !3966, size: 64, offset: 1088)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!203, !3785, !3951}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3952, file: !3749, line: 625, baseType: !3970, size: 64, offset: 1152)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!214, !3785, !3951}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3952, file: !3749, line: 628, baseType: !2079, size: 64, offset: 1216)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3952, file: !3749, line: 631, baseType: !2067, size: 64, offset: 1280)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3952, file: !3749, line: 632, baseType: !2075, size: 64, offset: 1344)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3952, file: !3749, line: 633, baseType: !2071, size: 64, offset: 1408)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3952, file: !3749, line: 640, baseType: !3978, size: 64, offset: 1472)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!18, !3785, !3951, !203}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3952, file: !3749, line: 645, baseType: !3982, size: 64, offset: 1536)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!18, !3785, !3951, !214}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3952, file: !3749, line: 654, baseType: !2106, size: 64, offset: 1600)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3952, file: !3749, line: 657, baseType: !2113, size: 64, offset: 1664)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3863, file: !3749, line: 745, baseType: !3951, size: 64, offset: 1856)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3863, file: !3749, line: 754, baseType: !35, size: 32, offset: 1920)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3748, file: !3749, line: 160, baseType: !1459, size: 128, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3748, file: !3749, line: 163, baseType: !96, size: 128, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3748, file: !3749, line: 164, baseType: !96, size: 128, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3748, file: !3749, line: 167, baseType: !96, size: 128, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3748, file: !3749, line: 173, baseType: !18, size: 32, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3748, file: !3749, line: 175, baseType: !35, size: 32, offset: 672)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3748, file: !3749, line: 183, baseType: !203, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3748, file: !3749, line: 189, baseType: !29, size: 32, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3748, file: !3749, line: 192, baseType: !813, size: 256, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3748, file: !3749, line: 193, baseType: !3999, size: 448, offset: 1088)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !814, line: 120, size: 448, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3999, file: !814, line: 121, baseType: !813, size: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3999, file: !814, line: 122, baseType: !102, size: 128, align: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3999, file: !814, line: 125, baseType: !2461, size: 64, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3748, file: !3749, line: 199, baseType: !3785, size: 64, offset: 1536)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3745, file: !2685, line: 1048, baseType: !4006, size: 64, offset: 1600)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !2685, line: 1039, size: 256, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4007, file: !2685, line: 1040, baseType: !203, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4007, file: !2685, line: 1041, baseType: !203, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4007, file: !2685, line: 1042, baseType: !203, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4007, file: !2685, line: 1043, baseType: !18, size: 32, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2704, file: !2685, line: 832, baseType: !132, size: 64, offset: 8256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2704, file: !2685, line: 834, baseType: !96, size: 128, offset: 8320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2704, file: !2685, line: 842, baseType: !151, size: 32, offset: 8448)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1251, file: !1252, line: 524, baseType: !35, size: 32, offset: 8320)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1251, file: !1252, line: 525, baseType: !4018, size: 64, offset: 8384)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4021, line: 28, size: 192, elements: !4022)
!4021 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4022 = !{!4023, !4024, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4020, file: !4021, line: 29, baseType: !681, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4020, file: !4021, line: 30, baseType: !681, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4020, file: !4021, line: 31, baseType: !147, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1251, file: !1252, line: 526, baseType: !35, size: 32, offset: 8448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1251, file: !1252, line: 533, baseType: !132, size: 64, offset: 8512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1251, file: !1252, line: 534, baseType: !35, size: 32, offset: 8576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1251, file: !1252, line: 535, baseType: !4030, size: 64, offset: 8640)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1251, file: !1252, line: 536, baseType: !35, size: 32, offset: 8704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1251, file: !1252, line: 539, baseType: !18, size: 32, offset: 8736)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1251, file: !1252, line: 540, baseType: !2573, size: 64, offset: 8768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1251, file: !1252, line: 563, baseType: !96, size: 128, offset: 8832)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1251, file: !1252, line: 565, baseType: !96, size: 128, offset: 8960)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1251, file: !1252, line: 568, baseType: !2584, size: 64, offset: 9088)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1251, file: !1252, line: 570, baseType: !29, size: 32, offset: 9152)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1227, file: !490, line: 2382, baseType: !1226, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1227, file: !490, line: 2383, baseType: !77, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1227, file: !490, line: 2385, baseType: !4041, offset: 576)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2428, line: 206, elements: !481)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1227, file: !490, line: 2386, baseType: !4041, offset: 576)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1227, file: !490, line: 2387, baseType: !4041, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1227, file: !490, line: 2388, baseType: !4045, offset: 576)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4041, elements: !547)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1227, file: !490, line: 2390, baseType: !4041, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1227, file: !490, line: 2391, baseType: !4041, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1227, file: !490, line: 2392, baseType: !4041, offset: 576)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1227, file: !490, line: 2393, baseType: !4041, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1218, file: !490, line: 1197, baseType: !4051, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !490, line: 2057, size: 1664, elements: !4054)
!4054 = !{!4055, !4059, !4063, !4064, !4068, !4072, !4076, !4077, !4078, !4082, !4090, !4094, !4095, !4096, !4102, !4106, !4107, !4111, !4112, !4113, !4114, !4118, !4122, !4175, !4190, !4191}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4053, file: !490, line: 2058, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!1016, !1217}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4053, file: !490, line: 2059, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !1016}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4053, file: !490, line: 2060, baseType: !4060, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4053, file: !490, line: 2062, baseType: !4065, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !1016, !18}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4053, file: !490, line: 2063, baseType: !4069, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!18, !1016, !1704}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4053, file: !490, line: 2064, baseType: !4073, size: 64, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!18, !1016}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4053, file: !490, line: 2065, baseType: !4060, size: 64, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4053, file: !490, line: 2066, baseType: !1246, size: 64, offset: 448)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4053, file: !490, line: 2067, baseType: !4079, size: 64, offset: 512)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!18, !1217, !18}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4053, file: !490, line: 2068, baseType: !4083, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!18, !1217, !4086}
!4086 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !490, line: 2052, baseType: !35, size: 32, elements: !4087)
!4087 = !{!4088, !4089}
!4088 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!4089 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4053, file: !490, line: 2069, baseType: !4091, size: 64, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!18, !1217}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4053, file: !490, line: 2070, baseType: !4083, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4053, file: !490, line: 2071, baseType: !4091, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4053, file: !490, line: 2072, baseType: !4097, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!18, !981, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !490, line: 62, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4053, file: !490, line: 2073, baseType: !4103, size: 64, offset: 896)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!18, !1217, !2298, !691}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4053, file: !490, line: 2074, baseType: !1246, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4053, file: !490, line: 2076, baseType: !4108, size: 64, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!18, !2049, !981}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4053, file: !490, line: 2077, baseType: !4108, size: 64, offset: 1088)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4053, file: !490, line: 2078, baseType: !4108, size: 64, offset: 1152)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4053, file: !490, line: 2079, baseType: !4108, size: 64, offset: 1216)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4053, file: !490, line: 2081, baseType: !4115, size: 64, offset: 1280)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!1168, !1217, !18, !691, !865, !521}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4053, file: !490, line: 2082, baseType: !4119, size: 64, offset: 1344)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!1168, !1217, !18, !681, !865, !521}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4053, file: !490, line: 2083, baseType: !4123, size: 64, offset: 1408)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!4126, !1016}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !4129, line: 296, size: 1664, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4160, !4161, !4162}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4128, file: !4129, line: 297, baseType: !81, size: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4128, file: !4129, line: 298, baseType: !96, size: 128, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4128, file: !4129, line: 299, baseType: !96, size: 128, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4128, file: !4129, line: 300, baseType: !96, size: 128, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4128, file: !4129, line: 301, baseType: !509, size: 256, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4128, file: !4129, line: 302, baseType: !37, size: 32, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4128, file: !4129, line: 303, baseType: !29, size: 32, offset: 800)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4128, file: !4129, line: 304, baseType: !1217, size: 64, offset: 832)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4128, file: !4129, line: 305, baseType: !4140, size: 64, offset: 896)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !4129, line: 68, size: 64, elements: !4141)
!4141 = !{!4142, !4154}
!4142 = !DIDerivedType(tag: DW_TAG_member, scope: !4140, file: !4129, line: 69, baseType: !4143, size: 32)
!4143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4140, file: !4129, line: 69, size: 32, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4143, file: !4129, line: 70, baseType: !560, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4143, file: !4129, line: 71, baseType: !578, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4143, file: !4129, line: 72, baseType: !4148, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4149, line: 24, baseType: !4150)
!4149 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4149, line: 22, size: 32, elements: !4151)
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4150, file: !4149, line: 23, baseType: !4153, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4149, line: 20, baseType: !566)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4140, file: !4129, line: 74, baseType: !4155, size: 32, offset: 32)
!4155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !4129, line: 54, baseType: !35, size: 32, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIEnumerator(name: "USRQUOTA", value: 0)
!4158 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!4159 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4128, file: !4129, line: 306, baseType: !521, size: 64, offset: 960)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4128, file: !4129, line: 307, baseType: !147, size: 64, offset: 1024)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4128, file: !4129, line: 308, baseType: !4163, size: 576, offset: 1088)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !4129, line: 205, size: 576, elements: !4164)
!4164 = !{!4165, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4163, file: !4129, line: 206, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !4129, line: 66, baseType: !216)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4163, file: !4129, line: 207, baseType: !4166, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4163, file: !4129, line: 208, baseType: !4166, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4163, file: !4129, line: 209, baseType: !4166, size: 64, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4163, file: !4129, line: 210, baseType: !4166, size: 64, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4163, file: !4129, line: 211, baseType: !4166, size: 64, offset: 320)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4163, file: !4129, line: 212, baseType: !4166, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4163, file: !4129, line: 213, baseType: !635, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4163, file: !4129, line: 214, baseType: !635, size: 64, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4053, file: !490, line: 2085, baseType: !4176, size: 64, offset: 1472)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!943, !1217, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4181, line: 15, size: 256, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4182 = !{!4183, !4184, !4185, !4186, !4187}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4180, file: !4181, line: 16, baseType: !130, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4180, file: !4181, line: 19, baseType: !18, size: 32, offset: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4180, file: !4181, line: 26, baseType: !147, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4180, file: !4181, line: 33, baseType: !147, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4180, file: !4181, line: 36, baseType: !4188, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !461, line: 33, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4053, file: !490, line: 2087, baseType: !4176, size: 64, offset: 1536)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4053, file: !490, line: 2089, baseType: !1246, size: 64, offset: 1600)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1218, file: !490, line: 1198, baseType: !4193, size: 64, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !4129, line: 324, size: 704, elements: !4196)
!4196 = !{!4197, !4201, !4205, !4209, !4210, !4211, !4212, !4213, !4218, !4223, !4227}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4195, file: !4129, line: 325, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!18, !4127}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4195, file: !4129, line: 326, baseType: !4202, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!4127, !1217, !18}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4195, file: !4129, line: 327, baseType: !4206, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !4127}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4195, file: !4129, line: 328, baseType: !4198, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4195, file: !4129, line: 329, baseType: !4198, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4195, file: !4129, line: 330, baseType: !4198, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4195, file: !4129, line: 331, baseType: !4079, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4195, file: !4129, line: 334, baseType: !4214, size: 64, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!4217, !1016}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4195, file: !4129, line: 335, baseType: !4219, size: 64, offset: 512)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!18, !1016, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4195, file: !4129, line: 337, baseType: !4224, size: 64, offset: 576)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!18, !1016, !4217}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4195, file: !4129, line: 339, baseType: !4228, size: 64, offset: 640)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!18, !1217, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1218, file: !490, line: 1199, baseType: !4233, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !4129, line: 430, size: 704, elements: !4236)
!4236 = !{!4237, !4241, !4242, !4246, !4247, !4248, !4263, !4286, !4290, !4291, !4314}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4235, file: !4129, line: 431, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!18, !1217, !18, !18, !1137}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4235, file: !4129, line: 432, baseType: !4079, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4235, file: !4129, line: 433, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!18, !1217, !35}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4235, file: !4129, line: 434, baseType: !4243, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4235, file: !4129, line: 435, baseType: !4079, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4235, file: !4129, line: 436, baseType: !4249, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!18, !1217, !18, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !4129, line: 417, size: 256, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4253, file: !4129, line: 418, baseType: !18, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4253, file: !4129, line: 419, baseType: !35, size: 32, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4253, file: !4129, line: 420, baseType: !35, size: 32, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4253, file: !4129, line: 422, baseType: !35, size: 32, offset: 96)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4253, file: !4129, line: 423, baseType: !35, size: 32, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4253, file: !4129, line: 424, baseType: !35, size: 32, offset: 160)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4253, file: !4129, line: 425, baseType: !35, size: 32, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4253, file: !4129, line: 426, baseType: !35, size: 32, offset: 224)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4235, file: !4129, line: 437, baseType: !4264, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!18, !1217, !4140, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !4129, line: 345, size: 960, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4268, file: !4129, line: 346, baseType: !18, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4268, file: !4129, line: 347, baseType: !203, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4268, file: !4129, line: 348, baseType: !203, size: 64, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4268, file: !4129, line: 349, baseType: !203, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4268, file: !4129, line: 350, baseType: !203, size: 64, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4268, file: !4129, line: 351, baseType: !203, size: 64, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4268, file: !4129, line: 352, baseType: !203, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4268, file: !4129, line: 353, baseType: !214, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4268, file: !4129, line: 355, baseType: !214, size: 64, offset: 512)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4268, file: !4129, line: 356, baseType: !18, size: 32, offset: 576)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4268, file: !4129, line: 357, baseType: !18, size: 32, offset: 608)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4268, file: !4129, line: 358, baseType: !203, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4268, file: !4129, line: 359, baseType: !203, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4268, file: !4129, line: 360, baseType: !203, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4268, file: !4129, line: 361, baseType: !214, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4268, file: !4129, line: 362, baseType: !18, size: 32, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4235, file: !4129, line: 438, baseType: !4287, size: 64, offset: 448)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!18, !1217, !4231, !4267}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4235, file: !4129, line: 440, baseType: !4264, size: 64, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4235, file: !4129, line: 441, baseType: !4292, size: 64, offset: 576)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!18, !1217, !4295}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !4129, line: 411, size: 1408, elements: !4297)
!4297 = !{!4298, !4299}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4296, file: !4129, line: 412, baseType: !35, size: 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4296, file: !4129, line: 413, baseType: !4300, size: 1344, offset: 64)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4301, size: 1344, elements: !547)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !4129, line: 397, size: 448, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4313}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4301, file: !4129, line: 398, baseType: !35, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4301, file: !4129, line: 399, baseType: !35, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4301, file: !4129, line: 401, baseType: !35, size: 32, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4301, file: !4129, line: 402, baseType: !35, size: 32, offset: 96)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4301, file: !4129, line: 403, baseType: !35, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4301, file: !4129, line: 404, baseType: !35, size: 32, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4301, file: !4129, line: 405, baseType: !35, size: 32, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4301, file: !4129, line: 406, baseType: !205, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4301, file: !4129, line: 407, baseType: !4312, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !203)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4301, file: !4129, line: 408, baseType: !4312, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4235, file: !4129, line: 442, baseType: !4243, size: 64, offset: 640)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1218, file: !490, line: 1200, baseType: !4316, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !490, line: 54, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1218, file: !490, line: 1201, baseType: !147, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1218, file: !490, line: 1202, baseType: !147, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1218, file: !490, line: 1203, baseType: !147, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1218, file: !490, line: 1204, baseType: !981, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1218, file: !490, line: 1205, baseType: !619, size: 320, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1218, file: !490, line: 1206, baseType: !18, size: 32, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1218, file: !490, line: 1207, baseType: !29, size: 32, offset: 1248)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1218, file: !490, line: 1209, baseType: !132, size: 64, offset: 1280)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1218, file: !490, line: 1211, baseType: !4328, size: 64, offset: 1344)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !490, line: 1211, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1218, file: !490, line: 1223, baseType: !4333, size: 64, offset: 1408)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !993, line: 34, size: 64, elements: !4334)
!4334 = !{!4335}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4333, file: !993, line: 35, baseType: !996, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1218, file: !490, line: 1224, baseType: !96, size: 128, offset: 1472)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1218, file: !490, line: 1225, baseType: !4338, size: 64, offset: 1600)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !490, line: 1225, flags: DIFlagFwdDecl)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1218, file: !490, line: 1226, baseType: !4341, size: 64, offset: 1664)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !490, line: 1226, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1218, file: !490, line: 1227, baseType: !4344, size: 64, offset: 1728)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !490, line: 50, flags: DIFlagFwdDecl)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1218, file: !490, line: 1228, baseType: !4347, size: 64, offset: 1792)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !490, line: 1228, flags: DIFlagFwdDecl)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1218, file: !490, line: 1229, baseType: !81, size: 128, offset: 1856)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1218, file: !490, line: 1230, baseType: !35, size: 32, offset: 1984)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1218, file: !490, line: 1231, baseType: !4352, size: 2496, offset: 2048)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !4129, line: 521, size: 2496, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4358, !4390}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4352, file: !4129, line: 522, baseType: !35, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4352, file: !4129, line: 523, baseType: !619, size: 320, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4352, file: !4129, line: 524, baseType: !4357, size: 192, offset: 384)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 192, elements: !547)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4352, file: !4129, line: 525, baseType: !4359, size: 1728, offset: 576)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4360, size: 1728, elements: !547)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !4129, line: 222, size: 576, elements: !4361)
!4361 = !{!4362, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4360, file: !4129, line: 223, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !4129, line: 445, size: 256, elements: !4365)
!4365 = !{!4366, !4367, !4380, !4381}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4364, file: !4129, line: 446, baseType: !18, size: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4364, file: !4129, line: 447, baseType: !4368, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !4129, line: 312, size: 512, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4370, file: !4129, line: 313, baseType: !4079, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4370, file: !4129, line: 314, baseType: !4079, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4370, file: !4129, line: 315, baseType: !4079, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4370, file: !4129, line: 316, baseType: !4079, size: 64, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4370, file: !4129, line: 317, baseType: !4198, size: 64, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4370, file: !4129, line: 318, baseType: !4198, size: 64, offset: 320)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4370, file: !4129, line: 319, baseType: !4198, size: 64, offset: 384)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4370, file: !4129, line: 320, baseType: !4228, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4364, file: !4129, line: 448, baseType: !1250, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4364, file: !4129, line: 449, baseType: !4363, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4360, file: !4129, line: 224, baseType: !18, size: 32, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4360, file: !4129, line: 226, baseType: !96, size: 128, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4360, file: !4129, line: 227, baseType: !147, size: 64, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4360, file: !4129, line: 228, baseType: !35, size: 32, offset: 320)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4360, file: !4129, line: 229, baseType: !35, size: 32, offset: 352)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4360, file: !4129, line: 230, baseType: !4166, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4360, file: !4129, line: 231, baseType: !4166, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4360, file: !4129, line: 232, baseType: !132, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4352, file: !4129, line: 526, baseType: !4391, size: 192, offset: 2304)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 192, elements: !547)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1218, file: !490, line: 1233, baseType: !4393, size: 2368, offset: 4544)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !490, line: 1184, size: 2368, elements: !4394)
!4394 = !{!4395, !4396, !4397}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4393, file: !490, line: 1185, baseType: !73, size: 16)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4393, file: !490, line: 1186, baseType: !73, size: 16, offset: 16)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4393, file: !490, line: 1187, baseType: !4398, size: 2304, offset: 64)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4399, size: 2304, elements: !547)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4400, line: 12, size: 768, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4401 = !{!4402, !4410, !4411, !4412, !4413}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4399, file: !4400, line: 13, baseType: !4403, size: 384)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4404, line: 17, size: 384, elements: !4405)
!4404 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4405 = !{!4406, !4407, !4408, !4409}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4403, file: !4404, line: 18, baseType: !18, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4403, file: !4404, line: 19, baseType: !18, size: 32, offset: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4403, file: !4404, line: 20, baseType: !90, size: 192, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4403, file: !4404, line: 22, baseType: !102, size: 128, align: 64, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4399, file: !4400, line: 14, baseType: !2250, size: 64, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4399, file: !4400, line: 15, baseType: !3538, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4399, file: !4400, line: 16, baseType: !90, size: 192, offset: 512)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4399, file: !4400, line: 17, baseType: !29, size: 32, offset: 704)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1218, file: !490, line: 1240, baseType: !132, size: 64, offset: 6912)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1218, file: !490, line: 1243, baseType: !150, size: 32, offset: 6976)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1218, file: !490, line: 1245, baseType: !635, size: 64, offset: 7040)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1218, file: !490, line: 1246, baseType: !635, size: 64, offset: 7104)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1218, file: !490, line: 1248, baseType: !151, size: 32, offset: 7168)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1218, file: !490, line: 1249, baseType: !4420, size: 64, offset: 7232)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !490, line: 634, flags: DIFlagFwdDecl)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1218, file: !490, line: 1252, baseType: !4423, size: 256, offset: 7296)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1218, file: !490, line: 1253, baseType: !4427, size: 128, offset: 7552)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4428, line: 21, baseType: !4429)
!4428 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4428, line: 19, size: 128, elements: !4430)
!4430 = !{!4431}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4429, file: !4428, line: 20, baseType: !4432, size: 128)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !4433)
!4433 = !{!4434}
!4434 = !DISubrange(count: 16)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1218, file: !490, line: 1255, baseType: !35, size: 32, offset: 7680)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1218, file: !490, line: 1261, baseType: !509, size: 256, offset: 7744)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1218, file: !490, line: 1267, baseType: !681, size: 64, offset: 8000)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1218, file: !490, line: 1269, baseType: !4439, size: 64, offset: 8064)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4441)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !983, line: 128, size: 1024, align: 512, elements: !4442)
!4442 = !{!4443, !4447, !4448, !4455, !4461, !4465, !4469, !4473, !4474, !4478, !4482, !4487, !4491}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4441, file: !983, line: 129, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!18, !981, !35}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4441, file: !983, line: 130, baseType: !4444, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4441, file: !983, line: 131, baseType: !4449, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!18, !4452, !4454}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4441, file: !983, line: 132, baseType: !4456, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!18, !4452, !35, !681, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4441, file: !983, line: 134, baseType: !4462, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!18, !4452}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4441, file: !983, line: 135, baseType: !4466, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!18, !981}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4441, file: !983, line: 136, baseType: !4470, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !981}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4441, file: !983, line: 137, baseType: !4470, size: 64, offset: 448)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4441, file: !983, line: 138, baseType: !4475, size: 64, offset: 512)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !981, !1016}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4441, file: !983, line: 139, baseType: !4479, size: 64, offset: 576)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!691, !981, !691, !18}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4441, file: !983, line: 140, baseType: !4483, size: 64, offset: 640)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!976, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4441, file: !983, line: 141, baseType: !4488, size: 64, offset: 704)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!18, !1137, !678}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4441, file: !983, line: 142, baseType: !4492, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!981, !981, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1218, file: !490, line: 1271, baseType: !4498, size: 448, offset: 8128)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4181, line: 63, size: 448, elements: !4499)
!4499 = !{!4500, !4505, !4506, !4507, !4508, !4509, !4510}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4498, file: !4181, line: 64, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!147, !4504, !4179}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4498, file: !4181, line: 66, baseType: !4501, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4498, file: !4181, line: 69, baseType: !943, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4498, file: !4181, line: 70, baseType: !18, size: 32, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4498, file: !4181, line: 71, baseType: !35, size: 32, offset: 224)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4498, file: !4181, line: 74, baseType: !96, size: 128, offset: 256)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4498, file: !4181, line: 85, baseType: !4511, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1218, file: !490, line: 1274, baseType: !502, size: 64, offset: 8576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1218, file: !490, line: 1280, baseType: !502, size: 64, offset: 8640)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1218, file: !490, line: 1283, baseType: !18, size: 32, offset: 8704)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1218, file: !490, line: 1286, baseType: !1941, size: 32, offset: 8736)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1218, file: !490, line: 1289, baseType: !2461, size: 64, offset: 8768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1218, file: !490, line: 1290, baseType: !77, size: 64, offset: 8832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1218, file: !490, line: 1297, baseType: !764, size: 64, offset: 8896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1218, file: !490, line: 1304, baseType: !4520, size: 64, offset: 8960)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4521, line: 49, size: 64, elements: !4522)
!4521 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4522 = !{!4523}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4520, file: !4521, line: 50, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4521, line: 41, size: 512, align: 512, elements: !4526)
!4526 = !{!4527, !4528, !4533}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4525, file: !4521, line: 43, baseType: !37, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4525, file: !4521, line: 45, baseType: !4529, size: 192, offset: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4521, line: 29, size: 192, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4529, file: !4521, line: 30, baseType: !96, size: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4529, file: !4521, line: 32, baseType: !943, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4525, file: !4521, line: 46, baseType: !943, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1218, file: !490, line: 1305, baseType: !4520, size: 64, offset: 9024)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1218, file: !490, line: 1306, baseType: !102, size: 128, align: 64, offset: 9088)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1218, file: !490, line: 1307, baseType: !813, size: 256, offset: 9216)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1218, file: !490, line: 1309, baseType: !509, size: 256, offset: 9472)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1218, file: !490, line: 1314, baseType: !18, size: 32, offset: 9728)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1218, file: !490, line: 1317, baseType: !37, size: 32, align: 512, offset: 10240)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1218, file: !490, line: 1318, baseType: !96, size: 128, offset: 10304)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1218, file: !490, line: 1320, baseType: !37, size: 32, offset: 10432)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1218, file: !490, line: 1321, baseType: !96, size: 128, offset: 10496)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1017, file: !490, line: 656, baseType: !1374, size: 64, offset: 512)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1017, file: !490, line: 659, baseType: !132, size: 64, offset: 576)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1017, file: !490, line: 663, baseType: !147, size: 64, offset: 640)
!4546 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !490, line: 671, baseType: !4547, size: 32, offset: 704)
!4547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !490, line: 671, size: 32, elements: !4548)
!4548 = !{!4549, !4550}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4547, file: !490, line: 672, baseType: !2520, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4547, file: !490, line: 673, baseType: !35, size: 32)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1017, file: !490, line: 675, baseType: !1090, size: 32, offset: 736)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1017, file: !490, line: 676, baseType: !521, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1017, file: !490, line: 677, baseType: !1126, size: 128, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1017, file: !490, line: 678, baseType: !1126, size: 128, offset: 960)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1017, file: !490, line: 679, baseType: !1126, size: 128, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1017, file: !490, line: 680, baseType: !37, size: 32, offset: 1216)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1017, file: !490, line: 681, baseType: !73, size: 16, offset: 1248)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1017, file: !490, line: 682, baseType: !61, size: 8, offset: 1264)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1017, file: !490, line: 683, baseType: !61, size: 8, offset: 1272)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1017, file: !490, line: 684, baseType: !4312, size: 64, offset: 1280)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1017, file: !490, line: 691, baseType: !147, size: 64, offset: 1344)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1017, file: !490, line: 692, baseType: !619, size: 320, offset: 1408)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1017, file: !490, line: 694, baseType: !147, size: 64, offset: 1728)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1017, file: !490, line: 695, baseType: !147, size: 64, offset: 1792)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1017, file: !490, line: 697, baseType: !81, size: 128, offset: 1856)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1017, file: !490, line: 698, baseType: !96, size: 128, offset: 1984)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1017, file: !490, line: 707, baseType: !96, size: 128, offset: 2112)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1017, file: !490, line: 708, baseType: !96, size: 128, offset: 2240)
!4569 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !490, line: 709, baseType: !4570, size: 128, offset: 2368)
!4570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !490, line: 709, size: 128, elements: !4571)
!4571 = !{!4572, !4573}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4570, file: !490, line: 710, baseType: !77, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4570, file: !490, line: 711, baseType: !102, size: 128, align: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1017, file: !490, line: 713, baseType: !504, size: 64, offset: 2496)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1017, file: !490, line: 714, baseType: !504, size: 64, offset: 2560)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1017, file: !490, line: 715, baseType: !29, size: 32, offset: 2624)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1017, file: !490, line: 716, baseType: !29, size: 32, offset: 2656)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1017, file: !490, line: 717, baseType: !29, size: 32, offset: 2688)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1017, file: !490, line: 719, baseType: !29, size: 32, offset: 2720)
!4580 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !490, line: 721, baseType: !4581, size: 64, offset: 2752)
!4581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !490, line: 721, size: 64, elements: !4582)
!4582 = !{!4583, !4709}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4581, file: !490, line: 722, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !490, line: 1914, size: 2112, elements: !4587)
!4587 = !{!4588, !4589, !4593, !4597, !4601, !4602, !4603, !4609, !4622, !4626, !4630, !4631, !4635, !4636, !4640, !4645, !4646, !4650, !4654, !4660, !4661, !4665, !4666, !4672, !4676, !4677, !4682, !4686, !4690, !4694, !4698, !4699, !4705}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4586, file: !490, line: 1915, baseType: !1250, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4586, file: !490, line: 1916, baseType: !4590, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!521, !488, !521, !18}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4586, file: !490, line: 1917, baseType: !4594, size: 64, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!1168, !488, !691, !865, !868}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4586, file: !490, line: 1918, baseType: !4598, size: 64, offset: 192)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!1168, !488, !681, !865, !868}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4586, file: !490, line: 1919, baseType: !1818, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4586, file: !490, line: 1920, baseType: !1818, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4586, file: !490, line: 1921, baseType: !4604, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!18, !1821, !4607, !35}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !490, line: 53, flags: DIFlagFwdDecl)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4586, file: !490, line: 1923, baseType: !4610, size: 64, offset: 448)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!18, !488, !4613}
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !490, line: 1858, size: 128, elements: !4615)
!4615 = !{!4616, !4621}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4614, file: !490, line: 1859, baseType: !4617, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !490, line: 1855, baseType: !4618)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!678, !4613, !681, !18, !521, !203, !35}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4614, file: !490, line: 1860, baseType: !521, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4586, file: !490, line: 1924, baseType: !4623, size: 64, offset: 512)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!2116, !488, !2118}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4586, file: !490, line: 1925, baseType: !4627, size: 64, offset: 576)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!943, !488, !35, !147}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4586, file: !490, line: 1926, baseType: !4627, size: 64, offset: 640)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4586, file: !490, line: 1927, baseType: !4632, size: 64, offset: 704)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!18, !488, !1512}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4586, file: !490, line: 1928, baseType: !147, size: 64, offset: 768)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4586, file: !490, line: 1929, baseType: !4637, size: 64, offset: 832)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!18, !1016, !488}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4586, file: !490, line: 1930, baseType: !4641, size: 64, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!18, !488, !4644}
!4644 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !490, line: 1061, baseType: !132)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4586, file: !490, line: 1931, baseType: !4637, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4586, file: !490, line: 1932, baseType: !4647, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!18, !488, !521, !521, !18}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4586, file: !490, line: 1933, baseType: !4651, size: 64, offset: 1088)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!18, !18, !488, !18}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4586, file: !490, line: 1934, baseType: !4655, size: 64, offset: 1152)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!18, !488, !18, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !490, line: 1063, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4586, file: !490, line: 1935, baseType: !485, size: 64, offset: 1216)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4586, file: !490, line: 1936, baseType: !4662, size: 64, offset: 1280)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!18, !18}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4586, file: !490, line: 1937, baseType: !4655, size: 64, offset: 1344)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4586, file: !490, line: 1938, baseType: !4667, size: 64, offset: 1408)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!1168, !4670, !488, !868, !865, !35}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !140, line: 59, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4586, file: !490, line: 1939, baseType: !4673, size: 64, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!1168, !488, !868, !4670, !865, !35}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4586, file: !490, line: 1940, baseType: !1931, size: 64, offset: 1536)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4586, file: !490, line: 1941, baseType: !4678, size: 64, offset: 1600)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!18, !488, !18, !4681, !1795}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4586, file: !490, line: 1942, baseType: !4683, size: 64, offset: 1664)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!943, !488, !18, !521, !521}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4586, file: !490, line: 1944, baseType: !4687, size: 64, offset: 1728)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !2049, !488}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4586, file: !490, line: 1948, baseType: !4691, size: 64, offset: 1792)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!1168, !488, !521, !488, !521, !865, !35}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4586, file: !490, line: 1950, baseType: !4695, size: 64, offset: 1856)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!521, !488, !521, !488, !521, !521, !35}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4586, file: !490, line: 1953, baseType: !4647, size: 64, offset: 1920)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4586, file: !490, line: 1954, baseType: !4700, size: 64, offset: 1984)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!18, !4703, !35}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !490, line: 1911, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4586, file: !490, line: 1955, baseType: !4706, size: 64, offset: 2048)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!18, !4703, !4607, !35}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4581, file: !490, line: 723, baseType: !4060, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1017, file: !490, line: 725, baseType: !4711, size: 64, offset: 2816)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !490, line: 725, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1017, file: !490, line: 726, baseType: !1375, size: 1536, align: 64, offset: 2880)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1017, file: !490, line: 727, baseType: !96, size: 128, offset: 4416)
!4715 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !490, line: 728, baseType: !4716, size: 64, offset: 4544)
!4716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !490, line: 728, size: 64, elements: !4717)
!4717 = !{!4718, !4719, !4722, !4723}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4716, file: !490, line: 729, baseType: !4670, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4716, file: !490, line: 730, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !490, line: 730, flags: DIFlagFwdDecl)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4716, file: !490, line: 731, baseType: !691, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4716, file: !490, line: 732, baseType: !35, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1017, file: !490, line: 735, baseType: !151, size: 32, offset: 4608)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1017, file: !490, line: 738, baseType: !151, size: 32, offset: 4640)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1017, file: !490, line: 739, baseType: !4420, size: 64, offset: 4672)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1017, file: !490, line: 750, baseType: !132, size: 64, offset: 4736)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !982, file: !983, line: 91, baseType: !4729, size: 256, offset: 448)
!4729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !4424)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !982, file: !983, line: 94, baseType: !4731, size: 64, offset: 704)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4732, line: 25, size: 64, elements: !4733)
!4732 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4733 = !{!4734}
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !4731, file: !4732, line: 26, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4731, file: !4732, line: 26, size: 64, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4735, file: !4732, line: 28, baseType: !204, size: 64, align: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, scope: !4735, file: !4732, line: 30, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4735, file: !4732, line: 30, size: 64, elements: !4740)
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4739, file: !4732, line: 31, baseType: !37, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4739, file: !4732, line: 32, baseType: !18, size: 32, offset: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !982, file: !983, line: 95, baseType: !4439, size: 64, offset: 768)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !982, file: !983, line: 96, baseType: !1217, size: 64, offset: 832)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !982, file: !983, line: 97, baseType: !147, size: 64, offset: 896)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !982, file: !983, line: 98, baseType: !132, size: 64, offset: 960)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 100, baseType: !4748, size: 128, offset: 1024)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 100, size: 128, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4748, file: !983, line: 101, baseType: !96, size: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4748, file: !983, line: 102, baseType: !2127, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !982, file: !983, line: 104, baseType: !96, size: 128, offset: 1152)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !982, file: !983, line: 105, baseType: !96, size: 128, offset: 1280)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !982, file: !983, line: 113, baseType: !4755, size: 128, offset: 1408)
!4755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 109, size: 128, elements: !4756)
!4756 = !{!4757, !4758, !4759}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4755, file: !983, line: 110, baseType: !81, size: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4755, file: !983, line: 111, baseType: !992, size: 128)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4755, file: !983, line: 112, baseType: !102, size: 128, align: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !977, file: !978, line: 72, baseType: !1217, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !977, file: !978, line: 73, baseType: !18, size: 32, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !977, file: !978, line: 74, baseType: !1055, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !972, file: !973, line: 10, baseType: !981, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !489, file: !490, line: 1015, baseType: !1016, size: 64, offset: 1344)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !489, file: !490, line: 1016, baseType: !4584, size: 64, offset: 1408)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !489, file: !490, line: 1018, baseType: !203, size: 64, offset: 1472)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !489, file: !490, line: 1020, baseType: !132, size: 64, offset: 1536)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !489, file: !490, line: 1023, baseType: !132, size: 64, offset: 1600)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !489, file: !490, line: 1027, baseType: !2695, size: 64, offset: 1664)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !489, file: !490, line: 1029, baseType: !1374, size: 64, offset: 1728)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !489, file: !490, line: 1030, baseType: !1941, size: 32, offset: 1792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !489, file: !490, line: 1031, baseType: !1941, size: 32, offset: 1824)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !464, file: !461, line: 756, baseType: !147, size: 64, offset: 704)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !464, file: !461, line: 757, baseType: !147, size: 64, offset: 768)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !464, file: !461, line: 760, baseType: !147, size: 64, offset: 832)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !464, file: !461, line: 761, baseType: !147, size: 64, offset: 896)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !464, file: !461, line: 763, baseType: !147, size: 64, offset: 960)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !464, file: !461, line: 764, baseType: !4779, size: 64, offset: 1024)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1527, line: 299, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 299, size: 64, elements: !4782)
!4782 = !{!4783}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4781, file: !1527, line: 299, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1532, line: 18, baseType: !147)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !464, file: !461, line: 773, baseType: !29, size: 32, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !464, file: !461, line: 785, baseType: !29, size: 32, offset: 1120)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !464, file: !461, line: 795, baseType: !4788, size: 64, offset: 1152)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !461, line: 726, size: 128, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4789, file: !461, line: 727, baseType: !203, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4789, file: !461, line: 728, baseType: !18, size: 32, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !464, file: !461, line: 801, baseType: !147, size: 64, offset: 1216)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !464, file: !461, line: 804, baseType: !502, size: 64, offset: 1280)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !464, file: !461, line: 806, baseType: !18, size: 32, offset: 1344)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !464, file: !461, line: 808, baseType: !37, size: 32, offset: 1376)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !464, file: !461, line: 823, baseType: !619, size: 320, offset: 1408)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !464, file: !461, line: 825, baseType: !96, size: 128, offset: 1728)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !464, file: !461, line: 845, baseType: !18, size: 32, offset: 1856)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !464, file: !461, line: 849, baseType: !147, size: 64, offset: 1920)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !464, file: !461, line: 850, baseType: !147, size: 64, offset: 1984)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !464, file: !461, line: 852, baseType: !147, size: 64, offset: 2048)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !464, file: !461, line: 853, baseType: !147, size: 64, offset: 2112)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !464, file: !461, line: 854, baseType: !504, size: 64, offset: 2176)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !464, file: !461, line: 855, baseType: !147, size: 64, offset: 2240)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !464, file: !461, line: 856, baseType: !147, size: 64, offset: 2304)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !464, file: !461, line: 857, baseType: !147, size: 64, offset: 2368)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !464, file: !461, line: 858, baseType: !147, size: 64, offset: 2432)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !464, file: !461, line: 865, baseType: !333, size: 32, offset: 2496)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !464, file: !461, line: 867, baseType: !37, size: 32, offset: 2528)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !464, file: !461, line: 869, baseType: !147, size: 64, offset: 2560)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !464, file: !461, line: 869, baseType: !147, size: 64, offset: 2624)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !464, file: !461, line: 869, baseType: !147, size: 64, offset: 2688)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !464, file: !461, line: 869, baseType: !147, size: 64, offset: 2752)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !464, file: !461, line: 870, baseType: !147, size: 64, offset: 2816)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !464, file: !461, line: 870, baseType: !147, size: 64, offset: 2880)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !464, file: !461, line: 870, baseType: !147, size: 64, offset: 2944)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !464, file: !461, line: 871, baseType: !147, size: 64, offset: 3008)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !464, file: !461, line: 871, baseType: !147, size: 64, offset: 3072)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !464, file: !461, line: 871, baseType: !147, size: 64, offset: 3136)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !464, file: !461, line: 871, baseType: !147, size: 64, offset: 3200)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !464, file: !461, line: 873, baseType: !4823, size: 3328, offset: 3264)
!4823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 3328, elements: !4824)
!4824 = !{!4825}
!4825 = !DISubrange(count: 52)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !464, file: !461, line: 875, baseType: !4827, size: 1280, offset: 6592)
!4827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 1280, elements: !86)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !464, file: !461, line: 877, baseType: !4829, size: 64, offset: 7872)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !461, line: 877, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !464, file: !461, line: 880, baseType: !4832, size: 1088, offset: 7936)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4833, line: 72, baseType: !4834)
!4833 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4833, line: 23, size: 1088, elements: !4835)
!4835 = !{!4836, !4837, !4838, !4839, !4840, !4843, !4844, !4845, !4846, !4871, !4872, !4873}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4834, file: !4833, line: 28, baseType: !203, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4834, file: !4833, line: 38, baseType: !504, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4834, file: !4833, line: 40, baseType: !147, size: 64, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4834, file: !4833, line: 43, baseType: !619, size: 320, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4834, file: !4833, line: 44, baseType: !4841, size: 64, offset: 512)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4833, line: 44, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4834, file: !4833, line: 48, baseType: !147, size: 64, offset: 576)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4834, file: !4833, line: 59, baseType: !509, size: 256, offset: 640)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4834, file: !4833, line: 60, baseType: !132, size: 64, offset: 896)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4834, file: !4833, line: 61, baseType: !4847, size: 64, offset: 960)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4849)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4850, line: 13, size: 1216, elements: !4851)
!4850 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4851 = !{!4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4849, file: !4850, line: 14, baseType: !132, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4849, file: !4850, line: 15, baseType: !147, size: 64, offset: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4849, file: !4850, line: 17, baseType: !147, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4849, file: !4850, line: 17, baseType: !147, size: 64, offset: 192)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4849, file: !4850, line: 18, baseType: !147, size: 64, offset: 256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4849, file: !4850, line: 18, baseType: !147, size: 64, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4849, file: !4850, line: 19, baseType: !1986, size: 64, offset: 384)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4849, file: !4850, line: 21, baseType: !943, size: 64, offset: 448)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4849, file: !4850, line: 23, baseType: !943, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4849, file: !4850, line: 24, baseType: !943, size: 64, offset: 576)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4849, file: !4850, line: 25, baseType: !943, size: 64, offset: 640)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4849, file: !4850, line: 26, baseType: !943, size: 64, offset: 704)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4849, file: !4850, line: 27, baseType: !943, size: 64, offset: 768)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4849, file: !4850, line: 28, baseType: !943, size: 64, offset: 832)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4849, file: !4850, line: 29, baseType: !943, size: 64, offset: 896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4849, file: !4850, line: 30, baseType: !943, size: 64, offset: 960)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4849, file: !4850, line: 31, baseType: !943, size: 64, offset: 1024)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4849, file: !4850, line: 32, baseType: !943, size: 64, offset: 1088)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4849, file: !4850, line: 33, baseType: !943, size: 64, offset: 1152)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4834, file: !4833, line: 63, baseType: !29, size: 32, offset: 1024)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4834, file: !4833, line: 69, baseType: !71, size: 16, offset: 1056)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4834, file: !4833, line: 70, baseType: !2305, size: 16, offset: 1072)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !461, line: 882, baseType: !147, size: 64, offset: 9024)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !464, file: !461, line: 885, baseType: !37, size: 32, offset: 9088)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !464, file: !461, line: 886, baseType: !4877, size: 64, offset: 9152)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !461, line: 732, flags: DIFlagFwdDecl)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !464, file: !461, line: 901, baseType: !764, size: 64, offset: 9216)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !464, file: !461, line: 904, baseType: !488, size: 64, offset: 9280)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !464, file: !461, line: 906, baseType: !4882, size: 64, offset: 9344)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !461, line: 906, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !464, file: !461, line: 930, baseType: !29, size: 32, offset: 9408)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !464, file: !461, line: 933, baseType: !29, size: 32, offset: 9440)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !464, file: !461, line: 935, baseType: !4887, size: 64, offset: 9472)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4888, line: 103, size: 64, elements: !4889)
!4888 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!4889 = !{!4890}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4887, file: !4888, line: 104, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !4888, line: 101, flags: DIFlagFwdDecl)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !464, file: !461, line: 940, baseType: !502, size: 64, offset: 9536)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !464, file: !461, line: 942, baseType: !813, size: 256, offset: 9600)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !460, file: !461, line: 986, baseType: !4896, offset: 10240)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !955)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !139, file: !140, line: 882, baseType: !459, size: 64, offset: 9792)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !139, file: !140, line: 884, baseType: !18, size: 32, offset: 9856)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !139, file: !140, line: 885, baseType: !18, size: 32, offset: 9888)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !139, file: !140, line: 886, baseType: !18, size: 32, offset: 9920)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !139, file: !140, line: 888, baseType: !18, size: 32, offset: 9952)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !139, file: !140, line: 890, baseType: !147, size: 64, offset: 9984)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !139, file: !140, line: 893, baseType: !35, size: 32, offset: 10048)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !139, file: !140, line: 896, baseType: !35, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !139, file: !140, line: 897, baseType: !35, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !139, file: !140, line: 898, baseType: !35, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !139, file: !140, line: 899, baseType: !35, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !139, file: !140, line: 919, baseType: !35, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !139, file: !140, line: 922, baseType: !35, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !139, file: !140, line: 923, baseType: !35, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !139, file: !140, line: 925, baseType: !35, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !139, file: !140, line: 939, baseType: !35, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !139, file: !140, line: 941, baseType: !35, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !139, file: !140, line: 944, baseType: !35, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !139, file: !140, line: 956, baseType: !35, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !139, file: !140, line: 962, baseType: !35, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !139, file: !140, line: 966, baseType: !35, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !139, file: !140, line: 969, baseType: !147, size: 64, offset: 10176)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !139, file: !140, line: 971, baseType: !4920, size: 448, offset: 10240)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !4921, line: 25, size: 448, elements: !4922)
!4921 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!4922 = !{!4923, !4924, !4929}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4920, file: !4921, line: 26, baseType: !147, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4920, file: !4921, line: 27, baseType: !4925, size: 64, offset: 64)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!943, !4928}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, scope: !4920, file: !4921, line: 28, baseType: !4930, size: 320, offset: 128)
!4930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4920, file: !4921, line: 28, size: 320, elements: !4931)
!4931 = !{!4932, !4942, !4972}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4930, file: !4921, line: 37, baseType: !4933, size: 320)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4930, file: !4921, line: 30, size: 320, elements: !4934)
!4934 = !{!4935, !4937, !4938, !4939, !4940, !4941}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4933, file: !4921, line: 31, baseType: !4936, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4933, file: !4921, line: 32, baseType: !150, size: 32, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4933, file: !4921, line: 33, baseType: !150, size: 32, offset: 96)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4933, file: !4921, line: 34, baseType: !150, size: 32, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4933, file: !4921, line: 35, baseType: !203, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4933, file: !4921, line: 36, baseType: !4936, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4930, file: !4921, line: 47, baseType: !4943, size: 192)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4930, file: !4921, line: 39, size: 192, elements: !4944)
!4944 = !{!4945, !4946, !4952, !4971}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4943, file: !4921, line: 40, baseType: !324, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4943, file: !4921, line: 41, baseType: !4947, size: 32, offset: 32)
!4947 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !4921, line: 16, baseType: !35, size: 32, elements: !4948)
!4948 = !{!4949, !4950, !4951}
!4949 = !DIEnumerator(name: "TT_NONE", value: 0)
!4950 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!4951 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!4952 = !DIDerivedType(tag: DW_TAG_member, scope: !4943, file: !4921, line: 42, baseType: !4953, size: 64, offset: 64)
!4953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4943, file: !4921, line: 42, size: 64, elements: !4954)
!4954 = !{!4955, !4963}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4953, file: !4921, line: 43, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4958, line: 7, size: 128, elements: !4959)
!4958 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4959 = !{!4960, !4962}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4957, file: !4958, line: 8, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !326, line: 93, baseType: !216)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4957, file: !4958, line: 9, baseType: !216, size: 64, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4953, file: !4921, line: 44, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4966, line: 7, size: 64, elements: !4967)
!4966 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4967 = !{!4968, !4970}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4965, file: !4966, line: 8, baseType: !4969, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4966, line: 5, baseType: !611)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4965, file: !4966, line: 9, baseType: !611, size: 32, offset: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4943, file: !4921, line: 46, baseType: !203, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4930, file: !4921, line: 55, baseType: !4973, size: 256)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4930, file: !4921, line: 49, size: 256, elements: !4974)
!4974 = !{!4975, !4983, !4984, !4985, !4986}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4973, file: !4921, line: 50, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4978, line: 36, size: 64, elements: !4979)
!4978 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4979 = !{!4980, !4981, !4982}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4977, file: !4978, line: 37, baseType: !18, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4977, file: !4978, line: 38, baseType: !647, size: 16, offset: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4977, file: !4978, line: 39, baseType: !647, size: 16, offset: 48)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4973, file: !4921, line: 51, baseType: !18, size: 32, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4973, file: !4921, line: 52, baseType: !18, size: 32, offset: 96)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4973, file: !4921, line: 53, baseType: !147, size: 64, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4973, file: !4921, line: 54, baseType: !147, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !139, file: !140, line: 973, baseType: !4988, size: 32, offset: 10688)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !4989)
!4989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !326, line: 28, baseType: !18)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !139, file: !140, line: 974, baseType: !4988, size: 32, offset: 10720)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !139, file: !140, line: 978, baseType: !147, size: 64, offset: 10752)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !139, file: !140, line: 987, baseType: !138, size: 64, offset: 10816)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !140, line: 990, baseType: !138, size: 64, offset: 10880)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !140, line: 995, baseType: !96, size: 128, offset: 10944)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !139, file: !140, line: 996, baseType: !96, size: 128, offset: 11072)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !139, file: !140, line: 997, baseType: !138, size: 64, offset: 11200)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !139, file: !140, line: 1005, baseType: !96, size: 128, offset: 11264)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !139, file: !140, line: 1006, baseType: !96, size: 128, offset: 11392)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !139, file: !140, line: 1009, baseType: !19, size: 64, offset: 11520)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !139, file: !140, line: 1010, baseType: !5001, size: 512, offset: 11584)
!5001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 512, elements: !86)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !139, file: !140, line: 1011, baseType: !96, size: 128, offset: 12096)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !139, file: !140, line: 1012, baseType: !96, size: 128, offset: 12224)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !139, file: !140, line: 1014, baseType: !883, size: 64, offset: 12352)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !139, file: !140, line: 1017, baseType: !2298, size: 64, offset: 12416)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !139, file: !140, line: 1020, baseType: !2298, size: 64, offset: 12480)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !139, file: !140, line: 1023, baseType: !132, size: 64, offset: 12544)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !139, file: !140, line: 1025, baseType: !203, size: 64, offset: 12608)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !139, file: !140, line: 1026, baseType: !203, size: 64, offset: 12672)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !139, file: !140, line: 1031, baseType: !203, size: 64, offset: 12736)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !139, file: !140, line: 1032, baseType: !3835, size: 192, offset: 12800)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !139, file: !140, line: 1041, baseType: !147, size: 64, offset: 12992)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !139, file: !140, line: 1042, baseType: !147, size: 64, offset: 13056)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !139, file: !140, line: 1045, baseType: !203, size: 64, offset: 13120)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !139, file: !140, line: 1048, baseType: !203, size: 64, offset: 13184)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !139, file: !140, line: 1051, baseType: !147, size: 64, offset: 13248)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !139, file: !140, line: 1052, baseType: !147, size: 64, offset: 13312)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !139, file: !140, line: 1055, baseType: !5019, size: 640, offset: 13376)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5020, line: 132, size: 640, elements: !5021)
!5020 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5021 = !{!5022, !5028, !5029}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5019, file: !5020, line: 133, baseType: !5023, size: 576)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5024, size: 576, elements: !547)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5020, line: 117, size: 192, elements: !5025)
!5025 = !{!5026, !5027}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5024, file: !5020, line: 118, baseType: !203, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5024, file: !5020, line: 119, baseType: !339, size: 128, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5019, file: !5020, line: 134, baseType: !35, size: 32, offset: 576)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5019, file: !5020, line: 135, baseType: !35, size: 32, offset: 608)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !139, file: !140, line: 1058, baseType: !5031, size: 448, offset: 14016)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5020, line: 144, size: 448, elements: !5032)
!5032 = !{!5033, !5034, !5035}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5031, file: !5020, line: 145, baseType: !102, size: 128, align: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5031, file: !5020, line: 146, baseType: !509, size: 256, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5031, file: !5020, line: 147, baseType: !35, size: 32, offset: 384)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !139, file: !140, line: 1064, baseType: !570, size: 64, offset: 14464)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !139, file: !140, line: 1067, baseType: !570, size: 64, offset: 14528)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !139, file: !140, line: 1070, baseType: !570, size: 64, offset: 14592)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !139, file: !140, line: 1074, baseType: !603, size: 64, offset: 14656)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !139, file: !140, line: 1084, baseType: !5041, size: 128, offset: 14720)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4433)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !139, file: !140, line: 1086, baseType: !5043, size: 64, offset: 14848)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !140, line: 55, flags: DIFlagFwdDecl)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !139, file: !140, line: 1089, baseType: !5046, size: 64, offset: 14912)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5047, line: 12, size: 64, elements: !5048)
!5047 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5048 = !{!5049}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5046, file: !5047, line: 13, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5047, line: 8, flags: DIFlagFwdDecl)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !139, file: !140, line: 1090, baseType: !5053, size: 128, offset: 14976)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5054, line: 13, size: 128, elements: !5055)
!5054 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5055 = !{!5056}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5053, file: !5054, line: 14, baseType: !96, size: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !139, file: !140, line: 1097, baseType: !5058, size: 64, offset: 15104)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !140, line: 50, flags: DIFlagFwdDecl)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !139, file: !140, line: 1100, baseType: !5061, size: 64, offset: 15168)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !140, line: 1100, flags: DIFlagFwdDecl)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !139, file: !140, line: 1103, baseType: !5064, size: 64, offset: 15232)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !140, line: 53, flags: DIFlagFwdDecl)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !139, file: !140, line: 1107, baseType: !5067, size: 64, offset: 15296)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5069, line: 31, size: 576, elements: !5070)
!5069 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5070 = !{!5071, !5072, !5075, !5078, !5081, !5082, !5085, !5088, !5089}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5068, file: !5069, line: 32, baseType: !24, size: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5068, file: !5069, line: 33, baseType: !5073, size: 64, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5069, line: 9, flags: DIFlagFwdDecl)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5068, file: !5069, line: 34, baseType: !5076, size: 64, offset: 128)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5069, line: 10, flags: DIFlagFwdDecl)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5068, file: !5069, line: 35, baseType: !5079, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5069, line: 8, flags: DIFlagFwdDecl)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5068, file: !5069, line: 36, baseType: !116, size: 64, offset: 256)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5068, file: !5069, line: 37, baseType: !5083, size: 64, offset: 320)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !605, line: 34, flags: DIFlagFwdDecl)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5068, file: !5069, line: 38, baseType: !5086, size: 64, offset: 384)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5069, line: 38, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5068, file: !5069, line: 39, baseType: !5086, size: 64, offset: 448)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5068, file: !5069, line: 40, baseType: !5090, size: 64, offset: 512)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5092, line: 771, size: 384, elements: !5093)
!5092 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5093 = !{!5094, !5095, !5096, !5097}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5091, file: !5092, line: 772, baseType: !797, size: 192)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5091, file: !5092, line: 773, baseType: !764, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5091, file: !5092, line: 774, baseType: !928, size: 64, offset: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5091, file: !5092, line: 775, baseType: !3905, size: 64, offset: 320)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !139, file: !140, line: 1110, baseType: !5099, size: 64, offset: 15360)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5101, line: 93, size: 8768, elements: !5102)
!5101 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5102 = !{!5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5151, !5160, !5161, !5163, !5164, !5165, !5168, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5206, !5207, !5214, !5224, !5286, !5287, !5290, !5291, !5292, !5293, !5294, !5295}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5100, file: !5101, line: 94, baseType: !24, size: 32)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5100, file: !5101, line: 95, baseType: !29, size: 32, offset: 32)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5100, file: !5101, line: 96, baseType: !18, size: 32, offset: 64)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5100, file: !5101, line: 97, baseType: !18, size: 32, offset: 96)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5100, file: !5101, line: 98, baseType: !96, size: 128, offset: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5100, file: !5101, line: 100, baseType: !90, size: 192, offset: 256)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5100, file: !5101, line: 103, baseType: !138, size: 64, offset: 448)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5100, file: !5101, line: 106, baseType: !5111, size: 192, offset: 512)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5112, line: 32, size: 192, elements: !5113)
!5112 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5111, file: !5112, line: 33, baseType: !96, size: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5111, file: !5112, line: 34, baseType: !5116, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5117, line: 25, baseType: !5118)
!5117 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5117, line: 23, size: 64, elements: !5119)
!5119 = !{!5120}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5118, file: !5117, line: 24, baseType: !410, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5100, file: !5101, line: 109, baseType: !77, size: 64, offset: 704)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5100, file: !5101, line: 112, baseType: !18, size: 32, offset: 768)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5100, file: !5101, line: 114, baseType: !18, size: 32, offset: 800)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5100, file: !5101, line: 115, baseType: !138, size: 64, offset: 832)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5100, file: !5101, line: 118, baseType: !18, size: 32, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5100, file: !5101, line: 119, baseType: !35, size: 32, offset: 928)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5100, file: !5101, line: 121, baseType: !5128, size: 64, offset: 960)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5101, line: 80, size: 448, elements: !5130)
!5130 = !{!5131, !5132, !5138}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5129, file: !5101, line: 81, baseType: !29, size: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5129, file: !5101, line: 82, baseType: !5133, size: 128, offset: 64)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5101, line: 75, size: 128, elements: !5134)
!5134 = !{!5135, !5136}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5133, file: !5101, line: 76, baseType: !138, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5133, file: !5101, line: 77, baseType: !5137, size: 64, offset: 64)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5129, file: !5101, line: 83, baseType: !884, size: 256, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5100, file: !5101, line: 132, baseType: !35, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5100, file: !5101, line: 133, baseType: !35, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5100, file: !5101, line: 138, baseType: !35, size: 32, offset: 1056)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5100, file: !5101, line: 139, baseType: !96, size: 128, offset: 1088)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5100, file: !5101, line: 142, baseType: !271, size: 512, offset: 1216)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5100, file: !5101, line: 143, baseType: !280, size: 64, offset: 1728)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5100, file: !5101, line: 150, baseType: !5146, size: 256, offset: 1792)
!5146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5147, size: 256, elements: !2288)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5101, line: 38, size: 128, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5147, file: !5101, line: 39, baseType: !203, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5147, file: !5101, line: 40, baseType: !203, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5100, file: !5101, line: 156, baseType: !5152, size: 192, offset: 2048)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5101, line: 66, size: 192, elements: !5153)
!5153 = !{!5154}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5152, file: !5101, line: 67, baseType: !5155, size: 192)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5101, line: 47, size: 192, elements: !5156)
!5156 = !{!5157, !5158, !5159}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5155, file: !5101, line: 48, baseType: !504, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5155, file: !5101, line: 49, baseType: !504, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5155, file: !5101, line: 50, baseType: !504, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5100, file: !5101, line: 160, baseType: !5019, size: 640, offset: 2240)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5100, file: !5101, line: 163, baseType: !5162, size: 256, offset: 2880)
!5162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !86)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5100, file: !5101, line: 169, baseType: !19, size: 64, offset: 3136)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5100, file: !5101, line: 172, baseType: !18, size: 32, offset: 3200)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5100, file: !5101, line: 174, baseType: !5166, size: 64, offset: 3264)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5101, line: 174, flags: DIFlagFwdDecl)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5100, file: !5101, line: 185, baseType: !5169, size: 64, offset: 3328)
!5169 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !329, line: 860, baseType: !5170)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 853, size: 64, elements: !5171)
!5171 = !{!5172, !5173}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5170, file: !329, line: 858, baseType: !987, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5170, file: !329, line: 859, baseType: !37, size: 32, offset: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5100, file: !5101, line: 186, baseType: !203, size: 64, offset: 3392)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5100, file: !5101, line: 186, baseType: !203, size: 64, offset: 3456)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5100, file: !5101, line: 186, baseType: !203, size: 64, offset: 3520)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5100, file: !5101, line: 186, baseType: !203, size: 64, offset: 3584)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5100, file: !5101, line: 187, baseType: !203, size: 64, offset: 3648)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5100, file: !5101, line: 188, baseType: !203, size: 64, offset: 3712)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5100, file: !5101, line: 189, baseType: !3835, size: 192, offset: 3776)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5100, file: !5101, line: 190, baseType: !147, size: 64, offset: 3968)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5100, file: !5101, line: 190, baseType: !147, size: 64, offset: 4032)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5100, file: !5101, line: 190, baseType: !147, size: 64, offset: 4096)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5100, file: !5101, line: 190, baseType: !147, size: 64, offset: 4160)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5100, file: !5101, line: 191, baseType: !147, size: 64, offset: 4224)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5100, file: !5101, line: 191, baseType: !147, size: 64, offset: 4288)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5100, file: !5101, line: 191, baseType: !147, size: 64, offset: 4352)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5100, file: !5101, line: 191, baseType: !147, size: 64, offset: 4416)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5100, file: !5101, line: 192, baseType: !147, size: 64, offset: 4480)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5100, file: !5101, line: 192, baseType: !147, size: 64, offset: 4544)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5100, file: !5101, line: 192, baseType: !147, size: 64, offset: 4608)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5100, file: !5101, line: 192, baseType: !147, size: 64, offset: 4672)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5100, file: !5101, line: 193, baseType: !147, size: 64, offset: 4736)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5100, file: !5101, line: 193, baseType: !147, size: 64, offset: 4800)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5100, file: !5101, line: 194, baseType: !5196, size: 448, offset: 4864)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5197, line: 12, size: 448, elements: !5198)
!5197 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5198 = !{!5199, !5200, !5201, !5202, !5203, !5204, !5205}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5196, file: !5197, line: 15, baseType: !203, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5196, file: !5197, line: 17, baseType: !203, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5196, file: !5197, line: 19, baseType: !203, size: 64, offset: 128)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5196, file: !5197, line: 21, baseType: !203, size: 64, offset: 192)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5196, file: !5197, line: 29, baseType: !203, size: 64, offset: 256)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5196, file: !5197, line: 35, baseType: !203, size: 64, offset: 320)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5196, file: !5197, line: 44, baseType: !203, size: 64, offset: 384)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5100, file: !5101, line: 202, baseType: !205, size: 64, offset: 5312)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5100, file: !5101, line: 213, baseType: !5208, size: 2048, offset: 5376)
!5208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5209, size: 2048, elements: !4433)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5210, line: 43, size: 128, elements: !5211)
!5210 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5211 = !{!5212, !5213}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5209, file: !5210, line: 44, baseType: !867, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5209, file: !5210, line: 45, baseType: !867, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5100, file: !5101, line: 216, baseType: !5215, size: 448, offset: 7424)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5101, line: 30, size: 448, elements: !5216)
!5216 = !{!5217, !5218, !5219, !5220, !5221, !5222, !5223}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5215, file: !5101, line: 31, baseType: !18, size: 32)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5215, file: !5101, line: 32, baseType: !943, size: 64, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5215, file: !5101, line: 33, baseType: !147, size: 64, offset: 128)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5215, file: !5101, line: 34, baseType: !203, size: 64, offset: 192)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5215, file: !5101, line: 34, baseType: !203, size: 64, offset: 256)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5215, file: !5101, line: 35, baseType: !147, size: 64, offset: 320)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5215, file: !5101, line: 35, baseType: !147, size: 64, offset: 384)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5100, file: !5101, line: 219, baseType: !5225, size: 64, offset: 7872)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5227, line: 41, size: 3456, elements: !5228)
!5227 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5228 = !{!5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5226, file: !5227, line: 47, baseType: !72, size: 16)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5226, file: !5227, line: 48, baseType: !151, size: 32, offset: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5226, file: !5227, line: 54, baseType: !63, size: 8, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5226, file: !5227, line: 55, baseType: !63, size: 8, offset: 72)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5226, file: !5227, line: 73, baseType: !204, size: 64, align: 64, offset: 128)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5226, file: !5227, line: 74, baseType: !204, size: 64, offset: 192)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5226, file: !5227, line: 81, baseType: !204, size: 64, offset: 256)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5226, file: !5227, line: 82, baseType: !204, size: 64, offset: 320)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5226, file: !5227, line: 85, baseType: !204, size: 64, offset: 384)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5226, file: !5227, line: 86, baseType: !204, size: 64, offset: 448)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5226, file: !5227, line: 94, baseType: !204, size: 64, offset: 512)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5226, file: !5227, line: 102, baseType: !204, size: 64, offset: 576)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5226, file: !5227, line: 107, baseType: !4423, size: 256, offset: 640)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5226, file: !5227, line: 108, baseType: !63, size: 8, align: 64, offset: 896)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5226, file: !5227, line: 110, baseType: !5244, size: 24, offset: 904)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 24, elements: !547)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5226, file: !5227, line: 111, baseType: !151, size: 32, align: 64, offset: 960)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5226, file: !5227, line: 113, baseType: !151, size: 32, offset: 992)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5226, file: !5227, line: 114, baseType: !151, size: 32, offset: 1024)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5226, file: !5227, line: 115, baseType: !151, size: 32, offset: 1056)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5226, file: !5227, line: 117, baseType: !151, size: 32, offset: 1088)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5226, file: !5227, line: 118, baseType: !204, size: 64, align: 64, offset: 1152)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5226, file: !5227, line: 120, baseType: !204, size: 64, offset: 1216)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5226, file: !5227, line: 121, baseType: !204, size: 64, offset: 1280)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5226, file: !5227, line: 122, baseType: !204, size: 64, offset: 1344)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5226, file: !5227, line: 123, baseType: !204, size: 64, offset: 1408)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5226, file: !5227, line: 133, baseType: !204, size: 64, offset: 1472)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5226, file: !5227, line: 137, baseType: !204, size: 64, offset: 1536)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5226, file: !5227, line: 142, baseType: !204, size: 64, offset: 1600)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5226, file: !5227, line: 143, baseType: !204, size: 64, offset: 1664)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5226, file: !5227, line: 146, baseType: !204, size: 64, offset: 1728)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5226, file: !5227, line: 147, baseType: !204, size: 64, offset: 1792)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5226, file: !5227, line: 148, baseType: !204, size: 64, offset: 1856)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5226, file: !5227, line: 149, baseType: !204, size: 64, offset: 1920)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5226, file: !5227, line: 154, baseType: !204, size: 64, offset: 1984)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5226, file: !5227, line: 155, baseType: !204, size: 64, offset: 2048)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5226, file: !5227, line: 156, baseType: !204, size: 64, offset: 2112)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5226, file: !5227, line: 158, baseType: !204, size: 64, offset: 2176)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5226, file: !5227, line: 159, baseType: !204, size: 64, offset: 2240)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5226, file: !5227, line: 162, baseType: !204, size: 64, offset: 2304)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5226, file: !5227, line: 163, baseType: !204, size: 64, offset: 2368)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5226, file: !5227, line: 164, baseType: !204, size: 64, offset: 2432)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5226, file: !5227, line: 167, baseType: !204, size: 64, offset: 2496)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5226, file: !5227, line: 168, baseType: !204, size: 64, offset: 2560)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5226, file: !5227, line: 171, baseType: !204, size: 64, offset: 2624)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5226, file: !5227, line: 172, baseType: !204, size: 64, offset: 2688)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5226, file: !5227, line: 175, baseType: !204, size: 64, offset: 2752)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5226, file: !5227, line: 178, baseType: !204, size: 64, offset: 2816)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5226, file: !5227, line: 179, baseType: !204, size: 64, offset: 2880)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5226, file: !5227, line: 182, baseType: !151, size: 32, offset: 2944)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5226, file: !5227, line: 186, baseType: !204, size: 64, align: 64, offset: 3008)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5226, file: !5227, line: 194, baseType: !204, size: 64, offset: 3072)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5226, file: !5227, line: 195, baseType: !204, size: 64, offset: 3136)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5226, file: !5227, line: 199, baseType: !204, size: 64, offset: 3200)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5226, file: !5227, line: 200, baseType: !204, size: 64, offset: 3264)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5226, file: !5227, line: 203, baseType: !204, size: 64, offset: 3328)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5226, file: !5227, line: 204, baseType: !204, size: 64, offset: 3392)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5100, file: !5101, line: 222, baseType: !35, size: 32, offset: 7936)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5100, file: !5101, line: 223, baseType: !5288, size: 64, offset: 8000)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5101, line: 223, flags: DIFlagFwdDecl)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5100, file: !5101, line: 230, baseType: !678, size: 8, offset: 8064)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5100, file: !5101, line: 231, baseType: !647, size: 16, offset: 8080)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5100, file: !5101, line: 232, baseType: !647, size: 16, offset: 8096)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5100, file: !5101, line: 234, baseType: !459, size: 64, offset: 8128)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5100, file: !5101, line: 237, baseType: !509, size: 256, offset: 8192)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5100, file: !5101, line: 243, baseType: !619, size: 320, offset: 8448)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !139, file: !140, line: 1111, baseType: !5297, size: 64, offset: 15424)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5101, line: 20, size: 16640, elements: !5299)
!5299 = !{!5300, !5301, !5302, !5303}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5298, file: !5101, line: 21, baseType: !37, size: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5298, file: !5101, line: 22, baseType: !24, size: 32, offset: 32)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5298, file: !5101, line: 23, baseType: !90, size: 192, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5298, file: !5101, line: 24, baseType: !5304, size: 16384, offset: 256)
!5304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5305, size: 16384, elements: !1313)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5112, line: 51, size: 256, elements: !5306)
!5306 = !{!5307}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5305, file: !5112, line: 52, baseType: !5308, size: 256)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5112, line: 37, size: 256, elements: !5309)
!5309 = !{!5310, !5317, !5318, !5322}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5308, file: !5112, line: 39, baseType: !5311, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5312, line: 83, baseType: !5313)
!5312 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5312, line: 82, baseType: !5315)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !18}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5308, file: !5112, line: 40, baseType: !147, size: 64, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5308, file: !5112, line: 46, baseType: !5319, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5312, line: 86, baseType: !5320)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5312, line: 85, baseType: !2585)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5308, file: !5112, line: 48, baseType: !5116, size: 64, offset: 192)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !139, file: !140, line: 1112, baseType: !5116, size: 64, offset: 15488)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !139, file: !140, line: 1113, baseType: !5116, size: 64, offset: 15552)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !139, file: !140, line: 1115, baseType: !5116, size: 64, offset: 15616)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !139, file: !140, line: 1116, baseType: !5111, size: 192, offset: 15680)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !139, file: !140, line: 1117, baseType: !147, size: 64, offset: 15872)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !139, file: !140, line: 1118, baseType: !865, size: 64, offset: 15936)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !139, file: !140, line: 1119, baseType: !35, size: 32, offset: 16000)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !139, file: !140, line: 1121, baseType: !105, size: 64, offset: 16064)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !139, file: !140, line: 1125, baseType: !5332, size: 64, offset: 16128)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !140, line: 43, flags: DIFlagFwdDecl)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !139, file: !140, line: 1127, baseType: !560, size: 32, offset: 16192)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !139, file: !140, line: 1128, baseType: !35, size: 32, offset: 16224)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !139, file: !140, line: 1130, baseType: !5337, size: 128, offset: 16256)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5338, line: 37, size: 128, elements: !5339)
!5338 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5339 = !{!5340, !5341, !5342}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5337, file: !5338, line: 38, baseType: !18, size: 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5337, file: !5338, line: 39, baseType: !29, size: 32, offset: 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5337, file: !5338, line: 40, baseType: !5343, size: 64, offset: 64)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5338, line: 24, flags: DIFlagFwdDecl)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !139, file: !140, line: 1131, baseType: !5346, size: 256, offset: 16384)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5347, line: 12, size: 256, elements: !5348)
!5347 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5348 = !{!5349, !5350, !5351, !5352}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5346, file: !5347, line: 13, baseType: !691, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5346, file: !5347, line: 14, baseType: !147, size: 64, offset: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5346, file: !5347, line: 15, baseType: !147, size: 64, offset: 128)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5346, file: !5347, line: 16, baseType: !678, size: 8, offset: 192)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !139, file: !140, line: 1134, baseType: !203, size: 64, offset: 16640)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !139, file: !140, line: 1135, baseType: !203, size: 64, offset: 16704)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !139, file: !140, line: 1138, baseType: !37, size: 32, offset: 16768)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !139, file: !140, line: 1141, baseType: !301, size: 32, offset: 16800)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !139, file: !140, line: 1143, baseType: !5358, size: 64, offset: 16832)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !140, line: 735, size: 64, elements: !5359)
!5359 = !{!5360}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5358, file: !140, line: 736, baseType: !5361, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !139, file: !140, line: 1147, baseType: !342, size: 128, offset: 16896)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !139, file: !140, line: 1149, baseType: !138, size: 64, offset: 17024)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !139, file: !140, line: 1151, baseType: !5365, size: 64, offset: 17088)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !140, line: 1151, flags: DIFlagFwdDecl)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !139, file: !140, line: 1188, baseType: !132, size: 64, offset: 17152)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !139, file: !140, line: 1191, baseType: !5369, size: 64, offset: 17216)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !140, line: 44, flags: DIFlagFwdDecl)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !139, file: !140, line: 1194, baseType: !5372, size: 64, offset: 17280)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !140, line: 45, flags: DIFlagFwdDecl)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !139, file: !140, line: 1197, baseType: !5375, size: 64, offset: 17344)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !140, line: 61, flags: DIFlagFwdDecl)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !139, file: !140, line: 1199, baseType: !5378, size: 64, offset: 17408)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5380, line: 99, size: 128, elements: !5381)
!5380 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5381 = !{!5382, !5383, !5384}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5379, file: !5380, line: 100, baseType: !502, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5379, file: !5380, line: 101, baseType: !29, size: 32, offset: 64)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5379, file: !5380, line: 103, baseType: !73, size: 16, offset: 96)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !139, file: !140, line: 1202, baseType: !5386, size: 64, offset: 17472)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !140, line: 48, flags: DIFlagFwdDecl)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !139, file: !140, line: 1205, baseType: !147, size: 64, offset: 17536)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !139, file: !140, line: 1206, baseType: !5390, size: 64, offset: 17600)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5112, line: 14, baseType: !5392)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5112, line: 12, size: 384, elements: !5393)
!5393 = !{!5394}
!5394 = !DIDerivedType(tag: DW_TAG_member, scope: !5392, file: !5112, line: 13, baseType: !5395, size: 384)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5392, file: !5112, line: 13, size: 384, elements: !5396)
!5396 = !{!5397, !5398, !5399, !5400}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5395, file: !5112, line: 13, baseType: !18, size: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5395, file: !5112, line: 13, baseType: !18, size: 32, offset: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5395, file: !5112, line: 13, baseType: !18, size: 32, offset: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5395, file: !5112, line: 13, baseType: !5401, size: 256, offset: 128)
!5401 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5402, line: 37, size: 256, elements: !5403)
!5402 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5403 = !{!5404, !5409, !5422, !5428, !5437, !5464, !5469}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5401, file: !5402, line: 42, baseType: !5405, size: 64)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 39, size: 64, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5405, file: !5402, line: 40, baseType: !4989, size: 32)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5405, file: !5402, line: 41, baseType: !566, size: 32, offset: 32)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5401, file: !5402, line: 50, baseType: !5410, size: 192)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 45, size: 192, elements: !5411)
!5411 = !{!5412, !5414, !5415, !5421}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5410, file: !5402, line: 46, baseType: !5413, size: 32)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !326, line: 95, baseType: !18)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5410, file: !5402, line: 47, baseType: !18, size: 32, offset: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5410, file: !5402, line: 48, baseType: !5416, size: 64, offset: 64)
!5416 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5402, line: 11, baseType: !5417)
!5417 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5402, line: 8, size: 64, elements: !5418)
!5418 = !{!5419, !5420}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5417, file: !5402, line: 9, baseType: !18, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5417, file: !5402, line: 10, baseType: !132, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5410, file: !5402, line: 49, baseType: !18, size: 32, offset: 128)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5401, file: !5402, line: 57, baseType: !5423, size: 128)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 53, size: 128, elements: !5424)
!5424 = !{!5425, !5426, !5427}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5423, file: !5402, line: 54, baseType: !4989, size: 32)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5423, file: !5402, line: 55, baseType: !566, size: 32, offset: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5423, file: !5402, line: 56, baseType: !5416, size: 64, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5401, file: !5402, line: 66, baseType: !5429, size: 256)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 60, size: 256, elements: !5430)
!5430 = !{!5431, !5432, !5433, !5434, !5436}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5429, file: !5402, line: 61, baseType: !4989, size: 32)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5429, file: !5402, line: 62, baseType: !566, size: 32, offset: 32)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5429, file: !5402, line: 63, baseType: !18, size: 32, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5429, file: !5402, line: 64, baseType: !5435, size: 64, offset: 128)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !326, line: 94, baseType: !1170)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5429, file: !5402, line: 65, baseType: !5435, size: 64, offset: 192)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5401, file: !5402, line: 105, baseType: !5438, size: 256)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 69, size: 256, elements: !5439)
!5439 = !{!5440, !5441}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5438, file: !5402, line: 70, baseType: !132, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, scope: !5438, file: !5402, line: 79, baseType: !5442, size: 192, offset: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5438, file: !5402, line: 79, size: 192, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5453, !5458}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5442, file: !5402, line: 81, baseType: !18, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5442, file: !5402, line: 86, baseType: !647, size: 16)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5442, file: !5402, line: 92, baseType: !5447, size: 192)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5402, line: 88, size: 192, elements: !5448)
!5448 = !{!5449, !5451, !5452}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5447, file: !5402, line: 89, baseType: !5450, size: 64)
!5450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !320)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5447, file: !5402, line: 90, baseType: !132, size: 64, offset: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5447, file: !5402, line: 91, baseType: !132, size: 64, offset: 128)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5442, file: !5402, line: 97, baseType: !5454, size: 96)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5402, line: 94, size: 96, elements: !5455)
!5455 = !{!5456, !5457}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5454, file: !5402, line: 95, baseType: !5450, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5454, file: !5402, line: 96, baseType: !151, size: 32, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5442, file: !5402, line: 103, baseType: !5459, size: 128)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5402, line: 99, size: 128, elements: !5460)
!5460 = !{!5461, !5462, !5463}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5459, file: !5402, line: 100, baseType: !147, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5459, file: !5402, line: 101, baseType: !151, size: 32, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5459, file: !5402, line: 102, baseType: !151, size: 32, offset: 96)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5401, file: !5402, line: 111, baseType: !5465, size: 128)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 108, size: 128, elements: !5466)
!5466 = !{!5467, !5468}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5465, file: !5402, line: 109, baseType: !943, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5465, file: !5402, line: 110, baseType: !18, size: 32, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5401, file: !5402, line: 118, baseType: !5470, size: 128)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5402, line: 114, size: 128, elements: !5471)
!5471 = !{!5472, !5473, !5474}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5470, file: !5402, line: 115, baseType: !132, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5470, file: !5402, line: 116, baseType: !18, size: 32, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5470, file: !5402, line: 117, baseType: !35, size: 32, offset: 96)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !139, file: !140, line: 1208, baseType: !5196, size: 448, offset: 17664)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !139, file: !140, line: 1215, baseType: !203, size: 64, offset: 18112)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !139, file: !140, line: 1217, baseType: !203, size: 64, offset: 18176)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !139, file: !140, line: 1219, baseType: !203, size: 64, offset: 18240)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !139, file: !140, line: 1223, baseType: !5480, size: 64, offset: 18304)
!5480 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5481, line: 99, baseType: !5482)
!5481 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5481, line: 99, size: 64, elements: !5483)
!5483 = !{!5484}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5482, file: !5481, line: 99, baseType: !410, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !139, file: !140, line: 1225, baseType: !987, size: 32, offset: 18368)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !139, file: !140, line: 1226, baseType: !18, size: 32, offset: 18400)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !139, file: !140, line: 1227, baseType: !18, size: 32, offset: 18432)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !139, file: !140, line: 1231, baseType: !3905, size: 64, offset: 18496)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !139, file: !140, line: 1233, baseType: !96, size: 128, offset: 18560)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !139, file: !140, line: 1240, baseType: !5491, size: 64, offset: 18688)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !140, line: 62, flags: DIFlagFwdDecl)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !139, file: !140, line: 1242, baseType: !5494, size: 64, offset: 18752)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5496, line: 392, size: 96, elements: !5497)
!5496 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5497 = !{!5498, !5504, !5506}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5495, file: !5496, line: 393, baseType: !5499, size: 32)
!5499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5496, line: 388, size: 32, elements: !5500)
!5500 = !{!5501}
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5499, file: !5496, line: 389, baseType: !5502, size: 32)
!5502 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5503, line: 46, baseType: !150)
!5503 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5495, file: !5496, line: 394, baseType: !5505, size: 32, offset: 32)
!5505 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5503, line: 42, baseType: !611)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5495, file: !5496, line: 395, baseType: !5502, size: 32, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !139, file: !140, line: 1244, baseType: !96, size: 128, offset: 18816)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !139, file: !140, line: 1245, baseType: !5509, size: 64, offset: 18944)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !140, line: 51, flags: DIFlagFwdDecl)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !139, file: !140, line: 1246, baseType: !509, size: 256, offset: 19008)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !139, file: !140, line: 1247, baseType: !35, size: 32, offset: 19264)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !139, file: !140, line: 1250, baseType: !3144, size: 64, offset: 19328)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !139, file: !140, line: 1251, baseType: !509, size: 256, offset: 19392)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !139, file: !140, line: 1252, baseType: !96, size: 128, offset: 19648)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !139, file: !140, line: 1259, baseType: !1605, size: 64, offset: 19776)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !139, file: !140, line: 1260, baseType: !647, size: 16, offset: 19840)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !139, file: !140, line: 1261, baseType: !647, size: 16, offset: 19856)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !139, file: !140, line: 1314, baseType: !5520, size: 64, offset: 19904)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5522, line: 62, size: 256, align: 256, elements: !5523)
!5522 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5523 = !{!5524, !5525, !5526, !5527, !5528, !5529, !5530}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5521, file: !5522, line: 75, baseType: !151, size: 32)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5521, file: !5522, line: 90, baseType: !151, size: 32, offset: 32)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5521, file: !5522, line: 112, baseType: !204, size: 64, offset: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5521, file: !5522, line: 132, baseType: !151, size: 32, offset: 128)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5521, file: !5522, line: 140, baseType: !151, size: 32, offset: 160)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5521, file: !5522, line: 149, baseType: !151, size: 32, offset: 192)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5521, file: !5522, line: 154, baseType: !5531, offset: 224)
!5531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !955)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !139, file: !140, line: 1315, baseType: !150, size: 32, offset: 19968)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !139, file: !140, line: 1316, baseType: !150, size: 32, offset: 20000)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !139, file: !140, line: 1321, baseType: !147, size: 64, offset: 20032)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !139, file: !140, line: 1325, baseType: !18, size: 32, offset: 20096)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !139, file: !140, line: 1326, baseType: !18, size: 32, offset: 20128)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !139, file: !140, line: 1327, baseType: !18, size: 32, offset: 20160)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !139, file: !140, line: 1328, baseType: !18, size: 32, offset: 20192)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !139, file: !140, line: 1329, baseType: !102, size: 128, align: 64, offset: 20224)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !139, file: !140, line: 1332, baseType: !5541, size: 128, offset: 20352)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5542, line: 51, size: 128, elements: !5543)
!5542 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5543 = !{!5544, !5549, !5550}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5541, file: !5542, line: 60, baseType: !5545, size: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5546, line: 7, size: 64, elements: !5547)
!5546 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5547 = !{!5548}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5545, file: !5546, line: 12, baseType: !407, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5541, file: !5542, line: 63, baseType: !678, size: 8, offset: 64)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5541, file: !5542, line: 70, baseType: !678, size: 8, offset: 72)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !139, file: !140, line: 1335, baseType: !4670, size: 64, offset: 20480)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !139, file: !140, line: 1337, baseType: !5553, size: 128, offset: 20544)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5542, line: 39, size: 128, elements: !5554)
!5554 = !{!5555, !5556, !5557}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5553, file: !5542, line: 40, baseType: !1394, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5553, file: !5542, line: 42, baseType: !151, size: 32, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5553, file: !5542, line: 43, baseType: !151, size: 32, offset: 96)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !139, file: !140, line: 1340, baseType: !5559, size: 64, offset: 20672)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !140, line: 69, flags: DIFlagFwdDecl)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !139, file: !140, line: 1351, baseType: !18, size: 32, offset: 20736)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !139, file: !140, line: 1352, baseType: !18, size: 32, offset: 20768)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !139, file: !140, line: 1354, baseType: !147, size: 64, offset: 20800)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !139, file: !140, line: 1364, baseType: !203, size: 64, offset: 20864)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !139, file: !140, line: 1365, baseType: !203, size: 64, offset: 20928)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !139, file: !140, line: 1412, baseType: !147, size: 64, offset: 20992)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !139, file: !140, line: 1453, baseType: !5568, size: 64, offset: 21056)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !140, line: 1453, flags: DIFlagFwdDecl)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !139, file: !140, line: 1457, baseType: !5571, size: 64, offset: 21120)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !4888, line: 61, size: 576, elements: !5573)
!5573 = !{!5574, !5581, !5600, !5603, !5604, !5637, !5647}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5572, file: !4888, line: 62, baseType: !5575, size: 32)
!5575 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !4888, line: 51, baseType: !35, size: 32, elements: !5576)
!5576 = !{!5577, !5578, !5579, !5580}
!5577 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!5578 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!5579 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!5580 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!5581 = !DIDerivedType(tag: DW_TAG_member, scope: !5572, file: !4888, line: 64, baseType: !5582, size: 192, offset: 64)
!5582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5572, file: !4888, line: 64, size: 192, elements: !5583)
!5583 = !{!5584, !5595}
!5584 = !DIDerivedType(tag: DW_TAG_member, scope: !5582, file: !4888, line: 65, baseType: !5585, size: 192)
!5585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5582, file: !4888, line: 65, size: 192, elements: !5586)
!5586 = !{!5587, !5594}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5585, file: !4888, line: 66, baseType: !5588, size: 128)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5589, line: 50, size: 128, elements: !5590)
!5589 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5590 = !{!5591, !5592, !5593}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5588, file: !5589, line: 52, baseType: !147, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5588, file: !5589, line: 54, baseType: !35, size: 32, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5588, file: !5589, line: 55, baseType: !35, size: 32, offset: 96)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5585, file: !4888, line: 67, baseType: !147, size: 64, offset: 128)
!5595 = !DIDerivedType(tag: DW_TAG_member, scope: !5582, file: !4888, line: 70, baseType: !5596, size: 192)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5582, file: !4888, line: 70, size: 192, elements: !5597)
!5597 = !{!5598, !5599}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5596, file: !4888, line: 71, baseType: !102, size: 128, align: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5596, file: !4888, line: 72, baseType: !147, size: 64, offset: 128)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5572, file: !4888, line: 76, baseType: !5601, size: 64, offset: 256)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !4888, line: 76, flags: DIFlagFwdDecl)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5572, file: !4888, line: 77, baseType: !147, size: 64, offset: 320)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5572, file: !4888, line: 79, baseType: !5605, size: 64, offset: 384)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5589, line: 25, size: 256, elements: !5607)
!5607 = !{!5608, !5614, !5618}
!5608 = !DIDerivedType(tag: DW_TAG_member, scope: !5606, file: !5589, line: 26, baseType: !5609, size: 128)
!5609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5606, file: !5589, line: 26, size: 128, elements: !5610)
!5610 = !{!5611, !5613}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5609, file: !5589, line: 27, baseType: !5612, size: 128)
!5612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !4433)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5609, file: !5589, line: 28, baseType: !5612, size: 128)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5606, file: !5589, line: 31, baseType: !5615, size: 64, offset: 128)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5617)
!5617 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5589, line: 23, flags: DIFlagFwdDecl)
!5618 = !DIDerivedType(tag: DW_TAG_member, scope: !5606, file: !5589, line: 33, baseType: !5619, size: 64, offset: 192)
!5619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5606, file: !5589, line: 33, size: 64, elements: !5620)
!5620 = !{!5621, !5627, !5632}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5619, file: !5589, line: 38, baseType: !5622, size: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5619, file: !5589, line: 34, size: 64, elements: !5623)
!5623 = !{!5624, !5625, !5626}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5622, file: !5589, line: 35, baseType: !611, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5622, file: !5589, line: 36, baseType: !61, size: 8, offset: 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5622, file: !5589, line: 37, baseType: !61, size: 8, offset: 40)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5619, file: !5589, line: 42, baseType: !5628, size: 16)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5619, file: !5589, line: 39, size: 16, elements: !5629)
!5629 = !{!5630, !5631}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5628, file: !5589, line: 40, baseType: !61, size: 8)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5628, file: !5589, line: 41, baseType: !61, size: 8, offset: 8)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5619, file: !5589, line: 46, baseType: !5633, size: 16)
!5633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5619, file: !5589, line: 43, size: 16, elements: !5634)
!5634 = !{!5635, !5636}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5633, file: !5589, line: 44, baseType: !61, size: 8)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5633, file: !5589, line: 45, baseType: !61, size: 8, offset: 8)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5572, file: !4888, line: 81, baseType: !5638, size: 64, offset: 448)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !4888, line: 85, size: 384, elements: !5640)
!5640 = !{!5641, !5642, !5643, !5644, !5645, !5646}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5639, file: !4888, line: 86, baseType: !5601, size: 64)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5639, file: !4888, line: 87, baseType: !147, size: 64, offset: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5639, file: !4888, line: 88, baseType: !147, size: 64, offset: 128)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5639, file: !4888, line: 89, baseType: !147, size: 64, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5639, file: !4888, line: 90, baseType: !678, size: 8, offset: 256)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5639, file: !4888, line: 92, baseType: !5638, size: 64, offset: 320)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5572, file: !4888, line: 82, baseType: !35, size: 32, offset: 512)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !139, file: !140, line: 1463, baseType: !5649, offset: 21184)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !140, line: 739, elements: !481)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !139, file: !140, line: 1470, baseType: !102, size: 128, align: 64, offset: 21184)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !139, file: !140, line: 1471, baseType: !24, size: 32, offset: 21312)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !139, file: !140, line: 1472, baseType: !18, size: 32, offset: 21344)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !139, file: !140, line: 1474, baseType: !138, size: 64, offset: 21376)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !139, file: !140, line: 1475, baseType: !2399, size: 320, offset: 21440)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !139, file: !140, line: 1478, baseType: !5656, size: 64, offset: 21760)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !140, line: 1478, flags: DIFlagFwdDecl)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !139, file: !140, line: 1482, baseType: !24, size: 32, offset: 21824)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !139, file: !140, line: 1489, baseType: !132, size: 64, offset: 21888)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !139, file: !140, line: 1504, baseType: !132, size: 64, offset: 21952)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !139, file: !140, line: 1505, baseType: !204, size: 64, offset: 22016)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !139, file: !140, line: 1506, baseType: !203, size: 64, offset: 22080)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !139, file: !140, line: 1507, baseType: !204, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !139, file: !140, line: 1508, baseType: !204, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !139, file: !140, line: 1509, baseType: !204, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !139, file: !140, line: 1510, baseType: !102, size: 128, align: 64, offset: 22208)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !139, file: !140, line: 1511, baseType: !18, size: 32, offset: 22336)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !139, file: !140, line: 1515, baseType: !5669, size: 64, offset: 22400)
!5669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !165, line: 56, size: 64, elements: !5670)
!5670 = !{!5671}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5669, file: !165, line: 57, baseType: !168, size: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !139, file: !140, line: 1518, baseType: !5669, size: 64, offset: 22464)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !139, file: !140, line: 1528, baseType: !102, size: 128, align: 64, offset: 22528)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !139, file: !140, line: 1552, baseType: !5675, size: 35328, offset: 23040)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5676, line: 430, size: 35328, elements: !5677)
!5676 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5677 = !{!5678, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5705, !5706, !5707, !5708, !5709, !5710, !5713, !5714, !5715, !5716}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5675, file: !5676, line: 432, baseType: !5679, size: 192)
!5679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5680, size: 192, elements: !547)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5681, line: 16, size: 64, elements: !5682)
!5681 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5682 = !{!5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5680, file: !5681, line: 17, baseType: !71, size: 16)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5680, file: !5681, line: 18, baseType: !71, size: 16, offset: 16)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5680, file: !5681, line: 19, baseType: !71, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5680, file: !5681, line: 19, baseType: !71, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5680, file: !5681, line: 19, baseType: !71, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5680, file: !5681, line: 19, baseType: !71, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5680, file: !5681, line: 19, baseType: !71, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5680, file: !5681, line: 20, baseType: !71, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5680, file: !5681, line: 20, baseType: !71, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5680, file: !5681, line: 20, baseType: !71, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5680, file: !5681, line: 20, baseType: !71, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5680, file: !5681, line: 20, baseType: !71, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5680, file: !5681, line: 20, baseType: !71, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5675, file: !5676, line: 436, baseType: !147, size: 64, offset: 192)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5675, file: !5676, line: 440, baseType: !73, size: 16, offset: 256)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5675, file: !5676, line: 441, baseType: !73, size: 16, offset: 272)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5675, file: !5676, line: 442, baseType: !73, size: 16, offset: 288)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5675, file: !5676, line: 443, baseType: !73, size: 16, offset: 304)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5675, file: !5676, line: 447, baseType: !147, size: 64, offset: 320)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5675, file: !5676, line: 448, baseType: !147, size: 64, offset: 384)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5675, file: !5676, line: 459, baseType: !5704, size: 256, offset: 448)
!5704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2703, size: 256, elements: !86)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5675, file: !5676, line: 461, baseType: !147, size: 64, offset: 704)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5675, file: !5676, line: 463, baseType: !147, size: 64, offset: 768)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5675, file: !5676, line: 465, baseType: !147, size: 64, offset: 832)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5675, file: !5676, line: 466, baseType: !147, size: 64, offset: 896)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5675, file: !5676, line: 467, baseType: !147, size: 64, offset: 960)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5675, file: !5676, line: 473, baseType: !5711, size: 64, offset: 1024)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5676, line: 10, flags: DIFlagFwdDecl)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5675, file: !5676, line: 480, baseType: !147, size: 64, offset: 1088)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5675, file: !5676, line: 482, baseType: !35, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5675, file: !5676, line: 491, baseType: !150, size: 32, offset: 1184)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5675, file: !5676, line: 501, baseType: !5717, size: 33792, offset: 1536)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5718, line: 448, size: 33792, elements: !5719)
!5718 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5719 = !{!5720, !5721, !5722, !5830, !5831, !5837, !5838}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5717, file: !5718, line: 461, baseType: !35, size: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5717, file: !5718, line: 468, baseType: !147, size: 64, offset: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5717, file: !5718, line: 476, baseType: !5723, size: 64, offset: 128)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5718, line: 356, size: 33280, align: 512, elements: !5725)
!5725 = !{!5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5724, file: !5718, line: 358, baseType: !35, size: 32)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5724, file: !5718, line: 361, baseType: !35, size: 32, offset: 32)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5724, file: !5718, line: 364, baseType: !203, size: 64, offset: 64)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5724, file: !5718, line: 367, baseType: !203, size: 64, offset: 128)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5724, file: !5718, line: 370, baseType: !203, size: 64, offset: 192)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5724, file: !5718, line: 373, baseType: !35, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5724, file: !5718, line: 376, baseType: !35, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5724, file: !5718, line: 391, baseType: !35, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5724, file: !5718, line: 394, baseType: !35, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5724, file: !5718, line: 397, baseType: !5736, size: 32768, offset: 512)
!5736 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5718, line: 348, size: 32768, elements: !5737)
!5737 = !{!5738, !5753, !5790, !5815, !5828}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5736, file: !5718, line: 349, baseType: !5739, size: 896)
!5739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5718, line: 12, size: 896, elements: !5740)
!5740 = !{!5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5752}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5739, file: !5718, line: 13, baseType: !150, size: 32)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5739, file: !5718, line: 14, baseType: !150, size: 32, offset: 32)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5739, file: !5718, line: 15, baseType: !150, size: 32, offset: 64)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5739, file: !5718, line: 16, baseType: !150, size: 32, offset: 96)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5739, file: !5718, line: 17, baseType: !150, size: 32, offset: 128)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5739, file: !5718, line: 18, baseType: !150, size: 32, offset: 160)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5739, file: !5718, line: 19, baseType: !150, size: 32, offset: 192)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5739, file: !5718, line: 22, baseType: !5749, size: 640, offset: 224)
!5749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 640, elements: !5750)
!5750 = !{!5751}
!5751 = !DISubrange(count: 20)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5739, file: !5718, line: 25, baseType: !150, size: 32, offset: 864)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5736, file: !5718, line: 350, baseType: !5754, size: 4096, align: 128)
!5754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5718, line: 34, size: 4096, align: 128, elements: !5755)
!5755 = !{!5756, !5757, !5758, !5759, !5760, !5775, !5776, !5777, !5779, !5781, !5785}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5754, file: !5718, line: 35, baseType: !71, size: 16)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5754, file: !5718, line: 36, baseType: !71, size: 16, offset: 16)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5754, file: !5718, line: 37, baseType: !71, size: 16, offset: 32)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5754, file: !5718, line: 38, baseType: !71, size: 16, offset: 48)
!5760 = !DIDerivedType(tag: DW_TAG_member, scope: !5754, file: !5718, line: 39, baseType: !5761, size: 128, offset: 64)
!5761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5754, file: !5718, line: 39, size: 128, elements: !5762)
!5762 = !{!5763, !5768}
!5763 = !DIDerivedType(tag: DW_TAG_member, scope: !5761, file: !5718, line: 40, baseType: !5764, size: 128)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5761, file: !5718, line: 40, size: 128, elements: !5765)
!5765 = !{!5766, !5767}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5764, file: !5718, line: 41, baseType: !203, size: 64)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5764, file: !5718, line: 42, baseType: !203, size: 64, offset: 64)
!5768 = !DIDerivedType(tag: DW_TAG_member, scope: !5761, file: !5718, line: 44, baseType: !5769, size: 128)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5761, file: !5718, line: 44, size: 128, elements: !5770)
!5770 = !{!5771, !5772, !5773, !5774}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5769, file: !5718, line: 45, baseType: !150, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5769, file: !5718, line: 46, baseType: !150, size: 32, offset: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5769, file: !5718, line: 47, baseType: !150, size: 32, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5769, file: !5718, line: 48, baseType: !150, size: 32, offset: 96)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5754, file: !5718, line: 51, baseType: !150, size: 32, offset: 192)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5754, file: !5718, line: 52, baseType: !150, size: 32, offset: 224)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5754, file: !5718, line: 55, baseType: !5778, size: 1024, offset: 256)
!5778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !4424)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5754, file: !5718, line: 58, baseType: !5780, size: 2048, offset: 1280)
!5780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, elements: !1313)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5754, file: !5718, line: 60, baseType: !5782, size: 384, offset: 3328)
!5782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !5783)
!5783 = !{!5784}
!5784 = !DISubrange(count: 12)
!5785 = !DIDerivedType(tag: DW_TAG_member, scope: !5754, file: !5718, line: 62, baseType: !5786, size: 384, offset: 3712)
!5786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5754, file: !5718, line: 62, size: 384, elements: !5787)
!5787 = !{!5788, !5789}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5786, file: !5718, line: 63, baseType: !5782, size: 384)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5786, file: !5718, line: 64, baseType: !5782, size: 384)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5736, file: !5718, line: 351, baseType: !5791, size: 1088)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5718, line: 79, size: 1088, elements: !5792)
!5792 = !{!5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5814}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5791, file: !5718, line: 80, baseType: !150, size: 32)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5791, file: !5718, line: 81, baseType: !150, size: 32, offset: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5791, file: !5718, line: 82, baseType: !150, size: 32, offset: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5791, file: !5718, line: 83, baseType: !150, size: 32, offset: 96)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5791, file: !5718, line: 84, baseType: !150, size: 32, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5791, file: !5718, line: 85, baseType: !150, size: 32, offset: 160)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5791, file: !5718, line: 86, baseType: !150, size: 32, offset: 192)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5791, file: !5718, line: 88, baseType: !5749, size: 640, offset: 224)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5791, file: !5718, line: 89, baseType: !61, size: 8, offset: 864)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5791, file: !5718, line: 90, baseType: !61, size: 8, offset: 872)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5791, file: !5718, line: 91, baseType: !61, size: 8, offset: 880)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5791, file: !5718, line: 92, baseType: !61, size: 8, offset: 888)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5791, file: !5718, line: 93, baseType: !61, size: 8, offset: 896)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5791, file: !5718, line: 94, baseType: !61, size: 8, offset: 904)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5791, file: !5718, line: 95, baseType: !5808, size: 64, offset: 960)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5810, line: 11, size: 128, elements: !5811)
!5810 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5811 = !{!5812, !5813}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5809, file: !5810, line: 12, baseType: !943, size: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5809, file: !5810, line: 13, baseType: !3679, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5791, file: !5718, line: 96, baseType: !150, size: 32, offset: 1024)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5736, file: !5718, line: 352, baseType: !5816, size: 4608, align: 512)
!5816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5718, line: 333, size: 4608, align: 512, elements: !5817)
!5817 = !{!5818, !5819, !5826}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5816, file: !5718, line: 334, baseType: !5754, size: 4096, align: 128)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5816, file: !5718, line: 335, baseType: !5820, size: 512, offset: 4096)
!5820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5718, line: 312, size: 512, elements: !5821)
!5821 = !{!5822, !5823, !5824}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5820, file: !5718, line: 313, baseType: !203, size: 64)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5820, file: !5718, line: 314, baseType: !203, size: 64, offset: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5820, file: !5718, line: 315, baseType: !5825, size: 384, offset: 128)
!5825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 384, elements: !665)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5816, file: !5718, line: 336, baseType: !5827, offset: 4608)
!5827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !955)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5736, file: !5718, line: 353, baseType: !5829, size: 32768)
!5829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32768, elements: !2646)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5717, file: !5718, line: 484, baseType: !5723, size: 64, offset: 192)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5717, file: !5718, line: 491, baseType: !5832, size: 128, offset: 256)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5718, line: 404, size: 128, elements: !5833)
!5833 = !{!5834, !5835, !5836}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5832, file: !5718, line: 424, baseType: !203, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5832, file: !5718, line: 432, baseType: !35, size: 32, offset: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5832, file: !5718, line: 440, baseType: !35, size: 32, offset: 96)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5717, file: !5718, line: 498, baseType: !5832, size: 128, offset: 384)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5717, file: !5718, line: 508, baseType: !5724, size: 33280, align: 512, offset: 512)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !117, file: !118, line: 31, baseType: !3248, size: 64, offset: 448)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !117, file: !118, line: 32, baseType: !35, size: 32, offset: 512)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 33, baseType: !116, size: 64, offset: 576)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !117, file: !118, line: 35, baseType: !5843, size: 64, offset: 640)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !118, line: 17, flags: DIFlagFwdDecl)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !117, file: !118, line: 37, baseType: !764, size: 64, offset: 704)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !117, file: !118, line: 38, baseType: !928, size: 64, offset: 768)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !117, file: !118, line: 39, baseType: !18, size: 32, offset: 832)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !117, file: !118, line: 40, baseType: !797, size: 192, offset: 896)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !117, file: !118, line: 42, baseType: !18, size: 32, offset: 1088)
!5850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !5851, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.itimer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/itimer\22 -D KBUILD_BASENAME=\22itimer\22 -D KBUILD_MODNAME=\22itimer\22 -D __KBUILD_MODNAME=kmod_itimer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/itimer.ll kernel/time/itimer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5852, retainedTypes: !5875, globals: !5901, splitDebugInlining: false, nameTableKind: None)
!5851 = !DIFile(filename: "kernel/time/itimer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecca8dbfff8e64c4bf446c1028ce4fe7")
!5852 = !{!287, !855, !552, !1255, !1481, !1627, !1899, !1969, !2495, !2608, !2815, !2877, !2954, !2962, !3093, !3103, !3109, !3117, !3296, !4086, !4155, !4947, !5575, !5853, !5858}
!5853 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5854, line: 10, baseType: !35, size: 32, elements: !5855)
!5854 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5855 = !{!5856, !5857}
!5856 = !DIEnumerator(name: "false", value: 0)
!5857 = !DIEnumerator(name: "true", value: 1)
!5858 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !272, line: 39, baseType: !35, size: 32, elements: !5859)
!5859 = !{!5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874}
!5860 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!5861 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!5862 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!5863 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!5864 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!5865 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!5866 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!5867 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!5868 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!5869 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!5870 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!5871 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!5872 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!5873 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!5874 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!5875 = !{!35, !132, !5099, !5876, !18, !5877, !5886, !138, !147, !5887, !2298, !5896, !2588, !5899, !4030, !150, !214, !203}
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_itimerval", file: !4958, line: 36, size: 256, elements: !5879)
!5879 = !{!5880, !5885}
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !5878, file: !4958, line: 37, baseType: !5881, size: 128)
!5881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_timeval", file: !4958, line: 25, size: 128, elements: !5882)
!5882 = !{!5883, !5884}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5881, file: !4958, line: 26, baseType: !1170, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5881, file: !4958, line: 27, baseType: !1170, size: 64, offset: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !5878, file: !4958, line: 38, baseType: !5881, size: 128, offset: 128)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_itimerval32", file: !5851, line: 124, size: 128, elements: !5889)
!5889 = !{!5890, !5895}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !5888, file: !5851, line: 125, baseType: !5891, size: 64)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timeval32", file: !4966, line: 12, size: 64, elements: !5892)
!5892 = !{!5893, !5894}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5891, file: !4966, line: 13, baseType: !4969, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5891, file: !4966, line: 14, baseType: !611, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !5888, file: !5851, line: 126, baseType: !5891, size: 64, offset: 64)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5898)
!5898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2588)
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!5901 = !{!0, !7, !13, !5902, !5904, !5941, !5943, !5963, !5968}
!5902 = !DIGlobalVariableExpression(var: !5903, expr: !DIExpression())
!5903 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406", scope: !15, file: !9, line: 348, type: !132, isLocal: true, isDefinition: true)
!5904 = !DIGlobalVariableExpression(var: !5905, expr: !DIExpression())
!5905 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_itimer_state397", scope: !5906, file: !9, line: 311, type: !132, isLocal: true, isDefinition: true)
!5906 = distinct !DISubprogram(name: "trace_itimer_state", scope: !9, file: !9, line: 311, type: !5907, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !5916)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{null, !18, !5909, !205}
!5909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5910)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5912)
!5912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec64", file: !636, line: 18, size: 256, elements: !5913)
!5913 = !{!5914, !5915}
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !5912, file: !636, line: 19, baseType: !1126, size: 128)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !5912, file: !636, line: 20, baseType: !1126, size: 128, offset: 128)
!5916 = !{!5917, !5918, !5919, !5920, !5923, !5926, !5928, !5930, !5933, !5936, !5938, !5939}
!5917 = !DILocalVariable(name: "which", arg: 1, scope: !5906, file: !9, line: 311, type: !18)
!5918 = !DILocalVariable(name: "value", arg: 2, scope: !5906, file: !9, line: 311, type: !5909)
!5919 = !DILocalVariable(name: "expires", arg: 3, scope: !5906, file: !9, line: 311, type: !205)
!5920 = !DILocalVariable(name: "__idx", scope: !5921, file: !9, line: 311, type: !18)
!5921 = distinct !DILexicalBlock(scope: !5922, file: !9, line: 311, column: 1)
!5922 = distinct !DILexicalBlock(scope: !5906, file: !9, line: 311, column: 1)
!5923 = !DILocalVariable(name: "pscr_ret__", scope: !5924, file: !9, line: 311, type: !18)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !9, line: 311, column: 1)
!5925 = distinct !DILexicalBlock(scope: !5921, file: !9, line: 311, column: 1)
!5926 = !DILocalVariable(name: "__vpp_verify", scope: !5927, file: !9, line: 311, type: !1986)
!5927 = distinct !DILexicalBlock(scope: !5924, file: !9, line: 311, column: 1)
!5928 = !DILocalVariable(name: "pfo_val__", scope: !5929, file: !9, line: 311, type: !150)
!5929 = distinct !DILexicalBlock(scope: !5924, file: !9, line: 311, column: 1)
!5930 = !DILocalVariable(name: "__ret_warn_on", scope: !5931, file: !9, line: 311, type: !18)
!5931 = distinct !DILexicalBlock(scope: !5932, file: !9, line: 311, column: 1)
!5932 = distinct !DILexicalBlock(scope: !5921, file: !9, line: 311, column: 1)
!5933 = !DILocalVariable(name: "__flags", scope: !5934, file: !9, line: 311, type: !18)
!5934 = distinct !DILexicalBlock(scope: !5935, file: !9, line: 311, column: 1)
!5935 = distinct !DILexicalBlock(scope: !5931, file: !9, line: 311, column: 1)
!5936 = !DILocalVariable(name: "it_func_ptr", scope: !5937, file: !9, line: 311, type: !2588)
!5937 = distinct !DILexicalBlock(scope: !5921, file: !9, line: 311, column: 1)
!5938 = !DILocalVariable(name: "__data", scope: !5937, file: !9, line: 311, type: !132)
!5939 = !DILocalVariable(name: "__UNIQUE_ID_rcu395", scope: !5940, file: !9, line: 311, type: !2588)
!5940 = distinct !DILexicalBlock(scope: !5937, file: !9, line: 311, column: 1)
!5941 = !DIGlobalVariableExpression(var: !5942, expr: !DIExpression())
!5942 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398", scope: !5906, file: !9, line: 311, type: !132, isLocal: true, isDefinition: true)
!5943 = !DIGlobalVariableExpression(var: !5944, expr: !DIExpression())
!5944 = distinct !DIGlobalVariable(name: "__already_done", scope: !5945, file: !5851, line: 344, type: !678, isLocal: true, isDefinition: true)
!5945 = distinct !DISubprogram(name: "__do_sys_setitimer", scope: !5851, file: !5851, line: 332, type: !5946, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !5948)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!943, !18, !5877, !5877}
!5948 = !{!5949, !5950, !5951, !5952, !5953, !5954, !5955, !5959, !5962}
!5949 = !DILocalVariable(name: "which", arg: 1, scope: !5945, file: !5851, line: 332, type: !18)
!5950 = !DILocalVariable(name: "value", arg: 2, scope: !5945, file: !5851, line: 332, type: !5877)
!5951 = !DILocalVariable(name: "ovalue", arg: 3, scope: !5945, file: !5851, line: 332, type: !5877)
!5952 = !DILocalVariable(name: "set_buffer", scope: !5945, file: !5851, line: 335, type: !5912)
!5953 = !DILocalVariable(name: "get_buffer", scope: !5945, file: !5851, line: 335, type: !5912)
!5954 = !DILocalVariable(name: "error", scope: !5945, file: !5851, line: 336, type: !18)
!5955 = !DILocalVariable(name: "__ret_do_once", scope: !5956, file: !5851, line: 344, type: !678)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !5851, line: 344, column: 3)
!5957 = distinct !DILexicalBlock(scope: !5958, file: !5851, line: 342, column: 9)
!5958 = distinct !DILexicalBlock(scope: !5945, file: !5851, line: 338, column: 6)
!5959 = !DILocalVariable(name: "__ret_cond", scope: !5960, file: !5851, line: 344, type: !678)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !5851, line: 344, column: 3)
!5961 = distinct !DILexicalBlock(scope: !5956, file: !5851, line: 344, column: 3)
!5962 = !DILocalVariable(name: "__ret_once", scope: !5960, file: !5851, line: 344, type: !678)
!5963 = !DIGlobalVariableExpression(var: !5964, expr: !DIExpression())
!5964 = distinct !DIGlobalVariable(scope: null, file: !5851, line: 344, type: !5965, isLocal: true, isDefinition: true)
!5965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 704, elements: !5966)
!5966 = !{!5967}
!5967 = !DISubrange(count: 88)
!5968 = !DIGlobalVariableExpression(var: !5969, expr: !DIExpression())
!5969 = distinct !DIGlobalVariable(name: "__already_done", scope: !5970, file: !5851, line: 391, type: !678, isLocal: true, isDefinition: true)
!5970 = distinct !DISubprogram(name: "__do_compat_sys_setitimer", scope: !5851, file: !5851, line: 378, type: !5971, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !5973)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!943, !18, !5887, !5887}
!5973 = !{!5974, !5975, !5976, !5977, !5978, !5979, !5980, !5984, !5987}
!5974 = !DILocalVariable(name: "which", arg: 1, scope: !5970, file: !5851, line: 378, type: !18)
!5975 = !DILocalVariable(name: "value", arg: 2, scope: !5970, file: !5851, line: 378, type: !5887)
!5976 = !DILocalVariable(name: "ovalue", arg: 3, scope: !5970, file: !5851, line: 378, type: !5887)
!5977 = !DILocalVariable(name: "set_buffer", scope: !5970, file: !5851, line: 382, type: !5912)
!5978 = !DILocalVariable(name: "get_buffer", scope: !5970, file: !5851, line: 382, type: !5912)
!5979 = !DILocalVariable(name: "error", scope: !5970, file: !5851, line: 383, type: !18)
!5980 = !DILocalVariable(name: "__ret_do_once", scope: !5981, file: !5851, line: 391, type: !678)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !5851, line: 391, column: 3)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !5851, line: 389, column: 9)
!5983 = distinct !DILexicalBlock(scope: !5970, file: !5851, line: 385, column: 6)
!5984 = !DILocalVariable(name: "__ret_cond", scope: !5985, file: !5851, line: 391, type: !678)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !5851, line: 391, column: 3)
!5986 = distinct !DILexicalBlock(scope: !5981, file: !5851, line: 391, column: 3)
!5987 = !DILocalVariable(name: "__ret_once", scope: !5985, file: !5851, line: 391, type: !678)
!5988 = !{!5989, !5990, !5991, !5992, !5995, !5998, !6000, !6002, !6005, !6008, !6010, !6011}
!5989 = !DILocalVariable(name: "which", arg: 1, scope: !15, file: !9, line: 348, type: !18)
!5990 = !DILocalVariable(name: "pid", arg: 2, scope: !15, file: !9, line: 348, type: !19)
!5991 = !DILocalVariable(name: "now", arg: 3, scope: !15, file: !9, line: 348, type: !205)
!5992 = !DILocalVariable(name: "__idx", scope: !5993, file: !9, line: 348, type: !18)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !9, line: 348, column: 1)
!5994 = distinct !DILexicalBlock(scope: !15, file: !9, line: 348, column: 1)
!5995 = !DILocalVariable(name: "pscr_ret__", scope: !5996, file: !9, line: 348, type: !18)
!5996 = distinct !DILexicalBlock(scope: !5997, file: !9, line: 348, column: 1)
!5997 = distinct !DILexicalBlock(scope: !5993, file: !9, line: 348, column: 1)
!5998 = !DILocalVariable(name: "__vpp_verify", scope: !5999, file: !9, line: 348, type: !1986)
!5999 = distinct !DILexicalBlock(scope: !5996, file: !9, line: 348, column: 1)
!6000 = !DILocalVariable(name: "pfo_val__", scope: !6001, file: !9, line: 348, type: !150)
!6001 = distinct !DILexicalBlock(scope: !5996, file: !9, line: 348, column: 1)
!6002 = !DILocalVariable(name: "__ret_warn_on", scope: !6003, file: !9, line: 348, type: !18)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !9, line: 348, column: 1)
!6004 = distinct !DILexicalBlock(scope: !5993, file: !9, line: 348, column: 1)
!6005 = !DILocalVariable(name: "__flags", scope: !6006, file: !9, line: 348, type: !18)
!6006 = distinct !DILexicalBlock(scope: !6007, file: !9, line: 348, column: 1)
!6007 = distinct !DILexicalBlock(scope: !6003, file: !9, line: 348, column: 1)
!6008 = !DILocalVariable(name: "it_func_ptr", scope: !6009, file: !9, line: 348, type: !2588)
!6009 = distinct !DILexicalBlock(scope: !5993, file: !9, line: 348, column: 1)
!6010 = !DILocalVariable(name: "__data", scope: !6009, file: !9, line: 348, type: !132)
!6011 = !DILocalVariable(name: "__UNIQUE_ID_rcu403", scope: !6012, file: !9, line: 348, type: !2588)
!6012 = distinct !DILexicalBlock(scope: !6009, file: !9, line: 348, column: 1)
!6013 = !{!"rsp"}
!6014 = !{i32 7, !"Dwarf Version", i32 5}
!6015 = !{i32 2, !"Debug Info Version", i32 3}
!6016 = !{i32 1, !"wchar_size", i32 2}
!6017 = !{i32 8, !"cf-protection-branch", i32 1}
!6018 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6019 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6020 = !{i32 1, !"Code Model", i32 2}
!6021 = !{i32 1, !"override-stack-alignment", i32 8}
!6022 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6023 = distinct !DISubprogram(name: "__x64_sys_getitimer", scope: !5851, file: !5851, line: 113, type: !6024, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6028)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!943, !6026}
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!6028 = !{!6029}
!6029 = !DILocalVariable(name: "regs", arg: 1, scope: !6023, file: !5851, line: 113, type: !6026)
!6030 = !DILocation(line: 113, column: 1, scope: !6023)
!6031 = distinct !DISubprogram(name: "__se_sys_getitimer", scope: !5851, file: !5851, line: 113, type: !6032, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!943, !943, !943}
!6034 = !{!6035, !6036, !6037}
!6035 = !DILocalVariable(name: "which", arg: 1, scope: !6031, file: !5851, line: 113, type: !943)
!6036 = !DILocalVariable(name: "value", arg: 2, scope: !6031, file: !5851, line: 113, type: !943)
!6037 = !DILocalVariable(name: "ret", scope: !6031, file: !5851, line: 113, type: !943)
!6038 = !DILocation(line: 113, column: 1, scope: !6031)
!6039 = !DILocation(line: 113, column: 1, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6031, file: !5851, line: 113, column: 1)
!6041 = distinct !DISubprogram(name: "__ia32_sys_getitimer", scope: !5851, file: !5851, line: 113, type: !6024, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6042)
!6042 = !{!6043}
!6043 = !DILocalVariable(name: "regs", arg: 1, scope: !6041, file: !5851, line: 113, type: !6026)
!6044 = !DILocation(line: 113, column: 1, scope: !6041)
!6045 = distinct !DISubprogram(name: "__ia32_compat_sys_getitimer", scope: !5851, file: !5851, line: 141, type: !6024, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6046)
!6046 = !{!6047}
!6047 = !DILocalVariable(name: "regs", arg: 1, scope: !6045, file: !5851, line: 141, type: !6026)
!6048 = !DILocation(line: 141, column: 1, scope: !6045)
!6049 = distinct !DISubprogram(name: "__se_compat_sys_getitimer", scope: !5851, file: !5851, line: 141, type: !6032, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6050)
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "which", arg: 1, scope: !6049, file: !5851, line: 141, type: !943)
!6052 = !DILocalVariable(name: "value", arg: 2, scope: !6049, file: !5851, line: 141, type: !943)
!6053 = !DILocation(line: 141, column: 1, scope: !6049)
!6054 = distinct !DISubprogram(name: "it_real_fn", scope: !5851, file: !5851, line: 156, type: !285, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6055)
!6055 = !{!6056, !6057, !6058, !6060}
!6056 = !DILocalVariable(name: "timer", arg: 1, scope: !6054, file: !5851, line: 156, type: !291)
!6057 = !DILocalVariable(name: "sig", scope: !6054, file: !5851, line: 158, type: !5099)
!6058 = !DILocalVariable(name: "__mptr", scope: !6059, file: !5851, line: 159, type: !132)
!6059 = distinct !DILexicalBlock(scope: !6054, file: !5851, line: 159, column: 3)
!6060 = !DILocalVariable(name: "leader_pid", scope: !6054, file: !5851, line: 160, type: !19)
!6061 = !DILocation(line: 156, column: 49, scope: !6054)
!6062 = !DILocation(line: 158, column: 2, scope: !6054)
!6063 = !DILocation(line: 158, column: 24, scope: !6054)
!6064 = !DILocation(line: 159, column: 3, scope: !6059)
!6065 = !DILocation(line: 159, column: 3, scope: !6054)
!6066 = !DILocation(line: 160, column: 2, scope: !6054)
!6067 = !DILocation(line: 160, column: 14, scope: !6054)
!6068 = !DILocation(line: 160, column: 27, scope: !6054)
!6069 = !DILocation(line: 160, column: 32, scope: !6054)
!6070 = !DILocation(line: 162, column: 35, scope: !6054)
!6071 = !DILocation(line: 162, column: 2, scope: !6054)
!6072 = !DILocation(line: 163, column: 40, scope: !6054)
!6073 = !DILocation(line: 163, column: 2, scope: !6054)
!6074 = !DILocation(line: 166, column: 1, scope: !6054)
!6075 = !DILocation(line: 165, column: 2, scope: !6054)
!6076 = !DILocation(line: 348, column: 1, scope: !15)
!6077 = !DILocation(line: 348, column: 1, scope: !5994)
!6078 = !DILocation(line: 348, column: 1, scope: !5993)
!6079 = !DILocation(line: 348, column: 1, scope: !5996)
!6080 = !DILocation(line: 348, column: 1, scope: !5999)
!6081 = !DILocation(line: 348, column: 1, scope: !6001)
!6082 = !{i64 2156043747}
!6083 = !DILocation(line: 348, column: 1, scope: !5997)
!6084 = !DILocation(line: 348, column: 1, scope: !6003)
!6085 = !DILocation(line: 348, column: 1, scope: !6007)
!6086 = !DILocation(line: 348, column: 1, scope: !6006)
!6087 = !DILocation(line: 348, column: 1, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6006, file: !9, line: 348, column: 1)
!6089 = !DILocation(line: 348, column: 1, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6006, file: !9, line: 348, column: 1)
!6091 = !{i64 2156044954, i64 2156044983, i64 2156045029, i64 2156045087, i64 2156045141, i64 2156045195, i64 2156045250, i64 2156045281, i64 2156045589, i64 2156045595, i64 2156045642, i64 2156045665, i64 2156045691}
!6092 = !DILocation(line: 348, column: 1, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6006, file: !9, line: 348, column: 1)
!6094 = !DILocation(line: 348, column: 1, scope: !6004)
!6095 = !DILocation(line: 348, column: 1, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !5993, file: !9, line: 348, column: 1)
!6097 = !{i64 2156046044}
!6098 = !DILocation(line: 348, column: 1, scope: !6009)
!6099 = !DILocation(line: 348, column: 1, scope: !6012)
!6100 = !DILocation(line: 348, column: 1, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6012, file: !9, line: 348, column: 1)
!6102 = !DILocation(line: 348, column: 1, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6101, file: !9, line: 348, column: 1)
!6104 = !DILocation(line: 348, column: 1, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6009, file: !9, line: 348, column: 1)
!6106 = !DILocation(line: 348, column: 1, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6105, file: !9, line: 348, column: 1)
!6108 = !DILocation(line: 348, column: 1, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6107, file: !9, line: 348, column: 1)
!6110 = !DILocation(line: 348, column: 1, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !5993, file: !9, line: 348, column: 1)
!6112 = !{i64 2156052354}
!6113 = !DILocation(line: 348, column: 1, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6111, file: !9, line: 348, column: 1)
!6115 = !DILocation(line: 348, column: 1, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6114, file: !9, line: 348, column: 1)
!6117 = !{i64 2156052513}
!6118 = !DISubprogram(name: "kill_pid_info", scope: !5101, file: !5101, line: 338, type: !6119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{!18, !18, !5876, !19}
!6121 = distinct !DISubprogram(name: "clear_itimer", scope: !5851, file: !5851, line: 253, type: !2585, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6122)
!6122 = !{!6123, !6124}
!6123 = !DILocalVariable(name: "v", scope: !6121, file: !5851, line: 255, type: !5912)
!6124 = !DILocalVariable(name: "i", scope: !6121, file: !5851, line: 256, type: !18)
!6125 = !DILocation(line: 255, column: 2, scope: !6121)
!6126 = !DILocation(line: 255, column: 22, scope: !6121)
!6127 = !DILocation(line: 256, column: 2, scope: !6121)
!6128 = !DILocation(line: 256, column: 6, scope: !6121)
!6129 = !DILocation(line: 258, column: 9, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6121, file: !5851, line: 258, column: 2)
!6131 = !DILocation(line: 258, column: 7, scope: !6130)
!6132 = !DILocation(line: 258, column: 14, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6130, file: !5851, line: 258, column: 2)
!6134 = !DILocation(line: 258, column: 16, scope: !6133)
!6135 = !DILocation(line: 258, column: 2, scope: !6130)
!6136 = !DILocation(line: 259, column: 16, scope: !6133)
!6137 = !DILocation(line: 259, column: 3, scope: !6133)
!6138 = !DILocation(line: 258, column: 22, scope: !6133)
!6139 = !DILocation(line: 258, column: 2, scope: !6133)
!6140 = distinct !{!6140, !6135, !6141, !6142, !6143}
!6141 = !DILocation(line: 259, column: 27, scope: !6130)
!6142 = !{!"llvm.loop.mustprogress"}
!6143 = !{!"llvm.loop.unroll.disable"}
!6144 = !DILocation(line: 260, column: 1, scope: !6121)
!6145 = distinct !DISubprogram(name: "do_setitimer", scope: !5851, file: !5851, line: 206, type: !6146, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6149)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!18, !18, !6148, !6148}
!6148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!6149 = !{!6150, !6151, !6152, !6153, !6154, !6155, !6156}
!6150 = !DILocalVariable(name: "which", arg: 1, scope: !6145, file: !5851, line: 206, type: !18)
!6151 = !DILocalVariable(name: "value", arg: 2, scope: !6145, file: !5851, line: 206, type: !6148)
!6152 = !DILocalVariable(name: "ovalue", arg: 3, scope: !6145, file: !5851, line: 207, type: !6148)
!6153 = !DILocalVariable(name: "tsk", scope: !6145, file: !5851, line: 209, type: !138)
!6154 = !DILocalVariable(name: "timer", scope: !6145, file: !5851, line: 210, type: !291)
!6155 = !DILocalVariable(name: "expires", scope: !6145, file: !5851, line: 211, type: !280)
!6156 = !DILabel(scope: !6157, name: "again", file: !5851, line: 215)
!6157 = distinct !DILexicalBlock(scope: !6145, file: !5851, line: 213, column: 17)
!6158 = !DILocation(line: 206, column: 29, scope: !6145)
!6159 = !DILocation(line: 206, column: 57, scope: !6145)
!6160 = !DILocation(line: 207, column: 25, scope: !6145)
!6161 = !DILocation(line: 209, column: 2, scope: !6145)
!6162 = !DILocation(line: 209, column: 22, scope: !6145)
!6163 = !DILocation(line: 209, column: 28, scope: !6145)
!6164 = !DILocation(line: 210, column: 2, scope: !6145)
!6165 = !DILocation(line: 210, column: 18, scope: !6145)
!6166 = !DILocation(line: 211, column: 2, scope: !6145)
!6167 = !DILocation(line: 211, column: 10, scope: !6145)
!6168 = !DILocation(line: 213, column: 10, scope: !6145)
!6169 = !DILocation(line: 213, column: 2, scope: !6145)
!6170 = !DILocation(line: 213, column: 17, scope: !6145)
!6171 = !DILocation(line: 215, column: 1, scope: !6157)
!6172 = !DILocation(line: 216, column: 18, scope: !6157)
!6173 = !DILocation(line: 216, column: 23, scope: !6157)
!6174 = !DILocation(line: 216, column: 32, scope: !6157)
!6175 = !DILocation(line: 216, column: 3, scope: !6157)
!6176 = !DILocation(line: 217, column: 12, scope: !6157)
!6177 = !DILocation(line: 217, column: 17, scope: !6157)
!6178 = !DILocation(line: 217, column: 25, scope: !6157)
!6179 = !DILocation(line: 217, column: 9, scope: !6157)
!6180 = !DILocation(line: 218, column: 7, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6157, file: !5851, line: 218, column: 7)
!6182 = !DILocation(line: 218, column: 7, scope: !6157)
!6183 = !DILocation(line: 219, column: 4, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6181, file: !5851, line: 218, column: 15)
!6185 = !DILocation(line: 219, column: 12, scope: !6184)
!6186 = !DILocation(line: 219, column: 23, scope: !6184)
!6187 = !DILocation(line: 219, column: 42, scope: !6184)
!6188 = !DILocation(line: 220, column: 4, scope: !6184)
!6189 = !DILocation(line: 220, column: 12, scope: !6184)
!6190 = !DILocation(line: 221, column: 7, scope: !6184)
!6191 = !DILocation(line: 222, column: 3, scope: !6184)
!6192 = !DILocation(line: 224, column: 29, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6157, file: !5851, line: 224, column: 7)
!6194 = !DILocation(line: 224, column: 7, scope: !6193)
!6195 = !DILocation(line: 224, column: 36, scope: !6193)
!6196 = !DILocation(line: 224, column: 7, scope: !6157)
!6197 = !DILocation(line: 225, column: 21, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6193, file: !5851, line: 224, column: 41)
!6199 = !DILocation(line: 225, column: 26, scope: !6198)
!6200 = !DILocation(line: 225, column: 35, scope: !6198)
!6201 = !DILocation(line: 225, column: 4, scope: !6198)
!6202 = !DILocation(line: 226, column: 32, scope: !6198)
!6203 = !DILocation(line: 226, column: 4, scope: !6198)
!6204 = !DILocation(line: 227, column: 4, scope: !6198)
!6205 = !DILocation(line: 229, column: 33, scope: !6157)
!6206 = !DILocation(line: 229, column: 40, scope: !6157)
!6207 = !DILocation(line: 229, column: 13, scope: !6157)
!6208 = !DILocation(line: 229, column: 11, scope: !6157)
!6209 = !DILocation(line: 230, column: 7, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6157, file: !5851, line: 230, column: 7)
!6211 = !DILocation(line: 230, column: 15, scope: !6210)
!6212 = !DILocation(line: 230, column: 7, scope: !6157)
!6213 = !DILocation(line: 232, column: 25, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6210, file: !5851, line: 230, column: 21)
!6215 = !DILocation(line: 232, column: 32, scope: !6214)
!6216 = !DILocation(line: 232, column: 5, scope: !6214)
!6217 = !DILocation(line: 231, column: 4, scope: !6214)
!6218 = !DILocation(line: 231, column: 9, scope: !6214)
!6219 = !DILocation(line: 231, column: 17, scope: !6214)
!6220 = !DILocation(line: 231, column: 30, scope: !6214)
!6221 = !DILocation(line: 233, column: 18, scope: !6214)
!6222 = !DILocation(line: 233, column: 25, scope: !6214)
!6223 = !DILocation(line: 233, column: 4, scope: !6214)
!6224 = !DILocation(line: 234, column: 3, scope: !6214)
!6225 = !DILocation(line: 235, column: 4, scope: !6210)
!6226 = !DILocation(line: 235, column: 9, scope: !6210)
!6227 = !DILocation(line: 235, column: 17, scope: !6210)
!6228 = !DILocation(line: 235, column: 30, scope: !6210)
!6229 = !DILocation(line: 237, column: 35, scope: !6157)
!6230 = !DILocation(line: 237, column: 3, scope: !6157)
!6231 = !DILocation(line: 238, column: 20, scope: !6157)
!6232 = !DILocation(line: 238, column: 25, scope: !6157)
!6233 = !DILocation(line: 238, column: 34, scope: !6157)
!6234 = !DILocation(line: 238, column: 3, scope: !6157)
!6235 = !DILocation(line: 239, column: 3, scope: !6157)
!6236 = !DILocation(line: 241, column: 18, scope: !6157)
!6237 = !DILocation(line: 241, column: 38, scope: !6157)
!6238 = !DILocation(line: 241, column: 45, scope: !6157)
!6239 = !DILocation(line: 241, column: 3, scope: !6157)
!6240 = !DILocation(line: 242, column: 3, scope: !6157)
!6241 = !DILocation(line: 244, column: 18, scope: !6157)
!6242 = !DILocation(line: 244, column: 38, scope: !6157)
!6243 = !DILocation(line: 244, column: 45, scope: !6157)
!6244 = !DILocation(line: 244, column: 3, scope: !6157)
!6245 = !DILocation(line: 245, column: 3, scope: !6157)
!6246 = !DILocation(line: 247, column: 3, scope: !6157)
!6247 = !DILocation(line: 249, column: 2, scope: !6145)
!6248 = !DILocation(line: 250, column: 1, scope: !6145)
!6249 = distinct !DISubprogram(name: "__x64_sys_alarm", scope: !5851, file: !5851, line: 306, type: !6024, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6250)
!6250 = !{!6251}
!6251 = !DILocalVariable(name: "regs", arg: 1, scope: !6249, file: !5851, line: 306, type: !6026)
!6252 = !DILocation(line: 306, column: 1, scope: !6249)
!6253 = distinct !DISubprogram(name: "__se_sys_alarm", scope: !5851, file: !5851, line: 306, type: !6254, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!943, !943}
!6256 = !{!6257, !6258}
!6257 = !DILocalVariable(name: "seconds", arg: 1, scope: !6253, file: !5851, line: 306, type: !943)
!6258 = !DILocalVariable(name: "ret", scope: !6253, file: !5851, line: 306, type: !943)
!6259 = !DILocation(line: 306, column: 1, scope: !6253)
!6260 = !DILocation(line: 306, column: 1, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6253, file: !5851, line: 306, column: 1)
!6262 = distinct !DISubprogram(name: "__ia32_sys_alarm", scope: !5851, file: !5851, line: 306, type: !6024, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6263)
!6263 = !{!6264}
!6264 = !DILocalVariable(name: "regs", arg: 1, scope: !6262, file: !5851, line: 306, type: !6026)
!6265 = !DILocation(line: 306, column: 1, scope: !6262)
!6266 = distinct !DISubprogram(name: "__x64_sys_setitimer", scope: !5851, file: !5851, line: 332, type: !6024, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6267)
!6267 = !{!6268}
!6268 = !DILocalVariable(name: "regs", arg: 1, scope: !6266, file: !5851, line: 332, type: !6026)
!6269 = !DILocation(line: 332, column: 1, scope: !6266)
!6270 = distinct !DISubprogram(name: "__se_sys_setitimer", scope: !5851, file: !5851, line: 332, type: !6271, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6273)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{!943, !943, !943, !943}
!6273 = !{!6274, !6275, !6276, !6277}
!6274 = !DILocalVariable(name: "which", arg: 1, scope: !6270, file: !5851, line: 332, type: !943)
!6275 = !DILocalVariable(name: "value", arg: 2, scope: !6270, file: !5851, line: 332, type: !943)
!6276 = !DILocalVariable(name: "ovalue", arg: 3, scope: !6270, file: !5851, line: 332, type: !943)
!6277 = !DILocalVariable(name: "ret", scope: !6270, file: !5851, line: 332, type: !943)
!6278 = !DILocation(line: 332, column: 1, scope: !6270)
!6279 = !DILocation(line: 332, column: 1, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6270, file: !5851, line: 332, column: 1)
!6281 = distinct !DISubprogram(name: "__ia32_sys_setitimer", scope: !5851, file: !5851, line: 332, type: !6024, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6282)
!6282 = !{!6283}
!6283 = !DILocalVariable(name: "regs", arg: 1, scope: !6281, file: !5851, line: 332, type: !6026)
!6284 = !DILocation(line: 332, column: 1, scope: !6281)
!6285 = distinct !DISubprogram(name: "__ia32_compat_sys_setitimer", scope: !5851, file: !5851, line: 378, type: !6024, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6286)
!6286 = !{!6287}
!6287 = !DILocalVariable(name: "regs", arg: 1, scope: !6285, file: !5851, line: 378, type: !6026)
!6288 = !DILocation(line: 378, column: 1, scope: !6285)
!6289 = distinct !DISubprogram(name: "__se_compat_sys_setitimer", scope: !5851, file: !5851, line: 378, type: !6271, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6290)
!6290 = !{!6291, !6292, !6293}
!6291 = !DILocalVariable(name: "which", arg: 1, scope: !6289, file: !5851, line: 378, type: !943)
!6292 = !DILocalVariable(name: "value", arg: 2, scope: !6289, file: !5851, line: 378, type: !943)
!6293 = !DILocalVariable(name: "ovalue", arg: 3, scope: !6289, file: !5851, line: 378, type: !943)
!6294 = !DILocation(line: 378, column: 1, scope: !6289)
!6295 = distinct !DISubprogram(name: "__do_sys_getitimer", scope: !5851, file: !5851, line: 113, type: !6296, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6298)
!6296 = !DISubroutineType(types: !6297)
!6297 = !{!943, !18, !5877}
!6298 = !{!6299, !6300, !6301, !6302}
!6299 = !DILocalVariable(name: "which", arg: 1, scope: !6295, file: !5851, line: 113, type: !18)
!6300 = !DILocalVariable(name: "value", arg: 2, scope: !6295, file: !5851, line: 113, type: !5877)
!6301 = !DILocalVariable(name: "get_buffer", scope: !6295, file: !5851, line: 115, type: !5912)
!6302 = !DILocalVariable(name: "error", scope: !6295, file: !5851, line: 116, type: !18)
!6303 = !DILocation(line: 113, column: 1, scope: !6295)
!6304 = !DILocation(line: 115, column: 2, scope: !6295)
!6305 = !DILocation(line: 115, column: 22, scope: !6295)
!6306 = !DILocation(line: 116, column: 2, scope: !6295)
!6307 = !DILocation(line: 116, column: 6, scope: !6295)
!6308 = !DILocation(line: 116, column: 27, scope: !6295)
!6309 = !DILocation(line: 116, column: 14, scope: !6295)
!6310 = !DILocation(line: 118, column: 7, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6295, file: !5851, line: 118, column: 6)
!6312 = !DILocation(line: 118, column: 13, scope: !6311)
!6313 = !DILocation(line: 118, column: 30, scope: !6311)
!6314 = !DILocation(line: 118, column: 16, scope: !6311)
!6315 = !DILocation(line: 118, column: 6, scope: !6295)
!6316 = !DILocation(line: 119, column: 9, scope: !6311)
!6317 = !DILocation(line: 119, column: 3, scope: !6311)
!6318 = !DILocation(line: 120, column: 9, scope: !6295)
!6319 = !DILocation(line: 121, column: 1, scope: !6295)
!6320 = !DILocation(line: 120, column: 2, scope: !6295)
!6321 = distinct !DISubprogram(name: "do_getitimer", scope: !5851, file: !5851, line: 76, type: !6322, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6324)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!18, !18, !6148}
!6324 = !{!6325, !6326, !6327}
!6325 = !DILocalVariable(name: "which", arg: 1, scope: !6321, file: !5851, line: 76, type: !18)
!6326 = !DILocalVariable(name: "value", arg: 2, scope: !6321, file: !5851, line: 76, type: !6148)
!6327 = !DILocalVariable(name: "tsk", scope: !6321, file: !5851, line: 78, type: !138)
!6328 = !DILocation(line: 76, column: 29, scope: !6321)
!6329 = !DILocation(line: 76, column: 57, scope: !6321)
!6330 = !DILocation(line: 78, column: 2, scope: !6321)
!6331 = !DILocation(line: 78, column: 22, scope: !6321)
!6332 = !DILocation(line: 78, column: 28, scope: !6321)
!6333 = !DILocation(line: 80, column: 10, scope: !6321)
!6334 = !DILocation(line: 80, column: 2, scope: !6321)
!6335 = !DILocation(line: 82, column: 18, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6321, file: !5851, line: 80, column: 17)
!6337 = !DILocation(line: 82, column: 23, scope: !6336)
!6338 = !DILocation(line: 82, column: 32, scope: !6336)
!6339 = !DILocation(line: 82, column: 3, scope: !6336)
!6340 = !DILocation(line: 83, column: 3, scope: !6336)
!6341 = !DILocation(line: 83, column: 10, scope: !6336)
!6342 = !DILocation(line: 83, column: 21, scope: !6336)
!6343 = !DILocation(line: 83, column: 41, scope: !6336)
!6344 = !DILocation(line: 83, column: 46, scope: !6336)
!6345 = !DILocation(line: 83, column: 54, scope: !6336)
!6346 = !DILocation(line: 84, column: 3, scope: !6336)
!6347 = !DILocation(line: 84, column: 10, scope: !6336)
!6348 = !DILocation(line: 85, column: 4, scope: !6336)
!6349 = !DILocation(line: 86, column: 20, scope: !6336)
!6350 = !DILocation(line: 86, column: 25, scope: !6336)
!6351 = !DILocation(line: 86, column: 34, scope: !6336)
!6352 = !DILocation(line: 86, column: 3, scope: !6336)
!6353 = !DILocation(line: 87, column: 3, scope: !6336)
!6354 = !DILocation(line: 89, column: 18, scope: !6336)
!6355 = !DILocation(line: 89, column: 38, scope: !6336)
!6356 = !DILocation(line: 89, column: 3, scope: !6336)
!6357 = !DILocation(line: 90, column: 3, scope: !6336)
!6358 = !DILocation(line: 92, column: 18, scope: !6336)
!6359 = !DILocation(line: 92, column: 38, scope: !6336)
!6360 = !DILocation(line: 92, column: 3, scope: !6336)
!6361 = !DILocation(line: 93, column: 3, scope: !6336)
!6362 = !DILocation(line: 95, column: 3, scope: !6336)
!6363 = !DILocation(line: 97, column: 2, scope: !6321)
!6364 = !DILocation(line: 98, column: 1, scope: !6321)
!6365 = distinct !DISubprogram(name: "put_itimerval", scope: !5851, file: !5851, line: 100, type: !6366, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6368)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!18, !5877, !5910}
!6368 = !{!6369, !6370, !6371}
!6369 = !DILocalVariable(name: "o", arg: 1, scope: !6365, file: !5851, line: 100, type: !5877)
!6370 = !DILocalVariable(name: "i", arg: 2, scope: !6365, file: !5851, line: 101, type: !5910)
!6371 = !DILocalVariable(name: "v", scope: !6365, file: !5851, line: 103, type: !5878)
!6372 = !DILocation(line: 100, column: 64, scope: !6365)
!6373 = !DILocation(line: 101, column: 32, scope: !6365)
!6374 = !DILocation(line: 103, column: 2, scope: !6365)
!6375 = !DILocation(line: 103, column: 32, scope: !6365)
!6376 = !DILocation(line: 105, column: 25, scope: !6365)
!6377 = !DILocation(line: 105, column: 28, scope: !6365)
!6378 = !DILocation(line: 105, column: 40, scope: !6365)
!6379 = !DILocation(line: 105, column: 4, scope: !6365)
!6380 = !DILocation(line: 105, column: 16, scope: !6365)
!6381 = !DILocation(line: 105, column: 23, scope: !6365)
!6382 = !DILocation(line: 106, column: 26, scope: !6365)
!6383 = !DILocation(line: 106, column: 29, scope: !6365)
!6384 = !DILocation(line: 106, column: 41, scope: !6365)
!6385 = !DILocation(line: 106, column: 49, scope: !6365)
!6386 = !DILocation(line: 106, column: 4, scope: !6365)
!6387 = !DILocation(line: 106, column: 16, scope: !6365)
!6388 = !DILocation(line: 106, column: 24, scope: !6365)
!6389 = !DILocation(line: 107, column: 22, scope: !6365)
!6390 = !DILocation(line: 107, column: 25, scope: !6365)
!6391 = !DILocation(line: 107, column: 34, scope: !6365)
!6392 = !DILocation(line: 107, column: 4, scope: !6365)
!6393 = !DILocation(line: 107, column: 13, scope: !6365)
!6394 = !DILocation(line: 107, column: 20, scope: !6365)
!6395 = !DILocation(line: 108, column: 23, scope: !6365)
!6396 = !DILocation(line: 108, column: 26, scope: !6365)
!6397 = !DILocation(line: 108, column: 35, scope: !6365)
!6398 = !DILocation(line: 108, column: 43, scope: !6365)
!6399 = !DILocation(line: 108, column: 4, scope: !6365)
!6400 = !DILocation(line: 108, column: 13, scope: !6365)
!6401 = !DILocation(line: 108, column: 21, scope: !6365)
!6402 = !DILocation(line: 109, column: 22, scope: !6365)
!6403 = !DILocation(line: 109, column: 9, scope: !6365)
!6404 = !DILocation(line: 110, column: 1, scope: !6365)
!6405 = !DILocation(line: 109, column: 2, scope: !6365)
!6406 = distinct !DISubprogram(name: "get_current", scope: !6407, file: !6407, line: 39, type: !6408, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6410)
!6407 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!138}
!6410 = !{!6411, !6413, !6415}
!6411 = !DILocalVariable(name: "pscr_ret__", scope: !6412, file: !6407, line: 41, type: !138)
!6412 = distinct !DILexicalBlock(scope: !6406, file: !6407, line: 41, column: 9)
!6413 = !DILocalVariable(name: "__vpp_verify", scope: !6414, file: !6407, line: 41, type: !1986)
!6414 = distinct !DILexicalBlock(scope: !6412, file: !6407, line: 41, column: 9)
!6415 = !DILocalVariable(name: "pfo_val__", scope: !6416, file: !6407, line: 41, type: !203)
!6416 = distinct !DILexicalBlock(scope: !6412, file: !6407, line: 41, column: 9)
!6417 = !DILocation(line: 41, column: 9, scope: !6412)
!6418 = !DILocation(line: 41, column: 9, scope: !6414)
!6419 = !DILocation(line: 41, column: 9, scope: !6416)
!6420 = !{i64 2148522519}
!6421 = !DILocation(line: 41, column: 9, scope: !6406)
!6422 = !DILocation(line: 41, column: 2, scope: !6406)
!6423 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6424, file: !6424, line: 374, type: !6425, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6427)
!6424 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !1671}
!6427 = !{!6428}
!6428 = !DILocalVariable(name: "lock", arg: 1, scope: !6423, file: !6424, line: 374, type: !1671)
!6429 = !DILocation(line: 374, column: 55, scope: !6423)
!6430 = !DILocation(line: 376, column: 2, scope: !6423)
!6431 = !DILocation(line: 377, column: 1, scope: !6423)
!6432 = distinct !DISubprogram(name: "itimer_get_remtime", scope: !5851, file: !5851, line: 29, type: !6433, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6435)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!1126, !291}
!6435 = !{!6436, !6437}
!6436 = !DILocalVariable(name: "timer", arg: 1, scope: !6432, file: !5851, line: 29, type: !291)
!6437 = !DILocalVariable(name: "rem", scope: !6432, file: !5851, line: 31, type: !280)
!6438 = !DILocation(line: 29, column: 61, scope: !6432)
!6439 = !DILocation(line: 31, column: 2, scope: !6432)
!6440 = !DILocation(line: 31, column: 10, scope: !6432)
!6441 = !DILocation(line: 31, column: 40, scope: !6432)
!6442 = !DILocation(line: 31, column: 16, scope: !6432)
!6443 = !DILocation(line: 38, column: 21, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6432, file: !5851, line: 38, column: 6)
!6445 = !DILocation(line: 38, column: 6, scope: !6444)
!6446 = !DILocation(line: 38, column: 6, scope: !6432)
!6447 = !DILocation(line: 39, column: 7, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !5851, line: 39, column: 7)
!6449 = distinct !DILexicalBlock(scope: !6444, file: !5851, line: 38, column: 29)
!6450 = !DILocation(line: 39, column: 11, scope: !6448)
!6451 = !DILocation(line: 39, column: 7, scope: !6449)
!6452 = !DILocation(line: 40, column: 8, scope: !6448)
!6453 = !DILocation(line: 40, column: 4, scope: !6448)
!6454 = !DILocation(line: 41, column: 2, scope: !6449)
!6455 = !DILocation(line: 42, column: 7, scope: !6444)
!6456 = !DILocation(line: 44, column: 9, scope: !6432)
!6457 = !DILocation(line: 45, column: 1, scope: !6432)
!6458 = !DISubprogram(name: "ns_to_timespec64", scope: !636, file: !636, line: 148, type: !6459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!1126, !214}
!6461 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6424, file: !6424, line: 399, type: !6425, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6462)
!6462 = !{!6463}
!6463 = !DILocalVariable(name: "lock", arg: 1, scope: !6461, file: !6424, line: 399, type: !1671)
!6464 = !DILocation(line: 399, column: 57, scope: !6461)
!6465 = !DILocation(line: 401, column: 2, scope: !6461)
!6466 = !DILocation(line: 402, column: 1, scope: !6461)
!6467 = distinct !DISubprogram(name: "get_cpu_itimer", scope: !5851, file: !5851, line: 47, type: !6468, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6471)
!6468 = !DISubroutineType(types: !6469)
!6469 = !{null, !138, !35, !6470}
!6470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6148)
!6471 = !{!6472, !6473, !6474, !6475, !6476, !6477, !6479, !6482}
!6472 = !DILocalVariable(name: "tsk", arg: 1, scope: !6467, file: !5851, line: 47, type: !138)
!6473 = !DILocalVariable(name: "clock_id", arg: 2, scope: !6467, file: !5851, line: 47, type: !35)
!6474 = !DILocalVariable(name: "value", arg: 3, scope: !6467, file: !5851, line: 48, type: !6470)
!6475 = !DILocalVariable(name: "val", scope: !6467, file: !5851, line: 50, type: !203)
!6476 = !DILocalVariable(name: "interval", scope: !6467, file: !5851, line: 50, type: !203)
!6477 = !DILocalVariable(name: "it", scope: !6467, file: !5851, line: 51, type: !6478)
!6478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!6479 = !DILocalVariable(name: "t", scope: !6480, file: !5851, line: 58, type: !203)
!6480 = distinct !DILexicalBlock(scope: !6481, file: !5851, line: 57, column: 11)
!6481 = distinct !DILexicalBlock(scope: !6467, file: !5851, line: 57, column: 6)
!6482 = !DILocalVariable(name: "samples", scope: !6480, file: !5851, line: 58, type: !6483)
!6483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 192, elements: !547)
!6484 = !DILocation(line: 47, column: 48, scope: !6467)
!6485 = !DILocation(line: 47, column: 66, scope: !6467)
!6486 = !DILocation(line: 48, column: 34, scope: !6467)
!6487 = !DILocation(line: 50, column: 2, scope: !6467)
!6488 = !DILocation(line: 50, column: 6, scope: !6467)
!6489 = !DILocation(line: 50, column: 11, scope: !6467)
!6490 = !DILocation(line: 51, column: 2, scope: !6467)
!6491 = !DILocation(line: 51, column: 21, scope: !6467)
!6492 = !DILocation(line: 51, column: 27, scope: !6467)
!6493 = !DILocation(line: 51, column: 32, scope: !6467)
!6494 = !DILocation(line: 51, column: 40, scope: !6467)
!6495 = !DILocation(line: 51, column: 43, scope: !6467)
!6496 = !DILocation(line: 53, column: 17, scope: !6467)
!6497 = !DILocation(line: 53, column: 22, scope: !6467)
!6498 = !DILocation(line: 53, column: 31, scope: !6467)
!6499 = !DILocation(line: 53, column: 2, scope: !6467)
!6500 = !DILocation(line: 55, column: 8, scope: !6467)
!6501 = !DILocation(line: 55, column: 12, scope: !6467)
!6502 = !DILocation(line: 55, column: 6, scope: !6467)
!6503 = !DILocation(line: 56, column: 13, scope: !6467)
!6504 = !DILocation(line: 56, column: 17, scope: !6467)
!6505 = !DILocation(line: 56, column: 11, scope: !6467)
!6506 = !DILocation(line: 57, column: 6, scope: !6481)
!6507 = !DILocation(line: 57, column: 6, scope: !6467)
!6508 = !DILocation(line: 58, column: 3, scope: !6480)
!6509 = !DILocation(line: 58, column: 7, scope: !6480)
!6510 = !DILocation(line: 58, column: 10, scope: !6480)
!6511 = !DILocation(line: 60, column: 31, scope: !6480)
!6512 = !DILocation(line: 60, column: 36, scope: !6480)
!6513 = !DILocation(line: 60, column: 3, scope: !6480)
!6514 = !DILocation(line: 61, column: 15, scope: !6480)
!6515 = !DILocation(line: 61, column: 7, scope: !6480)
!6516 = !DILocation(line: 61, column: 5, scope: !6480)
!6517 = !DILocation(line: 63, column: 7, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6480, file: !5851, line: 63, column: 7)
!6519 = !DILocation(line: 63, column: 13, scope: !6518)
!6520 = !DILocation(line: 63, column: 11, scope: !6518)
!6521 = !DILocation(line: 63, column: 7, scope: !6480)
!6522 = !DILocation(line: 65, column: 8, scope: !6518)
!6523 = !DILocation(line: 65, column: 4, scope: !6518)
!6524 = !DILocation(line: 67, column: 11, scope: !6518)
!6525 = !DILocation(line: 67, column: 8, scope: !6518)
!6526 = !DILocation(line: 68, column: 2, scope: !6481)
!6527 = !DILocation(line: 68, column: 2, scope: !6480)
!6528 = !DILocation(line: 70, column: 19, scope: !6467)
!6529 = !DILocation(line: 70, column: 24, scope: !6467)
!6530 = !DILocation(line: 70, column: 33, scope: !6467)
!6531 = !DILocation(line: 70, column: 2, scope: !6467)
!6532 = !DILocation(line: 72, column: 2, scope: !6467)
!6533 = !DILocation(line: 72, column: 9, scope: !6467)
!6534 = !DILocation(line: 72, column: 20, scope: !6467)
!6535 = !DILocation(line: 72, column: 37, scope: !6467)
!6536 = !DILocation(line: 73, column: 2, scope: !6467)
!6537 = !DILocation(line: 73, column: 9, scope: !6467)
!6538 = !DILocation(line: 73, column: 23, scope: !6467)
!6539 = !DILocation(line: 73, column: 40, scope: !6467)
!6540 = !DILocation(line: 74, column: 1, scope: !6467)
!6541 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6542, file: !6542, line: 29, type: !6543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6542 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6543 = !DISubroutineType(types: !6544)
!6544 = !{null, !6545}
!6545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!6546 = !DISubprogram(name: "__hrtimer_get_remaining", scope: !272, file: !272, line: 446, type: !6547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!280, !6549, !678}
!6549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6550, size: 64)
!6550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!6551 = !DISubprogram(name: "hrtimer_active", scope: !272, file: !272, line: 460, type: !6552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6552 = !DISubroutineType(types: !6553)
!6553 = !{!678, !6549}
!6554 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6542, file: !6542, line: 41, type: !6543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6555 = !DISubprogram(name: "thread_group_sample_cputime", scope: !6556, file: !6556, line: 56, type: !6557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6556 = !DIFile(filename: "./include/linux/sched/cputime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61dc6eb5d99536d491cae546a62a3194")
!6557 = !DISubroutineType(types: !6558)
!6558 = !{null, !138, !3017}
!6559 = distinct !DISubprogram(name: "copy_to_user", scope: !6560, file: !6560, line: 188, type: !6561, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6563)
!6560 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6561 = !DISubroutineType(types: !6562)
!6562 = !{!147, !132, !1986, !147}
!6563 = !{!6564, !6565, !6566}
!6564 = !DILocalVariable(name: "to", arg: 1, scope: !6559, file: !6560, line: 188, type: !132)
!6565 = !DILocalVariable(name: "from", arg: 2, scope: !6559, file: !6560, line: 188, type: !1986)
!6566 = !DILocalVariable(name: "n", arg: 3, scope: !6559, file: !6560, line: 188, type: !147)
!6567 = !DILocation(line: 188, column: 27, scope: !6559)
!6568 = !DILocation(line: 188, column: 43, scope: !6559)
!6569 = !DILocation(line: 188, column: 63, scope: !6559)
!6570 = !DILocation(line: 190, column: 22, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6559, file: !6560, line: 190, column: 6)
!6572 = !DILocation(line: 190, column: 28, scope: !6571)
!6573 = !DILocation(line: 190, column: 6, scope: !6571)
!6574 = !DILocation(line: 190, column: 6, scope: !6559)
!6575 = !DILocation(line: 191, column: 21, scope: !6571)
!6576 = !DILocation(line: 191, column: 25, scope: !6571)
!6577 = !DILocation(line: 191, column: 31, scope: !6571)
!6578 = !DILocation(line: 191, column: 7, scope: !6571)
!6579 = !DILocation(line: 191, column: 5, scope: !6571)
!6580 = !DILocation(line: 191, column: 3, scope: !6571)
!6581 = !DILocation(line: 192, column: 9, scope: !6559)
!6582 = !DILocation(line: 192, column: 2, scope: !6559)
!6583 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !6584, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6586)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!678, !1986, !865, !678}
!6586 = !{!6587, !6588, !6589, !6590, !6591, !6594}
!6587 = !DILocalVariable(name: "addr", arg: 1, scope: !6583, file: !2, line: 237, type: !1986)
!6588 = !DILocalVariable(name: "bytes", arg: 2, scope: !6583, file: !2, line: 237, type: !865)
!6589 = !DILocalVariable(name: "is_source", arg: 3, scope: !6583, file: !2, line: 237, type: !678)
!6590 = !DILocalVariable(name: "sz", scope: !6583, file: !2, line: 239, type: !18)
!6591 = !DILocalVariable(name: "__ret_warn_on", scope: !6592, file: !2, line: 249, type: !18)
!6592 = distinct !DILexicalBlock(scope: !6593, file: !2, line: 249, column: 6)
!6593 = distinct !DILexicalBlock(scope: !6583, file: !2, line: 249, column: 6)
!6594 = !DILocalVariable(name: "__flags", scope: !6595, file: !2, line: 249, type: !18)
!6595 = distinct !DILexicalBlock(scope: !6596, file: !2, line: 249, column: 6)
!6596 = distinct !DILexicalBlock(scope: !6592, file: !2, line: 249, column: 6)
!6597 = !DILocation(line: 237, column: 29, scope: !6583)
!6598 = !DILocation(line: 237, column: 42, scope: !6583)
!6599 = !DILocation(line: 237, column: 54, scope: !6583)
!6600 = !DILocation(line: 239, column: 2, scope: !6583)
!6601 = !DILocation(line: 239, column: 6, scope: !6583)
!6602 = !DILocation(line: 239, column: 33, scope: !6583)
!6603 = !DILocation(line: 239, column: 11, scope: !6583)
!6604 = !DILocation(line: 240, column: 6, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6583, file: !2, line: 240, column: 6)
!6606 = !DILocation(line: 0, scope: !6605)
!6607 = !DILocation(line: 240, column: 6, scope: !6583)
!6608 = !DILocation(line: 241, column: 29, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6610, file: !2, line: 241, column: 7)
!6610 = distinct !DILexicalBlock(scope: !6605, file: !2, line: 240, column: 39)
!6611 = !DILocation(line: 241, column: 8, scope: !6609)
!6612 = !DILocation(line: 241, column: 7, scope: !6610)
!6613 = !DILocation(line: 242, column: 18, scope: !6609)
!6614 = !DILocation(line: 242, column: 22, scope: !6609)
!6615 = !DILocation(line: 242, column: 4, scope: !6609)
!6616 = !DILocation(line: 243, column: 12, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6609, file: !2, line: 243, column: 12)
!6618 = !{i8 0, i8 2}
!6619 = !DILocation(line: 243, column: 12, scope: !6609)
!6620 = !DILocation(line: 244, column: 4, scope: !6617)
!6621 = !{i32 1046189}
!6622 = !DILocation(line: 246, column: 4, scope: !6617)
!6623 = !{i32 1046218}
!6624 = !DILocation(line: 247, column: 3, scope: !6610)
!6625 = !DILocation(line: 249, column: 6, scope: !6592)
!6626 = !DILocation(line: 249, column: 6, scope: !6596)
!6627 = !DILocation(line: 249, column: 6, scope: !6595)
!6628 = !DILocation(line: 249, column: 6, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 249, column: 6)
!6630 = !DILocation(line: 249, column: 6, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 249, column: 6)
!6632 = !{i64 2149653813, i64 2149653842, i64 2149653888, i64 2149653946, i64 2149654000, i64 2149654054, i64 2149654109, i64 2149654140, i64 2149654448, i64 2149654454, i64 2149654501, i64 2149654524, i64 2149654550}
!6633 = !DILocation(line: 249, column: 6, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 249, column: 6)
!6635 = !DILocation(line: 249, column: 6, scope: !6593)
!6636 = !DILocation(line: 249, column: 6, scope: !6583)
!6637 = !DILocation(line: 250, column: 3, scope: !6593)
!6638 = !DILocation(line: 251, column: 20, scope: !6583)
!6639 = !DILocation(line: 251, column: 26, scope: !6583)
!6640 = !DILocation(line: 251, column: 33, scope: !6583)
!6641 = !DILocation(line: 251, column: 2, scope: !6583)
!6642 = !DILocation(line: 252, column: 2, scope: !6583)
!6643 = !DILocation(line: 253, column: 1, scope: !6583)
!6644 = !DISubprogram(name: "_copy_to_user", scope: !6560, file: !6560, line: 176, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6645 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !6646, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6648)
!6646 = !DISubroutineType(types: !6647)
!6647 = !{null, !18, !147}
!6648 = !{!6649, !6650}
!6649 = !DILocalVariable(name: "size", arg: 1, scope: !6645, file: !2, line: 230, type: !18)
!6650 = !DILocalVariable(name: "count", arg: 2, scope: !6645, file: !2, line: 230, type: !147)
!6651 = !DILocation(line: 230, column: 38, scope: !6645)
!6652 = !DILocation(line: 230, column: 58, scope: !6645)
!6653 = !DILocation(line: 233, column: 19, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6645, file: !2, line: 232, column: 6)
!6655 = !DILocation(line: 233, column: 25, scope: !6654)
!6656 = !DILocation(line: 233, column: 3, scope: !6654)
!6657 = !DILocation(line: 234, column: 1, scope: !6645)
!6658 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !2585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6659 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !2585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6660 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !6661, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6663)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{null, !1986, !147, !678}
!6663 = !{!6664, !6665, !6666}
!6664 = !DILocalVariable(name: "ptr", arg: 1, scope: !6660, file: !2, line: 218, type: !1986)
!6665 = !DILocalVariable(name: "n", arg: 2, scope: !6660, file: !2, line: 218, type: !147)
!6666 = !DILocalVariable(name: "to_user", arg: 3, scope: !6660, file: !2, line: 219, type: !678)
!6667 = !DILocation(line: 218, column: 50, scope: !6660)
!6668 = !DILocation(line: 218, column: 69, scope: !6660)
!6669 = !DILocation(line: 219, column: 15, scope: !6660)
!6670 = !DILocation(line: 220, column: 3, scope: !6660)
!6671 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !6646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6672 = distinct !DISubprogram(name: "__do_compat_sys_getitimer", scope: !5851, file: !5851, line: 141, type: !6673, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6675)
!6673 = !DISubroutineType(types: !6674)
!6674 = !{!943, !18, !5887}
!6675 = !{!6676, !6677, !6678, !6679}
!6676 = !DILocalVariable(name: "which", arg: 1, scope: !6672, file: !5851, line: 141, type: !18)
!6677 = !DILocalVariable(name: "value", arg: 2, scope: !6672, file: !5851, line: 141, type: !5887)
!6678 = !DILocalVariable(name: "get_buffer", scope: !6672, file: !5851, line: 144, type: !5912)
!6679 = !DILocalVariable(name: "error", scope: !6672, file: !5851, line: 145, type: !18)
!6680 = !DILocation(line: 141, column: 1, scope: !6672)
!6681 = !DILocation(line: 144, column: 2, scope: !6672)
!6682 = !DILocation(line: 144, column: 22, scope: !6672)
!6683 = !DILocation(line: 145, column: 2, scope: !6672)
!6684 = !DILocation(line: 145, column: 6, scope: !6672)
!6685 = !DILocation(line: 145, column: 27, scope: !6672)
!6686 = !DILocation(line: 145, column: 14, scope: !6672)
!6687 = !DILocation(line: 147, column: 7, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6672, file: !5851, line: 147, column: 6)
!6689 = !DILocation(line: 147, column: 13, scope: !6688)
!6690 = !DILocation(line: 147, column: 36, scope: !6688)
!6691 = !DILocation(line: 147, column: 16, scope: !6688)
!6692 = !DILocation(line: 147, column: 6, scope: !6672)
!6693 = !DILocation(line: 148, column: 9, scope: !6688)
!6694 = !DILocation(line: 148, column: 3, scope: !6688)
!6695 = !DILocation(line: 149, column: 9, scope: !6672)
!6696 = !DILocation(line: 150, column: 1, scope: !6672)
!6697 = !DILocation(line: 149, column: 2, scope: !6672)
!6698 = distinct !DISubprogram(name: "put_old_itimerval32", scope: !5851, file: !5851, line: 129, type: !6699, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6701)
!6699 = !DISubroutineType(types: !6700)
!6700 = !{!18, !5887, !5910}
!6701 = !{!6702, !6703, !6704}
!6702 = !DILocalVariable(name: "o", arg: 1, scope: !6698, file: !5851, line: 129, type: !5887)
!6703 = !DILocalVariable(name: "i", arg: 2, scope: !6698, file: !5851, line: 130, type: !5910)
!6704 = !DILocalVariable(name: "v32", scope: !6698, file: !5851, line: 132, type: !5888)
!6705 = !DILocation(line: 129, column: 63, scope: !6698)
!6706 = !DILocation(line: 130, column: 38, scope: !6698)
!6707 = !DILocation(line: 132, column: 2, scope: !6698)
!6708 = !DILocation(line: 132, column: 25, scope: !6698)
!6709 = !DILocation(line: 134, column: 27, scope: !6698)
!6710 = !DILocation(line: 134, column: 30, scope: !6698)
!6711 = !DILocation(line: 134, column: 42, scope: !6698)
!6712 = !DILocation(line: 134, column: 6, scope: !6698)
!6713 = !DILocation(line: 134, column: 18, scope: !6698)
!6714 = !DILocation(line: 134, column: 25, scope: !6698)
!6715 = !DILocation(line: 135, column: 28, scope: !6698)
!6716 = !DILocation(line: 135, column: 31, scope: !6698)
!6717 = !DILocation(line: 135, column: 43, scope: !6698)
!6718 = !DILocation(line: 135, column: 51, scope: !6698)
!6719 = !DILocation(line: 135, column: 6, scope: !6698)
!6720 = !DILocation(line: 135, column: 18, scope: !6698)
!6721 = !DILocation(line: 135, column: 26, scope: !6698)
!6722 = !DILocation(line: 136, column: 24, scope: !6698)
!6723 = !DILocation(line: 136, column: 27, scope: !6698)
!6724 = !DILocation(line: 136, column: 36, scope: !6698)
!6725 = !DILocation(line: 136, column: 6, scope: !6698)
!6726 = !DILocation(line: 136, column: 15, scope: !6698)
!6727 = !DILocation(line: 136, column: 22, scope: !6698)
!6728 = !DILocation(line: 137, column: 25, scope: !6698)
!6729 = !DILocation(line: 137, column: 28, scope: !6698)
!6730 = !DILocation(line: 137, column: 37, scope: !6698)
!6731 = !DILocation(line: 137, column: 45, scope: !6698)
!6732 = !DILocation(line: 137, column: 6, scope: !6698)
!6733 = !DILocation(line: 137, column: 15, scope: !6698)
!6734 = !DILocation(line: 137, column: 23, scope: !6698)
!6735 = !DILocation(line: 138, column: 22, scope: !6698)
!6736 = !DILocation(line: 138, column: 9, scope: !6698)
!6737 = !DILocation(line: 139, column: 1, scope: !6698)
!6738 = !DILocation(line: 138, column: 2, scope: !6698)
!6739 = distinct !DISubprogram(name: "static_key_false", scope: !2468, file: !2468, line: 205, type: !6740, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6743)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{!678, !6742}
!6742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "key", arg: 1, scope: !6739, file: !2468, line: 205, type: !6742)
!6745 = !DILocation(line: 205, column: 65, scope: !6739)
!6746 = !DILocation(line: 207, column: 28, scope: !6739)
!6747 = !DILocation(line: 207, column: 9, scope: !6739)
!6748 = !DILocation(line: 207, column: 2, scope: !6739)
!6749 = distinct !DISubprogram(name: "cpu_online", scope: !406, file: !406, line: 1080, type: !6750, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6752)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!678, !35}
!6752 = !{!6753}
!6753 = !DILocalVariable(name: "cpu", arg: 1, scope: !6749, file: !406, line: 1080, type: !35)
!6754 = !DILocation(line: 1080, column: 44, scope: !6749)
!6755 = !DILocation(line: 1082, column: 26, scope: !6749)
!6756 = !DILocation(line: 1082, column: 9, scope: !6749)
!6757 = !DILocation(line: 1082, column: 2, scope: !6749)
!6758 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6759, file: !6759, line: 78, type: !5315, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6760)
!6759 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6760 = !{!6761, !6762, !6764}
!6761 = !DILocalVariable(name: "val", arg: 1, scope: !6758, file: !6759, line: 78, type: !18)
!6762 = !DILocalVariable(name: "pao_ID__", scope: !6763, file: !6759, line: 80, type: !2364)
!6763 = distinct !DILexicalBlock(scope: !6758, file: !6759, line: 80, column: 2)
!6764 = !DILocalVariable(name: "pto_val__", scope: !6765, file: !6759, line: 80, type: !150)
!6765 = distinct !DILexicalBlock(scope: !6766, file: !6759, line: 80, column: 2)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !6759, line: 80, column: 2)
!6767 = distinct !DILexicalBlock(scope: !6763, file: !6759, line: 80, column: 2)
!6768 = !DILocation(line: 78, column: 53, scope: !6758)
!6769 = !DILocation(line: 80, column: 2, scope: !6758)
!6770 = !DILocation(line: 80, column: 2, scope: !6763)
!6771 = !DILocation(line: 80, column: 2, scope: !6767)
!6772 = !DILocation(line: 80, column: 2, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6767, file: !6759, line: 80, column: 2)
!6774 = !{i64 2149665384}
!6775 = !DILocation(line: 80, column: 2, scope: !6766)
!6776 = !DILocation(line: 80, column: 2, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6766, file: !6759, line: 80, column: 2)
!6778 = !{i64 2149665679}
!6779 = !DILocation(line: 80, column: 2, scope: !6765)
!6780 = !{i64 2149666384}
!6781 = !DILocation(line: 81, column: 1, scope: !6758)
!6782 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6759, file: !6759, line: 93, type: !1976, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6783)
!6783 = !{!6784}
!6784 = !DILocalVariable(name: "c", scope: !6785, file: !6759, line: 95, type: !678)
!6785 = distinct !DILexicalBlock(scope: !6782, file: !6759, line: 95, column: 9)
!6786 = !DILocation(line: 95, column: 9, scope: !6785)
!6787 = !{i64 2149669740, i64 2149669833}
!6788 = !DILocation(line: 95, column: 9, scope: !6782)
!6789 = !DILocation(line: 95, column: 2, scope: !6782)
!6790 = distinct !DISubprogram(name: "arch_static_branch", scope: !6791, file: !6791, line: 25, type: !6792, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6794)
!6791 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6792 = !DISubroutineType(types: !6793)
!6793 = !{!678, !6742, !678}
!6794 = !{!6795, !6796, !6797}
!6795 = !DILocalVariable(name: "key", arg: 1, scope: !6790, file: !6791, line: 25, type: !6742)
!6796 = !DILocalVariable(name: "branch", arg: 2, scope: !6790, file: !6791, line: 25, type: !678)
!6797 = !DILabel(scope: !6790, name: "l_yes", file: !6791, line: 33)
!6798 = !DILocation(line: 25, column: 67, scope: !6790)
!6799 = !DILocation(line: 25, column: 77, scope: !6790)
!6800 = !DILocation(line: 30, column: 13, scope: !6790)
!6801 = !DILocation(line: 30, column: 28, scope: !6790)
!6802 = !DILocation(line: 30, column: 26, scope: !6790)
!6803 = !DILocation(line: 27, column: 2, scope: !6790)
!6804 = !{i64 1272691, i64 1272735, i64 2148757418, i64 2148757439, i64 2148757465, i64 2148757498, i64 2148757532, i64 2148757556}
!6805 = !DILocation(line: 32, column: 2, scope: !6790)
!6806 = !DILocation(line: 33, column: 1, scope: !6790)
!6807 = !DILocation(line: 34, column: 2, scope: !6790)
!6808 = !DILocation(line: 35, column: 1, scope: !6790)
!6809 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !406, file: !406, line: 502, type: !6810, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6812)
!6810 = !DISubroutineType(types: !6811)
!6811 = !{!678, !18, !5899}
!6812 = !{!6813, !6814}
!6813 = !DILocalVariable(name: "cpu", arg: 1, scope: !6809, file: !406, line: 502, type: !18)
!6814 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6809, file: !406, line: 502, type: !5899)
!6815 = !DILocation(line: 502, column: 50, scope: !6809)
!6816 = !DILocation(line: 502, column: 77, scope: !6809)
!6817 = !DILocation(line: 504, column: 9, scope: !6809)
!6818 = !DILocation(line: 504, column: 2, scope: !6809)
!6819 = distinct !DISubprogram(name: "_test_bit", scope: !6820, file: !6820, line: 139, type: !6821, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6826)
!6820 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6821 = !DISubroutineType(types: !6822)
!6822 = !{!678, !147, !6823}
!6823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6824, size: 64)
!6824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6825)
!6825 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!6826 = !{!6827, !6828}
!6827 = !DILocalVariable(name: "nr", arg: 1, scope: !6819, file: !6820, line: 139, type: !147)
!6828 = !DILocalVariable(name: "addr", arg: 2, scope: !6819, file: !6820, line: 139, type: !6823)
!6829 = !DILocation(line: 139, column: 25, scope: !6819)
!6830 = !DILocation(line: 139, column: 59, scope: !6819)
!6831 = !DILocation(line: 141, column: 25, scope: !6819)
!6832 = !DILocation(line: 141, column: 32, scope: !6819)
!6833 = !DILocation(line: 141, column: 30, scope: !6819)
!6834 = !DILocation(line: 141, column: 2, scope: !6819)
!6835 = !DILocation(line: 142, column: 23, scope: !6819)
!6836 = !DILocation(line: 142, column: 27, scope: !6819)
!6837 = !DILocation(line: 142, column: 9, scope: !6819)
!6838 = !DILocation(line: 142, column: 2, scope: !6819)
!6839 = distinct !DISubprogram(name: "cpumask_check", scope: !406, file: !406, line: 148, type: !6840, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6842)
!6840 = !DISubroutineType(types: !6841)
!6841 = !{!35, !35}
!6842 = !{!6843}
!6843 = !DILocalVariable(name: "cpu", arg: 1, scope: !6839, file: !406, line: 148, type: !35)
!6844 = !DILocation(line: 148, column: 64, scope: !6839)
!6845 = !DILocation(line: 150, column: 20, scope: !6839)
!6846 = !DILocation(line: 150, column: 2, scope: !6839)
!6847 = !DILocation(line: 151, column: 9, scope: !6839)
!6848 = !DILocation(line: 151, column: 2, scope: !6839)
!6849 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6850, file: !6850, line: 66, type: !6851, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6856)
!6850 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6851 = !DISubroutineType(types: !6852)
!6852 = !{null, !6853, !865}
!6853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6854, size: 64)
!6854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6855)
!6855 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6856 = !{!6857, !6858}
!6857 = !DILocalVariable(name: "v", arg: 1, scope: !6849, file: !6850, line: 66, type: !6853)
!6858 = !DILocalVariable(name: "size", arg: 2, scope: !6849, file: !6850, line: 66, type: !865)
!6859 = !DILocation(line: 66, column: 73, scope: !6849)
!6860 = !DILocation(line: 66, column: 83, scope: !6849)
!6861 = !DILocation(line: 68, column: 19, scope: !6849)
!6862 = !DILocation(line: 68, column: 22, scope: !6849)
!6863 = !DILocation(line: 68, column: 2, scope: !6849)
!6864 = !DILocation(line: 69, column: 2, scope: !6849)
!6865 = !DILocation(line: 70, column: 1, scope: !6849)
!6866 = distinct !DISubprogram(name: "arch_test_bit", scope: !6867, file: !6867, line: 237, type: !6821, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6868)
!6867 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6868 = !{!6869, !6870}
!6869 = !DILocalVariable(name: "nr", arg: 1, scope: !6866, file: !6867, line: 237, type: !147)
!6870 = !DILocalVariable(name: "addr", arg: 2, scope: !6866, file: !6867, line: 237, type: !6823)
!6871 = !DILocation(line: 237, column: 29, scope: !6866)
!6872 = !DILocation(line: 237, column: 63, scope: !6866)
!6873 = !DILocation(line: 239, column: 30, scope: !6866)
!6874 = !DILocation(line: 239, column: 9, scope: !6866)
!6875 = !DILocation(line: 239, column: 54, scope: !6866)
!6876 = !DILocation(line: 239, column: 58, scope: !6866)
!6877 = !DILocation(line: 239, column: 36, scope: !6866)
!6878 = !DILocation(line: 240, column: 26, scope: !6866)
!6879 = !DILocation(line: 240, column: 30, scope: !6866)
!6880 = !DILocation(line: 240, column: 8, scope: !6866)
!6881 = !DILocation(line: 239, column: 2, scope: !6866)
!6882 = distinct !DISubprogram(name: "kasan_check_read", scope: !6883, file: !6883, line: 40, type: !6884, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6886)
!6883 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!678, !6853, !35}
!6886 = !{!6887, !6888}
!6887 = !DILocalVariable(name: "p", arg: 1, scope: !6882, file: !6883, line: 40, type: !6853)
!6888 = !DILocalVariable(name: "size", arg: 2, scope: !6882, file: !6883, line: 40, type: !35)
!6889 = !DILocation(line: 40, column: 58, scope: !6882)
!6890 = !DILocation(line: 40, column: 74, scope: !6882)
!6891 = !DILocation(line: 42, column: 2, scope: !6882)
!6892 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6893, file: !6893, line: 229, type: !6894, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6896)
!6893 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6894 = !DISubroutineType(types: !6895)
!6895 = !{null, !6853, !865, !18}
!6896 = !{!6897, !6898, !6899}
!6897 = !DILocalVariable(name: "ptr", arg: 1, scope: !6892, file: !6893, line: 229, type: !6853)
!6898 = !DILocalVariable(name: "size", arg: 2, scope: !6892, file: !6893, line: 229, type: !865)
!6899 = !DILocalVariable(name: "type", arg: 3, scope: !6892, file: !6893, line: 230, type: !18)
!6900 = !DILocation(line: 229, column: 60, scope: !6892)
!6901 = !DILocation(line: 229, column: 72, scope: !6892)
!6902 = !DILocation(line: 230, column: 15, scope: !6892)
!6903 = !DILocation(line: 230, column: 23, scope: !6892)
!6904 = distinct !DISubprogram(name: "constant_test_bit", scope: !6867, file: !6867, line: 204, type: !6905, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6907)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{!678, !943, !6823}
!6907 = !{!6908, !6909}
!6908 = !DILocalVariable(name: "nr", arg: 1, scope: !6904, file: !6867, line: 204, type: !943)
!6909 = !DILocalVariable(name: "addr", arg: 2, scope: !6904, file: !6867, line: 204, type: !6823)
!6910 = !DILocation(line: 204, column: 52, scope: !6904)
!6911 = !DILocation(line: 204, column: 86, scope: !6904)
!6912 = !DILocation(line: 206, column: 19, scope: !6904)
!6913 = !DILocation(line: 206, column: 22, scope: !6904)
!6914 = !DILocation(line: 206, column: 15, scope: !6904)
!6915 = !DILocation(line: 207, column: 4, scope: !6904)
!6916 = !DILocation(line: 207, column: 9, scope: !6904)
!6917 = !DILocation(line: 207, column: 12, scope: !6904)
!6918 = !DILocation(line: 206, column: 44, scope: !6904)
!6919 = !DILocation(line: 207, column: 37, scope: !6904)
!6920 = !DILocation(line: 206, column: 2, scope: !6904)
!6921 = distinct !DISubprogram(name: "variable_test_bit", scope: !6867, file: !6867, line: 224, type: !6905, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6922)
!6922 = !{!6923, !6924, !6925}
!6923 = !DILocalVariable(name: "nr", arg: 1, scope: !6921, file: !6867, line: 224, type: !943)
!6924 = !DILocalVariable(name: "addr", arg: 2, scope: !6921, file: !6867, line: 224, type: !6823)
!6925 = !DILocalVariable(name: "oldbit", scope: !6921, file: !6867, line: 226, type: !678)
!6926 = !DILocation(line: 224, column: 52, scope: !6921)
!6927 = !DILocation(line: 224, column: 86, scope: !6921)
!6928 = !DILocation(line: 226, column: 2, scope: !6921)
!6929 = !DILocation(line: 226, column: 7, scope: !6921)
!6930 = !DILocation(line: 231, column: 33, scope: !6921)
!6931 = !DILocation(line: 231, column: 46, scope: !6921)
!6932 = !DILocation(line: 228, column: 2, scope: !6921)
!6933 = !{i64 2148311979, i64 2148312053}
!6934 = !DILocation(line: 233, column: 9, scope: !6921)
!6935 = !DILocation(line: 234, column: 1, scope: !6921)
!6936 = !DILocation(line: 233, column: 2, scope: !6921)
!6937 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !406, file: !406, line: 140, type: !6938, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{null, !35, !35}
!6940 = !{!6941, !6942}
!6941 = !DILocalVariable(name: "cpu", arg: 1, scope: !6937, file: !406, line: 140, type: !35)
!6942 = !DILocalVariable(name: "bits", arg: 2, scope: !6937, file: !406, line: 140, type: !35)
!6943 = !DILocation(line: 140, column: 60, scope: !6937)
!6944 = !DILocation(line: 140, column: 78, scope: !6937)
!6945 = !DILocation(line: 145, column: 1, scope: !6937)
!6946 = !DISubprogram(name: "hrtimer_try_to_cancel", scope: !272, file: !272, line: 424, type: !6947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!18, !291}
!6949 = distinct !DISubprogram(name: "hrtimer_cancel_wait_running", scope: !272, file: !272, line: 365, type: !6950, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6952)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{null, !291}
!6952 = !{!6953}
!6953 = !DILocalVariable(name: "timer", arg: 1, scope: !6949, file: !272, line: 365, type: !291)
!6954 = !DILocation(line: 365, column: 64, scope: !6949)
!6955 = !DILocation(line: 367, column: 2, scope: !6949)
!6956 = !DILocation(line: 368, column: 1, scope: !6949)
!6957 = distinct !DISubprogram(name: "timespec64_to_ktime", scope: !281, file: !281, line: 71, type: !6958, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6960)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{!280, !1126}
!6960 = !{!6961}
!6961 = !DILocalVariable(name: "ts", arg: 1, scope: !6957, file: !281, line: 71, type: !1126)
!6962 = !DILocation(line: 71, column: 61, scope: !6957)
!6963 = !DILocation(line: 73, column: 22, scope: !6957)
!6964 = !DILocation(line: 73, column: 33, scope: !6957)
!6965 = !DILocation(line: 73, column: 9, scope: !6957)
!6966 = !DILocation(line: 73, column: 2, scope: !6957)
!6967 = distinct !DISubprogram(name: "hrtimer_start", scope: !272, file: !272, line: 417, type: !6968, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !6971)
!6968 = !DISubroutineType(types: !6969)
!6969 = !{null, !291, !280, !6970}
!6970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5858)
!6971 = !{!6972, !6973, !6974}
!6972 = !DILocalVariable(name: "timer", arg: 1, scope: !6967, file: !272, line: 417, type: !291)
!6973 = !DILocalVariable(name: "tim", arg: 2, scope: !6967, file: !272, line: 417, type: !280)
!6974 = !DILocalVariable(name: "mode", arg: 3, scope: !6967, file: !272, line: 418, type: !6970)
!6975 = !DILocation(line: 417, column: 50, scope: !6967)
!6976 = !DILocation(line: 417, column: 65, scope: !6967)
!6977 = !DILocation(line: 418, column: 30, scope: !6967)
!6978 = !DILocation(line: 420, column: 25, scope: !6967)
!6979 = !DILocation(line: 420, column: 32, scope: !6967)
!6980 = !DILocation(line: 420, column: 40, scope: !6967)
!6981 = !DILocation(line: 420, column: 2, scope: !6967)
!6982 = !DILocation(line: 421, column: 1, scope: !6967)
!6983 = !DILocation(line: 311, column: 1, scope: !5906)
!6984 = !DILocation(line: 311, column: 1, scope: !5922)
!6985 = !DILocation(line: 311, column: 1, scope: !5921)
!6986 = !DILocation(line: 311, column: 1, scope: !5924)
!6987 = !DILocation(line: 311, column: 1, scope: !5927)
!6988 = !DILocation(line: 311, column: 1, scope: !5929)
!6989 = !{i64 2155998150}
!6990 = !DILocation(line: 311, column: 1, scope: !5925)
!6991 = !DILocation(line: 311, column: 1, scope: !5931)
!6992 = !DILocation(line: 311, column: 1, scope: !5935)
!6993 = !DILocation(line: 311, column: 1, scope: !5934)
!6994 = !DILocation(line: 311, column: 1, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !5934, file: !9, line: 311, column: 1)
!6996 = !DILocation(line: 311, column: 1, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !5934, file: !9, line: 311, column: 1)
!6998 = !{i64 2155999368, i64 2155999397, i64 2155999443, i64 2155999501, i64 2155999555, i64 2155999609, i64 2155999664, i64 2155999695, i64 2156000003, i64 2156000009, i64 2156000056, i64 2156000079, i64 2156000105}
!6999 = !DILocation(line: 311, column: 1, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !5934, file: !9, line: 311, column: 1)
!7001 = !DILocation(line: 311, column: 1, scope: !5932)
!7002 = !DILocation(line: 311, column: 1, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !5921, file: !9, line: 311, column: 1)
!7004 = !{i64 2156000458}
!7005 = !DILocation(line: 311, column: 1, scope: !5937)
!7006 = !DILocation(line: 311, column: 1, scope: !5940)
!7007 = !DILocation(line: 311, column: 1, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !5940, file: !9, line: 311, column: 1)
!7009 = !DILocation(line: 311, column: 1, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7008, file: !9, line: 311, column: 1)
!7011 = !DILocation(line: 311, column: 1, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !5937, file: !9, line: 311, column: 1)
!7013 = !DILocation(line: 311, column: 1, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !7012, file: !9, line: 311, column: 1)
!7015 = !DILocation(line: 311, column: 1, scope: !7016)
!7016 = distinct !DILexicalBlock(scope: !7014, file: !9, line: 311, column: 1)
!7017 = !DILocation(line: 311, column: 1, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !5921, file: !9, line: 311, column: 1)
!7019 = !{i64 2156006719}
!7020 = !DILocation(line: 311, column: 1, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !7018, file: !9, line: 311, column: 1)
!7022 = !DILocation(line: 311, column: 1, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !7021, file: !9, line: 311, column: 1)
!7024 = !{i64 2156006878}
!7025 = distinct !DISubprogram(name: "set_cpu_itimer", scope: !5851, file: !5851, line: 168, type: !7026, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7028)
!7026 = !DISubroutineType(types: !7027)
!7027 = !{null, !138, !35, !5909, !6470}
!7028 = !{!7029, !7030, !7031, !7032, !7033, !7034, !7035, !7036, !7037}
!7029 = !DILocalVariable(name: "tsk", arg: 1, scope: !7025, file: !5851, line: 168, type: !138)
!7030 = !DILocalVariable(name: "clock_id", arg: 2, scope: !7025, file: !5851, line: 168, type: !35)
!7031 = !DILocalVariable(name: "value", arg: 3, scope: !7025, file: !5851, line: 169, type: !5909)
!7032 = !DILocalVariable(name: "ovalue", arg: 4, scope: !7025, file: !5851, line: 170, type: !6470)
!7033 = !DILocalVariable(name: "oval", scope: !7025, file: !5851, line: 172, type: !203)
!7034 = !DILocalVariable(name: "nval", scope: !7025, file: !5851, line: 172, type: !203)
!7035 = !DILocalVariable(name: "ointerval", scope: !7025, file: !5851, line: 172, type: !203)
!7036 = !DILocalVariable(name: "ninterval", scope: !7025, file: !5851, line: 172, type: !203)
!7037 = !DILocalVariable(name: "it", scope: !7025, file: !5851, line: 173, type: !6478)
!7038 = !DILocation(line: 168, column: 48, scope: !7025)
!7039 = !DILocation(line: 168, column: 66, scope: !7025)
!7040 = !DILocation(line: 169, column: 40, scope: !7025)
!7041 = !DILocation(line: 170, column: 34, scope: !7025)
!7042 = !DILocation(line: 172, column: 2, scope: !7025)
!7043 = !DILocation(line: 172, column: 6, scope: !7025)
!7044 = !DILocation(line: 172, column: 12, scope: !7025)
!7045 = !DILocation(line: 172, column: 18, scope: !7025)
!7046 = !DILocation(line: 172, column: 29, scope: !7025)
!7047 = !DILocation(line: 173, column: 2, scope: !7025)
!7048 = !DILocation(line: 173, column: 21, scope: !7025)
!7049 = !DILocation(line: 173, column: 27, scope: !7025)
!7050 = !DILocation(line: 173, column: 32, scope: !7025)
!7051 = !DILocation(line: 173, column: 40, scope: !7025)
!7052 = !DILocation(line: 173, column: 43, scope: !7025)
!7053 = !DILocation(line: 175, column: 27, scope: !7025)
!7054 = !DILocation(line: 175, column: 34, scope: !7025)
!7055 = !DILocation(line: 175, column: 9, scope: !7025)
!7056 = !DILocation(line: 175, column: 7, scope: !7025)
!7057 = !DILocation(line: 176, column: 32, scope: !7025)
!7058 = !DILocation(line: 176, column: 39, scope: !7025)
!7059 = !DILocation(line: 176, column: 14, scope: !7025)
!7060 = !DILocation(line: 176, column: 12, scope: !7025)
!7061 = !DILocation(line: 178, column: 17, scope: !7025)
!7062 = !DILocation(line: 178, column: 22, scope: !7025)
!7063 = !DILocation(line: 178, column: 31, scope: !7025)
!7064 = !DILocation(line: 178, column: 2, scope: !7025)
!7065 = !DILocation(line: 180, column: 9, scope: !7025)
!7066 = !DILocation(line: 180, column: 13, scope: !7025)
!7067 = !DILocation(line: 180, column: 7, scope: !7025)
!7068 = !DILocation(line: 181, column: 14, scope: !7025)
!7069 = !DILocation(line: 181, column: 18, scope: !7025)
!7070 = !DILocation(line: 181, column: 12, scope: !7025)
!7071 = !DILocation(line: 182, column: 6, scope: !7072)
!7072 = distinct !DILexicalBlock(scope: !7025, file: !5851, line: 182, column: 6)
!7073 = !DILocation(line: 182, column: 11, scope: !7072)
!7074 = !DILocation(line: 182, column: 14, scope: !7072)
!7075 = !DILocation(line: 182, column: 6, scope: !7025)
!7076 = !DILocation(line: 183, column: 7, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7078, file: !5851, line: 183, column: 7)
!7078 = distinct !DILexicalBlock(scope: !7072, file: !5851, line: 182, column: 20)
!7079 = !DILocation(line: 183, column: 12, scope: !7077)
!7080 = !DILocation(line: 183, column: 7, scope: !7078)
!7081 = !DILocation(line: 184, column: 9, scope: !7077)
!7082 = !DILocation(line: 184, column: 4, scope: !7077)
!7083 = !DILocation(line: 185, column: 25, scope: !7078)
!7084 = !DILocation(line: 185, column: 30, scope: !7078)
!7085 = !DILocation(line: 185, column: 3, scope: !7078)
!7086 = !DILocation(line: 186, column: 2, scope: !7078)
!7087 = !DILocation(line: 187, column: 16, scope: !7025)
!7088 = !DILocation(line: 187, column: 2, scope: !7025)
!7089 = !DILocation(line: 187, column: 6, scope: !7025)
!7090 = !DILocation(line: 187, column: 14, scope: !7025)
!7091 = !DILocation(line: 188, column: 13, scope: !7025)
!7092 = !DILocation(line: 188, column: 2, scope: !7025)
!7093 = !DILocation(line: 188, column: 6, scope: !7025)
!7094 = !DILocation(line: 188, column: 11, scope: !7025)
!7095 = !DILocation(line: 189, column: 21, scope: !7025)
!7096 = !DILocation(line: 189, column: 30, scope: !7025)
!7097 = !DILocation(line: 190, column: 37, scope: !7025)
!7098 = !DILocation(line: 190, column: 44, scope: !7025)
!7099 = !DILocation(line: 189, column: 2, scope: !7025)
!7100 = !DILocation(line: 192, column: 19, scope: !7025)
!7101 = !DILocation(line: 192, column: 24, scope: !7025)
!7102 = !DILocation(line: 192, column: 33, scope: !7025)
!7103 = !DILocation(line: 192, column: 2, scope: !7025)
!7104 = !DILocation(line: 194, column: 6, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7025, file: !5851, line: 194, column: 6)
!7106 = !DILocation(line: 194, column: 6, scope: !7025)
!7107 = !DILocation(line: 195, column: 3, scope: !7108)
!7108 = distinct !DILexicalBlock(scope: !7105, file: !5851, line: 194, column: 14)
!7109 = !DILocation(line: 195, column: 11, scope: !7108)
!7110 = !DILocation(line: 195, column: 22, scope: !7108)
!7111 = !DILocation(line: 195, column: 39, scope: !7108)
!7112 = !DILocation(line: 196, column: 3, scope: !7108)
!7113 = !DILocation(line: 196, column: 11, scope: !7108)
!7114 = !DILocation(line: 196, column: 25, scope: !7108)
!7115 = !DILocation(line: 196, column: 42, scope: !7108)
!7116 = !DILocation(line: 197, column: 2, scope: !7108)
!7117 = !DILocation(line: 198, column: 1, scope: !7025)
!7118 = distinct !DISubprogram(name: "cpu_relax", scope: !7119, file: !7119, line: 16, type: !2585, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850)
!7119 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!7120 = !DILocation(line: 18, column: 2, scope: !7118)
!7121 = !DILocation(line: 19, column: 1, scope: !7118)
!7122 = distinct !DISubprogram(name: "rep_nop", scope: !7119, file: !7119, line: 11, type: !2585, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850)
!7123 = !DILocation(line: 13, column: 2, scope: !7122)
!7124 = !{i64 2134170}
!7125 = !DILocation(line: 14, column: 1, scope: !7122)
!7126 = distinct !DISubprogram(name: "ktime_set", scope: !281, file: !281, line: 38, type: !7127, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7130)
!7127 = !DISubroutineType(types: !7128)
!7128 = !{!280, !7129, !1453}
!7129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!7130 = !{!7131, !7132}
!7131 = !DILocalVariable(name: "secs", arg: 1, scope: !7126, file: !281, line: 38, type: !7129)
!7132 = !DILocalVariable(name: "nsecs", arg: 2, scope: !7126, file: !281, line: 38, type: !1453)
!7133 = !DILocation(line: 38, column: 43, scope: !7126)
!7134 = !DILocation(line: 38, column: 69, scope: !7126)
!7135 = !DILocation(line: 40, column: 6, scope: !7136)
!7136 = distinct !DILexicalBlock(scope: !7126, file: !281, line: 40, column: 6)
!7137 = !DILocation(line: 40, column: 6, scope: !7126)
!7138 = !DILocation(line: 41, column: 3, scope: !7136)
!7139 = !DILocation(line: 43, column: 9, scope: !7126)
!7140 = !DILocation(line: 43, column: 14, scope: !7126)
!7141 = !DILocation(line: 43, column: 36, scope: !7126)
!7142 = !DILocation(line: 43, column: 29, scope: !7126)
!7143 = !DILocation(line: 43, column: 2, scope: !7126)
!7144 = !DILocation(line: 44, column: 1, scope: !7126)
!7145 = !DISubprogram(name: "hrtimer_start_range_ns", scope: !272, file: !272, line: 406, type: !7146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7146 = !DISubroutineType(types: !7147)
!7147 = !{null, !291, !280, !203, !6970}
!7148 = distinct !DISubprogram(name: "timespec64_to_ns", scope: !636, file: !636, line: 130, type: !7149, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7153)
!7149 = !DISubroutineType(types: !7150)
!7150 = !{!214, !7151}
!7151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7152, size: 64)
!7152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!7153 = !{!7154}
!7154 = !DILocalVariable(name: "ts", arg: 1, scope: !7148, file: !636, line: 130, type: !7151)
!7155 = !DILocation(line: 130, column: 61, scope: !7148)
!7156 = !DILocation(line: 133, column: 6, scope: !7157)
!7157 = distinct !DILexicalBlock(scope: !7148, file: !636, line: 133, column: 6)
!7158 = !DILocation(line: 133, column: 10, scope: !7157)
!7159 = !DILocation(line: 133, column: 17, scope: !7157)
!7160 = !DILocation(line: 133, column: 6, scope: !7148)
!7161 = !DILocation(line: 134, column: 3, scope: !7157)
!7162 = !DILocation(line: 136, column: 6, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7148, file: !636, line: 136, column: 6)
!7164 = !DILocation(line: 136, column: 10, scope: !7163)
!7165 = !DILocation(line: 136, column: 17, scope: !7163)
!7166 = !DILocation(line: 136, column: 6, scope: !7148)
!7167 = !DILocation(line: 137, column: 3, scope: !7163)
!7168 = !DILocation(line: 139, column: 16, scope: !7148)
!7169 = !DILocation(line: 139, column: 20, scope: !7148)
!7170 = !DILocation(line: 139, column: 27, scope: !7148)
!7171 = !DILocation(line: 139, column: 45, scope: !7148)
!7172 = !DILocation(line: 139, column: 49, scope: !7148)
!7173 = !DILocation(line: 139, column: 43, scope: !7148)
!7174 = !DILocation(line: 139, column: 2, scope: !7148)
!7175 = !DILocation(line: 140, column: 1, scope: !7148)
!7176 = !DISubprogram(name: "set_process_cpu_timer", scope: !5020, file: !5020, line: 257, type: !7177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7177 = !DISubroutineType(types: !7178)
!7178 = !{null, !138, !35, !3017, !3017}
!7179 = distinct !DISubprogram(name: "__do_sys_alarm", scope: !5851, file: !5851, line: 306, type: !7180, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7182)
!7180 = !DISubroutineType(types: !7181)
!7181 = !{!943, !35}
!7182 = !{!7183}
!7183 = !DILocalVariable(name: "seconds", arg: 1, scope: !7179, file: !5851, line: 306, type: !35)
!7184 = !DILocation(line: 306, column: 1, scope: !7179)
!7185 = !DILocation(line: 308, column: 25, scope: !7179)
!7186 = !DILocation(line: 308, column: 9, scope: !7179)
!7187 = !DILocation(line: 308, column: 2, scope: !7179)
!7188 = distinct !DISubprogram(name: "alarm_setitimer", scope: !5851, file: !5851, line: 277, type: !6840, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7189)
!7189 = !{!7190, !7191, !7192}
!7190 = !DILocalVariable(name: "seconds", arg: 1, scope: !7188, file: !5851, line: 277, type: !35)
!7191 = !DILocalVariable(name: "it_new", scope: !7188, file: !5851, line: 279, type: !5912)
!7192 = !DILocalVariable(name: "it_old", scope: !7188, file: !5851, line: 279, type: !5912)
!7193 = !DILocation(line: 277, column: 50, scope: !7188)
!7194 = !DILocation(line: 279, column: 2, scope: !7188)
!7195 = !DILocation(line: 279, column: 22, scope: !7188)
!7196 = !DILocation(line: 279, column: 30, scope: !7188)
!7197 = !DILocation(line: 285, column: 27, scope: !7188)
!7198 = !DILocation(line: 285, column: 9, scope: !7188)
!7199 = !DILocation(line: 285, column: 18, scope: !7188)
!7200 = !DILocation(line: 285, column: 25, scope: !7188)
!7201 = !DILocation(line: 286, column: 9, scope: !7188)
!7202 = !DILocation(line: 286, column: 18, scope: !7188)
!7203 = !DILocation(line: 286, column: 26, scope: !7188)
!7204 = !DILocation(line: 287, column: 37, scope: !7188)
!7205 = !DILocation(line: 287, column: 49, scope: !7188)
!7206 = !DILocation(line: 287, column: 57, scope: !7188)
!7207 = !DILocation(line: 287, column: 9, scope: !7188)
!7208 = !DILocation(line: 287, column: 21, scope: !7188)
!7209 = !DILocation(line: 287, column: 28, scope: !7188)
!7210 = !DILocation(line: 289, column: 2, scope: !7188)
!7211 = !DILocation(line: 295, column: 15, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7188, file: !5851, line: 295, column: 6)
!7213 = !DILocation(line: 295, column: 24, scope: !7212)
!7214 = !DILocation(line: 295, column: 8, scope: !7212)
!7215 = !DILocation(line: 295, column: 31, scope: !7212)
!7216 = !DILocation(line: 295, column: 41, scope: !7212)
!7217 = !DILocation(line: 295, column: 50, scope: !7212)
!7218 = !DILocation(line: 295, column: 34, scope: !7212)
!7219 = !DILocation(line: 295, column: 59, scope: !7212)
!7220 = !DILocation(line: 296, column: 15, scope: !7212)
!7221 = !DILocation(line: 296, column: 24, scope: !7212)
!7222 = !DILocation(line: 296, column: 32, scope: !7212)
!7223 = !DILocation(line: 295, column: 6, scope: !7188)
!7224 = !DILocation(line: 297, column: 10, scope: !7212)
!7225 = !DILocation(line: 297, column: 19, scope: !7212)
!7226 = !DILocation(line: 297, column: 25, scope: !7212)
!7227 = !DILocation(line: 297, column: 3, scope: !7212)
!7228 = !DILocation(line: 299, column: 16, scope: !7188)
!7229 = !DILocation(line: 299, column: 25, scope: !7188)
!7230 = !DILocation(line: 299, column: 9, scope: !7188)
!7231 = !DILocation(line: 300, column: 1, scope: !7188)
!7232 = !DILocation(line: 299, column: 2, scope: !7188)
!7233 = !DILocation(line: 332, column: 1, scope: !5945)
!7234 = !DILocation(line: 335, column: 2, scope: !5945)
!7235 = !DILocation(line: 335, column: 22, scope: !5945)
!7236 = !DILocation(line: 335, column: 34, scope: !5945)
!7237 = !DILocation(line: 336, column: 2, scope: !5945)
!7238 = !DILocation(line: 336, column: 6, scope: !5945)
!7239 = !DILocation(line: 338, column: 6, scope: !5958)
!7240 = !DILocation(line: 338, column: 6, scope: !5945)
!7241 = !DILocation(line: 339, column: 38, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !5958, file: !5851, line: 338, column: 13)
!7243 = !DILocation(line: 339, column: 11, scope: !7242)
!7244 = !DILocation(line: 339, column: 9, scope: !7242)
!7245 = !DILocation(line: 340, column: 7, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7242, file: !5851, line: 340, column: 7)
!7247 = !DILocation(line: 340, column: 7, scope: !7242)
!7248 = !DILocation(line: 341, column: 11, scope: !7246)
!7249 = !DILocation(line: 341, column: 4, scope: !7246)
!7250 = !DILocation(line: 342, column: 2, scope: !7242)
!7251 = !DILocation(line: 343, column: 3, scope: !5957)
!7252 = !DILocation(line: 344, column: 3, scope: !5956)
!7253 = !DILocation(line: 344, column: 3, scope: !5960)
!7254 = !DILocation(line: 344, column: 3, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !5960, file: !5851, line: 344, column: 3)
!7256 = !DILocation(line: 0, scope: !7255)
!7257 = !DILocation(line: 344, column: 3, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7255, file: !5851, line: 344, column: 3)
!7259 = !DILocation(line: 344, column: 3, scope: !5961)
!7260 = !DILocation(line: 344, column: 3, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !5961, file: !5851, line: 344, column: 3)
!7262 = !DILocation(line: 344, column: 3, scope: !7263)
!7263 = distinct !DILexicalBlock(scope: !7261, file: !5851, line: 344, column: 3)
!7264 = !DILocation(line: 344, column: 3, scope: !5957)
!7265 = !DILocation(line: 349, column: 23, scope: !5945)
!7266 = !DILocation(line: 349, column: 43, scope: !5945)
!7267 = !DILocation(line: 349, column: 10, scope: !5945)
!7268 = !DILocation(line: 349, column: 8, scope: !5945)
!7269 = !DILocation(line: 350, column: 6, scope: !7270)
!7270 = distinct !DILexicalBlock(scope: !5945, file: !5851, line: 350, column: 6)
!7271 = !DILocation(line: 350, column: 12, scope: !7270)
!7272 = !DILocation(line: 350, column: 16, scope: !7270)
!7273 = !DILocation(line: 350, column: 6, scope: !5945)
!7274 = !DILocation(line: 351, column: 10, scope: !7270)
!7275 = !DILocation(line: 351, column: 3, scope: !7270)
!7276 = !DILocation(line: 353, column: 20, scope: !7277)
!7277 = distinct !DILexicalBlock(scope: !5945, file: !5851, line: 353, column: 6)
!7278 = !DILocation(line: 353, column: 6, scope: !7277)
!7279 = !DILocation(line: 353, column: 6, scope: !5945)
!7280 = !DILocation(line: 354, column: 3, scope: !7277)
!7281 = !DILocation(line: 355, column: 2, scope: !5945)
!7282 = !DILocation(line: 356, column: 1, scope: !5945)
!7283 = distinct !DISubprogram(name: "get_itimerval", scope: !5851, file: !5851, line: 313, type: !7284, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7288)
!7284 = !DISubroutineType(types: !7285)
!7285 = !{!18, !6148, !7286}
!7286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7287, size: 64)
!7287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5878)
!7288 = !{!7289, !7290, !7291}
!7289 = !DILocalVariable(name: "o", arg: 1, scope: !7283, file: !5851, line: 313, type: !6148)
!7290 = !DILocalVariable(name: "i", arg: 2, scope: !7283, file: !5851, line: 313, type: !7286)
!7291 = !DILocalVariable(name: "v", scope: !7283, file: !5851, line: 315, type: !5878)
!7292 = !DILocation(line: 313, column: 47, scope: !7283)
!7293 = !DILocation(line: 313, column: 94, scope: !7283)
!7294 = !DILocation(line: 315, column: 2, scope: !7283)
!7295 = !DILocation(line: 315, column: 32, scope: !7283)
!7296 = !DILocation(line: 317, column: 25, scope: !7297)
!7297 = distinct !DILexicalBlock(scope: !7283, file: !5851, line: 317, column: 6)
!7298 = !DILocation(line: 317, column: 6, scope: !7297)
!7299 = !DILocation(line: 317, column: 6, scope: !7283)
!7300 = !DILocation(line: 318, column: 3, scope: !7297)
!7301 = !DILocation(line: 321, column: 7, scope: !7302)
!7302 = distinct !DILexicalBlock(scope: !7283, file: !5851, line: 321, column: 6)
!7303 = !DILocation(line: 321, column: 34, scope: !7302)
!7304 = !DILocation(line: 322, column: 7, scope: !7302)
!7305 = !DILocation(line: 321, column: 6, scope: !7283)
!7306 = !DILocation(line: 323, column: 3, scope: !7302)
!7307 = !DILocation(line: 325, column: 28, scope: !7283)
!7308 = !DILocation(line: 325, column: 40, scope: !7283)
!7309 = !DILocation(line: 325, column: 2, scope: !7283)
!7310 = !DILocation(line: 325, column: 5, scope: !7283)
!7311 = !DILocation(line: 325, column: 17, scope: !7283)
!7312 = !DILocation(line: 325, column: 24, scope: !7283)
!7313 = !DILocation(line: 326, column: 29, scope: !7283)
!7314 = !DILocation(line: 326, column: 41, scope: !7283)
!7315 = !DILocation(line: 326, column: 49, scope: !7283)
!7316 = !DILocation(line: 326, column: 2, scope: !7283)
!7317 = !DILocation(line: 326, column: 5, scope: !7283)
!7318 = !DILocation(line: 326, column: 17, scope: !7283)
!7319 = !DILocation(line: 326, column: 25, scope: !7283)
!7320 = !DILocation(line: 327, column: 25, scope: !7283)
!7321 = !DILocation(line: 327, column: 34, scope: !7283)
!7322 = !DILocation(line: 327, column: 2, scope: !7283)
!7323 = !DILocation(line: 327, column: 5, scope: !7283)
!7324 = !DILocation(line: 327, column: 14, scope: !7283)
!7325 = !DILocation(line: 327, column: 21, scope: !7283)
!7326 = !DILocation(line: 328, column: 26, scope: !7283)
!7327 = !DILocation(line: 328, column: 35, scope: !7283)
!7328 = !DILocation(line: 328, column: 43, scope: !7283)
!7329 = !DILocation(line: 328, column: 2, scope: !7283)
!7330 = !DILocation(line: 328, column: 5, scope: !7283)
!7331 = !DILocation(line: 328, column: 14, scope: !7283)
!7332 = !DILocation(line: 328, column: 22, scope: !7283)
!7333 = !DILocation(line: 329, column: 2, scope: !7283)
!7334 = !DILocation(line: 330, column: 1, scope: !7283)
!7335 = !DISubprogram(name: "_printk", scope: !7336, file: !7336, line: 153, type: !7337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7336 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7337 = !DISubroutineType(types: !7338)
!7338 = !{!18, !681, null}
!7339 = distinct !DISubprogram(name: "copy_from_user", scope: !6560, file: !6560, line: 180, type: !6561, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7340)
!7340 = !{!7341, !7342, !7343}
!7341 = !DILocalVariable(name: "to", arg: 1, scope: !7339, file: !6560, line: 180, type: !132)
!7342 = !DILocalVariable(name: "from", arg: 2, scope: !7339, file: !6560, line: 180, type: !1986)
!7343 = !DILocalVariable(name: "n", arg: 3, scope: !7339, file: !6560, line: 180, type: !147)
!7344 = !DILocation(line: 180, column: 22, scope: !7339)
!7345 = !DILocation(line: 180, column: 45, scope: !7339)
!7346 = !DILocation(line: 180, column: 65, scope: !7339)
!7347 = !DILocation(line: 182, column: 22, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7339, file: !6560, line: 182, column: 6)
!7349 = !DILocation(line: 182, column: 26, scope: !7348)
!7350 = !DILocation(line: 182, column: 6, scope: !7348)
!7351 = !DILocation(line: 182, column: 6, scope: !7339)
!7352 = !DILocation(line: 183, column: 23, scope: !7348)
!7353 = !DILocation(line: 183, column: 27, scope: !7348)
!7354 = !DILocation(line: 183, column: 33, scope: !7348)
!7355 = !DILocation(line: 183, column: 7, scope: !7348)
!7356 = !DILocation(line: 183, column: 5, scope: !7348)
!7357 = !DILocation(line: 183, column: 3, scope: !7348)
!7358 = !DILocation(line: 184, column: 9, scope: !7339)
!7359 = !DILocation(line: 184, column: 2, scope: !7339)
!7360 = !DISubprogram(name: "_copy_from_user", scope: !6560, file: !6560, line: 158, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7361 = !DILocation(line: 378, column: 1, scope: !5970)
!7362 = !DILocation(line: 382, column: 2, scope: !5970)
!7363 = !DILocation(line: 382, column: 22, scope: !5970)
!7364 = !DILocation(line: 382, column: 34, scope: !5970)
!7365 = !DILocation(line: 383, column: 2, scope: !5970)
!7366 = !DILocation(line: 383, column: 6, scope: !5970)
!7367 = !DILocation(line: 385, column: 6, scope: !5983)
!7368 = !DILocation(line: 385, column: 6, scope: !5970)
!7369 = !DILocation(line: 386, column: 44, scope: !7370)
!7370 = distinct !DILexicalBlock(scope: !5983, file: !5851, line: 385, column: 13)
!7371 = !DILocation(line: 386, column: 11, scope: !7370)
!7372 = !DILocation(line: 386, column: 9, scope: !7370)
!7373 = !DILocation(line: 387, column: 7, scope: !7374)
!7374 = distinct !DILexicalBlock(scope: !7370, file: !5851, line: 387, column: 7)
!7375 = !DILocation(line: 387, column: 7, scope: !7370)
!7376 = !DILocation(line: 388, column: 11, scope: !7374)
!7377 = !DILocation(line: 388, column: 4, scope: !7374)
!7378 = !DILocation(line: 389, column: 2, scope: !7370)
!7379 = !DILocation(line: 390, column: 3, scope: !5982)
!7380 = !DILocation(line: 391, column: 3, scope: !5981)
!7381 = !DILocation(line: 391, column: 3, scope: !5985)
!7382 = !DILocation(line: 391, column: 3, scope: !7383)
!7383 = distinct !DILexicalBlock(scope: !5985, file: !5851, line: 391, column: 3)
!7384 = !DILocation(line: 0, scope: !7383)
!7385 = !DILocation(line: 391, column: 3, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7383, file: !5851, line: 391, column: 3)
!7387 = !DILocation(line: 391, column: 3, scope: !5986)
!7388 = !DILocation(line: 391, column: 3, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !5986, file: !5851, line: 391, column: 3)
!7390 = !DILocation(line: 391, column: 3, scope: !7391)
!7391 = distinct !DILexicalBlock(scope: !7389, file: !5851, line: 391, column: 3)
!7392 = !DILocation(line: 391, column: 3, scope: !5982)
!7393 = !DILocation(line: 396, column: 23, scope: !5970)
!7394 = !DILocation(line: 396, column: 43, scope: !5970)
!7395 = !DILocation(line: 396, column: 10, scope: !5970)
!7396 = !DILocation(line: 396, column: 8, scope: !5970)
!7397 = !DILocation(line: 397, column: 6, scope: !7398)
!7398 = distinct !DILexicalBlock(scope: !5970, file: !5851, line: 397, column: 6)
!7399 = !DILocation(line: 397, column: 12, scope: !7398)
!7400 = !DILocation(line: 397, column: 16, scope: !7398)
!7401 = !DILocation(line: 397, column: 6, scope: !5970)
!7402 = !DILocation(line: 398, column: 10, scope: !7398)
!7403 = !DILocation(line: 398, column: 3, scope: !7398)
!7404 = !DILocation(line: 399, column: 26, scope: !7405)
!7405 = distinct !DILexicalBlock(scope: !5970, file: !5851, line: 399, column: 6)
!7406 = !DILocation(line: 399, column: 6, scope: !7405)
!7407 = !DILocation(line: 399, column: 6, scope: !5970)
!7408 = !DILocation(line: 400, column: 3, scope: !7405)
!7409 = !DILocation(line: 401, column: 2, scope: !5970)
!7410 = !DILocation(line: 402, column: 1, scope: !5970)
!7411 = distinct !DISubprogram(name: "get_old_itimerval32", scope: !5851, file: !5851, line: 359, type: !7412, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5850, retainedNodes: !7416)
!7412 = !DISubroutineType(types: !7413)
!7413 = !{!18, !6148, !7414}
!7414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7415, size: 64)
!7415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5888)
!7416 = !{!7417, !7418, !7419}
!7417 = !DILocalVariable(name: "o", arg: 1, scope: !7411, file: !5851, line: 359, type: !6148)
!7418 = !DILocalVariable(name: "i", arg: 2, scope: !7411, file: !5851, line: 359, type: !7414)
!7419 = !DILocalVariable(name: "v32", scope: !7411, file: !5851, line: 361, type: !5888)
!7420 = !DILocation(line: 359, column: 53, scope: !7411)
!7421 = !DILocation(line: 359, column: 93, scope: !7411)
!7422 = !DILocation(line: 361, column: 2, scope: !7411)
!7423 = !DILocation(line: 361, column: 25, scope: !7411)
!7424 = !DILocation(line: 363, column: 27, scope: !7425)
!7425 = distinct !DILexicalBlock(scope: !7411, file: !5851, line: 363, column: 6)
!7426 = !DILocation(line: 363, column: 6, scope: !7425)
!7427 = !DILocation(line: 363, column: 6, scope: !7411)
!7428 = !DILocation(line: 364, column: 3, scope: !7425)
!7429 = !DILocation(line: 367, column: 7, scope: !7430)
!7430 = distinct !DILexicalBlock(scope: !7411, file: !5851, line: 367, column: 6)
!7431 = !DILocation(line: 367, column: 36, scope: !7430)
!7432 = !DILocation(line: 368, column: 7, scope: !7430)
!7433 = !DILocation(line: 367, column: 6, scope: !7411)
!7434 = !DILocation(line: 369, column: 3, scope: !7430)
!7435 = !DILocation(line: 371, column: 30, scope: !7411)
!7436 = !DILocation(line: 371, column: 42, scope: !7411)
!7437 = !DILocation(line: 371, column: 26, scope: !7411)
!7438 = !DILocation(line: 371, column: 2, scope: !7411)
!7439 = !DILocation(line: 371, column: 5, scope: !7411)
!7440 = !DILocation(line: 371, column: 17, scope: !7411)
!7441 = !DILocation(line: 371, column: 24, scope: !7411)
!7442 = !DILocation(line: 372, column: 31, scope: !7411)
!7443 = !DILocation(line: 372, column: 43, scope: !7411)
!7444 = !DILocation(line: 372, column: 27, scope: !7411)
!7445 = !DILocation(line: 372, column: 51, scope: !7411)
!7446 = !DILocation(line: 372, column: 2, scope: !7411)
!7447 = !DILocation(line: 372, column: 5, scope: !7411)
!7448 = !DILocation(line: 372, column: 17, scope: !7411)
!7449 = !DILocation(line: 372, column: 25, scope: !7411)
!7450 = !DILocation(line: 373, column: 27, scope: !7411)
!7451 = !DILocation(line: 373, column: 36, scope: !7411)
!7452 = !DILocation(line: 373, column: 23, scope: !7411)
!7453 = !DILocation(line: 373, column: 2, scope: !7411)
!7454 = !DILocation(line: 373, column: 5, scope: !7411)
!7455 = !DILocation(line: 373, column: 14, scope: !7411)
!7456 = !DILocation(line: 373, column: 21, scope: !7411)
!7457 = !DILocation(line: 374, column: 28, scope: !7411)
!7458 = !DILocation(line: 374, column: 37, scope: !7411)
!7459 = !DILocation(line: 374, column: 24, scope: !7411)
!7460 = !DILocation(line: 374, column: 45, scope: !7411)
!7461 = !DILocation(line: 374, column: 2, scope: !7411)
!7462 = !DILocation(line: 374, column: 5, scope: !7411)
!7463 = !DILocation(line: 374, column: 14, scope: !7411)
!7464 = !DILocation(line: 374, column: 22, scope: !7411)
!7465 = !DILocation(line: 375, column: 2, scope: !7411)
!7466 = !DILocation(line: 376, column: 1, scope: !7411)
