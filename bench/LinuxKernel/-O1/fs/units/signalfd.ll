; ModuleID = 'fs/signalfd.c'
source_filename = "fs/signalfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.36 }
%union.anon.36 = type { %struct.anon.37, [16 x i8] }
%struct.anon.37 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.2, i64, i64, %union.anon.3 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%struct.fd = type { ptr, i32 }
%struct.signalfd_ctx = type { %struct.sigset_t }
%struct.file = type { %union.anon.21, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.22, %struct.qspinlock }
%union.anon.22 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.kernel_siginfo = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.28 }
%struct.anon.28 = type { i32, i32, i32, i64, i64 }
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i64, i32, [28 x i8] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.25 = type { i32, i32 }
%struct.anon.26 = type { i32, i32, %union.sigval, i32 }
%union.sigval = type { ptr }
%struct.anon.27 = type { i32, i32, %union.sigval }
%struct.anon.34 = type { i64, i32 }
%struct.anon.29 = type { ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { [8 x i8], ptr, ptr }
%struct.anon.35 = type { ptr, i32, i32 }
%struct.poll_table_struct = type { ptr, i32 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"[signalfd]\00", align 1, !dbg !7
@signalfd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @signalfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_poll, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @signalfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_show_fdinfo, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !13
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5925
@.str.3 = private unnamed_addr constant [10 x i8] c"sigmask:\09\00", align 1, !dbg !5930
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @signalfd_cleanup(ptr noundef %sighand) #0 align 16 !dbg !5942 {
entry:
  %sighand.addr = alloca ptr, align 8
  store ptr %sighand, ptr %sighand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sighand.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr %sighand.addr, align 8, !dbg !5948
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 2, !dbg !5949
  call void @wake_up_pollfree(ptr noundef %signalfd_wqh) #17, !dbg !5950
  ret void, !dbg !5951
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wake_up_pollfree(ptr noundef %wq_head) #2 align 16 !dbg !5952 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !5959
  %call = call i32 @waitqueue_active(ptr noundef %0) #17, !dbg !5961
  %tobool = icmp ne i32 %call, 0, !dbg !5961
  br i1 %tobool, label %if.then, label %if.end, !dbg !5962

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %wq_head.addr, align 8, !dbg !5963
  call void @__wake_up_pollfree(ptr noundef %1) #17, !dbg !5964
  br label %if.end, !dbg !5964

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_signalfd4(ptr noundef %regs) #0 align 16 !dbg !5966 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5973
  %1 = load i64, ptr %di, align 8, !dbg !5973
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5973
  %3 = load i64, ptr %si, align 8, !dbg !5973
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5973
  %5 = load i64, ptr %dx, align 8, !dbg !5973
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !5973
  %7 = load i64, ptr %r10, align 8, !dbg !5973
  %call = call i64 @__se_sys_signalfd4(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7) #17, !dbg !5973
  ret i64 %call, !dbg !5973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_signalfd4(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sizemask, i64 noundef %flags) #0 align 16 !dbg !5974 {
entry:
  %ufd.addr = alloca i64, align 8
  %user_mask.addr = alloca i64, align 8
  %sizemask.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %ufd, ptr %ufd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !5978, metadata !DIExpression()), !dbg !5983
  store i64 %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !5979, metadata !DIExpression()), !dbg !5983
  store i64 %sizemask, ptr %sizemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sizemask.addr, metadata !5980, metadata !DIExpression()), !dbg !5983
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5981, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load i64, ptr %ufd.addr, align 8, !dbg !5983
  %conv = trunc i64 %0 to i32, !dbg !5983
  %1 = load i64, ptr %user_mask.addr, align 8, !dbg !5983
  %2 = inttoptr i64 %1 to ptr, !dbg !5983
  %3 = load i64, ptr %sizemask.addr, align 8, !dbg !5983
  %4 = load i64, ptr %flags.addr, align 8, !dbg !5983
  %conv1 = trunc i64 %4 to i32, !dbg !5983
  %call = call i64 @__do_sys_signalfd4(i32 noundef %conv, ptr noundef %2, i64 noundef %3, i32 noundef %conv1) #17, !dbg !5983
  store i64 %call, ptr %ret, align 8, !dbg !5983
  br label %do.body, !dbg !5983

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5984

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5984

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !5983
  ret i64 %5, !dbg !5983
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_signalfd4(ptr noundef %regs) #0 align 16 !dbg !5986 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5989
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5989
  %1 = load i64, ptr %bx, align 8, !dbg !5989
  %conv = trunc i64 %1 to i32, !dbg !5989
  %conv1 = zext i32 %conv to i64, !dbg !5989
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5989
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5989
  %3 = load i64, ptr %cx, align 8, !dbg !5989
  %conv2 = trunc i64 %3 to i32, !dbg !5989
  %conv3 = zext i32 %conv2 to i64, !dbg !5989
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5989
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5989
  %5 = load i64, ptr %dx, align 8, !dbg !5989
  %conv4 = trunc i64 %5 to i32, !dbg !5989
  %conv5 = zext i32 %conv4 to i64, !dbg !5989
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5989
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !5989
  %7 = load i64, ptr %si, align 8, !dbg !5989
  %conv6 = trunc i64 %7 to i32, !dbg !5989
  %conv7 = zext i32 %conv6 to i64, !dbg !5989
  %call = call i64 @__se_sys_signalfd4(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #17, !dbg !5989
  ret i64 %call, !dbg !5989
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_signalfd(ptr noundef %regs) #0 align 16 !dbg !5990 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5993
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5993
  %1 = load i64, ptr %di, align 8, !dbg !5993
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5993
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5993
  %3 = load i64, ptr %si, align 8, !dbg !5993
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5993
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5993
  %5 = load i64, ptr %dx, align 8, !dbg !5993
  %call = call i64 @__se_sys_signalfd(i64 noundef %1, i64 noundef %3, i64 noundef %5) #17, !dbg !5993
  ret i64 %call, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_signalfd(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sizemask) #0 align 16 !dbg !5994 {
entry:
  %ufd.addr = alloca i64, align 8
  %user_mask.addr = alloca i64, align 8
  %sizemask.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %ufd, ptr %ufd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !5998, metadata !DIExpression()), !dbg !6002
  store i64 %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !5999, metadata !DIExpression()), !dbg !6002
  store i64 %sizemask, ptr %sizemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sizemask.addr, metadata !6000, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6001, metadata !DIExpression()), !dbg !6002
  %0 = load i64, ptr %ufd.addr, align 8, !dbg !6002
  %conv = trunc i64 %0 to i32, !dbg !6002
  %1 = load i64, ptr %user_mask.addr, align 8, !dbg !6002
  %2 = inttoptr i64 %1 to ptr, !dbg !6002
  %3 = load i64, ptr %sizemask.addr, align 8, !dbg !6002
  %call = call i64 @__do_sys_signalfd(i32 noundef %conv, ptr noundef %2, i64 noundef %3) #17, !dbg !6002
  store i64 %call, ptr %ret, align 8, !dbg !6002
  br label %do.body, !dbg !6002

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6003

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6003

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6002
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6002
  ret i64 %4, !dbg !6002
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_signalfd(ptr noundef %regs) #0 align 16 !dbg !6005 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6008
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6008
  %1 = load i64, ptr %bx, align 8, !dbg !6008
  %conv = trunc i64 %1 to i32, !dbg !6008
  %conv1 = zext i32 %conv to i64, !dbg !6008
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6008
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6008
  %3 = load i64, ptr %cx, align 8, !dbg !6008
  %conv2 = trunc i64 %3 to i32, !dbg !6008
  %conv3 = zext i32 %conv2 to i64, !dbg !6008
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6008
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6008
  %5 = load i64, ptr %dx, align 8, !dbg !6008
  %conv4 = trunc i64 %5 to i32, !dbg !6008
  %conv5 = zext i32 %conv4 to i64, !dbg !6008
  %call = call i64 @__se_sys_signalfd(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #17, !dbg !6008
  ret i64 %call, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_signalfd4(ptr noundef %regs) #0 align 16 !dbg !6009 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6012
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6012
  %1 = load i64, ptr %bx, align 8, !dbg !6012
  %conv = trunc i64 %1 to i32, !dbg !6012
  %conv1 = zext i32 %conv to i64, !dbg !6012
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6012
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6012
  %3 = load i64, ptr %cx, align 8, !dbg !6012
  %conv2 = trunc i64 %3 to i32, !dbg !6012
  %conv3 = zext i32 %conv2 to i64, !dbg !6012
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6012
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6012
  %5 = load i64, ptr %dx, align 8, !dbg !6012
  %conv4 = trunc i64 %5 to i32, !dbg !6012
  %conv5 = zext i32 %conv4 to i64, !dbg !6012
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6012
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6012
  %7 = load i64, ptr %si, align 8, !dbg !6012
  %conv6 = trunc i64 %7 to i32, !dbg !6012
  %conv7 = zext i32 %conv6 to i64, !dbg !6012
  %call = call i64 @__se_compat_sys_signalfd4(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #17, !dbg !6012
  ret i64 %call, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_signalfd4(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sigsetsize, i64 noundef %flags) #0 align 16 !dbg !6013 {
entry:
  %ufd.addr = alloca i64, align 8
  %user_mask.addr = alloca i64, align 8
  %sigsetsize.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i64 %ufd, ptr %ufd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !6015, metadata !DIExpression()), !dbg !6019
  store i64 %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !6016, metadata !DIExpression()), !dbg !6019
  store i64 %sigsetsize, ptr %sigsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sigsetsize.addr, metadata !6017, metadata !DIExpression()), !dbg !6019
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  %0 = load i64, ptr %ufd.addr, align 8, !dbg !6019
  %conv = trunc i64 %0 to i32, !dbg !6019
  %1 = load i64, ptr %user_mask.addr, align 8, !dbg !6019
  %2 = inttoptr i64 %1 to ptr, !dbg !6019
  %3 = load i64, ptr %sigsetsize.addr, align 8, !dbg !6019
  %conv1 = trunc i64 %3 to i32, !dbg !6019
  %4 = load i64, ptr %flags.addr, align 8, !dbg !6019
  %conv2 = trunc i64 %4 to i32, !dbg !6019
  %call = call i64 @__do_compat_sys_signalfd4(i32 noundef %conv, ptr noundef %2, i32 noundef %conv1, i32 noundef %conv2) #17, !dbg !6019
  ret i64 %call, !dbg !6019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_signalfd(ptr noundef %regs) #0 align 16 !dbg !6020 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6023
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6023
  %1 = load i64, ptr %bx, align 8, !dbg !6023
  %conv = trunc i64 %1 to i32, !dbg !6023
  %conv1 = zext i32 %conv to i64, !dbg !6023
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6023
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6023
  %3 = load i64, ptr %cx, align 8, !dbg !6023
  %conv2 = trunc i64 %3 to i32, !dbg !6023
  %conv3 = zext i32 %conv2 to i64, !dbg !6023
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6023
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6023
  %5 = load i64, ptr %dx, align 8, !dbg !6023
  %conv4 = trunc i64 %5 to i32, !dbg !6023
  %conv5 = zext i32 %conv4 to i64, !dbg !6023
  %call = call i64 @__se_compat_sys_signalfd(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #17, !dbg !6023
  ret i64 %call, !dbg !6023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_signalfd(i64 noundef %ufd, i64 noundef %user_mask, i64 noundef %sigsetsize) #0 align 16 !dbg !6024 {
entry:
  %ufd.addr = alloca i64, align 8
  %user_mask.addr = alloca i64, align 8
  %sigsetsize.addr = alloca i64, align 8
  store i64 %ufd, ptr %ufd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !6026, metadata !DIExpression()), !dbg !6029
  store i64 %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !6027, metadata !DIExpression()), !dbg !6029
  store i64 %sigsetsize, ptr %sigsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sigsetsize.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  %0 = load i64, ptr %ufd.addr, align 8, !dbg !6029
  %conv = trunc i64 %0 to i32, !dbg !6029
  %1 = load i64, ptr %user_mask.addr, align 8, !dbg !6029
  %2 = inttoptr i64 %1 to ptr, !dbg !6029
  %3 = load i64, ptr %sigsetsize.addr, align 8, !dbg !6029
  %conv1 = trunc i64 %3 to i32, !dbg !6029
  %call = call i64 @__do_compat_sys_signalfd(i32 noundef %conv, ptr noundef %2, i32 noundef %conv1) #17, !dbg !6029
  ret i64 %call, !dbg !6029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #2 align 16 !dbg !6030 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !6036
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !6037
  %call = call i32 @list_empty(ptr noundef %head) #17, !dbg !6038
  %tobool = icmp ne i32 %call, 0, !dbg !6039
  %lnot = xor i1 %tobool, true, !dbg !6039
  %lnot.ext = zext i1 %lnot to i32, !dbg !6039
  ret i32 %lnot.ext, !dbg !6040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6041 dso_local void @__wake_up_pollfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !6042 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  br label %do.body, !dbg !6051

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6053

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6051
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6051
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6051
  store ptr %1, ptr %tmp, align 8, !dbg !6053
  %2 = load ptr, ptr %tmp, align 8, !dbg !6051
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6055
  %cmp = icmp eq ptr %2, %3, !dbg !6056
  %conv = zext i1 %cmp to i32, !dbg !6056
  ret i32 %conv, !dbg !6057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_signalfd4(i32 noundef %ufd, ptr noundef %user_mask, i64 noundef %sizemask, i32 noundef %flags) #2 align 16 !dbg !6058 {
entry:
  %retval = alloca i64, align 8
  %ufd.addr = alloca i32, align 4
  %user_mask.addr = alloca ptr, align 8
  %sizemask.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %mask = alloca %struct.sigset_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !6062, metadata !DIExpression()), !dbg !6067
  store ptr %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !6063, metadata !DIExpression()), !dbg !6067
  store i64 %sizemask, ptr %sizemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sizemask.addr, metadata !6064, metadata !DIExpression()), !dbg !6067
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6065, metadata !DIExpression()), !dbg !6067
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6066, metadata !DIExpression()), !dbg !6069
  %0 = load i64, ptr %sizemask.addr, align 8, !dbg !6070
  %cmp = icmp ne i64 %0, 8, !dbg !6072
  br i1 %cmp, label %if.then, label %if.end, !dbg !6073

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6074

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %user_mask.addr, align 8, !dbg !6075
  %call = call i64 @copy_from_user(ptr noundef %mask, ptr noundef %1, i64 noundef 8) #17, !dbg !6077
  %tobool = icmp ne i64 %call, 0, !dbg !6077
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6078

if.then1:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6079

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %ufd.addr, align 4, !dbg !6080
  %3 = load i32, ptr %flags.addr, align 4, !dbg !6081
  %call3 = call i32 @do_signalfd4(i32 noundef %2, ptr noundef %mask, i32 noundef %3) #17, !dbg !6082
  %conv = sext i32 %call3 to i64, !dbg !6082
  store i64 %conv, ptr %retval, align 8, !dbg !6083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !6084
  %4 = load i64, ptr %retval, align 8, !dbg !6084
  ret i64 %4, !dbg !6084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !6085 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6090, metadata !DIExpression()), !dbg !6093
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6091, metadata !DIExpression()), !dbg !6094
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6092, metadata !DIExpression()), !dbg !6095
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6096
  %1 = load i64, ptr %n.addr, align 8, !dbg !6098
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #17, !dbg !6099
  br i1 %call, label %if.then, label %if.end, !dbg !6100

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6101
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6102
  %4 = load i64, ptr %n.addr, align 8, !dbg !6103
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !6104
  store i64 %call1, ptr %n.addr, align 8, !dbg !6105
  br label %if.end, !dbg !6106

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6107
  ret i64 %5, !dbg !6108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_signalfd4(i32 noundef %ufd, ptr noundef %mask, i32 noundef %flags) #0 align 16 !dbg !6109 {
entry:
  %retval = alloca i32, align 4
  %ufd.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !6113, metadata !DIExpression()), !dbg !6129
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6114, metadata !DIExpression()), !dbg !6130
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6115, metadata !DIExpression()), !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6116, metadata !DIExpression()), !dbg !6133
  br label %do.body, !dbg !6134

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6135

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6135

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !6137

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6138

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6138

do.end3:                                          ; preds = %do.cond2
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6140
  %and = and i32 %0, -526337, !dbg !6142
  %tobool = icmp ne i32 %and, 0, !dbg !6142
  br i1 %tobool, label %if.then, label %if.end, !dbg !6143

if.then:                                          ; preds = %do.end3
  store i32 -22, ptr %retval, align 4, !dbg !6144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6144

if.end:                                           ; preds = %do.end3
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !6145
  call void @sigdelsetmask(ptr noundef %1, i64 noundef 262400) #17, !dbg !6146
  %2 = load ptr, ptr %mask.addr, align 8, !dbg !6147
  call void @signotset(ptr noundef %2) #17, !dbg !6148
  %3 = load i32, ptr %ufd.addr, align 4, !dbg !6149
  %cmp = icmp eq i32 %3, -1, !dbg !6150
  br i1 %cmp, label %if.then4, label %if.else, !dbg !6151

if.then4:                                         ; preds = %if.end
  %call = call noalias ptr @kmalloc(i64 noundef 8, i32 noundef 3264) #19, !dbg !6152
  store ptr %call, ptr %ctx, align 8, !dbg !6154
  %4 = load ptr, ptr %ctx, align 8, !dbg !6155
  %tobool5 = icmp ne ptr %4, null, !dbg !6155
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6157

if.then6:                                         ; preds = %if.then4
  store i32 -12, ptr %retval, align 4, !dbg !6158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6158

if.end7:                                          ; preds = %if.then4
  %5 = load ptr, ptr %ctx, align 8, !dbg !6159
  %sigmask = getelementptr inbounds %struct.signalfd_ctx, ptr %5, i32 0, i32 0, !dbg !6160
  %6 = load ptr, ptr %mask.addr, align 8, !dbg !6161
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sigmask, ptr align 8 %6, i64 8, i1 false), !dbg !6162
  %7 = load ptr, ptr %ctx, align 8, !dbg !6163
  %8 = load i32, ptr %flags.addr, align 4, !dbg !6164
  %and8 = and i32 %8, 526336, !dbg !6165
  %or = or i32 2, %and8, !dbg !6166
  %call9 = call i32 @anon_inode_getfd(ptr noundef @.str.1, ptr noundef @signalfd_fops, ptr noundef %7, i32 noundef %or) #17, !dbg !6167
  store i32 %call9, ptr %ufd.addr, align 4, !dbg !6168
  %9 = load i32, ptr %ufd.addr, align 4, !dbg !6169
  %cmp10 = icmp slt i32 %9, 0, !dbg !6171
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !6172

if.then11:                                        ; preds = %if.end7
  %10 = load ptr, ptr %ctx, align 8, !dbg !6173
  call void @kfree(ptr noundef %10) #17, !dbg !6174
  br label %if.end12, !dbg !6174

if.end12:                                         ; preds = %if.then11, %if.end7
  br label %if.end30, !dbg !6175

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #18, !dbg !6176
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6121, metadata !DIExpression()), !dbg !6177
  %11 = load i32, ptr %ufd.addr, align 4, !dbg !6178
  %call13 = call { ptr, i32 } @fdget(i32 noundef %11) #17, !dbg !6179
  %12 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6179
  %13 = extractvalue { ptr, i32 } %call13, 0, !dbg !6179
  store ptr %13, ptr %12, align 8, !dbg !6179
  %14 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6179
  %15 = extractvalue { ptr, i32 } %call13, 1, !dbg !6179
  store i32 %15, ptr %14, align 8, !dbg !6179
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6180
  %16 = load ptr, ptr %file, align 8, !dbg !6180
  %tobool14 = icmp ne ptr %16, null, !dbg !6182
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !6183

if.then15:                                        ; preds = %if.else
  store i32 -9, ptr %retval, align 4, !dbg !6184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6184

if.end16:                                         ; preds = %if.else
  %file17 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6185
  %17 = load ptr, ptr %file17, align 8, !dbg !6185
  %private_data = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 15, !dbg !6186
  %18 = load ptr, ptr %private_data, align 8, !dbg !6186
  store ptr %18, ptr %ctx, align 8, !dbg !6187
  %file18 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !6188
  %19 = load ptr, ptr %file18, align 8, !dbg !6188
  %f_op = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 12, !dbg !6190
  %20 = load ptr, ptr %f_op, align 8, !dbg !6190
  %cmp19 = icmp ne ptr %20, @signalfd_fops, !dbg !6191
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !6192

if.then20:                                        ; preds = %if.end16
  %21 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6193
  %22 = load ptr, ptr %21, align 8, !dbg !6193
  %23 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6193
  %24 = load i32, ptr %23, align 8, !dbg !6193
  call void @fdput(ptr %22, i32 %24) #17, !dbg !6193
  store i32 -22, ptr %retval, align 4, !dbg !6195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6195

if.end21:                                         ; preds = %if.end16
  %call22 = call ptr @get_current() #17, !dbg !6196
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call22, i32 0, i32 105, !dbg !6197
  %25 = load ptr, ptr %sighand, align 8, !dbg !6197
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %25, i32 0, i32 0, !dbg !6198
  call void @spin_lock_irq(ptr noundef %siglock) #17, !dbg !6199
  %26 = load ptr, ptr %ctx, align 8, !dbg !6200
  %sigmask23 = getelementptr inbounds %struct.signalfd_ctx, ptr %26, i32 0, i32 0, !dbg !6201
  %27 = load ptr, ptr %mask.addr, align 8, !dbg !6202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sigmask23, ptr align 8 %27, i64 8, i1 false), !dbg !6203
  %call24 = call ptr @get_current() #17, !dbg !6204
  %sighand25 = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 105, !dbg !6205
  %28 = load ptr, ptr %sighand25, align 8, !dbg !6205
  %siglock26 = getelementptr inbounds %struct.sighand_struct, ptr %28, i32 0, i32 0, !dbg !6206
  call void @spin_unlock_irq(ptr noundef %siglock26) #17, !dbg !6207
  %call27 = call ptr @get_current() #17, !dbg !6208
  %sighand28 = getelementptr inbounds %struct.task_struct, ptr %call27, i32 0, i32 105, !dbg !6208
  %29 = load ptr, ptr %sighand28, align 8, !dbg !6208
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %29, i32 0, i32 2, !dbg !6208
  %call29 = call i32 @__wake_up(ptr noundef %signalfd_wqh, i32 noundef 3, i32 noundef 1, ptr noundef null) #17, !dbg !6208
  %30 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !6209
  %31 = load ptr, ptr %30, align 8, !dbg !6209
  %32 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !6209
  %33 = load i32, ptr %32, align 8, !dbg !6209
  call void @fdput(ptr %31, i32 %33) #17, !dbg !6209
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6210
  br label %cleanup, !dbg !6210

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then15
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #18, !dbg !6210
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end30

if.end30:                                         ; preds = %cleanup.cont, %if.end12
  %34 = load i32, ptr %ufd.addr, align 4, !dbg !6211
  store i32 %34, ptr %retval, align 4, !dbg !6212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !6212

cleanup31:                                        ; preds = %if.end30, %cleanup, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !6213
  %35 = load i32, ptr %retval, align 4, !dbg !6213
  ret i32 %35, !dbg !6213
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6214 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6218, metadata !DIExpression()), !dbg !6228
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6219, metadata !DIExpression()), !dbg !6229
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6220, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #18, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6221, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6233
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6234
  %conv = trunc i64 %1 to i32, !dbg !6234
  store i32 %conv, ptr %sz, align 4, !dbg !6232
  %2 = load i32, ptr %sz, align 4, !dbg !6235
  %cmp = icmp sge i32 %2, 0, !dbg !6235
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6235

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6235
  %conv2 = sext i32 %3 to i64, !dbg !6235
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6235
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6235
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6237
  %lnot = xor i1 %5, true, !dbg !6235
  %lnot5 = xor i1 %lnot, true, !dbg !6235
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6235
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6235
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6235
  %tobool = icmp ne i64 %expval, 0, !dbg !6235
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6238

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6239
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6242
  br i1 %7, label %if.else, label %if.then7, !dbg !6243

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6244
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6245
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !6246
  br label %if.end11, !dbg !6246

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6247, !range !6249, !noundef !807
  %tobool8 = trunc i8 %10 to i1, !dbg !6247
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6250

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !6251, !srcloc !6252
  br label %if.end, !dbg !6251

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !6253, !srcloc !6254
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6255

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6222, metadata !DIExpression()), !dbg !6256
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6256
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6256
  %lnot15 = xor i1 %cmp13, true, !dbg !6256
  %lnot17 = xor i1 %lnot15, true, !dbg !6256
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6256
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6256
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6257
  %tobool19 = icmp ne i32 %12, 0, !dbg !6257
  %lnot20 = xor i1 %tobool19, true, !dbg !6257
  %lnot22 = xor i1 %lnot20, true, !dbg !6257
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6257
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6257
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6257
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6257
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6256

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6257

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6225, metadata !DIExpression()), !dbg !6258
  store i32 2307, ptr %__flags, align 4, !dbg !6258
  br label %do.body28, !dbg !6258

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6259

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6259

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6258

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6261
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #18, !dbg !6261, !srcloc !6263
  br label %do.cond30, !dbg !6261

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6261

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6258

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6264

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6264

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6257
  br label %do.cond35, !dbg !6258

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6258

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6258

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6256
  %tobool38 = icmp ne i32 %14, 0, !dbg !6256
  %lnot39 = xor i1 %tobool38, true, !dbg !6256
  %lnot41 = xor i1 %lnot39, true, !dbg !6256
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6256
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6256
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6256
  store i64 %expval44, ptr %tmp, align 8, !dbg !6257
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6266
  %15 = load i64, ptr %tmp, align 8, !dbg !6256
  %tobool45 = icmp ne i64 %15, 0, !dbg !6266
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6267

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6268

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6269
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6270
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6271, !range !6249, !noundef !807
  %tobool48 = trunc i8 %18 to i1, !dbg !6271
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !6272
  store i1 true, ptr %retval, align 1, !dbg !6273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6273

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #18, !dbg !6274
  %19 = load i1, ptr %retval, align 1, !dbg !6274
  ret i1 %19, !dbg !6274
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6275 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #2 align 16 !dbg !6276 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6280, metadata !DIExpression()), !dbg !6282
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6281, metadata !DIExpression()), !dbg !6283
  %0 = load i32, ptr %size.addr, align 4, !dbg !6284
  %1 = load i64, ptr %count.addr, align 8, !dbg !6286
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !6287
  ret void, !dbg !6288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #2 align 16 !dbg !6291 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6295, metadata !DIExpression()), !dbg !6298
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6296, metadata !DIExpression()), !dbg !6299
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6297, metadata !DIExpression()), !dbg !6300
  ret void, !dbg !6301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6302 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sigdelsetmask(ptr noundef %set, i64 noundef %mask) #2 align 16 !dbg !6303 {
entry:
  %set.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6307, metadata !DIExpression()), !dbg !6309
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  %0 = load i64, ptr %mask.addr, align 8, !dbg !6311
  %not = xor i64 %0, -1, !dbg !6312
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6313
  %sig = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6314
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6313
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6315
  %and = and i64 %2, %not, !dbg !6315
  store i64 %and, ptr %arrayidx, align 8, !dbg !6315
  ret void, !dbg !6316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @signotset(ptr noundef %set) #2 align 16 !dbg !6317 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  %0 = load ptr, ptr %set.addr, align 8, !dbg !6322
  %sig = getelementptr inbounds %struct.sigset_t, ptr %0, i32 0, i32 0, !dbg !6322
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6322
  %1 = load i64, ptr %arrayidx, align 8, !dbg !6322
  %not = xor i64 %1, -1, !dbg !6322
  %2 = load ptr, ptr %set.addr, align 8, !dbg !6322
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %2, i32 0, i32 0, !dbg !6322
  %arrayidx2 = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !6322
  store i64 %not, ptr %arrayidx2, align 8, !dbg !6322
  ret void, !dbg !6322
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6323 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6327, metadata !DIExpression()), !dbg !6332
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6328, metadata !DIExpression()), !dbg !6333
  %0 = load i64, ptr %size.addr, align 8, !dbg !6334
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6335
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6336

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6337
  %tobool = icmp ne i64 %2, 0, !dbg !6337
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6338

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6329, metadata !DIExpression()), !dbg !6340
  %3 = load i64, ptr %size.addr, align 8, !dbg !6341
  %cmp = icmp ugt i64 %3, 8192, !dbg !6343
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6344

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6345
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6346
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6347
  store ptr %call, ptr %retval, align 8, !dbg !6348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6348

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6349
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6349
  store i32 %call2, ptr %index, align 4, !dbg !6350
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6351
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6352
  %9 = ptrtoint ptr %8 to i64, !dbg !6352
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6353
  %idxprom = zext i32 %call3 to i64, !dbg !6354
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6354
  %10 = load i32, ptr %index, align 4, !dbg !6355
  %idxprom4 = zext i32 %10 to i64, !dbg !6354
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6354
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6354
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6356
  %13 = load i64, ptr %size.addr, align 8, !dbg !6357
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6358
  store ptr %call6, ptr %retval, align 8, !dbg !6359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6359

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6360
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6361
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6362
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6363
  store ptr %call8, ptr %retval, align 8, !dbg !6364
  br label %return, !dbg !6364

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6365
  ret ptr %16, !dbg !6365
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6370 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #2 align 16 !dbg !6373 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6377, metadata !DIExpression()), !dbg !6378
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6379
  %call = call i64 @__fdget(i32 noundef %0) #17, !dbg !6380
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #17, !dbg !6381
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !6381
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !6381
  store ptr %2, ptr %1, align 8, !dbg !6381
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !6381
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !6381
  store i32 %4, ptr %3, align 8, !dbg !6381
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !6382
  ret { ptr, i32 } %5, !dbg !6382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #2 align 16 !dbg !6383 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !6387, metadata !DIExpression()), !dbg !6388
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !6389
  %2 = load i32, ptr %flags, align 8, !dbg !6389
  %and = and i32 %2, 1, !dbg !6391
  %tobool = icmp ne i32 %and, 0, !dbg !6391
  br i1 %tobool, label %if.then, label %if.end, !dbg !6392

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !6393
  %3 = load ptr, ptr %file, align 8, !dbg !6393
  call void @fput(ptr noundef %3) #17, !dbg !6394
  br label %if.end, !dbg !6394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6396 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6403
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6403
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !6403
  ret void, !dbg !6404
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6405 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6410, metadata !DIExpression()), !dbg !6416
  br label %do.body, !dbg !6416

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6412, metadata !DIExpression()), !dbg !6417
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6417
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6416
  br label %do.cond, !dbg !6417

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6417

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !6418
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6414, metadata !DIExpression()), !dbg !6418
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !6418, !srcloc !6419
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6418
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6418
  %3 = inttoptr i64 %2 to ptr, !dbg !6418
  store ptr %3, ptr %tmp, align 8, !dbg !6418
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !6416
  %4 = load ptr, ptr %tmp, align 8, !dbg !6418
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6416
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6416
  store ptr %5, ptr %tmp1, align 8, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !6420
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6416
  ret ptr %6, !dbg !6421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6422 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6426
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6426
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !6426
  ret void, !dbg !6427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6428 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6431 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6432 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6436, metadata !DIExpression()), !dbg !6438
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6437, metadata !DIExpression()), !dbg !6439
  %0 = load i64, ptr %size.addr, align 8, !dbg !6440
  %tobool = icmp ne i64 %0, 0, !dbg !6440
  br i1 %tobool, label %if.end, label %if.then, !dbg !6442

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6443
  br label %return, !dbg !6443

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6444
  %cmp = icmp ule i64 %1, 8, !dbg !6446
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6447

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6449
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6451
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6452

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6453
  %cmp4 = icmp ule i64 %3, 96, !dbg !6454
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6455

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6457
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6459
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6460

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6461
  %cmp9 = icmp ule i64 %5, 192, !dbg !6462
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6463

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6464
  br label %return, !dbg !6464

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6465
  %cmp12 = icmp ule i64 %6, 8, !dbg !6467
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6468

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6469
  br label %return, !dbg !6469

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6470
  %cmp15 = icmp ule i64 %7, 16, !dbg !6472
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6473

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6474
  br label %return, !dbg !6474

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6475
  %cmp18 = icmp ule i64 %8, 32, !dbg !6477
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6478

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6479
  br label %return, !dbg !6479

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6480
  %cmp21 = icmp ule i64 %9, 64, !dbg !6482
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6483

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6484
  br label %return, !dbg !6484

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6485
  %cmp24 = icmp ule i64 %10, 128, !dbg !6487
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6488

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6489
  br label %return, !dbg !6489

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6490
  %cmp27 = icmp ule i64 %11, 256, !dbg !6492
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6493

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6494
  br label %return, !dbg !6494

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6495
  %cmp30 = icmp ule i64 %12, 512, !dbg !6497
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6498

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6499
  br label %return, !dbg !6499

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6500
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6502
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6503

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6504
  br label %return, !dbg !6504

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6505
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6507
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6508

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6509
  br label %return, !dbg !6509

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6510
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6512
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6513

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6514
  br label %return, !dbg !6514

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6515
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6517
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6518

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6519
  br label %return, !dbg !6519

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6520
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6522
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6523

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6524
  br label %return, !dbg !6524

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6525
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6527
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6528

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6529
  br label %return, !dbg !6529

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6530
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6532
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6533

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6535
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6537
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6538

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6540
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6542
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6543

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6544
  br label %return, !dbg !6544

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6545
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6547
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6548

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6549
  br label %return, !dbg !6549

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6550
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6552
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6553

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6554
  br label %return, !dbg !6554

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6555
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6557
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6558

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6559
  br label %return, !dbg !6559

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6560, !range !6249, !noundef !807
  %tobool69 = trunc i8 %25 to i1, !dbg !6560
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6562

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6563

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !6564, !srcloc !6567
  unreachable, !dbg !6564

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6568

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6569

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6570

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6572

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6570

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #18, !dbg !6574, !srcloc !6576
  br label %do.end75, !dbg !6574

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6570

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6577
  br label %return, !dbg !6577

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6578
  ret i32 %26, !dbg !6578
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6579 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6582 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6586, metadata !DIExpression()), !dbg !6588
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6587, metadata !DIExpression()), !dbg !6589
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6590
  %and = and i32 %0, 17, !dbg !6590
  %cmp = icmp eq i32 %and, 0, !dbg !6590
  %lnot = xor i1 %cmp, true, !dbg !6590
  %lnot1 = xor i1 %lnot, true, !dbg !6590
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6590
  %conv = sext i32 %lnot.ext to i64, !dbg !6590
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6590
  %tobool = icmp ne i64 %expval, 0, !dbg !6590
  br i1 %tobool, label %if.then, label %if.end, !dbg !6592

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6593
  br label %return, !dbg !6593

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6594
  %and2 = and i32 %1, 1, !dbg !6596
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6596
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6597

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6598
  br label %return, !dbg !6598

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6599
  br label %return, !dbg !6599

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6601
  ret i32 %2, !dbg !6601
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6602 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6603 dso_local void @__compiletime_assert_245() #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @signalfd_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6604 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %siginfo = alloca ptr, align 8
  %nonblock = alloca i32, align 4
  %ret = alloca i64, align 8
  %total = alloca i64, align 8
  %info = alloca %struct.kernel_siginfo, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6606, metadata !DIExpression()), !dbg !6616
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6607, metadata !DIExpression()), !dbg !6617
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6608, metadata !DIExpression()), !dbg !6618
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6609, metadata !DIExpression()), !dbg !6619
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6610, metadata !DIExpression()), !dbg !6621
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6622
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6623
  %1 = load ptr, ptr %private_data, align 8, !dbg !6623
  store ptr %1, ptr %ctx, align 8, !dbg !6621
  call void @llvm.lifetime.start.p0(i64 8, ptr %siginfo) #18, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %siginfo, metadata !6611, metadata !DIExpression()), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 4, ptr %nonblock) #18, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %nonblock, metadata !6612, metadata !DIExpression()), !dbg !6627
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6628
  %f_flags = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 6, !dbg !6629
  %3 = load i32, ptr %f_flags, align 8, !dbg !6629
  %and = and i32 %3, 2048, !dbg !6630
  store i32 %and, ptr %nonblock, align 4, !dbg !6627
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6613, metadata !DIExpression()), !dbg !6632
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #18, !dbg !6631
  call void @llvm.dbg.declare(metadata ptr %total, metadata !6614, metadata !DIExpression()), !dbg !6633
  store i64 0, ptr %total, align 8, !dbg !6633
  call void @llvm.lifetime.start.p0(i64 48, ptr %info) #18, !dbg !6634
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6615, metadata !DIExpression()), !dbg !6635
  %4 = load i64, ptr %count.addr, align 8, !dbg !6636
  %div = udiv i64 %4, 128, !dbg !6636
  store i64 %div, ptr %count.addr, align 8, !dbg !6636
  %5 = load i64, ptr %count.addr, align 8, !dbg !6637
  %tobool = icmp ne i64 %5, 0, !dbg !6637
  br i1 %tobool, label %if.end, label %if.then, !dbg !6639

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6640

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6641
  store ptr %6, ptr %siginfo, align 8, !dbg !6642
  br label %do.body, !dbg !6643

do.body:                                          ; preds = %do.cond, %if.end
  %7 = load ptr, ptr %ctx, align 8, !dbg !6644
  %8 = load i32, ptr %nonblock, align 4, !dbg !6646
  %call = call i64 @signalfd_dequeue(ptr noundef %7, ptr noundef %info, i32 noundef %8) #17, !dbg !6647
  store i64 %call, ptr %ret, align 8, !dbg !6648
  %9 = load i64, ptr %ret, align 8, !dbg !6649
  %cmp = icmp sle i64 %9, 0, !dbg !6649
  %lnot = xor i1 %cmp, true, !dbg !6649
  %lnot1 = xor i1 %lnot, true, !dbg !6649
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6649
  %conv = sext i32 %lnot.ext to i64, !dbg !6649
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6649
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6649
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6651

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !6652

if.end4:                                          ; preds = %do.body
  %10 = load ptr, ptr %siginfo, align 8, !dbg !6653
  %call5 = call i32 @signalfd_copyinfo(ptr noundef %10, ptr noundef %info) #17, !dbg !6654
  %conv6 = sext i32 %call5 to i64, !dbg !6654
  store i64 %conv6, ptr %ret, align 8, !dbg !6655
  %11 = load i64, ptr %ret, align 8, !dbg !6656
  %cmp7 = icmp slt i64 %11, 0, !dbg !6658
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6659

if.then9:                                         ; preds = %if.end4
  br label %do.end, !dbg !6660

if.end10:                                         ; preds = %if.end4
  %12 = load ptr, ptr %siginfo, align 8, !dbg !6661
  %incdec.ptr = getelementptr %struct.signalfd_siginfo, ptr %12, i32 1, !dbg !6661
  store ptr %incdec.ptr, ptr %siginfo, align 8, !dbg !6661
  %13 = load i64, ptr %ret, align 8, !dbg !6662
  %14 = load i64, ptr %total, align 8, !dbg !6663
  %add = add i64 %14, %13, !dbg !6663
  store i64 %add, ptr %total, align 8, !dbg !6663
  store i32 1, ptr %nonblock, align 4, !dbg !6664
  br label %do.cond, !dbg !6665

do.cond:                                          ; preds = %if.end10
  %15 = load i64, ptr %count.addr, align 8, !dbg !6666
  %dec = add i64 %15, -1, !dbg !6666
  store i64 %dec, ptr %count.addr, align 8, !dbg !6666
  %tobool11 = icmp ne i64 %dec, 0, !dbg !6665
  br i1 %tobool11, label %do.body, label %do.end, !dbg !6665, !llvm.loop !6667

do.end:                                           ; preds = %do.cond, %if.then9, %if.then3
  %16 = load i64, ptr %total, align 8, !dbg !6671
  %tobool12 = icmp ne i64 %16, 0, !dbg !6671
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !6671

cond.true:                                        ; preds = %do.end
  %17 = load i64, ptr %total, align 8, !dbg !6672
  br label %cond.end, !dbg !6671

cond.false:                                       ; preds = %do.end
  %18 = load i64, ptr %ret, align 8, !dbg !6673
  br label %cond.end, !dbg !6671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !6671
  store i64 %cond, ptr %retval, align 8, !dbg !6674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6674

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %info) #18, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #18, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 4, ptr %nonblock) #18, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %siginfo) #18, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !6675
  %19 = load i64, ptr %retval, align 8, !dbg !6675
  ret i64 %19, !dbg !6675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signalfd_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !6676 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %events = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6682, metadata !DIExpression()), !dbg !6686
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6683, metadata !DIExpression()), !dbg !6687
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6684, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6690
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6691
  %1 = load ptr, ptr %private_data, align 8, !dbg !6691
  store ptr %1, ptr %ctx, align 8, !dbg !6689
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #18, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %events, metadata !6685, metadata !DIExpression()), !dbg !6693
  store i32 0, ptr %events, align 4, !dbg !6693
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6694
  %call = call ptr @get_current() #17, !dbg !6695
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !6696
  %3 = load ptr, ptr %sighand, align 8, !dbg !6696
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %3, i32 0, i32 2, !dbg !6697
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !6698
  call void @poll_wait(ptr noundef %2, ptr noundef %signalfd_wqh, ptr noundef %4) #17, !dbg !6699
  %call1 = call ptr @get_current() #17, !dbg !6700
  %sighand2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 105, !dbg !6701
  %5 = load ptr, ptr %sighand2, align 8, !dbg !6701
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %5, i32 0, i32 0, !dbg !6702
  call void @spin_lock_irq(ptr noundef %siglock) #17, !dbg !6703
  %call3 = call ptr @get_current() #17, !dbg !6704
  %pending = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 109, !dbg !6706
  %6 = load ptr, ptr %ctx, align 8, !dbg !6707
  %sigmask = getelementptr inbounds %struct.signalfd_ctx, ptr %6, i32 0, i32 0, !dbg !6708
  %call4 = call i32 @next_signal(ptr noundef %pending, ptr noundef %sigmask) #17, !dbg !6709
  %tobool = icmp ne i32 %call4, 0, !dbg !6709
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6710

lor.lhs.false:                                    ; preds = %entry
  %call5 = call ptr @get_current() #17, !dbg !6711
  %signal = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 104, !dbg !6712
  %7 = load ptr, ptr %signal, align 64, !dbg !6712
  %shared_pending = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 7, !dbg !6713
  %8 = load ptr, ptr %ctx, align 8, !dbg !6714
  %sigmask6 = getelementptr inbounds %struct.signalfd_ctx, ptr %8, i32 0, i32 0, !dbg !6715
  %call7 = call i32 @next_signal(ptr noundef %shared_pending, ptr noundef %sigmask6) #17, !dbg !6716
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6716
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6717

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, ptr %events, align 4, !dbg !6718
  %or = or i32 %9, 1, !dbg !6718
  store i32 %or, ptr %events, align 4, !dbg !6718
  br label %if.end, !dbg !6719

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call9 = call ptr @get_current() #17, !dbg !6720
  %sighand10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 105, !dbg !6721
  %10 = load ptr, ptr %sighand10, align 8, !dbg !6721
  %siglock11 = getelementptr inbounds %struct.sighand_struct, ptr %10, i32 0, i32 0, !dbg !6722
  call void @spin_unlock_irq(ptr noundef %siglock11) #17, !dbg !6723
  %11 = load i32, ptr %events, align 4, !dbg !6724
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #18, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !6725
  ret i32 %11, !dbg !6726
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signalfd_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6727 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6730, metadata !DIExpression()), !dbg !6732
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6733
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6734
  %1 = load ptr, ptr %private_data, align 8, !dbg !6734
  call void @kfree(ptr noundef %1) #17, !dbg !6735
  ret i32 0, !dbg !6736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @signalfd_show_fdinfo(ptr noundef %m, ptr noundef %f) #0 align 16 !dbg !6737 {
entry:
  %m.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %sigmask = alloca %struct.sigset_t, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6739, metadata !DIExpression()), !dbg !6743
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6740, metadata !DIExpression()), !dbg !6744
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #18, !dbg !6745
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6741, metadata !DIExpression()), !dbg !6746
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6747
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6748
  %1 = load ptr, ptr %private_data, align 8, !dbg !6748
  store ptr %1, ptr %ctx, align 8, !dbg !6746
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigmask) #18, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %sigmask, metadata !6742, metadata !DIExpression()), !dbg !6750
  %2 = load ptr, ptr %ctx, align 8, !dbg !6751
  %sigmask1 = getelementptr inbounds %struct.signalfd_ctx, ptr %2, i32 0, i32 0, !dbg !6752
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sigmask, ptr align 8 %sigmask1, i64 8, i1 false), !dbg !6752
  call void @signotset(ptr noundef %sigmask) #17, !dbg !6753
  %3 = load ptr, ptr %m.addr, align 8, !dbg !6754
  call void @render_sigset_t(ptr noundef %3, ptr noundef @.str.3, ptr noundef %sigmask) #17, !dbg !6755
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigmask) #18, !dbg !6756
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #18, !dbg !6756
  ret void, !dbg !6756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @signalfd_dequeue(ptr noundef %ctx, ptr noundef %info, i32 noundef %nonblock) #0 align 16 !dbg !6757 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %nonblock.addr = alloca i32, align 4
  %type = alloca i32, align 4
  %ret = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6761, metadata !DIExpression()), !dbg !6788
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6762, metadata !DIExpression()), !dbg !6789
  store i32 %nonblock, ptr %nonblock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nonblock.addr, metadata !6763, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #18, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6764, metadata !DIExpression()), !dbg !6792
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !6793
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6765, metadata !DIExpression()), !dbg !6794
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #18, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !6766, metadata !DIExpression()), !dbg !6795
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 0, !dbg !6795
  store i32 0, ptr %flags, align 8, !dbg !6795
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1, !dbg !6795
  %call = call ptr @get_current() #17, !dbg !6795
  store ptr %call, ptr %private, align 8, !dbg !6795
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2, !dbg !6795
  store ptr @default_wake_function, ptr %func, align 8, !dbg !6795
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, !dbg !6795
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !6795
  store ptr null, ptr %next, align 8, !dbg !6795
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !6795
  store ptr null, ptr %prev, align 8, !dbg !6795
  %call2 = call ptr @get_current() #17, !dbg !6796
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 105, !dbg !6797
  %0 = load ptr, ptr %sighand, align 8, !dbg !6797
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 0, !dbg !6798
  call void @spin_lock_irq(ptr noundef %siglock) #17, !dbg !6799
  %call3 = call ptr @get_current() #17, !dbg !6800
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6801
  %sigmask = getelementptr inbounds %struct.signalfd_ctx, ptr %1, i32 0, i32 0, !dbg !6802
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6803
  %call4 = call i32 @dequeue_signal(ptr noundef %call3, ptr noundef %sigmask, ptr noundef %2, ptr noundef %type) #17, !dbg !6804
  %conv = sext i32 %call4 to i64, !dbg !6804
  store i64 %conv, ptr %ret, align 8, !dbg !6805
  %3 = load i64, ptr %ret, align 8, !dbg !6806
  switch i64 %3, label %sw.default [
    i64 0, label %sw.bb
  ], !dbg !6807

sw.bb:                                            ; preds = %entry
  %4 = load i32, ptr %nonblock.addr, align 4, !dbg !6808
  %tobool = icmp ne i32 %4, 0, !dbg !6808
  br i1 %tobool, label %if.end, label %if.then, !dbg !6811

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !6812

if.end:                                           ; preds = %sw.bb
  store i64 -11, ptr %ret, align 8, !dbg !6813
  br label %sw.default, !dbg !6814

sw.default:                                       ; preds = %entry, %if.end
  %call5 = call ptr @get_current() #17, !dbg !6815
  %sighand6 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 105, !dbg !6816
  %5 = load ptr, ptr %sighand6, align 8, !dbg !6816
  %siglock7 = getelementptr inbounds %struct.sighand_struct, ptr %5, i32 0, i32 0, !dbg !6817
  call void @spin_unlock_irq(ptr noundef %siglock7) #17, !dbg !6818
  %6 = load i64, ptr %ret, align 8, !dbg !6819
  store i64 %6, ptr %retval, align 8, !dbg !6820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6820

sw.epilog:                                        ; preds = %if.then
  %call8 = call ptr @get_current() #17, !dbg !6821
  %sighand9 = getelementptr inbounds %struct.task_struct, ptr %call8, i32 0, i32 105, !dbg !6822
  %7 = load ptr, ptr %sighand9, align 8, !dbg !6822
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %7, i32 0, i32 2, !dbg !6823
  call void @add_wait_queue(ptr noundef %signalfd_wqh, ptr noundef %wait) #17, !dbg !6824
  br label %for.cond, !dbg !6825

for.cond:                                         ; preds = %if.end38, %sw.epilog
  br label %do.body, !dbg !6826

do.body:                                          ; preds = %for.cond
  br label %do.body10, !dbg !6827

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6828

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6828

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6827

do.body11:                                        ; preds = %do.end
  br label %do.body12, !dbg !6830

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !6831

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6831

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6830

do.body15:                                        ; preds = %do.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #18, !dbg !6833
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6778, metadata !DIExpression()), !dbg !6833
  %call16 = call ptr @get_current() #17, !dbg !6833
  %__state = getelementptr inbounds %struct.task_struct, ptr %call16, i32 0, i32 1, !dbg !6833
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !6833
  br label %do.body17, !dbg !6833

do.body17:                                        ; preds = %do.body15
  br label %do.cond18, !dbg !6834

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6834

do.end19:                                         ; preds = %do.cond18
  %8 = load ptr, ptr %__ai_ptr, align 8, !dbg !6833
  call void @instrument_atomic_read_write(ptr noundef %8, i64 noundef 4) #17, !dbg !6833
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6786, metadata !DIExpression()), !dbg !6836
  store i32 1, ptr %__ret, align 4, !dbg !6836
  %9 = load i32, ptr %__ret, align 4, !dbg !6836
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !6836
  %11 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %10, i32 %9, ptr elementtype(i32) %10) #18, !dbg !6836, !srcloc !6837
  store i32 %11, ptr %__ret, align 4, !dbg !6836
  %12 = load i32, ptr %__ret, align 4, !dbg !6836
  store i32 %12, ptr %tmp20, align 4, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !6833
  %13 = load i32, ptr %tmp20, align 4, !dbg !6836
  store i32 %13, ptr %tmp, align 4, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #18, !dbg !6838
  %14 = load i32, ptr %tmp, align 4, !dbg !6833
  br label %do.cond21, !dbg !6838

do.cond21:                                        ; preds = %do.end19
  br label %do.end22, !dbg !6838

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !6830

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !6830

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !6827

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !6827

do.end26:                                         ; preds = %do.cond25
  %call27 = call ptr @get_current() #17, !dbg !6839
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !6840
  %sigmask28 = getelementptr inbounds %struct.signalfd_ctx, ptr %15, i32 0, i32 0, !dbg !6841
  %16 = load ptr, ptr %info.addr, align 8, !dbg !6842
  %call29 = call i32 @dequeue_signal(ptr noundef %call27, ptr noundef %sigmask28, ptr noundef %16, ptr noundef %type) #17, !dbg !6843
  %conv30 = sext i32 %call29 to i64, !dbg !6843
  store i64 %conv30, ptr %ret, align 8, !dbg !6844
  %17 = load i64, ptr %ret, align 8, !dbg !6845
  %cmp = icmp ne i64 %17, 0, !dbg !6847
  br i1 %cmp, label %if.then32, label %if.end33, !dbg !6848

if.then32:                                        ; preds = %do.end26
  br label %for.end, !dbg !6849

if.end33:                                         ; preds = %do.end26
  %call34 = call ptr @get_current() #17, !dbg !6850
  %call35 = call i32 @signal_pending(ptr noundef %call34) #17, !dbg !6852
  %tobool36 = icmp ne i32 %call35, 0, !dbg !6852
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6853

if.then37:                                        ; preds = %if.end33
  store i64 -512, ptr %ret, align 8, !dbg !6854
  br label %for.end, !dbg !6856

if.end38:                                         ; preds = %if.end33
  %call39 = call ptr @get_current() #17, !dbg !6857
  %sighand40 = getelementptr inbounds %struct.task_struct, ptr %call39, i32 0, i32 105, !dbg !6858
  %18 = load ptr, ptr %sighand40, align 8, !dbg !6858
  %siglock41 = getelementptr inbounds %struct.sighand_struct, ptr %18, i32 0, i32 0, !dbg !6859
  call void @spin_unlock_irq(ptr noundef %siglock41) #17, !dbg !6860
  call void @schedule() #17, !dbg !6861
  %call42 = call ptr @get_current() #17, !dbg !6862
  %sighand43 = getelementptr inbounds %struct.task_struct, ptr %call42, i32 0, i32 105, !dbg !6863
  %19 = load ptr, ptr %sighand43, align 8, !dbg !6863
  %siglock44 = getelementptr inbounds %struct.sighand_struct, ptr %19, i32 0, i32 0, !dbg !6864
  call void @spin_lock_irq(ptr noundef %siglock44) #17, !dbg !6865
  br label %for.cond, !dbg !6866, !llvm.loop !6867

for.end:                                          ; preds = %if.then37, %if.then32
  %call45 = call ptr @get_current() #17, !dbg !6870
  %sighand46 = getelementptr inbounds %struct.task_struct, ptr %call45, i32 0, i32 105, !dbg !6871
  %20 = load ptr, ptr %sighand46, align 8, !dbg !6871
  %siglock47 = getelementptr inbounds %struct.sighand_struct, ptr %20, i32 0, i32 0, !dbg !6872
  call void @spin_unlock_irq(ptr noundef %siglock47) #17, !dbg !6873
  %call48 = call ptr @get_current() #17, !dbg !6874
  %sighand49 = getelementptr inbounds %struct.task_struct, ptr %call48, i32 0, i32 105, !dbg !6875
  %21 = load ptr, ptr %sighand49, align 8, !dbg !6875
  %signalfd_wqh50 = getelementptr inbounds %struct.sighand_struct, ptr %21, i32 0, i32 2, !dbg !6876
  call void @remove_wait_queue(ptr noundef %signalfd_wqh50, ptr noundef %wait) #17, !dbg !6877
  br label %do.body51, !dbg !6878

do.body51:                                        ; preds = %for.end
  br label %do.body52, !dbg !6879

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !6881

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !6881

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !6879

do.body55:                                        ; preds = %do.end54
  br label %do.body56, !dbg !6883

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !6885

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6885

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !6883

do.body59:                                        ; preds = %do.end58
  %call60 = call ptr @get_current() #17, !dbg !6887
  %__state61 = getelementptr inbounds %struct.task_struct, ptr %call60, i32 0, i32 1, !dbg !6887
  store volatile i32 0, ptr %__state61, align 8, !dbg !6887
  br label %do.cond62, !dbg !6887

do.cond62:                                        ; preds = %do.body59
  br label %do.end63, !dbg !6887

do.end63:                                         ; preds = %do.cond62
  br label %do.cond64, !dbg !6883

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !6883

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !6879

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !6879

do.end67:                                         ; preds = %do.cond66
  %22 = load i64, ptr %ret, align 8, !dbg !6889
  store i64 %22, ptr %retval, align 8, !dbg !6890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6890

cleanup:                                          ; preds = %do.end67, %sw.default
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #18, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #18, !dbg !6891
  %23 = load i64, ptr %retval, align 8, !dbg !6891
  ret i64 %23, !dbg !6891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signalfd_copyinfo(ptr noundef %uinfo, ptr noundef %kinfo) #0 align 16 !dbg !6892 {
entry:
  %retval = alloca i32, align 4
  %uinfo.addr = alloca ptr, align 8
  %kinfo.addr = alloca ptr, align 8
  %new = alloca %struct.signalfd_siginfo, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uinfo, ptr %uinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uinfo.addr, metadata !6898, metadata !DIExpression()), !dbg !6901
  store ptr %kinfo, ptr %kinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kinfo.addr, metadata !6899, metadata !DIExpression()), !dbg !6902
  call void @llvm.lifetime.start.p0(i64 128, ptr %new) #18, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6900, metadata !DIExpression()), !dbg !6904
  br label %do.body, !dbg !6905

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6906

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6906

do.end:                                           ; preds = %do.cond
  call void @llvm.memset.p0.i64(ptr align 8 %new, i8 0, i64 128, i1 false), !dbg !6908
  %0 = load ptr, ptr %kinfo.addr, align 8, !dbg !6909
  %1 = getelementptr inbounds %struct.kernel_siginfo, ptr %0, i32 0, i32 0, !dbg !6910
  %si_signo = getelementptr inbounds %struct.anon.24, ptr %1, i32 0, i32 0, !dbg !6910
  %2 = load i32, ptr %si_signo, align 8, !dbg !6910
  %ssi_signo = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 0, !dbg !6911
  store i32 %2, ptr %ssi_signo, align 8, !dbg !6912
  %3 = load ptr, ptr %kinfo.addr, align 8, !dbg !6913
  %4 = getelementptr inbounds %struct.kernel_siginfo, ptr %3, i32 0, i32 0, !dbg !6914
  %si_errno = getelementptr inbounds %struct.anon.24, ptr %4, i32 0, i32 1, !dbg !6914
  %5 = load i32, ptr %si_errno, align 4, !dbg !6914
  %ssi_errno = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 1, !dbg !6915
  store i32 %5, ptr %ssi_errno, align 4, !dbg !6916
  %6 = load ptr, ptr %kinfo.addr, align 8, !dbg !6917
  %7 = getelementptr inbounds %struct.kernel_siginfo, ptr %6, i32 0, i32 0, !dbg !6918
  %si_code = getelementptr inbounds %struct.anon.24, ptr %7, i32 0, i32 2, !dbg !6918
  %8 = load i32, ptr %si_code, align 8, !dbg !6918
  %ssi_code = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 2, !dbg !6919
  store i32 %8, ptr %ssi_code, align 8, !dbg !6920
  %9 = load ptr, ptr %kinfo.addr, align 8, !dbg !6921
  %10 = getelementptr inbounds %struct.kernel_siginfo, ptr %9, i32 0, i32 0, !dbg !6922
  %si_signo1 = getelementptr inbounds %struct.anon.24, ptr %10, i32 0, i32 0, !dbg !6922
  %11 = load i32, ptr %si_signo1, align 8, !dbg !6922
  %12 = load ptr, ptr %kinfo.addr, align 8, !dbg !6923
  %13 = getelementptr inbounds %struct.kernel_siginfo, ptr %12, i32 0, i32 0, !dbg !6924
  %si_code2 = getelementptr inbounds %struct.anon.24, ptr %13, i32 0, i32 2, !dbg !6924
  %14 = load i32, ptr %si_code2, align 8, !dbg !6924
  %call = call i32 @siginfo_layout(i32 noundef %11, i32 noundef %14) #17, !dbg !6925
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb10
    i32 6, label %sw.bb13
    i32 7, label %sw.bb13
    i32 8, label %sw.bb13
    i32 3, label %sw.bb13
    i32 4, label %sw.bb15
    i32 5, label %sw.bb20
    i32 9, label %sw.bb25
    i32 10, label %sw.bb35
    i32 11, label %sw.bb48
  ], !dbg !6926

sw.bb:                                            ; preds = %do.end
  %15 = load ptr, ptr %kinfo.addr, align 8, !dbg !6927
  %16 = getelementptr inbounds %struct.kernel_siginfo, ptr %15, i32 0, i32 0, !dbg !6929
  %_sifields = getelementptr inbounds %struct.anon.24, ptr %16, i32 0, i32 3, !dbg !6929
  %_pid = getelementptr inbounds %struct.anon.25, ptr %_sifields, i32 0, i32 0, !dbg !6929
  %17 = load i32, ptr %_pid, align 8, !dbg !6929
  %ssi_pid = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 3, !dbg !6930
  store i32 %17, ptr %ssi_pid, align 4, !dbg !6931
  %18 = load ptr, ptr %kinfo.addr, align 8, !dbg !6932
  %19 = getelementptr inbounds %struct.kernel_siginfo, ptr %18, i32 0, i32 0, !dbg !6933
  %_sifields3 = getelementptr inbounds %struct.anon.24, ptr %19, i32 0, i32 3, !dbg !6933
  %_uid = getelementptr inbounds %struct.anon.25, ptr %_sifields3, i32 0, i32 1, !dbg !6933
  %20 = load i32, ptr %_uid, align 4, !dbg !6933
  %ssi_uid = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 4, !dbg !6934
  store i32 %20, ptr %ssi_uid, align 8, !dbg !6935
  br label %sw.epilog, !dbg !6936

sw.bb4:                                           ; preds = %do.end
  %21 = load ptr, ptr %kinfo.addr, align 8, !dbg !6937
  %22 = getelementptr inbounds %struct.kernel_siginfo, ptr %21, i32 0, i32 0, !dbg !6938
  %_sifields5 = getelementptr inbounds %struct.anon.24, ptr %22, i32 0, i32 3, !dbg !6938
  %_tid = getelementptr inbounds %struct.anon.26, ptr %_sifields5, i32 0, i32 0, !dbg !6938
  %23 = load i32, ptr %_tid, align 8, !dbg !6938
  %ssi_tid = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 6, !dbg !6939
  store i32 %23, ptr %ssi_tid, align 8, !dbg !6940
  %24 = load ptr, ptr %kinfo.addr, align 8, !dbg !6941
  %25 = getelementptr inbounds %struct.kernel_siginfo, ptr %24, i32 0, i32 0, !dbg !6942
  %_sifields6 = getelementptr inbounds %struct.anon.24, ptr %25, i32 0, i32 3, !dbg !6942
  %_overrun = getelementptr inbounds %struct.anon.26, ptr %_sifields6, i32 0, i32 1, !dbg !6942
  %26 = load i32, ptr %_overrun, align 4, !dbg !6942
  %ssi_overrun = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 8, !dbg !6943
  store i32 %26, ptr %ssi_overrun, align 8, !dbg !6944
  %27 = load ptr, ptr %kinfo.addr, align 8, !dbg !6945
  %28 = getelementptr inbounds %struct.kernel_siginfo, ptr %27, i32 0, i32 0, !dbg !6946
  %_sifields7 = getelementptr inbounds %struct.anon.24, ptr %28, i32 0, i32 3, !dbg !6946
  %_sigval = getelementptr inbounds %struct.anon.27, ptr %_sifields7, i32 0, i32 2, !dbg !6946
  %29 = load ptr, ptr %_sigval, align 8, !dbg !6946
  %30 = ptrtoint ptr %29 to i64, !dbg !6947
  %ssi_ptr = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 12, !dbg !6948
  store i64 %30, ptr %ssi_ptr, align 8, !dbg !6949
  %31 = load ptr, ptr %kinfo.addr, align 8, !dbg !6950
  %32 = getelementptr inbounds %struct.kernel_siginfo, ptr %31, i32 0, i32 0, !dbg !6951
  %_sifields8 = getelementptr inbounds %struct.anon.24, ptr %32, i32 0, i32 3, !dbg !6951
  %_sigval9 = getelementptr inbounds %struct.anon.27, ptr %_sifields8, i32 0, i32 2, !dbg !6951
  %33 = load i32, ptr %_sigval9, align 8, !dbg !6951
  %ssi_int = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 11, !dbg !6952
  store i32 %33, ptr %ssi_int, align 4, !dbg !6953
  br label %sw.epilog, !dbg !6954

sw.bb10:                                          ; preds = %do.end
  %34 = load ptr, ptr %kinfo.addr, align 8, !dbg !6955
  %35 = getelementptr inbounds %struct.kernel_siginfo, ptr %34, i32 0, i32 0, !dbg !6956
  %_sifields11 = getelementptr inbounds %struct.anon.24, ptr %35, i32 0, i32 3, !dbg !6956
  %_band = getelementptr inbounds %struct.anon.34, ptr %_sifields11, i32 0, i32 0, !dbg !6956
  %36 = load i64, ptr %_band, align 8, !dbg !6956
  %conv = trunc i64 %36 to i32, !dbg !6955
  %ssi_band = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 7, !dbg !6957
  store i32 %conv, ptr %ssi_band, align 4, !dbg !6958
  %37 = load ptr, ptr %kinfo.addr, align 8, !dbg !6959
  %38 = getelementptr inbounds %struct.kernel_siginfo, ptr %37, i32 0, i32 0, !dbg !6960
  %_sifields12 = getelementptr inbounds %struct.anon.24, ptr %38, i32 0, i32 3, !dbg !6960
  %_fd = getelementptr inbounds %struct.anon.34, ptr %_sifields12, i32 0, i32 1, !dbg !6960
  %39 = load i32, ptr %_fd, align 8, !dbg !6960
  %ssi_fd = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 5, !dbg !6961
  store i32 %39, ptr %ssi_fd, align 4, !dbg !6962
  br label %sw.epilog, !dbg !6963

sw.bb13:                                          ; preds = %do.end, %do.end, %do.end, %do.end
  %40 = load ptr, ptr %kinfo.addr, align 8, !dbg !6964
  %41 = getelementptr inbounds %struct.kernel_siginfo, ptr %40, i32 0, i32 0, !dbg !6965
  %_sifields14 = getelementptr inbounds %struct.anon.24, ptr %41, i32 0, i32 3, !dbg !6965
  %_addr = getelementptr inbounds %struct.anon.29, ptr %_sifields14, i32 0, i32 0, !dbg !6965
  %42 = load ptr, ptr %_addr, align 8, !dbg !6965
  %43 = ptrtoint ptr %42 to i64, !dbg !6966
  %ssi_addr = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 15, !dbg !6967
  store i64 %43, ptr %ssi_addr, align 8, !dbg !6968
  br label %sw.epilog, !dbg !6969

sw.bb15:                                          ; preds = %do.end
  %44 = load ptr, ptr %kinfo.addr, align 8, !dbg !6970
  %45 = getelementptr inbounds %struct.kernel_siginfo, ptr %44, i32 0, i32 0, !dbg !6971
  %_sifields16 = getelementptr inbounds %struct.anon.24, ptr %45, i32 0, i32 3, !dbg !6971
  %_addr17 = getelementptr inbounds %struct.anon.29, ptr %_sifields16, i32 0, i32 0, !dbg !6971
  %46 = load ptr, ptr %_addr17, align 8, !dbg !6971
  %47 = ptrtoint ptr %46 to i64, !dbg !6972
  %ssi_addr18 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 15, !dbg !6973
  store i64 %47, ptr %ssi_addr18, align 8, !dbg !6974
  %48 = load ptr, ptr %kinfo.addr, align 8, !dbg !6975
  %49 = getelementptr inbounds %struct.kernel_siginfo, ptr %48, i32 0, i32 0, !dbg !6976
  %_sifields19 = getelementptr inbounds %struct.anon.24, ptr %49, i32 0, i32 3, !dbg !6976
  %50 = getelementptr inbounds %struct.anon.29, ptr %_sifields19, i32 0, i32 1, !dbg !6976
  %51 = load i32, ptr %50, align 8, !dbg !6976
  %ssi_trapno = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 9, !dbg !6977
  store i32 %51, ptr %ssi_trapno, align 4, !dbg !6978
  br label %sw.epilog, !dbg !6979

sw.bb20:                                          ; preds = %do.end
  %52 = load ptr, ptr %kinfo.addr, align 8, !dbg !6980
  %53 = getelementptr inbounds %struct.kernel_siginfo, ptr %52, i32 0, i32 0, !dbg !6981
  %_sifields21 = getelementptr inbounds %struct.anon.24, ptr %53, i32 0, i32 3, !dbg !6981
  %_addr22 = getelementptr inbounds %struct.anon.29, ptr %_sifields21, i32 0, i32 0, !dbg !6981
  %54 = load ptr, ptr %_addr22, align 8, !dbg !6981
  %55 = ptrtoint ptr %54 to i64, !dbg !6982
  %ssi_addr23 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 15, !dbg !6983
  store i64 %55, ptr %ssi_addr23, align 8, !dbg !6984
  %56 = load ptr, ptr %kinfo.addr, align 8, !dbg !6985
  %57 = getelementptr inbounds %struct.kernel_siginfo, ptr %56, i32 0, i32 0, !dbg !6986
  %_sifields24 = getelementptr inbounds %struct.anon.24, ptr %57, i32 0, i32 3, !dbg !6986
  %58 = getelementptr inbounds %struct.anon.29, ptr %_sifields24, i32 0, i32 1, !dbg !6986
  %59 = load i16, ptr %58, align 8, !dbg !6986
  %ssi_addr_lsb = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 16, !dbg !6987
  store i16 %59, ptr %ssi_addr_lsb, align 8, !dbg !6988
  br label %sw.epilog, !dbg !6989

sw.bb25:                                          ; preds = %do.end
  %60 = load ptr, ptr %kinfo.addr, align 8, !dbg !6990
  %61 = getelementptr inbounds %struct.kernel_siginfo, ptr %60, i32 0, i32 0, !dbg !6991
  %_sifields26 = getelementptr inbounds %struct.anon.24, ptr %61, i32 0, i32 3, !dbg !6991
  %_pid27 = getelementptr inbounds %struct.anon.25, ptr %_sifields26, i32 0, i32 0, !dbg !6991
  %62 = load i32, ptr %_pid27, align 8, !dbg !6991
  %ssi_pid28 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 3, !dbg !6992
  store i32 %62, ptr %ssi_pid28, align 4, !dbg !6993
  %63 = load ptr, ptr %kinfo.addr, align 8, !dbg !6994
  %64 = getelementptr inbounds %struct.kernel_siginfo, ptr %63, i32 0, i32 0, !dbg !6995
  %_sifields29 = getelementptr inbounds %struct.anon.24, ptr %64, i32 0, i32 3, !dbg !6995
  %_uid30 = getelementptr inbounds %struct.anon.25, ptr %_sifields29, i32 0, i32 1, !dbg !6995
  %65 = load i32, ptr %_uid30, align 4, !dbg !6995
  %ssi_uid31 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 4, !dbg !6996
  store i32 %65, ptr %ssi_uid31, align 8, !dbg !6997
  %66 = load ptr, ptr %kinfo.addr, align 8, !dbg !6998
  %67 = getelementptr inbounds %struct.kernel_siginfo, ptr %66, i32 0, i32 0, !dbg !6999
  %_sifields32 = getelementptr inbounds %struct.anon.24, ptr %67, i32 0, i32 3, !dbg !6999
  %_status = getelementptr inbounds %struct.anon.28, ptr %_sifields32, i32 0, i32 2, !dbg !6999
  %68 = load i32, ptr %_status, align 8, !dbg !6999
  %ssi_status = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 10, !dbg !7000
  store i32 %68, ptr %ssi_status, align 8, !dbg !7001
  %69 = load ptr, ptr %kinfo.addr, align 8, !dbg !7002
  %70 = getelementptr inbounds %struct.kernel_siginfo, ptr %69, i32 0, i32 0, !dbg !7003
  %_sifields33 = getelementptr inbounds %struct.anon.24, ptr %70, i32 0, i32 3, !dbg !7003
  %_utime = getelementptr inbounds %struct.anon.28, ptr %_sifields33, i32 0, i32 3, !dbg !7003
  %71 = load i64, ptr %_utime, align 8, !dbg !7003
  %ssi_utime = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 13, !dbg !7004
  store i64 %71, ptr %ssi_utime, align 8, !dbg !7005
  %72 = load ptr, ptr %kinfo.addr, align 8, !dbg !7006
  %73 = getelementptr inbounds %struct.kernel_siginfo, ptr %72, i32 0, i32 0, !dbg !7007
  %_sifields34 = getelementptr inbounds %struct.anon.24, ptr %73, i32 0, i32 3, !dbg !7007
  %_stime = getelementptr inbounds %struct.anon.28, ptr %_sifields34, i32 0, i32 4, !dbg !7007
  %74 = load i64, ptr %_stime, align 8, !dbg !7007
  %ssi_stime = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 14, !dbg !7008
  store i64 %74, ptr %ssi_stime, align 8, !dbg !7009
  br label %sw.epilog, !dbg !7010

sw.bb35:                                          ; preds = %do.end
  %75 = load ptr, ptr %kinfo.addr, align 8, !dbg !7011
  %76 = getelementptr inbounds %struct.kernel_siginfo, ptr %75, i32 0, i32 0, !dbg !7012
  %_sifields36 = getelementptr inbounds %struct.anon.24, ptr %76, i32 0, i32 3, !dbg !7012
  %_pid37 = getelementptr inbounds %struct.anon.25, ptr %_sifields36, i32 0, i32 0, !dbg !7012
  %77 = load i32, ptr %_pid37, align 8, !dbg !7012
  %ssi_pid38 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 3, !dbg !7013
  store i32 %77, ptr %ssi_pid38, align 4, !dbg !7014
  %78 = load ptr, ptr %kinfo.addr, align 8, !dbg !7015
  %79 = getelementptr inbounds %struct.kernel_siginfo, ptr %78, i32 0, i32 0, !dbg !7016
  %_sifields39 = getelementptr inbounds %struct.anon.24, ptr %79, i32 0, i32 3, !dbg !7016
  %_uid40 = getelementptr inbounds %struct.anon.25, ptr %_sifields39, i32 0, i32 1, !dbg !7016
  %80 = load i32, ptr %_uid40, align 4, !dbg !7016
  %ssi_uid41 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 4, !dbg !7017
  store i32 %80, ptr %ssi_uid41, align 8, !dbg !7018
  %81 = load ptr, ptr %kinfo.addr, align 8, !dbg !7019
  %82 = getelementptr inbounds %struct.kernel_siginfo, ptr %81, i32 0, i32 0, !dbg !7020
  %_sifields42 = getelementptr inbounds %struct.anon.24, ptr %82, i32 0, i32 3, !dbg !7020
  %_sigval43 = getelementptr inbounds %struct.anon.27, ptr %_sifields42, i32 0, i32 2, !dbg !7020
  %83 = load ptr, ptr %_sigval43, align 8, !dbg !7020
  %84 = ptrtoint ptr %83 to i64, !dbg !7021
  %ssi_ptr44 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 12, !dbg !7022
  store i64 %84, ptr %ssi_ptr44, align 8, !dbg !7023
  %85 = load ptr, ptr %kinfo.addr, align 8, !dbg !7024
  %86 = getelementptr inbounds %struct.kernel_siginfo, ptr %85, i32 0, i32 0, !dbg !7025
  %_sifields45 = getelementptr inbounds %struct.anon.24, ptr %86, i32 0, i32 3, !dbg !7025
  %_sigval46 = getelementptr inbounds %struct.anon.27, ptr %_sifields45, i32 0, i32 2, !dbg !7025
  %87 = load i32, ptr %_sigval46, align 8, !dbg !7025
  %ssi_int47 = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 11, !dbg !7026
  store i32 %87, ptr %ssi_int47, align 4, !dbg !7027
  br label %sw.epilog, !dbg !7028

sw.bb48:                                          ; preds = %do.end
  %88 = load ptr, ptr %kinfo.addr, align 8, !dbg !7029
  %89 = getelementptr inbounds %struct.kernel_siginfo, ptr %88, i32 0, i32 0, !dbg !7030
  %_sifields49 = getelementptr inbounds %struct.anon.24, ptr %89, i32 0, i32 3, !dbg !7030
  %_call_addr = getelementptr inbounds %struct.anon.35, ptr %_sifields49, i32 0, i32 0, !dbg !7030
  %90 = load ptr, ptr %_call_addr, align 8, !dbg !7030
  %91 = ptrtoint ptr %90 to i64, !dbg !7031
  %ssi_call_addr = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 19, !dbg !7032
  store i64 %91, ptr %ssi_call_addr, align 8, !dbg !7033
  %92 = load ptr, ptr %kinfo.addr, align 8, !dbg !7034
  %93 = getelementptr inbounds %struct.kernel_siginfo, ptr %92, i32 0, i32 0, !dbg !7035
  %_sifields50 = getelementptr inbounds %struct.anon.24, ptr %93, i32 0, i32 3, !dbg !7035
  %_syscall = getelementptr inbounds %struct.anon.35, ptr %_sifields50, i32 0, i32 1, !dbg !7035
  %94 = load i32, ptr %_syscall, align 8, !dbg !7035
  %ssi_syscall = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 18, !dbg !7036
  store i32 %94, ptr %ssi_syscall, align 4, !dbg !7037
  %95 = load ptr, ptr %kinfo.addr, align 8, !dbg !7038
  %96 = getelementptr inbounds %struct.kernel_siginfo, ptr %95, i32 0, i32 0, !dbg !7039
  %_sifields51 = getelementptr inbounds %struct.anon.24, ptr %96, i32 0, i32 3, !dbg !7039
  %_arch = getelementptr inbounds %struct.anon.35, ptr %_sifields51, i32 0, i32 2, !dbg !7039
  %97 = load i32, ptr %_arch, align 4, !dbg !7039
  %ssi_arch = getelementptr inbounds %struct.signalfd_siginfo, ptr %new, i32 0, i32 20, !dbg !7040
  store i32 %97, ptr %ssi_arch, align 8, !dbg !7041
  br label %sw.epilog, !dbg !7042

sw.epilog:                                        ; preds = %do.end, %sw.bb48, %sw.bb35, %sw.bb25, %sw.bb20, %sw.bb15, %sw.bb13, %sw.bb10, %sw.bb4, %sw.bb
  %98 = load ptr, ptr %uinfo.addr, align 8, !dbg !7043
  %call52 = call i64 @copy_to_user(ptr noundef %98, ptr noundef %new, i64 noundef 128) #17, !dbg !7045
  %tobool = icmp ne i64 %call52, 0, !dbg !7045
  br i1 %tobool, label %if.then, label %if.end, !dbg !7046

if.then:                                          ; preds = %sw.epilog
  store i32 -14, ptr %retval, align 4, !dbg !7047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7047

if.end:                                           ; preds = %sw.epilog
  store i32 128, ptr %retval, align 4, !dbg !7048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7048

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr %new) #18, !dbg !7049
  %99 = load i32, ptr %retval, align 4, !dbg !7049
  ret i32 %99, !dbg !7049
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7050 dso_local i32 @dequeue_signal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7054 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7057 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7065, metadata !DIExpression()), !dbg !7067
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7066, metadata !DIExpression()), !dbg !7068
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7069
  %1 = load i64, ptr %size.addr, align 8, !dbg !7070
  %conv = trunc i64 %1 to i32, !dbg !7070
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7071
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7072
  %3 = load i64, ptr %size.addr, align 8, !dbg !7072
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !7072
  ret void, !dbg !7073
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #2 align 16 !dbg !7074 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7078, metadata !DIExpression()), !dbg !7079
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7080
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #17, !dbg !7080
  %tobool = icmp ne i32 %call, 0, !dbg !7080
  %lnot = xor i1 %tobool, true, !dbg !7080
  %lnot1 = xor i1 %lnot, true, !dbg !7080
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7080
  %conv = sext i32 %lnot.ext to i64, !dbg !7080
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7080
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7080
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7082

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !7083
  br label %return, !dbg !7083

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !7084
  %call3 = call i32 @task_sigpending(ptr noundef %1) #17, !dbg !7085
  store i32 %call3, ptr %retval, align 4, !dbg !7086
  br label %return, !dbg !7086

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7087
  ret i32 %2, !dbg !7087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7088 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7089 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !7090 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7096, metadata !DIExpression()), !dbg !7098
  ret i1 true, !dbg !7099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !7100 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7105, metadata !DIExpression()), !dbg !7108
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7106, metadata !DIExpression()), !dbg !7109
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7107, metadata !DIExpression()), !dbg !7110
  ret void, !dbg !7111
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #2 align 16 !dbg !7112 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !7116, metadata !DIExpression()), !dbg !7118
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !7117, metadata !DIExpression()), !dbg !7119
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !7120
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !7120
  %1 = load i32, ptr %flag.addr, align 4, !dbg !7121
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #17, !dbg !7122
  ret i32 %call, !dbg !7123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #2 align 16 !dbg !7124 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7126, metadata !DIExpression()), !dbg !7127
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7128
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #17, !dbg !7128
  %tobool = icmp ne i32 %call, 0, !dbg !7128
  %lnot = xor i1 %tobool, true, !dbg !7128
  %lnot1 = xor i1 %lnot, true, !dbg !7128
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7128
  %conv = sext i32 %lnot.ext to i64, !dbg !7128
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7128
  %conv2 = trunc i64 %expval to i32, !dbg !7128
  ret i32 %conv2, !dbg !7129
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #2 align 16 !dbg !7130 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !7135, metadata !DIExpression()), !dbg !7137
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !7136, metadata !DIExpression()), !dbg !7138
  %0 = load i32, ptr %flag.addr, align 4, !dbg !7139
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7139
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7139

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !7139
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !7139
  %3 = ptrtoint ptr %flags to i64, !dbg !7139
  %cmp = icmp ne i64 %3, 0, !dbg !7139
  %conv = zext i1 %cmp to i32, !dbg !7139
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7139
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7139

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !7139
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !7139
  %6 = ptrtoint ptr %flags2 to i64, !dbg !7139
  %cmp3 = icmp ne i64 %6, 0, !dbg !7139
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !7139

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !7139
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !7139
  %8 = load i64, ptr %flags6, align 8, !dbg !7139
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7139
  br i1 %9, label %cond.true, label %cond.false, !dbg !7139

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !7139
  %conv7 = sext i32 %10 to i64, !dbg !7139
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !7139
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !7139
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #17, !dbg !7139
  %conv9 = zext i1 %call to i32, !dbg !7139
  br label %cond.end, !dbg !7139

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !7139
  %conv10 = sext i32 %12 to i64, !dbg !7139
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !7139
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !7139
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #17, !dbg !7139
  %conv13 = zext i1 %call12 to i32, !dbg !7139
  br label %cond.end, !dbg !7139

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !7139
  ret i32 %cond, !dbg !7140
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7141 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7149, metadata !DIExpression()), !dbg !7154
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7150, metadata !DIExpression()), !dbg !7155
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !7156
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7151, metadata !DIExpression()), !dbg !7157
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7158
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7159
  %div = udiv i64 %1, 64, !dbg !7159
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7160
  store ptr %add.ptr, ptr %p, align 8, !dbg !7157
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7161
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7152, metadata !DIExpression()), !dbg !7162
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7163
  %rem = urem i64 %2, 64, !dbg !7163
  %shl = shl i64 1, %rem, !dbg !7163
  store i64 %shl, ptr %mask, align 8, !dbg !7162
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !7164
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7153, metadata !DIExpression()), !dbg !7165
  %3 = load ptr, ptr %p, align 8, !dbg !7166
  %4 = load i64, ptr %3, align 8, !dbg !7167
  store i64 %4, ptr %val, align 8, !dbg !7165
  %5 = load i64, ptr %val, align 8, !dbg !7168
  %6 = load i64, ptr %mask, align 8, !dbg !7169
  %and = and i64 %5, %6, !dbg !7170
  %tobool = icmp ne i64 %and, 0, !dbg !7171
  %lnot = xor i1 %tobool, true, !dbg !7171
  %lnot1 = xor i1 %lnot, true, !dbg !7172
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !7173
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7173
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !7173
  ret i1 %lnot1, !dbg !7174
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7175 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7178, metadata !DIExpression()), !dbg !7180
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7182
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7183
  %div = udiv i64 %1, 64, !dbg !7183
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7184
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7185
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7186
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7187
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7188
  ret i1 %call, !dbg !7189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !7190 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7192, metadata !DIExpression()), !dbg !7194
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7193, metadata !DIExpression()), !dbg !7195
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7196
  %1 = load i64, ptr %size.addr, align 8, !dbg !7197
  %conv = trunc i64 %1 to i32, !dbg !7197
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7198
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7199
  %3 = load i64, ptr %size.addr, align 8, !dbg !7199
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7199
  ret void, !dbg !7200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7201 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7204, metadata !DIExpression()), !dbg !7206
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7205, metadata !DIExpression()), !dbg !7207
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7208
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7209
  br i1 %1, label %cond.true, label %cond.false, !dbg !7209

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7210
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7211
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7212
  %conv = zext i1 %call to i32, !dbg !7212
  br label %cond.end, !dbg !7209

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7213
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7214
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7215
  %conv2 = zext i1 %call1 to i32, !dbg !7215
  br label %cond.end, !dbg !7209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7209
  %tobool = icmp ne i32 %cond, 0, !dbg !7209
  ret i1 %tobool, !dbg !7216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !7217 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7219, metadata !DIExpression()), !dbg !7221
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7220, metadata !DIExpression()), !dbg !7222
  ret i1 true, !dbg !7223
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7224 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7228, metadata !DIExpression()), !dbg !7230
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7229, metadata !DIExpression()), !dbg !7231
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7232
  %and = and i64 %0, 63, !dbg !7233
  %shl = shl i64 1, %and, !dbg !7234
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7235
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7236
  %shr = ashr i64 %2, 6, !dbg !7237
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7235
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7235
  %and1 = and i64 %shl, %3, !dbg !7238
  %cmp = icmp ne i64 %and1, 0, !dbg !7239
  ret i1 %cmp, !dbg !7240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !7241 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7243, metadata !DIExpression()), !dbg !7246
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7244, metadata !DIExpression()), !dbg !7247
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !7248
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7245, metadata !DIExpression()), !dbg !7249
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7250
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7251
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !7252, !srcloc !7253
  %3 = icmp ult i8 %2, 2, !dbg !7252
  call void @llvm.assume(i1 %3), !dbg !7252
  store i8 %2, ptr %oldbit, align 1, !dbg !7252
  %4 = load i8, ptr %oldbit, align 1, !dbg !7254, !range !6249, !noundef !807
  %tobool = trunc i8 %4 to i1, !dbg !7254
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !7255
  ret i1 %tobool, !dbg !7256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7257 dso_local i32 @siginfo_layout(i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !7260 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7262, metadata !DIExpression()), !dbg !7265
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7263, metadata !DIExpression()), !dbg !7266
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7264, metadata !DIExpression()), !dbg !7267
  %0 = load ptr, ptr %from.addr, align 8, !dbg !7268
  %1 = load i64, ptr %n.addr, align 8, !dbg !7270
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !7271
  br i1 %call, label %if.then, label %if.end, !dbg !7272

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7273
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7274
  %4 = load i64, ptr %n.addr, align 8, !dbg !7275
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !7276
  store i64 %call1, ptr %n.addr, align 8, !dbg !7277
  br label %if.end, !dbg !7278

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7279
  ret i64 %5, !dbg !7280
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7281 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #2 align 16 !dbg !7282 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !7286, metadata !DIExpression()), !dbg !7289
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !7287, metadata !DIExpression()), !dbg !7290
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7288, metadata !DIExpression()), !dbg !7291
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7292
  %tobool = icmp ne ptr %0, null, !dbg !7292
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7294

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !7295
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !7296
  %2 = load ptr, ptr %_qproc, align 8, !dbg !7296
  %tobool1 = icmp ne ptr %2, null, !dbg !7295
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !7297

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !7298
  %tobool3 = icmp ne ptr %3, null, !dbg !7298
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7299

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7300
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !7302
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !7302
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !7303
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !7304
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7305
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !7300
  br label %do.body, !dbg !7306

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !7307

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !7309

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !7307, !srcloc !7311
  br label %do.end6, !dbg !7307

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !7312

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !7313
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7314 dso_local i32 @next_signal(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7318 dso_local void @render_sigset_t(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #2 align 16 !dbg !7321 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7325, metadata !DIExpression()), !dbg !7326
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !7327
  %0 = load i64, ptr %v.addr, align 8, !dbg !7328
  %and = and i64 %0, -4, !dbg !7329
  %1 = inttoptr i64 %and to ptr, !dbg !7330
  store ptr %1, ptr %file, align 8, !dbg !7327
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !7327
  %2 = load i64, ptr %v.addr, align 8, !dbg !7331
  %and1 = and i64 %2, 3, !dbg !7332
  %conv = trunc i64 %and1 to i32, !dbg !7331
  store i32 %conv, ptr %flags, align 8, !dbg !7327
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7333
  ret { ptr, i32 } %3, !dbg !7333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7334 dso_local i64 @__fdget(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7337 dso_local void @fput(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7338 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7343 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_signalfd(i32 noundef %ufd, ptr noundef %user_mask, i64 noundef %sizemask) #2 align 16 !dbg !7344 {
entry:
  %retval = alloca i64, align 8
  %ufd.addr = alloca i32, align 4
  %user_mask.addr = alloca ptr, align 8
  %sizemask.addr = alloca i64, align 8
  %mask = alloca %struct.sigset_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !7348, metadata !DIExpression()), !dbg !7352
  store ptr %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !7349, metadata !DIExpression()), !dbg !7352
  store i64 %sizemask, ptr %sizemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sizemask.addr, metadata !7350, metadata !DIExpression()), !dbg !7352
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7353
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7351, metadata !DIExpression()), !dbg !7354
  %0 = load i64, ptr %sizemask.addr, align 8, !dbg !7355
  %cmp = icmp ne i64 %0, 8, !dbg !7357
  br i1 %cmp, label %if.then, label %if.end, !dbg !7358

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7359

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %user_mask.addr, align 8, !dbg !7360
  %call = call i64 @copy_from_user(ptr noundef %mask, ptr noundef %1, i64 noundef 8) #17, !dbg !7362
  %tobool = icmp ne i64 %call, 0, !dbg !7362
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !7363

if.then1:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !7364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7364

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %ufd.addr, align 4, !dbg !7365
  %call3 = call i32 @do_signalfd4(i32 noundef %2, ptr noundef %mask, i32 noundef 0) #17, !dbg !7366
  %conv = sext i32 %call3 to i64, !dbg !7366
  store i64 %conv, ptr %retval, align 8, !dbg !7367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7367

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7368
  %3 = load i64, ptr %retval, align 8, !dbg !7368
  ret i64 %3, !dbg !7368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_signalfd4(i32 noundef %ufd, ptr noundef %user_mask, i32 noundef %sigsetsize, i32 noundef %flags) #2 align 16 !dbg !7369 {
entry:
  %ufd.addr = alloca i32, align 4
  %user_mask.addr = alloca ptr, align 8
  %sigsetsize.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !7373, metadata !DIExpression()), !dbg !7377
  store ptr %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !7374, metadata !DIExpression()), !dbg !7377
  store i32 %sigsetsize, ptr %sigsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sigsetsize.addr, metadata !7375, metadata !DIExpression()), !dbg !7377
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7376, metadata !DIExpression()), !dbg !7377
  %0 = load i32, ptr %ufd.addr, align 4, !dbg !7378
  %1 = load ptr, ptr %user_mask.addr, align 8, !dbg !7379
  %2 = load i32, ptr %sigsetsize.addr, align 4, !dbg !7380
  %3 = load i32, ptr %flags.addr, align 4, !dbg !7381
  %call = call i64 @do_compat_signalfd4(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !dbg !7382
  ret i64 %call, !dbg !7383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_compat_signalfd4(i32 noundef %ufd, ptr noundef %user_mask, i32 noundef %sigsetsize, i32 noundef %flags) #0 align 16 !dbg !7384 {
entry:
  %retval = alloca i64, align 8
  %ufd.addr = alloca i32, align 4
  %user_mask.addr = alloca ptr, align 8
  %sigsetsize.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %mask = alloca %struct.sigset_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !7386, metadata !DIExpression()), !dbg !7391
  store ptr %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !7387, metadata !DIExpression()), !dbg !7392
  store i32 %sigsetsize, ptr %sigsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sigsetsize.addr, metadata !7388, metadata !DIExpression()), !dbg !7393
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7389, metadata !DIExpression()), !dbg !7394
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7395
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7390, metadata !DIExpression()), !dbg !7396
  %0 = load i32, ptr %sigsetsize.addr, align 4, !dbg !7397
  %conv = zext i32 %0 to i64, !dbg !7397
  %cmp = icmp ne i64 %conv, 8, !dbg !7399
  br i1 %cmp, label %if.then, label %if.end, !dbg !7400

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7401

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %user_mask.addr, align 8, !dbg !7402
  %call = call i32 @get_compat_sigset(ptr noundef %mask, ptr noundef %1) #17, !dbg !7404
  %tobool = icmp ne i32 %call, 0, !dbg !7404
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !7405

if.then2:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !7406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7406

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %ufd.addr, align 4, !dbg !7407
  %3 = load i32, ptr %flags.addr, align 4, !dbg !7408
  %call4 = call i32 @do_signalfd4(i32 noundef %2, ptr noundef %mask, i32 noundef %3) #17, !dbg !7409
  %conv5 = sext i32 %call4 to i64, !dbg !7409
  store i64 %conv5, ptr %retval, align 8, !dbg !7410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7410

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7411
  %4 = load i64, ptr %retval, align 8, !dbg !7411
  ret i64 %4, !dbg !7411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7412 dso_local i32 @get_compat_sigset(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_signalfd(i32 noundef %ufd, ptr noundef %user_mask, i32 noundef %sigsetsize) #2 align 16 !dbg !7415 {
entry:
  %ufd.addr = alloca i32, align 4
  %user_mask.addr = alloca ptr, align 8
  %sigsetsize.addr = alloca i32, align 4
  store i32 %ufd, ptr %ufd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ufd.addr, metadata !7419, metadata !DIExpression()), !dbg !7422
  store ptr %user_mask, ptr %user_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask.addr, metadata !7420, metadata !DIExpression()), !dbg !7422
  store i32 %sigsetsize, ptr %sigsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sigsetsize.addr, metadata !7421, metadata !DIExpression()), !dbg !7422
  %0 = load i32, ptr %ufd.addr, align 4, !dbg !7423
  %1 = load ptr, ptr %user_mask.addr, align 8, !dbg !7424
  %2 = load i32, ptr %sigsetsize.addr, align 4, !dbg !7425
  %call = call i64 @do_compat_signalfd4(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #17, !dbg !7426
  ret i64 %call, !dbg !7427
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940}
!llvm.ident = !{!5941}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 278, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "fs/signalfd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "769a5b431384d2f7e3fe39fd30873ad1")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 11)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "signalfd_fops", scope: !15, file: !9, line: 243, type: !4342, isLocal: true, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C11, file: !9, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.signalfd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/signalfd\22 -D KBUILD_BASENAME=\22signalfd\22 -D KBUILD_MODNAME=\22signalfd\22 -D __KBUILD_MODNAME=kmod_signalfd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/signalfd.ll fs/signalfd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !303, globals: !5924, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17, !23, !30, !35, !40, !135, !141, !157, !165, !172, !178, !185, !193, !200, !206, !215, !220, !225, !231, !240, !251, !257, !265, !271, !278, !288}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !24, line: 312, baseType: !19, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !19, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !19, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !41, line: 147, baseType: !19, size: 32, elements: !132)
!41 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !41, line: 135, size: 512, elements: !43)
!43 = !{!44, !47, !49, !51, !55, !56, !72, !130, !131}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !42, file: !41, line: 136, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !41, line: 137, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !42, file: !41, line: 138, baseType: !50, size: 32, offset: 128)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !42, file: !41, line: 139, baseType: !52, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !53, line: 24, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 150, baseType: !40, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !42, file: !41, line: 151, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !41, line: 64, baseType: !59)
!59 = !DISubroutineType(types: !60)
!60 = !{!50, !61, !50, !48, !62, !68}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !65, line: 16, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !53, line: 52, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !65, line: 88, baseType: !71)
!71 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !42, file: !41, line: 152, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !41, line: 117, size: 256, elements: !75)
!75 = !{!76, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !41, line: 118, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !53, line: 174, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 172, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !78, file: !53, line: 173, baseType: !50, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !74, file: !41, line: 119, baseType: !82, size: 192, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !83, line: 37, size: 192, elements: !85)
!85 = !{!86, !124}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !83, line: 38, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 29, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 17, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 18, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 18, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 19, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !96, line: 14, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !96, line: 15, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !100, line: 44, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !100, line: 14, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !100, line: 15, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !100, line: 15, size: 32, elements: !105)
!105 = !{!106, !107, !117}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !100, line: 16, baseType: !77, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 24, baseType: !108, size: 16)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 24, size: 16, elements: !109)
!109 = !{!110, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !108, file: !100, line: 25, baseType: !111, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !112, line: 17, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !115)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !108, file: !100, line: 26, baseType: !111, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 28, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 28, size: 32, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !118, file: !100, line: 29, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !112, line: 19, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !54)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !100, line: 30, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !84, file: !83, line: 39, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 190, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !53, line: 191, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !53, line: 191, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !42, file: !41, line: 153, baseType: !48, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !42, file: !41, line: 154, baseType: !48, size: 64, offset: 448)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!134 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !136, line: 16, baseType: !19, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "TT_NONE", value: 0)
!139 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!140 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !142, line: 1325, baseType: !19, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!144 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!145 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!146 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!147 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!148 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!149 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!150 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!151 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!152 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!153 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!154 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!155 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!156 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !158, line: 68, baseType: !19, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!161 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!162 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!163 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!164 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !166, line: 51, baseType: !19, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!169 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!170 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!171 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !173, line: 45, baseType: !19, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!176 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!177 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !179, line: 487, baseType: !19, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!182 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!183 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!184 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !186, line: 620, baseType: !19, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!189 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!190 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!191 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!192 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !186, line: 597, baseType: !50, size: 32, elements: !194)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!196 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!197 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!198 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!199 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !201, line: 26, baseType: !19, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!204 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!205 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !179, line: 547, baseType: !19, size: 32, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214}
!208 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!209 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!210 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!211 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!212 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!213 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!214 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !179, line: 564, baseType: !19, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!218 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!219 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !179, line: 577, baseType: !19, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!223 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!224 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !179, line: 503, baseType: !19, size: 32, elements: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!229 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!230 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !232, line: 593, baseType: !50, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!235 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!236 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !241, line: 253, baseType: !19, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250}
!243 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!244 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!245 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!246 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!247 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!248 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!249 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!250 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !241, line: 158, baseType: !19, size: 32, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!254 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!255 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!256 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !258, line: 9, baseType: !19, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!261 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!262 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!263 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!264 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !266, line: 54, baseType: !19, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "USRQUOTA", value: 0)
!269 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!270 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !272, line: 15, baseType: !19, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!275 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!276 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!277 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !279, line: 364, baseType: !19, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!280 = !{!281, !282, !283, !284, !285, !286, !287}
!281 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!282 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!283 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!284 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!285 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!286 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!287 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "siginfo_layout", file: !289, line: 38, baseType: !19, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!291 = !DIEnumerator(name: "SIL_KILL", value: 0)
!292 = !DIEnumerator(name: "SIL_TIMER", value: 1)
!293 = !DIEnumerator(name: "SIL_POLL", value: 2)
!294 = !DIEnumerator(name: "SIL_FAULT", value: 3)
!295 = !DIEnumerator(name: "SIL_FAULT_TRAPNO", value: 4)
!296 = !DIEnumerator(name: "SIL_FAULT_MCEERR", value: 5)
!297 = !DIEnumerator(name: "SIL_FAULT_BNDERR", value: 6)
!298 = !DIEnumerator(name: "SIL_FAULT_PKUERR", value: 7)
!299 = !DIEnumerator(name: "SIL_FAULT_PERF_EVENT", value: 8)
!300 = !DIEnumerator(name: "SIL_CHLD", value: 9)
!301 = !DIEnumerator(name: "SIL_RT", value: 10)
!302 = !DIEnumerator(name: "SIL_SYS", value: 11)
!303 = !{!19, !304, !50, !307, !63, !316, !48, !67, !317, !348, !350, !351, !352, !354, !355, !356, !358, !5914, !487, !5915, !5923}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !309, line: 25, baseType: !310)
!309 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 23, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !310, file: !309, line: 24, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 1)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 154, baseType: !19)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signalfd_siginfo", file: !319, line: 20, size: 1024, elements: !320)
!319 = !DIFile(filename: "./include/uapi/linux/signalfd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "987c0f66ac1df639a9c05c7b8acc69ad")
!320 = !{!321, !323, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_signo", scope: !318, file: !319, line: 21, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !19)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_errno", scope: !318, file: !319, line: 22, baseType: !324, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !50)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_code", scope: !318, file: !319, line: 23, baseType: !324, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_pid", scope: !318, file: !319, line: 24, baseType: !322, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_uid", scope: !318, file: !319, line: 25, baseType: !322, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_fd", scope: !318, file: !319, line: 26, baseType: !324, size: 32, offset: 160)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_tid", scope: !318, file: !319, line: 27, baseType: !322, size: 32, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_band", scope: !318, file: !319, line: 28, baseType: !322, size: 32, offset: 224)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_overrun", scope: !318, file: !319, line: 29, baseType: !322, size: 32, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_trapno", scope: !318, file: !319, line: 30, baseType: !322, size: 32, offset: 288)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_status", scope: !318, file: !319, line: 31, baseType: !324, size: 32, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_int", scope: !318, file: !319, line: 32, baseType: !324, size: 32, offset: 352)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_ptr", scope: !318, file: !319, line: 33, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !337)
!337 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_utime", scope: !318, file: !319, line: 34, baseType: !336, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_stime", scope: !318, file: !319, line: 35, baseType: !336, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_addr", scope: !318, file: !319, line: 36, baseType: !336, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_addr_lsb", scope: !318, file: !319, line: 37, baseType: !122, size: 16, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !318, file: !319, line: 38, baseType: !122, size: 16, offset: 656)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_syscall", scope: !318, file: !319, line: 39, baseType: !324, size: 32, offset: 672)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_call_addr", scope: !318, file: !319, line: 40, baseType: !336, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ssi_arch", scope: !318, file: !319, line: 41, baseType: !322, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !318, file: !319, line: 52, baseType: !347, size: 224, offset: 800)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 224, elements: !5)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 42, baseType: !67)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!354 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!355 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !357, line: 59, baseType: !19)
!357 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !360)
!360 = !{!361, !380, !381, !383, !392, !405, !406, !407, !5894, !5895, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !31, line: 995, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !31, line: 995, size: 128, elements: !363)
!363 = !{!364, !370, !379}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !362, file: !31, line: 996, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !366, line: 60, size: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !366, line: 61, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !362, file: !31, line: 997, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !53, line: 232, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !53, line: 233, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !53, line: 234, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !362, file: !31, line: 998, baseType: !19, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !359, file: !31, line: 1005, baseType: !87, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !359, file: !31, line: 1006, baseType: !382, size: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !53, line: 156, baseType: !19)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !359, file: !31, line: 1007, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !385, line: 13, baseType: !386)
!385 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !53, line: 181, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 179, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !387, file: !53, line: 180, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !112, line: 22, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !71)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !359, file: !31, line: 1008, baseType: !393, size: 256, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !394, line: 66, size: 256, elements: !395)
!394 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!395 = !{!396, !397, !399, !404}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 67, baseType: !384, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 68, baseType: !398, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 23, baseType: !95)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !393, file: !394, line: 70, baseType: !400, size: 32, offset: 96)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !401, line: 15, size: 32, elements: !402)
!401 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !400, file: !401, line: 20, baseType: !77, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 72, baseType: !125, size: 128, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !359, file: !31, line: 1009, baseType: !69, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !359, file: !31, line: 1010, baseType: !19, size: 32, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !359, file: !31, line: 1011, baseType: !408, size: 256, offset: 640)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !409)
!409 = !{!410, !433, !5890, !5891, !5892, !5893}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !408, file: !31, line: 949, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !412, line: 34, baseType: !413)
!412 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 25, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !413, file: !412, line: 26, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !417, line: 27, baseType: !418)
!417 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !417, line: 13, size: 64, elements: !419)
!419 = !{!420, !432}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !417, line: 14, baseType: !421, size: 32)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !417, line: 14, size: 32, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !421, file: !417, line: 15, baseType: !77, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !417, line: 16, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !417, line: 16, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !425, file: !417, line: 18, baseType: !111, size: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !425, file: !417, line: 19, baseType: !429, size: 24, offset: 8)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 3)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !418, file: !417, line: 26, baseType: !99, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !408, file: !31, line: 950, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !258, line: 59, size: 768, elements: !436)
!436 = !{!437, !443, !444, !445, !458, !459, !460, !461}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !435, file: !258, line: 61, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !439, line: 113, baseType: !440)
!439 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !439, line: 111, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !440, file: !439, line: 112, baseType: !77, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !435, file: !258, line: 62, baseType: !19, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !435, file: !258, line: 63, baseType: !87, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !435, file: !258, line: 65, baseType: !446, size: 256, offset: 128)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 256, elements: !456)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !53, line: 194, size: 64, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !447, file: !53, line: 195, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !53, line: 198, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !53, line: 199, baseType: !450, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !451, file: !53, line: 199, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!456 = !{!457}
!457 = !DISubrange(count: 4)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !435, file: !258, line: 66, baseType: !447, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !435, file: !258, line: 68, baseType: !82, size: 192, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !435, file: !258, line: 69, baseType: !371, size: 128, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !435, file: !258, line: 70, baseType: !462, offset: 768)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, elements: !1234)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !258, line: 54, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !463, file: !258, line: 55, baseType: !50, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !463, file: !258, line: 56, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !469, line: 26, size: 1152, elements: !470)
!469 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!470 = !{!471, !484, !485, !486, !5879, !5880, !5881, !5882, !5885, !5886, !5887, !5888, !5889}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !468, file: !469, line: 27, baseType: !472, size: 192)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !473, line: 19, size: 192, elements: !474)
!473 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!474 = !{!475, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !472, file: !473, line: 20, baseType: !476, size: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !477, line: 296, size: 128, elements: !478)
!477 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !476, file: !477, line: 297, baseType: !87, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !476, file: !477, line: 299, baseType: !316, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !476, file: !477, line: 300, baseType: !48, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !472, file: !473, line: 21, baseType: !19, size: 32, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !472, file: !473, line: 22, baseType: !19, size: 32, offset: 160)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !468, file: !469, line: 28, baseType: !371, size: 128, align: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !468, file: !469, line: 29, baseType: !19, size: 32, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !468, file: !469, line: 30, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !489, line: 746, size: 58368, elements: !490)
!489 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!490 = !{!491, !500, !501, !502, !503, !504, !505, !506, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !580, !591, !691, !695, !698, !729, !730, !731, !732, !740, !742, !743, !744, !745, !746, !747, !758, !759, !762, !763, !764, !765, !766, !767, !768, !769, !776, !777, !784, !785, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1320, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1335, !1336, !1337, !1338, !1340, !1341, !1342, !1343, !1344, !1345, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1369, !1375, !1445, !1446, !1447, !1448, !1452, !1455, !1462, !1467, !1470, !1473, !1476, !5149, !5342, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5380, !5381, !5382, !5391, !5399, !5400, !5401, !5402, !5403, !5408, !5409, !5410, !5413, !5414, !5417, !5420, !5423, !5431, !5434, !5435, !5521, !5522, !5523, !5524, !5525, !5531, !5532, !5533, !5534, !5535, !5536, !5539, !5553, !5554, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5597, !5598, !5604, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5616, !5688, !5690, !5691, !5692, !5693, !5694, !5695, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5712, !5713, !5714}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !488, file: !489, line: 752, baseType: !492, size: 192)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !493, line: 56, size: 192, elements: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!494 = !{!495, !496, !497, !499}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !493, line: 57, baseType: !67, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !492, file: !493, line: 58, baseType: !67, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !492, file: !493, line: 59, baseType: !498, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !112, line: 21, baseType: !322)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !492, file: !493, line: 61, baseType: !498, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !488, file: !489, line: 754, baseType: !19, size: 32, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !488, file: !489, line: 767, baseType: !48, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !488, file: !489, line: 768, baseType: !438, size: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !489, line: 770, baseType: !19, size: 32, offset: 352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !488, file: !489, line: 771, baseType: !19, size: 32, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !488, file: !489, line: 774, baseType: !50, size: 32, offset: 416)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !488, file: !489, line: 775, baseType: !507, size: 128, offset: 448)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !508, line: 58, size: 128, elements: !509)
!508 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!509 = !{!510, !511, !516, !517}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !507, file: !508, line: 59, baseType: !365, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !508, line: 60, baseType: !512, size: 32, offset: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !508, line: 60, size: 32, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !512, file: !508, line: 61, baseType: !19, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !512, file: !508, line: 62, baseType: !77, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !507, file: !508, line: 65, baseType: !121, size: 16, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !507, file: !508, line: 65, baseType: !121, size: 16, offset: 112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !488, file: !489, line: 776, baseType: !19, size: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !488, file: !489, line: 777, baseType: !67, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !488, file: !489, line: 778, baseType: !487, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !488, file: !489, line: 787, baseType: !50, size: 32, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !488, file: !489, line: 788, baseType: !50, size: 32, offset: 800)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !488, file: !489, line: 790, baseType: !50, size: 32, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !488, file: !489, line: 792, baseType: !50, size: 32, offset: 864)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !488, file: !489, line: 793, baseType: !50, size: 32, offset: 896)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !488, file: !489, line: 794, baseType: !50, size: 32, offset: 928)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !488, file: !489, line: 795, baseType: !19, size: 32, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !488, file: !489, line: 797, baseType: !529, size: 2048, offset: 1024)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !489, line: 551, size: 2048, elements: !530)
!530 = !{!531, !536, !544, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !559, !562, !563, !564}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !529, file: !489, line: 553, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !489, line: 411, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !532, file: !489, line: 412, baseType: !67, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !532, file: !489, line: 413, baseType: !498, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !529, file: !489, line: 554, baseType: !537, size: 192, align: 64, offset: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !538, line: 5, size: 192, align: 64, elements: !539)
!538 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!539 = !{!540, !541, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !537, file: !538, line: 6, baseType: !67, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !537, file: !538, line: 7, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !537, file: !538, line: 8, baseType: !542, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !529, file: !489, line: 555, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !112, line: 23, baseType: !336)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !529, file: !489, line: 556, baseType: !545, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !529, file: !489, line: 558, baseType: !125, size: 128, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !529, file: !489, line: 559, baseType: !19, size: 32, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !529, file: !489, line: 561, baseType: !545, size: 64, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !529, file: !489, line: 562, baseType: !545, size: 64, offset: 704)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !529, file: !489, line: 563, baseType: !545, size: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !529, file: !489, line: 564, baseType: !545, size: 64, offset: 832)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !529, file: !489, line: 565, baseType: !390, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !529, file: !489, line: 566, baseType: !545, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !529, file: !489, line: 568, baseType: !545, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !529, file: !489, line: 571, baseType: !50, size: 32, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !529, file: !489, line: 572, baseType: !558, size: 64, offset: 1152)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !529, file: !489, line: 574, baseType: !560, size: 64, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !489, line: 49, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !529, file: !489, line: 576, baseType: !560, size: 64, offset: 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !529, file: !489, line: 578, baseType: !67, size: 64, offset: 1344)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !529, file: !489, line: 588, baseType: !565, size: 512, align: 512, offset: 1536)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !489, line: 497, size: 512, align: 512, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !565, file: !489, line: 498, baseType: !545, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !565, file: !489, line: 499, baseType: !545, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !565, file: !489, line: 500, baseType: !545, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !565, file: !489, line: 501, baseType: !498, size: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !565, file: !489, line: 502, baseType: !498, size: 32, offset: 224)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !565, file: !489, line: 503, baseType: !67, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !565, file: !489, line: 504, baseType: !67, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !565, file: !489, line: 505, baseType: !67, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !565, file: !489, line: 506, baseType: !576, size: 64, align: 64, offset: 448)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !489, line: 445, size: 64, align: 64, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !576, file: !489, line: 446, baseType: !19, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !576, file: !489, line: 447, baseType: !19, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !488, file: !489, line: 798, baseType: !581, size: 384, offset: 3072)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !489, line: 592, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !581, file: !489, line: 593, baseType: !125, size: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !581, file: !489, line: 594, baseType: !67, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !581, file: !489, line: 595, baseType: !67, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !581, file: !489, line: 596, baseType: !19, size: 32, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !581, file: !489, line: 597, baseType: !54, size: 16, offset: 288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !581, file: !489, line: 598, baseType: !54, size: 16, offset: 304)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !581, file: !489, line: 600, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !488, file: !489, line: 799, baseType: !592, size: 1792, offset: 3456)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !489, line: 610, size: 1792, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !688, !689}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !592, file: !489, line: 611, baseType: !537, size: 192, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !592, file: !489, line: 618, baseType: !545, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !592, file: !489, line: 619, baseType: !545, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !592, file: !489, line: 620, baseType: !545, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !592, file: !489, line: 621, baseType: !545, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !592, file: !489, line: 622, baseType: !545, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !592, file: !489, line: 629, baseType: !390, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !592, file: !489, line: 630, baseType: !545, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !489, line: 631, baseType: !19, size: 32, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !592, file: !489, line: 653, baseType: !19, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !592, file: !489, line: 654, baseType: !19, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !592, file: !489, line: 655, baseType: !19, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !592, file: !489, line: 656, baseType: !19, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !592, file: !489, line: 662, baseType: !608, size: 512, offset: 704)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !609)
!609 = !{!610, !618, !619, !624, !684, !685, !686, !687}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !36, line: 119, baseType: !611, size: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !612, line: 9, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !612, line: 10, baseType: !537, size: 192, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !611, file: !612, line: 11, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !617, line: 29, baseType: !390)
!617 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !608, file: !36, line: 120, baseType: !616, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !608, file: !36, line: 121, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!35, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !608, file: !36, line: 122, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !627)
!627 = !{!628, !653, !654, !657, !667, !668, !679, !683}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !626, file: !36, line: 160, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !630, file: !36, line: 216, baseType: !398, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !630, file: !36, line: 217, baseType: !19, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !630, file: !36, line: 218, baseType: !19, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !630, file: !36, line: 219, baseType: !19, size: 32, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !630, file: !36, line: 220, baseType: !19, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !630, file: !36, line: 221, baseType: !19, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !630, file: !36, line: 222, baseType: !19, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !630, file: !36, line: 223, baseType: !19, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !630, file: !36, line: 224, baseType: !19, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !630, file: !36, line: 226, baseType: !19, size: 32, offset: 160)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !630, file: !36, line: 227, baseType: !54, size: 16, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !630, file: !36, line: 228, baseType: !54, size: 16, offset: 208)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !630, file: !36, line: 229, baseType: !19, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !630, file: !36, line: 235, baseType: !616, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !630, file: !36, line: 236, baseType: !623, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !630, file: !36, line: 237, baseType: !616, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !630, file: !36, line: 238, baseType: !623, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !630, file: !36, line: 239, baseType: !650, size: 4096, align: 512, offset: 512)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 4096, align: 512, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 8)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !626, file: !36, line: 161, baseType: !19, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !626, file: !36, line: 162, baseType: !655, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !53, line: 32, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !65, line: 96, baseType: !50)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !626, file: !36, line: 163, baseType: !658, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !659, line: 274, baseType: !660)
!659 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !659, line: 274, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !660, file: !659, line: 274, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !659, line: 69, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !659, line: 64, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !664, file: !659, line: 65, baseType: !19, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !626, file: !36, line: 164, baseType: !623, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !626, file: !36, line: 165, baseType: !669, size: 128, offset: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !612, line: 14, size: 128, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !669, file: !612, line: 15, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !538, line: 26, size: 128, elements: !673)
!673 = !{!674, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !672, file: !538, line: 27, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !538, line: 12, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !675, file: !538, line: 13, baseType: !542, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !672, file: !538, line: 28, baseType: !542, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !626, file: !36, line: 166, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!616}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !626, file: !36, line: 167, baseType: !616, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !608, file: !36, line: 123, baseType: !111, size: 8, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !608, file: !36, line: 124, baseType: !111, size: 8, offset: 456)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !608, file: !36, line: 125, baseType: !111, size: 8, offset: 464)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !608, file: !36, line: 126, baseType: !111, size: 8, offset: 472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !592, file: !489, line: 671, baseType: !608, size: 512, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !592, file: !489, line: 679, baseType: !690, size: 64, offset: 1728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !488, file: !489, line: 800, baseType: !692, size: 64, offset: 5248)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !489, line: 800, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !488, file: !489, line: 809, baseType: !696, size: 64, offset: 5312)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !489, line: 70, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !488, file: !489, line: 825, baseType: !699, size: 2048, align: 512, offset: 5632)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !489, line: 509, size: 2048, align: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !699, file: !489, line: 511, baseType: !545, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !699, file: !489, line: 512, baseType: !545, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !699, file: !489, line: 513, baseType: !545, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !699, file: !489, line: 514, baseType: !545, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !699, file: !489, line: 515, baseType: !545, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !699, file: !489, line: 516, baseType: !545, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !699, file: !489, line: 518, baseType: !545, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !699, file: !489, line: 519, baseType: !545, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !699, file: !489, line: 520, baseType: !390, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !699, file: !489, line: 522, baseType: !545, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !699, file: !489, line: 523, baseType: !545, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !699, file: !489, line: 524, baseType: !390, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !699, file: !489, line: 526, baseType: !390, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !699, file: !489, line: 527, baseType: !545, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !699, file: !489, line: 529, baseType: !545, size: 64, offset: 896)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !699, file: !489, line: 530, baseType: !545, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !699, file: !489, line: 531, baseType: !545, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !699, file: !489, line: 532, baseType: !545, size: 64, offset: 1088)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !699, file: !489, line: 533, baseType: !545, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !699, file: !489, line: 535, baseType: !545, size: 64, offset: 1216)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !699, file: !489, line: 536, baseType: !545, size: 64, offset: 1280)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !699, file: !489, line: 537, baseType: !545, size: 64, offset: 1344)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !699, file: !489, line: 538, baseType: !545, size: 64, offset: 1408)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !699, file: !489, line: 539, baseType: !545, size: 64, offset: 1472)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !699, file: !489, line: 540, baseType: !545, size: 64, offset: 1536)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !699, file: !489, line: 541, baseType: !545, size: 64, offset: 1600)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !699, file: !489, line: 542, baseType: !545, size: 64, offset: 1664)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !699, file: !489, line: 543, baseType: !545, size: 64, offset: 1728)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !488, file: !489, line: 833, baseType: !19, size: 32, offset: 7680)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !488, file: !489, line: 836, baseType: !19, size: 32, offset: 7712)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !488, file: !489, line: 837, baseType: !50, size: 32, offset: 7744)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !488, file: !489, line: 838, baseType: !733, size: 64, offset: 7808)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !736, line: 19, baseType: !737)
!736 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !736, line: 19, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !737, file: !736, line: 19, baseType: !313, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !488, file: !489, line: 839, baseType: !741, size: 64, offset: 7872)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !488, file: !489, line: 840, baseType: !735, size: 64, offset: 7936)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !488, file: !489, line: 841, baseType: !48, size: 64, offset: 8000)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !488, file: !489, line: 843, baseType: !54, size: 16, offset: 8064)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !488, file: !489, line: 845, baseType: !54, size: 16, offset: 8080)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !488, file: !489, line: 848, baseType: !50, size: 32, offset: 8096)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !488, file: !489, line: 849, baseType: !748, size: 32, offset: 8128)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !489, line: 718, size: 32, elements: !749)
!749 = !{!750, !757}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !748, file: !489, line: 724, baseType: !751, size: 32)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !489, line: 719, size: 32, elements: !752)
!752 = !{!753, !754, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !751, file: !489, line: 720, baseType: !111, size: 8)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !751, file: !489, line: 721, baseType: !111, size: 8, offset: 8)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !751, file: !489, line: 722, baseType: !111, size: 8, offset: 16)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !751, file: !489, line: 723, baseType: !111, size: 8, offset: 24)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !748, file: !489, line: 725, baseType: !498, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !488, file: !489, line: 850, baseType: !125, size: 128, offset: 8192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !488, file: !489, line: 851, baseType: !760, size: 64, offset: 8320)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !489, line: 60, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !488, file: !489, line: 855, baseType: !67, size: 64, offset: 8384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !488, file: !489, line: 856, baseType: !111, size: 8, offset: 8448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !488, file: !489, line: 857, baseType: !111, size: 8, offset: 8456)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !488, file: !489, line: 858, baseType: !50, size: 32, offset: 8480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !488, file: !489, line: 859, baseType: !125, size: 128, offset: 8512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !488, file: !489, line: 860, baseType: !50, size: 32, offset: 8640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !488, file: !489, line: 861, baseType: !125, size: 128, offset: 8704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !488, file: !489, line: 873, baseType: !770, size: 256, offset: 8832)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !489, line: 376, size: 256, elements: !771)
!771 = !{!772, !773, !774, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !770, file: !489, line: 381, baseType: !67, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !770, file: !489, line: 384, baseType: !337, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !770, file: !489, line: 389, baseType: !337, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !770, file: !489, line: 392, baseType: !337, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !488, file: !489, line: 875, baseType: !125, size: 128, offset: 9088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !488, file: !489, line: 877, baseType: !778, size: 320, offset: 9216)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !779, line: 86, size: 320, elements: !780)
!779 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !778, file: !779, line: 87, baseType: !50, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !778, file: !779, line: 88, baseType: !125, size: 128, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !778, file: !779, line: 89, baseType: !125, size: 128, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !488, file: !489, line: 878, baseType: !537, size: 192, align: 64, offset: 9536)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !488, file: !489, line: 881, baseType: !786, size: 64, offset: 9728)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !142, line: 733, size: 10240, elements: !788)
!788 = !{!789, !1232}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !142, line: 734, baseType: !790, size: 10240)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !142, line: 734, size: 10240, elements: !791)
!791 = !{!792, !796, !810, !814, !815, !816, !817, !818, !819, !828, !829, !830, !836, !837, !838, !839, !840, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !877, !888, !891, !938, !939, !940, !943, !1218, !1219, !1222, !1223, !1224, !1230, !1231}
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !142, line: 739, baseType: !793, size: 512, align: 512)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !142, line: 739, size: 512, align: 512, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !793, file: !142, line: 747, baseType: !77, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !790, file: !142, line: 750, baseType: !797, size: 128, offset: 512)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !798, line: 218, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!799 = !{!800, !808, !809}
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !798, line: 219, baseType: !801, size: 32)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !798, line: 219, size: 32, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !801, file: !798, line: 220, baseType: !87, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !801, file: !798, line: 221, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !798, line: 197, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 197, elements: !807)
!807 = !{}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !797, file: !798, line: 223, baseType: !19, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !797, file: !798, line: 224, baseType: !48, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !790, file: !142, line: 752, baseType: !811, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!67, !358, !67, !67, !67, !67}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !790, file: !142, line: 756, baseType: !67, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !790, file: !142, line: 757, baseType: !67, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !790, file: !142, line: 760, baseType: !67, size: 64, offset: 832)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !790, file: !142, line: 761, baseType: !67, size: 64, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !790, file: !142, line: 763, baseType: !67, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !790, file: !142, line: 764, baseType: !820, size: 64, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !822, line: 299, baseType: !823)
!822 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !822, line: 299, size: 64, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !823, file: !822, line: 299, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !827, line: 18, baseType: !67)
!827 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!828 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !790, file: !142, line: 773, baseType: !77, size: 32, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !790, file: !142, line: 785, baseType: !77, size: 32, offset: 1120)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !790, file: !142, line: 795, baseType: !831, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !142, line: 726, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !832, file: !142, line: 727, baseType: !545, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !832, file: !142, line: 728, baseType: !50, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !790, file: !142, line: 801, baseType: !67, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !790, file: !142, line: 804, baseType: !384, size: 64, offset: 1280)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !790, file: !142, line: 806, baseType: !50, size: 32, offset: 1344)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !790, file: !142, line: 808, baseType: !87, size: 32, offset: 1376)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !790, file: !142, line: 823, baseType: !841, size: 320, offset: 1408)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !842, line: 48, size: 320, elements: !843)
!842 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!843 = !{!844, !845, !846, !847, !848}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !841, file: !842, line: 49, baseType: !384, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !841, file: !842, line: 55, baseType: !384, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !841, file: !842, line: 57, baseType: !400, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !841, file: !842, line: 59, baseType: !398, size: 32, offset: 160)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !841, file: !842, line: 60, baseType: !125, size: 128, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !790, file: !142, line: 825, baseType: !125, size: 128, offset: 1728)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !790, file: !142, line: 845, baseType: !50, size: 32, offset: 1856)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !790, file: !142, line: 849, baseType: !67, size: 64, offset: 1920)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !790, file: !142, line: 850, baseType: !67, size: 64, offset: 1984)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !790, file: !142, line: 852, baseType: !67, size: 64, offset: 2048)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !790, file: !142, line: 853, baseType: !67, size: 64, offset: 2112)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !790, file: !142, line: 854, baseType: !386, size: 64, offset: 2176)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !790, file: !142, line: 855, baseType: !67, size: 64, offset: 2240)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !790, file: !142, line: 856, baseType: !67, size: 64, offset: 2304)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !790, file: !142, line: 857, baseType: !67, size: 64, offset: 2368)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !790, file: !142, line: 858, baseType: !67, size: 64, offset: 2432)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !790, file: !142, line: 865, baseType: !663, size: 32, offset: 2496)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !790, file: !142, line: 867, baseType: !87, size: 32, offset: 2528)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !790, file: !142, line: 869, baseType: !67, size: 64, offset: 2560)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !790, file: !142, line: 869, baseType: !67, size: 64, offset: 2624)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !790, file: !142, line: 869, baseType: !67, size: 64, offset: 2688)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !790, file: !142, line: 869, baseType: !67, size: 64, offset: 2752)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !790, file: !142, line: 870, baseType: !67, size: 64, offset: 2816)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !790, file: !142, line: 870, baseType: !67, size: 64, offset: 2880)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !790, file: !142, line: 870, baseType: !67, size: 64, offset: 2944)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !790, file: !142, line: 871, baseType: !67, size: 64, offset: 3008)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !790, file: !142, line: 871, baseType: !67, size: 64, offset: 3072)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !790, file: !142, line: 871, baseType: !67, size: 64, offset: 3136)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !790, file: !142, line: 871, baseType: !67, size: 64, offset: 3200)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !790, file: !142, line: 873, baseType: !874, size: 3328, offset: 3264)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3328, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 52)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !790, file: !142, line: 875, baseType: !878, size: 1280, offset: 6592)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 1280, elements: !456)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !880, line: 22, size: 320, elements: !881)
!880 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!881 = !{!882, !883, !884, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !879, file: !880, line: 23, baseType: !398, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !879, file: !880, line: 24, baseType: !390, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !879, file: !880, line: 26, baseType: !125, size: 128, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !879, file: !880, line: 28, baseType: !886, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !112, line: 20, baseType: !324)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !790, file: !142, line: 877, baseType: !889, size: 64, offset: 7872)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !142, line: 877, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !790, file: !142, line: 880, baseType: !892, size: 1088, offset: 7936)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !893, line: 72, baseType: !894)
!893 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 23, size: 1088, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !903, !904, !905, !906, !933, !934, !935}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !894, file: !893, line: 28, baseType: !545, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !894, file: !893, line: 38, baseType: !386, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !894, file: !893, line: 40, baseType: !67, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !894, file: !893, line: 43, baseType: !841, size: 320, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !894, file: !893, line: 44, baseType: !901, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !893, line: 44, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !893, line: 48, baseType: !67, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !894, file: !893, line: 59, baseType: !393, size: 256, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !894, file: !893, line: 60, baseType: !48, size: 64, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !894, file: !893, line: 61, baseType: !907, size: 64, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !910, line: 13, size: 1216, elements: !911)
!910 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!911 = !{!912, !913, !914, !915, !916, !917, !918, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !909, file: !910, line: 14, baseType: !48, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !909, file: !910, line: 15, baseType: !67, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !909, file: !910, line: 17, baseType: !67, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !909, file: !910, line: 17, baseType: !67, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !909, file: !910, line: 18, baseType: !67, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !909, file: !910, line: 18, baseType: !67, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !909, file: !910, line: 19, baseType: !919, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !909, file: !910, line: 21, baseType: !354, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !909, file: !910, line: 23, baseType: !354, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !909, file: !910, line: 24, baseType: !354, size: 64, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !909, file: !910, line: 25, baseType: !354, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !909, file: !910, line: 26, baseType: !354, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !909, file: !910, line: 27, baseType: !354, size: 64, offset: 768)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !909, file: !910, line: 28, baseType: !354, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !909, file: !910, line: 29, baseType: !354, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !909, file: !910, line: 30, baseType: !354, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !909, file: !910, line: 31, baseType: !354, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !909, file: !910, line: 32, baseType: !354, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !909, file: !910, line: 33, baseType: !354, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !894, file: !893, line: 63, baseType: !77, size: 32, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !894, file: !893, line: 69, baseType: !121, size: 16, offset: 1056)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !894, file: !893, line: 70, baseType: !936, size: 16, offset: 1072)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !112, line: 18, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !355)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !142, line: 882, baseType: !67, size: 64, offset: 9024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !790, file: !142, line: 885, baseType: !87, size: 32, offset: 9088)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !790, file: !142, line: 886, baseType: !941, size: 64, offset: 9152)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !142, line: 732, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !790, file: !142, line: 901, baseType: !944, size: 64, offset: 9216)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !946, line: 68, size: 4800, elements: !947)
!946 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!947 = !{!948, !970, !971, !972, !973, !974, !982, !989, !1000, !1001, !1004, !1005, !1116, !1117, !1129, !1199, !1200, !1214, !1216}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !945, file: !946, line: 69, baseType: !949, size: 576)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !946, line: 23, size: 576, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !949, file: !946, line: 24, baseType: !498, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !946, line: 25, baseType: !953, size: 512, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !946, line: 25, size: 512, elements: !954)
!954 = !{!955, !964}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !953, file: !946, line: 26, baseType: !956, size: 480)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 480, elements: !962)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !946, line: 17, size: 96, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !957, file: !946, line: 18, baseType: !498, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !957, file: !946, line: 19, baseType: !498, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !946, line: 20, baseType: !498, size: 32, offset: 64)
!962 = !{!963}
!963 = !DISubrange(count: 5)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !946, line: 27, baseType: !965, size: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !946, line: 27, size: 128, elements: !966)
!966 = !{!967, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !965, file: !946, line: 28, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !965, file: !946, line: 29, baseType: !968, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !945, file: !946, line: 70, baseType: !949, size: 576, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !945, file: !946, line: 71, baseType: !949, size: 576, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !945, file: !946, line: 72, baseType: !944, size: 64, offset: 1728)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !945, file: !946, line: 73, baseType: !50, size: 32, offset: 1792)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !945, file: !946, line: 74, baseType: !975, size: 32, offset: 1824)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !976, line: 23, baseType: !977)
!976 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !976, line: 21, size: 32, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !977, file: !976, line: 22, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 37, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !65, line: 49, baseType: !19)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !945, file: !946, line: 75, baseType: !983, size: 32, offset: 1856)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !976, line: 28, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !976, line: 26, size: 32, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !984, file: !976, line: 27, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !53, line: 38, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !65, line: 50, baseType: !19)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !945, file: !946, line: 76, baseType: !990, size: 192, offset: 1920)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !991, line: 9, size: 192, elements: !992)
!991 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!992 = !{!993, !994, !998, !999}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !990, file: !991, line: 10, baseType: !384, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !990, file: !991, line: 11, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !991, line: 7, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !990, file: !991, line: 12, baseType: !19, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !990, file: !991, line: 13, baseType: !438, size: 32, offset: 160)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !945, file: !946, line: 77, baseType: !67, size: 64, offset: 2112)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !945, file: !946, line: 80, baseType: !1002, size: 8, offset: 2176)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 35, baseType: !1003)
!1003 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !945, file: !946, line: 88, baseType: !125, size: 128, offset: 2240)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !945, file: !946, line: 89, baseType: !1006, size: 64, offset: 2368)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1008, line: 195, size: 1728, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1009 = !{!1010, !1011, !1014, !1019, !1020, !1023, !1024, !1031, !1032, !1033, !1034, !1037, !1038, !1039, !1040, !1041, !1080, !1101}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1007, file: !1008, line: 196, baseType: !438, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1007, file: !1008, line: 197, baseType: !1012, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1008, line: 28, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 104, baseType: !887)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !1008, line: 198, baseType: !1015, size: 192, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 198, size: 192, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1015, file: !1008, line: 199, baseType: !125, size: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1015, file: !1008, line: 200, baseType: !537, size: 192, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1007, file: !1008, line: 205, baseType: !841, size: 320, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1007, file: !1008, line: 206, baseType: !1021, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1008, line: 206, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1007, file: !1008, line: 207, baseType: !48, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !1008, line: 208, baseType: !1025, size: 64, offset: 704)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 208, size: 64, elements: !1026)
!1026 = !{!1027, !1030}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1025, file: !1008, line: 209, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1029, line: 8, baseType: !391)
!1029 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1025, file: !1008, line: 210, baseType: !1028, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1007, file: !1008, line: 212, baseType: !1028, size: 64, offset: 768)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1007, file: !1008, line: 213, baseType: !975, size: 32, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1007, file: !1008, line: 214, baseType: !983, size: 32, offset: 864)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1007, file: !1008, line: 215, baseType: !1035, size: 32, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1008, line: 31, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !498)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1007, file: !1008, line: 216, baseType: !54, size: 16, offset: 928)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1007, file: !1008, line: 217, baseType: !54, size: 16, offset: 944)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1007, file: !1008, line: 221, baseType: !355, size: 16, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !1008, line: 228, baseType: !67, size: 64, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !1008, line: 245, baseType: !1042, size: 320, offset: 1088)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 245, size: 320, elements: !1043)
!1043 = !{!1044, !1071}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1042, file: !1008, line: 246, baseType: !1045, size: 320)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1008, line: 114, size: 320, elements: !1046)
!1046 = !{!1047, !1048, !1060, !1063, !1070}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1045, file: !1008, line: 116, baseType: !67, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1008, line: 117, baseType: !1049, size: 64, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1008, line: 117, size: 64, elements: !1050)
!1050 = !{!1051, !1059}
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !1008, line: 118, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !1008, line: 118, size: 64, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1052, file: !1008, line: 120, baseType: !121, size: 16)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1052, file: !1008, line: 121, baseType: !1056, size: 48, offset: 16)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 6)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1049, file: !1008, line: 127, baseType: !67, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1045, file: !1008, line: 129, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1008, line: 102, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1045, file: !1008, line: 130, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1008, line: 108, size: 192, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1065, file: !1008, line: 109, baseType: !371, size: 128, align: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1065, file: !1008, line: 110, baseType: !438, size: 32, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1065, file: !1008, line: 111, baseType: !1002, size: 8, offset: 160)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1045, file: !1008, line: 131, baseType: !45, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !1008, line: 247, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1008, line: 247, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1072, file: !1008, line: 248, baseType: !67, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1072, file: !1008, line: 249, baseType: !67, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1072, file: !1008, line: 250, baseType: !1061, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1072, file: !1008, line: 251, baseType: !1064, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1072, file: !1008, line: 252, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !1008, line: 260, baseType: !1081, size: 256, offset: 1408)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1008, line: 260, size: 256, elements: !1082)
!1082 = !{!1083, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1081, file: !1008, line: 261, baseType: !1084, size: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1008, line: 134, size: 256, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1084, file: !1008, line: 135, baseType: !48, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1084, file: !1008, line: 136, baseType: !1088, size: 256)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !456)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1008, line: 262, baseType: !1090, size: 256)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1008, line: 262, size: 256, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1090, file: !1008, line: 264, baseType: !125, size: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1090, file: !1008, line: 265, baseType: !1094, size: 128, offset: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1095, line: 22, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1096 = !{!1097, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1094, file: !1095, line: 23, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1095, line: 23, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1094, file: !1095, line: 24, baseType: !67, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1007, file: !1008, line: 280, baseType: !1102, size: 64, offset: 1664)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1008, line: 176, size: 192, elements: !1104)
!1104 = !{!1105, !1114, !1115}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1103, file: !1008, line: 177, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1008, line: 171, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!50, !1006, !1110, !1112, !1006}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1103, file: !1008, line: 178, baseType: !1006, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1103, file: !1008, line: 179, baseType: !1061, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !945, file: !946, line: 90, baseType: !841, size: 320, offset: 2432)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !945, file: !946, line: 97, baseType: !1118, size: 256, offset: 2752)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1119, line: 98, size: 256, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1118, file: !1119, line: 99, baseType: !384, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1118, file: !1119, line: 100, baseType: !125, size: 128, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1118, file: !1119, line: 101, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1119, line: 21, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !945, file: !946, line: 99, baseType: !1130, size: 768, offset: 3008)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !41, line: 199, size: 768, elements: !1131)
!1131 = !{!1132, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1130, file: !41, line: 200, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!50, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1130, file: !41, line: 201, baseType: !1138, size: 704, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !41, line: 193, size: 704, elements: !1139)
!1139 = !{!1140, !1198}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1138, file: !41, line: 195, baseType: !1141, size: 640)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !41, line: 173, size: 640, elements: !1142)
!1142 = !{!1143, !1155, !1167, !1168, !1188, !1189, !1191, !1197}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !41, line: 174, baseType: !1144, size: 192)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !41, line: 174, size: 192, elements: !1145)
!1145 = !{!1146, !1154}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !41, line: 175, baseType: !1147, size: 192)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1144, file: !41, line: 175, size: 192, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1147, file: !41, line: 176, baseType: !61, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1147, file: !41, line: 177, baseType: !50, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1147, file: !41, line: 178, baseType: !50, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1147, file: !41, line: 179, baseType: !50, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1147, file: !41, line: 180, baseType: !50, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1144, file: !41, line: 182, baseType: !371, size: 128, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1141, file: !41, line: 184, baseType: !1156, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1158, line: 26, size: 256, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1157, file: !1158, line: 27, baseType: !19, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1157, file: !1158, line: 28, baseType: !1162, size: 192, offset: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1163, line: 43, size: 192, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !1163, line: 44, baseType: !398, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1162, file: !1163, line: 45, baseType: !125, size: 128, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1141, file: !41, line: 185, baseType: !61, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1141, file: !41, line: 186, baseType: !1169, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !41, line: 204, size: 960, elements: !1171)
!1171 = !{!1172, !1173, !1177, !1184}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1170, file: !41, line: 205, baseType: !1130, size: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1170, file: !41, line: 206, baseType: !1174, size: 64, offset: 768)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1136, !1169}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1170, file: !41, line: 207, baseType: !1178, size: 64, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1170, file: !41, line: 209, baseType: !1185, size: 64, offset: 896)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!50, !1181, !61}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1141, file: !41, line: 187, baseType: !1136, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1141, file: !41, line: 188, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1141, file: !41, line: 189, baseType: !1192, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !41, line: 157, size: 256, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1193, file: !41, line: 158, baseType: !537, size: 192, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1193, file: !41, line: 159, baseType: !1181, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1141, file: !41, line: 190, baseType: !447, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1138, file: !41, line: 196, baseType: !675, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !945, file: !946, line: 100, baseType: !1181, size: 64, offset: 3776)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !945, file: !946, line: 102, baseType: !1201, size: 64, offset: 3840)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !946, line: 107, size: 1152, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1212}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1202, file: !946, line: 108, baseType: !451, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1202, file: !946, line: 109, baseType: !944, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1202, file: !946, line: 110, baseType: !975, size: 32, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1202, file: !946, line: 111, baseType: !77, size: 32, offset: 224)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1202, file: !946, line: 112, baseType: !1209, size: 640, offset: 256)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 640, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 10)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1202, file: !946, line: 113, baseType: !1213, size: 256, offset: 896)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !456)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !945, file: !946, line: 103, baseType: !1215, size: 640, offset: 3904)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 640, elements: !1210)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !945, file: !946, line: 104, baseType: !1217, size: 256, offset: 4544)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 256, elements: !456)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !790, file: !142, line: 904, baseType: !358, size: 64, offset: 9280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !790, file: !142, line: 906, baseType: !1220, size: 64, offset: 9344)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !142, line: 906, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !790, file: !142, line: 930, baseType: !77, size: 32, offset: 9408)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !790, file: !142, line: 933, baseType: !77, size: 32, offset: 9440)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !790, file: !142, line: 935, baseType: !1225, size: 64, offset: 9472)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !166, line: 103, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1225, file: !166, line: 104, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !166, line: 101, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !790, file: !142, line: 940, baseType: !384, size: 64, offset: 9536)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !790, file: !142, line: 942, baseType: !1118, size: 256, offset: 9600)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !787, file: !142, line: 986, baseType: !1233, offset: 10240)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: -1)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !488, file: !489, line: 882, baseType: !786, size: 64, offset: 9792)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !488, file: !489, line: 884, baseType: !50, size: 32, offset: 9856)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !488, file: !489, line: 885, baseType: !50, size: 32, offset: 9888)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !488, file: !489, line: 886, baseType: !50, size: 32, offset: 9920)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !488, file: !489, line: 888, baseType: !50, size: 32, offset: 9952)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !488, file: !489, line: 890, baseType: !67, size: 64, offset: 9984)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !488, file: !489, line: 893, baseType: !19, size: 32, offset: 10048)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !488, file: !489, line: 896, baseType: !19, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !488, file: !489, line: 897, baseType: !19, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !488, file: !489, line: 898, baseType: !19, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !488, file: !489, line: 899, baseType: !19, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !488, file: !489, line: 919, baseType: !19, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !488, file: !489, line: 922, baseType: !19, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !488, file: !489, line: 923, baseType: !19, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !488, file: !489, line: 925, baseType: !19, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !488, file: !489, line: 939, baseType: !19, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !488, file: !489, line: 941, baseType: !19, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !488, file: !489, line: 944, baseType: !19, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !488, file: !489, line: 956, baseType: !19, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !488, file: !489, line: 962, baseType: !19, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !488, file: !489, line: 966, baseType: !19, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !488, file: !489, line: 969, baseType: !67, size: 64, offset: 10176)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !488, file: !489, line: 971, baseType: !1259, size: 448, offset: 10240)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !136, line: 25, size: 448, elements: !1260)
!1260 = !{!1261, !1262, !1267}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1259, file: !136, line: 26, baseType: !67, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1259, file: !136, line: 27, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!354, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !136, line: 28, baseType: !1268, size: 320, offset: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !136, line: 28, size: 320, elements: !1269)
!1269 = !{!1270, !1280, !1305}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1268, file: !136, line: 37, baseType: !1271, size: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !136, line: 30, size: 320, elements: !1272)
!1272 = !{!1273, !1275, !1276, !1277, !1278, !1279}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1271, file: !136, line: 31, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1271, file: !136, line: 32, baseType: !498, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !136, line: 33, baseType: !498, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1271, file: !136, line: 34, baseType: !498, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1271, file: !136, line: 35, baseType: !545, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1271, file: !136, line: 36, baseType: !1274, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1268, file: !136, line: 47, baseType: !1281, size: 192)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !136, line: 39, size: 192, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1304}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1281, file: !136, line: 40, baseType: !655, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !136, line: 41, baseType: !135, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !136, line: 42, baseType: !1286, size: 64, offset: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !136, line: 42, size: 64, elements: !1287)
!1287 = !{!1288, !1296}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1286, file: !136, line: 43, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1291, line: 7, size: 128, elements: !1292)
!1291 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1292 = !{!1293, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1290, file: !1291, line: 8, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !65, line: 93, baseType: !71)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1290, file: !1291, line: 9, baseType: !71, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1286, file: !136, line: 44, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1299, line: 7, size: 64, elements: !1300)
!1299 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1300 = !{!1301, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1298, file: !1299, line: 8, baseType: !1302, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1299, line: 5, baseType: !887)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1298, file: !1299, line: 9, baseType: !887, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1281, file: !136, line: 46, baseType: !545, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1268, file: !136, line: 55, baseType: !1306, size: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1268, file: !136, line: 49, size: 256, elements: !1307)
!1307 = !{!1308, !1316, !1317, !1318, !1319}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1306, file: !136, line: 50, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1311, line: 36, size: 64, elements: !1312)
!1311 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1310, file: !1311, line: 37, baseType: !50, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1310, file: !1311, line: 38, baseType: !355, size: 16, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1310, file: !1311, line: 39, baseType: !355, size: 16, offset: 48)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1306, file: !136, line: 51, baseType: !50, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1306, file: !136, line: 52, baseType: !50, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1306, file: !136, line: 53, baseType: !67, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1306, file: !136, line: 54, baseType: !67, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !488, file: !489, line: 973, baseType: !1321, size: 32, offset: 10688)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !53, line: 27, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !65, line: 28, baseType: !50)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !488, file: !489, line: 974, baseType: !1321, size: 32, offset: 10720)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !488, file: !489, line: 978, baseType: !67, size: 64, offset: 10752)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !488, file: !489, line: 987, baseType: !487, size: 64, offset: 10816)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !488, file: !489, line: 990, baseType: !487, size: 64, offset: 10880)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !488, file: !489, line: 995, baseType: !125, size: 128, offset: 10944)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !488, file: !489, line: 996, baseType: !125, size: 128, offset: 11072)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !488, file: !489, line: 997, baseType: !487, size: 64, offset: 11200)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !488, file: !489, line: 1005, baseType: !125, size: 128, offset: 11264)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !488, file: !489, line: 1006, baseType: !125, size: 128, offset: 11392)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !488, file: !489, line: 1009, baseType: !434, size: 64, offset: 11520)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !488, file: !489, line: 1010, baseType: !1334, size: 512, offset: 11584)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !456)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !488, file: !489, line: 1011, baseType: !125, size: 128, offset: 12096)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !488, file: !489, line: 1012, baseType: !125, size: 128, offset: 12224)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !488, file: !489, line: 1014, baseType: !1156, size: 64, offset: 12352)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !488, file: !489, line: 1017, baseType: !1339, size: 64, offset: 12416)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !488, file: !489, line: 1020, baseType: !1339, size: 64, offset: 12480)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !488, file: !489, line: 1023, baseType: !48, size: 64, offset: 12544)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !488, file: !489, line: 1025, baseType: !545, size: 64, offset: 12608)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !488, file: !489, line: 1026, baseType: !545, size: 64, offset: 12672)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !488, file: !489, line: 1031, baseType: !545, size: 64, offset: 12736)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !488, file: !489, line: 1032, baseType: !1346, size: 192, offset: 12800)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !489, line: 324, size: 192, elements: !1347)
!1347 = !{!1348, !1349, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1346, file: !489, line: 326, baseType: !545, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1346, file: !489, line: 327, baseType: !545, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !489, line: 328, baseType: !398, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !488, file: !489, line: 1041, baseType: !67, size: 64, offset: 12992)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !488, file: !489, line: 1042, baseType: !67, size: 64, offset: 13056)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !488, file: !489, line: 1045, baseType: !545, size: 64, offset: 13120)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !488, file: !489, line: 1048, baseType: !545, size: 64, offset: 13184)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !488, file: !489, line: 1051, baseType: !67, size: 64, offset: 13248)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !488, file: !489, line: 1052, baseType: !67, size: 64, offset: 13312)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !488, file: !489, line: 1055, baseType: !1358, size: 640, offset: 13376)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1359, line: 132, size: 640, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1360 = !{!1361, !1367, !1368}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1358, file: !1359, line: 133, baseType: !1362, size: 576)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 576, elements: !430)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1359, line: 117, size: 192, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1363, file: !1359, line: 118, baseType: !545, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1363, file: !1359, line: 119, baseType: !669, size: 128, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1358, file: !1359, line: 134, baseType: !19, size: 32, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1358, file: !1359, line: 135, baseType: !19, size: 32, offset: 608)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !488, file: !489, line: 1058, baseType: !1370, size: 448, offset: 14016)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1359, line: 144, size: 448, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1370, file: !1359, line: 145, baseType: !371, size: 128, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1370, file: !1359, line: 146, baseType: !393, size: 256, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1370, file: !1359, line: 147, baseType: !19, size: 32, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !488, file: !489, line: 1064, baseType: !1376, size: 64, offset: 14464)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1379, line: 110, size: 1472, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1430, !1431, !1432, !1440}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1378, file: !1379, line: 111, baseType: !384, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1378, file: !1379, line: 112, baseType: !975, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1378, file: !1379, line: 113, baseType: !983, size: 32, offset: 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1378, file: !1379, line: 114, baseType: !975, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1378, file: !1379, line: 115, baseType: !983, size: 32, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1378, file: !1379, line: 116, baseType: !975, size: 32, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1378, file: !1379, line: 117, baseType: !983, size: 32, offset: 224)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1378, file: !1379, line: 118, baseType: !975, size: 32, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1378, file: !1379, line: 119, baseType: !983, size: 32, offset: 288)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1378, file: !1379, line: 120, baseType: !19, size: 32, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1378, file: !1379, line: 121, baseType: !1392, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1393, line: 24, baseType: !1394)
!1393 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1393, line: 24, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1394, file: !1393, line: 24, baseType: !545, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1378, file: !1379, line: 122, baseType: !1392, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1378, file: !1379, line: 123, baseType: !1392, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1378, file: !1379, line: 124, baseType: !1392, size: 64, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1378, file: !1379, line: 125, baseType: !1392, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1378, file: !1379, line: 127, baseType: !115, size: 8, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1378, file: !1379, line: 129, baseType: !1006, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1378, file: !1379, line: 130, baseType: !1006, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1378, file: !1379, line: 131, baseType: !1006, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1378, file: !1379, line: 132, baseType: !1006, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1378, file: !1379, line: 135, baseType: !48, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1378, file: !1379, line: 137, baseType: !1408, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1410, line: 14, size: 1088, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1409, file: !1410, line: 15, baseType: !438, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1409, file: !1410, line: 17, baseType: !879, size: 320, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1409, file: !1410, line: 19, baseType: !67, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1409, file: !1410, line: 20, baseType: !384, size: 64, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1409, file: !1410, line: 23, baseType: !451, size: 128, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1409, file: !1410, line: 24, baseType: !975, size: 32, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1409, file: !1410, line: 29, baseType: !384, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1409, file: !1410, line: 36, baseType: !1420, size: 320, offset: 768)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1421, line: 15, size: 320, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1421, line: 16, baseType: !398, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1420, file: !1421, line: 18, baseType: !50, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1420, file: !1421, line: 19, baseType: !50, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1420, file: !1421, line: 20, baseType: !50, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1420, file: !1421, line: 21, baseType: !50, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1420, file: !1421, line: 22, baseType: !67, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 23, baseType: !67, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1378, file: !1379, line: 138, baseType: !944, size: 64, offset: 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1378, file: !1379, line: 139, baseType: !1201, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1378, file: !1379, line: 140, baseType: !1433, size: 64, offset: 1280)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1379, line: 25, size: 64, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1434, file: !1379, line: 26, baseType: !77, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1434, file: !1379, line: 27, baseType: !50, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1434, file: !1379, line: 28, baseType: !1439, offset: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, elements: !1234)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 142, baseType: !1441, size: 128, offset: 1344)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 142, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1441, file: !1379, line: 143, baseType: !50, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1441, file: !1379, line: 144, baseType: !371, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !488, file: !489, line: 1067, baseType: !1376, size: 64, offset: 14528)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !488, file: !489, line: 1070, baseType: !1376, size: 64, offset: 14592)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !488, file: !489, line: 1074, baseType: !1006, size: 64, offset: 14656)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !488, file: !489, line: 1084, baseType: !1449, size: 128, offset: 14720)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 16)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !488, file: !489, line: 1086, baseType: !1453, size: 64, offset: 14848)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !489, line: 55, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !488, file: !489, line: 1089, baseType: !1456, size: 64, offset: 14912)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1457, line: 12, size: 64, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1456, file: !1457, line: 13, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1457, line: 8, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !488, file: !489, line: 1090, baseType: !1463, size: 128, offset: 14976)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1464, line: 13, size: 128, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1463, file: !1464, line: 14, baseType: !125, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !488, file: !489, line: 1097, baseType: !1468, size: 64, offset: 15104)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !489, line: 50, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !488, file: !489, line: 1100, baseType: !1471, size: 64, offset: 15168)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !489, line: 1100, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !488, file: !489, line: 1103, baseType: !1474, size: 64, offset: 15232)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !489, line: 53, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !488, file: !489, line: 1107, baseType: !1477, size: 64, offset: 15296)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1479, line: 31, size: 576, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1480 = !{!1481, !1482, !1485, !1488, !1491, !1492, !1495, !1498, !1499}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1478, file: !1479, line: 32, baseType: !438, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1478, file: !1479, line: 33, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1479, line: 9, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1478, file: !1479, line: 34, baseType: !1486, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1479, line: 10, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1478, file: !1479, line: 35, baseType: !1489, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1479, line: 8, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1478, file: !1479, line: 36, baseType: !467, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1478, file: !1479, line: 37, baseType: !1493, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1008, line: 34, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1478, file: !1479, line: 38, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1479, line: 38, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1478, file: !1479, line: 39, baseType: !1496, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1478, file: !1479, line: 40, baseType: !1500, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1502, line: 771, size: 384, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1503 = !{!1504, !1505, !1506, !1507}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1501, file: !1502, line: 772, baseType: !990, size: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1501, file: !1502, line: 773, baseType: !944, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1501, file: !1502, line: 774, baseType: !1201, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1501, file: !1502, line: 775, baseType: !1508, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1510, line: 209, size: 4736, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1511 = !{!1512, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1509, file: !1510, line: 215, baseType: !1513, size: 896)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 896, elements: !4958)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1510, line: 152, size: 1600, elements: !1516)
!1516 = !{!1517, !5009, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5127}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1515, file: !1510, line: 154, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1510, line: 389, size: 7872, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !4923, !4929, !4930, !4934, !4935, !4936, !4937, !4938, !4939, !4955, !4956, !4960, !4961, !4962, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4996, !4999, !5000, !5007}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1519, file: !1510, line: 391, baseType: !1515, size: 1600)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !1510, line: 393, baseType: !67, size: 64, offset: 1600)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1519, file: !1510, line: 401, baseType: !50, size: 32, offset: 1664)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1519, file: !1510, line: 404, baseType: !50, size: 32, offset: 1696)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1519, file: !1510, line: 417, baseType: !50, size: 32, offset: 1728)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1519, file: !1510, line: 418, baseType: !50, size: 32, offset: 1760)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1519, file: !1510, line: 419, baseType: !50, size: 32, offset: 1792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1519, file: !1510, line: 432, baseType: !50, size: 32, offset: 1824)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1519, file: !1510, line: 433, baseType: !50, size: 32, offset: 1856)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1519, file: !1510, line: 434, baseType: !50, size: 32, offset: 1888)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1519, file: !1510, line: 436, baseType: !50, size: 32, offset: 1920)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1519, file: !1510, line: 439, baseType: !19, size: 32, offset: 1952)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1519, file: !1510, line: 441, baseType: !1534, size: 64, offset: 1984)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1536, line: 190, size: 1152, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !4915, !4916, !4917, !4918, !4919, !4922}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1535, file: !1536, line: 191, baseType: !77, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1535, file: !1536, line: 192, baseType: !77, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1535, file: !1536, line: 202, baseType: !1534, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1535, file: !1536, line: 203, baseType: !45, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1535, file: !1536, line: 205, baseType: !537, size: 192, align: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1535, file: !1536, line: 207, baseType: !919, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1535, file: !1536, line: 208, baseType: !19, size: 32, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 209, baseType: !1546, size: 256, offset: 512)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 209, size: 256, elements: !1547)
!1547 = !{!1548, !1557, !1561}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1546, file: !1536, line: 210, baseType: !1549, size: 256)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1536, line: 153, size: 256, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1556}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1549, file: !1536, line: 154, baseType: !67, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1549, file: !1536, line: 156, baseType: !675, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1549, file: !1536, line: 162, baseType: !1554, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1536, line: 162, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1549, file: !1536, line: 167, baseType: !67, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1546, file: !1536, line: 211, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1536, line: 170, size: 64, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1558, file: !1536, line: 171, baseType: !1534, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1546, file: !1536, line: 212, baseType: !1562, size: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1536, line: 174, size: 256, elements: !1563)
!1563 = !{!1564, !4910, !4913, !4914}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1562, file: !1536, line: 175, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1536, line: 271, size: 768, elements: !1568)
!1568 = !{!1569, !4887, !4891, !4892, !4893, !4894, !4895, !4899, !4900, !4901, !4902, !4906}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1567, file: !1536, line: 276, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!50, !1573}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1536, line: 251, size: 1216, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1574, file: !1536, line: 253, baseType: !1534, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1574, file: !1536, line: 254, baseType: !358, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1574, file: !1536, line: 255, baseType: !1579, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1581, line: 17, size: 960, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1612, !1613, !1616}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1580, file: !1581, line: 18, baseType: !1079, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1580, file: !1581, line: 19, baseType: !63, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1580, file: !1581, line: 20, baseType: !63, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1580, file: !1581, line: 21, baseType: !63, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1580, file: !1581, line: 22, baseType: !63, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1580, file: !1581, line: 23, baseType: !69, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1580, file: !1581, line: 24, baseType: !69, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1580, file: !1581, line: 25, baseType: !393, size: 256, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1580, file: !1581, line: 26, baseType: !1592, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1581, line: 32, size: 256, elements: !1595)
!1595 = !{!1596, !1600, !1604, !1608}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1594, file: !1581, line: 33, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!48, !1579, !68}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1594, file: !1581, line: 34, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !1579, !48}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1594, file: !1581, line: 35, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!48, !1579, !48, !68}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1594, file: !1581, line: 36, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!50, !1579, !48}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1580, file: !1581, line: 27, baseType: !50, size: 32, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1580, file: !1581, line: 28, baseType: !1614, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1580, file: !1581, line: 29, baseType: !48, size: 64, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1574, file: !1536, line: 256, baseType: !48, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1574, file: !1536, line: 259, baseType: !393, size: 256, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1574, file: !1536, line: 260, baseType: !393, size: 256, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1574, file: !1536, line: 261, baseType: !50, size: 32, offset: 768)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1574, file: !1536, line: 262, baseType: !125, size: 128, offset: 832)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1574, file: !1536, line: 263, baseType: !1079, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1574, file: !1536, line: 265, baseType: !63, size: 64, offset: 1024)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1574, file: !1536, line: 266, baseType: !1002, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1574, file: !1536, line: 267, baseType: !1002, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1574, file: !1536, line: 268, baseType: !1627, size: 64, offset: 1152)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1630, line: 563, size: 1024, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1631 = !{!1632, !1688, !1689, !1693, !1697, !1701, !4853, !4857, !4861, !4865, !4866, !4867, !4871, !4875, !4879, !4883}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1629, file: !1630, line: 564, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !142, line: 625, size: 1344, elements: !1638)
!1638 = !{!1639, !1648, !1649, !1655, !1662, !1663, !1668, !1669, !1674, !1675, !1678, !1679, !1680, !1681, !1682, !1683, !1686}
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !142, line: 628, baseType: !1640, size: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !142, line: 628, size: 128, elements: !1641)
!1641 = !{!1642, !1647}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !142, line: 629, baseType: !1643, size: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !142, line: 629, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1643, file: !142, line: 631, baseType: !67, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1643, file: !142, line: 632, baseType: !67, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1640, file: !142, line: 635, baseType: !371, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1637, file: !142, line: 639, baseType: !786, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1637, file: !142, line: 640, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !822, line: 297, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !822, line: 297, size: 64, elements: !1652)
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1651, file: !822, line: 297, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !827, line: 19, baseType: !67)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !142, line: 646, baseType: !1656, size: 64, offset: 256)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !142, line: 646, size: 64, elements: !1657)
!1657 = !{!1658, !1661}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1656, file: !142, line: 647, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !142, line: 542, baseType: !67)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1656, file: !142, line: 648, baseType: !1660, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1637, file: !142, line: 666, baseType: !50, size: 32, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1637, file: !142, line: 667, baseType: !1664, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !142, line: 579, size: 320, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1665, file: !142, line: 580, baseType: !841, size: 320)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1637, file: !142, line: 670, baseType: !1002, size: 8, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1637, file: !142, line: 681, baseType: !1670, size: 256, offset: 512)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !142, line: 678, size: 256, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1670, file: !142, line: 679, baseType: !537, size: 192, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1670, file: !142, line: 680, baseType: !67, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1637, file: !142, line: 689, baseType: !125, size: 128, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1637, file: !142, line: 691, baseType: !1676, size: 64, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !142, line: 691, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1637, file: !142, line: 694, baseType: !1627, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1637, file: !142, line: 697, baseType: !67, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1637, file: !142, line: 699, baseType: !358, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1637, file: !142, line: 700, baseType: !48, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1637, file: !142, line: 711, baseType: !384, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1637, file: !142, line: 717, baseType: !1684, size: 64, offset: 1280)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !142, line: 717, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1637, file: !142, line: 722, baseType: !1687, offset: 1344)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !142, line: 570, elements: !807)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1629, file: !1630, line: 569, baseType: !1633, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1629, file: !1630, line: 571, baseType: !1690, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!50, !1636, !67}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1629, file: !1630, line: 572, baseType: !1694, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!50, !1636}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1629, file: !1630, line: 578, baseType: !1698, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!50, !1636, !67, !67, !67}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1629, file: !1630, line: 580, baseType: !1702, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !142, line: 1184, baseType: !19)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1630, line: 512, size: 896, elements: !1708)
!1708 = !{!1709, !1717, !1718, !1725, !1732, !1742, !4846, !4847, !4849, !4851}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !1630, line: 513, baseType: !1710, size: 320)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !1630, line: 513, size: 320, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1710, file: !1630, line: 514, baseType: !1636, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1710, file: !1630, line: 515, baseType: !316, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1710, file: !1630, line: 516, baseType: !67, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1710, file: !1630, line: 517, baseType: !67, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1710, file: !1630, line: 518, baseType: !67, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1707, file: !1630, line: 520, baseType: !141, size: 32, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1707, file: !1630, line: 522, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !827, line: 22, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !827, line: 22, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1721, file: !827, line: 22, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !827, line: 15, baseType: !67)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1707, file: !1630, line: 524, baseType: !1726, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !822, line: 372, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !822, line: 372, size: 64, elements: !1729)
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1728, file: !822, line: 372, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !827, line: 16, baseType: !67)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !1630, line: 527, baseType: !1733, size: 64, offset: 512)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !1630, line: 527, size: 64, elements: !1734)
!1734 = !{!1735, !1741}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1733, file: !1630, line: 528, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !827, line: 21, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !827, line: 21, size: 64, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1737, file: !827, line: 21, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !827, line: 14, baseType: !67)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1733, file: !1630, line: 529, baseType: !1720, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1707, file: !1630, line: 534, baseType: !1743, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !142, line: 74, size: 512, align: 128, elements: !1745)
!1745 = !{!1746, !1747, !4840, !4845}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !142, line: 75, baseType: !67, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !142, line: 83, baseType: !1748, size: 320, offset: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !142, line: 83, size: 320, elements: !1749)
!1749 = !{!1750, !4747, !4761, !4765, !4839}
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !142, line: 84, baseType: !1751, size: 320)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !142, line: 84, size: 320, elements: !1752)
!1752 = !{!1753, !1764, !4741, !4746}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !142, line: 90, baseType: !1754, size: 128)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !142, line: 90, size: 128, elements: !1755)
!1755 = !{!1756, !1757, !1762, !1763}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1754, file: !142, line: 91, baseType: !125, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !142, line: 94, baseType: !1758, size: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !142, line: 94, size: 128, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1758, file: !142, line: 96, baseType: !48, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1758, file: !142, line: 98, baseType: !19, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1754, file: !142, line: 102, baseType: !125, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1754, file: !142, line: 103, baseType: !125, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1751, file: !142, line: 106, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !1767)
!1767 = !{!1768, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4735, !4736, !4737, !4738, !4739, !4740}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1766, file: !31, line: 473, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1781, !1782, !4299, !4300, !4301, !4302, !4303, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4557, !4560, !4561, !4562, !4571, !4572, !4573, !4574}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1770, file: !31, line: 642, baseType: !52, size: 16)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1770, file: !31, line: 643, baseType: !54, size: 16, offset: 16)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1770, file: !31, line: 644, baseType: !975, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1770, file: !31, line: 645, baseType: !125, size: 128, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1770, file: !31, line: 646, baseType: !983, size: 32, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1770, file: !31, line: 647, baseType: !19, size: 32, offset: 224)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1770, file: !31, line: 650, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1770, file: !31, line: 651, baseType: !1779, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1770, file: !31, line: 654, baseType: !1783, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1785)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !1786)
!1786 = !{!1787, !4133, !4143, !4147, !4151, !4155, !4159, !4163, !4167, !4171, !4175, !4176, !4180, !4184, !4221, !4250, !4254, !4260, !4264, !4268, !4272, !4276, !4280, !4286, !4290}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1785, file: !31, line: 1967, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1791, !1769, !1791, !19}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1793, line: 82, size: 1536, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1794 = !{!1795, !1796, !1801, !1809, !1810, !1825, !1826, !1830, !1843, !4116, !4117, !4118, !4119, !4125, !4126, !4127}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1792, file: !1793, line: 84, baseType: !19, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1792, file: !1793, line: 85, baseType: !1797, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !659, line: 275, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !659, line: 275, size: 32, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1798, file: !659, line: 275, baseType: !663, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1792, file: !1793, line: 86, baseType: !1802, size: 128, offset: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1803, line: 38, size: 128, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1804 = !{!1805, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1802, file: !1803, line: 39, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1802, file: !1803, line: 39, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1792, file: !1793, line: 87, baseType: !1791, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1792, file: !1793, line: 88, baseType: !1811, size: 128, offset: 256)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1793, line: 49, size: 128, elements: !1812)
!1812 = !{!1813, !1822}
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1793, line: 50, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1793, line: 50, size: 64, elements: !1815)
!1815 = !{!1816, !1821}
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !1793, line: 51, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !1793, line: 51, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1817, file: !1793, line: 52, baseType: !498, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1817, file: !1793, line: 52, baseType: !498, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1814, file: !1793, line: 54, baseType: !545, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1811, file: !1793, line: 56, baseType: !1823, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1792, file: !1793, line: 89, baseType: !1769, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1792, file: !1793, line: 91, baseType: !1827, size: 256, offset: 448)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1828)
!1828 = !{!1829}
!1829 = !DISubrange(count: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1792, file: !1793, line: 94, baseType: !1831, size: 64, offset: 704)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1832, line: 25, size: 64, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1832, line: 26, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1832, line: 26, size: 64, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1835, file: !1832, line: 28, baseType: !336, size: 64, align: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1832, line: 30, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1835, file: !1832, line: 30, size: 64, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !1832, line: 31, baseType: !87, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !1832, line: 32, baseType: !50, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1792, file: !1793, line: 95, baseType: !1844, size: 64, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1793, line: 128, size: 1024, align: 512, elements: !1847)
!1847 = !{!1848, !1852, !1853, !1860, !1866, !1870, !1874, !1878, !1879, !1883, !1887, !4106, !4110}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1846, file: !1793, line: 129, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!50, !1791, !19}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1846, file: !1793, line: 130, baseType: !1849, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1846, file: !1793, line: 131, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!50, !1857, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1846, file: !1793, line: 132, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!50, !1857, !19, !45, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1846, file: !1793, line: 134, baseType: !1867, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!50, !1857}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1846, file: !1793, line: 135, baseType: !1871, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!50, !1791}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1846, file: !1793, line: 136, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1791}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1846, file: !1793, line: 137, baseType: !1875, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1846, file: !1793, line: 138, baseType: !1880, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1791, !1769}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1846, file: !1793, line: 139, baseType: !1884, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!1079, !1791, !1079, !50}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1846, file: !1793, line: 140, baseType: !1888, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!1891, !4105}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1893, line: 70, size: 256, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1894 = !{!1895, !1896, !4101, !4102}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1892, file: !1893, line: 71, baseType: !1791, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1892, file: !1893, line: 72, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !1899)
!1899 = !{!1900, !1901, !1904, !1905, !1906, !1907, !3669, !3803, !3843, !3933, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3950, !3954, !3955, !3958, !3961, !3964, !3967, !3968, !3969, !4010, !4032, !4033, !4034, !4035, !4036, !4037, !4040, !4042, !4049, !4050, !4051, !4052, !4053, !4068, !4069, !4070, !4071, !4074, !4075, !4076, !4077, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1898, file: !31, line: 1191, baseType: !125, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1898, file: !31, line: 1192, baseType: !1902, size: 32, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !53, line: 21, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !53, line: 18, baseType: !498)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1898, file: !31, line: 1193, baseType: !115, size: 8, offset: 160)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1898, file: !31, line: 1194, baseType: !67, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1898, file: !31, line: 1195, baseType: !69, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1898, file: !31, line: 1196, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1919, !1923, !1927, !1931, !3657, !3658, !3659, !3661, !3662, !3663, !3665, !3666, !3667, !3668}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1909, file: !31, line: 2367, baseType: !45, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1909, file: !31, line: 2368, baseType: !50, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1909, file: !31, line: 2376, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!50, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1893, line: 21, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1909, file: !31, line: 2377, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1909, file: !31, line: 2378, baseType: !1924, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1791, !1908, !50, !45, !48}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1909, file: !31, line: 2380, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1897}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1909, file: !31, line: 2381, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !24, line: 402, size: 9216, align: 512, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1941, !2121, !2147, !2148, !2149, !2150, !2154, !2157, !2158, !2159, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2227, !2231, !2251, !2268, !2269, !2270, !2271, !2280, !2303, !2304, !2307, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2321, !2322, !2421, !2429, !2430, !2431, !2433, !3636, !3637, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1933, file: !24, line: 403, baseType: !23, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1933, file: !24, line: 406, baseType: !125, size: 128, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1933, file: !24, line: 409, baseType: !1938, size: 448, offset: 192)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 56)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1933, file: !24, line: 417, baseType: !1942, size: 768, offset: 640)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !24, line: 45, size: 768, elements: !1943)
!1943 = !{!1944, !2115, !2116, !2117, !2120}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1942, file: !24, line: 46, baseType: !1945, size: 512)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1946, line: 64, size: 512, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1947 = !{!1948, !1949, !1950, !1952, !1996, !2104, !2105, !2110, !2111, !2112, !2113, !2114}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1945, file: !1946, line: 65, baseType: !45, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1945, file: !1946, line: 66, baseType: !125, size: 128, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1945, file: !1946, line: 67, baseType: !1951, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1945, file: !1946, line: 68, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1946, line: 168, size: 768, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1954, file: !1946, line: 169, baseType: !125, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1954, file: !1946, line: 170, baseType: !87, size: 32, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1954, file: !1946, line: 171, baseType: !1945, size: 512, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1954, file: !1946, line: 172, baseType: !1960, size: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1946, line: 133, size: 192, elements: !1963)
!1963 = !{!1964, !1971, !1976}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1962, file: !1946, line: 134, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!50, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1962, file: !1946, line: 135, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!45, !1969}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1962, file: !1946, line: 136, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!50, !1969, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1946, line: 125, size: 20736, elements: !1983)
!1983 = !{!1984, !1986, !1990, !1991, !1995}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1982, file: !1946, line: 126, baseType: !1985, size: 192)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 192, elements: !430)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1982, file: !1946, line: 127, baseType: !1987, size: 4096, offset: 192)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 4096, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1982, file: !1946, line: 128, baseType: !50, size: 32, offset: 4288)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1982, file: !1946, line: 129, baseType: !1992, size: 16384, offset: 4320)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1993)
!1993 = !{!1994}
!1994 = !DISubrange(count: 2048)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1982, file: !1946, line: 130, baseType: !50, size: 32, offset: 20704)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1945, file: !1946, line: 69, baseType: !1997, size: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1946, line: 116, size: 384, elements: !2000)
!2000 = !{!2001, !2005, !2027, !2065, !2096, !2100}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1999, file: !1946, line: 117, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !1951}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1999, file: !1946, line: 118, baseType: !2006, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2009, line: 254, size: 128, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2010 = !{!2011, !2023}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2008, file: !2009, line: 255, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!2015, !1951, !2018, !1079}
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !53, line: 66, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !65, line: 73, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !65, line: 15, baseType: !354)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2009, line: 30, size: 128, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2019, file: !2009, line: 31, baseType: !45, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2019, file: !2009, line: 32, baseType: !52, size: 16, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2008, file: !2009, line: 256, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2015, !1951, !2018, !45, !63}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1999, file: !1946, line: 119, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2009, line: 84, size: 320, elements: !2032)
!2032 = !{!2033, !2034, !2038, !2061, !2063}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2031, file: !2009, line: 85, baseType: !45, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2031, file: !2009, line: 86, baseType: !2035, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!52, !1951, !2018, !50}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2031, file: !2009, line: 88, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!52, !1951, !2042, !50}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2009, line: 175, size: 512, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2052, !2056, !2057}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2043, file: !2009, line: 176, baseType: !2019, size: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !2009, line: 177, baseType: !63, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2043, file: !2009, line: 178, baseType: !48, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2043, file: !2009, line: 179, baseType: !2049, size: 64, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!1765}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2043, file: !2009, line: 180, baseType: !2053, size: 64, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!2015, !358, !1951, !2042, !1079, !69, !63}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2043, file: !2009, line: 182, baseType: !2053, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2043, file: !2009, line: 184, baseType: !2058, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!50, !358, !1951, !2042, !1636}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2031, file: !2009, line: 90, baseType: !2062, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2031, file: !2009, line: 91, baseType: !2064, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1999, file: !1946, line: 120, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!2069, !1969}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !201, line: 39, size: 384, elements: !2072)
!2072 = !{!2073, !2074, !2078, !2082, !2088, !2092}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2071, file: !201, line: 40, baseType: !200, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2071, file: !201, line: 41, baseType: !2075, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!1002}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2071, file: !201, line: 42, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!48}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2071, file: !201, line: 43, baseType: !2083, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!919, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !201, line: 19, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2071, file: !201, line: 44, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!919}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2071, file: !201, line: 45, baseType: !2093, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !48}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1999, file: !1946, line: 121, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!919, !1969}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1999, file: !1946, line: 122, baseType: !2101, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !1969, !1182, !1183}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1945, file: !1946, line: 70, baseType: !1534, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1945, file: !1946, line: 71, baseType: !2106, size: 32, offset: 448)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2107, line: 19, size: 32, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2106, file: !2107, line: 20, baseType: !438, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1945, file: !1946, line: 73, baseType: !19, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1945, file: !1946, line: 74, baseType: !19, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1945, file: !1946, line: 75, baseType: !19, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1945, file: !1946, line: 76, baseType: !19, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1945, file: !1946, line: 77, baseType: !19, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1942, file: !24, line: 47, baseType: !1932, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1942, file: !24, line: 48, baseType: !1951, size: 64, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1942, file: !24, line: 49, baseType: !2118, size: 64, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !24, line: 49, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1942, file: !24, line: 50, baseType: !1156, size: 64, offset: 704)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1933, file: !24, line: 418, baseType: !2122, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !24, line: 53, size: 448, elements: !2124)
!2124 = !{!2125, !2126, !2131, !2135, !2139, !2143}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2123, file: !24, line: 54, baseType: !2019, size: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2123, file: !24, line: 55, baseType: !2127, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2015, !2122, !2130, !1079}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2123, file: !24, line: 57, baseType: !2132, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2015, !2122, !2130, !45, !63}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2123, file: !24, line: 59, baseType: !2136, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !1932, !45}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2123, file: !24, line: 60, baseType: !2140, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!50, !1932}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2123, file: !24, line: 61, baseType: !2144, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !1932}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1933, file: !24, line: 419, baseType: !45, size: 64, offset: 1472)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1933, file: !24, line: 420, baseType: !45, size: 64, offset: 1536)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1933, file: !24, line: 421, baseType: !1951, size: 64, offset: 1600)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1933, file: !24, line: 424, baseType: !2151, size: 64, offset: 1664)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !24, line: 424, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1933, file: !24, line: 425, baseType: !2155, size: 64, offset: 1728)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1933, file: !24, line: 426, baseType: !19, size: 32, offset: 1792)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1933, file: !24, line: 435, baseType: !393, size: 256, offset: 1856)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1933, file: !24, line: 437, baseType: !2160, size: 64, offset: 2112)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2162, line: 69, size: 320, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2163 = !{!2164, !2165, !2166, !2183, !2185, !2189, !2190}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2161, file: !2162, line: 70, baseType: !45, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2161, file: !2162, line: 71, baseType: !1932, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2161, file: !2162, line: 72, baseType: !2167, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2162, line: 47, size: 256, elements: !2170)
!2170 = !{!2171, !2172, !2178, !2182}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2169, file: !2162, line: 49, baseType: !19, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2169, file: !2162, line: 51, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!50, !45, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2161)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2169, file: !2162, line: 53, baseType: !2179, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!50, !1079, !2176}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2169, file: !2162, line: 55, baseType: !2093, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2161, file: !2162, line: 73, baseType: !2184, size: 16, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2161, file: !2162, line: 74, baseType: !2186, size: 8, offset: 208)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !112, line: 16, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !114, line: 20, baseType: !2188)
!2188 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2162, line: 75, baseType: !111, size: 8, offset: 216)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !2162, line: 76, baseType: !2191, size: 64, offset: 256)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2161, file: !2162, line: 76, size: 64, elements: !2192)
!2192 = !{!2193, !2194, !2201}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2191, file: !2162, line: 77, baseType: !48, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2191, file: !2162, line: 78, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2162, line: 86, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2197, file: !2162, line: 87, baseType: !19, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2197, file: !2162, line: 88, baseType: !1079, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2191, file: !2162, line: 79, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2162, line: 92, size: 256, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2210, !2211}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2204, file: !2162, line: 94, baseType: !19, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2204, file: !2162, line: 95, baseType: !19, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2204, file: !2162, line: 96, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2204, file: !2162, line: 97, baseType: !2167, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2204, file: !2162, line: 98, baseType: !48, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1933, file: !24, line: 438, baseType: !19, size: 32, offset: 2176)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1933, file: !24, line: 441, baseType: !19, size: 32, offset: 2208)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1933, file: !24, line: 442, baseType: !2151, size: 64, offset: 2240)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1933, file: !24, line: 443, baseType: !2155, size: 64, offset: 2304)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1933, file: !24, line: 444, baseType: !1002, size: 8, offset: 2368)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1933, file: !24, line: 451, baseType: !1002, size: 8, offset: 2376)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1933, file: !24, line: 454, baseType: !19, size: 32, offset: 2400)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1933, file: !24, line: 455, baseType: !2220, size: 64, offset: 2432)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2222, line: 23, size: 96, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2221, file: !2222, line: 24, baseType: !50, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2221, file: !2222, line: 24, baseType: !50, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2221, file: !2222, line: 24, baseType: !50, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1933, file: !24, line: 458, baseType: !2228, size: 64, offset: 2496)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!50}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1933, file: !24, line: 460, baseType: !2232, size: 4032, align: 512, offset: 2560)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2233, size: 4032, elements: !2249)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !24, line: 362, size: 576, elements: !2234)
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2233, file: !24, line: 363, baseType: !48, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2233, file: !24, line: 364, baseType: !19, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2233, file: !24, line: 367, baseType: !2238, size: 448, offset: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !24, line: 319, size: 448, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2238, file: !24, line: 320, baseType: !1932, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2238, file: !24, line: 321, baseType: !2242, size: 384, offset: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2243, line: 40, size: 384, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2242, file: !2243, line: 41, baseType: !2246, size: 384, align: 64)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 384, align: 64, elements: !2247)
!2247 = !{!2248}
!2248 = !DISubrange(count: 2)
!2249 = !{!2250}
!2250 = !DISubrange(count: 7)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1933, file: !24, line: 463, baseType: !2252, size: 192, offset: 6592)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2253, line: 8, size: 192, elements: !2254)
!2253 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2252, file: !2253, line: 10, baseType: !19, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2252, file: !2253, line: 11, baseType: !1339, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2252, file: !2253, line: 12, baseType: !2258, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2260, line: 59, size: 48, elements: !2261)
!2260 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2259, file: !2260, line: 60, baseType: !936, size: 16)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2259, file: !2260, line: 61, baseType: !936, size: 16, offset: 16)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2259, file: !2260, line: 63, baseType: !19, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2259, file: !2260, line: 64, baseType: !19, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2259, file: !2260, line: 65, baseType: !19, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2259, file: !2260, line: 66, baseType: !19, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1933, file: !24, line: 465, baseType: !67, size: 64, offset: 6784)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1933, file: !24, line: 469, baseType: !19, size: 32, offset: 6848)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1933, file: !24, line: 470, baseType: !125, size: 128, offset: 6912)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1933, file: !24, line: 471, baseType: !2272, size: 64, offset: 7040)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2274, line: 33, size: 96, elements: !2275)
!2274 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2273, file: !2274, line: 37, baseType: !50, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2273, file: !2274, line: 43, baseType: !50, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2273, file: !2274, line: 45, baseType: !54, size: 16, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !2274, line: 47, baseType: !54, size: 16, offset: 80)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1933, file: !24, line: 476, baseType: !2281, size: 64, offset: 7104)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !24, line: 378, size: 256, elements: !2283)
!2283 = !{!2284, !2300, !2301, !2302}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2282, file: !24, line: 379, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2287, line: 204, baseType: !2288)
!2287 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2287, line: 197, size: 192, elements: !2289)
!2289 = !{!2290, !2292, !2293, !2294, !2296, !2298}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2288, file: !2287, line: 198, baseType: !2291, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2287, line: 21, baseType: !322)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2288, file: !2287, line: 199, baseType: !115, size: 8, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2288, file: !2287, line: 200, baseType: !115, size: 8, offset: 40)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2288, file: !2287, line: 201, baseType: !2295, size: 16, offset: 48)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2287, line: 17, baseType: !122)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2288, file: !2287, line: 202, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2287, line: 16, baseType: !336)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2288, file: !2287, line: 203, baseType: !2299, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2287, line: 22, baseType: !336)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2282, file: !24, line: 380, baseType: !19, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2282, file: !24, line: 381, baseType: !1079, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2282, file: !24, line: 382, baseType: !1079, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1933, file: !24, line: 477, baseType: !2282, size: 256, offset: 7168)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1933, file: !24, line: 480, baseType: !2305, size: 64, offset: 7424)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !24, line: 480, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1933, file: !24, line: 483, baseType: !2308, size: 64, offset: 7488)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !24, line: 483, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1933, file: !24, line: 488, baseType: !1079, size: 64, offset: 7552)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1933, file: !24, line: 492, baseType: !48, size: 64, offset: 7616)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1933, file: !24, line: 493, baseType: !19, size: 32, offset: 7680)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1933, file: !24, line: 495, baseType: !48, size: 64, offset: 7744)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1933, file: !24, line: 496, baseType: !19, size: 32, offset: 7808)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1933, file: !24, line: 499, baseType: !19, size: 32, offset: 7840)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1933, file: !24, line: 500, baseType: !2317, size: 64, offset: 7872)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2319, line: 45, baseType: !2320)
!2319 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1933, file: !24, line: 503, baseType: !19, size: 32, offset: 7936)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1933, file: !24, line: 504, baseType: !2323, size: 64, offset: 8000)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2326, line: 96, size: 192, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2327 = !{!2328, !2329, !2382, !2385}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2325, file: !2326, line: 97, baseType: !19, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2325, file: !2326, line: 98, baseType: !2330, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2326, line: 24, size: 3072, elements: !2332)
!2332 = !{!2333, !2335, !2336, !2337, !2338, !2351, !2352, !2353, !2354, !2366, !2367, !2368, !2379, !2380, !2381}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2331, file: !2326, line: 26, baseType: !2334, size: 128)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !2247)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2331, file: !2326, line: 27, baseType: !2334, size: 128, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2331, file: !2326, line: 28, baseType: !50, size: 32, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2331, file: !2326, line: 31, baseType: !87, size: 32, align: 512, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2331, file: !2326, line: 32, baseType: !2339, size: 960, offset: 576)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2340, line: 206, size: 960, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2341 = !{!2342, !2343, !2346, !2348, !2349, !2350}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2339, file: !2340, line: 207, baseType: !374, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2339, file: !2340, line: 208, baseType: !2344, size: 256, offset: 64)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, size: 256, elements: !456)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2339, file: !2340, line: 209, baseType: !2347, size: 256, offset: 320)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !456)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2339, file: !2340, line: 213, baseType: !354, size: 64, offset: 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2339, file: !2340, line: 215, baseType: !1217, size: 256, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !2340, line: 216, baseType: !111, size: 8, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2331, file: !2326, line: 33, baseType: !67, size: 64, offset: 1536)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2331, file: !2326, line: 34, baseType: !67, size: 64, offset: 1600)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2331, file: !2326, line: 35, baseType: !1002, size: 8, offset: 1664)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2331, file: !2326, line: 36, baseType: !2355, size: 320, offset: 1728)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2356, line: 11, size: 320, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2357 = !{!2358, !2359, !2360, !2365}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2355, file: !2356, line: 16, baseType: !451, size: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2355, file: !2356, line: 17, baseType: !67, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2355, file: !2356, line: 18, baseType: !2361, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2355, file: !2356, line: 19, baseType: !498, size: 32, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2331, file: !2326, line: 37, baseType: !1118, size: 256, offset: 2048)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2331, file: !2326, line: 38, baseType: !371, size: 128, align: 64, offset: 2304)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2331, file: !2326, line: 39, baseType: !2369, size: 64, offset: 2432)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2326, line: 49, size: 768, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2370, file: !2326, line: 50, baseType: !87, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2370, file: !2326, line: 51, baseType: !2347, size: 256, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2370, file: !2326, line: 53, baseType: !2347, size: 256, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2370, file: !2326, line: 54, baseType: !67, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2370, file: !2326, line: 55, baseType: !2369, size: 64, offset: 640)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2370, file: !2326, line: 56, baseType: !50, size: 32, offset: 704)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2370, file: !2326, line: 57, baseType: !50, size: 32, offset: 736)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2331, file: !2326, line: 40, baseType: !67, size: 64, offset: 2496)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2331, file: !2326, line: 42, baseType: !50, size: 32, offset: 2560)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2331, file: !2326, line: 43, baseType: !2324, size: 64, offset: 2624)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2325, file: !2326, line: 99, baseType: !2383, offset: 128)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2384, line: 211, elements: !807)
!2384 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2325, file: !2326, line: 100, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2326, line: 63, size: 3008, elements: !2388)
!2388 = !{!2389, !2390, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2420}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2387, file: !2326, line: 64, baseType: !2369, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2387, file: !2326, line: 65, baseType: !2391, size: 192, offset: 64)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 192, elements: !430)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2387, file: !2326, line: 67, baseType: !50, size: 32, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2387, file: !2326, line: 68, baseType: !393, size: 256, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !2326, line: 69, baseType: !87, size: 32, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2387, file: !2326, line: 70, baseType: !393, size: 256, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2387, file: !2326, line: 71, baseType: !67, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2387, file: !2326, line: 72, baseType: !67, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2387, file: !2326, line: 73, baseType: !67, size: 64, offset: 1024)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2387, file: !2326, line: 74, baseType: !67, size: 64, offset: 1088)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2387, file: !2326, line: 75, baseType: !67, size: 64, offset: 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2387, file: !2326, line: 76, baseType: !67, size: 64, offset: 1216)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2387, file: !2326, line: 77, baseType: !67, size: 64, offset: 1280)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2387, file: !2326, line: 78, baseType: !67, size: 64, offset: 1344)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2387, file: !2326, line: 79, baseType: !1002, size: 8, offset: 1408)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2387, file: !2326, line: 80, baseType: !67, size: 64, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2387, file: !2326, line: 81, baseType: !393, size: 256, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2387, file: !2326, line: 82, baseType: !1157, size: 256, offset: 1792)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2387, file: !2326, line: 84, baseType: !77, size: 32, offset: 2048)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2387, file: !2326, line: 87, baseType: !67, size: 64, offset: 2112)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2387, file: !2326, line: 88, baseType: !67, size: 64, offset: 2176)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2387, file: !2326, line: 89, baseType: !2412, size: 704, offset: 2240)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1119, line: 111, size: 704, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2419}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2412, file: !1119, line: 112, baseType: !1118, size: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2412, file: !1119, line: 113, baseType: !2355, size: 320, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2412, file: !1119, line: 116, baseType: !2417, size: 64, offset: 576)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1119, line: 18, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2412, file: !1119, line: 117, baseType: !50, size: 32, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2387, file: !2326, line: 90, baseType: !2324, size: 64, offset: 2944)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1933, file: !24, line: 515, baseType: !2422, size: 64, offset: 8064)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2424, line: 117, size: 128, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2423, file: !2424, line: 118, baseType: !887, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2423, file: !2424, line: 119, baseType: !887, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2423, file: !2424, line: 120, baseType: !354, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1933, file: !24, line: 516, baseType: !19, size: 32, offset: 8128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1933, file: !24, line: 519, baseType: !19, size: 32, offset: 8160)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1933, file: !24, line: 520, baseType: !2432, size: 64, offset: 8192)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1933, file: !24, line: 523, baseType: !2434, size: 64, offset: 8256)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !241, line: 372, size: 1024, elements: !2437)
!2437 = !{!2438, !2439, !2479, !2539, !2620, !2621, !2624, !2629, !2630, !2631, !2632, !2634, !2637}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2436, file: !241, line: 373, baseType: !125, size: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2436, file: !241, line: 374, baseType: !2440, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !241, line: 291, size: 576, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446, !2450, !2473, !2477, !2478}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2441, file: !241, line: 292, baseType: !45, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2441, file: !241, line: 293, baseType: !48, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2441, file: !241, line: 295, baseType: !48, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2441, file: !241, line: 297, baseType: !2447, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!50, !2435, !240, !48}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2441, file: !241, line: 299, baseType: !2451, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !241, line: 275, size: 320, elements: !2453)
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2452, file: !241, line: 276, baseType: !45, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2452, file: !241, line: 277, baseType: !2456, size: 256, offset: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2452, file: !241, line: 277, size: 256, elements: !2457)
!2457 = !{!2458, !2469}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !241, line: 278, baseType: !2459, size: 256)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2456, file: !241, line: 278, size: 256, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2466, !2467, !2468}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2459, file: !241, line: 279, baseType: !45, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2459, file: !241, line: 280, baseType: !2320, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2459, file: !241, line: 281, baseType: !2320, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2459, file: !241, line: 282, baseType: !2465, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2459, file: !241, line: 283, baseType: !19, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2459, file: !241, line: 284, baseType: !2320, size: 32, offset: 160)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2459, file: !241, line: 285, baseType: !2320, size: 32, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2456, file: !241, line: 287, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!50, !2435}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2441, file: !241, line: 300, baseType: !2474, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!128, !2435}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2441, file: !241, line: 301, baseType: !125, size: 128, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2441, file: !241, line: 302, baseType: !2470, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2436, file: !241, line: 375, baseType: !2480, size: 64, offset: 192)
!2480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2436, file: !241, line: 375, size: 64, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2480, file: !241, line: 376, baseType: !45, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2480, file: !241, line: 378, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2319, line: 32, size: 640, elements: !2486)
!2486 = !{!2487, !2488, !2500, !2524, !2525, !2526, !2527, !2528, !2532}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2485, file: !2319, line: 33, baseType: !45, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2485, file: !2319, line: 34, baseType: !2489, size: 128, offset: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2424, line: 85, size: 128, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2489, file: !2424, line: 86, baseType: !77, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !2489, file: !2424, line: 101, baseType: !2493, size: 64, offset: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2489, file: !2424, line: 101, size: 64, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2493, file: !2424, line: 102, baseType: !67, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2493, file: !2424, line: 103, baseType: !2422, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2493, file: !2424, line: 104, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2424, line: 104, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2485, file: !2319, line: 35, baseType: !2501, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2503, line: 61, size: 128, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2502, file: !2503, line: 62, baseType: !48, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2503, line: 63, baseType: !2507, size: 64, offset: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2503, line: 63, size: 64, elements: !2508)
!2508 = !{!2509, !2510, !2523}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2507, file: !2503, line: 65, baseType: !67, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2507, file: !2503, line: 66, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2513, line: 169, size: 192, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2512, file: !2513, line: 170, baseType: !2511, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2512, file: !2513, line: 171, baseType: !1932, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2512, file: !2513, line: 172, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2503, line: 32, size: 64, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2519, file: !2503, line: 33, baseType: !887, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2519, file: !2503, line: 34, baseType: !887, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2507, file: !2503, line: 67, baseType: !2518, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2485, file: !2319, line: 36, baseType: !48, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2485, file: !2319, line: 37, baseType: !48, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2485, file: !2319, line: 38, baseType: !48, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2485, file: !2319, line: 39, baseType: !2228, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2485, file: !2319, line: 40, baseType: !2529, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{null}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2485, file: !2319, line: 41, baseType: !2533, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2319, line: 26, size: 192, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2534, file: !2319, line: 27, baseType: !48, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2534, file: !2319, line: 28, baseType: !48, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2534, file: !2319, line: 29, baseType: !50, size: 32, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2436, file: !241, line: 380, baseType: !2540, size: 256, offset: 256)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !241, line: 148, size: 256, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2540, file: !241, line: 149, baseType: !451, size: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2540, file: !241, line: 150, baseType: !50, size: 32, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2540, file: !241, line: 151, baseType: !2545, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !241, line: 141, size: 256, elements: !2547)
!2547 = !{!2548, !2617, !2618, !2619}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2546, file: !241, line: 142, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !241, line: 138, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!251, !2553, !50, !2616}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !241, line: 93, size: 67776, elements: !2555)
!2555 = !{!2556, !2559, !2562, !2565, !2566, !2567, !2568, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2596, !2599, !2600, !2601, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2554, file: !241, line: 94, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !241, line: 13, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2554, file: !241, line: 95, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !241, line: 15, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2554, file: !241, line: 96, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !241, line: 14, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2554, file: !241, line: 97, baseType: !48, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2554, file: !241, line: 98, baseType: !50, size: 32, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2554, file: !241, line: 99, baseType: !393, size: 256, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2554, file: !241, line: 100, baseType: !2569, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2572, line: 10, flags: DIFlagFwdDecl)
!2572 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2554, file: !241, line: 101, baseType: !67, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2554, file: !241, line: 102, baseType: !48, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2554, file: !241, line: 103, baseType: !19, size: 32, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2554, file: !241, line: 104, baseType: !1079, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2554, file: !241, line: 105, baseType: !19, size: 32, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2554, file: !241, line: 106, baseType: !354, size: 64, offset: 960)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2554, file: !241, line: 109, baseType: !2580, size: 33088, offset: 1024)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2581, line: 14, size: 33088, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2582 = !{!2583, !2587, !2594, !2595}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2580, file: !2581, line: 15, baseType: !2584, size: 32768)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2585)
!2585 = !{!2586}
!2586 = !DISubrange(count: 4096)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2580, file: !2581, line: 16, baseType: !2588, size: 192, offset: 32768)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2589, line: 18, size: 192, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2590 = !{!2591, !2592, !2593}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2588, file: !2589, line: 19, baseType: !1079, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2588, file: !2589, line: 20, baseType: !63, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2588, file: !2589, line: 21, baseType: !63, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2580, file: !2581, line: 17, baseType: !63, size: 64, offset: 32960)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2580, file: !2581, line: 18, baseType: !50, size: 32, offset: 33024)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2554, file: !241, line: 111, baseType: !2597, size: 64, offset: 34112)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !736, line: 913, baseType: !2598)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 64, elements: !314)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2554, file: !241, line: 114, baseType: !1002, size: 8, offset: 34176)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2554, file: !241, line: 117, baseType: !2580, size: 33088, offset: 34240)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2554, file: !241, line: 118, baseType: !2602, size: 64, offset: 67328)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !241, line: 79, size: 64, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2603, file: !241, line: 80, baseType: !54, size: 16)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2603, file: !241, line: 81, baseType: !115, size: 8, offset: 16)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2603, file: !241, line: 82, baseType: !115, size: 8, offset: 24)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2603, file: !241, line: 83, baseType: !50, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2554, file: !241, line: 119, baseType: !67, size: 64, offset: 67392)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2554, file: !241, line: 120, baseType: !50, size: 32, offset: 67456)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2554, file: !241, line: 121, baseType: !50, size: 32, offset: 67488)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2554, file: !241, line: 122, baseType: !50, size: 32, offset: 67520)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2554, file: !241, line: 123, baseType: !545, size: 64, offset: 67584)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2554, file: !241, line: 125, baseType: !69, size: 64, offset: 67648)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2554, file: !241, line: 126, baseType: !354, size: 64, offset: 67712)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2546, file: !241, line: 143, baseType: !2549, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2546, file: !241, line: 144, baseType: !2549, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2546, file: !241, line: 145, baseType: !2549, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2436, file: !241, line: 381, baseType: !1079, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2436, file: !241, line: 382, baseType: !2622, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !232, line: 821, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2436, file: !241, line: 387, baseType: !2625, size: 64, offset: 640)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2436, file: !241, line: 387, size: 64, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2625, file: !241, line: 388, baseType: !48, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2625, file: !241, line: 389, baseType: !77, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2436, file: !241, line: 391, baseType: !48, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2436, file: !241, line: 394, baseType: !50, size: 32, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2436, file: !241, line: 397, baseType: !50, size: 32, offset: 800)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2436, file: !241, line: 398, baseType: !2633, size: 64, offset: 832)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2436, file: !241, line: 399, baseType: !2635, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !241, line: 399, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2436, file: !241, line: 401, baseType: !2638, size: 64, offset: 960)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!50, !2435, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !232, line: 671, size: 8512, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !3179, !3180, !3181, !3182, !3188, !3189, !3190, !3191, !3192, !3276, !3277, !3278, !3279, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3399, !3400, !3401, !3402, !3403, !3404, !3419, !3420, !3421, !3422, !3423, !3429, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3446, !3617, !3618, !3619, !3620, !3633, !3634, !3635}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2642, file: !232, line: 678, baseType: !125, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2642, file: !232, line: 684, baseType: !125, size: 128, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2642, file: !232, line: 685, baseType: !125, size: 128, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2642, file: !232, line: 689, baseType: !537, size: 192, align: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2642, file: !232, line: 690, baseType: !545, size: 64, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2642, file: !232, line: 696, baseType: !125, size: 128, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2642, file: !232, line: 698, baseType: !451, size: 128, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2642, file: !232, line: 699, baseType: !125, size: 128, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2642, file: !232, line: 700, baseType: !50, size: 32, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2642, file: !232, line: 703, baseType: !50, size: 32, offset: 1056)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2642, file: !232, line: 705, baseType: !50, size: 32, offset: 1088)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2642, file: !232, line: 707, baseType: !19, size: 32, offset: 1120)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2642, file: !232, line: 708, baseType: !2641, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2642, file: !232, line: 714, baseType: !2658, size: 64, offset: 1216)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !232, line: 302, size: 2432, elements: !2660)
!2660 = !{!2661, !2662, !2663, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3086, !3087, !3088, !3089, !3090, !3094, !3095, !3099, !3103, !3104, !3108, !3112, !3113, !3114, !3118, !3122, !3126, !3127, !3128, !3132, !3135, !3139, !3144, !3145, !3165, !3169, !3170, !3171, !3175}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2659, file: !232, line: 303, baseType: !125, size: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2659, file: !232, line: 305, baseType: !1932, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2659, file: !232, line: 306, baseType: !2664, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !179, line: 705, size: 5824, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2672, !2673, !2726, !2796, !2797, !2798, !2799, !2800, !2807, !2899, !2912, !2922, !2926, !2928, !2929, !2930, !2934, !2941, !2942, !2945, !2948, !2952, !2955, !2956, !2957, !2958, !2959, !2960, !2990, !2991, !2992, !2995, !2998, !3007, !3008, !3009, !3010, !3011, !3012}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2665, file: !179, line: 706, baseType: !1945, size: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2665, file: !179, line: 707, baseType: !2664, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2665, file: !179, line: 709, baseType: !2670, size: 64, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !179, line: 37, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2665, file: !179, line: 711, baseType: !45, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !179, line: 712, baseType: !2674, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !179, line: 89, size: 384, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2686, !2691, !2695}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2676, file: !179, line: 90, baseType: !45, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2676, file: !179, line: 91, baseType: !2028, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2676, file: !179, line: 92, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!50, !2684, !1981}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2676, file: !179, line: 93, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!1079, !2684, !2690, !1182, !1183}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2676, file: !179, line: 95, baseType: !2692, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2664}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2676, file: !179, line: 97, baseType: !2696, size: 64, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !186, line: 286, size: 1472, elements: !2699)
!2699 = !{!2700, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2698, file: !186, line: 287, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!50, !2664}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2698, file: !186, line: 288, baseType: !2692, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2698, file: !186, line: 289, baseType: !2701, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2698, file: !186, line: 290, baseType: !2701, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2698, file: !186, line: 291, baseType: !2701, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2698, file: !186, line: 292, baseType: !2701, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2698, file: !186, line: 293, baseType: !2701, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2698, file: !186, line: 294, baseType: !2701, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2698, file: !186, line: 295, baseType: !2701, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2698, file: !186, line: 296, baseType: !2701, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2698, file: !186, line: 297, baseType: !2701, size: 64, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2698, file: !186, line: 298, baseType: !2701, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2698, file: !186, line: 299, baseType: !2701, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2698, file: !186, line: 300, baseType: !2701, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2698, file: !186, line: 301, baseType: !2701, size: 64, offset: 896)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2698, file: !186, line: 302, baseType: !2701, size: 64, offset: 960)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2698, file: !186, line: 303, baseType: !2701, size: 64, offset: 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2698, file: !186, line: 304, baseType: !2701, size: 64, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2698, file: !186, line: 305, baseType: !2701, size: 64, offset: 1152)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2698, file: !186, line: 306, baseType: !2701, size: 64, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2698, file: !186, line: 307, baseType: !2701, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2698, file: !186, line: 308, baseType: !2701, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2698, file: !186, line: 309, baseType: !2701, size: 64, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2665, file: !179, line: 714, baseType: !2727, size: 64, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2730, line: 80, size: 1344, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2795}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2729, file: !2730, line: 81, baseType: !45, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2729, file: !2730, line: 82, baseType: !45, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2729, file: !2730, line: 83, baseType: !2028, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2729, file: !2730, line: 84, baseType: !2028, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2729, file: !2730, line: 85, baseType: !2028, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2729, file: !2730, line: 87, baseType: !2738, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!50, !2664, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !173, line: 96, size: 1152, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2754, !2758, !2759, !2760, !2761, !2762, !2770, !2771, !2772, !2773, !2774, !2775}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2742, file: !173, line: 97, baseType: !45, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2742, file: !173, line: 98, baseType: !2727, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2742, file: !173, line: 100, baseType: !1932, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2742, file: !173, line: 101, baseType: !45, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2742, file: !173, line: 103, baseType: !1002, size: 8, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2742, file: !173, line: 104, baseType: !172, size: 32, offset: 288)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2742, file: !173, line: 106, baseType: !2751, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !173, line: 106, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2742, file: !173, line: 107, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !173, line: 107, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2742, file: !173, line: 109, baseType: !2701, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2742, file: !173, line: 110, baseType: !2692, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2742, file: !173, line: 111, baseType: !2701, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2742, file: !173, line: 112, baseType: !2692, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2742, file: !173, line: 113, baseType: !2763, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!50, !2664, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !186, line: 60, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !186, line: 58, size: 32, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2767, file: !186, line: 59, baseType: !50, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2742, file: !173, line: 114, baseType: !2701, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2742, file: !173, line: 115, baseType: !2028, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2742, file: !173, line: 116, baseType: !2028, size: 64, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2742, file: !173, line: 118, baseType: !2696, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2742, file: !173, line: 119, baseType: !2692, size: 64, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2742, file: !173, line: 121, baseType: !2776, size: 64, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !173, line: 121, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2729, file: !2730, line: 88, baseType: !2681, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2729, file: !2730, line: 89, baseType: !2701, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2729, file: !2730, line: 90, baseType: !2692, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2729, file: !2730, line: 91, baseType: !2692, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2729, file: !2730, line: 92, baseType: !2692, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2729, file: !2730, line: 94, baseType: !2701, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2729, file: !2730, line: 95, baseType: !2701, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2729, file: !2730, line: 97, baseType: !2763, size: 64, offset: 832)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2729, file: !2730, line: 98, baseType: !2701, size: 64, offset: 896)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2729, file: !2730, line: 100, baseType: !2701, size: 64, offset: 960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2729, file: !2730, line: 102, baseType: !2701, size: 64, offset: 1024)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2729, file: !2730, line: 103, baseType: !2692, size: 64, offset: 1088)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2729, file: !2730, line: 105, baseType: !2696, size: 64, offset: 1152)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2729, file: !2730, line: 107, baseType: !2792, size: 64, offset: 1216)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2730, line: 107, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2729, file: !2730, line: 109, baseType: !1002, size: 8, offset: 1280)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2665, file: !179, line: 715, baseType: !2741, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2665, file: !179, line: 717, baseType: !48, size: 64, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2665, file: !179, line: 719, baseType: !48, size: 64, offset: 960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2665, file: !179, line: 721, baseType: !393, size: 256, offset: 1024)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2665, file: !179, line: 725, baseType: !2801, size: 448, offset: 1280)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !179, line: 517, size: 448, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2801, file: !179, line: 518, baseType: !125, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2801, file: !179, line: 519, baseType: !125, size: 128, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2801, file: !179, line: 520, baseType: !125, size: 128, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2801, file: !179, line: 521, baseType: !178, size: 32, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2665, file: !179, line: 726, baseType: !2808, size: 2496, offset: 1728)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !186, line: 663, size: 2496, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2892, !2896}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2808, file: !186, line: 664, baseType: !2766, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2808, file: !186, line: 665, baseType: !19, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2808, file: !186, line: 666, baseType: !19, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2808, file: !186, line: 667, baseType: !1002, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2808, file: !186, line: 668, baseType: !1002, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2808, file: !186, line: 669, baseType: !1002, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2808, file: !186, line: 670, baseType: !1002, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2808, file: !186, line: 671, baseType: !1002, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2808, file: !186, line: 672, baseType: !1002, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2808, file: !186, line: 673, baseType: !1002, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2808, file: !186, line: 674, baseType: !1002, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2808, file: !186, line: 675, baseType: !498, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !186, line: 676, baseType: !87, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2808, file: !186, line: 678, baseType: !125, size: 128, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2808, file: !186, line: 679, baseType: !1157, size: 256, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2808, file: !186, line: 680, baseType: !2826, size: 64, offset: 512)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2828, line: 43, size: 1536, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2827, file: !2828, line: 44, baseType: !45, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2827, file: !2828, line: 45, baseType: !50, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2827, file: !2828, line: 46, baseType: !125, size: 128, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2827, file: !2828, line: 47, baseType: !87, size: 32, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2827, file: !2828, line: 48, baseType: !2835, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !186, line: 629, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2827, file: !2828, line: 49, baseType: !2355, size: 320, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2827, file: !2828, line: 50, baseType: !67, size: 64, offset: 704)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2827, file: !2828, line: 51, baseType: !616, size: 64, offset: 768)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2827, file: !2828, line: 52, baseType: !616, size: 64, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2827, file: !2828, line: 53, baseType: !616, size: 64, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2827, file: !2828, line: 54, baseType: !616, size: 64, offset: 960)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2827, file: !2828, line: 55, baseType: !616, size: 64, offset: 1024)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2827, file: !2828, line: 56, baseType: !67, size: 64, offset: 1088)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2827, file: !2828, line: 57, baseType: !67, size: 64, offset: 1152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2827, file: !2828, line: 58, baseType: !67, size: 64, offset: 1216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2827, file: !2828, line: 59, baseType: !67, size: 64, offset: 1280)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2827, file: !2828, line: 60, baseType: !67, size: 64, offset: 1344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2827, file: !2828, line: 61, baseType: !2664, size: 64, offset: 1408)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2827, file: !2828, line: 62, baseType: !1002, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2827, file: !2828, line: 63, baseType: !1002, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2808, file: !186, line: 681, baseType: !1002, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2808, file: !186, line: 682, baseType: !1002, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2808, file: !186, line: 683, baseType: !1002, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2808, file: !186, line: 684, baseType: !19, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2808, file: !186, line: 685, baseType: !19, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2808, file: !186, line: 690, baseType: !608, size: 512, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2808, file: !186, line: 691, baseType: !545, size: 64, offset: 1152)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2808, file: !186, line: 692, baseType: !1118, size: 256, offset: 1216)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2808, file: !186, line: 693, baseType: !82, size: 192, offset: 1472)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2808, file: !186, line: 694, baseType: !2835, size: 64, offset: 1664)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2808, file: !186, line: 695, baseType: !77, size: 32, offset: 1728)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2808, file: !186, line: 696, baseType: !77, size: 32, offset: 1760)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2808, file: !186, line: 697, baseType: !19, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2808, file: !186, line: 698, baseType: !19, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2808, file: !186, line: 699, baseType: !19, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2808, file: !186, line: 700, baseType: !19, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2808, file: !186, line: 701, baseType: !19, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2808, file: !186, line: 702, baseType: !19, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2808, file: !186, line: 703, baseType: !1002, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2808, file: !186, line: 704, baseType: !19, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2808, file: !186, line: 705, baseType: !19, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2808, file: !186, line: 706, baseType: !19, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2808, file: !186, line: 707, baseType: !19, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2808, file: !186, line: 708, baseType: !19, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2808, file: !186, line: 709, baseType: !19, size: 32, offset: 1824)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2808, file: !186, line: 710, baseType: !185, size: 32, offset: 1856)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2808, file: !186, line: 711, baseType: !193, size: 32, offset: 1888)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2808, file: !186, line: 712, baseType: !193, size: 32, offset: 1920)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2808, file: !186, line: 713, baseType: !50, size: 32, offset: 1952)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2808, file: !186, line: 714, baseType: !50, size: 32, offset: 1984)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2808, file: !186, line: 715, baseType: !545, size: 64, offset: 2048)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2808, file: !186, line: 716, baseType: !545, size: 64, offset: 2112)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2808, file: !186, line: 717, baseType: !545, size: 64, offset: 2176)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2808, file: !186, line: 718, baseType: !545, size: 64, offset: 2240)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2808, file: !186, line: 720, baseType: !2887, size: 64, offset: 2304)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !186, line: 632, size: 64, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2888, file: !186, line: 633, baseType: !87, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2888, file: !186, line: 634, baseType: !19, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2808, file: !186, line: 721, baseType: !2893, size: 64, offset: 2368)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2664, !887}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2808, file: !186, line: 722, baseType: !2897, size: 64, offset: 2432)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !186, line: 722, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2665, file: !179, line: 727, baseType: !2900, size: 64, offset: 4224)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !186, line: 742, size: 1792, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2909, !2910, !2911}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2901, file: !186, line: 743, baseType: !2698, size: 1472)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2901, file: !186, line: 744, baseType: !2701, size: 64, offset: 1472)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2901, file: !186, line: 745, baseType: !2906, size: 64, offset: 1536)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2664, !1002}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2901, file: !186, line: 746, baseType: !2701, size: 64, offset: 1600)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2901, file: !186, line: 747, baseType: !2692, size: 64, offset: 1664)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2901, file: !186, line: 748, baseType: !2692, size: 64, offset: 1728)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2665, file: !179, line: 736, baseType: !2913, size: 128, offset: 4288)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !179, line: 529, size: 128, elements: !2914)
!2914 = !{!2915, !2919}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2913, file: !179, line: 531, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2918, line: 13, flags: DIFlagFwdDecl)
!2918 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2913, file: !179, line: 532, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !179, line: 49, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2665, file: !179, line: 738, baseType: !2923, size: 64, offset: 4416)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !179, line: 738, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2665, file: !179, line: 740, baseType: !2927, size: 64, offset: 4480)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2665, file: !179, line: 741, baseType: !545, size: 64, offset: 4544)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2665, file: !179, line: 746, baseType: !545, size: 64, offset: 4608)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2665, file: !179, line: 747, baseType: !2931, size: 64, offset: 4672)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2933)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !179, line: 747, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2665, file: !179, line: 749, baseType: !2935, size: 64, offset: 4736)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !179, line: 428, size: 128, elements: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2936, file: !179, line: 433, baseType: !19, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2936, file: !179, line: 434, baseType: !19, size: 32, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2936, file: !179, line: 435, baseType: !67, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2665, file: !179, line: 751, baseType: !125, size: 128, offset: 4800)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2665, file: !179, line: 762, baseType: !2943, size: 64, offset: 4928)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !179, line: 762, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2665, file: !179, line: 770, baseType: !2946, offset: 4992)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2947, line: 5, elements: !807)
!2947 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2665, file: !179, line: 772, baseType: !2949, size: 64, offset: 4992)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2951, line: 18, flags: DIFlagFwdDecl)
!2951 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2665, file: !179, line: 773, baseType: !2953, size: 64, offset: 5056)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2730, line: 22, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2665, file: !179, line: 776, baseType: !50, size: 32, offset: 5120)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2665, file: !179, line: 778, baseType: !1902, size: 32, offset: 5152)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2665, file: !179, line: 779, baseType: !498, size: 32, offset: 5184)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2665, file: !179, line: 781, baseType: !87, size: 32, offset: 5216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2665, file: !179, line: 782, baseType: !125, size: 128, offset: 5248)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2665, file: !179, line: 784, baseType: !2961, size: 64, offset: 5376)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2964, line: 52, size: 768, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2974, !2978, !2979, !2980, !2981, !2985, !2989}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2963, file: !2964, line: 53, baseType: !45, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2963, file: !2964, line: 55, baseType: !2028, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2963, file: !2964, line: 56, baseType: !2028, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2963, file: !2964, line: 58, baseType: !2681, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2963, file: !2964, line: 59, baseType: !2971, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!1079, !2684, !2690}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2963, file: !2964, line: 61, baseType: !2975, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2961}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2963, file: !2964, line: 62, baseType: !2692, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2963, file: !2964, line: 64, baseType: !2701, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2963, file: !2964, line: 66, baseType: !2069, size: 64, offset: 512)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2963, file: !2964, line: 67, baseType: !2982, size: 64, offset: 576)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!919, !2684}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2963, file: !2964, line: 69, baseType: !2986, size: 64, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2684, !1182, !1183}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2963, file: !2964, line: 71, baseType: !2696, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2665, file: !179, line: 785, baseType: !2028, size: 64, offset: 5440)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2665, file: !179, line: 787, baseType: !2692, size: 64, offset: 5504)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2665, file: !179, line: 788, baseType: !2993, size: 64, offset: 5568)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !179, line: 46, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2665, file: !179, line: 789, baseType: !2996, size: 64, offset: 5632)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !179, line: 48, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2665, file: !179, line: 791, baseType: !2999, size: 64, offset: 5696)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !179, line: 597, size: 128, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3000, file: !179, line: 598, baseType: !206, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3000, file: !179, line: 599, baseType: !215, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3000, file: !179, line: 600, baseType: !220, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3000, file: !179, line: 601, baseType: !1002, size: 8, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3000, file: !179, line: 602, baseType: !1002, size: 8, offset: 104)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2665, file: !179, line: 793, baseType: !225, size: 32, offset: 5760)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2665, file: !179, line: 795, baseType: !1002, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2665, file: !179, line: 796, baseType: !1002, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2665, file: !179, line: 797, baseType: !1002, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2665, file: !179, line: 798, baseType: !1002, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2665, file: !179, line: 799, baseType: !1002, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2659, file: !232, line: 307, baseType: !2664, size: 64, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2659, file: !232, line: 308, baseType: !2028, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2659, file: !232, line: 309, baseType: !2028, size: 64, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2659, file: !232, line: 310, baseType: !45, size: 64, offset: 448)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2659, file: !232, line: 311, baseType: !50, size: 32, offset: 512)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2659, file: !232, line: 316, baseType: !50, size: 32, offset: 544)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2659, file: !232, line: 318, baseType: !1339, size: 64, offset: 576)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2659, file: !232, line: 319, baseType: !3021, size: 64, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !232, line: 977, size: 1856, elements: !3023)
!3023 = !{!3024, !3076, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3022, file: !232, line: 978, baseType: !3025, size: 896)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !232, line: 873, size: 896, elements: !3026)
!3026 = !{!3027, !3028, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3025, file: !232, line: 874, baseType: !2658, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3025, file: !232, line: 875, baseType: !3029, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !232, line: 912, size: 1792, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3030, file: !232, line: 917, baseType: !398, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3030, file: !232, line: 923, baseType: !393, size: 256, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3030, file: !232, line: 925, baseType: !125, size: 128, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3030, file: !232, line: 926, baseType: !3036, size: 128, offset: 448)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !232, line: 901, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3036, file: !232, line: 902, baseType: !675, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3036, file: !232, line: 903, baseType: !545, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3030, file: !232, line: 927, baseType: !3036, size: 128, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3030, file: !232, line: 928, baseType: !125, size: 128, offset: 704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3030, file: !232, line: 930, baseType: !50, size: 32, offset: 832)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3030, file: !232, line: 931, baseType: !50, size: 32, offset: 864)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3030, file: !232, line: 932, baseType: !50, size: 32, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3030, file: !232, line: 934, baseType: !50, size: 32, offset: 928)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3030, file: !232, line: 935, baseType: !50, size: 32, offset: 960)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3030, file: !232, line: 936, baseType: !50, size: 32, offset: 992)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3030, file: !232, line: 937, baseType: !50, size: 32, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3030, file: !232, line: 939, baseType: !438, size: 32, offset: 1056)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3030, file: !232, line: 940, baseType: !487, size: 64, offset: 1088)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3030, file: !232, line: 945, baseType: !545, size: 64, offset: 1152)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3030, file: !232, line: 946, baseType: !545, size: 64, offset: 1216)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3030, file: !232, line: 947, baseType: !545, size: 64, offset: 1280)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3030, file: !232, line: 953, baseType: !3029, size: 64, offset: 1344)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3030, file: !232, line: 954, baseType: !545, size: 64, offset: 1408)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3030, file: !232, line: 955, baseType: !545, size: 64, offset: 1472)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3030, file: !232, line: 956, baseType: !50, size: 32, offset: 1536)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3030, file: !232, line: 958, baseType: !50, size: 32, offset: 1568)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3030, file: !232, line: 960, baseType: !371, size: 128, align: 64, offset: 1600)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3030, file: !232, line: 968, baseType: !3061, size: 64, offset: 1728)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3062, line: 12, baseType: !3063)
!3062 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3062, line: 10, size: 64, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3063, file: !3062, line: 11, baseType: !384, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3025, file: !232, line: 877, baseType: !125, size: 128, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3025, file: !232, line: 879, baseType: !125, size: 128, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3025, file: !232, line: 880, baseType: !125, size: 128, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3025, file: !232, line: 883, baseType: !19, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3025, file: !232, line: 885, baseType: !19, size: 32, offset: 544)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3025, file: !232, line: 886, baseType: !19, size: 32, offset: 576)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3025, file: !232, line: 888, baseType: !77, size: 32, offset: 608)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3025, file: !232, line: 889, baseType: !371, size: 128, align: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3025, file: !232, line: 891, baseType: !48, size: 64, offset: 768)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3025, file: !232, line: 898, baseType: !50, size: 32, offset: 832)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3022, file: !232, line: 979, baseType: !3077, size: 64, offset: 896)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3022, file: !232, line: 981, baseType: !125, size: 128, offset: 960)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3022, file: !232, line: 982, baseType: !50, size: 32, offset: 1088)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3022, file: !232, line: 984, baseType: !50, size: 32, offset: 1120)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3022, file: !232, line: 985, baseType: !50, size: 32, offset: 1152)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3022, file: !232, line: 987, baseType: !398, size: 32, offset: 1184)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3022, file: !232, line: 988, baseType: !608, size: 512, offset: 1216)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3022, file: !232, line: 989, baseType: !616, size: 64, offset: 1728)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3022, file: !232, line: 990, baseType: !19, size: 32, offset: 1792)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2659, file: !232, line: 320, baseType: !77, size: 32, offset: 704)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2659, file: !232, line: 321, baseType: !50, size: 32, offset: 736)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2659, file: !232, line: 322, baseType: !50, size: 32, offset: 768)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2659, file: !232, line: 325, baseType: !19, size: 32, offset: 800)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2659, file: !232, line: 331, baseType: !3091, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !2658}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2659, file: !232, line: 332, baseType: !3091, size: 64, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2659, file: !232, line: 350, baseType: !3096, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!50, !2641}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2659, file: !232, line: 356, baseType: !3100, size: 64, offset: 1024)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !2641, !786}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2659, file: !232, line: 357, baseType: !3100, size: 64, offset: 1088)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2659, file: !232, line: 385, baseType: !3105, size: 64, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!50, !2641, !50}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2659, file: !232, line: 386, baseType: !3109, size: 64, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2641, !50}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2659, file: !232, line: 406, baseType: !3109, size: 64, offset: 1280)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2659, file: !232, line: 407, baseType: !3109, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2659, file: !232, line: 415, baseType: !3115, size: 64, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !2641}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2659, file: !232, line: 427, baseType: !3119, size: 64, offset: 1472)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !2658, !19}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2659, file: !232, line: 436, baseType: !3123, size: 64, offset: 1536)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!50, !2658}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2659, file: !232, line: 443, baseType: !3091, size: 64, offset: 1600)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2659, file: !232, line: 450, baseType: !3096, size: 64, offset: 1664)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2659, file: !232, line: 455, baseType: !3129, size: 64, offset: 1728)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3077, !1002}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2659, file: !232, line: 461, baseType: !3133, size: 64, offset: 1792)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !289, line: 325, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2659, file: !232, line: 469, baseType: !3136, size: 64, offset: 1856)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !3077, !3077}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2659, file: !232, line: 476, baseType: !3140, size: 64, offset: 1920)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!48, !2641, !3143, !50, !1002}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2659, file: !232, line: 483, baseType: !2093, size: 64, offset: 1984)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2659, file: !232, line: 494, baseType: !3146, size: 64, offset: 2048)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!354, !2641, !3149, !67}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !232, line: 1014, size: 448, elements: !3151)
!3151 = !{!3152, !3153, !3156, !3157, !3158, !3159, !3164}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3150, file: !232, line: 1015, baseType: !2641, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3150, file: !232, line: 1016, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !232, line: 641, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3150, file: !232, line: 1017, baseType: !67, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3150, file: !232, line: 1018, baseType: !67, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3150, file: !232, line: 1019, baseType: !545, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !232, line: 1020, baseType: !3160, size: 64, offset: 320)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !232, line: 1020, size: 64, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3160, file: !232, line: 1021, baseType: !48, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3160, file: !232, line: 1022, baseType: !67, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3150, file: !232, line: 1024, baseType: !50, size: 32, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2659, file: !232, line: 506, baseType: !3166, size: 64, offset: 2112)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!50, !128}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2659, file: !232, line: 520, baseType: !3115, size: 64, offset: 2176)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2659, file: !232, line: 530, baseType: !3096, size: 64, offset: 2240)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2659, file: !232, line: 537, baseType: !3172, size: 64, offset: 2304)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!1002, !2658, !50}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2659, file: !232, line: 542, baseType: !3176, size: 64, offset: 2368)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!50, !2641, !545}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2642, file: !232, line: 715, baseType: !48, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2642, file: !232, line: 717, baseType: !231, size: 32, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2642, file: !232, line: 718, baseType: !19, size: 32, offset: 1376)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2642, file: !232, line: 719, baseType: !3183, size: 64, offset: 1408)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3184, line: 26, baseType: !3185)
!3184 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3184, line: 24, size: 64, elements: !3186)
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3185, file: !3184, line: 25, baseType: !3061, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2642, file: !232, line: 720, baseType: !386, size: 64, offset: 1472)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2642, file: !232, line: 728, baseType: !545, size: 64, offset: 1536)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2642, file: !232, line: 729, baseType: !545, size: 64, offset: 1600)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2642, file: !232, line: 730, baseType: !545, size: 64, offset: 1664)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2642, file: !232, line: 732, baseType: !3193, size: 1088, offset: 1728)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3194, line: 385, size: 1088, elements: !3195)
!3194 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3195 = !{!3196, !3197, !3198, !3199, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3249, !3250, !3257, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3193, file: !3194, line: 390, baseType: !322, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3193, file: !3194, line: 395, baseType: !322, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3193, file: !3194, line: 400, baseType: !336, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3194, line: 402, baseType: !3200, size: 64, offset: 128)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3194, line: 402, size: 64, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3200, file: !3194, line: 403, baseType: !336, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3200, file: !3194, line: 404, baseType: !336, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3193, file: !3194, line: 407, baseType: !336, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3193, file: !3194, line: 408, baseType: !336, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3193, file: !3194, line: 410, baseType: !336, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3193, file: !3194, line: 411, baseType: !336, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3193, file: !3194, line: 412, baseType: !336, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3193, file: !3194, line: 413, baseType: !336, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3193, file: !3194, line: 414, baseType: !336, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3193, file: !3194, line: 415, baseType: !336, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3193, file: !3194, line: 416, baseType: !336, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3193, file: !3194, line: 417, baseType: !336, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3193, file: !3194, line: 418, baseType: !336, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3193, file: !3194, line: 419, baseType: !336, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3193, file: !3194, line: 420, baseType: !336, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3193, file: !3194, line: 421, baseType: !336, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3193, file: !3194, line: 422, baseType: !336, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3193, file: !3194, line: 423, baseType: !336, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3193, file: !3194, line: 424, baseType: !336, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3193, file: !3194, line: 435, baseType: !336, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3193, file: !3194, line: 436, baseType: !336, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3193, file: !3194, line: 437, baseType: !336, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3193, file: !3194, line: 439, baseType: !336, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3193, file: !3194, line: 440, baseType: !336, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3193, file: !3194, line: 442, baseType: !336, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3193, file: !3194, line: 443, baseType: !336, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3193, file: !3194, line: 444, baseType: !336, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3193, file: !3194, line: 445, baseType: !336, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3193, file: !3194, line: 446, baseType: !336, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3193, file: !3194, line: 447, baseType: !336, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3193, file: !3194, line: 448, baseType: !336, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3193, file: !3194, line: 449, baseType: !336, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3193, file: !3194, line: 450, baseType: !336, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3193, file: !3194, line: 451, baseType: !336, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3193, file: !3194, line: 452, baseType: !336, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3193, file: !3194, line: 453, baseType: !336, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3193, file: !3194, line: 454, baseType: !336, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3193, file: !3194, line: 455, baseType: !336, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3193, file: !3194, line: 456, baseType: !336, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3193, file: !3194, line: 457, baseType: !336, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3193, file: !3194, line: 458, baseType: !336, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3193, file: !3194, line: 459, baseType: !336, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3194, line: 461, baseType: !3245, size: 32, offset: 384)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3194, line: 461, size: 32, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3245, file: !3194, line: 462, baseType: !322, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3245, file: !3194, line: 463, baseType: !322, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3193, file: !3194, line: 466, baseType: !322, size: 32, offset: 416)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3194, line: 467, baseType: !3251, size: 64, offset: 448)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3194, line: 467, size: 64, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3256}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3251, file: !3194, line: 468, baseType: !336, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3251, file: !3194, line: 469, baseType: !336, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3251, file: !3194, line: 470, baseType: !336, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3251, file: !3194, line: 471, baseType: !336, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3194, line: 473, baseType: !3258, size: 64, offset: 512)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3194, line: 473, size: 64, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3258, file: !3194, line: 474, baseType: !336, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3258, file: !3194, line: 475, baseType: !336, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3258, file: !3194, line: 476, baseType: !336, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3258, file: !3194, line: 477, baseType: !336, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3193, file: !3194, line: 479, baseType: !336, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3193, file: !3194, line: 485, baseType: !336, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3193, file: !3194, line: 490, baseType: !322, size: 32, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3193, file: !3194, line: 492, baseType: !324, size: 32, offset: 736)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3193, file: !3194, line: 501, baseType: !336, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3193, file: !3194, line: 506, baseType: !322, size: 32, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3193, file: !3194, line: 507, baseType: !122, size: 16, offset: 864)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3193, file: !3194, line: 508, baseType: !122, size: 16, offset: 880)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3193, file: !3194, line: 509, baseType: !322, size: 32, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3193, file: !3194, line: 510, baseType: !322, size: 32, offset: 928)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3193, file: !3194, line: 518, baseType: !336, size: 64, offset: 960)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3193, file: !3194, line: 520, baseType: !336, size: 64, offset: 1024)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2642, file: !232, line: 733, baseType: !121, size: 16, offset: 2816)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2642, file: !232, line: 734, baseType: !121, size: 16, offset: 2832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2642, file: !232, line: 735, baseType: !121, size: 16, offset: 2848)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2642, file: !232, line: 736, baseType: !3280, size: 1536, offset: 2880)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !232, line: 155, size: 1536, elements: !3281)
!3281 = !{!3282, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3366, !3367, !3368, !3369}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !232, line: 157, baseType: !3283, size: 768)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !232, line: 157, size: 768, elements: !3284)
!3284 = !{!3285, !3304, !3308, !3312, !3317, !3339}
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 158, baseType: !3286, size: 768)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 158, size: 768, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3303}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3286, file: !232, line: 159, baseType: !545, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3286, file: !232, line: 160, baseType: !545, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3286, file: !232, line: 161, baseType: !67, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3286, file: !232, line: 162, baseType: !67, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3286, file: !232, line: 163, baseType: !50, size: 32, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3286, file: !232, line: 164, baseType: !50, size: 32, offset: 288)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3286, file: !232, line: 165, baseType: !50, size: 32, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3286, file: !232, line: 166, baseType: !50, size: 32, offset: 352)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3286, file: !232, line: 168, baseType: !3297, size: 192, offset: 384)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !232, line: 134, size: 192, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3297, file: !232, line: 135, baseType: !545, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3297, file: !232, line: 136, baseType: !19, size: 32, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3297, file: !232, line: 137, baseType: !50, size: 32, offset: 96)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3297, file: !232, line: 138, baseType: !50, size: 32, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3286, file: !232, line: 169, baseType: !3297, size: 192, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 171, baseType: !3305, size: 512)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 171, size: 512, elements: !3306)
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3305, file: !232, line: 172, baseType: !608, size: 512)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 174, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 174, size: 128, elements: !3310)
!3310 = !{!3311}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3309, file: !232, line: 176, baseType: !125, size: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 178, baseType: !3313, size: 128)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 178, size: 128, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3313, file: !232, line: 179, baseType: !545, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3313, file: !232, line: 180, baseType: !545, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 183, baseType: !3318, size: 320)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 183, size: 320, elements: !3319)
!3319 = !{!3320, !3328}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3318, file: !232, line: 189, baseType: !3321, size: 192)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3322, line: 14, size: 192, elements: !3323)
!3322 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3323 = !{!3324, !3325, !3326, !3327}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3321, file: !3322, line: 15, baseType: !67, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3321, file: !3322, line: 16, baseType: !67, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3321, file: !3322, line: 17, baseType: !111, size: 8, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3321, file: !3322, line: 18, baseType: !111, size: 8, offset: 136)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3318, file: !232, line: 190, baseType: !3329, size: 128, offset: 192)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3330, line: 21, size: 128, elements: !3331)
!3330 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3331 = !{!3332, !3337}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3329, file: !3330, line: 22, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3330, line: 17, size: 64, elements: !3334)
!3334 = !{!3335}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3333, file: !3330, line: 18, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3329, file: !3330, line: 23, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !232, line: 193, baseType: !3340, size: 192)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !232, line: 193, size: 192, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3340, file: !232, line: 194, baseType: !111, size: 8)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3340, file: !232, line: 195, baseType: !111, size: 8, offset: 8)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3340, file: !232, line: 196, baseType: !121, size: 16, offset: 16)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3340, file: !232, line: 197, baseType: !545, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3340, file: !232, line: 198, baseType: !545, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3280, file: !232, line: 205, baseType: !487, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3280, file: !232, line: 211, baseType: !48, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3280, file: !232, line: 214, baseType: !67, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3280, file: !232, line: 223, baseType: !50, size: 32, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3280, file: !232, line: 229, baseType: !3183, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3280, file: !232, line: 234, baseType: !545, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !232, line: 236, baseType: !3354, size: 128, offset: 1152)
!3354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !232, line: 236, size: 128, elements: !3355)
!3355 = !{!3356, !3361}
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !232, line: 237, baseType: !3357, size: 128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !232, line: 237, size: 128, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3357, file: !232, line: 241, baseType: !545, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3357, file: !232, line: 249, baseType: !3183, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !232, line: 251, baseType: !3362, size: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !232, line: 251, size: 128, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3362, file: !232, line: 252, baseType: !545, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3362, file: !232, line: 253, baseType: !545, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3280, file: !232, line: 261, baseType: !545, size: 64, offset: 1280)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3280, file: !232, line: 262, baseType: !545, size: 64, offset: 1344)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3280, file: !232, line: 268, baseType: !545, size: 64, offset: 1408)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3280, file: !232, line: 269, baseType: !545, size: 64, offset: 1472)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2642, file: !232, line: 738, baseType: !3029, size: 64, offset: 4416)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2642, file: !232, line: 744, baseType: !3077, size: 64, offset: 4480)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2642, file: !232, line: 745, baseType: !384, size: 64, offset: 4544)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2642, file: !232, line: 751, baseType: !386, size: 64, offset: 4608)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2642, file: !232, line: 752, baseType: !386, size: 64, offset: 4672)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2642, file: !232, line: 757, baseType: !393, size: 256, offset: 4736)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2642, file: !232, line: 758, baseType: !125, size: 128, offset: 4992)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2642, file: !232, line: 759, baseType: !2641, size: 64, offset: 5120)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2642, file: !232, line: 761, baseType: !50, size: 32, offset: 5184)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2642, file: !232, line: 762, baseType: !50, size: 32, offset: 5216)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2642, file: !232, line: 764, baseType: !125, size: 128, offset: 5248)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2642, file: !232, line: 765, baseType: !487, size: 64, offset: 5376)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2642, file: !232, line: 768, baseType: !393, size: 256, offset: 5440)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2642, file: !232, line: 769, baseType: !77, size: 32, offset: 5696)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2642, file: !232, line: 771, baseType: !3154, size: 64, offset: 5760)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2642, file: !232, line: 772, baseType: !125, size: 128, offset: 5824)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2642, file: !232, line: 773, baseType: !67, size: 64, offset: 5952)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2642, file: !232, line: 774, baseType: !50, size: 32, offset: 6016)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2642, file: !232, line: 777, baseType: !82, size: 192, offset: 6080)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2642, file: !232, line: 778, baseType: !3390, size: 64, offset: 6272)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1083, size: 384, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3391, file: !31, line: 1084, baseType: !411, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3391, file: !31, line: 1085, baseType: !50, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3391, file: !31, line: 1086, baseType: !50, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3391, file: !31, line: 1087, baseType: !3390, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3391, file: !31, line: 1088, baseType: !358, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3391, file: !31, line: 1089, baseType: !371, size: 128, align: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2642, file: !232, line: 781, baseType: !19, size: 32, offset: 6336)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2642, file: !232, line: 782, baseType: !19, size: 32, offset: 6368)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2642, file: !232, line: 783, baseType: !19, size: 32, offset: 6400)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2642, file: !232, line: 784, baseType: !19, size: 32, offset: 6432)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2642, file: !232, line: 785, baseType: !67, size: 64, offset: 6464)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2642, file: !232, line: 786, baseType: !3405, size: 256, offset: 6528)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3406, line: 17, size: 256, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3407 = !{!3408, !3409, !3414}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3405, file: !3406, line: 18, baseType: !507, size: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3405, file: !3406, line: 19, baseType: !3410, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3405, file: !3406, line: 20, baseType: !3415, size: 64, offset: 192)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3416, line: 16, size: 64, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3415, file: !3416, line: 17, baseType: !487, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2642, file: !232, line: 787, baseType: !371, size: 128, align: 64, offset: 6784)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2642, file: !232, line: 788, baseType: !19, size: 32, offset: 6912)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2642, file: !232, line: 789, baseType: !3415, size: 64, offset: 6976)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2642, file: !232, line: 791, baseType: !77, size: 32, offset: 7040)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2642, file: !232, line: 794, baseType: !3424, size: 192, offset: 7104)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !232, line: 579, size: 192, elements: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3424, file: !232, line: 580, baseType: !125, size: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3424, file: !232, line: 581, baseType: !398, size: 32, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3424, file: !232, line: 582, baseType: !19, size: 32, offset: 160)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2642, file: !232, line: 796, baseType: !3430, size: 64, offset: 7296)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !232, line: 585, size: 128, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3431, file: !232, line: 586, baseType: !67, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3431, file: !232, line: 587, baseType: !67, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2642, file: !232, line: 797, baseType: !67, size: 64, offset: 7360)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2642, file: !232, line: 800, baseType: !2641, size: 64, offset: 7424)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2642, file: !232, line: 802, baseType: !3115, size: 64, offset: 7488)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2642, file: !232, line: 803, baseType: !371, size: 128, align: 64, offset: 7552)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2642, file: !232, line: 805, baseType: !467, size: 64, offset: 7680)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2642, file: !232, line: 806, baseType: !545, size: 64, offset: 7744)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2642, file: !232, line: 808, baseType: !386, size: 64, offset: 7808)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2642, file: !232, line: 810, baseType: !3443, size: 64, offset: 7872)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!545}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2642, file: !232, line: 811, baseType: !3447, size: 64, offset: 7936)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !232, line: 605, baseType: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !2641, !3451, !3556}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !232, line: 1148, size: 2048, align: 512, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3463, !3464, !3465, !3470, !3471, !3478, !3499, !3521, !3531, !3549, !3550, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3452, file: !232, line: 1153, baseType: !545, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3452, file: !232, line: 1154, baseType: !545, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3452, file: !232, line: 1155, baseType: !545, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !232, line: 1161, baseType: !545, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3452, file: !232, line: 1165, baseType: !3459, size: 64, offset: 256)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3452, file: !232, line: 1162, size: 64, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3459, file: !232, line: 1163, baseType: !498, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3459, file: !232, line: 1164, baseType: !498, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3452, file: !232, line: 1166, baseType: !545, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3452, file: !232, line: 1167, baseType: !545, size: 64, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3452, file: !232, line: 1171, baseType: !3466, size: 64, offset: 448)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3452, file: !232, line: 1168, size: 64, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3466, file: !232, line: 1169, baseType: !498, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3466, file: !232, line: 1170, baseType: !498, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3452, file: !232, line: 1177, baseType: !545, size: 64, offset: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3452, file: !232, line: 1178, baseType: !3472, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !232, line: 67, size: 64, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3473, file: !232, line: 68, baseType: !336, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3473, file: !232, line: 69, baseType: !3477, offset: 64)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, elements: !1234)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3452, file: !232, line: 1179, baseType: !3479, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !232, line: 93, size: 256, elements: !3481)
!3481 = !{!3482, !3498}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3480, file: !232, line: 94, baseType: !3483, size: 224)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !232, line: 83, size: 224, elements: !3484)
!3484 = !{!3485, !3491, !3496, !3497}
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3483, file: !232, line: 84, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3483, file: !232, line: 84, size: 64, elements: !3487)
!3487 = !{!3488, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3486, file: !232, line: 85, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3486, file: !232, line: 86, baseType: !67, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3483, file: !232, line: 88, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !232, line: 80, baseType: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!67, !48, !919, !67, !67}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3483, file: !232, line: 89, baseType: !48, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3483, file: !232, line: 90, baseType: !498, size: 32, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3480, file: !232, line: 95, baseType: !498, size: 32, offset: 224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3452, file: !232, line: 1180, baseType: !3500, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !232, line: 123, size: 128, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3501, file: !232, line: 124, baseType: !336, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3501, file: !232, line: 125, baseType: !336, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3501, file: !232, line: 126, baseType: !3506, offset: 128)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3507, elements: !1234)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3194, line: 1415, size: 192, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3507, file: !3194, line: 1416, baseType: !336, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3507, file: !3194, line: 1417, baseType: !336, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3507, file: !3194, line: 1418, baseType: !336, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3507, file: !3194, line: 1419, baseType: !336, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3507, file: !3194, line: 1420, baseType: !336, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3507, file: !3194, line: 1421, baseType: !336, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3507, file: !3194, line: 1422, baseType: !336, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3507, file: !3194, line: 1423, baseType: !336, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3507, file: !3194, line: 1424, baseType: !336, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3507, file: !3194, line: 1425, baseType: !336, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3507, file: !3194, line: 1426, baseType: !336, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3507, file: !3194, line: 1427, baseType: !336, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3452, file: !232, line: 1181, baseType: !3522, size: 64, offset: 768)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3194, line: 1430, size: 64, elements: !3523)
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3522, file: !3194, line: 1431, baseType: !336, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3194, line: 1433, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3522, file: !3194, line: 1433, size: 64, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3526, file: !3194, line: 1434, baseType: !322, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3526, file: !3194, line: 1435, baseType: !122, size: 16, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3526, file: !3194, line: 1436, baseType: !122, size: 16, offset: 48)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3452, file: !232, line: 1182, baseType: !3532, size: 64, offset: 832)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3194, line: 1267, size: 64, elements: !3533)
!3533 = !{!3534, !3535}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3532, file: !3194, line: 1268, baseType: !336, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3532, file: !3194, line: 1269, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3194, line: 1269, size: 64, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3536, file: !3194, line: 1270, baseType: !336, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3536, file: !3194, line: 1271, baseType: !336, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3536, file: !3194, line: 1272, baseType: !336, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3536, file: !3194, line: 1273, baseType: !336, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3536, file: !3194, line: 1274, baseType: !336, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3536, file: !3194, line: 1275, baseType: !336, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3536, file: !3194, line: 1276, baseType: !336, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3536, file: !3194, line: 1277, baseType: !336, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3536, file: !3194, line: 1278, baseType: !336, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3536, file: !3194, line: 1279, baseType: !336, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3536, file: !3194, line: 1280, baseType: !336, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3452, file: !232, line: 1183, baseType: !545, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3452, file: !232, line: 1185, baseType: !3551, size: 128, offset: 960)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3552, line: 7, size: 128, elements: !3553)
!3552 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3553 = !{!3554, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3551, file: !3552, line: 8, baseType: !336, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3551, file: !3552, line: 9, baseType: !3556, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3558, line: 103, size: 1344, elements: !3559)
!3558 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3588, !3589, !3590}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3557, file: !3558, line: 109, baseType: !67, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3557, file: !3558, line: 110, baseType: !67, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3557, file: !3558, line: 111, baseType: !67, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3557, file: !3558, line: 112, baseType: !67, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3557, file: !3558, line: 113, baseType: !67, size: 64, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3557, file: !3558, line: 114, baseType: !67, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3557, file: !3558, line: 117, baseType: !67, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3557, file: !3558, line: 118, baseType: !67, size: 64, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3557, file: !3558, line: 119, baseType: !67, size: 64, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3557, file: !3558, line: 120, baseType: !67, size: 64, offset: 576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3557, file: !3558, line: 121, baseType: !67, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3557, file: !3558, line: 122, baseType: !67, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3557, file: !3558, line: 123, baseType: !67, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3557, file: !3558, line: 124, baseType: !67, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3557, file: !3558, line: 125, baseType: !67, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3557, file: !3558, line: 139, baseType: !67, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3557, file: !3558, line: 142, baseType: !67, size: 64, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !3558, line: 144, baseType: !3578, size: 64, offset: 1088)
!3578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !3558, line: 144, size: 64, elements: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3578, file: !3558, line: 146, baseType: !121, size: 16)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3578, file: !3558, line: 148, baseType: !545, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3578, file: !3558, line: 150, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3558, line: 59, size: 64, elements: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3583, file: !3558, line: 61, baseType: !545, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3583, file: !3558, line: 63, baseType: !545, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3583, file: !3558, line: 65, baseType: !545, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3557, file: !3558, line: 153, baseType: !67, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3557, file: !3558, line: 154, baseType: !67, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !3558, line: 156, baseType: !3591, size: 64, offset: 1280)
!3591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !3558, line: 156, size: 64, elements: !3592)
!3592 = !{!3593, !3594, !3595}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3591, file: !3558, line: 158, baseType: !121, size: 16)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3591, file: !3558, line: 160, baseType: !545, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3591, file: !3558, line: 162, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3558, line: 69, size: 64, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3596, file: !3558, line: 71, baseType: !545, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3596, file: !3558, line: 73, baseType: !545, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3596, file: !3558, line: 75, baseType: !545, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3596, file: !3558, line: 77, baseType: !545, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3596, file: !3558, line: 80, baseType: !545, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3596, file: !3558, line: 83, baseType: !545, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3596, file: !3558, line: 86, baseType: !545, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3596, file: !3558, line: 88, baseType: !545, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3596, file: !3558, line: 93, baseType: !545, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3596, file: !3558, line: 100, baseType: !545, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3452, file: !232, line: 1186, baseType: !3551, size: 128, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3452, file: !232, line: 1187, baseType: !545, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3452, file: !232, line: 1189, baseType: !545, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3452, file: !232, line: 1190, baseType: !545, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3452, file: !232, line: 1191, baseType: !545, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3452, file: !232, line: 1192, baseType: !545, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3452, file: !232, line: 1193, baseType: !545, size: 64, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3452, file: !232, line: 1194, baseType: !545, size: 64, offset: 1600)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3452, file: !232, line: 1195, baseType: !545, size: 64, offset: 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2642, file: !232, line: 812, baseType: !48, size: 64, offset: 8000)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2642, file: !232, line: 820, baseType: !2435, size: 64, offset: 8064)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2642, file: !232, line: 821, baseType: !2622, size: 64, offset: 8128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2642, file: !232, line: 828, baseType: !3621, size: 64, offset: 8192)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !232, line: 1046, size: 1664, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3622, file: !232, line: 1047, baseType: !1515, size: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3622, file: !232, line: 1048, baseType: !3626, size: 64, offset: 1600)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !232, line: 1039, size: 256, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3627, file: !232, line: 1040, baseType: !545, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3627, file: !232, line: 1041, baseType: !545, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3627, file: !232, line: 1042, baseType: !545, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3627, file: !232, line: 1043, baseType: !50, size: 32, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2642, file: !232, line: 832, baseType: !48, size: 64, offset: 8256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2642, file: !232, line: 834, baseType: !125, size: 128, offset: 8320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2642, file: !232, line: 842, baseType: !322, size: 32, offset: 8448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1933, file: !24, line: 524, baseType: !19, size: 32, offset: 8320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1933, file: !24, line: 525, baseType: !3638, size: 64, offset: 8384)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3641, line: 28, size: 192, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3642 = !{!3643, !3644, !3645}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3640, file: !3641, line: 29, baseType: !45, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3640, file: !3641, line: 30, baseType: !45, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3640, file: !3641, line: 31, baseType: !67, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1933, file: !24, line: 526, baseType: !19, size: 32, offset: 8448)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1933, file: !24, line: 533, baseType: !48, size: 64, offset: 8512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1933, file: !24, line: 534, baseType: !19, size: 32, offset: 8576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1933, file: !24, line: 535, baseType: !351, size: 64, offset: 8640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1933, file: !24, line: 536, baseType: !19, size: 32, offset: 8704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1933, file: !24, line: 539, baseType: !50, size: 32, offset: 8736)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1933, file: !24, line: 540, baseType: !2518, size: 64, offset: 8768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1933, file: !24, line: 563, baseType: !125, size: 128, offset: 8832)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1933, file: !24, line: 565, baseType: !125, size: 128, offset: 8960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1933, file: !24, line: 568, baseType: !2529, size: 64, offset: 9088)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1933, file: !24, line: 570, baseType: !77, size: 32, offset: 9152)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1909, file: !31, line: 2382, baseType: !1908, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1909, file: !31, line: 2383, baseType: !447, size: 64, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1909, file: !31, line: 2385, baseType: !3660, offset: 576)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2384, line: 206, elements: !807)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1909, file: !31, line: 2386, baseType: !3660, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1909, file: !31, line: 2387, baseType: !3660, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1909, file: !31, line: 2388, baseType: !3664, offset: 576)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3660, elements: !430)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1909, file: !31, line: 2390, baseType: !3660, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1909, file: !31, line: 2391, baseType: !3660, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1909, file: !31, line: 2392, baseType: !3660, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1909, file: !31, line: 2393, baseType: !3660, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1898, file: !31, line: 1197, baseType: !3670, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !3673)
!3673 = !{!3674, !3678, !3682, !3683, !3687, !3693, !3697, !3698, !3699, !3703, !3707, !3711, !3712, !3713, !3719, !3723, !3724, !3728, !3729, !3730, !3731, !3735, !3739, !3786, !3801, !3802}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3672, file: !31, line: 2058, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!1769, !1897}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3672, file: !31, line: 2059, baseType: !3679, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !1769}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3672, file: !31, line: 2060, baseType: !3679, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3672, file: !31, line: 2062, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !1769, !50}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3672, file: !31, line: 2063, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!50, !1769, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 309, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3672, file: !31, line: 2064, baseType: !3694, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!50, !1769}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3672, file: !31, line: 2065, baseType: !3679, size: 64, offset: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3672, file: !31, line: 2066, baseType: !1928, size: 64, offset: 448)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3672, file: !31, line: 2067, baseType: !3700, size: 64, offset: 512)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!50, !1897, !50}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3672, file: !31, line: 2068, baseType: !3704, size: 64, offset: 576)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!50, !1897, !30}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3672, file: !31, line: 2069, baseType: !3708, size: 64, offset: 640)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!50, !1897}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3672, file: !31, line: 2070, baseType: !3704, size: 64, offset: 704)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3672, file: !31, line: 2071, baseType: !3708, size: 64, offset: 768)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3672, file: !31, line: 2072, baseType: !3714, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!50, !1791, !3717}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3672, file: !31, line: 2073, baseType: !3720, size: 64, offset: 896)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!50, !1897, !1339, !1079}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3672, file: !31, line: 2074, baseType: !1928, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3672, file: !31, line: 2076, baseType: !3725, size: 64, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!50, !1579, !1791}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3672, file: !31, line: 2077, baseType: !3725, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3672, file: !31, line: 2078, baseType: !3725, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3672, file: !31, line: 2079, baseType: !3725, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3672, file: !31, line: 2081, baseType: !3732, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!2015, !1897, !50, !1079, !63, !69}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3672, file: !31, line: 2082, baseType: !3736, size: 64, offset: 1344)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!2015, !1897, !50, !45, !63, !69}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3672, file: !31, line: 2083, baseType: !3740, size: 64, offset: 1408)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!3743, !1769}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !266, line: 296, size: 1664, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3771, !3772, !3773}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3745, file: !266, line: 297, baseType: !451, size: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3745, file: !266, line: 298, baseType: !125, size: 128, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3745, file: !266, line: 299, baseType: !125, size: 128, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3745, file: !266, line: 300, baseType: !125, size: 128, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3745, file: !266, line: 301, baseType: !393, size: 256, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3745, file: !266, line: 302, baseType: !87, size: 32, offset: 768)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3745, file: !266, line: 303, baseType: !77, size: 32, offset: 800)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3745, file: !266, line: 304, baseType: !1897, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3745, file: !266, line: 305, baseType: !3756, size: 64, offset: 896)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !266, line: 68, size: 64, elements: !3757)
!3757 = !{!3758, !3770}
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3756, file: !266, line: 69, baseType: !3759, size: 32)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3756, file: !266, line: 69, size: 32, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3759, file: !266, line: 70, baseType: !975, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3759, file: !266, line: 71, baseType: !983, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3759, file: !266, line: 72, baseType: !3764, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3765, line: 24, baseType: !3766)
!3765 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3765, line: 22, size: 32, elements: !3767)
!3767 = !{!3768}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3766, file: !3765, line: 23, baseType: !3769, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3765, line: 20, baseType: !981)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3756, file: !266, line: 74, baseType: !265, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3745, file: !266, line: 306, baseType: !69, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3745, file: !266, line: 307, baseType: !67, size: 64, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3745, file: !266, line: 308, baseType: !3774, size: 576, offset: 1088)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !266, line: 205, size: 576, elements: !3775)
!3775 = !{!3776, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3774, file: !266, line: 206, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !266, line: 66, baseType: !71)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3774, file: !266, line: 207, baseType: !3777, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3774, file: !266, line: 208, baseType: !3777, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3774, file: !266, line: 209, baseType: !3777, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3774, file: !266, line: 210, baseType: !3777, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3774, file: !266, line: 211, baseType: !3777, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3774, file: !266, line: 212, baseType: !3777, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3774, file: !266, line: 213, baseType: !1028, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3774, file: !266, line: 214, baseType: !1028, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3672, file: !31, line: 2085, baseType: !3787, size: 64, offset: 1472)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!354, !1897, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3792, line: 15, size: 256, elements: !3793)
!3792 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3793 = !{!3794, !3795, !3796, !3797, !3798}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3791, file: !3792, line: 16, baseType: !316, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3791, file: !3792, line: 19, baseType: !50, size: 32, offset: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3791, file: !3792, line: 26, baseType: !67, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3791, file: !3792, line: 33, baseType: !67, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3791, file: !3792, line: 36, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3792, line: 36, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3672, file: !31, line: 2087, baseType: !3787, size: 64, offset: 1536)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3672, file: !31, line: 2089, baseType: !1928, size: 64, offset: 1600)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1898, file: !31, line: 1198, baseType: !3804, size: 64, offset: 448)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3806)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !266, line: 324, size: 704, elements: !3807)
!3807 = !{!3808, !3812, !3816, !3820, !3821, !3822, !3823, !3824, !3829, !3834, !3838}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3806, file: !266, line: 325, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!50, !3744}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3806, file: !266, line: 326, baseType: !3813, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!3744, !1897, !50}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3806, file: !266, line: 327, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3744}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3806, file: !266, line: 328, baseType: !3809, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3806, file: !266, line: 329, baseType: !3809, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3806, file: !266, line: 330, baseType: !3809, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3806, file: !266, line: 331, baseType: !3700, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3806, file: !266, line: 334, baseType: !3825, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!3828, !1769}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3806, file: !266, line: 335, baseType: !3830, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!50, !1769, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3806, file: !266, line: 337, baseType: !3835, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!50, !1769, !3828}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3806, file: !266, line: 339, baseType: !3839, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!50, !1897, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1898, file: !31, line: 1199, baseType: !3844, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !266, line: 430, size: 704, elements: !3847)
!3847 = !{!3848, !3859, !3860, !3864, !3865, !3866, !3881, !3904, !3908, !3909, !3932}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3846, file: !266, line: 431, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!50, !1897, !50, !50, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3855, line: 8, size: 128, elements: !3856)
!3855 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3854, file: !3855, line: 9, baseType: !1891, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3854, file: !3855, line: 10, baseType: !1791, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3846, file: !266, line: 432, baseType: !3700, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3846, file: !266, line: 433, baseType: !3861, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!50, !1897, !19}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3846, file: !266, line: 434, baseType: !3861, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3846, file: !266, line: 435, baseType: !3700, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3846, file: !266, line: 436, baseType: !3867, size: 64, offset: 320)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!50, !1897, !50, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !266, line: 417, size: 256, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3871, file: !266, line: 418, baseType: !50, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3871, file: !266, line: 419, baseType: !19, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3871, file: !266, line: 420, baseType: !19, size: 32, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3871, file: !266, line: 422, baseType: !19, size: 32, offset: 96)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3871, file: !266, line: 423, baseType: !19, size: 32, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3871, file: !266, line: 424, baseType: !19, size: 32, offset: 160)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3871, file: !266, line: 425, baseType: !19, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3871, file: !266, line: 426, baseType: !19, size: 32, offset: 224)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3846, file: !266, line: 437, baseType: !3882, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!50, !1897, !3756, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !266, line: 345, size: 960, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3886, file: !266, line: 346, baseType: !50, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3886, file: !266, line: 347, baseType: !545, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3886, file: !266, line: 348, baseType: !545, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3886, file: !266, line: 349, baseType: !545, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3886, file: !266, line: 350, baseType: !545, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3886, file: !266, line: 351, baseType: !545, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3886, file: !266, line: 352, baseType: !545, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3886, file: !266, line: 353, baseType: !390, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3886, file: !266, line: 355, baseType: !390, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3886, file: !266, line: 356, baseType: !50, size: 32, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3886, file: !266, line: 357, baseType: !50, size: 32, offset: 608)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3886, file: !266, line: 358, baseType: !545, size: 64, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3886, file: !266, line: 359, baseType: !545, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3886, file: !266, line: 360, baseType: !545, size: 64, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3886, file: !266, line: 361, baseType: !390, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3886, file: !266, line: 362, baseType: !50, size: 32, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3846, file: !266, line: 438, baseType: !3905, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!50, !1897, !3842, !3885}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3846, file: !266, line: 440, baseType: !3882, size: 64, offset: 512)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3846, file: !266, line: 441, baseType: !3910, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!50, !1897, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !266, line: 411, size: 1408, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3914, file: !266, line: 412, baseType: !19, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3914, file: !266, line: 413, baseType: !3918, size: 1344, offset: 64)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3919, size: 1344, elements: !430)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !266, line: 397, size: 448, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3931}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3919, file: !266, line: 398, baseType: !19, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3919, file: !266, line: 399, baseType: !19, size: 32, offset: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3919, file: !266, line: 401, baseType: !19, size: 32, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3919, file: !266, line: 402, baseType: !19, size: 32, offset: 96)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3919, file: !266, line: 403, baseType: !19, size: 32, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3919, file: !266, line: 404, baseType: !19, size: 32, offset: 160)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3919, file: !266, line: 405, baseType: !19, size: 32, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3919, file: !266, line: 406, baseType: !337, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3919, file: !266, line: 407, baseType: !3930, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !53, line: 132, baseType: !545)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3919, file: !266, line: 408, baseType: !3930, size: 64, offset: 384)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3846, file: !266, line: 442, baseType: !3861, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1898, file: !31, line: 1200, baseType: !3934, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3936)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1898, file: !31, line: 1201, baseType: !67, size: 64, offset: 640)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1898, file: !31, line: 1202, baseType: !67, size: 64, offset: 704)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1898, file: !31, line: 1203, baseType: !67, size: 64, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1898, file: !31, line: 1204, baseType: !1791, size: 64, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1898, file: !31, line: 1205, baseType: !841, size: 320, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1898, file: !31, line: 1206, baseType: !50, size: 32, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1898, file: !31, line: 1207, baseType: !77, size: 32, offset: 1248)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1898, file: !31, line: 1209, baseType: !48, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1898, file: !31, line: 1211, baseType: !3946, size: 64, offset: 1344)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1898, file: !31, line: 1223, baseType: !3951, size: 64, offset: 1408)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1803, line: 34, size: 64, elements: !3952)
!3952 = !{!3953}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3951, file: !1803, line: 35, baseType: !1806, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1898, file: !31, line: 1224, baseType: !125, size: 128, offset: 1472)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1898, file: !31, line: 1225, baseType: !3956, size: 64, offset: 1600)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 1225, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1898, file: !31, line: 1226, baseType: !3959, size: 64, offset: 1664)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1898, file: !31, line: 1227, baseType: !3962, size: 64, offset: 1728)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1898, file: !31, line: 1228, baseType: !3965, size: 64, offset: 1792)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1898, file: !31, line: 1229, baseType: !451, size: 128, offset: 1856)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1898, file: !31, line: 1230, baseType: !19, size: 32, offset: 1984)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1898, file: !31, line: 1231, baseType: !3970, size: 2496, offset: 2048)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !266, line: 521, size: 2496, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3976, !4008}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3970, file: !266, line: 522, baseType: !19, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3970, file: !266, line: 523, baseType: !841, size: 320, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3970, file: !266, line: 524, baseType: !3975, size: 192, offset: 384)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1769, size: 192, elements: !430)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3970, file: !266, line: 525, baseType: !3977, size: 1728, offset: 576)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3978, size: 1728, elements: !430)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !266, line: 222, size: 576, elements: !3979)
!3979 = !{!3980, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3978, file: !266, line: 223, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !266, line: 445, size: 256, elements: !3983)
!3983 = !{!3984, !3985, !3998, !3999}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3982, file: !266, line: 446, baseType: !50, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3982, file: !266, line: 447, baseType: !3986, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !266, line: 312, size: 512, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3988, file: !266, line: 313, baseType: !3700, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3988, file: !266, line: 314, baseType: !3700, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3988, file: !266, line: 315, baseType: !3700, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3988, file: !266, line: 316, baseType: !3700, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3988, file: !266, line: 317, baseType: !3809, size: 64, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3988, file: !266, line: 318, baseType: !3809, size: 64, offset: 320)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3988, file: !266, line: 319, baseType: !3809, size: 64, offset: 384)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3988, file: !266, line: 320, baseType: !3839, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3982, file: !266, line: 448, baseType: !1932, size: 64, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3982, file: !266, line: 449, baseType: !3981, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3978, file: !266, line: 224, baseType: !50, size: 32, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3978, file: !266, line: 226, baseType: !125, size: 128, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3978, file: !266, line: 227, baseType: !67, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3978, file: !266, line: 228, baseType: !19, size: 32, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3978, file: !266, line: 229, baseType: !19, size: 32, offset: 352)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3978, file: !266, line: 230, baseType: !3777, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3978, file: !266, line: 231, baseType: !3777, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3978, file: !266, line: 232, baseType: !48, size: 64, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3970, file: !266, line: 526, baseType: !4009, size: 192, offset: 2304)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3986, size: 192, elements: !430)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1898, file: !31, line: 1233, baseType: !4011, size: 2368, offset: 4544)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !4012)
!4012 = !{!4013, !4014, !4015}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4011, file: !31, line: 1185, baseType: !54, size: 16)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4011, file: !31, line: 1186, baseType: !54, size: 16, offset: 16)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4011, file: !31, line: 1187, baseType: !4016, size: 2304, offset: 64)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4017, size: 2304, elements: !430)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4018, line: 12, size: 768, elements: !4019)
!4018 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4019 = !{!4020, !4028, !4029, !4030, !4031}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4017, file: !4018, line: 13, baseType: !4021, size: 384)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4022, line: 17, size: 384, elements: !4023)
!4022 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4021, file: !4022, line: 18, baseType: !50, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4021, file: !4022, line: 19, baseType: !50, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4021, file: !4022, line: 20, baseType: !82, size: 192, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4021, file: !4022, line: 22, baseType: !371, size: 128, align: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4017, file: !4018, line: 14, baseType: !2209, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4017, file: !4018, line: 15, baseType: !3415, size: 64, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4017, file: !4018, line: 16, baseType: !82, size: 192, offset: 512)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4017, file: !4018, line: 17, baseType: !77, size: 32, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1898, file: !31, line: 1240, baseType: !48, size: 64, offset: 6912)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1898, file: !31, line: 1243, baseType: !498, size: 32, offset: 6976)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1898, file: !31, line: 1245, baseType: !1028, size: 64, offset: 7040)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1898, file: !31, line: 1246, baseType: !1028, size: 64, offset: 7104)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1898, file: !31, line: 1248, baseType: !322, size: 32, offset: 7168)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1898, file: !31, line: 1249, baseType: !4038, size: 64, offset: 7232)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1898, file: !31, line: 1252, baseType: !4041, size: 256, offset: 7296)
!4041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1828)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1898, file: !31, line: 1253, baseType: !4043, size: 128, offset: 7552)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4044, line: 21, baseType: !4045)
!4044 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4044, line: 19, size: 128, elements: !4046)
!4046 = !{!4047}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4045, file: !4044, line: 20, baseType: !4048, size: 128)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !1450)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1898, file: !31, line: 1255, baseType: !19, size: 32, offset: 7680)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1898, file: !31, line: 1261, baseType: !393, size: 256, offset: 7744)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1898, file: !31, line: 1267, baseType: !45, size: 64, offset: 8000)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1898, file: !31, line: 1269, baseType: !1844, size: 64, offset: 8064)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1898, file: !31, line: 1271, baseType: !4054, size: 448, offset: 8128)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3792, line: 63, size: 448, elements: !4055)
!4055 = !{!4056, !4061, !4062, !4063, !4064, !4065, !4066}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4054, file: !3792, line: 64, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!67, !4060, !3790}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4054, file: !3792, line: 66, baseType: !4057, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4054, file: !3792, line: 69, baseType: !354, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4054, file: !3792, line: 70, baseType: !50, size: 32, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4054, file: !3792, line: 71, baseType: !19, size: 32, offset: 224)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4054, file: !3792, line: 74, baseType: !125, size: 128, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4054, file: !3792, line: 85, baseType: !4067, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1898, file: !31, line: 1274, baseType: !384, size: 64, offset: 8576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1898, file: !31, line: 1280, baseType: !384, size: 64, offset: 8640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1898, file: !31, line: 1283, baseType: !50, size: 32, offset: 8704)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1898, file: !31, line: 1286, baseType: !4072, size: 32, offset: 8736)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4073, line: 8, baseType: !498)
!4073 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1898, file: !31, line: 1289, baseType: !2417, size: 64, offset: 8768)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1898, file: !31, line: 1290, baseType: !447, size: 64, offset: 8832)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1898, file: !31, line: 1297, baseType: !944, size: 64, offset: 8896)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1898, file: !31, line: 1304, baseType: !4078, size: 64, offset: 8960)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4079, line: 49, size: 64, elements: !4080)
!4079 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4080 = !{!4081}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4078, file: !4079, line: 50, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4079, line: 41, size: 512, align: 512, elements: !4084)
!4084 = !{!4085, !4086, !4091}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4083, file: !4079, line: 43, baseType: !87, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4083, file: !4079, line: 45, baseType: !4087, size: 192, offset: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4079, line: 29, size: 192, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4087, file: !4079, line: 30, baseType: !125, size: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4087, file: !4079, line: 32, baseType: !354, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4083, file: !4079, line: 46, baseType: !354, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1898, file: !31, line: 1305, baseType: !4078, size: 64, offset: 9024)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1898, file: !31, line: 1306, baseType: !371, size: 128, align: 64, offset: 9088)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1898, file: !31, line: 1307, baseType: !1118, size: 256, offset: 9216)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1898, file: !31, line: 1309, baseType: !393, size: 256, offset: 9472)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1898, file: !31, line: 1314, baseType: !50, size: 32, offset: 9728)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1898, file: !31, line: 1317, baseType: !87, size: 32, align: 512, offset: 10240)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1898, file: !31, line: 1318, baseType: !125, size: 128, offset: 10304)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1898, file: !31, line: 1320, baseType: !87, size: 32, offset: 10432)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1898, file: !31, line: 1321, baseType: !125, size: 128, offset: 10496)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1892, file: !1893, line: 73, baseType: !50, size: 32, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1892, file: !1893, line: 74, baseType: !4103, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1393, line: 42, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1846, file: !1793, line: 141, baseType: !4107, size: 64, offset: 704)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!50, !3852, !1002}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1846, file: !1793, line: 142, baseType: !4111, size: 64, offset: 768)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!1791, !1791, !4114}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1792, file: !1793, line: 96, baseType: !1897, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1792, file: !1793, line: 97, baseType: !67, size: 64, offset: 896)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1792, file: !1793, line: 98, baseType: !48, size: 64, offset: 960)
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !1793, line: 100, baseType: !4120, size: 128, offset: 1024)
!4120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !1793, line: 100, size: 128, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4120, file: !1793, line: 101, baseType: !125, size: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4120, file: !1793, line: 102, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1792, file: !1793, line: 104, baseType: !125, size: 128, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1792, file: !1793, line: 105, baseType: !125, size: 128, offset: 1280)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1792, file: !1793, line: 113, baseType: !4128, size: 128, offset: 1408)
!4128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !1793, line: 109, size: 128, elements: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4128, file: !1793, line: 110, baseType: !451, size: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4128, file: !1793, line: 111, baseType: !1802, size: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4128, file: !1793, line: 112, baseType: !371, size: 128, align: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1785, file: !31, line: 1968, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!45, !1791, !1769, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4139, line: 10, size: 128, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4140 = !{!4141, !4142}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4138, file: !4139, line: 11, baseType: !2093, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4138, file: !4139, line: 12, baseType: !48, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1785, file: !31, line: 1969, baseType: !4144, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!50, !4103, !1769, !50}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1785, file: !31, line: 1970, baseType: !4148, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!1779, !1769, !50, !1002}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1785, file: !31, line: 1972, baseType: !4152, size: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!50, !1791, !1079, !50}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1785, file: !31, line: 1974, baseType: !4156, size: 64, offset: 320)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!50, !4103, !1769, !1791, !52, !1002}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1785, file: !31, line: 1976, baseType: !4160, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!50, !1791, !1769, !1791}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1785, file: !31, line: 1977, baseType: !4164, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!50, !1769, !1791}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1785, file: !31, line: 1978, baseType: !4168, size: 64, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!50, !4103, !1769, !1791, !45}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1785, file: !31, line: 1980, baseType: !4172, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!50, !4103, !1769, !1791, !52}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1785, file: !31, line: 1982, baseType: !4164, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1785, file: !31, line: 1983, baseType: !4177, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!50, !4103, !1769, !1791, !52, !1902}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1785, file: !31, line: 1985, baseType: !4181, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!50, !4103, !1769, !1791, !1769, !1791, !19}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1785, file: !31, line: 1987, baseType: !4185, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!50, !4103, !1791, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4203, !4212, !4213, !4218, !4219, !4220}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4189, file: !31, line: 227, baseType: !19, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4189, file: !31, line: 228, baseType: !52, size: 16, offset: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !31, line: 241, baseType: !4194, size: 32, offset: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !31, line: 241, size: 32, elements: !4195)
!4195 = !{!4196, !4197}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4194, file: !31, line: 242, baseType: !975, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4194, file: !31, line: 243, baseType: !4198, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4199, line: 16, baseType: !4200)
!4199 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4199, line: 14, size: 32, elements: !4201)
!4201 = !{!4202}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4200, file: !4199, line: 15, baseType: !980, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !31, line: 245, baseType: !4204, size: 32, offset: 96)
!4204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !31, line: 245, size: 32, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4204, file: !31, line: 246, baseType: !983, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4204, file: !31, line: 247, baseType: !4208, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4199, line: 20, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4199, line: 18, size: 32, elements: !4210)
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4209, file: !4199, line: 19, baseType: !987, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4189, file: !31, line: 249, baseType: !69, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4189, file: !31, line: 250, baseType: !4214, size: 128, offset: 192)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1029, line: 13, size: 128, elements: !4215)
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4214, file: !1029, line: 14, baseType: !1028, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4214, file: !1029, line: 15, baseType: !354, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4189, file: !31, line: 251, baseType: !4214, size: 128, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4189, file: !31, line: 252, baseType: !4214, size: 128, offset: 448)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4189, file: !31, line: 259, baseType: !358, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1785, file: !31, line: 1988, baseType: !4222, size: 64, offset: 896)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!50, !4103, !3852, !4225, !498, !19}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4227, line: 22, size: 1280, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4226, file: !4227, line: 23, baseType: !498, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4226, file: !4227, line: 24, baseType: !52, size: 16, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4226, file: !4227, line: 25, baseType: !19, size: 32, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4226, file: !4227, line: 26, baseType: !1036, size: 32, offset: 96)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4226, file: !4227, line: 27, baseType: !545, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4226, file: !4227, line: 28, baseType: !545, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4226, file: !4227, line: 41, baseType: !545, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4226, file: !4227, line: 42, baseType: !1902, size: 32, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4226, file: !4227, line: 43, baseType: !1902, size: 32, offset: 352)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4226, file: !4227, line: 44, baseType: !975, size: 32, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4226, file: !4227, line: 45, baseType: !983, size: 32, offset: 416)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4226, file: !4227, line: 46, baseType: !69, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4226, file: !4227, line: 47, baseType: !4214, size: 128, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4226, file: !4227, line: 48, baseType: !4214, size: 128, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4226, file: !4227, line: 49, baseType: !4214, size: 128, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4226, file: !4227, line: 50, baseType: !4214, size: 128, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4226, file: !4227, line: 51, baseType: !545, size: 64, offset: 1024)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4226, file: !4227, line: 52, baseType: !545, size: 64, offset: 1088)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4226, file: !4227, line: 53, baseType: !498, size: 32, offset: 1152)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4226, file: !4227, line: 54, baseType: !498, size: 32, offset: 1184)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4226, file: !4227, line: 55, baseType: !545, size: 64, offset: 1216)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1785, file: !31, line: 1990, baseType: !4251, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!2015, !1791, !1079, !63}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1785, file: !31, line: 1991, baseType: !4255, size: 64, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!50, !1769, !4258, !545, !545}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1785, file: !31, line: 1993, baseType: !4261, size: 64, offset: 1088)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!50, !1769, !50}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1785, file: !31, line: 1994, baseType: !4265, size: 64, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!50, !1769, !1791, !358, !19, !52}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1785, file: !31, line: 1997, baseType: !4269, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!50, !4103, !1769, !358, !52}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1785, file: !31, line: 1999, baseType: !4273, size: 64, offset: 1280)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!1779, !4103, !1791, !50}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1785, file: !31, line: 2001, baseType: !4277, size: 64, offset: 1344)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!50, !4103, !1791, !1779, !50}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1785, file: !31, line: 2003, baseType: !4281, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!50, !4103, !1791, !4284}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1785, file: !31, line: 2005, baseType: !4287, size: 64, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!50, !1791, !4284}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1785, file: !31, line: 2006, baseType: !4291, size: 64, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!4294, !1769}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !4296)
!4296 = !{!4297, !4298}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4295, file: !31, line: 3193, baseType: !476, size: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4295, file: !31, line: 3194, baseType: !498, size: 32, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1770, file: !31, line: 655, baseType: !1897, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1770, file: !31, line: 656, baseType: !1765, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1770, file: !31, line: 659, baseType: !48, size: 64, offset: 576)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1770, file: !31, line: 663, baseType: !67, size: 64, offset: 640)
!4303 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !31, line: 671, baseType: !4304, size: 32, offset: 704)
!4304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !31, line: 671, size: 32, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4304, file: !31, line: 672, baseType: !2465, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4304, file: !31, line: 673, baseType: !19, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1770, file: !31, line: 675, baseType: !1902, size: 32, offset: 736)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1770, file: !31, line: 676, baseType: !69, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1770, file: !31, line: 677, baseType: !4214, size: 128, offset: 832)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1770, file: !31, line: 678, baseType: !4214, size: 128, offset: 960)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1770, file: !31, line: 679, baseType: !4214, size: 128, offset: 1088)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1770, file: !31, line: 680, baseType: !87, size: 32, offset: 1216)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1770, file: !31, line: 681, baseType: !54, size: 16, offset: 1248)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1770, file: !31, line: 682, baseType: !111, size: 8, offset: 1264)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1770, file: !31, line: 683, baseType: !111, size: 8, offset: 1272)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1770, file: !31, line: 684, baseType: !3930, size: 64, offset: 1280)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1770, file: !31, line: 691, baseType: !67, size: 64, offset: 1344)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1770, file: !31, line: 692, baseType: !841, size: 320, offset: 1408)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1770, file: !31, line: 694, baseType: !67, size: 64, offset: 1728)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1770, file: !31, line: 695, baseType: !67, size: 64, offset: 1792)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1770, file: !31, line: 697, baseType: !451, size: 128, offset: 1856)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1770, file: !31, line: 698, baseType: !125, size: 128, offset: 1984)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1770, file: !31, line: 707, baseType: !125, size: 128, offset: 2112)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1770, file: !31, line: 708, baseType: !125, size: 128, offset: 2240)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !31, line: 709, baseType: !4327, size: 128, offset: 2368)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !31, line: 709, size: 128, elements: !4328)
!4328 = !{!4329, !4330}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4327, file: !31, line: 710, baseType: !447, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4327, file: !31, line: 711, baseType: !371, size: 128, align: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1770, file: !31, line: 713, baseType: !386, size: 64, offset: 2496)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1770, file: !31, line: 714, baseType: !386, size: 64, offset: 2560)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1770, file: !31, line: 715, baseType: !77, size: 32, offset: 2624)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1770, file: !31, line: 716, baseType: !77, size: 32, offset: 2656)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1770, file: !31, line: 717, baseType: !77, size: 32, offset: 2688)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1770, file: !31, line: 719, baseType: !77, size: 32, offset: 2720)
!4337 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !31, line: 721, baseType: !4338, size: 64, offset: 2752)
!4338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !31, line: 721, size: 64, elements: !4339)
!4339 = !{!4340, !4556}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4338, file: !31, line: 722, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !4344)
!4344 = !{!4345, !4346, !4350, !4354, !4358, !4436, !4437, !4443, !4456, !4470, !4474, !4475, !4479, !4480, !4484, !4489, !4490, !4494, !4498, !4504, !4505, !4509, !4510, !4516, !4520, !4524, !4529, !4533, !4537, !4541, !4545, !4546, !4552}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4343, file: !31, line: 1915, baseType: !1932, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4343, file: !31, line: 1916, baseType: !4347, size: 64, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!69, !358, !69, !50}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4343, file: !31, line: 1917, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!2015, !358, !1079, !63, !68}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4343, file: !31, line: 1918, baseType: !4355, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!2015, !358, !45, !63, !68}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4343, file: !31, line: 1919, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!2015, !4362, !4384}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !4364)
!4364 = !{!4365, !4366, !4367, !4371, !4372, !4373, !4374}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4363, file: !31, line: 374, baseType: !358, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4363, file: !31, line: 375, baseType: !69, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4363, file: !31, line: 376, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4362, !354}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4363, file: !31, line: 377, baseType: !48, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4363, file: !31, line: 378, baseType: !50, size: 32, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4363, file: !31, line: 379, baseType: !121, size: 16, offset: 288)
!4374 = !DIDerivedType(tag: DW_TAG_member, scope: !4363, file: !31, line: 380, baseType: !4375, size: 64, offset: 320)
!4375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4363, file: !31, line: 380, size: 64, elements: !4376)
!4376 = !{!4377, !4380}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4375, file: !31, line: 386, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 386, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4375, file: !31, line: 395, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!2015, !48}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !4386, line: 41, size: 320, elements: !4387)
!4386 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4393, !4398, !4431}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4385, file: !4386, line: 42, baseType: !111, size: 8)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !4385, file: !4386, line: 43, baseType: !1002, size: 8, offset: 8)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !4385, file: !4386, line: 44, baseType: !1002, size: 8, offset: 16)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !4385, file: !4386, line: 45, baseType: !1002, size: 8, offset: 24)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !4385, file: !4386, line: 46, baseType: !1002, size: 8, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !4385, file: !4386, line: 47, baseType: !4394, size: 64, offset: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4385, file: !4386, line: 47, size: 64, elements: !4395)
!4395 = !{!4396, !4397}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !4394, file: !4386, line: 48, baseType: !63, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !4394, file: !4386, line: 49, baseType: !50, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, scope: !4385, file: !4386, line: 61, baseType: !4399, size: 128, offset: 128)
!4399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4385, file: !4386, line: 61, size: 128, elements: !4400)
!4400 = !{!4401, !4407}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !4399, file: !4386, line: 67, baseType: !4402, size: 128)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !4403, line: 17, size: 128, elements: !4404)
!4403 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!4404 = !{!4405, !4406}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4402, file: !4403, line: 19, baseType: !48, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4402, file: !4403, line: 20, baseType: !64, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, scope: !4399, file: !4386, line: 68, baseType: !4408, size: 128)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4399, file: !4386, line: 68, size: 128, elements: !4409)
!4409 = !{!4410, !4430}
!4410 = !DIDerivedType(tag: DW_TAG_member, scope: !4408, file: !4386, line: 69, baseType: !4411, size: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4408, file: !4386, line: 69, size: 64, elements: !4412)
!4412 = !{!4413, !4416, !4423, !4427, !4429}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !4411, file: !4386, line: 71, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4402)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !4411, file: !4386, line: 72, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4419)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !4386, line: 17, size: 128, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4419, file: !4386, line: 18, baseType: !48, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4419, file: !4386, line: 19, baseType: !63, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !4411, file: !4386, line: 73, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !4386, line: 73, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !4411, file: !4386, line: 74, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !4411, file: !4386, line: 75, baseType: !48, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4408, file: !4386, line: 77, baseType: !63, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, scope: !4385, file: !4386, line: 80, baseType: !4432, size: 64, offset: 256)
!4432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4385, file: !4386, line: 80, size: 64, elements: !4433)
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !4432, file: !4386, line: 81, baseType: !67, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !4432, file: !4386, line: 82, baseType: !69, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4343, file: !31, line: 1920, baseType: !4359, size: 64, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4343, file: !31, line: 1921, baseType: !4438, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!50, !4362, !4441, !19}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4343, file: !31, line: 1923, baseType: !4444, size: 64, offset: 448)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!50, !358, !4447}
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !4449)
!4449 = !{!4450, !4455}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4448, file: !31, line: 1859, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !4452)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!1002, !4447, !45, !50, !69, !545, !19}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4448, file: !31, line: 1860, baseType: !69, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4343, file: !31, line: 1924, baseType: !4457, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!356, !358, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !4462, line: 37, size: 128, elements: !4463)
!4462 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!4463 = !{!4464, !4469}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !4461, file: !4462, line: 38, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !4462, line: 31, baseType: !4466)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !358, !4124, !4460}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !4461, file: !4462, line: 39, baseType: !356, size: 32, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4343, file: !31, line: 1925, baseType: !4471, size: 64, offset: 576)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!354, !358, !19, !67}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4343, file: !31, line: 1926, baseType: !4471, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4343, file: !31, line: 1927, baseType: !4476, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!50, !358, !1636}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4343, file: !31, line: 1928, baseType: !67, size: 64, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4343, file: !31, line: 1929, baseType: !4481, size: 64, offset: 832)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!50, !1769, !358}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4343, file: !31, line: 1930, baseType: !4485, size: 64, offset: 896)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!50, !358, !4488}
!4488 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !48)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4343, file: !31, line: 1931, baseType: !4481, size: 64, offset: 960)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4343, file: !31, line: 1932, baseType: !4491, size: 64, offset: 1024)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!50, !358, !69, !69, !50}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4343, file: !31, line: 1933, baseType: !4495, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!50, !50, !358, !50}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4343, file: !31, line: 1934, baseType: !4499, size: 64, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!50, !358, !50, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4343, file: !31, line: 1935, baseType: !811, size: 64, offset: 1216)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4343, file: !31, line: 1936, baseType: !4506, size: 64, offset: 1280)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!50, !50}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4343, file: !31, line: 1937, baseType: !4499, size: 64, offset: 1344)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4343, file: !31, line: 1938, baseType: !4511, size: 64, offset: 1408)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!2015, !4514, !358, !68, !63, !19}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !489, line: 59, flags: DIFlagFwdDecl)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4343, file: !31, line: 1939, baseType: !4517, size: 64, offset: 1472)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!2015, !358, !68, !4514, !63, !19}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4343, file: !31, line: 1940, baseType: !4521, size: 64, offset: 1536)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !358}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4343, file: !31, line: 1941, baseType: !4525, size: 64, offset: 1600)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!50, !358, !50, !4528, !3143}
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4343, file: !31, line: 1942, baseType: !4530, size: 64, offset: 1664)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!354, !358, !50, !69, !69}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4343, file: !31, line: 1944, baseType: !4534, size: 64, offset: 1728)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !1579, !358}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4343, file: !31, line: 1948, baseType: !4538, size: 64, offset: 1792)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!2015, !358, !69, !358, !69, !63, !19}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4343, file: !31, line: 1950, baseType: !4542, size: 64, offset: 1856)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!69, !358, !69, !358, !69, !69, !19}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4343, file: !31, line: 1953, baseType: !4491, size: 64, offset: 1920)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4343, file: !31, line: 1954, baseType: !4547, size: 64, offset: 1984)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!50, !4550, !19}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4343, file: !31, line: 1955, baseType: !4553, size: 64, offset: 2048)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!50, !4550, !4441, !19}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4338, file: !31, line: 723, baseType: !3679, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1770, file: !31, line: 725, baseType: !4558, size: 64, offset: 2816)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1770, file: !31, line: 726, baseType: !1766, size: 1536, align: 64, offset: 2880)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1770, file: !31, line: 727, baseType: !125, size: 128, offset: 4416)
!4562 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !31, line: 728, baseType: !4563, size: 64, offset: 4544)
!4563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !31, line: 728, size: 64, elements: !4564)
!4564 = !{!4565, !4566, !4569, !4570}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4563, file: !31, line: 729, baseType: !4514, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4563, file: !31, line: 730, baseType: !4567, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4563, file: !31, line: 731, baseType: !1079, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4563, file: !31, line: 732, baseType: !19, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1770, file: !31, line: 735, baseType: !322, size: 32, offset: 4608)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1770, file: !31, line: 738, baseType: !322, size: 32, offset: 4640)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1770, file: !31, line: 739, baseType: !4038, size: 64, offset: 4672)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1770, file: !31, line: 750, baseType: !48, size: 64, offset: 4736)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1766, file: !31, line: 474, baseType: !476, size: 128, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1766, file: !31, line: 475, baseType: !841, size: 320, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1766, file: !31, line: 476, baseType: !316, size: 32, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1766, file: !31, line: 477, baseType: !77, size: 32, offset: 544)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1766, file: !31, line: 482, baseType: !672, size: 128, offset: 576)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1766, file: !31, line: 483, baseType: !67, size: 64, offset: 704)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1766, file: !31, line: 484, baseType: !67, size: 64, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1766, file: !31, line: 485, baseType: !4583, size: 64, offset: 832)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !4586)
!4586 = !{!4587, !4591, !4661, !4665, !4669, !4675, !4680, !4684, !4689, !4693, !4697, !4701, !4702, !4706, !4710, !4714, !4719, !4723, !4730, !4731}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4585, file: !31, line: 405, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!50, !1743, !3691}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4585, file: !31, line: 406, baseType: !4592, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!50, !358, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !142, line: 293, size: 1536, elements: !4597)
!4597 = !{!4598, !4628, !4642}
!4598 = !DIDerivedType(tag: DW_TAG_member, scope: !4596, file: !142, line: 295, baseType: !4599, size: 512)
!4599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4596, file: !142, line: 295, size: 512, elements: !4600)
!4600 = !{!4601, !4627}
!4601 = !DIDerivedType(tag: DW_TAG_member, scope: !4599, file: !142, line: 296, baseType: !4602, size: 448)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4599, file: !142, line: 296, size: 448, elements: !4603)
!4603 = !{!4604, !4605, !4614, !4615, !4616, !4625, !4626}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4602, file: !142, line: 298, baseType: !67, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, scope: !4602, file: !142, line: 299, baseType: !4606, size: 128, offset: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4602, file: !142, line: 299, size: 128, elements: !4607)
!4607 = !{!4608, !4609}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4606, file: !142, line: 300, baseType: !125, size: 128)
!4609 = !DIDerivedType(tag: DW_TAG_member, scope: !4606, file: !142, line: 302, baseType: !4610, size: 128)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4606, file: !142, line: 302, size: 128, elements: !4611)
!4611 = !{!4612, !4613}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4610, file: !142, line: 303, baseType: !48, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4610, file: !142, line: 305, baseType: !19, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4602, file: !142, line: 310, baseType: !1765, size: 64, offset: 192)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4602, file: !142, line: 311, baseType: !67, size: 64, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, scope: !4602, file: !142, line: 312, baseType: !4617, size: 64, offset: 320)
!4617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4602, file: !142, line: 312, size: 64, elements: !4618)
!4618 = !{!4619, !4620}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4617, file: !142, line: 313, baseType: !48, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4617, file: !142, line: 314, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !142, line: 257, baseType: !4622)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 255, size: 64, elements: !4623)
!4623 = !{!4624}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4622, file: !142, line: 256, baseType: !67, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4602, file: !142, line: 316, baseType: !77, size: 32, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4602, file: !142, line: 317, baseType: !77, size: 32, offset: 416)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4599, file: !142, line: 323, baseType: !1744, size: 512, align: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, scope: !4596, file: !142, line: 325, baseType: !4629, size: 512, offset: 512)
!4629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4596, file: !142, line: 325, size: 512, elements: !4630)
!4630 = !{!4631, !4641}
!4631 = !DIDerivedType(tag: DW_TAG_member, scope: !4629, file: !142, line: 326, baseType: !4632, size: 320)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4629, file: !142, line: 326, size: 320, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638, !4639, !4640}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4632, file: !142, line: 327, baseType: !67, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4632, file: !142, line: 328, baseType: !67, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4632, file: !142, line: 329, baseType: !67, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4632, file: !142, line: 331, baseType: !77, size: 32, offset: 192)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4632, file: !142, line: 332, baseType: !77, size: 32, offset: 224)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4632, file: !142, line: 333, baseType: !77, size: 32, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4632, file: !142, line: 335, baseType: !19, size: 32, offset: 288)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4629, file: !142, line: 339, baseType: !1744, size: 512, align: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4596, file: !142, line: 341, baseType: !4643, size: 512, offset: 1024)
!4643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4596, file: !142, line: 341, size: 512, elements: !4644)
!4644 = !{!4645, !4654, !4660}
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !142, line: 342, baseType: !4646, size: 384)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4643, file: !142, line: 342, size: 384, elements: !4647)
!4647 = !{!4648, !4649, !4650, !4651, !4652, !4653}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4646, file: !142, line: 343, baseType: !67, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4646, file: !142, line: 344, baseType: !67, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4646, file: !142, line: 346, baseType: !48, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4646, file: !142, line: 347, baseType: !48, size: 64, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4646, file: !142, line: 348, baseType: !48, size: 64, offset: 256)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4646, file: !142, line: 349, baseType: !48, size: 64, offset: 320)
!4654 = !DIDerivedType(tag: DW_TAG_member, scope: !4643, file: !142, line: 352, baseType: !4655, size: 256)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4643, file: !142, line: 352, size: 256, elements: !4656)
!4656 = !{!4657, !4658, !4659}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4655, file: !142, line: 353, baseType: !67, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4655, file: !142, line: 354, baseType: !67, size: 64, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4655, file: !142, line: 356, baseType: !125, size: 128, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4643, file: !142, line: 359, baseType: !1744, size: 512, align: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4585, file: !31, line: 409, baseType: !4662, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!50, !1765, !3691}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4585, file: !31, line: 412, baseType: !4666, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!1002, !1765, !4595}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4585, file: !31, line: 414, baseType: !4670, size: 64, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{null, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 310, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4585, file: !31, line: 416, baseType: !4676, size: 64, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!50, !358, !1765, !69, !19, !4679, !3143}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4585, file: !31, line: 419, baseType: !4681, size: 64, offset: 384)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!50, !358, !1765, !69, !19, !19, !1743, !48}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4585, file: !31, line: 424, baseType: !4685, size: 64, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!4688, !1765, !4688}
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !53, line: 131, baseType: !545)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4585, file: !31, line: 425, baseType: !4690, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !4595, !63, !63}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4585, file: !31, line: 426, baseType: !4694, size: 64, offset: 576)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!1002, !4595, !316}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4585, file: !31, line: 427, baseType: !4698, size: 64, offset: 640)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4595}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4585, file: !31, line: 428, baseType: !4359, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4585, file: !31, line: 433, baseType: !4703, size: 64, offset: 768)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!50, !1765, !4595, !4595, !271}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4585, file: !31, line: 435, baseType: !4707, size: 64, offset: 832)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!50, !4595}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4585, file: !31, line: 436, baseType: !4711, size: 64, offset: 896)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!1002, !4595, !63, !63}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4585, file: !31, line: 438, baseType: !4715, size: 64, offset: 960)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{null, !4595, !4718, !4718}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4585, file: !31, line: 439, baseType: !4720, size: 64, offset: 1024)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!50, !1765, !1743}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4585, file: !31, line: 442, baseType: !4724, size: 64, offset: 1088)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!50, !4727, !358, !4729}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 66, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4585, file: !31, line: 444, baseType: !4521, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4585, file: !31, line: 445, baseType: !4732, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!50, !4362, !4384}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !31, line: 486, baseType: !67, size: 64, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1766, file: !31, line: 487, baseType: !841, size: 320, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1766, file: !31, line: 488, baseType: !4072, size: 32, offset: 1280)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1766, file: !31, line: 489, baseType: !87, size: 32, offset: 1312)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1766, file: !31, line: 490, baseType: !125, size: 128, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1766, file: !31, line: 491, baseType: !48, size: 64, offset: 1472)
!4741 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !142, line: 107, baseType: !4742, size: 64, offset: 192)
!4742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !142, line: 107, size: 64, elements: !4743)
!4743 = !{!4744, !4745}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4742, file: !142, line: 108, baseType: !67, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4742, file: !142, line: 109, baseType: !67, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1751, file: !142, line: 117, baseType: !67, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !142, line: 119, baseType: !4748, size: 320)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !142, line: 119, size: 320, elements: !4749)
!4749 = !{!4750, !4751, !4754, !4755, !4756}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4748, file: !142, line: 124, baseType: !67, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4748, file: !142, line: 125, baseType: !4752, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !142, line: 125, flags: DIFlagFwdDecl)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4748, file: !142, line: 126, baseType: !67, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4748, file: !142, line: 127, baseType: !67, size: 64, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_member, scope: !4748, file: !142, line: 128, baseType: !4757, size: 64, offset: 256)
!4757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4748, file: !142, line: 128, size: 64, elements: !4758)
!4758 = !{!4759, !4760}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4757, file: !142, line: 133, baseType: !67, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4757, file: !142, line: 138, baseType: !384, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !142, line: 141, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !142, line: 141, size: 64, elements: !4763)
!4763 = !{!4764}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4762, file: !142, line: 142, baseType: !67, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !142, line: 144, baseType: !4766, size: 128)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !142, line: 144, size: 128, elements: !4767)
!4767 = !{!4768, !4838}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4766, file: !142, line: 146, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !158, line: 126, size: 1216, elements: !4771)
!4771 = !{!4772, !4781, !4802, !4803, !4804, !4805, !4806, !4820, !4821, !4822}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4770, file: !158, line: 127, baseType: !4773, size: 384)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !158, line: 21, size: 384, elements: !4774)
!4774 = !{!4775, !4776, !4777, !4778, !4779, !4780}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4773, file: !158, line: 22, baseType: !67, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4773, file: !158, line: 23, baseType: !353, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4773, file: !158, line: 24, baseType: !353, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4773, file: !158, line: 25, baseType: !67, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4773, file: !158, line: 26, baseType: !67, size: 64, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4773, file: !158, line: 27, baseType: !67, size: 64, offset: 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4770, file: !158, line: 128, baseType: !4782, size: 128, offset: 384)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4783, line: 105, size: 128, elements: !4784)
!4783 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4784 = !{!4785, !4786}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4782, file: !4783, line: 110, baseType: !67, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4782, file: !4783, line: 118, baseType: !4787, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4783, line: 95, size: 448, elements: !4789)
!4789 = !{!4790, !4791, !4797, !4798, !4799, !4800, !4801}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4788, file: !4783, line: 96, baseType: !384, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4788, file: !4783, line: 97, baseType: !4792, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4783, line: 60, baseType: !4794)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !4796}
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4788, file: !4783, line: 98, baseType: !4792, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4788, file: !4783, line: 99, baseType: !1002, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4788, file: !4783, line: 100, baseType: !1002, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4788, file: !4783, line: 101, baseType: !371, size: 128, align: 64, offset: 256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4788, file: !4783, line: 102, baseType: !4796, size: 64, offset: 384)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4770, file: !158, line: 129, baseType: !1157, size: 256, offset: 512)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4770, file: !158, line: 130, baseType: !157, size: 32, offset: 768)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4770, file: !158, line: 131, baseType: !19, size: 32, offset: 800)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4770, file: !158, line: 132, baseType: !67, size: 64, offset: 832)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4770, file: !158, line: 133, baseType: !4807, size: 64, offset: 896)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4809)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !158, line: 77, size: 192, elements: !4810)
!4810 = !{!4811, !4815, !4816}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4809, file: !158, line: 83, baseType: !4812, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !1743}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4809, file: !158, line: 89, baseType: !1702, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4809, file: !158, line: 100, baseType: !4817, size: 64, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!50, !4769, !67, !67, !50}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4770, file: !158, line: 134, baseType: !48, size: 64, offset: 960)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4770, file: !158, line: 135, baseType: !50, size: 32, offset: 1024)
!4822 = !DIDerivedType(tag: DW_TAG_member, scope: !4770, file: !158, line: 136, baseType: !4823, size: 128, offset: 1088)
!4823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4770, file: !158, line: 136, size: 128, elements: !4824)
!4824 = !{!4825, !4831}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4823, file: !158, line: 137, baseType: !4826, size: 128)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4827, line: 6, size: 128, elements: !4828)
!4827 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4828 = !{!4829, !4830}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4826, file: !4827, line: 7, baseType: !545, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4826, file: !4827, line: 8, baseType: !545, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, scope: !4823, file: !158, line: 138, baseType: !4832)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4823, file: !158, line: 138, elements: !4833)
!4833 = !{!4834, !4836}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4832, file: !158, line: 138, baseType: !4835)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4832, file: !158, line: 138, elements: !807)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4832, file: !158, line: 138, baseType: !4837)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4826, elements: !1234)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4766, file: !142, line: 147, baseType: !48, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1748, file: !142, line: 161, baseType: !371, size: 128, align: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !142, line: 164, baseType: !4841, size: 32, offset: 384)
!4841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !142, line: 164, size: 32, elements: !4842)
!4842 = !{!4843, !4844}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4841, file: !142, line: 169, baseType: !77, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4841, file: !142, line: 177, baseType: !19, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1744, file: !142, line: 181, baseType: !77, size: 32, offset: 416)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1707, file: !1630, line: 535, baseType: !1743, size: 64, offset: 640)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1707, file: !1630, line: 541, baseType: !4848, size: 64, offset: 704)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1707, file: !1630, line: 545, baseType: !4850, size: 64, offset: 768)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1707, file: !1630, line: 549, baseType: !4852, size: 64, offset: 832)
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !822, line: 520, baseType: !1743)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1629, file: !1630, line: 581, baseType: !4854, size: 64, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!1705, !1706, !19}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1629, file: !1630, line: 582, baseType: !4858, size: 64, offset: 448)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!1705, !1706, !67, !67}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1629, file: !1630, line: 584, baseType: !4862, size: 64, offset: 512)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!67, !1636}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1629, file: !1630, line: 588, baseType: !1702, size: 64, offset: 576)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1629, file: !1630, line: 591, baseType: !1702, size: 64, offset: 640)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1629, file: !1630, line: 597, baseType: !4868, size: 64, offset: 704)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!50, !1636, !67, !48, !50, !50}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !1630, line: 603, baseType: !4872, size: 64, offset: 768)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!45, !1636}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1629, file: !1630, line: 613, baseType: !4876, size: 64, offset: 832)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!50, !1636, !1684}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1629, file: !1630, line: 625, baseType: !4880, size: 64, offset: 896)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!1684, !1636, !67}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1629, file: !1630, line: 633, baseType: !4884, size: 64, offset: 960)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!1743, !1636, !67}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1567, file: !1536, line: 277, baseType: !4888, size: 64, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{null, !1573}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1567, file: !1536, line: 290, baseType: !1609, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1567, file: !1536, line: 292, baseType: !1597, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1567, file: !1536, line: 293, baseType: !1605, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1567, file: !1536, line: 294, baseType: !1601, size: 64, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1567, file: !1536, line: 296, baseType: !4896, size: 64, offset: 384)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!2015, !1573, !1079, !63, !69}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1567, file: !1536, line: 306, baseType: !63, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1567, file: !1536, line: 313, baseType: !1002, size: 8, offset: 512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1567, file: !1536, line: 314, baseType: !4896, size: 64, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1567, file: !1536, line: 317, baseType: !4903, size: 64, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!356, !1573, !4460}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1567, file: !1536, line: 320, baseType: !4907, size: 64, offset: 704)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!50, !1573, !1636}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1562, file: !1536, line: 176, baseType: !4911, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1536, line: 35, flags: DIFlagFwdDecl)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1562, file: !1536, line: 177, baseType: !69, size: 64, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1562, file: !1536, line: 178, baseType: !1534, size: 64, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1535, file: !1536, line: 215, baseType: !48, size: 64, offset: 768)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1535, file: !1536, line: 221, baseType: !545, size: 64, offset: 832)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 223, baseType: !54, size: 16, offset: 896)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1535, file: !1536, line: 224, baseType: !52, size: 16, offset: 912)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1535, file: !1536, line: 225, baseType: !4920, size: 64, offset: 960)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1536, line: 36, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1535, file: !1536, line: 227, baseType: !371, size: 128, align: 64, offset: 1024)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1519, file: !1510, line: 442, baseType: !4924, size: 448, offset: 2048)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1510, line: 138, size: 448, elements: !4925)
!4925 = !{!4926, !4927, !4928}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4924, file: !1510, line: 140, baseType: !1534, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4924, file: !1510, line: 141, baseType: !67, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4924, file: !1510, line: 142, baseType: !2355, size: 320, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1519, file: !1510, line: 443, baseType: !4924, size: 448, offset: 2496)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1519, file: !1510, line: 446, baseType: !4931, offset: 2944)
!4931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4924, elements: !4932)
!4932 = !{!4933}
!4933 = !DISubrange(count: 0)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1519, file: !1510, line: 455, baseType: !121, size: 16, offset: 2944)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1519, file: !1510, line: 456, baseType: !121, size: 16, offset: 2960)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1519, file: !1510, line: 457, baseType: !121, size: 16, offset: 2976)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1519, file: !1510, line: 458, baseType: !121, size: 16, offset: 2992)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1519, file: !1510, line: 461, baseType: !1513, size: 896, offset: 3008)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1519, file: !1510, line: 463, baseType: !4940, size: 64, offset: 3904)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1510, line: 537, size: 41664, elements: !4942)
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4941, file: !1510, line: 538, baseType: !1554, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4941, file: !1510, line: 541, baseType: !19, size: 32, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4941, file: !1510, line: 544, baseType: !50, size: 32, offset: 96)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4941, file: !1510, line: 547, baseType: !125, size: 128, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4941, file: !1510, line: 548, baseType: !371, size: 128, align: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4941, file: !1510, line: 555, baseType: !1519, size: 7872, offset: 384)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4941, file: !1510, line: 558, baseType: !1518, size: 64, offset: 8256)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4941, file: !1510, line: 561, baseType: !77, size: 32, offset: 8320)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4941, file: !1510, line: 564, baseType: !19, size: 32, offset: 8352)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4941, file: !1510, line: 567, baseType: !2584, size: 32768, offset: 8384)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4941, file: !1510, line: 570, baseType: !4954, size: 512, offset: 41152)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1988)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1519, file: !1510, line: 469, baseType: !125, size: 128, offset: 3968)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1519, file: !1510, line: 478, baseType: !4957, size: 1792, offset: 4096)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1792, elements: !4958)
!4958 = !{!4959}
!4959 = !DISubrange(count: 14)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1519, file: !1510, line: 487, baseType: !1518, size: 64, offset: 5888)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1519, file: !1510, line: 488, baseType: !1518, size: 64, offset: 5952)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1519, file: !1510, line: 491, baseType: !4963, size: 64, offset: 6016)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1510, line: 327, size: 896, elements: !4965)
!4965 = !{!4966, !4969, !4979, !4980, !4981, !4982, !4983}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4964, file: !1510, line: 332, baseType: !4967)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4968, line: 64, elements: !807)
!4968 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4964, file: !1510, line: 333, baseType: !4970, size: 192)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1510, line: 299, size: 192, elements: !4971)
!4971 = !{!4972}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4970, file: !1510, line: 300, baseType: !4973, size: 192)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4974, line: 17, size: 192, elements: !4975)
!4974 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4975 = !{!4976, !4977, !4978}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4973, file: !4974, line: 18, baseType: !545, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4973, file: !4974, line: 19, baseType: !545, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4973, file: !4974, line: 20, baseType: !337, size: 64, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4964, file: !1510, line: 339, baseType: !4970, size: 192, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4964, file: !1510, line: 347, baseType: !4970, size: 192, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4964, file: !1510, line: 353, baseType: !4970, size: 192, offset: 576)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4964, file: !1510, line: 366, baseType: !1518, size: 64, offset: 768)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4964, file: !1510, line: 367, baseType: !1518, size: 64, offset: 832)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1519, file: !1510, line: 492, baseType: !125, size: 128, offset: 6080)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1519, file: !1510, line: 495, baseType: !4970, size: 192, offset: 6208)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1519, file: !1510, line: 496, baseType: !4970, size: 192, offset: 6400)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1519, file: !1510, line: 497, baseType: !1346, size: 192, offset: 6592)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1519, file: !1510, line: 503, baseType: !125, size: 128, offset: 6784)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1519, file: !1510, line: 504, baseType: !393, size: 256, offset: 6912)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1519, file: !1510, line: 507, baseType: !82, size: 192, offset: 7168)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1519, file: !1510, line: 510, baseType: !1118, size: 256, offset: 7360)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1519, file: !1510, line: 513, baseType: !4993, size: 64, offset: 7616)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4995, line: 214, elements: !807)
!4995 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1519, file: !1510, line: 516, baseType: !4997, offset: 7680)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4998, line: 76, elements: !807)
!4998 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1519, file: !1510, line: 519, baseType: !77, size: 32, offset: 7680)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1519, file: !1510, line: 522, baseType: !5001, size: 128, offset: 7712)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1510, line: 370, size: 128, elements: !5002)
!5002 = !{!5003, !5004, !5005, !5006}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5001, file: !1510, line: 372, baseType: !1002, size: 8)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !5001, file: !1510, line: 375, baseType: !50, size: 32, offset: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !5001, file: !1510, line: 380, baseType: !50, size: 32, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !5001, file: !1510, line: 386, baseType: !50, size: 32, offset: 96)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1519, file: !1510, line: 529, baseType: !5008, offset: 7872)
!5008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, elements: !1234)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1515, file: !1510, line: 157, baseType: !5010, size: 64, offset: 64)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1510, line: 669, size: 1984, elements: !5012)
!5012 = !{!5013, !5017, !5021, !5025, !5026, !5027, !5028, !5032, !5036, !5037, !5043, !5047, !5048, !5049, !5053, !5057, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5110, !5111}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !5011, file: !1510, line: 670, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!1514, !1514}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !5011, file: !1510, line: 671, baseType: !5018, size: 64, offset: 64)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!50, !1514}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !5011, file: !1510, line: 672, baseType: !5022, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !1514}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !5011, file: !1510, line: 673, baseType: !5022, size: 64, offset: 192)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !5011, file: !1510, line: 674, baseType: !5022, size: 64, offset: 256)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !5011, file: !1510, line: 675, baseType: !5022, size: 64, offset: 320)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !5011, file: !1510, line: 676, baseType: !5029, size: 64, offset: 384)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !1514, !50}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !5011, file: !1510, line: 677, baseType: !5033, size: 64, offset: 448)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!50, !1579, !1514}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !5011, file: !1510, line: 679, baseType: !5033, size: 64, offset: 512)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !5011, file: !1510, line: 682, baseType: !5038, size: 64, offset: 576)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!50, !5041}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1510, line: 30, flags: DIFlagFwdDecl)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !5011, file: !1510, line: 683, baseType: !5044, size: 64, offset: 640)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{null, !5041}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5011, file: !1510, line: 684, baseType: !5044, size: 64, offset: 704)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !5011, file: !1510, line: 685, baseType: !2529, size: 64, offset: 768)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !5011, file: !1510, line: 686, baseType: !5050, size: 64, offset: 832)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!50, !487, !1508}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !5011, file: !1510, line: 688, baseType: !5054, size: 64, offset: 896)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !487, !1508}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !5011, file: !1510, line: 689, baseType: !5058, size: 64, offset: 960)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{null, !487}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5011, file: !1510, line: 690, baseType: !5058, size: 64, offset: 1024)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5011, file: !1510, line: 691, baseType: !5058, size: 64, offset: 1088)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5011, file: !1510, line: 692, baseType: !5022, size: 64, offset: 1152)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5011, file: !1510, line: 694, baseType: !1002, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !5011, file: !1510, line: 707, baseType: !1002, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !5011, file: !1510, line: 719, baseType: !1002, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5011, file: !1510, line: 722, baseType: !50, size: 32, offset: 1248)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5011, file: !1510, line: 723, baseType: !45, size: 64, offset: 1280)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !5011, file: !1510, line: 726, baseType: !45, size: 64, offset: 1344)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5011, file: !1510, line: 729, baseType: !4940, size: 64, offset: 1408)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !5011, file: !1510, line: 732, baseType: !472, size: 192, offset: 1472)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !5011, file: !1510, line: 738, baseType: !125, size: 128, offset: 1664)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !5011, file: !1510, line: 744, baseType: !5074, size: 64, offset: 1792)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1510, line: 580, size: 1728, elements: !5076)
!5076 = !{!5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5086, !5087, !5088, !5092, !5096, !5097, !5098, !5099, !5100, !5104, !5108, !5109}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5075, file: !1510, line: 586, baseType: !4954, size: 512)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5075, file: !1510, line: 587, baseType: !67, size: 64, offset: 512)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5075, file: !1510, line: 593, baseType: !63, size: 64, offset: 576)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5075, file: !1510, line: 596, baseType: !19, size: 32, offset: 640)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5075, file: !1510, line: 604, baseType: !19, size: 32, offset: 672)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5075, file: !1510, line: 610, baseType: !5010, size: 64, offset: 704)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5075, file: !1510, line: 611, baseType: !125, size: 128, offset: 768)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5075, file: !1510, line: 612, baseType: !5085, size: 64, offset: 896)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5075, file: !1510, line: 614, baseType: !1570, size: 64, offset: 960)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5075, file: !1510, line: 615, baseType: !4888, size: 64, offset: 1024)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5075, file: !1510, line: 621, baseType: !5089, size: 64, offset: 1088)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!545, !1514, !5074}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5075, file: !1510, line: 625, baseType: !5093, size: 64, offset: 1152)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!390, !1514, !5074}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5075, file: !1510, line: 628, baseType: !1609, size: 64, offset: 1216)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5075, file: !1510, line: 631, baseType: !1597, size: 64, offset: 1280)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5075, file: !1510, line: 632, baseType: !1605, size: 64, offset: 1344)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5075, file: !1510, line: 633, baseType: !1601, size: 64, offset: 1408)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5075, file: !1510, line: 640, baseType: !5101, size: 64, offset: 1472)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!50, !1514, !5074, !545}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5075, file: !1510, line: 645, baseType: !5105, size: 64, offset: 1536)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!50, !1514, !5074, !390}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5075, file: !1510, line: 654, baseType: !4896, size: 64, offset: 1600)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5075, file: !1510, line: 657, baseType: !4903, size: 64, offset: 1664)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !5011, file: !1510, line: 745, baseType: !5074, size: 64, offset: 1856)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !5011, file: !1510, line: 754, baseType: !19, size: 32, offset: 1920)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1515, file: !1510, line: 160, baseType: !4782, size: 128, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1515, file: !1510, line: 163, baseType: !125, size: 128, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1515, file: !1510, line: 164, baseType: !125, size: 128, offset: 384)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1515, file: !1510, line: 167, baseType: !125, size: 128, offset: 512)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1515, file: !1510, line: 173, baseType: !50, size: 32, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1515, file: !1510, line: 175, baseType: !19, size: 32, offset: 672)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1515, file: !1510, line: 183, baseType: !545, size: 64, offset: 704)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1515, file: !1510, line: 189, baseType: !77, size: 32, offset: 768)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1515, file: !1510, line: 192, baseType: !1118, size: 256, offset: 832)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1515, file: !1510, line: 193, baseType: !5122, size: 448, offset: 1088)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1119, line: 120, size: 448, elements: !5123)
!5123 = !{!5124, !5125, !5126}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5122, file: !1119, line: 121, baseType: !1118, size: 256)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5122, file: !1119, line: 122, baseType: !371, size: 128, align: 64, offset: 256)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5122, file: !1119, line: 125, baseType: !2417, size: 64, offset: 384)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1515, file: !1510, line: 199, baseType: !1514, size: 64, offset: 1536)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1509, file: !1510, line: 218, baseType: !438, size: 32, offset: 896)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1509, file: !1510, line: 226, baseType: !1508, size: 64, offset: 960)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1509, file: !1510, line: 229, baseType: !1518, size: 64, offset: 1024)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1509, file: !1510, line: 232, baseType: !50, size: 32, offset: 1088)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1509, file: !1510, line: 241, baseType: !125, size: 128, offset: 1152)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1509, file: !1510, line: 242, baseType: !125, size: 128, offset: 1280)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1509, file: !1510, line: 243, baseType: !125, size: 128, offset: 1408)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1509, file: !1510, line: 246, baseType: !125, size: 128, offset: 1536)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1509, file: !1510, line: 255, baseType: !4957, size: 1792, offset: 1664)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1509, file: !1510, line: 258, baseType: !125, size: 128, offset: 3456)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1509, file: !1510, line: 259, baseType: !125, size: 128, offset: 3584)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1509, file: !1510, line: 265, baseType: !451, size: 128, offset: 3712)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1509, file: !1510, line: 271, baseType: !125, size: 128, offset: 3840)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1509, file: !1510, line: 277, baseType: !125, size: 128, offset: 3968)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1509, file: !1510, line: 278, baseType: !125, size: 128, offset: 4096)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1509, file: !1510, line: 279, baseType: !125, size: 128, offset: 4224)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1509, file: !1510, line: 288, baseType: !1518, size: 64, offset: 4352)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1509, file: !1510, line: 289, baseType: !1518, size: 64, offset: 4416)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1509, file: !1510, line: 290, baseType: !1508, size: 64, offset: 4480)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1509, file: !1510, line: 293, baseType: !1002, size: 8, offset: 4544)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1509, file: !1510, line: 296, baseType: !371, size: 128, align: 64, offset: 4608)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !488, file: !489, line: 1110, baseType: !5150, size: 64, offset: 15360)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5152, line: 93, size: 8768, elements: !5153)
!5152 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5197, !5206, !5207, !5209, !5210, !5211, !5214, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5252, !5253, !5260, !5270, !5332, !5333, !5336, !5337, !5338, !5339, !5340, !5341}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5151, file: !5152, line: 94, baseType: !438, size: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5151, file: !5152, line: 95, baseType: !77, size: 32, offset: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5151, file: !5152, line: 96, baseType: !50, size: 32, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5151, file: !5152, line: 97, baseType: !50, size: 32, offset: 96)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5151, file: !5152, line: 98, baseType: !125, size: 128, offset: 128)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5151, file: !5152, line: 100, baseType: !82, size: 192, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5151, file: !5152, line: 103, baseType: !487, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5151, file: !5152, line: 106, baseType: !5162, size: 192, offset: 512)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5163, line: 32, size: 192, elements: !5164)
!5163 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5164 = !{!5165, !5166}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5162, file: !5163, line: 33, baseType: !125, size: 128)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5162, file: !5163, line: 34, baseType: !308, size: 64, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5151, file: !5152, line: 109, baseType: !447, size: 64, offset: 704)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5151, file: !5152, line: 112, baseType: !50, size: 32, offset: 768)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5151, file: !5152, line: 114, baseType: !50, size: 32, offset: 800)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5151, file: !5152, line: 115, baseType: !487, size: 64, offset: 832)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5151, file: !5152, line: 118, baseType: !50, size: 32, offset: 896)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5151, file: !5152, line: 119, baseType: !19, size: 32, offset: 928)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5151, file: !5152, line: 121, baseType: !5174, size: 64, offset: 960)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5152, line: 80, size: 448, elements: !5176)
!5176 = !{!5177, !5178, !5184}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5175, file: !5152, line: 81, baseType: !77, size: 32)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5175, file: !5152, line: 82, baseType: !5179, size: 128, offset: 64)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5152, line: 75, size: 128, elements: !5180)
!5180 = !{!5181, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5179, file: !5152, line: 76, baseType: !487, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5179, file: !5152, line: 77, baseType: !5183, size: 64, offset: 64)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5175, file: !5152, line: 83, baseType: !1157, size: 256, offset: 192)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5151, file: !5152, line: 132, baseType: !19, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5151, file: !5152, line: 133, baseType: !19, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5151, file: !5152, line: 138, baseType: !19, size: 32, offset: 1056)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5151, file: !5152, line: 139, baseType: !125, size: 128, offset: 1088)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5151, file: !5152, line: 142, baseType: !608, size: 512, offset: 1216)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5151, file: !5152, line: 143, baseType: !616, size: 64, offset: 1728)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5151, file: !5152, line: 150, baseType: !5192, size: 256, offset: 1792)
!5192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5193, size: 256, elements: !2247)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5152, line: 38, size: 128, elements: !5194)
!5194 = !{!5195, !5196}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5193, file: !5152, line: 39, baseType: !545, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5193, file: !5152, line: 40, baseType: !545, size: 64, offset: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5151, file: !5152, line: 156, baseType: !5198, size: 192, offset: 2048)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5152, line: 66, size: 192, elements: !5199)
!5199 = !{!5200}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5198, file: !5152, line: 67, baseType: !5201, size: 192)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5152, line: 47, size: 192, elements: !5202)
!5202 = !{!5203, !5204, !5205}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5201, file: !5152, line: 48, baseType: !386, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5201, file: !5152, line: 49, baseType: !386, size: 64, offset: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5201, file: !5152, line: 50, baseType: !386, size: 64, offset: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5151, file: !5152, line: 160, baseType: !1358, size: 640, offset: 2240)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5151, file: !5152, line: 163, baseType: !5208, size: 256, offset: 2880)
!5208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 256, elements: !456)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5151, file: !5152, line: 169, baseType: !434, size: 64, offset: 3136)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5151, file: !5152, line: 172, baseType: !50, size: 32, offset: 3200)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5151, file: !5152, line: 174, baseType: !5212, size: 64, offset: 3264)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5152, line: 174, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5151, file: !5152, line: 185, baseType: !5215, size: 64, offset: 3328)
!5215 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !659, line: 860, baseType: !5216)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 853, size: 64, elements: !5217)
!5217 = !{!5218, !5219}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5216, file: !659, line: 858, baseType: !1797, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5216, file: !659, line: 859, baseType: !87, size: 32, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5151, file: !5152, line: 186, baseType: !545, size: 64, offset: 3392)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5151, file: !5152, line: 186, baseType: !545, size: 64, offset: 3456)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5151, file: !5152, line: 186, baseType: !545, size: 64, offset: 3520)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5151, file: !5152, line: 186, baseType: !545, size: 64, offset: 3584)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5151, file: !5152, line: 187, baseType: !545, size: 64, offset: 3648)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5151, file: !5152, line: 188, baseType: !545, size: 64, offset: 3712)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5151, file: !5152, line: 189, baseType: !1346, size: 192, offset: 3776)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5151, file: !5152, line: 190, baseType: !67, size: 64, offset: 3968)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5151, file: !5152, line: 190, baseType: !67, size: 64, offset: 4032)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5151, file: !5152, line: 190, baseType: !67, size: 64, offset: 4096)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5151, file: !5152, line: 190, baseType: !67, size: 64, offset: 4160)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5151, file: !5152, line: 191, baseType: !67, size: 64, offset: 4224)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5151, file: !5152, line: 191, baseType: !67, size: 64, offset: 4288)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5151, file: !5152, line: 191, baseType: !67, size: 64, offset: 4352)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5151, file: !5152, line: 191, baseType: !67, size: 64, offset: 4416)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5151, file: !5152, line: 192, baseType: !67, size: 64, offset: 4480)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5151, file: !5152, line: 192, baseType: !67, size: 64, offset: 4544)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5151, file: !5152, line: 192, baseType: !67, size: 64, offset: 4608)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5151, file: !5152, line: 192, baseType: !67, size: 64, offset: 4672)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5151, file: !5152, line: 193, baseType: !67, size: 64, offset: 4736)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5151, file: !5152, line: 193, baseType: !67, size: 64, offset: 4800)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5151, file: !5152, line: 194, baseType: !5242, size: 448, offset: 4864)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5243, line: 12, size: 448, elements: !5244)
!5243 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5244 = !{!5245, !5246, !5247, !5248, !5249, !5250, !5251}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5242, file: !5243, line: 15, baseType: !545, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5242, file: !5243, line: 17, baseType: !545, size: 64, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5242, file: !5243, line: 19, baseType: !545, size: 64, offset: 128)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5242, file: !5243, line: 21, baseType: !545, size: 64, offset: 192)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5242, file: !5243, line: 29, baseType: !545, size: 64, offset: 256)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5242, file: !5243, line: 35, baseType: !545, size: 64, offset: 320)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5242, file: !5243, line: 44, baseType: !545, size: 64, offset: 384)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5151, file: !5152, line: 202, baseType: !337, size: 64, offset: 5312)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5151, file: !5152, line: 213, baseType: !5254, size: 2048, offset: 5376)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5255, size: 2048, elements: !1450)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5256, line: 43, size: 128, elements: !5257)
!5256 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5257 = !{!5258, !5259}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5255, file: !5256, line: 44, baseType: !66, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5255, file: !5256, line: 45, baseType: !66, size: 64, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5151, file: !5152, line: 216, baseType: !5261, size: 448, offset: 7424)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5152, line: 30, size: 448, elements: !5262)
!5262 = !{!5263, !5264, !5265, !5266, !5267, !5268, !5269}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5261, file: !5152, line: 31, baseType: !50, size: 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5261, file: !5152, line: 32, baseType: !354, size: 64, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5261, file: !5152, line: 33, baseType: !67, size: 64, offset: 128)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5261, file: !5152, line: 34, baseType: !545, size: 64, offset: 192)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5261, file: !5152, line: 34, baseType: !545, size: 64, offset: 256)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5261, file: !5152, line: 35, baseType: !67, size: 64, offset: 320)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5261, file: !5152, line: 35, baseType: !67, size: 64, offset: 384)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5151, file: !5152, line: 219, baseType: !5271, size: 64, offset: 7872)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5273, line: 41, size: 3456, elements: !5274)
!5273 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5274 = !{!5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5272, file: !5273, line: 47, baseType: !122, size: 16)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5272, file: !5273, line: 48, baseType: !322, size: 32, offset: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5272, file: !5273, line: 54, baseType: !113, size: 8, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5272, file: !5273, line: 55, baseType: !113, size: 8, offset: 72)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5272, file: !5273, line: 73, baseType: !336, size: 64, align: 64, offset: 128)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5272, file: !5273, line: 74, baseType: !336, size: 64, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5272, file: !5273, line: 81, baseType: !336, size: 64, offset: 256)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5272, file: !5273, line: 82, baseType: !336, size: 64, offset: 320)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5272, file: !5273, line: 85, baseType: !336, size: 64, offset: 384)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5272, file: !5273, line: 86, baseType: !336, size: 64, offset: 448)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5272, file: !5273, line: 94, baseType: !336, size: 64, offset: 512)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5272, file: !5273, line: 102, baseType: !336, size: 64, offset: 576)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5272, file: !5273, line: 107, baseType: !4041, size: 256, offset: 640)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5272, file: !5273, line: 108, baseType: !113, size: 8, align: 64, offset: 896)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5272, file: !5273, line: 110, baseType: !5290, size: 24, offset: 904)
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 24, elements: !430)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5272, file: !5273, line: 111, baseType: !322, size: 32, align: 64, offset: 960)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5272, file: !5273, line: 113, baseType: !322, size: 32, offset: 992)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5272, file: !5273, line: 114, baseType: !322, size: 32, offset: 1024)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5272, file: !5273, line: 115, baseType: !322, size: 32, offset: 1056)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5272, file: !5273, line: 117, baseType: !322, size: 32, offset: 1088)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5272, file: !5273, line: 118, baseType: !336, size: 64, align: 64, offset: 1152)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5272, file: !5273, line: 120, baseType: !336, size: 64, offset: 1216)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5272, file: !5273, line: 121, baseType: !336, size: 64, offset: 1280)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5272, file: !5273, line: 122, baseType: !336, size: 64, offset: 1344)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5272, file: !5273, line: 123, baseType: !336, size: 64, offset: 1408)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5272, file: !5273, line: 133, baseType: !336, size: 64, offset: 1472)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5272, file: !5273, line: 137, baseType: !336, size: 64, offset: 1536)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5272, file: !5273, line: 142, baseType: !336, size: 64, offset: 1600)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5272, file: !5273, line: 143, baseType: !336, size: 64, offset: 1664)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5272, file: !5273, line: 146, baseType: !336, size: 64, offset: 1728)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5272, file: !5273, line: 147, baseType: !336, size: 64, offset: 1792)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5272, file: !5273, line: 148, baseType: !336, size: 64, offset: 1856)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5272, file: !5273, line: 149, baseType: !336, size: 64, offset: 1920)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5272, file: !5273, line: 154, baseType: !336, size: 64, offset: 1984)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5272, file: !5273, line: 155, baseType: !336, size: 64, offset: 2048)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5272, file: !5273, line: 156, baseType: !336, size: 64, offset: 2112)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5272, file: !5273, line: 158, baseType: !336, size: 64, offset: 2176)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5272, file: !5273, line: 159, baseType: !336, size: 64, offset: 2240)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5272, file: !5273, line: 162, baseType: !336, size: 64, offset: 2304)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5272, file: !5273, line: 163, baseType: !336, size: 64, offset: 2368)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5272, file: !5273, line: 164, baseType: !336, size: 64, offset: 2432)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5272, file: !5273, line: 167, baseType: !336, size: 64, offset: 2496)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5272, file: !5273, line: 168, baseType: !336, size: 64, offset: 2560)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5272, file: !5273, line: 171, baseType: !336, size: 64, offset: 2624)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5272, file: !5273, line: 172, baseType: !336, size: 64, offset: 2688)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5272, file: !5273, line: 175, baseType: !336, size: 64, offset: 2752)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5272, file: !5273, line: 178, baseType: !336, size: 64, offset: 2816)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5272, file: !5273, line: 179, baseType: !336, size: 64, offset: 2880)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5272, file: !5273, line: 182, baseType: !322, size: 32, offset: 2944)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5272, file: !5273, line: 186, baseType: !336, size: 64, align: 64, offset: 3008)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5272, file: !5273, line: 194, baseType: !336, size: 64, offset: 3072)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5272, file: !5273, line: 195, baseType: !336, size: 64, offset: 3136)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5272, file: !5273, line: 199, baseType: !336, size: 64, offset: 3200)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5272, file: !5273, line: 200, baseType: !336, size: 64, offset: 3264)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5272, file: !5273, line: 203, baseType: !336, size: 64, offset: 3328)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5272, file: !5273, line: 204, baseType: !336, size: 64, offset: 3392)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5151, file: !5152, line: 222, baseType: !19, size: 32, offset: 7936)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5151, file: !5152, line: 223, baseType: !5334, size: 64, offset: 8000)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5152, line: 223, flags: DIFlagFwdDecl)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5151, file: !5152, line: 230, baseType: !1002, size: 8, offset: 8064)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5151, file: !5152, line: 231, baseType: !355, size: 16, offset: 8080)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5151, file: !5152, line: 232, baseType: !355, size: 16, offset: 8096)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5151, file: !5152, line: 234, baseType: !786, size: 64, offset: 8128)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5151, file: !5152, line: 237, baseType: !393, size: 256, offset: 8192)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5151, file: !5152, line: 243, baseType: !841, size: 320, offset: 8448)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !488, file: !489, line: 1111, baseType: !5343, size: 64, offset: 15424)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5152, line: 20, size: 16640, elements: !5345)
!5345 = !{!5346, !5347, !5348, !5349}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5344, file: !5152, line: 21, baseType: !87, size: 32)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5344, file: !5152, line: 22, baseType: !438, size: 32, offset: 32)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5344, file: !5152, line: 23, baseType: !82, size: 192, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5344, file: !5152, line: 24, baseType: !5350, size: 16384, offset: 256)
!5350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5351, size: 16384, elements: !1988)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5163, line: 51, size: 256, elements: !5352)
!5352 = !{!5353}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5351, file: !5163, line: 52, baseType: !5354, size: 256)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5163, line: 37, size: 256, elements: !5355)
!5355 = !{!5356, !5363, !5364, !5368}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5354, file: !5163, line: 39, baseType: !5357, size: 64)
!5357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5358, line: 83, baseType: !5359)
!5358 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5358, line: 82, baseType: !5361)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{null, !50}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5354, file: !5163, line: 40, baseType: !67, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5354, file: !5163, line: 46, baseType: !5365, size: 64, offset: 128)
!5365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5358, line: 86, baseType: !5366)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5358, line: 85, baseType: !2530)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5354, file: !5163, line: 48, baseType: !308, size: 64, offset: 192)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !488, file: !489, line: 1112, baseType: !308, size: 64, offset: 15488)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !488, file: !489, line: 1113, baseType: !308, size: 64, offset: 15552)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !488, file: !489, line: 1115, baseType: !308, size: 64, offset: 15616)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !488, file: !489, line: 1116, baseType: !5162, size: 192, offset: 15680)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !488, file: !489, line: 1117, baseType: !67, size: 64, offset: 15872)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !488, file: !489, line: 1118, baseType: !63, size: 64, offset: 15936)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !488, file: !489, line: 1119, baseType: !19, size: 32, offset: 16000)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !488, file: !489, line: 1121, baseType: !374, size: 64, offset: 16064)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !488, file: !489, line: 1125, baseType: !5378, size: 64, offset: 16128)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !489, line: 43, flags: DIFlagFwdDecl)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !488, file: !489, line: 1127, baseType: !975, size: 32, offset: 16192)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !488, file: !489, line: 1128, baseType: !19, size: 32, offset: 16224)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !488, file: !489, line: 1130, baseType: !5383, size: 128, offset: 16256)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5384, line: 37, size: 128, elements: !5385)
!5384 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5385 = !{!5386, !5387, !5388}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5383, file: !5384, line: 38, baseType: !50, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5383, file: !5384, line: 39, baseType: !77, size: 32, offset: 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5383, file: !5384, line: 40, baseType: !5389, size: 64, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5384, line: 24, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !488, file: !489, line: 1131, baseType: !5392, size: 256, offset: 16384)
!5392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5393, line: 12, size: 256, elements: !5394)
!5393 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5394 = !{!5395, !5396, !5397, !5398}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5392, file: !5393, line: 13, baseType: !1079, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5392, file: !5393, line: 14, baseType: !67, size: 64, offset: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5392, file: !5393, line: 15, baseType: !67, size: 64, offset: 128)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5392, file: !5393, line: 16, baseType: !1002, size: 8, offset: 192)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !488, file: !489, line: 1134, baseType: !545, size: 64, offset: 16640)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !488, file: !489, line: 1135, baseType: !545, size: 64, offset: 16704)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !488, file: !489, line: 1138, baseType: !87, size: 32, offset: 16768)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !488, file: !489, line: 1141, baseType: !398, size: 32, offset: 16800)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !488, file: !489, line: 1143, baseType: !5404, size: 64, offset: 16832)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !489, line: 735, size: 64, elements: !5405)
!5405 = !{!5406}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5404, file: !489, line: 736, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !488, file: !489, line: 1147, baseType: !672, size: 128, offset: 16896)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !488, file: !489, line: 1149, baseType: !487, size: 64, offset: 17024)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !488, file: !489, line: 1151, baseType: !5411, size: 64, offset: 17088)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !489, line: 1151, flags: DIFlagFwdDecl)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !488, file: !489, line: 1188, baseType: !48, size: 64, offset: 17152)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !488, file: !489, line: 1191, baseType: !5415, size: 64, offset: 17216)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !489, line: 44, flags: DIFlagFwdDecl)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !488, file: !489, line: 1194, baseType: !5418, size: 64, offset: 17280)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !489, line: 45, flags: DIFlagFwdDecl)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !488, file: !489, line: 1197, baseType: !5421, size: 64, offset: 17344)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !489, line: 61, flags: DIFlagFwdDecl)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !488, file: !489, line: 1199, baseType: !5424, size: 64, offset: 17408)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5426, line: 99, size: 128, elements: !5427)
!5426 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5427 = !{!5428, !5429, !5430}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5425, file: !5426, line: 100, baseType: !384, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5425, file: !5426, line: 101, baseType: !77, size: 32, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5425, file: !5426, line: 103, baseType: !54, size: 16, offset: 96)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !488, file: !489, line: 1202, baseType: !5432, size: 64, offset: 17472)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !489, line: 48, flags: DIFlagFwdDecl)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !488, file: !489, line: 1205, baseType: !67, size: 64, offset: 17536)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !488, file: !489, line: 1206, baseType: !5436, size: 64, offset: 17600)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5163, line: 14, baseType: !5438)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5163, line: 12, size: 384, elements: !5439)
!5439 = !{!5440}
!5440 = !DIDerivedType(tag: DW_TAG_member, scope: !5438, file: !5163, line: 13, baseType: !5441, size: 384)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5438, file: !5163, line: 13, size: 384, elements: !5442)
!5442 = !{!5443, !5444, !5445, !5446}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5441, file: !5163, line: 13, baseType: !50, size: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5441, file: !5163, line: 13, baseType: !50, size: 32, offset: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5441, file: !5163, line: 13, baseType: !50, size: 32, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5441, file: !5163, line: 13, baseType: !5447, size: 256, offset: 128)
!5447 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5448, line: 37, size: 256, elements: !5449)
!5448 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5449 = !{!5450, !5455, !5468, !5474, !5483, !5510, !5515}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5447, file: !5448, line: 42, baseType: !5451, size: 64)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 39, size: 64, elements: !5452)
!5452 = !{!5453, !5454}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5451, file: !5448, line: 40, baseType: !1322, size: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5451, file: !5448, line: 41, baseType: !981, size: 32, offset: 32)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5447, file: !5448, line: 50, baseType: !5456, size: 192)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 45, size: 192, elements: !5457)
!5457 = !{!5458, !5460, !5461, !5467}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5456, file: !5448, line: 46, baseType: !5459, size: 32)
!5459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !65, line: 95, baseType: !50)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5456, file: !5448, line: 47, baseType: !50, size: 32, offset: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5456, file: !5448, line: 48, baseType: !5462, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5448, line: 11, baseType: !5463)
!5463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5448, line: 8, size: 64, elements: !5464)
!5464 = !{!5465, !5466}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5463, file: !5448, line: 9, baseType: !50, size: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5463, file: !5448, line: 10, baseType: !48, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5456, file: !5448, line: 49, baseType: !50, size: 32, offset: 128)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5447, file: !5448, line: 57, baseType: !5469, size: 128)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 53, size: 128, elements: !5470)
!5470 = !{!5471, !5472, !5473}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5469, file: !5448, line: 54, baseType: !1322, size: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5469, file: !5448, line: 55, baseType: !981, size: 32, offset: 32)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5469, file: !5448, line: 56, baseType: !5462, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5447, file: !5448, line: 66, baseType: !5475, size: 256)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 60, size: 256, elements: !5476)
!5476 = !{!5477, !5478, !5479, !5480, !5482}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5475, file: !5448, line: 61, baseType: !1322, size: 32)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5475, file: !5448, line: 62, baseType: !981, size: 32, offset: 32)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5475, file: !5448, line: 63, baseType: !50, size: 32, offset: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5475, file: !5448, line: 64, baseType: !5481, size: 64, offset: 128)
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !65, line: 94, baseType: !2017)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5475, file: !5448, line: 65, baseType: !5481, size: 64, offset: 192)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5447, file: !5448, line: 105, baseType: !5484, size: 256)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 69, size: 256, elements: !5485)
!5485 = !{!5486, !5487}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5484, file: !5448, line: 70, baseType: !48, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, scope: !5484, file: !5448, line: 79, baseType: !5488, size: 192, offset: 64)
!5488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5484, file: !5448, line: 79, size: 192, elements: !5489)
!5489 = !{!5490, !5491, !5492, !5499, !5504}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5488, file: !5448, line: 81, baseType: !50, size: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5488, file: !5448, line: 86, baseType: !355, size: 16)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5488, file: !5448, line: 92, baseType: !5493, size: 192)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5488, file: !5448, line: 88, size: 192, elements: !5494)
!5494 = !{!5495, !5497, !5498}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5493, file: !5448, line: 89, baseType: !5496, size: 64)
!5496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !651)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5493, file: !5448, line: 90, baseType: !48, size: 64, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5493, file: !5448, line: 91, baseType: !48, size: 64, offset: 128)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5488, file: !5448, line: 97, baseType: !5500, size: 96)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5488, file: !5448, line: 94, size: 96, elements: !5501)
!5501 = !{!5502, !5503}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5500, file: !5448, line: 95, baseType: !5496, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5500, file: !5448, line: 96, baseType: !322, size: 32, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5488, file: !5448, line: 103, baseType: !5505, size: 128)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5488, file: !5448, line: 99, size: 128, elements: !5506)
!5506 = !{!5507, !5508, !5509}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5505, file: !5448, line: 100, baseType: !67, size: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5505, file: !5448, line: 101, baseType: !322, size: 32, offset: 64)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5505, file: !5448, line: 102, baseType: !322, size: 32, offset: 96)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5447, file: !5448, line: 111, baseType: !5511, size: 128)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 108, size: 128, elements: !5512)
!5512 = !{!5513, !5514}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5511, file: !5448, line: 109, baseType: !354, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5511, file: !5448, line: 110, baseType: !50, size: 32, offset: 64)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5447, file: !5448, line: 118, baseType: !5516, size: 128)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !5448, line: 114, size: 128, elements: !5517)
!5517 = !{!5518, !5519, !5520}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5516, file: !5448, line: 115, baseType: !48, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5516, file: !5448, line: 116, baseType: !50, size: 32, offset: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5516, file: !5448, line: 117, baseType: !19, size: 32, offset: 96)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !488, file: !489, line: 1208, baseType: !5242, size: 448, offset: 17664)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !488, file: !489, line: 1215, baseType: !545, size: 64, offset: 18112)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !488, file: !489, line: 1217, baseType: !545, size: 64, offset: 18176)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !488, file: !489, line: 1219, baseType: !545, size: 64, offset: 18240)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !488, file: !489, line: 1223, baseType: !5526, size: 64, offset: 18304)
!5526 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5527, line: 99, baseType: !5528)
!5527 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5527, line: 99, size: 64, elements: !5529)
!5529 = !{!5530}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5528, file: !5527, line: 99, baseType: !313, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !488, file: !489, line: 1225, baseType: !1797, size: 32, offset: 18368)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !488, file: !489, line: 1226, baseType: !50, size: 32, offset: 18400)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !488, file: !489, line: 1227, baseType: !50, size: 32, offset: 18432)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !488, file: !489, line: 1231, baseType: !1508, size: 64, offset: 18496)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !488, file: !489, line: 1233, baseType: !125, size: 128, offset: 18560)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !488, file: !489, line: 1240, baseType: !5537, size: 64, offset: 18688)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !489, line: 62, flags: DIFlagFwdDecl)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !488, file: !489, line: 1242, baseType: !5540, size: 64, offset: 18752)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5542, line: 392, size: 96, elements: !5543)
!5542 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5543 = !{!5544, !5550, !5552}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5541, file: !5542, line: 393, baseType: !5545, size: 32)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5542, line: 388, size: 32, elements: !5546)
!5546 = !{!5547}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5545, file: !5542, line: 389, baseType: !5548, size: 32)
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5549, line: 46, baseType: !498)
!5549 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5541, file: !5542, line: 394, baseType: !5551, size: 32, offset: 32)
!5551 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5549, line: 42, baseType: !887)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5541, file: !5542, line: 395, baseType: !5548, size: 32, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !488, file: !489, line: 1244, baseType: !125, size: 128, offset: 18816)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !488, file: !489, line: 1245, baseType: !5555, size: 64, offset: 18944)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !489, line: 51, flags: DIFlagFwdDecl)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !488, file: !489, line: 1246, baseType: !393, size: 256, offset: 19008)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !488, file: !489, line: 1247, baseType: !19, size: 32, offset: 19264)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !488, file: !489, line: 1250, baseType: !3029, size: 64, offset: 19328)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !488, file: !489, line: 1251, baseType: !393, size: 256, offset: 19392)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !488, file: !489, line: 1252, baseType: !125, size: 128, offset: 19648)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !488, file: !489, line: 1259, baseType: !1684, size: 64, offset: 19776)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !488, file: !489, line: 1260, baseType: !355, size: 16, offset: 19840)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !488, file: !489, line: 1261, baseType: !355, size: 16, offset: 19856)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !488, file: !489, line: 1314, baseType: !5566, size: 64, offset: 19904)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5568, line: 62, size: 256, align: 256, elements: !5569)
!5568 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5569 = !{!5570, !5571, !5572, !5573, !5574, !5575, !5576}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5567, file: !5568, line: 75, baseType: !322, size: 32)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5567, file: !5568, line: 90, baseType: !322, size: 32, offset: 32)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5567, file: !5568, line: 112, baseType: !336, size: 64, offset: 64)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5567, file: !5568, line: 132, baseType: !322, size: 32, offset: 128)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5567, file: !5568, line: 140, baseType: !322, size: 32, offset: 160)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5567, file: !5568, line: 149, baseType: !322, size: 32, offset: 192)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5567, file: !5568, line: 154, baseType: !5577, offset: 224)
!5577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1234)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !488, file: !489, line: 1315, baseType: !498, size: 32, offset: 19968)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !488, file: !489, line: 1316, baseType: !498, size: 32, offset: 20000)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !488, file: !489, line: 1321, baseType: !67, size: 64, offset: 20032)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !488, file: !489, line: 1325, baseType: !50, size: 32, offset: 20096)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !488, file: !489, line: 1326, baseType: !50, size: 32, offset: 20128)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !488, file: !489, line: 1327, baseType: !50, size: 32, offset: 20160)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !488, file: !489, line: 1328, baseType: !50, size: 32, offset: 20192)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !488, file: !489, line: 1329, baseType: !371, size: 128, align: 64, offset: 20224)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !488, file: !489, line: 1332, baseType: !5587, size: 128, offset: 20352)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5588, line: 51, size: 128, elements: !5589)
!5588 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5589 = !{!5590, !5595, !5596}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5587, file: !5588, line: 60, baseType: !5591, size: 64)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5592, line: 7, size: 64, elements: !5593)
!5592 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5593 = !{!5594}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5591, file: !5592, line: 12, baseType: !737, size: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5587, file: !5588, line: 63, baseType: !1002, size: 8, offset: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5587, file: !5588, line: 70, baseType: !1002, size: 8, offset: 72)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !488, file: !489, line: 1335, baseType: !4514, size: 64, offset: 20480)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !488, file: !489, line: 1337, baseType: !5599, size: 128, offset: 20544)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5588, line: 39, size: 128, elements: !5600)
!5600 = !{!5601, !5602, !5603}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5599, file: !5588, line: 40, baseType: !1743, size: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5599, file: !5588, line: 42, baseType: !322, size: 32, offset: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5599, file: !5588, line: 43, baseType: !322, size: 32, offset: 96)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !488, file: !489, line: 1340, baseType: !5605, size: 64, offset: 20672)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !489, line: 69, flags: DIFlagFwdDecl)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !488, file: !489, line: 1351, baseType: !50, size: 32, offset: 20736)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !488, file: !489, line: 1352, baseType: !50, size: 32, offset: 20768)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !488, file: !489, line: 1354, baseType: !67, size: 64, offset: 20800)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !488, file: !489, line: 1364, baseType: !545, size: 64, offset: 20864)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !488, file: !489, line: 1365, baseType: !545, size: 64, offset: 20928)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !488, file: !489, line: 1412, baseType: !67, size: 64, offset: 20992)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !488, file: !489, line: 1453, baseType: !5614, size: 64, offset: 21056)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !489, line: 1453, flags: DIFlagFwdDecl)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !488, file: !489, line: 1457, baseType: !5617, size: 64, offset: 21120)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !166, line: 61, size: 576, elements: !5619)
!5619 = !{!5620, !5621, !5640, !5643, !5644, !5677, !5687}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5618, file: !166, line: 62, baseType: !165, size: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5618, file: !166, line: 64, baseType: !5622, size: 192, offset: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5618, file: !166, line: 64, size: 192, elements: !5623)
!5623 = !{!5624, !5635}
!5624 = !DIDerivedType(tag: DW_TAG_member, scope: !5622, file: !166, line: 65, baseType: !5625, size: 192)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !166, line: 65, size: 192, elements: !5626)
!5626 = !{!5627, !5634}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5625, file: !166, line: 66, baseType: !5628, size: 128)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5629, line: 50, size: 128, elements: !5630)
!5629 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5630 = !{!5631, !5632, !5633}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5628, file: !5629, line: 52, baseType: !67, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5628, file: !5629, line: 54, baseType: !19, size: 32, offset: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5628, file: !5629, line: 55, baseType: !19, size: 32, offset: 96)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5625, file: !166, line: 67, baseType: !67, size: 64, offset: 128)
!5635 = !DIDerivedType(tag: DW_TAG_member, scope: !5622, file: !166, line: 70, baseType: !5636, size: 192)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !166, line: 70, size: 192, elements: !5637)
!5637 = !{!5638, !5639}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5636, file: !166, line: 71, baseType: !371, size: 128, align: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5636, file: !166, line: 72, baseType: !67, size: 64, offset: 128)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5618, file: !166, line: 76, baseType: !5641, size: 64, offset: 256)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !166, line: 76, flags: DIFlagFwdDecl)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5618, file: !166, line: 77, baseType: !67, size: 64, offset: 320)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5618, file: !166, line: 79, baseType: !5645, size: 64, offset: 384)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5629, line: 25, size: 256, elements: !5647)
!5647 = !{!5648, !5654, !5658}
!5648 = !DIDerivedType(tag: DW_TAG_member, scope: !5646, file: !5629, line: 26, baseType: !5649, size: 128)
!5649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5646, file: !5629, line: 26, size: 128, elements: !5650)
!5650 = !{!5651, !5653}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5649, file: !5629, line: 27, baseType: !5652, size: 128)
!5652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !1450)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5649, file: !5629, line: 28, baseType: !5652, size: 128)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5646, file: !5629, line: 31, baseType: !5655, size: 64, offset: 128)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5657)
!5657 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5629, line: 23, flags: DIFlagFwdDecl)
!5658 = !DIDerivedType(tag: DW_TAG_member, scope: !5646, file: !5629, line: 33, baseType: !5659, size: 64, offset: 192)
!5659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5646, file: !5629, line: 33, size: 64, elements: !5660)
!5660 = !{!5661, !5667, !5672}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5659, file: !5629, line: 38, baseType: !5662, size: 64)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5659, file: !5629, line: 34, size: 64, elements: !5663)
!5663 = !{!5664, !5665, !5666}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5662, file: !5629, line: 35, baseType: !887, size: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5662, file: !5629, line: 36, baseType: !111, size: 8, offset: 32)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5662, file: !5629, line: 37, baseType: !111, size: 8, offset: 40)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5659, file: !5629, line: 42, baseType: !5668, size: 16)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5659, file: !5629, line: 39, size: 16, elements: !5669)
!5669 = !{!5670, !5671}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5668, file: !5629, line: 40, baseType: !111, size: 8)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5668, file: !5629, line: 41, baseType: !111, size: 8, offset: 8)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5659, file: !5629, line: 46, baseType: !5673, size: 16)
!5673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5659, file: !5629, line: 43, size: 16, elements: !5674)
!5674 = !{!5675, !5676}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5673, file: !5629, line: 44, baseType: !111, size: 8)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5673, file: !5629, line: 45, baseType: !111, size: 8, offset: 8)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5618, file: !166, line: 81, baseType: !5678, size: 64, offset: 448)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !166, line: 85, size: 384, elements: !5680)
!5680 = !{!5681, !5682, !5683, !5684, !5685, !5686}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5679, file: !166, line: 86, baseType: !5641, size: 64)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5679, file: !166, line: 87, baseType: !67, size: 64, offset: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5679, file: !166, line: 88, baseType: !67, size: 64, offset: 128)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5679, file: !166, line: 89, baseType: !67, size: 64, offset: 192)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5679, file: !166, line: 90, baseType: !1002, size: 8, offset: 256)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5679, file: !166, line: 92, baseType: !5678, size: 64, offset: 320)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5618, file: !166, line: 82, baseType: !19, size: 32, offset: 512)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !488, file: !489, line: 1463, baseType: !5689, offset: 21184)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !489, line: 739, elements: !807)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !488, file: !489, line: 1470, baseType: !371, size: 128, align: 64, offset: 21184)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !488, file: !489, line: 1471, baseType: !438, size: 32, offset: 21312)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !488, file: !489, line: 1472, baseType: !50, size: 32, offset: 21344)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !488, file: !489, line: 1474, baseType: !487, size: 64, offset: 21376)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !488, file: !489, line: 1475, baseType: !2355, size: 320, offset: 21440)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !488, file: !489, line: 1478, baseType: !5696, size: 64, offset: 21760)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !489, line: 1478, flags: DIFlagFwdDecl)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !488, file: !489, line: 1482, baseType: !438, size: 32, offset: 21824)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !488, file: !489, line: 1489, baseType: !48, size: 64, offset: 21888)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !488, file: !489, line: 1504, baseType: !48, size: 64, offset: 21952)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !488, file: !489, line: 1505, baseType: !336, size: 64, offset: 22016)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !488, file: !489, line: 1506, baseType: !545, size: 64, offset: 22080)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !488, file: !489, line: 1507, baseType: !336, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !488, file: !489, line: 1508, baseType: !336, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !488, file: !489, line: 1509, baseType: !336, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !488, file: !489, line: 1510, baseType: !371, size: 128, align: 64, offset: 22208)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !488, file: !489, line: 1511, baseType: !50, size: 32, offset: 22336)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !488, file: !489, line: 1515, baseType: !5709, size: 64, offset: 22400)
!5709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !366, line: 56, size: 64, elements: !5710)
!5710 = !{!5711}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5709, file: !366, line: 57, baseType: !369, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !488, file: !489, line: 1518, baseType: !5709, size: 64, offset: 22464)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !488, file: !489, line: 1528, baseType: !371, size: 128, align: 64, offset: 22528)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !488, file: !489, line: 1552, baseType: !5715, size: 35328, offset: 23040)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5716, line: 430, size: 35328, elements: !5717)
!5716 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5717 = !{!5718, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5745, !5746, !5747, !5748, !5749, !5750, !5753, !5754, !5755, !5756}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5715, file: !5716, line: 432, baseType: !5719, size: 192)
!5719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5720, size: 192, elements: !430)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5721, line: 16, size: 64, elements: !5722)
!5721 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5722 = !{!5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5720, file: !5721, line: 17, baseType: !121, size: 16)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5720, file: !5721, line: 18, baseType: !121, size: 16, offset: 16)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5720, file: !5721, line: 19, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5720, file: !5721, line: 19, baseType: !121, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5720, file: !5721, line: 19, baseType: !121, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5720, file: !5721, line: 19, baseType: !121, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5720, file: !5721, line: 19, baseType: !121, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5720, file: !5721, line: 20, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5720, file: !5721, line: 20, baseType: !121, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5720, file: !5721, line: 20, baseType: !121, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5720, file: !5721, line: 20, baseType: !121, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5720, file: !5721, line: 20, baseType: !121, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5720, file: !5721, line: 20, baseType: !121, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5715, file: !5716, line: 436, baseType: !67, size: 64, offset: 192)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5715, file: !5716, line: 440, baseType: !54, size: 16, offset: 256)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5715, file: !5716, line: 441, baseType: !54, size: 16, offset: 272)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5715, file: !5716, line: 442, baseType: !54, size: 16, offset: 288)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5715, file: !5716, line: 443, baseType: !54, size: 16, offset: 304)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5715, file: !5716, line: 447, baseType: !67, size: 64, offset: 320)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5715, file: !5716, line: 448, baseType: !67, size: 64, offset: 384)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5715, file: !5716, line: 459, baseType: !5744, size: 256, offset: 448)
!5744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 256, elements: !456)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5715, file: !5716, line: 461, baseType: !67, size: 64, offset: 704)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5715, file: !5716, line: 463, baseType: !67, size: 64, offset: 768)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5715, file: !5716, line: 465, baseType: !67, size: 64, offset: 832)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5715, file: !5716, line: 466, baseType: !67, size: 64, offset: 896)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5715, file: !5716, line: 467, baseType: !67, size: 64, offset: 960)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5715, file: !5716, line: 473, baseType: !5751, size: 64, offset: 1024)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5716, line: 10, flags: DIFlagFwdDecl)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5715, file: !5716, line: 480, baseType: !67, size: 64, offset: 1088)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5715, file: !5716, line: 482, baseType: !19, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5715, file: !5716, line: 491, baseType: !498, size: 32, offset: 1184)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5715, file: !5716, line: 501, baseType: !5757, size: 33792, offset: 1536)
!5757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5758, line: 448, size: 33792, elements: !5759)
!5758 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5759 = !{!5760, !5761, !5762, !5870, !5871, !5877, !5878}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5757, file: !5758, line: 461, baseType: !19, size: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5757, file: !5758, line: 468, baseType: !67, size: 64, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5757, file: !5758, line: 476, baseType: !5763, size: 64, offset: 128)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5758, line: 356, size: 33280, align: 512, elements: !5765)
!5765 = !{!5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5764, file: !5758, line: 358, baseType: !19, size: 32)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5764, file: !5758, line: 361, baseType: !19, size: 32, offset: 32)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5764, file: !5758, line: 364, baseType: !545, size: 64, offset: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5764, file: !5758, line: 367, baseType: !545, size: 64, offset: 128)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5764, file: !5758, line: 370, baseType: !545, size: 64, offset: 192)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5764, file: !5758, line: 373, baseType: !19, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5764, file: !5758, line: 376, baseType: !19, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5764, file: !5758, line: 391, baseType: !19, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5764, file: !5758, line: 394, baseType: !19, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5764, file: !5758, line: 397, baseType: !5776, size: 32768, offset: 512)
!5776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5758, line: 348, size: 32768, elements: !5777)
!5777 = !{!5778, !5793, !5830, !5855, !5868}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5776, file: !5758, line: 349, baseType: !5779, size: 896)
!5779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5758, line: 12, size: 896, elements: !5780)
!5780 = !{!5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5792}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5779, file: !5758, line: 13, baseType: !498, size: 32)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5779, file: !5758, line: 14, baseType: !498, size: 32, offset: 32)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5779, file: !5758, line: 15, baseType: !498, size: 32, offset: 64)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5779, file: !5758, line: 16, baseType: !498, size: 32, offset: 96)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5779, file: !5758, line: 17, baseType: !498, size: 32, offset: 128)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5779, file: !5758, line: 18, baseType: !498, size: 32, offset: 160)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5779, file: !5758, line: 19, baseType: !498, size: 32, offset: 192)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5779, file: !5758, line: 22, baseType: !5789, size: 640, offset: 224)
!5789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 640, elements: !5790)
!5790 = !{!5791}
!5791 = !DISubrange(count: 20)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5779, file: !5758, line: 25, baseType: !498, size: 32, offset: 864)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5776, file: !5758, line: 350, baseType: !5794, size: 4096, align: 128)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5758, line: 34, size: 4096, align: 128, elements: !5795)
!5795 = !{!5796, !5797, !5798, !5799, !5800, !5815, !5816, !5817, !5819, !5821, !5825}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5794, file: !5758, line: 35, baseType: !121, size: 16)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5794, file: !5758, line: 36, baseType: !121, size: 16, offset: 16)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5794, file: !5758, line: 37, baseType: !121, size: 16, offset: 32)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5794, file: !5758, line: 38, baseType: !121, size: 16, offset: 48)
!5800 = !DIDerivedType(tag: DW_TAG_member, scope: !5794, file: !5758, line: 39, baseType: !5801, size: 128, offset: 64)
!5801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5794, file: !5758, line: 39, size: 128, elements: !5802)
!5802 = !{!5803, !5808}
!5803 = !DIDerivedType(tag: DW_TAG_member, scope: !5801, file: !5758, line: 40, baseType: !5804, size: 128)
!5804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5801, file: !5758, line: 40, size: 128, elements: !5805)
!5805 = !{!5806, !5807}
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5804, file: !5758, line: 41, baseType: !545, size: 64)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5804, file: !5758, line: 42, baseType: !545, size: 64, offset: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, scope: !5801, file: !5758, line: 44, baseType: !5809, size: 128)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5801, file: !5758, line: 44, size: 128, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5809, file: !5758, line: 45, baseType: !498, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5809, file: !5758, line: 46, baseType: !498, size: 32, offset: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5809, file: !5758, line: 47, baseType: !498, size: 32, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5809, file: !5758, line: 48, baseType: !498, size: 32, offset: 96)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5794, file: !5758, line: 51, baseType: !498, size: 32, offset: 192)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5794, file: !5758, line: 52, baseType: !498, size: 32, offset: 224)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5794, file: !5758, line: 55, baseType: !5818, size: 1024, offset: 256)
!5818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 1024, elements: !1828)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5794, file: !5758, line: 58, baseType: !5820, size: 2048, offset: 1280)
!5820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 2048, elements: !1988)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5794, file: !5758, line: 60, baseType: !5822, size: 384, offset: 3328)
!5822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 384, elements: !5823)
!5823 = !{!5824}
!5824 = !DISubrange(count: 12)
!5825 = !DIDerivedType(tag: DW_TAG_member, scope: !5794, file: !5758, line: 62, baseType: !5826, size: 384, offset: 3712)
!5826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5794, file: !5758, line: 62, size: 384, elements: !5827)
!5827 = !{!5828, !5829}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5826, file: !5758, line: 63, baseType: !5822, size: 384)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5826, file: !5758, line: 64, baseType: !5822, size: 384)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5776, file: !5758, line: 351, baseType: !5831, size: 1088)
!5831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5758, line: 79, size: 1088, elements: !5832)
!5832 = !{!5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5854}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5831, file: !5758, line: 80, baseType: !498, size: 32)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5831, file: !5758, line: 81, baseType: !498, size: 32, offset: 32)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5831, file: !5758, line: 82, baseType: !498, size: 32, offset: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5831, file: !5758, line: 83, baseType: !498, size: 32, offset: 96)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5831, file: !5758, line: 84, baseType: !498, size: 32, offset: 128)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5831, file: !5758, line: 85, baseType: !498, size: 32, offset: 160)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5831, file: !5758, line: 86, baseType: !498, size: 32, offset: 192)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5831, file: !5758, line: 88, baseType: !5789, size: 640, offset: 224)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5831, file: !5758, line: 89, baseType: !111, size: 8, offset: 864)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5831, file: !5758, line: 90, baseType: !111, size: 8, offset: 872)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5831, file: !5758, line: 91, baseType: !111, size: 8, offset: 880)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5831, file: !5758, line: 92, baseType: !111, size: 8, offset: 888)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5831, file: !5758, line: 93, baseType: !111, size: 8, offset: 896)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5831, file: !5758, line: 94, baseType: !111, size: 8, offset: 904)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5831, file: !5758, line: 95, baseType: !5848, size: 64, offset: 960)
!5848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5850, line: 11, size: 128, elements: !5851)
!5850 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5851 = !{!5852, !5853}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5849, file: !5850, line: 12, baseType: !354, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5849, file: !5850, line: 13, baseType: !3556, size: 64, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5831, file: !5758, line: 96, baseType: !498, size: 32, offset: 1024)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5776, file: !5758, line: 352, baseType: !5856, size: 4608, align: 512)
!5856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5758, line: 333, size: 4608, align: 512, elements: !5857)
!5857 = !{!5858, !5859, !5866}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5856, file: !5758, line: 334, baseType: !5794, size: 4096, align: 128)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5856, file: !5758, line: 335, baseType: !5860, size: 512, offset: 4096)
!5860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5758, line: 312, size: 512, elements: !5861)
!5861 = !{!5862, !5863, !5864}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5860, file: !5758, line: 313, baseType: !545, size: 64)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5860, file: !5758, line: 314, baseType: !545, size: 64, offset: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5860, file: !5758, line: 315, baseType: !5865, size: 384, offset: 128)
!5865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 384, elements: !1057)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5856, file: !5758, line: 336, baseType: !5867, offset: 4608)
!5867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !1234)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5776, file: !5758, line: 353, baseType: !5869, size: 32768)
!5869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32768, elements: !2585)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5757, file: !5758, line: 484, baseType: !5763, size: 64, offset: 192)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5757, file: !5758, line: 491, baseType: !5872, size: 128, offset: 256)
!5872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5758, line: 404, size: 128, elements: !5873)
!5873 = !{!5874, !5875, !5876}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5872, file: !5758, line: 424, baseType: !545, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5872, file: !5758, line: 432, baseType: !19, size: 32, offset: 64)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5872, file: !5758, line: 440, baseType: !19, size: 32, offset: 96)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5757, file: !5758, line: 498, baseType: !5872, size: 128, offset: 384)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5757, file: !5758, line: 508, baseType: !5764, size: 33280, align: 512, offset: 512)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !468, file: !469, line: 31, baseType: !3133, size: 64, offset: 448)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !468, file: !469, line: 32, baseType: !19, size: 32, offset: 512)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !468, file: !469, line: 33, baseType: !467, size: 64, offset: 576)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !468, file: !469, line: 35, baseType: !5883, size: 64, offset: 640)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !469, line: 17, flags: DIFlagFwdDecl)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !468, file: !469, line: 37, baseType: !944, size: 64, offset: 704)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !468, file: !469, line: 38, baseType: !1201, size: 64, offset: 768)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !468, file: !469, line: 39, baseType: !50, size: 32, offset: 832)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !468, file: !469, line: 40, baseType: !990, size: 192, offset: 896)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !468, file: !469, line: 42, baseType: !50, size: 32, offset: 1088)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !408, file: !31, line: 951, baseType: !257, size: 32, offset: 128)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !408, file: !31, line: 952, baseType: !975, size: 32, offset: 160)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !408, file: !31, line: 952, baseType: !975, size: 32, offset: 192)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !408, file: !31, line: 953, baseType: !50, size: 32, offset: 224)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !359, file: !31, line: 1012, baseType: !1376, size: 64, offset: 896)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !359, file: !31, line: 1013, baseType: !5896, size: 256, offset: 960)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !5897)
!5897 = !{!5898, !5899, !5900, !5901, !5902, !5903}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5896, file: !31, line: 971, baseType: !67, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5896, file: !31, line: 972, baseType: !19, size: 32, offset: 64)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5896, file: !31, line: 973, baseType: !19, size: 32, offset: 96)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5896, file: !31, line: 974, baseType: !19, size: 32, offset: 128)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5896, file: !31, line: 975, baseType: !19, size: 32, offset: 160)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5896, file: !31, line: 976, baseType: !69, size: 64, offset: 192)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !359, file: !31, line: 1014, baseType: !3854, size: 128, offset: 1216)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !359, file: !31, line: 1015, baseType: !1769, size: 64, offset: 1344)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !359, file: !31, line: 1016, baseType: !4341, size: 64, offset: 1408)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !359, file: !31, line: 1018, baseType: !545, size: 64, offset: 1472)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !359, file: !31, line: 1020, baseType: !48, size: 64, offset: 1536)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !31, line: 1023, baseType: !48, size: 64, offset: 1600)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !359, file: !31, line: 1027, baseType: !2633, size: 64, offset: 1664)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !31, line: 1029, baseType: !1765, size: 64, offset: 1728)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !359, file: !31, line: 1030, baseType: !4072, size: 32, offset: 1792)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !359, file: !31, line: 1031, baseType: !4072, size: 32, offset: 1824)
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5917)
!5917 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_sigset_t", file: !5542, line: 131, baseType: !5918)
!5918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5542, line: 129, size: 64, elements: !5919)
!5919 = !{!5920}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5918, file: !5542, line: 130, baseType: !5921, size: 64)
!5921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5922, size: 64, elements: !2247)
!5922 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_sigset_word", file: !5549, line: 74, baseType: !498)
!5923 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_size_t", file: !5549, line: 30, baseType: !498)
!5924 = !{!0, !7, !5925, !13, !5930}
!5925 = !DIGlobalVariableExpression(var: !5926, expr: !DIExpression())
!5926 = distinct !DIGlobalVariable(scope: null, file: !279, line: 480, type: !5927, isLocal: true, isDefinition: true)
!5927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5928)
!5928 = !{!5929}
!5929 = !DISubrange(count: 21)
!5930 = !DIGlobalVariableExpression(var: !5931, expr: !DIExpression())
!5931 = distinct !DIGlobalVariable(scope: null, file: !9, line: 239, type: !5932, isLocal: true, isDefinition: true)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1210)
!5933 = !{i32 7, !"Dwarf Version", i32 5}
!5934 = !{i32 2, !"Debug Info Version", i32 3}
!5935 = !{i32 1, !"wchar_size", i32 2}
!5936 = !{i32 8, !"cf-protection-branch", i32 1}
!5937 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5938 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5939 = !{i32 1, !"Code Model", i32 2}
!5940 = !{i32 1, !"override-stack-alignment", i32 8}
!5941 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5942 = distinct !DISubprogram(name: "signalfd_cleanup", scope: !9, file: !9, line: 36, type: !5943, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5945)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{null, !5343}
!5945 = !{!5946}
!5946 = !DILocalVariable(name: "sighand", arg: 1, scope: !5942, file: !9, line: 36, type: !5343)
!5947 = !DILocation(line: 36, column: 46, scope: !5942)
!5948 = !DILocation(line: 38, column: 20, scope: !5942)
!5949 = !DILocation(line: 38, column: 29, scope: !5942)
!5950 = !DILocation(line: 38, column: 2, scope: !5942)
!5951 = !DILocation(line: 39, column: 1, scope: !5942)
!5952 = distinct !DISubprogram(name: "wake_up_pollfree", scope: !83, file: !83, line: 265, type: !5953, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5956)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{null, !5955}
!5955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!5956 = !{!5957}
!5957 = !DILocalVariable(name: "wq_head", arg: 1, scope: !5952, file: !83, line: 265, type: !5955)
!5958 = !DILocation(line: 265, column: 61, scope: !5952)
!5959 = !DILocation(line: 274, column: 23, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5952, file: !83, line: 274, column: 6)
!5961 = !DILocation(line: 274, column: 6, scope: !5960)
!5962 = !DILocation(line: 274, column: 6, scope: !5952)
!5963 = !DILocation(line: 275, column: 22, scope: !5960)
!5964 = !DILocation(line: 275, column: 3, scope: !5960)
!5965 = !DILocation(line: 276, column: 1, scope: !5952)
!5966 = distinct !DISubprogram(name: "__x64_sys_signalfd4", scope: !9, file: !9, line: 302, type: !5967, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5971)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!354, !5969}
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!5971 = !{!5972}
!5972 = !DILocalVariable(name: "regs", arg: 1, scope: !5966, file: !9, line: 302, type: !5969)
!5973 = !DILocation(line: 302, column: 1, scope: !5966)
!5974 = distinct !DISubprogram(name: "__se_sys_signalfd4", scope: !9, file: !9, line: 302, type: !5975, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5977)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!354, !354, !354, !354, !354}
!5977 = !{!5978, !5979, !5980, !5981, !5982}
!5978 = !DILocalVariable(name: "ufd", arg: 1, scope: !5974, file: !9, line: 302, type: !354)
!5979 = !DILocalVariable(name: "user_mask", arg: 2, scope: !5974, file: !9, line: 302, type: !354)
!5980 = !DILocalVariable(name: "sizemask", arg: 3, scope: !5974, file: !9, line: 302, type: !354)
!5981 = !DILocalVariable(name: "flags", arg: 4, scope: !5974, file: !9, line: 302, type: !354)
!5982 = !DILocalVariable(name: "ret", scope: !5974, file: !9, line: 302, type: !354)
!5983 = !DILocation(line: 302, column: 1, scope: !5974)
!5984 = !DILocation(line: 302, column: 1, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5974, file: !9, line: 302, column: 1)
!5986 = distinct !DISubprogram(name: "__ia32_sys_signalfd4", scope: !9, file: !9, line: 302, type: !5967, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5987)
!5987 = !{!5988}
!5988 = !DILocalVariable(name: "regs", arg: 1, scope: !5986, file: !9, line: 302, type: !5969)
!5989 = !DILocation(line: 302, column: 1, scope: !5986)
!5990 = distinct !DISubprogram(name: "__x64_sys_signalfd", scope: !9, file: !9, line: 314, type: !5967, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5991)
!5991 = !{!5992}
!5992 = !DILocalVariable(name: "regs", arg: 1, scope: !5990, file: !9, line: 314, type: !5969)
!5993 = !DILocation(line: 314, column: 1, scope: !5990)
!5994 = distinct !DISubprogram(name: "__se_sys_signalfd", scope: !9, file: !9, line: 314, type: !5995, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5997)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!354, !354, !354, !354}
!5997 = !{!5998, !5999, !6000, !6001}
!5998 = !DILocalVariable(name: "ufd", arg: 1, scope: !5994, file: !9, line: 314, type: !354)
!5999 = !DILocalVariable(name: "user_mask", arg: 2, scope: !5994, file: !9, line: 314, type: !354)
!6000 = !DILocalVariable(name: "sizemask", arg: 3, scope: !5994, file: !9, line: 314, type: !354)
!6001 = !DILocalVariable(name: "ret", scope: !5994, file: !9, line: 314, type: !354)
!6002 = !DILocation(line: 314, column: 1, scope: !5994)
!6003 = !DILocation(line: 314, column: 1, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5994, file: !9, line: 314, column: 1)
!6005 = distinct !DISubprogram(name: "__ia32_sys_signalfd", scope: !9, file: !9, line: 314, type: !5967, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6006)
!6006 = !{!6007}
!6007 = !DILocalVariable(name: "regs", arg: 1, scope: !6005, file: !9, line: 314, type: !5969)
!6008 = !DILocation(line: 314, column: 1, scope: !6005)
!6009 = distinct !DISubprogram(name: "__ia32_compat_sys_signalfd4", scope: !9, file: !9, line: 340, type: !5967, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6010)
!6010 = !{!6011}
!6011 = !DILocalVariable(name: "regs", arg: 1, scope: !6009, file: !9, line: 340, type: !5969)
!6012 = !DILocation(line: 340, column: 1, scope: !6009)
!6013 = distinct !DISubprogram(name: "__se_compat_sys_signalfd4", scope: !9, file: !9, line: 340, type: !5975, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6014)
!6014 = !{!6015, !6016, !6017, !6018}
!6015 = !DILocalVariable(name: "ufd", arg: 1, scope: !6013, file: !9, line: 340, type: !354)
!6016 = !DILocalVariable(name: "user_mask", arg: 2, scope: !6013, file: !9, line: 340, type: !354)
!6017 = !DILocalVariable(name: "sigsetsize", arg: 3, scope: !6013, file: !9, line: 340, type: !354)
!6018 = !DILocalVariable(name: "flags", arg: 4, scope: !6013, file: !9, line: 340, type: !354)
!6019 = !DILocation(line: 340, column: 1, scope: !6013)
!6020 = distinct !DISubprogram(name: "__ia32_compat_sys_signalfd", scope: !9, file: !9, line: 348, type: !5967, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6021)
!6021 = !{!6022}
!6022 = !DILocalVariable(name: "regs", arg: 1, scope: !6020, file: !9, line: 348, type: !5969)
!6023 = !DILocation(line: 348, column: 1, scope: !6020)
!6024 = distinct !DISubprogram(name: "__se_compat_sys_signalfd", scope: !9, file: !9, line: 348, type: !5995, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028}
!6026 = !DILocalVariable(name: "ufd", arg: 1, scope: !6024, file: !9, line: 348, type: !354)
!6027 = !DILocalVariable(name: "user_mask", arg: 2, scope: !6024, file: !9, line: 348, type: !354)
!6028 = !DILocalVariable(name: "sigsetsize", arg: 3, scope: !6024, file: !9, line: 348, type: !354)
!6029 = !DILocation(line: 348, column: 1, scope: !6024)
!6030 = distinct !DISubprogram(name: "waitqueue_active", scope: !83, file: !83, line: 127, type: !6031, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6033)
!6031 = !DISubroutineType(types: !6032)
!6032 = !{!50, !5955}
!6033 = !{!6034}
!6034 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6030, file: !83, line: 127, type: !5955)
!6035 = !DILocation(line: 127, column: 60, scope: !6030)
!6036 = !DILocation(line: 129, column: 22, scope: !6030)
!6037 = !DILocation(line: 129, column: 31, scope: !6030)
!6038 = !DILocation(line: 129, column: 10, scope: !6030)
!6039 = !DILocation(line: 129, column: 9, scope: !6030)
!6040 = !DILocation(line: 129, column: 2, scope: !6030)
!6041 = !DISubprogram(name: "__wake_up_pollfree", scope: !83, file: !83, line: 221, type: !5953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6042 = distinct !DISubprogram(name: "list_empty", scope: !6043, file: !6043, line: 371, type: !6044, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6048)
!6043 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!50, !6046}
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!6048 = !{!6049}
!6049 = !DILocalVariable(name: "head", arg: 1, scope: !6042, file: !6043, line: 371, type: !6046)
!6050 = !DILocation(line: 371, column: 54, scope: !6042)
!6051 = !DILocation(line: 373, column: 9, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6042, file: !6043, line: 373, column: 9)
!6053 = !DILocation(line: 373, column: 9, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6052, file: !6043, line: 373, column: 9)
!6055 = !DILocation(line: 373, column: 34, scope: !6042)
!6056 = !DILocation(line: 373, column: 31, scope: !6042)
!6057 = !DILocation(line: 373, column: 2, scope: !6042)
!6058 = distinct !DISubprogram(name: "__do_sys_signalfd4", scope: !9, file: !9, line: 302, type: !6059, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6061)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!354, !50, !307, !63, !50}
!6061 = !{!6062, !6063, !6064, !6065, !6066}
!6062 = !DILocalVariable(name: "ufd", arg: 1, scope: !6058, file: !9, line: 302, type: !50)
!6063 = !DILocalVariable(name: "user_mask", arg: 2, scope: !6058, file: !9, line: 302, type: !307)
!6064 = !DILocalVariable(name: "sizemask", arg: 3, scope: !6058, file: !9, line: 302, type: !63)
!6065 = !DILocalVariable(name: "flags", arg: 4, scope: !6058, file: !9, line: 302, type: !50)
!6066 = !DILocalVariable(name: "mask", scope: !6058, file: !9, line: 305, type: !308)
!6067 = !DILocation(line: 302, column: 1, scope: !6058)
!6068 = !DILocation(line: 305, column: 2, scope: !6058)
!6069 = !DILocation(line: 305, column: 11, scope: !6058)
!6070 = !DILocation(line: 307, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6058, file: !9, line: 307, column: 6)
!6072 = !DILocation(line: 307, column: 15, scope: !6071)
!6073 = !DILocation(line: 307, column: 6, scope: !6058)
!6074 = !DILocation(line: 308, column: 3, scope: !6071)
!6075 = !DILocation(line: 309, column: 28, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6058, file: !9, line: 309, column: 6)
!6077 = !DILocation(line: 309, column: 6, scope: !6076)
!6078 = !DILocation(line: 309, column: 6, scope: !6058)
!6079 = !DILocation(line: 310, column: 3, scope: !6076)
!6080 = !DILocation(line: 311, column: 22, scope: !6058)
!6081 = !DILocation(line: 311, column: 34, scope: !6058)
!6082 = !DILocation(line: 311, column: 9, scope: !6058)
!6083 = !DILocation(line: 311, column: 2, scope: !6058)
!6084 = !DILocation(line: 312, column: 1, scope: !6058)
!6085 = distinct !DISubprogram(name: "copy_from_user", scope: !6086, file: !6086, line: 180, type: !6087, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6089)
!6086 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!67, !48, !919, !67}
!6089 = !{!6090, !6091, !6092}
!6090 = !DILocalVariable(name: "to", arg: 1, scope: !6085, file: !6086, line: 180, type: !48)
!6091 = !DILocalVariable(name: "from", arg: 2, scope: !6085, file: !6086, line: 180, type: !919)
!6092 = !DILocalVariable(name: "n", arg: 3, scope: !6085, file: !6086, line: 180, type: !67)
!6093 = !DILocation(line: 180, column: 22, scope: !6085)
!6094 = !DILocation(line: 180, column: 45, scope: !6085)
!6095 = !DILocation(line: 180, column: 65, scope: !6085)
!6096 = !DILocation(line: 182, column: 22, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6085, file: !6086, line: 182, column: 6)
!6098 = !DILocation(line: 182, column: 26, scope: !6097)
!6099 = !DILocation(line: 182, column: 6, scope: !6097)
!6100 = !DILocation(line: 182, column: 6, scope: !6085)
!6101 = !DILocation(line: 183, column: 23, scope: !6097)
!6102 = !DILocation(line: 183, column: 27, scope: !6097)
!6103 = !DILocation(line: 183, column: 33, scope: !6097)
!6104 = !DILocation(line: 183, column: 7, scope: !6097)
!6105 = !DILocation(line: 183, column: 5, scope: !6097)
!6106 = !DILocation(line: 183, column: 3, scope: !6097)
!6107 = !DILocation(line: 184, column: 9, scope: !6085)
!6108 = !DILocation(line: 184, column: 2, scope: !6085)
!6109 = distinct !DISubprogram(name: "do_signalfd4", scope: !9, file: !9, line: 253, type: !6110, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6112)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{!50, !50, !307, !50}
!6112 = !{!6113, !6114, !6115, !6116, !6121}
!6113 = !DILocalVariable(name: "ufd", arg: 1, scope: !6109, file: !9, line: 253, type: !50)
!6114 = !DILocalVariable(name: "mask", arg: 2, scope: !6109, file: !9, line: 253, type: !307)
!6115 = !DILocalVariable(name: "flags", arg: 3, scope: !6109, file: !9, line: 253, type: !50)
!6116 = !DILocalVariable(name: "ctx", scope: !6109, file: !9, line: 255, type: !6117)
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signalfd_ctx", file: !9, line: 41, size: 64, elements: !6119)
!6119 = !{!6120}
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "sigmask", scope: !6118, file: !9, line: 42, baseType: !308, size: 64)
!6121 = !DILocalVariable(name: "f", scope: !6122, file: !9, line: 283, type: !6124)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !9, line: 282, column: 9)
!6123 = distinct !DILexicalBlock(scope: !6109, file: !9, line: 267, column: 6)
!6124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !6125, line: 36, size: 128, elements: !6126)
!6125 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6126 = !{!6127, !6128}
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6124, file: !6125, line: 37, baseType: !358, size: 64)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6124, file: !6125, line: 38, baseType: !19, size: 32, offset: 64)
!6129 = !DILocation(line: 253, column: 29, scope: !6109)
!6130 = !DILocation(line: 253, column: 44, scope: !6109)
!6131 = !DILocation(line: 253, column: 54, scope: !6109)
!6132 = !DILocation(line: 255, column: 2, scope: !6109)
!6133 = !DILocation(line: 255, column: 23, scope: !6109)
!6134 = !DILocation(line: 258, column: 2, scope: !6109)
!6135 = !DILocation(line: 258, column: 2, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6109, file: !9, line: 258, column: 2)
!6137 = !DILocation(line: 259, column: 2, scope: !6109)
!6138 = !DILocation(line: 259, column: 2, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6109, file: !9, line: 259, column: 2)
!6140 = !DILocation(line: 261, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6109, file: !9, line: 261, column: 6)
!6142 = !DILocation(line: 261, column: 12, scope: !6141)
!6143 = !DILocation(line: 261, column: 6, scope: !6109)
!6144 = !DILocation(line: 262, column: 3, scope: !6141)
!6145 = !DILocation(line: 264, column: 16, scope: !6109)
!6146 = !DILocation(line: 264, column: 2, scope: !6109)
!6147 = !DILocation(line: 265, column: 12, scope: !6109)
!6148 = !DILocation(line: 265, column: 2, scope: !6109)
!6149 = !DILocation(line: 267, column: 6, scope: !6123)
!6150 = !DILocation(line: 267, column: 10, scope: !6123)
!6151 = !DILocation(line: 267, column: 6, scope: !6109)
!6152 = !DILocation(line: 268, column: 9, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6123, file: !9, line: 267, column: 17)
!6154 = !DILocation(line: 268, column: 7, scope: !6153)
!6155 = !DILocation(line: 269, column: 8, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6153, file: !9, line: 269, column: 7)
!6157 = !DILocation(line: 269, column: 7, scope: !6153)
!6158 = !DILocation(line: 270, column: 4, scope: !6156)
!6159 = !DILocation(line: 272, column: 3, scope: !6153)
!6160 = !DILocation(line: 272, column: 8, scope: !6153)
!6161 = !DILocation(line: 272, column: 19, scope: !6153)
!6162 = !DILocation(line: 272, column: 18, scope: !6153)
!6163 = !DILocation(line: 278, column: 56, scope: !6153)
!6164 = !DILocation(line: 279, column: 22, scope: !6153)
!6165 = !DILocation(line: 279, column: 28, scope: !6153)
!6166 = !DILocation(line: 279, column: 19, scope: !6153)
!6167 = !DILocation(line: 278, column: 9, scope: !6153)
!6168 = !DILocation(line: 278, column: 7, scope: !6153)
!6169 = !DILocation(line: 280, column: 7, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6153, file: !9, line: 280, column: 7)
!6171 = !DILocation(line: 280, column: 11, scope: !6170)
!6172 = !DILocation(line: 280, column: 7, scope: !6153)
!6173 = !DILocation(line: 281, column: 10, scope: !6170)
!6174 = !DILocation(line: 281, column: 4, scope: !6170)
!6175 = !DILocation(line: 282, column: 2, scope: !6153)
!6176 = !DILocation(line: 283, column: 3, scope: !6122)
!6177 = !DILocation(line: 283, column: 13, scope: !6122)
!6178 = !DILocation(line: 283, column: 23, scope: !6122)
!6179 = !DILocation(line: 283, column: 17, scope: !6122)
!6180 = !DILocation(line: 284, column: 10, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6122, file: !9, line: 284, column: 7)
!6182 = !DILocation(line: 284, column: 8, scope: !6181)
!6183 = !DILocation(line: 284, column: 7, scope: !6122)
!6184 = !DILocation(line: 285, column: 4, scope: !6181)
!6185 = !DILocation(line: 286, column: 11, scope: !6122)
!6186 = !DILocation(line: 286, column: 17, scope: !6122)
!6187 = !DILocation(line: 286, column: 7, scope: !6122)
!6188 = !DILocation(line: 287, column: 9, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6122, file: !9, line: 287, column: 7)
!6190 = !DILocation(line: 287, column: 15, scope: !6189)
!6191 = !DILocation(line: 287, column: 20, scope: !6189)
!6192 = !DILocation(line: 287, column: 7, scope: !6122)
!6193 = !DILocation(line: 288, column: 4, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6189, file: !9, line: 287, column: 39)
!6195 = !DILocation(line: 289, column: 4, scope: !6194)
!6196 = !DILocation(line: 291, column: 18, scope: !6122)
!6197 = !DILocation(line: 291, column: 27, scope: !6122)
!6198 = !DILocation(line: 291, column: 36, scope: !6122)
!6199 = !DILocation(line: 291, column: 3, scope: !6122)
!6200 = !DILocation(line: 292, column: 3, scope: !6122)
!6201 = !DILocation(line: 292, column: 8, scope: !6122)
!6202 = !DILocation(line: 292, column: 19, scope: !6122)
!6203 = !DILocation(line: 292, column: 18, scope: !6122)
!6204 = !DILocation(line: 293, column: 20, scope: !6122)
!6205 = !DILocation(line: 293, column: 29, scope: !6122)
!6206 = !DILocation(line: 293, column: 38, scope: !6122)
!6207 = !DILocation(line: 293, column: 3, scope: !6122)
!6208 = !DILocation(line: 295, column: 3, scope: !6122)
!6209 = !DILocation(line: 296, column: 3, scope: !6122)
!6210 = !DILocation(line: 297, column: 2, scope: !6123)
!6211 = !DILocation(line: 299, column: 9, scope: !6109)
!6212 = !DILocation(line: 299, column: 2, scope: !6109)
!6213 = !DILocation(line: 300, column: 1, scope: !6109)
!6214 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !6215, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6217)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!1002, !919, !63, !1002}
!6217 = !{!6218, !6219, !6220, !6221, !6222, !6225}
!6218 = !DILocalVariable(name: "addr", arg: 1, scope: !6214, file: !2, line: 237, type: !919)
!6219 = !DILocalVariable(name: "bytes", arg: 2, scope: !6214, file: !2, line: 237, type: !63)
!6220 = !DILocalVariable(name: "is_source", arg: 3, scope: !6214, file: !2, line: 237, type: !1002)
!6221 = !DILocalVariable(name: "sz", scope: !6214, file: !2, line: 239, type: !50)
!6222 = !DILocalVariable(name: "__ret_warn_on", scope: !6223, file: !2, line: 249, type: !50)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !2, line: 249, column: 6)
!6224 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 249, column: 6)
!6225 = !DILocalVariable(name: "__flags", scope: !6226, file: !2, line: 249, type: !50)
!6226 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 249, column: 6)
!6227 = distinct !DILexicalBlock(scope: !6223, file: !2, line: 249, column: 6)
!6228 = !DILocation(line: 237, column: 29, scope: !6214)
!6229 = !DILocation(line: 237, column: 42, scope: !6214)
!6230 = !DILocation(line: 237, column: 54, scope: !6214)
!6231 = !DILocation(line: 239, column: 2, scope: !6214)
!6232 = !DILocation(line: 239, column: 6, scope: !6214)
!6233 = !DILocation(line: 239, column: 33, scope: !6214)
!6234 = !DILocation(line: 239, column: 11, scope: !6214)
!6235 = !DILocation(line: 240, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 240, column: 6)
!6237 = !DILocation(line: 0, scope: !6236)
!6238 = !DILocation(line: 240, column: 6, scope: !6214)
!6239 = !DILocation(line: 241, column: 29, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 241, column: 7)
!6241 = distinct !DILexicalBlock(scope: !6236, file: !2, line: 240, column: 39)
!6242 = !DILocation(line: 241, column: 8, scope: !6240)
!6243 = !DILocation(line: 241, column: 7, scope: !6241)
!6244 = !DILocation(line: 242, column: 18, scope: !6240)
!6245 = !DILocation(line: 242, column: 22, scope: !6240)
!6246 = !DILocation(line: 242, column: 4, scope: !6240)
!6247 = !DILocation(line: 243, column: 12, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6240, file: !2, line: 243, column: 12)
!6249 = !{i8 0, i8 2}
!6250 = !DILocation(line: 243, column: 12, scope: !6240)
!6251 = !DILocation(line: 244, column: 4, scope: !6248)
!6252 = !{i32 2125534}
!6253 = !DILocation(line: 246, column: 4, scope: !6248)
!6254 = !{i32 2125563}
!6255 = !DILocation(line: 247, column: 3, scope: !6241)
!6256 = !DILocation(line: 249, column: 6, scope: !6223)
!6257 = !DILocation(line: 249, column: 6, scope: !6227)
!6258 = !DILocation(line: 249, column: 6, scope: !6226)
!6259 = !DILocation(line: 249, column: 6, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 249, column: 6)
!6261 = !DILocation(line: 249, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 249, column: 6)
!6263 = !{i64 2149625996, i64 2149626025, i64 2149626071, i64 2149626129, i64 2149626183, i64 2149626237, i64 2149626292, i64 2149626323, i64 2149626631, i64 2149626637, i64 2149626684, i64 2149626707, i64 2149626733}
!6264 = !DILocation(line: 249, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 249, column: 6)
!6266 = !DILocation(line: 249, column: 6, scope: !6224)
!6267 = !DILocation(line: 249, column: 6, scope: !6214)
!6268 = !DILocation(line: 250, column: 3, scope: !6224)
!6269 = !DILocation(line: 251, column: 20, scope: !6214)
!6270 = !DILocation(line: 251, column: 26, scope: !6214)
!6271 = !DILocation(line: 251, column: 33, scope: !6214)
!6272 = !DILocation(line: 251, column: 2, scope: !6214)
!6273 = !DILocation(line: 252, column: 2, scope: !6214)
!6274 = !DILocation(line: 253, column: 1, scope: !6214)
!6275 = !DISubprogram(name: "_copy_from_user", scope: !6086, file: !6086, line: 158, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6276 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !6277, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6279)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{null, !50, !67}
!6279 = !{!6280, !6281}
!6280 = !DILocalVariable(name: "size", arg: 1, scope: !6276, file: !2, line: 230, type: !50)
!6281 = !DILocalVariable(name: "count", arg: 2, scope: !6276, file: !2, line: 230, type: !67)
!6282 = !DILocation(line: 230, column: 38, scope: !6276)
!6283 = !DILocation(line: 230, column: 58, scope: !6276)
!6284 = !DILocation(line: 233, column: 19, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 232, column: 6)
!6286 = !DILocation(line: 233, column: 25, scope: !6285)
!6287 = !DILocation(line: 233, column: 3, scope: !6285)
!6288 = !DILocation(line: 234, column: 1, scope: !6276)
!6289 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !6292, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{null, !919, !67, !1002}
!6294 = !{!6295, !6296, !6297}
!6295 = !DILocalVariable(name: "ptr", arg: 1, scope: !6291, file: !2, line: 218, type: !919)
!6296 = !DILocalVariable(name: "n", arg: 2, scope: !6291, file: !2, line: 218, type: !67)
!6297 = !DILocalVariable(name: "to_user", arg: 3, scope: !6291, file: !2, line: 219, type: !1002)
!6298 = !DILocation(line: 218, column: 50, scope: !6291)
!6299 = !DILocation(line: 218, column: 69, scope: !6291)
!6300 = !DILocation(line: 219, column: 15, scope: !6291)
!6301 = !DILocation(line: 220, column: 3, scope: !6291)
!6302 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !6277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6303 = distinct !DISubprogram(name: "sigdelsetmask", scope: !289, file: !289, line: 224, type: !6304, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6306)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{null, !307, !67}
!6306 = !{!6307, !6308}
!6307 = !DILocalVariable(name: "set", arg: 1, scope: !6303, file: !289, line: 224, type: !307)
!6308 = !DILocalVariable(name: "mask", arg: 2, scope: !6303, file: !289, line: 224, type: !67)
!6309 = !DILocation(line: 224, column: 44, scope: !6303)
!6310 = !DILocation(line: 224, column: 63, scope: !6303)
!6311 = !DILocation(line: 226, column: 18, scope: !6303)
!6312 = !DILocation(line: 226, column: 17, scope: !6303)
!6313 = !DILocation(line: 226, column: 2, scope: !6303)
!6314 = !DILocation(line: 226, column: 7, scope: !6303)
!6315 = !DILocation(line: 226, column: 14, scope: !6303)
!6316 = !DILocation(line: 227, column: 1, scope: !6303)
!6317 = distinct !DISubprogram(name: "signotset", scope: !289, file: !289, line: 186, type: !6318, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6320)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !307}
!6320 = !{!6321}
!6321 = !DILocalVariable(name: "set", arg: 1, scope: !6317, file: !289, line: 186, type: !307)
!6322 = !DILocation(line: 186, column: 1, scope: !6317)
!6323 = distinct !DISubprogram(name: "kmalloc", scope: !279, file: !279, line: 591, type: !6324, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!48, !63, !316}
!6326 = !{!6327, !6328, !6329}
!6327 = !DILocalVariable(name: "size", arg: 1, scope: !6323, file: !279, line: 591, type: !63)
!6328 = !DILocalVariable(name: "flags", arg: 2, scope: !6323, file: !279, line: 591, type: !316)
!6329 = !DILocalVariable(name: "index", scope: !6330, file: !279, line: 594, type: !19)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !279, line: 593, column: 42)
!6331 = distinct !DILexicalBlock(scope: !6323, file: !279, line: 593, column: 6)
!6332 = !DILocation(line: 591, column: 61, scope: !6323)
!6333 = !DILocation(line: 591, column: 73, scope: !6323)
!6334 = !DILocation(line: 593, column: 27, scope: !6331)
!6335 = !DILocation(line: 593, column: 6, scope: !6331)
!6336 = !DILocation(line: 593, column: 33, scope: !6331)
!6337 = !DILocation(line: 593, column: 36, scope: !6331)
!6338 = !DILocation(line: 593, column: 6, scope: !6323)
!6339 = !DILocation(line: 594, column: 3, scope: !6330)
!6340 = !DILocation(line: 594, column: 16, scope: !6330)
!6341 = !DILocation(line: 596, column: 7, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6330, file: !279, line: 596, column: 7)
!6343 = !DILocation(line: 596, column: 12, scope: !6342)
!6344 = !DILocation(line: 596, column: 7, scope: !6330)
!6345 = !DILocation(line: 597, column: 25, scope: !6342)
!6346 = !DILocation(line: 597, column: 31, scope: !6342)
!6347 = !DILocation(line: 597, column: 11, scope: !6342)
!6348 = !DILocation(line: 597, column: 4, scope: !6342)
!6349 = !DILocation(line: 599, column: 11, scope: !6330)
!6350 = !DILocation(line: 599, column: 9, scope: !6330)
!6351 = !DILocation(line: 601, column: 33, scope: !6330)
!6352 = !DILocation(line: 601, column: 40, scope: !6330)
!6353 = !DILocation(line: 601, column: 20, scope: !6330)
!6354 = !DILocation(line: 601, column: 5, scope: !6330)
!6355 = !DILocation(line: 601, column: 51, scope: !6330)
!6356 = !DILocation(line: 602, column: 5, scope: !6330)
!6357 = !DILocation(line: 602, column: 12, scope: !6330)
!6358 = !DILocation(line: 600, column: 10, scope: !6330)
!6359 = !DILocation(line: 600, column: 3, scope: !6330)
!6360 = !DILocation(line: 603, column: 2, scope: !6331)
!6361 = !DILocation(line: 604, column: 19, scope: !6323)
!6362 = !DILocation(line: 604, column: 25, scope: !6323)
!6363 = !DILocation(line: 604, column: 9, scope: !6323)
!6364 = !DILocation(line: 604, column: 2, scope: !6323)
!6365 = !DILocation(line: 605, column: 1, scope: !6323)
!6366 = !DISubprogram(name: "anon_inode_getfd", scope: !6367, file: !6367, line: 22, type: !6368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = !DIFile(filename: "./include/linux/anon_inodes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00c0a889ffd591b5a8b4ccaa2c6d3740")
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!50, !45, !4341, !48, !50}
!6370 = !DISubprogram(name: "kfree", scope: !279, file: !279, line: 227, type: !6371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6371 = !DISubroutineType(types: !6372)
!6372 = !{null, !919}
!6373 = distinct !DISubprogram(name: "fdget", scope: !6125, file: !6125, line: 62, type: !6374, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6376)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!6124, !19}
!6376 = !{!6377}
!6377 = !DILocalVariable(name: "fd", arg: 1, scope: !6373, file: !6125, line: 62, type: !19)
!6378 = !DILocation(line: 62, column: 44, scope: !6373)
!6379 = !DILocation(line: 64, column: 25, scope: !6373)
!6380 = !DILocation(line: 64, column: 17, scope: !6373)
!6381 = !DILocation(line: 64, column: 9, scope: !6373)
!6382 = !DILocation(line: 64, column: 2, scope: !6373)
!6383 = distinct !DISubprogram(name: "fdput", scope: !6125, file: !6125, line: 43, type: !6384, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{null, !6124}
!6386 = !{!6387}
!6387 = !DILocalVariable(name: "fd", arg: 1, scope: !6383, file: !6125, line: 43, type: !6124)
!6388 = !DILocation(line: 43, column: 36, scope: !6383)
!6389 = !DILocation(line: 45, column: 9, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6383, file: !6125, line: 45, column: 6)
!6391 = !DILocation(line: 45, column: 15, scope: !6390)
!6392 = !DILocation(line: 45, column: 6, scope: !6383)
!6393 = !DILocation(line: 46, column: 11, scope: !6390)
!6394 = !DILocation(line: 46, column: 3, scope: !6390)
!6395 = !DILocation(line: 47, column: 1, scope: !6383)
!6396 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6397, file: !6397, line: 374, type: !6398, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6400)
!6397 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !4850}
!6400 = !{!6401}
!6401 = !DILocalVariable(name: "lock", arg: 1, scope: !6396, file: !6397, line: 374, type: !4850)
!6402 = !DILocation(line: 374, column: 55, scope: !6396)
!6403 = !DILocation(line: 376, column: 2, scope: !6396)
!6404 = !DILocation(line: 377, column: 1, scope: !6396)
!6405 = distinct !DISubprogram(name: "get_current", scope: !6406, file: !6406, line: 39, type: !6407, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6409)
!6406 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6407 = !DISubroutineType(types: !6408)
!6408 = !{!487}
!6409 = !{!6410, !6412, !6414}
!6410 = !DILocalVariable(name: "pscr_ret__", scope: !6411, file: !6406, line: 41, type: !487)
!6411 = distinct !DILexicalBlock(scope: !6405, file: !6406, line: 41, column: 9)
!6412 = !DILocalVariable(name: "__vpp_verify", scope: !6413, file: !6406, line: 41, type: !919)
!6413 = distinct !DILexicalBlock(scope: !6411, file: !6406, line: 41, column: 9)
!6414 = !DILocalVariable(name: "pfo_val__", scope: !6415, file: !6406, line: 41, type: !545)
!6415 = distinct !DILexicalBlock(scope: !6411, file: !6406, line: 41, column: 9)
!6416 = !DILocation(line: 41, column: 9, scope: !6411)
!6417 = !DILocation(line: 41, column: 9, scope: !6413)
!6418 = !DILocation(line: 41, column: 9, scope: !6415)
!6419 = !{i64 2148427542}
!6420 = !DILocation(line: 41, column: 9, scope: !6405)
!6421 = !DILocation(line: 41, column: 2, scope: !6405)
!6422 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6397, file: !6397, line: 399, type: !6398, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6423)
!6423 = !{!6424}
!6424 = !DILocalVariable(name: "lock", arg: 1, scope: !6422, file: !6397, line: 399, type: !4850)
!6425 = !DILocation(line: 399, column: 57, scope: !6422)
!6426 = !DILocation(line: 401, column: 2, scope: !6422)
!6427 = !DILocation(line: 402, column: 1, scope: !6422)
!6428 = !DISubprogram(name: "__wake_up", scope: !83, file: !83, line: 212, type: !6429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!50, !5955, !19, !50, !48}
!6431 = !DISubprogram(name: "kmalloc_large", scope: !279, file: !279, line: 531, type: !6324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6432 = distinct !DISubprogram(name: "__kmalloc_index", scope: !279, file: !279, line: 444, type: !6433, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6435)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!19, !63, !1002}
!6435 = !{!6436, !6437}
!6436 = !DILocalVariable(name: "size", arg: 1, scope: !6432, file: !279, line: 444, type: !63)
!6437 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6432, file: !279, line: 445, type: !1002)
!6438 = !DILocation(line: 444, column: 60, scope: !6432)
!6439 = !DILocation(line: 445, column: 16, scope: !6432)
!6440 = !DILocation(line: 447, column: 7, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 447, column: 6)
!6442 = !DILocation(line: 447, column: 6, scope: !6432)
!6443 = !DILocation(line: 448, column: 3, scope: !6441)
!6444 = !DILocation(line: 450, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 450, column: 6)
!6446 = !DILocation(line: 450, column: 11, scope: !6445)
!6447 = !DILocation(line: 450, column: 6, scope: !6432)
!6448 = !DILocation(line: 451, column: 3, scope: !6445)
!6449 = !DILocation(line: 453, column: 32, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 453, column: 6)
!6451 = !DILocation(line: 453, column: 37, scope: !6450)
!6452 = !DILocation(line: 453, column: 42, scope: !6450)
!6453 = !DILocation(line: 453, column: 45, scope: !6450)
!6454 = !DILocation(line: 453, column: 50, scope: !6450)
!6455 = !DILocation(line: 453, column: 6, scope: !6432)
!6456 = !DILocation(line: 454, column: 3, scope: !6450)
!6457 = !DILocation(line: 455, column: 32, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 455, column: 6)
!6459 = !DILocation(line: 455, column: 37, scope: !6458)
!6460 = !DILocation(line: 455, column: 43, scope: !6458)
!6461 = !DILocation(line: 455, column: 46, scope: !6458)
!6462 = !DILocation(line: 455, column: 51, scope: !6458)
!6463 = !DILocation(line: 455, column: 6, scope: !6432)
!6464 = !DILocation(line: 456, column: 3, scope: !6458)
!6465 = !DILocation(line: 457, column: 6, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 457, column: 6)
!6467 = !DILocation(line: 457, column: 11, scope: !6466)
!6468 = !DILocation(line: 457, column: 6, scope: !6432)
!6469 = !DILocation(line: 457, column: 26, scope: !6466)
!6470 = !DILocation(line: 458, column: 6, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 458, column: 6)
!6472 = !DILocation(line: 458, column: 11, scope: !6471)
!6473 = !DILocation(line: 458, column: 6, scope: !6432)
!6474 = !DILocation(line: 458, column: 26, scope: !6471)
!6475 = !DILocation(line: 459, column: 6, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 459, column: 6)
!6477 = !DILocation(line: 459, column: 11, scope: !6476)
!6478 = !DILocation(line: 459, column: 6, scope: !6432)
!6479 = !DILocation(line: 459, column: 26, scope: !6476)
!6480 = !DILocation(line: 460, column: 6, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 460, column: 6)
!6482 = !DILocation(line: 460, column: 11, scope: !6481)
!6483 = !DILocation(line: 460, column: 6, scope: !6432)
!6484 = !DILocation(line: 460, column: 26, scope: !6481)
!6485 = !DILocation(line: 461, column: 6, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 461, column: 6)
!6487 = !DILocation(line: 461, column: 11, scope: !6486)
!6488 = !DILocation(line: 461, column: 6, scope: !6432)
!6489 = !DILocation(line: 461, column: 26, scope: !6486)
!6490 = !DILocation(line: 462, column: 6, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 462, column: 6)
!6492 = !DILocation(line: 462, column: 11, scope: !6491)
!6493 = !DILocation(line: 462, column: 6, scope: !6432)
!6494 = !DILocation(line: 462, column: 26, scope: !6491)
!6495 = !DILocation(line: 463, column: 6, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 463, column: 6)
!6497 = !DILocation(line: 463, column: 11, scope: !6496)
!6498 = !DILocation(line: 463, column: 6, scope: !6432)
!6499 = !DILocation(line: 463, column: 26, scope: !6496)
!6500 = !DILocation(line: 464, column: 6, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 464, column: 6)
!6502 = !DILocation(line: 464, column: 11, scope: !6501)
!6503 = !DILocation(line: 464, column: 6, scope: !6432)
!6504 = !DILocation(line: 464, column: 26, scope: !6501)
!6505 = !DILocation(line: 465, column: 6, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 465, column: 6)
!6507 = !DILocation(line: 465, column: 11, scope: !6506)
!6508 = !DILocation(line: 465, column: 6, scope: !6432)
!6509 = !DILocation(line: 465, column: 26, scope: !6506)
!6510 = !DILocation(line: 466, column: 6, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 466, column: 6)
!6512 = !DILocation(line: 466, column: 11, scope: !6511)
!6513 = !DILocation(line: 466, column: 6, scope: !6432)
!6514 = !DILocation(line: 466, column: 26, scope: !6511)
!6515 = !DILocation(line: 467, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 467, column: 6)
!6517 = !DILocation(line: 467, column: 11, scope: !6516)
!6518 = !DILocation(line: 467, column: 6, scope: !6432)
!6519 = !DILocation(line: 467, column: 26, scope: !6516)
!6520 = !DILocation(line: 468, column: 6, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 468, column: 6)
!6522 = !DILocation(line: 468, column: 11, scope: !6521)
!6523 = !DILocation(line: 468, column: 6, scope: !6432)
!6524 = !DILocation(line: 468, column: 26, scope: !6521)
!6525 = !DILocation(line: 469, column: 6, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 469, column: 6)
!6527 = !DILocation(line: 469, column: 11, scope: !6526)
!6528 = !DILocation(line: 469, column: 6, scope: !6432)
!6529 = !DILocation(line: 469, column: 26, scope: !6526)
!6530 = !DILocation(line: 470, column: 6, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 470, column: 6)
!6532 = !DILocation(line: 470, column: 11, scope: !6531)
!6533 = !DILocation(line: 470, column: 6, scope: !6432)
!6534 = !DILocation(line: 470, column: 26, scope: !6531)
!6535 = !DILocation(line: 471, column: 6, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 471, column: 6)
!6537 = !DILocation(line: 471, column: 11, scope: !6536)
!6538 = !DILocation(line: 471, column: 6, scope: !6432)
!6539 = !DILocation(line: 471, column: 26, scope: !6536)
!6540 = !DILocation(line: 472, column: 6, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 472, column: 6)
!6542 = !DILocation(line: 472, column: 11, scope: !6541)
!6543 = !DILocation(line: 472, column: 6, scope: !6432)
!6544 = !DILocation(line: 472, column: 26, scope: !6541)
!6545 = !DILocation(line: 473, column: 6, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 473, column: 6)
!6547 = !DILocation(line: 473, column: 11, scope: !6546)
!6548 = !DILocation(line: 473, column: 6, scope: !6432)
!6549 = !DILocation(line: 473, column: 26, scope: !6546)
!6550 = !DILocation(line: 474, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 474, column: 6)
!6552 = !DILocation(line: 474, column: 11, scope: !6551)
!6553 = !DILocation(line: 474, column: 6, scope: !6432)
!6554 = !DILocation(line: 474, column: 27, scope: !6551)
!6555 = !DILocation(line: 475, column: 6, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 475, column: 6)
!6557 = !DILocation(line: 475, column: 11, scope: !6556)
!6558 = !DILocation(line: 475, column: 6, scope: !6432)
!6559 = !DILocation(line: 475, column: 32, scope: !6556)
!6560 = !DILocation(line: 477, column: 50, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6432, file: !279, line: 477, column: 6)
!6562 = !DILocation(line: 477, column: 6, scope: !6432)
!6563 = !DILocation(line: 478, column: 3, scope: !6561)
!6564 = !DILocation(line: 478, column: 3, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6566, file: !279, line: 478, column: 3)
!6566 = distinct !DILexicalBlock(scope: !6561, file: !279, line: 478, column: 3)
!6567 = !{i32 -2141701953}
!6568 = !DILocation(line: 478, column: 3, scope: !6566)
!6569 = !DILocation(line: 480, column: 3, scope: !6561)
!6570 = !DILocation(line: 480, column: 3, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6561, file: !279, line: 480, column: 3)
!6572 = !DILocation(line: 480, column: 3, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6571, file: !279, line: 480, column: 3)
!6574 = !DILocation(line: 480, column: 3, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !279, line: 480, column: 3)
!6576 = !{i64 2153265546, i64 2153265575, i64 2153265621, i64 2153265679, i64 2153265733, i64 2153265787, i64 2153265842, i64 2153265873}
!6577 = !DILocation(line: 483, column: 2, scope: !6432)
!6578 = !DILocation(line: 484, column: 1, scope: !6432)
!6579 = !DISubprogram(name: "kmalloc_trace", scope: !279, file: !279, line: 525, type: !6580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!48, !3133, !316, !63}
!6582 = distinct !DISubprogram(name: "kmalloc_type", scope: !279, file: !279, line: 401, type: !6583, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6585)
!6583 = !DISubroutineType(types: !6584)
!6584 = !{!278, !316, !67}
!6585 = !{!6586, !6587}
!6586 = !DILocalVariable(name: "flags", arg: 1, scope: !6582, file: !279, line: 401, type: !316)
!6587 = !DILocalVariable(name: "caller", arg: 2, scope: !6582, file: !279, line: 401, type: !67)
!6588 = !DILocation(line: 401, column: 67, scope: !6582)
!6589 = !DILocation(line: 401, column: 88, scope: !6582)
!6590 = !DILocation(line: 407, column: 6, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6582, file: !279, line: 407, column: 6)
!6592 = !DILocation(line: 407, column: 6, scope: !6582)
!6593 = !DILocation(line: 413, column: 3, scope: !6591)
!6594 = !DILocation(line: 423, column: 38, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6582, file: !279, line: 423, column: 6)
!6596 = !DILocation(line: 423, column: 44, scope: !6595)
!6597 = !DILocation(line: 423, column: 6, scope: !6582)
!6598 = !DILocation(line: 424, column: 3, scope: !6595)
!6599 = !DILocation(line: 426, column: 3, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6582, file: !279, line: 425, column: 6)
!6601 = !DILocation(line: 429, column: 1, scope: !6582)
!6602 = !DISubprogram(name: "__kmalloc", scope: !279, file: !279, line: 488, type: !6324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6603 = !DISubprogram(name: "__compiletime_assert_245", scope: !279, file: !279, line: 478, type: !2530, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6604 = distinct !DISubprogram(name: "signalfd_read", scope: !9, file: !9, line: 202, type: !4352, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6605)
!6605 = !{!6606, !6607, !6608, !6609, !6610, !6611, !6612, !6613, !6614, !6615}
!6606 = !DILocalVariable(name: "file", arg: 1, scope: !6604, file: !9, line: 202, type: !358)
!6607 = !DILocalVariable(name: "buf", arg: 2, scope: !6604, file: !9, line: 202, type: !1079)
!6608 = !DILocalVariable(name: "count", arg: 3, scope: !6604, file: !9, line: 202, type: !63)
!6609 = !DILocalVariable(name: "ppos", arg: 4, scope: !6604, file: !9, line: 203, type: !68)
!6610 = !DILocalVariable(name: "ctx", scope: !6604, file: !9, line: 205, type: !6117)
!6611 = !DILocalVariable(name: "siginfo", scope: !6604, file: !9, line: 206, type: !317)
!6612 = !DILocalVariable(name: "nonblock", scope: !6604, file: !9, line: 207, type: !50)
!6613 = !DILocalVariable(name: "ret", scope: !6604, file: !9, line: 208, type: !2015)
!6614 = !DILocalVariable(name: "total", scope: !6604, file: !9, line: 208, type: !2015)
!6615 = !DILocalVariable(name: "info", scope: !6604, file: !9, line: 209, type: !5437)
!6616 = !DILocation(line: 202, column: 43, scope: !6604)
!6617 = !DILocation(line: 202, column: 62, scope: !6604)
!6618 = !DILocation(line: 202, column: 74, scope: !6604)
!6619 = !DILocation(line: 203, column: 17, scope: !6604)
!6620 = !DILocation(line: 205, column: 2, scope: !6604)
!6621 = !DILocation(line: 205, column: 23, scope: !6604)
!6622 = !DILocation(line: 205, column: 29, scope: !6604)
!6623 = !DILocation(line: 205, column: 35, scope: !6604)
!6624 = !DILocation(line: 206, column: 2, scope: !6604)
!6625 = !DILocation(line: 206, column: 34, scope: !6604)
!6626 = !DILocation(line: 207, column: 2, scope: !6604)
!6627 = !DILocation(line: 207, column: 6, scope: !6604)
!6628 = !DILocation(line: 207, column: 17, scope: !6604)
!6629 = !DILocation(line: 207, column: 23, scope: !6604)
!6630 = !DILocation(line: 207, column: 31, scope: !6604)
!6631 = !DILocation(line: 208, column: 2, scope: !6604)
!6632 = !DILocation(line: 208, column: 10, scope: !6604)
!6633 = !DILocation(line: 208, column: 15, scope: !6604)
!6634 = !DILocation(line: 209, column: 2, scope: !6604)
!6635 = !DILocation(line: 209, column: 19, scope: !6604)
!6636 = !DILocation(line: 211, column: 8, scope: !6604)
!6637 = !DILocation(line: 212, column: 7, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6604, file: !9, line: 212, column: 6)
!6639 = !DILocation(line: 212, column: 6, scope: !6604)
!6640 = !DILocation(line: 213, column: 3, scope: !6638)
!6641 = !DILocation(line: 215, column: 47, scope: !6604)
!6642 = !DILocation(line: 215, column: 10, scope: !6604)
!6643 = !DILocation(line: 216, column: 2, scope: !6604)
!6644 = !DILocation(line: 217, column: 26, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6604, file: !9, line: 216, column: 5)
!6646 = !DILocation(line: 217, column: 38, scope: !6645)
!6647 = !DILocation(line: 217, column: 9, scope: !6645)
!6648 = !DILocation(line: 217, column: 7, scope: !6645)
!6649 = !DILocation(line: 218, column: 7, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6645, file: !9, line: 218, column: 7)
!6651 = !DILocation(line: 218, column: 7, scope: !6645)
!6652 = !DILocation(line: 219, column: 4, scope: !6650)
!6653 = !DILocation(line: 220, column: 27, scope: !6645)
!6654 = !DILocation(line: 220, column: 9, scope: !6645)
!6655 = !DILocation(line: 220, column: 7, scope: !6645)
!6656 = !DILocation(line: 221, column: 7, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6645, file: !9, line: 221, column: 7)
!6658 = !DILocation(line: 221, column: 11, scope: !6657)
!6659 = !DILocation(line: 221, column: 7, scope: !6645)
!6660 = !DILocation(line: 222, column: 4, scope: !6657)
!6661 = !DILocation(line: 223, column: 10, scope: !6645)
!6662 = !DILocation(line: 224, column: 12, scope: !6645)
!6663 = !DILocation(line: 224, column: 9, scope: !6645)
!6664 = !DILocation(line: 225, column: 12, scope: !6645)
!6665 = !DILocation(line: 226, column: 2, scope: !6645)
!6666 = !DILocation(line: 226, column: 11, scope: !6604)
!6667 = distinct !{!6667, !6643, !6668, !6669, !6670}
!6668 = !DILocation(line: 226, column: 18, scope: !6604)
!6669 = !{!"llvm.loop.mustprogress"}
!6670 = !{!"llvm.loop.unroll.disable"}
!6671 = !DILocation(line: 228, column: 9, scope: !6604)
!6672 = !DILocation(line: 228, column: 17, scope: !6604)
!6673 = !DILocation(line: 228, column: 24, scope: !6604)
!6674 = !DILocation(line: 228, column: 2, scope: !6604)
!6675 = !DILocation(line: 229, column: 1, scope: !6604)
!6676 = distinct !DISubprogram(name: "signalfd_poll", scope: !9, file: !9, line: 51, type: !6677, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6681)
!6677 = !DISubroutineType(types: !6678)
!6678 = !{!356, !358, !6679}
!6679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6680, size: 64)
!6680 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !4462, line: 40, baseType: !4461)
!6681 = !{!6682, !6683, !6684, !6685}
!6682 = !DILocalVariable(name: "file", arg: 1, scope: !6676, file: !9, line: 51, type: !358)
!6683 = !DILocalVariable(name: "wait", arg: 2, scope: !6676, file: !9, line: 51, type: !6679)
!6684 = !DILocalVariable(name: "ctx", scope: !6676, file: !9, line: 53, type: !6117)
!6685 = !DILocalVariable(name: "events", scope: !6676, file: !9, line: 54, type: !356)
!6686 = !DILocation(line: 51, column: 44, scope: !6676)
!6687 = !DILocation(line: 51, column: 62, scope: !6676)
!6688 = !DILocation(line: 53, column: 2, scope: !6676)
!6689 = !DILocation(line: 53, column: 23, scope: !6676)
!6690 = !DILocation(line: 53, column: 29, scope: !6676)
!6691 = !DILocation(line: 53, column: 35, scope: !6676)
!6692 = !DILocation(line: 54, column: 2, scope: !6676)
!6693 = !DILocation(line: 54, column: 11, scope: !6676)
!6694 = !DILocation(line: 56, column: 12, scope: !6676)
!6695 = !DILocation(line: 56, column: 19, scope: !6676)
!6696 = !DILocation(line: 56, column: 28, scope: !6676)
!6697 = !DILocation(line: 56, column: 37, scope: !6676)
!6698 = !DILocation(line: 56, column: 51, scope: !6676)
!6699 = !DILocation(line: 56, column: 2, scope: !6676)
!6700 = !DILocation(line: 58, column: 17, scope: !6676)
!6701 = !DILocation(line: 58, column: 26, scope: !6676)
!6702 = !DILocation(line: 58, column: 35, scope: !6676)
!6703 = !DILocation(line: 58, column: 2, scope: !6676)
!6704 = !DILocation(line: 59, column: 19, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6676, file: !9, line: 59, column: 6)
!6706 = !DILocation(line: 59, column: 28, scope: !6705)
!6707 = !DILocation(line: 59, column: 38, scope: !6705)
!6708 = !DILocation(line: 59, column: 43, scope: !6705)
!6709 = !DILocation(line: 59, column: 6, scope: !6705)
!6710 = !DILocation(line: 59, column: 52, scope: !6705)
!6711 = !DILocation(line: 60, column: 19, scope: !6705)
!6712 = !DILocation(line: 60, column: 28, scope: !6705)
!6713 = !DILocation(line: 60, column: 36, scope: !6705)
!6714 = !DILocation(line: 61, column: 5, scope: !6705)
!6715 = !DILocation(line: 61, column: 10, scope: !6705)
!6716 = !DILocation(line: 60, column: 6, scope: !6705)
!6717 = !DILocation(line: 59, column: 6, scope: !6676)
!6718 = !DILocation(line: 62, column: 10, scope: !6705)
!6719 = !DILocation(line: 62, column: 3, scope: !6705)
!6720 = !DILocation(line: 63, column: 19, scope: !6676)
!6721 = !DILocation(line: 63, column: 28, scope: !6676)
!6722 = !DILocation(line: 63, column: 37, scope: !6676)
!6723 = !DILocation(line: 63, column: 2, scope: !6676)
!6724 = !DILocation(line: 65, column: 9, scope: !6676)
!6725 = !DILocation(line: 66, column: 1, scope: !6676)
!6726 = !DILocation(line: 65, column: 2, scope: !6676)
!6727 = distinct !DISubprogram(name: "signalfd_release", scope: !9, file: !9, line: 45, type: !4482, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6728)
!6728 = !{!6729, !6730}
!6729 = !DILocalVariable(name: "inode", arg: 1, scope: !6727, file: !9, line: 45, type: !1769)
!6730 = !DILocalVariable(name: "file", arg: 2, scope: !6727, file: !9, line: 45, type: !358)
!6731 = !DILocation(line: 45, column: 43, scope: !6727)
!6732 = !DILocation(line: 45, column: 63, scope: !6727)
!6733 = !DILocation(line: 47, column: 8, scope: !6727)
!6734 = !DILocation(line: 47, column: 14, scope: !6727)
!6735 = !DILocation(line: 47, column: 2, scope: !6727)
!6736 = !DILocation(line: 48, column: 2, scope: !6727)
!6737 = distinct !DISubprogram(name: "signalfd_show_fdinfo", scope: !9, file: !9, line: 232, type: !4535, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6738)
!6738 = !{!6739, !6740, !6741, !6742}
!6739 = !DILocalVariable(name: "m", arg: 1, scope: !6737, file: !9, line: 232, type: !1579)
!6740 = !DILocalVariable(name: "f", arg: 2, scope: !6737, file: !9, line: 232, type: !358)
!6741 = !DILocalVariable(name: "ctx", scope: !6737, file: !9, line: 234, type: !6117)
!6742 = !DILocalVariable(name: "sigmask", scope: !6737, file: !9, line: 235, type: !308)
!6743 = !DILocation(line: 232, column: 51, scope: !6737)
!6744 = !DILocation(line: 232, column: 67, scope: !6737)
!6745 = !DILocation(line: 234, column: 2, scope: !6737)
!6746 = !DILocation(line: 234, column: 23, scope: !6737)
!6747 = !DILocation(line: 234, column: 29, scope: !6737)
!6748 = !DILocation(line: 234, column: 32, scope: !6737)
!6749 = !DILocation(line: 235, column: 2, scope: !6737)
!6750 = !DILocation(line: 235, column: 11, scope: !6737)
!6751 = !DILocation(line: 237, column: 12, scope: !6737)
!6752 = !DILocation(line: 237, column: 17, scope: !6737)
!6753 = !DILocation(line: 238, column: 2, scope: !6737)
!6754 = !DILocation(line: 239, column: 18, scope: !6737)
!6755 = !DILocation(line: 239, column: 2, scope: !6737)
!6756 = !DILocation(line: 240, column: 1, scope: !6737)
!6757 = distinct !DISubprogram(name: "signalfd_dequeue", scope: !9, file: !9, line: 155, type: !6758, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6760)
!6758 = !DISubroutineType(types: !6759)
!6759 = !{!2015, !6117, !5436, !50}
!6760 = !{!6761, !6762, !6763, !6764, !6765, !6766, !6778, !6786}
!6761 = !DILocalVariable(name: "ctx", arg: 1, scope: !6757, file: !9, line: 155, type: !6117)
!6762 = !DILocalVariable(name: "info", arg: 2, scope: !6757, file: !9, line: 155, type: !5436)
!6763 = !DILocalVariable(name: "nonblock", arg: 3, scope: !6757, file: !9, line: 156, type: !50)
!6764 = !DILocalVariable(name: "type", scope: !6757, file: !9, line: 158, type: !257)
!6765 = !DILocalVariable(name: "ret", scope: !6757, file: !9, line: 159, type: !2015)
!6766 = !DILocalVariable(name: "wait", scope: !6757, file: !9, line: 160, type: !6767)
!6767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !83, line: 30, size: 320, elements: !6768)
!6768 = !{!6769, !6770, !6771, !6777}
!6769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6767, file: !83, line: 31, baseType: !19, size: 32)
!6770 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6767, file: !83, line: 32, baseType: !48, size: 64, offset: 64)
!6771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6767, file: !83, line: 33, baseType: !6772, size: 64, offset: 128)
!6772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !83, line: 16, baseType: !6773)
!6773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6774, size: 64)
!6774 = !DISubroutineType(types: !6775)
!6775 = !{!50, !6776, !19, !50, !48}
!6776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6767, size: 64)
!6777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6767, file: !83, line: 34, baseType: !125, size: 128, offset: 192)
!6778 = !DILocalVariable(name: "__ai_ptr", scope: !6779, file: !9, line: 177, type: !2209)
!6779 = distinct !DILexicalBlock(scope: !6780, file: !9, line: 177, column: 3)
!6780 = distinct !DILexicalBlock(scope: !6781, file: !9, line: 177, column: 3)
!6781 = distinct !DILexicalBlock(scope: !6782, file: !9, line: 177, column: 3)
!6782 = distinct !DILexicalBlock(scope: !6783, file: !9, line: 177, column: 3)
!6783 = distinct !DILexicalBlock(scope: !6784, file: !9, line: 176, column: 11)
!6784 = distinct !DILexicalBlock(scope: !6785, file: !9, line: 176, column: 2)
!6785 = distinct !DILexicalBlock(scope: !6757, file: !9, line: 176, column: 2)
!6786 = !DILocalVariable(name: "__ret", scope: !6787, file: !9, line: 177, type: !19)
!6787 = distinct !DILexicalBlock(scope: !6779, file: !9, line: 177, column: 3)
!6788 = !DILocation(line: 155, column: 54, scope: !6757)
!6789 = !DILocation(line: 155, column: 77, scope: !6757)
!6790 = !DILocation(line: 156, column: 9, scope: !6757)
!6791 = !DILocation(line: 158, column: 2, scope: !6757)
!6792 = !DILocation(line: 158, column: 16, scope: !6757)
!6793 = !DILocation(line: 159, column: 2, scope: !6757)
!6794 = !DILocation(line: 159, column: 10, scope: !6757)
!6795 = !DILocation(line: 160, column: 2, scope: !6757)
!6796 = !DILocation(line: 162, column: 17, scope: !6757)
!6797 = !DILocation(line: 162, column: 26, scope: !6757)
!6798 = !DILocation(line: 162, column: 35, scope: !6757)
!6799 = !DILocation(line: 162, column: 2, scope: !6757)
!6800 = !DILocation(line: 163, column: 23, scope: !6757)
!6801 = !DILocation(line: 163, column: 33, scope: !6757)
!6802 = !DILocation(line: 163, column: 38, scope: !6757)
!6803 = !DILocation(line: 163, column: 47, scope: !6757)
!6804 = !DILocation(line: 163, column: 8, scope: !6757)
!6805 = !DILocation(line: 163, column: 6, scope: !6757)
!6806 = !DILocation(line: 164, column: 10, scope: !6757)
!6807 = !DILocation(line: 164, column: 2, scope: !6757)
!6808 = !DILocation(line: 166, column: 8, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6810, file: !9, line: 166, column: 7)
!6810 = distinct !DILexicalBlock(scope: !6757, file: !9, line: 164, column: 15)
!6811 = !DILocation(line: 166, column: 7, scope: !6810)
!6812 = !DILocation(line: 167, column: 4, scope: !6809)
!6813 = !DILocation(line: 168, column: 7, scope: !6810)
!6814 = !DILocation(line: 168, column: 3, scope: !6810)
!6815 = !DILocation(line: 171, column: 20, scope: !6810)
!6816 = !DILocation(line: 171, column: 29, scope: !6810)
!6817 = !DILocation(line: 171, column: 38, scope: !6810)
!6818 = !DILocation(line: 171, column: 3, scope: !6810)
!6819 = !DILocation(line: 172, column: 10, scope: !6810)
!6820 = !DILocation(line: 172, column: 3, scope: !6810)
!6821 = !DILocation(line: 175, column: 18, scope: !6757)
!6822 = !DILocation(line: 175, column: 27, scope: !6757)
!6823 = !DILocation(line: 175, column: 36, scope: !6757)
!6824 = !DILocation(line: 175, column: 2, scope: !6757)
!6825 = !DILocation(line: 176, column: 2, scope: !6757)
!6826 = !DILocation(line: 177, column: 3, scope: !6783)
!6827 = !DILocation(line: 177, column: 3, scope: !6782)
!6828 = !DILocation(line: 177, column: 3, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6782, file: !9, line: 177, column: 3)
!6830 = !DILocation(line: 177, column: 3, scope: !6781)
!6831 = !DILocation(line: 177, column: 3, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6781, file: !9, line: 177, column: 3)
!6833 = !DILocation(line: 177, column: 3, scope: !6779)
!6834 = !DILocation(line: 177, column: 3, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6779, file: !9, line: 177, column: 3)
!6836 = !DILocation(line: 177, column: 3, scope: !6787)
!6837 = !{i64 2155594834}
!6838 = !DILocation(line: 177, column: 3, scope: !6780)
!6839 = !DILocation(line: 178, column: 24, scope: !6783)
!6840 = !DILocation(line: 178, column: 34, scope: !6783)
!6841 = !DILocation(line: 178, column: 39, scope: !6783)
!6842 = !DILocation(line: 178, column: 48, scope: !6783)
!6843 = !DILocation(line: 178, column: 9, scope: !6783)
!6844 = !DILocation(line: 178, column: 7, scope: !6783)
!6845 = !DILocation(line: 179, column: 7, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6783, file: !9, line: 179, column: 7)
!6847 = !DILocation(line: 179, column: 11, scope: !6846)
!6848 = !DILocation(line: 179, column: 7, scope: !6783)
!6849 = !DILocation(line: 180, column: 4, scope: !6846)
!6850 = !DILocation(line: 181, column: 22, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6783, file: !9, line: 181, column: 7)
!6852 = !DILocation(line: 181, column: 7, scope: !6851)
!6853 = !DILocation(line: 181, column: 7, scope: !6783)
!6854 = !DILocation(line: 182, column: 8, scope: !6855)
!6855 = distinct !DILexicalBlock(scope: !6851, file: !9, line: 181, column: 32)
!6856 = !DILocation(line: 183, column: 4, scope: !6855)
!6857 = !DILocation(line: 185, column: 20, scope: !6783)
!6858 = !DILocation(line: 185, column: 29, scope: !6783)
!6859 = !DILocation(line: 185, column: 38, scope: !6783)
!6860 = !DILocation(line: 185, column: 3, scope: !6783)
!6861 = !DILocation(line: 186, column: 3, scope: !6783)
!6862 = !DILocation(line: 187, column: 18, scope: !6783)
!6863 = !DILocation(line: 187, column: 27, scope: !6783)
!6864 = !DILocation(line: 187, column: 36, scope: !6783)
!6865 = !DILocation(line: 187, column: 3, scope: !6783)
!6866 = !DILocation(line: 176, column: 2, scope: !6784)
!6867 = distinct !{!6867, !6868, !6869, !6670}
!6868 = !DILocation(line: 176, column: 2, scope: !6785)
!6869 = !DILocation(line: 188, column: 2, scope: !6785)
!6870 = !DILocation(line: 189, column: 19, scope: !6757)
!6871 = !DILocation(line: 189, column: 28, scope: !6757)
!6872 = !DILocation(line: 189, column: 37, scope: !6757)
!6873 = !DILocation(line: 189, column: 2, scope: !6757)
!6874 = !DILocation(line: 191, column: 21, scope: !6757)
!6875 = !DILocation(line: 191, column: 30, scope: !6757)
!6876 = !DILocation(line: 191, column: 39, scope: !6757)
!6877 = !DILocation(line: 191, column: 2, scope: !6757)
!6878 = !DILocation(line: 192, column: 2, scope: !6757)
!6879 = !DILocation(line: 192, column: 2, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6757, file: !9, line: 192, column: 2)
!6881 = !DILocation(line: 192, column: 2, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6880, file: !9, line: 192, column: 2)
!6883 = !DILocation(line: 192, column: 2, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6880, file: !9, line: 192, column: 2)
!6885 = !DILocation(line: 192, column: 2, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6884, file: !9, line: 192, column: 2)
!6887 = !DILocation(line: 192, column: 2, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6884, file: !9, line: 192, column: 2)
!6889 = !DILocation(line: 194, column: 9, scope: !6757)
!6890 = !DILocation(line: 194, column: 2, scope: !6757)
!6891 = !DILocation(line: 195, column: 1, scope: !6757)
!6892 = distinct !DISubprogram(name: "signalfd_copyinfo", scope: !9, file: !9, line: 71, type: !6893, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6897)
!6893 = !DISubroutineType(types: !6894)
!6894 = !{!50, !317, !6895}
!6895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6896, size: 64)
!6896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5437)
!6897 = !{!6898, !6899, !6900}
!6898 = !DILocalVariable(name: "uinfo", arg: 1, scope: !6892, file: !9, line: 71, type: !317)
!6899 = !DILocalVariable(name: "kinfo", arg: 2, scope: !6892, file: !9, line: 72, type: !6895)
!6900 = !DILocalVariable(name: "new", scope: !6892, file: !9, line: 74, type: !318)
!6901 = !DILocation(line: 71, column: 62, scope: !6892)
!6902 = !DILocation(line: 72, column: 33, scope: !6892)
!6903 = !DILocation(line: 74, column: 2, scope: !6892)
!6904 = !DILocation(line: 74, column: 26, scope: !6892)
!6905 = !DILocation(line: 76, column: 2, scope: !6892)
!6906 = !DILocation(line: 76, column: 2, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6892, file: !9, line: 76, column: 2)
!6908 = !DILocation(line: 81, column: 2, scope: !6892)
!6909 = !DILocation(line: 87, column: 18, scope: !6892)
!6910 = !DILocation(line: 87, column: 25, scope: !6892)
!6911 = !DILocation(line: 87, column: 6, scope: !6892)
!6912 = !DILocation(line: 87, column: 16, scope: !6892)
!6913 = !DILocation(line: 88, column: 18, scope: !6892)
!6914 = !DILocation(line: 88, column: 25, scope: !6892)
!6915 = !DILocation(line: 88, column: 6, scope: !6892)
!6916 = !DILocation(line: 88, column: 16, scope: !6892)
!6917 = !DILocation(line: 89, column: 18, scope: !6892)
!6918 = !DILocation(line: 89, column: 25, scope: !6892)
!6919 = !DILocation(line: 89, column: 6, scope: !6892)
!6920 = !DILocation(line: 89, column: 16, scope: !6892)
!6921 = !DILocation(line: 90, column: 25, scope: !6892)
!6922 = !DILocation(line: 90, column: 32, scope: !6892)
!6923 = !DILocation(line: 90, column: 42, scope: !6892)
!6924 = !DILocation(line: 90, column: 49, scope: !6892)
!6925 = !DILocation(line: 90, column: 10, scope: !6892)
!6926 = !DILocation(line: 90, column: 2, scope: !6892)
!6927 = !DILocation(line: 92, column: 17, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6892, file: !9, line: 90, column: 59)
!6929 = !DILocation(line: 92, column: 24, scope: !6928)
!6930 = !DILocation(line: 92, column: 7, scope: !6928)
!6931 = !DILocation(line: 92, column: 15, scope: !6928)
!6932 = !DILocation(line: 93, column: 17, scope: !6928)
!6933 = !DILocation(line: 93, column: 24, scope: !6928)
!6934 = !DILocation(line: 93, column: 7, scope: !6928)
!6935 = !DILocation(line: 93, column: 15, scope: !6928)
!6936 = !DILocation(line: 94, column: 3, scope: !6928)
!6937 = !DILocation(line: 96, column: 17, scope: !6928)
!6938 = !DILocation(line: 96, column: 24, scope: !6928)
!6939 = !DILocation(line: 96, column: 7, scope: !6928)
!6940 = !DILocation(line: 96, column: 15, scope: !6928)
!6941 = !DILocation(line: 97, column: 21, scope: !6928)
!6942 = !DILocation(line: 97, column: 28, scope: !6928)
!6943 = !DILocation(line: 97, column: 7, scope: !6928)
!6944 = !DILocation(line: 97, column: 19, scope: !6928)
!6945 = !DILocation(line: 98, column: 24, scope: !6928)
!6946 = !DILocation(line: 98, column: 31, scope: !6928)
!6947 = !DILocation(line: 98, column: 17, scope: !6928)
!6948 = !DILocation(line: 98, column: 7, scope: !6928)
!6949 = !DILocation(line: 98, column: 15, scope: !6928)
!6950 = !DILocation(line: 99, column: 17, scope: !6928)
!6951 = !DILocation(line: 99, column: 24, scope: !6928)
!6952 = !DILocation(line: 99, column: 7, scope: !6928)
!6953 = !DILocation(line: 99, column: 15, scope: !6928)
!6954 = !DILocation(line: 100, column: 3, scope: !6928)
!6955 = !DILocation(line: 102, column: 18, scope: !6928)
!6956 = !DILocation(line: 102, column: 25, scope: !6928)
!6957 = !DILocation(line: 102, column: 7, scope: !6928)
!6958 = !DILocation(line: 102, column: 16, scope: !6928)
!6959 = !DILocation(line: 103, column: 18, scope: !6928)
!6960 = !DILocation(line: 103, column: 25, scope: !6928)
!6961 = !DILocation(line: 103, column: 7, scope: !6928)
!6962 = !DILocation(line: 103, column: 16, scope: !6928)
!6963 = !DILocation(line: 104, column: 3, scope: !6928)
!6964 = !DILocation(line: 116, column: 25, scope: !6928)
!6965 = !DILocation(line: 116, column: 32, scope: !6928)
!6966 = !DILocation(line: 116, column: 18, scope: !6928)
!6967 = !DILocation(line: 116, column: 7, scope: !6928)
!6968 = !DILocation(line: 116, column: 16, scope: !6928)
!6969 = !DILocation(line: 117, column: 3, scope: !6928)
!6970 = !DILocation(line: 119, column: 25, scope: !6928)
!6971 = !DILocation(line: 119, column: 32, scope: !6928)
!6972 = !DILocation(line: 119, column: 18, scope: !6928)
!6973 = !DILocation(line: 119, column: 7, scope: !6928)
!6974 = !DILocation(line: 119, column: 16, scope: !6928)
!6975 = !DILocation(line: 120, column: 20, scope: !6928)
!6976 = !DILocation(line: 120, column: 27, scope: !6928)
!6977 = !DILocation(line: 120, column: 7, scope: !6928)
!6978 = !DILocation(line: 120, column: 18, scope: !6928)
!6979 = !DILocation(line: 121, column: 3, scope: !6928)
!6980 = !DILocation(line: 123, column: 25, scope: !6928)
!6981 = !DILocation(line: 123, column: 32, scope: !6928)
!6982 = !DILocation(line: 123, column: 18, scope: !6928)
!6983 = !DILocation(line: 123, column: 7, scope: !6928)
!6984 = !DILocation(line: 123, column: 16, scope: !6928)
!6985 = !DILocation(line: 124, column: 30, scope: !6928)
!6986 = !DILocation(line: 124, column: 37, scope: !6928)
!6987 = !DILocation(line: 124, column: 7, scope: !6928)
!6988 = !DILocation(line: 124, column: 20, scope: !6928)
!6989 = !DILocation(line: 125, column: 3, scope: !6928)
!6990 = !DILocation(line: 127, column: 20, scope: !6928)
!6991 = !DILocation(line: 127, column: 27, scope: !6928)
!6992 = !DILocation(line: 127, column: 7, scope: !6928)
!6993 = !DILocation(line: 127, column: 18, scope: !6928)
!6994 = !DILocation(line: 128, column: 20, scope: !6928)
!6995 = !DILocation(line: 128, column: 27, scope: !6928)
!6996 = !DILocation(line: 128, column: 7, scope: !6928)
!6997 = !DILocation(line: 128, column: 18, scope: !6928)
!6998 = !DILocation(line: 129, column: 20, scope: !6928)
!6999 = !DILocation(line: 129, column: 27, scope: !6928)
!7000 = !DILocation(line: 129, column: 7, scope: !6928)
!7001 = !DILocation(line: 129, column: 18, scope: !6928)
!7002 = !DILocation(line: 130, column: 20, scope: !6928)
!7003 = !DILocation(line: 130, column: 27, scope: !6928)
!7004 = !DILocation(line: 130, column: 7, scope: !6928)
!7005 = !DILocation(line: 130, column: 18, scope: !6928)
!7006 = !DILocation(line: 131, column: 20, scope: !6928)
!7007 = !DILocation(line: 131, column: 27, scope: !6928)
!7008 = !DILocation(line: 131, column: 7, scope: !6928)
!7009 = !DILocation(line: 131, column: 18, scope: !6928)
!7010 = !DILocation(line: 132, column: 3, scope: !6928)
!7011 = !DILocation(line: 137, column: 17, scope: !6928)
!7012 = !DILocation(line: 137, column: 24, scope: !6928)
!7013 = !DILocation(line: 137, column: 7, scope: !6928)
!7014 = !DILocation(line: 137, column: 15, scope: !6928)
!7015 = !DILocation(line: 138, column: 17, scope: !6928)
!7016 = !DILocation(line: 138, column: 24, scope: !6928)
!7017 = !DILocation(line: 138, column: 7, scope: !6928)
!7018 = !DILocation(line: 138, column: 15, scope: !6928)
!7019 = !DILocation(line: 139, column: 24, scope: !6928)
!7020 = !DILocation(line: 139, column: 31, scope: !6928)
!7021 = !DILocation(line: 139, column: 17, scope: !6928)
!7022 = !DILocation(line: 139, column: 7, scope: !6928)
!7023 = !DILocation(line: 139, column: 15, scope: !6928)
!7024 = !DILocation(line: 140, column: 17, scope: !6928)
!7025 = !DILocation(line: 140, column: 24, scope: !6928)
!7026 = !DILocation(line: 140, column: 7, scope: !6928)
!7027 = !DILocation(line: 140, column: 15, scope: !6928)
!7028 = !DILocation(line: 141, column: 3, scope: !6928)
!7029 = !DILocation(line: 143, column: 30, scope: !6928)
!7030 = !DILocation(line: 143, column: 37, scope: !6928)
!7031 = !DILocation(line: 143, column: 23, scope: !6928)
!7032 = !DILocation(line: 143, column: 7, scope: !6928)
!7033 = !DILocation(line: 143, column: 21, scope: !6928)
!7034 = !DILocation(line: 144, column: 23, scope: !6928)
!7035 = !DILocation(line: 144, column: 30, scope: !6928)
!7036 = !DILocation(line: 144, column: 7, scope: !6928)
!7037 = !DILocation(line: 144, column: 21, scope: !6928)
!7038 = !DILocation(line: 145, column: 23, scope: !6928)
!7039 = !DILocation(line: 145, column: 30, scope: !6928)
!7040 = !DILocation(line: 145, column: 7, scope: !6928)
!7041 = !DILocation(line: 145, column: 21, scope: !6928)
!7042 = !DILocation(line: 146, column: 3, scope: !6928)
!7043 = !DILocation(line: 149, column: 19, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !6892, file: !9, line: 149, column: 6)
!7045 = !DILocation(line: 149, column: 6, scope: !7044)
!7046 = !DILocation(line: 149, column: 6, scope: !6892)
!7047 = !DILocation(line: 150, column: 3, scope: !7044)
!7048 = !DILocation(line: 152, column: 2, scope: !6892)
!7049 = !DILocation(line: 153, column: 1, scope: !6892)
!7050 = !DISubprogram(name: "dequeue_signal", scope: !5152, file: !5152, line: 278, type: !7051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7051 = !DISubroutineType(types: !7052)
!7052 = !{!50, !487, !307, !5436, !7053}
!7053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!7054 = !DISubprogram(name: "add_wait_queue", scope: !83, file: !83, line: 166, type: !7055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7055 = !DISubroutineType(types: !7056)
!7056 = !{null, !5955, !6776}
!7057 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7058, file: !7058, line: 94, type: !7059, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7064)
!7058 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7059 = !DISubroutineType(types: !7060)
!7060 = !{null, !7061, !63}
!7061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7062, size: 64)
!7062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7063)
!7063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7064 = !{!7065, !7066}
!7065 = !DILocalVariable(name: "v", arg: 1, scope: !7057, file: !7058, line: 94, type: !7061)
!7066 = !DILocalVariable(name: "size", arg: 2, scope: !7057, file: !7058, line: 94, type: !63)
!7067 = !DILocation(line: 94, column: 79, scope: !7057)
!7068 = !DILocation(line: 94, column: 89, scope: !7057)
!7069 = !DILocation(line: 96, column: 20, scope: !7057)
!7070 = !DILocation(line: 96, column: 23, scope: !7057)
!7071 = !DILocation(line: 96, column: 2, scope: !7057)
!7072 = !DILocation(line: 97, column: 2, scope: !7057)
!7073 = !DILocation(line: 98, column: 1, scope: !7057)
!7074 = distinct !DISubprogram(name: "signal_pending", scope: !5152, file: !5152, line: 392, type: !7075, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7077)
!7075 = !DISubroutineType(types: !7076)
!7076 = !{!50, !487}
!7077 = !{!7078}
!7078 = !DILocalVariable(name: "p", arg: 1, scope: !7074, file: !5152, line: 392, type: !487)
!7079 = !DILocation(line: 392, column: 54, scope: !7074)
!7080 = !DILocation(line: 399, column: 6, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !7074, file: !5152, line: 399, column: 6)
!7082 = !DILocation(line: 399, column: 6, scope: !7074)
!7083 = !DILocation(line: 400, column: 3, scope: !7081)
!7084 = !DILocation(line: 401, column: 25, scope: !7074)
!7085 = !DILocation(line: 401, column: 9, scope: !7074)
!7086 = !DILocation(line: 401, column: 2, scope: !7074)
!7087 = !DILocation(line: 402, column: 1, scope: !7074)
!7088 = !DISubprogram(name: "schedule", scope: !489, file: !489, line: 303, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7089 = !DISubprogram(name: "remove_wait_queue", scope: !83, file: !83, line: 169, type: !7055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7090 = distinct !DISubprogram(name: "kasan_check_write", scope: !7091, file: !7091, line: 44, type: !7092, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7094)
!7091 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7092 = !DISubroutineType(types: !7093)
!7093 = !{!1002, !7061, !19}
!7094 = !{!7095, !7096}
!7095 = !DILocalVariable(name: "p", arg: 1, scope: !7090, file: !7091, line: 44, type: !7061)
!7096 = !DILocalVariable(name: "size", arg: 2, scope: !7090, file: !7091, line: 44, type: !19)
!7097 = !DILocation(line: 44, column: 59, scope: !7090)
!7098 = !DILocation(line: 44, column: 75, scope: !7090)
!7099 = !DILocation(line: 46, column: 2, scope: !7090)
!7100 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7101, file: !7101, line: 229, type: !7102, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7104)
!7101 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7102 = !DISubroutineType(types: !7103)
!7103 = !{null, !7061, !63, !50}
!7104 = !{!7105, !7106, !7107}
!7105 = !DILocalVariable(name: "ptr", arg: 1, scope: !7100, file: !7101, line: 229, type: !7061)
!7106 = !DILocalVariable(name: "size", arg: 2, scope: !7100, file: !7101, line: 229, type: !63)
!7107 = !DILocalVariable(name: "type", arg: 3, scope: !7100, file: !7101, line: 230, type: !50)
!7108 = !DILocation(line: 229, column: 60, scope: !7100)
!7109 = !DILocation(line: 229, column: 72, scope: !7100)
!7110 = !DILocation(line: 230, column: 15, scope: !7100)
!7111 = !DILocation(line: 230, column: 23, scope: !7100)
!7112 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !489, file: !489, line: 2066, type: !7113, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7115)
!7113 = !DISubroutineType(types: !7114)
!7114 = !{!50, !487, !50}
!7115 = !{!7116, !7117}
!7116 = !DILocalVariable(name: "tsk", arg: 1, scope: !7112, file: !489, line: 2066, type: !487)
!7117 = !DILocalVariable(name: "flag", arg: 2, scope: !7112, file: !489, line: 2066, type: !50)
!7118 = !DILocation(line: 2066, column: 60, scope: !7112)
!7119 = !DILocation(line: 2066, column: 69, scope: !7112)
!7120 = !DILocation(line: 2068, column: 29, scope: !7112)
!7121 = !DILocation(line: 2068, column: 52, scope: !7112)
!7122 = !DILocation(line: 2068, column: 9, scope: !7112)
!7123 = !DILocation(line: 2068, column: 2, scope: !7112)
!7124 = distinct !DISubprogram(name: "task_sigpending", scope: !5152, file: !5152, line: 387, type: !7075, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7125)
!7125 = !{!7126}
!7126 = !DILocalVariable(name: "p", arg: 1, scope: !7124, file: !5152, line: 387, type: !487)
!7127 = !DILocation(line: 387, column: 55, scope: !7124)
!7128 = !DILocation(line: 389, column: 9, scope: !7124)
!7129 = !DILocation(line: 389, column: 2, scope: !7124)
!7130 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !2, file: !2, line: 116, type: !7131, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7134)
!7131 = !DISubroutineType(types: !7132)
!7132 = !{!50, !7133, !50}
!7133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!7134 = !{!7135, !7136}
!7135 = !DILocalVariable(name: "ti", arg: 1, scope: !7130, file: !2, line: 116, type: !7133)
!7136 = !DILocalVariable(name: "flag", arg: 2, scope: !7130, file: !2, line: 116, type: !50)
!7137 = !DILocation(line: 116, column: 59, scope: !7130)
!7138 = !DILocation(line: 116, column: 67, scope: !7130)
!7139 = !DILocation(line: 118, column: 9, scope: !7130)
!7140 = !DILocation(line: 118, column: 2, scope: !7130)
!7141 = distinct !DISubprogram(name: "const_test_bit", scope: !7142, file: !7142, line: 166, type: !7143, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7148)
!7142 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7143 = !DISubroutineType(types: !7144)
!7144 = !{!1002, !67, !7145}
!7145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7146, size: 64)
!7146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7147)
!7147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!7148 = !{!7149, !7150, !7151, !7152, !7153}
!7149 = !DILocalVariable(name: "nr", arg: 1, scope: !7141, file: !7142, line: 166, type: !67)
!7150 = !DILocalVariable(name: "addr", arg: 2, scope: !7141, file: !7142, line: 166, type: !7145)
!7151 = !DILocalVariable(name: "p", scope: !7141, file: !7142, line: 168, type: !352)
!7152 = !DILocalVariable(name: "mask", scope: !7141, file: !7142, line: 169, type: !67)
!7153 = !DILocalVariable(name: "val", scope: !7141, file: !7142, line: 170, type: !67)
!7154 = !DILocation(line: 166, column: 30, scope: !7141)
!7155 = !DILocation(line: 166, column: 64, scope: !7141)
!7156 = !DILocation(line: 168, column: 2, scope: !7141)
!7157 = !DILocation(line: 168, column: 23, scope: !7141)
!7158 = !DILocation(line: 168, column: 50, scope: !7141)
!7159 = !DILocation(line: 168, column: 57, scope: !7141)
!7160 = !DILocation(line: 168, column: 55, scope: !7141)
!7161 = !DILocation(line: 169, column: 2, scope: !7141)
!7162 = !DILocation(line: 169, column: 16, scope: !7141)
!7163 = !DILocation(line: 169, column: 23, scope: !7141)
!7164 = !DILocation(line: 170, column: 2, scope: !7141)
!7165 = !DILocation(line: 170, column: 16, scope: !7141)
!7166 = !DILocation(line: 170, column: 23, scope: !7141)
!7167 = !DILocation(line: 170, column: 22, scope: !7141)
!7168 = !DILocation(line: 172, column: 12, scope: !7141)
!7169 = !DILocation(line: 172, column: 18, scope: !7141)
!7170 = !DILocation(line: 172, column: 16, scope: !7141)
!7171 = !DILocation(line: 172, column: 10, scope: !7141)
!7172 = !DILocation(line: 172, column: 9, scope: !7141)
!7173 = !DILocation(line: 173, column: 1, scope: !7141)
!7174 = !DILocation(line: 172, column: 2, scope: !7141)
!7175 = distinct !DISubprogram(name: "_test_bit", scope: !7176, file: !7176, line: 139, type: !7143, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7177)
!7176 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7177 = !{!7178, !7179}
!7178 = !DILocalVariable(name: "nr", arg: 1, scope: !7175, file: !7176, line: 139, type: !67)
!7179 = !DILocalVariable(name: "addr", arg: 2, scope: !7175, file: !7176, line: 139, type: !7145)
!7180 = !DILocation(line: 139, column: 25, scope: !7175)
!7181 = !DILocation(line: 139, column: 59, scope: !7175)
!7182 = !DILocation(line: 141, column: 25, scope: !7175)
!7183 = !DILocation(line: 141, column: 32, scope: !7175)
!7184 = !DILocation(line: 141, column: 30, scope: !7175)
!7185 = !DILocation(line: 141, column: 2, scope: !7175)
!7186 = !DILocation(line: 142, column: 23, scope: !7175)
!7187 = !DILocation(line: 142, column: 27, scope: !7175)
!7188 = !DILocation(line: 142, column: 9, scope: !7175)
!7189 = !DILocation(line: 142, column: 2, scope: !7175)
!7190 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7058, file: !7058, line: 66, type: !7059, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7191)
!7191 = !{!7192, !7193}
!7192 = !DILocalVariable(name: "v", arg: 1, scope: !7190, file: !7058, line: 66, type: !7061)
!7193 = !DILocalVariable(name: "size", arg: 2, scope: !7190, file: !7058, line: 66, type: !63)
!7194 = !DILocation(line: 66, column: 73, scope: !7190)
!7195 = !DILocation(line: 66, column: 83, scope: !7190)
!7196 = !DILocation(line: 68, column: 19, scope: !7190)
!7197 = !DILocation(line: 68, column: 22, scope: !7190)
!7198 = !DILocation(line: 68, column: 2, scope: !7190)
!7199 = !DILocation(line: 69, column: 2, scope: !7190)
!7200 = !DILocation(line: 70, column: 1, scope: !7190)
!7201 = distinct !DISubprogram(name: "arch_test_bit", scope: !7202, file: !7202, line: 237, type: !7143, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7203)
!7202 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7203 = !{!7204, !7205}
!7204 = !DILocalVariable(name: "nr", arg: 1, scope: !7201, file: !7202, line: 237, type: !67)
!7205 = !DILocalVariable(name: "addr", arg: 2, scope: !7201, file: !7202, line: 237, type: !7145)
!7206 = !DILocation(line: 237, column: 29, scope: !7201)
!7207 = !DILocation(line: 237, column: 63, scope: !7201)
!7208 = !DILocation(line: 239, column: 30, scope: !7201)
!7209 = !DILocation(line: 239, column: 9, scope: !7201)
!7210 = !DILocation(line: 239, column: 54, scope: !7201)
!7211 = !DILocation(line: 239, column: 58, scope: !7201)
!7212 = !DILocation(line: 239, column: 36, scope: !7201)
!7213 = !DILocation(line: 240, column: 26, scope: !7201)
!7214 = !DILocation(line: 240, column: 30, scope: !7201)
!7215 = !DILocation(line: 240, column: 8, scope: !7201)
!7216 = !DILocation(line: 239, column: 2, scope: !7201)
!7217 = distinct !DISubprogram(name: "kasan_check_read", scope: !7091, file: !7091, line: 40, type: !7092, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7218)
!7218 = !{!7219, !7220}
!7219 = !DILocalVariable(name: "p", arg: 1, scope: !7217, file: !7091, line: 40, type: !7061)
!7220 = !DILocalVariable(name: "size", arg: 2, scope: !7217, file: !7091, line: 40, type: !19)
!7221 = !DILocation(line: 40, column: 58, scope: !7217)
!7222 = !DILocation(line: 40, column: 74, scope: !7217)
!7223 = !DILocation(line: 42, column: 2, scope: !7217)
!7224 = distinct !DISubprogram(name: "constant_test_bit", scope: !7202, file: !7202, line: 204, type: !7225, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7227)
!7225 = !DISubroutineType(types: !7226)
!7226 = !{!1002, !354, !7145}
!7227 = !{!7228, !7229}
!7228 = !DILocalVariable(name: "nr", arg: 1, scope: !7224, file: !7202, line: 204, type: !354)
!7229 = !DILocalVariable(name: "addr", arg: 2, scope: !7224, file: !7202, line: 204, type: !7145)
!7230 = !DILocation(line: 204, column: 52, scope: !7224)
!7231 = !DILocation(line: 204, column: 86, scope: !7224)
!7232 = !DILocation(line: 206, column: 19, scope: !7224)
!7233 = !DILocation(line: 206, column: 22, scope: !7224)
!7234 = !DILocation(line: 206, column: 15, scope: !7224)
!7235 = !DILocation(line: 207, column: 4, scope: !7224)
!7236 = !DILocation(line: 207, column: 9, scope: !7224)
!7237 = !DILocation(line: 207, column: 12, scope: !7224)
!7238 = !DILocation(line: 206, column: 44, scope: !7224)
!7239 = !DILocation(line: 207, column: 37, scope: !7224)
!7240 = !DILocation(line: 206, column: 2, scope: !7224)
!7241 = distinct !DISubprogram(name: "variable_test_bit", scope: !7202, file: !7202, line: 224, type: !7225, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7242)
!7242 = !{!7243, !7244, !7245}
!7243 = !DILocalVariable(name: "nr", arg: 1, scope: !7241, file: !7202, line: 224, type: !354)
!7244 = !DILocalVariable(name: "addr", arg: 2, scope: !7241, file: !7202, line: 224, type: !7145)
!7245 = !DILocalVariable(name: "oldbit", scope: !7241, file: !7202, line: 226, type: !1002)
!7246 = !DILocation(line: 224, column: 52, scope: !7241)
!7247 = !DILocation(line: 224, column: 86, scope: !7241)
!7248 = !DILocation(line: 226, column: 2, scope: !7241)
!7249 = !DILocation(line: 226, column: 7, scope: !7241)
!7250 = !DILocation(line: 231, column: 33, scope: !7241)
!7251 = !DILocation(line: 231, column: 46, scope: !7241)
!7252 = !DILocation(line: 228, column: 2, scope: !7241)
!7253 = !{i64 2148237133, i64 2148237207}
!7254 = !DILocation(line: 233, column: 9, scope: !7241)
!7255 = !DILocation(line: 234, column: 1, scope: !7241)
!7256 = !DILocation(line: 233, column: 2, scope: !7241)
!7257 = !DISubprogram(name: "siginfo_layout", scope: !289, file: !289, line: 53, type: !7258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7258 = !DISubroutineType(types: !7259)
!7259 = !{!288, !19, !50}
!7260 = distinct !DISubprogram(name: "copy_to_user", scope: !6086, file: !6086, line: 188, type: !6087, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7261)
!7261 = !{!7262, !7263, !7264}
!7262 = !DILocalVariable(name: "to", arg: 1, scope: !7260, file: !6086, line: 188, type: !48)
!7263 = !DILocalVariable(name: "from", arg: 2, scope: !7260, file: !6086, line: 188, type: !919)
!7264 = !DILocalVariable(name: "n", arg: 3, scope: !7260, file: !6086, line: 188, type: !67)
!7265 = !DILocation(line: 188, column: 27, scope: !7260)
!7266 = !DILocation(line: 188, column: 43, scope: !7260)
!7267 = !DILocation(line: 188, column: 63, scope: !7260)
!7268 = !DILocation(line: 190, column: 22, scope: !7269)
!7269 = distinct !DILexicalBlock(scope: !7260, file: !6086, line: 190, column: 6)
!7270 = !DILocation(line: 190, column: 28, scope: !7269)
!7271 = !DILocation(line: 190, column: 6, scope: !7269)
!7272 = !DILocation(line: 190, column: 6, scope: !7260)
!7273 = !DILocation(line: 191, column: 21, scope: !7269)
!7274 = !DILocation(line: 191, column: 25, scope: !7269)
!7275 = !DILocation(line: 191, column: 31, scope: !7269)
!7276 = !DILocation(line: 191, column: 7, scope: !7269)
!7277 = !DILocation(line: 191, column: 5, scope: !7269)
!7278 = !DILocation(line: 191, column: 3, scope: !7269)
!7279 = !DILocation(line: 192, column: 9, scope: !7260)
!7280 = !DILocation(line: 192, column: 2, scope: !7260)
!7281 = !DISubprogram(name: "_copy_to_user", scope: !6086, file: !6086, line: 176, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7282 = distinct !DISubprogram(name: "poll_wait", scope: !4462, file: !4462, line: 42, type: !7283, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7285)
!7283 = !DISubroutineType(types: !7284)
!7284 = !{null, !358, !4124, !6679}
!7285 = !{!7286, !7287, !7288}
!7286 = !DILocalVariable(name: "filp", arg: 1, scope: !7282, file: !4462, line: 42, type: !358)
!7287 = !DILocalVariable(name: "wait_address", arg: 2, scope: !7282, file: !4462, line: 42, type: !4124)
!7288 = !DILocalVariable(name: "p", arg: 3, scope: !7282, file: !4462, line: 42, type: !6679)
!7289 = !DILocation(line: 42, column: 44, scope: !7282)
!7290 = !DILocation(line: 42, column: 70, scope: !7282)
!7291 = !DILocation(line: 42, column: 96, scope: !7282)
!7292 = !DILocation(line: 44, column: 6, scope: !7293)
!7293 = distinct !DILexicalBlock(scope: !7282, file: !4462, line: 44, column: 6)
!7294 = !DILocation(line: 44, column: 8, scope: !7293)
!7295 = !DILocation(line: 44, column: 11, scope: !7293)
!7296 = !DILocation(line: 44, column: 14, scope: !7293)
!7297 = !DILocation(line: 44, column: 21, scope: !7293)
!7298 = !DILocation(line: 44, column: 24, scope: !7293)
!7299 = !DILocation(line: 44, column: 6, scope: !7282)
!7300 = !DILocation(line: 45, column: 3, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7293, file: !4462, line: 44, column: 38)
!7302 = !DILocation(line: 45, column: 6, scope: !7301)
!7303 = !DILocation(line: 45, column: 13, scope: !7301)
!7304 = !DILocation(line: 45, column: 19, scope: !7301)
!7305 = !DILocation(line: 45, column: 33, scope: !7301)
!7306 = !DILocation(line: 52, column: 3, scope: !7301)
!7307 = !DILocation(line: 52, column: 3, scope: !7308)
!7308 = distinct !DILexicalBlock(scope: !7301, file: !4462, line: 52, column: 3)
!7309 = !DILocation(line: 52, column: 3, scope: !7310)
!7310 = distinct !DILexicalBlock(scope: !7308, file: !4462, line: 52, column: 3)
!7311 = !{i64 2153380876}
!7312 = !DILocation(line: 53, column: 2, scope: !7301)
!7313 = !DILocation(line: 54, column: 1, scope: !7282)
!7314 = !DISubprogram(name: "next_signal", scope: !289, file: !289, line: 280, type: !7315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7315 = !DISubroutineType(types: !7316)
!7316 = !{!50, !7317, !307}
!7317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!7318 = !DISubprogram(name: "render_sigset_t", scope: !289, file: !289, line: 475, type: !7319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7319 = !DISubroutineType(types: !7320)
!7320 = !{null, !1579, !45, !307}
!7321 = distinct !DISubprogram(name: "__to_fd", scope: !6125, file: !6125, line: 57, type: !7322, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7324)
!7322 = !DISubroutineType(types: !7323)
!7323 = !{!6124, !67}
!7324 = !{!7325}
!7325 = !DILocalVariable(name: "v", arg: 1, scope: !7321, file: !6125, line: 57, type: !67)
!7326 = !DILocation(line: 57, column: 47, scope: !7321)
!7327 = !DILocation(line: 59, column: 20, scope: !7321)
!7328 = !DILocation(line: 59, column: 37, scope: !7321)
!7329 = !DILocation(line: 59, column: 39, scope: !7321)
!7330 = !DILocation(line: 59, column: 21, scope: !7321)
!7331 = !DILocation(line: 59, column: 45, scope: !7321)
!7332 = !DILocation(line: 59, column: 47, scope: !7321)
!7333 = !DILocation(line: 59, column: 2, scope: !7321)
!7334 = !DISubprogram(name: "__fdget", scope: !6125, file: !6125, line: 52, type: !7335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7335 = !DISubroutineType(types: !7336)
!7336 = !{!67, !19}
!7337 = !DISubprogram(name: "fput", scope: !6125, file: !6125, line: 17, type: !4522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7338 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !7339, file: !7339, line: 29, type: !7340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7339 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7340 = !DISubroutineType(types: !7341)
!7341 = !{null, !7342}
!7342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!7343 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !7339, file: !7339, line: 41, type: !7340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7344 = distinct !DISubprogram(name: "__do_sys_signalfd", scope: !9, file: !9, line: 314, type: !7345, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7347)
!7345 = !DISubroutineType(types: !7346)
!7346 = !{!354, !50, !307, !63}
!7347 = !{!7348, !7349, !7350, !7351}
!7348 = !DILocalVariable(name: "ufd", arg: 1, scope: !7344, file: !9, line: 314, type: !50)
!7349 = !DILocalVariable(name: "user_mask", arg: 2, scope: !7344, file: !9, line: 314, type: !307)
!7350 = !DILocalVariable(name: "sizemask", arg: 3, scope: !7344, file: !9, line: 314, type: !63)
!7351 = !DILocalVariable(name: "mask", scope: !7344, file: !9, line: 317, type: !308)
!7352 = !DILocation(line: 314, column: 1, scope: !7344)
!7353 = !DILocation(line: 317, column: 2, scope: !7344)
!7354 = !DILocation(line: 317, column: 11, scope: !7344)
!7355 = !DILocation(line: 319, column: 6, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !7344, file: !9, line: 319, column: 6)
!7357 = !DILocation(line: 319, column: 15, scope: !7356)
!7358 = !DILocation(line: 319, column: 6, scope: !7344)
!7359 = !DILocation(line: 320, column: 3, scope: !7356)
!7360 = !DILocation(line: 321, column: 28, scope: !7361)
!7361 = distinct !DILexicalBlock(scope: !7344, file: !9, line: 321, column: 6)
!7362 = !DILocation(line: 321, column: 6, scope: !7361)
!7363 = !DILocation(line: 321, column: 6, scope: !7344)
!7364 = !DILocation(line: 322, column: 3, scope: !7361)
!7365 = !DILocation(line: 323, column: 22, scope: !7344)
!7366 = !DILocation(line: 323, column: 9, scope: !7344)
!7367 = !DILocation(line: 323, column: 2, scope: !7344)
!7368 = !DILocation(line: 324, column: 1, scope: !7344)
!7369 = distinct !DISubprogram(name: "__do_compat_sys_signalfd4", scope: !9, file: !9, line: 340, type: !7370, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7372)
!7370 = !DISubroutineType(types: !7371)
!7371 = !{!354, !50, !5915, !5923, !50}
!7372 = !{!7373, !7374, !7375, !7376}
!7373 = !DILocalVariable(name: "ufd", arg: 1, scope: !7369, file: !9, line: 340, type: !50)
!7374 = !DILocalVariable(name: "user_mask", arg: 2, scope: !7369, file: !9, line: 340, type: !5915)
!7375 = !DILocalVariable(name: "sigsetsize", arg: 3, scope: !7369, file: !9, line: 340, type: !5923)
!7376 = !DILocalVariable(name: "flags", arg: 4, scope: !7369, file: !9, line: 340, type: !50)
!7377 = !DILocation(line: 340, column: 1, scope: !7369)
!7378 = !DILocation(line: 345, column: 29, scope: !7369)
!7379 = !DILocation(line: 345, column: 34, scope: !7369)
!7380 = !DILocation(line: 345, column: 45, scope: !7369)
!7381 = !DILocation(line: 345, column: 57, scope: !7369)
!7382 = !DILocation(line: 345, column: 9, scope: !7369)
!7383 = !DILocation(line: 345, column: 2, scope: !7369)
!7384 = distinct !DISubprogram(name: "do_compat_signalfd4", scope: !9, file: !9, line: 327, type: !7370, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7385)
!7385 = !{!7386, !7387, !7388, !7389, !7390}
!7386 = !DILocalVariable(name: "ufd", arg: 1, scope: !7384, file: !9, line: 327, type: !50)
!7387 = !DILocalVariable(name: "user_mask", arg: 2, scope: !7384, file: !9, line: 328, type: !5915)
!7388 = !DILocalVariable(name: "sigsetsize", arg: 3, scope: !7384, file: !9, line: 329, type: !5923)
!7389 = !DILocalVariable(name: "flags", arg: 4, scope: !7384, file: !9, line: 329, type: !50)
!7390 = !DILocalVariable(name: "mask", scope: !7384, file: !9, line: 331, type: !308)
!7391 = !DILocation(line: 327, column: 37, scope: !7384)
!7392 = !DILocation(line: 328, column: 34, scope: !7384)
!7393 = !DILocation(line: 329, column: 18, scope: !7384)
!7394 = !DILocation(line: 329, column: 34, scope: !7384)
!7395 = !DILocation(line: 331, column: 2, scope: !7384)
!7396 = !DILocation(line: 331, column: 11, scope: !7384)
!7397 = !DILocation(line: 333, column: 6, scope: !7398)
!7398 = distinct !DILexicalBlock(scope: !7384, file: !9, line: 333, column: 6)
!7399 = !DILocation(line: 333, column: 17, scope: !7398)
!7400 = !DILocation(line: 333, column: 6, scope: !7384)
!7401 = !DILocation(line: 334, column: 3, scope: !7398)
!7402 = !DILocation(line: 335, column: 31, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7384, file: !9, line: 335, column: 6)
!7404 = !DILocation(line: 335, column: 6, scope: !7403)
!7405 = !DILocation(line: 335, column: 6, scope: !7384)
!7406 = !DILocation(line: 336, column: 3, scope: !7403)
!7407 = !DILocation(line: 337, column: 22, scope: !7384)
!7408 = !DILocation(line: 337, column: 34, scope: !7384)
!7409 = !DILocation(line: 337, column: 9, scope: !7384)
!7410 = !DILocation(line: 337, column: 2, scope: !7384)
!7411 = !DILocation(line: 338, column: 1, scope: !7384)
!7412 = !DISubprogram(name: "get_compat_sigset", scope: !5542, file: !5542, line: 440, type: !7413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7413 = !DISubroutineType(types: !7414)
!7414 = !{!50, !307, !5915}
!7415 = distinct !DISubprogram(name: "__do_compat_sys_signalfd", scope: !9, file: !9, line: 348, type: !7416, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7418)
!7416 = !DISubroutineType(types: !7417)
!7417 = !{!354, !50, !5915, !5923}
!7418 = !{!7419, !7420, !7421}
!7419 = !DILocalVariable(name: "ufd", arg: 1, scope: !7415, file: !9, line: 348, type: !50)
!7420 = !DILocalVariable(name: "user_mask", arg: 2, scope: !7415, file: !9, line: 348, type: !5915)
!7421 = !DILocalVariable(name: "sigsetsize", arg: 3, scope: !7415, file: !9, line: 348, type: !5923)
!7422 = !DILocation(line: 348, column: 1, scope: !7415)
!7423 = !DILocation(line: 352, column: 29, scope: !7415)
!7424 = !DILocation(line: 352, column: 34, scope: !7415)
!7425 = !DILocation(line: 352, column: 45, scope: !7415)
!7426 = !DILocation(line: 352, column: 9, scope: !7415)
!7427 = !DILocation(line: 352, column: 2, scope: !7415)
