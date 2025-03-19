; ModuleID = 'kernel/kcmp.c'
source_filename = "kernel/kcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_kcmp__321_239_kcmp_cookies_init\22, \22a\22\09\09"
module asm "__initcall__kmod_kcmp__321_239_kcmp_cookies_init3:\09\09\09"
module asm ".long\09__initstub__kmod_kcmp__321_239_kcmp_cookies_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.lockdep_map = type {}
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
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
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kcmp_epoll_slot = type { i32, i32, i32 }

@__UNIQUE_ID___addressable___initstub__kmod_kcmp__321_239_kcmp_cookies_init3322 = internal global ptr @__initstub__kmod_kcmp__321_239_kcmp_cookies_init3, section ".discard.addressable", align 8, !dbg !0
@cookies = internal global [8 x [2 x i64]] zeroinitializer, section ".data..read_mostly", align 16, !dbg !292
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !298
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !304
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_kcmp__321_239_kcmp_cookies_init3322], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_kcmp(ptr noundef %regs) #0 align 16 !dbg !5853 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5860
  %1 = load i64, ptr %di, align 8, !dbg !5860
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5860
  %3 = load i64, ptr %si, align 8, !dbg !5860
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5860
  %5 = load i64, ptr %dx, align 8, !dbg !5860
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !5860
  %7 = load i64, ptr %r10, align 8, !dbg !5860
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !5860
  %9 = load i64, ptr %r8, align 8, !dbg !5860
  %call = call i64 @__se_sys_kcmp(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #11, !dbg !5860
  ret i64 %call, !dbg !5860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_kcmp(i64 noundef %pid1, i64 noundef %pid2, i64 noundef %type, i64 noundef %idx1, i64 noundef %idx2) #0 align 16 !dbg !5861 {
entry:
  %pid1.addr = alloca i64, align 8
  %pid2.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %idx1.addr = alloca i64, align 8
  %idx2.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %pid1, ptr %pid1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid1.addr, metadata !5865, metadata !DIExpression()), !dbg !5871
  store i64 %pid2, ptr %pid2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid2.addr, metadata !5866, metadata !DIExpression()), !dbg !5871
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5867, metadata !DIExpression()), !dbg !5871
  store i64 %idx1, ptr %idx1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx1.addr, metadata !5868, metadata !DIExpression()), !dbg !5871
  store i64 %idx2, ptr %idx2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx2.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load i64, ptr %pid1.addr, align 8, !dbg !5871
  %conv = trunc i64 %0 to i32, !dbg !5871
  %1 = load i64, ptr %pid2.addr, align 8, !dbg !5871
  %conv1 = trunc i64 %1 to i32, !dbg !5871
  %2 = load i64, ptr %type.addr, align 8, !dbg !5871
  %conv2 = trunc i64 %2 to i32, !dbg !5871
  %3 = load i64, ptr %idx1.addr, align 8, !dbg !5871
  %4 = load i64, ptr %idx2.addr, align 8, !dbg !5871
  %call = call i64 @__do_sys_kcmp(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i64 noundef %3, i64 noundef %4) #11, !dbg !5871
  store i64 %call, ptr %ret, align 8, !dbg !5871
  br label %do.body, !dbg !5871

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5872

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5872

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5871
  ret i64 %5, !dbg !5871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_kcmp(ptr noundef %regs) #0 align 16 !dbg !5874 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5877
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5877
  %1 = load i64, ptr %bx, align 8, !dbg !5877
  %conv = trunc i64 %1 to i32, !dbg !5877
  %conv1 = zext i32 %conv to i64, !dbg !5877
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5877
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5877
  %3 = load i64, ptr %cx, align 8, !dbg !5877
  %conv2 = trunc i64 %3 to i32, !dbg !5877
  %conv3 = zext i32 %conv2 to i64, !dbg !5877
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5877
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5877
  %5 = load i64, ptr %dx, align 8, !dbg !5877
  %conv4 = trunc i64 %5 to i32, !dbg !5877
  %conv5 = zext i32 %conv4 to i64, !dbg !5877
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5877
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !5877
  %7 = load i64, ptr %si, align 8, !dbg !5877
  %conv6 = trunc i64 %7 to i32, !dbg !5877
  %conv7 = zext i32 %conv6 to i64, !dbg !5877
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !5877
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !5877
  %9 = load i64, ptr %di, align 8, !dbg !5877
  %conv8 = trunc i64 %9 to i32, !dbg !5877
  %conv9 = zext i32 %conv8 to i64, !dbg !5877
  %call = call i64 @__se_sys_kcmp(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9) #11, !dbg !5877
  ret i64 %call, !dbg !5877
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_kcmp__321_239_kcmp_cookies_init3() #2 section ".init.text" align 16 !dbg !5878 {
entry:
  %call = call i32 @kcmp_cookies_init() #13, !dbg !5879
  ret i32 %call, !dbg !5879
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kcmp_cookies_init() #2 section ".init.text" align 16 !dbg !5880 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5882, metadata !DIExpression()), !dbg !5884
  call void @get_random_bytes(ptr noundef @cookies, i64 noundef 128) #11, !dbg !5885
  store i32 0, ptr %i, align 4, !dbg !5886
  br label %for.cond, !dbg !5888

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5889
  %cmp = icmp slt i32 %0, 8, !dbg !5891
  br i1 %cmp, label %for.body, label %for.end, !dbg !5892

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5893
  %idxprom = sext i32 %1 to i64, !dbg !5894
  %arrayidx = getelementptr [8 x [2 x i64]], ptr @cookies, i64 0, i64 %idxprom, !dbg !5894
  %arrayidx1 = getelementptr [2 x i64], ptr %arrayidx, i64 0, i64 1, !dbg !5894
  %2 = load i64, ptr %arrayidx1, align 8, !dbg !5895
  %or = or i64 %2, -9223372036854775807, !dbg !5895
  store i64 %or, ptr %arrayidx1, align 8, !dbg !5895
  br label %for.inc, !dbg !5894

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5896
  %inc = add i32 %3, 1, !dbg !5896
  store i32 %inc, ptr %i, align 4, !dbg !5896
  br label %for.cond, !dbg !5897, !llvm.loop !5898

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !5902
  ret i32 0, !dbg !5903
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_kcmp(i32 noundef %pid1, i32 noundef %pid2, i32 noundef %type, i64 noundef %idx1, i64 noundef %idx2) #4 align 16 !dbg !5904 {
entry:
  %retval = alloca i64, align 8
  %pid1.addr = alloca i32, align 4
  %pid2.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %idx1.addr = alloca i64, align 8
  %idx2.addr = alloca i64, align 8
  %task1 = alloca ptr, align 8
  %task2 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %filp1 = alloca ptr, align 8
  %filp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pid1, ptr %pid1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid1.addr, metadata !5908, metadata !DIExpression()), !dbg !5923
  store i32 %pid2, ptr %pid2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid2.addr, metadata !5909, metadata !DIExpression()), !dbg !5923
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5910, metadata !DIExpression()), !dbg !5923
  store i64 %idx1, ptr %idx1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx1.addr, metadata !5911, metadata !DIExpression()), !dbg !5923
  store i64 %idx2, ptr %idx2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx2.addr, metadata !5912, metadata !DIExpression()), !dbg !5923
  call void @llvm.lifetime.start.p0(i64 8, ptr %task1) #12, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %task1, metadata !5913, metadata !DIExpression()), !dbg !5925
  call void @llvm.lifetime.start.p0(i64 8, ptr %task2) #12, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %task2, metadata !5914, metadata !DIExpression()), !dbg !5926
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5915, metadata !DIExpression()), !dbg !5928
  call void @rcu_read_lock() #11, !dbg !5929
  %0 = load i32, ptr %pid1.addr, align 4, !dbg !5930
  %call = call ptr @find_task_by_vpid(i32 noundef %0) #11, !dbg !5931
  store ptr %call, ptr %task1, align 8, !dbg !5932
  %1 = load i32, ptr %pid2.addr, align 4, !dbg !5933
  %call1 = call ptr @find_task_by_vpid(i32 noundef %1) #11, !dbg !5934
  store ptr %call1, ptr %task2, align 8, !dbg !5935
  %2 = load ptr, ptr %task1, align 8, !dbg !5936
  %tobool = icmp ne ptr %2, null, !dbg !5936
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5938

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %task2, align 8, !dbg !5939
  %tobool2 = icmp ne ptr %3, null, !dbg !5939
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5940

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err_no_task, !dbg !5941

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %task1, align 8, !dbg !5942
  %call3 = call ptr @get_task_struct(ptr noundef %4) #11, !dbg !5943
  %5 = load ptr, ptr %task2, align 8, !dbg !5944
  %call4 = call ptr @get_task_struct(ptr noundef %5) #11, !dbg !5945
  call void @rcu_read_unlock() #11, !dbg !5946
  %6 = load ptr, ptr %task1, align 8, !dbg !5947
  %signal = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 104, !dbg !5948
  %7 = load ptr, ptr %signal, align 64, !dbg !5948
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 61, !dbg !5949
  %8 = load ptr, ptr %task2, align 8, !dbg !5950
  %signal5 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 104, !dbg !5951
  %9 = load ptr, ptr %signal5, align 64, !dbg !5951
  %exec_update_lock6 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 61, !dbg !5952
  %call7 = call i32 @kcmp_lock(ptr noundef %exec_update_lock, ptr noundef %exec_update_lock6) #11, !dbg !5953
  store i32 %call7, ptr %ret, align 4, !dbg !5954
  %10 = load i32, ptr %ret, align 4, !dbg !5955
  %tobool8 = icmp ne i32 %10, 0, !dbg !5955
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5957

if.then9:                                         ; preds = %if.end
  br label %err, !dbg !5958

if.end10:                                         ; preds = %if.end
  %11 = load ptr, ptr %task1, align 8, !dbg !5959
  %call11 = call zeroext i1 @ptrace_may_access(ptr noundef %11, i32 noundef 17) #11, !dbg !5961
  br i1 %call11, label %lor.lhs.false12, label %if.then14, !dbg !5962

lor.lhs.false12:                                  ; preds = %if.end10
  %12 = load ptr, ptr %task2, align 8, !dbg !5963
  %call13 = call zeroext i1 @ptrace_may_access(ptr noundef %12, i32 noundef 17) #11, !dbg !5964
  br i1 %call13, label %if.end15, label %if.then14, !dbg !5965

if.then14:                                        ; preds = %lor.lhs.false12, %if.end10
  store i32 -1, ptr %ret, align 4, !dbg !5966
  br label %err_unlock, !dbg !5968

if.end15:                                         ; preds = %lor.lhs.false12
  %13 = load i32, ptr %type.addr, align 4, !dbg !5969
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb27
    i32 3, label %sw.bb30
    i32 4, label %sw.bb33
    i32 5, label %sw.bb36
    i32 6, label %sw.bb39
    i32 7, label %sw.bb43
  ], !dbg !5970

sw.bb:                                            ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp1) #12, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %filp1, metadata !5916, metadata !DIExpression()), !dbg !5972
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp2) #12, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %filp2, metadata !5919, metadata !DIExpression()), !dbg !5973
  %14 = load ptr, ptr %task1, align 8, !dbg !5974
  %15 = load i64, ptr %idx1.addr, align 8, !dbg !5975
  %conv = trunc i64 %15 to i32, !dbg !5975
  %call16 = call ptr @get_file_raw_ptr(ptr noundef %14, i32 noundef %conv) #11, !dbg !5976
  store ptr %call16, ptr %filp1, align 8, !dbg !5977
  %16 = load ptr, ptr %task2, align 8, !dbg !5978
  %17 = load i64, ptr %idx2.addr, align 8, !dbg !5979
  %conv17 = trunc i64 %17 to i32, !dbg !5979
  %call18 = call ptr @get_file_raw_ptr(ptr noundef %16, i32 noundef %conv17) #11, !dbg !5980
  store ptr %call18, ptr %filp2, align 8, !dbg !5981
  %18 = load ptr, ptr %filp1, align 8, !dbg !5982
  %tobool19 = icmp ne ptr %18, null, !dbg !5982
  br i1 %tobool19, label %land.lhs.true, label %if.else, !dbg !5984

land.lhs.true:                                    ; preds = %sw.bb
  %19 = load ptr, ptr %filp2, align 8, !dbg !5985
  %tobool20 = icmp ne ptr %19, null, !dbg !5985
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5986

if.then21:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %filp1, align 8, !dbg !5987
  %21 = load ptr, ptr %filp2, align 8, !dbg !5988
  %call22 = call i32 @kcmp_ptr(ptr noundef %20, ptr noundef %21, i32 noundef 0) #11, !dbg !5989
  store i32 %call22, ptr %ret, align 4, !dbg !5990
  br label %if.end23, !dbg !5991

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  store i32 -9, ptr %ret, align 4, !dbg !5992
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp2) #12, !dbg !5993
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp1) #12, !dbg !5993
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15
  %22 = load ptr, ptr %task1, align 8, !dbg !5994
  %mm = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 49, !dbg !5995
  %23 = load ptr, ptr %mm, align 64, !dbg !5995
  %24 = load ptr, ptr %task2, align 8, !dbg !5996
  %mm25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 49, !dbg !5997
  %25 = load ptr, ptr %mm25, align 64, !dbg !5997
  %call26 = call i32 @kcmp_ptr(ptr noundef %23, ptr noundef %25, i32 noundef 1) #11, !dbg !5998
  store i32 %call26, ptr %ret, align 4, !dbg !5999
  br label %sw.epilog, !dbg !6000

sw.bb27:                                          ; preds = %if.end15
  %26 = load ptr, ptr %task1, align 8, !dbg !6001
  %files = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101, !dbg !6002
  %27 = load ptr, ptr %files, align 8, !dbg !6002
  %28 = load ptr, ptr %task2, align 8, !dbg !6003
  %files28 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101, !dbg !6004
  %29 = load ptr, ptr %files28, align 8, !dbg !6004
  %call29 = call i32 @kcmp_ptr(ptr noundef %27, ptr noundef %29, i32 noundef 2) #11, !dbg !6005
  store i32 %call29, ptr %ret, align 4, !dbg !6006
  br label %sw.epilog, !dbg !6007

sw.bb30:                                          ; preds = %if.end15
  %30 = load ptr, ptr %task1, align 8, !dbg !6008
  %fs = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 100, !dbg !6009
  %31 = load ptr, ptr %fs, align 32, !dbg !6009
  %32 = load ptr, ptr %task2, align 8, !dbg !6010
  %fs31 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 100, !dbg !6011
  %33 = load ptr, ptr %fs31, align 32, !dbg !6011
  %call32 = call i32 @kcmp_ptr(ptr noundef %31, ptr noundef %33, i32 noundef 3) #11, !dbg !6012
  store i32 %call32, ptr %ret, align 4, !dbg !6013
  br label %sw.epilog, !dbg !6014

sw.bb33:                                          ; preds = %if.end15
  %34 = load ptr, ptr %task1, align 8, !dbg !6015
  %sighand = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 105, !dbg !6016
  %35 = load ptr, ptr %sighand, align 8, !dbg !6016
  %36 = load ptr, ptr %task2, align 8, !dbg !6017
  %sighand34 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 105, !dbg !6018
  %37 = load ptr, ptr %sighand34, align 8, !dbg !6018
  %call35 = call i32 @kcmp_ptr(ptr noundef %35, ptr noundef %37, i32 noundef 4) #11, !dbg !6019
  store i32 %call35, ptr %ret, align 4, !dbg !6020
  br label %sw.epilog, !dbg !6021

sw.bb36:                                          ; preds = %if.end15
  %38 = load ptr, ptr %task1, align 8, !dbg !6022
  %io_context = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 131, !dbg !6023
  %39 = load ptr, ptr %io_context, align 64, !dbg !6023
  %40 = load ptr, ptr %task2, align 8, !dbg !6024
  %io_context37 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 131, !dbg !6025
  %41 = load ptr, ptr %io_context37, align 64, !dbg !6025
  %call38 = call i32 @kcmp_ptr(ptr noundef %39, ptr noundef %41, i32 noundef 5) #11, !dbg !6026
  store i32 %call38, ptr %ret, align 4, !dbg !6027
  br label %sw.epilog, !dbg !6028

sw.bb39:                                          ; preds = %if.end15
  %42 = load ptr, ptr %task1, align 8, !dbg !6029
  %sysvsem = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 98, !dbg !6030
  %undo_list = getelementptr inbounds %struct.sysv_sem, ptr %sysvsem, i32 0, i32 0, !dbg !6031
  %43 = load ptr, ptr %undo_list, align 8, !dbg !6031
  %44 = load ptr, ptr %task2, align 8, !dbg !6032
  %sysvsem40 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 98, !dbg !6033
  %undo_list41 = getelementptr inbounds %struct.sysv_sem, ptr %sysvsem40, i32 0, i32 0, !dbg !6034
  %45 = load ptr, ptr %undo_list41, align 8, !dbg !6034
  %call42 = call i32 @kcmp_ptr(ptr noundef %43, ptr noundef %45, i32 noundef 6) #11, !dbg !6035
  store i32 %call42, ptr %ret, align 4, !dbg !6036
  br label %sw.epilog, !dbg !6037

sw.bb43:                                          ; preds = %if.end15
  %46 = load ptr, ptr %task1, align 8, !dbg !6038
  %47 = load ptr, ptr %task2, align 8, !dbg !6039
  %48 = load i64, ptr %idx1.addr, align 8, !dbg !6040
  %49 = load i64, ptr %idx2.addr, align 8, !dbg !6041
  %50 = inttoptr i64 %49 to ptr, !dbg !6042
  %call44 = call i32 @kcmp_epoll_target(ptr noundef %46, ptr noundef %47, i64 noundef %48, ptr noundef %50) #11, !dbg !6043
  store i32 %call44, ptr %ret, align 4, !dbg !6044
  br label %sw.epilog, !dbg !6045

sw.default:                                       ; preds = %if.end15
  store i32 -22, ptr %ret, align 4, !dbg !6046
  br label %sw.epilog, !dbg !6047

sw.epilog:                                        ; preds = %sw.default, %sw.bb43, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb24, %if.end23
  br label %err_unlock, !dbg !6048

err_unlock:                                       ; preds = %sw.epilog, %if.then14
  call void @llvm.dbg.label(metadata !5920), !dbg !6049
  %51 = load ptr, ptr %task1, align 8, !dbg !6050
  %signal45 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 104, !dbg !6051
  %52 = load ptr, ptr %signal45, align 64, !dbg !6051
  %exec_update_lock46 = getelementptr inbounds %struct.signal_struct, ptr %52, i32 0, i32 61, !dbg !6052
  %53 = load ptr, ptr %task2, align 8, !dbg !6053
  %signal47 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 104, !dbg !6054
  %54 = load ptr, ptr %signal47, align 64, !dbg !6054
  %exec_update_lock48 = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 61, !dbg !6055
  call void @kcmp_unlock(ptr noundef %exec_update_lock46, ptr noundef %exec_update_lock48) #11, !dbg !6056
  br label %err, !dbg !6056

err:                                              ; preds = %err_unlock, %if.then9
  call void @llvm.dbg.label(metadata !5921), !dbg !6057
  %55 = load ptr, ptr %task1, align 8, !dbg !6058
  call void @put_task_struct(ptr noundef %55) #11, !dbg !6059
  %56 = load ptr, ptr %task2, align 8, !dbg !6060
  call void @put_task_struct(ptr noundef %56) #11, !dbg !6061
  %57 = load i32, ptr %ret, align 4, !dbg !6062
  %conv49 = sext i32 %57 to i64, !dbg !6062
  store i64 %conv49, ptr %retval, align 8, !dbg !6063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6063

err_no_task:                                      ; preds = %if.then
  call void @llvm.dbg.label(metadata !5922), !dbg !6064
  call void @rcu_read_unlock() #11, !dbg !6065
  store i64 -3, ptr %retval, align 8, !dbg !6066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6066

cleanup:                                          ; preds = %err_no_task, %err
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %task2) #12, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %task1) #12, !dbg !6067
  %58 = load i64, ptr %retval, align 8, !dbg !6067
  ret i64 %58, !dbg !6067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !6068 {
entry:
  call void @__rcu_read_lock() #11, !dbg !6070
  br label %do.body, !dbg !6071

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6072

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6074

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6075

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6078 dso_local ptr @find_task_by_vpid(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #4 align 16 !dbg !6081 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6087
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !6088
  call void @refcount_inc(ptr noundef %usage) #11, !dbg !6089
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6090
  ret ptr %1, !dbg !6091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !6092 {
entry:
  br label %do.body, !dbg !6093

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6094

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #11, !dbg !6096
  br label %do.body1, !dbg !6097

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6098

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6100
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kcmp_lock(ptr noundef %l1, ptr noundef %l2) #0 align 16 !dbg !6101 {
entry:
  %l1.addr = alloca ptr, align 8
  %l2.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  store ptr %l1, ptr %l1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l1.addr, metadata !6106, metadata !DIExpression()), !dbg !6112
  store ptr %l2, ptr %l2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l2.addr, metadata !6107, metadata !DIExpression()), !dbg !6113
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6108, metadata !DIExpression()), !dbg !6115
  %0 = load ptr, ptr %l2.addr, align 8, !dbg !6116
  %1 = load ptr, ptr %l1.addr, align 8, !dbg !6117
  %cmp = icmp ugt ptr %0, %1, !dbg !6118
  br i1 %cmp, label %if.then, label %if.end, !dbg !6119

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6120

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #12, !dbg !6121
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6109, metadata !DIExpression()), !dbg !6121
  %2 = load ptr, ptr %l1.addr, align 8, !dbg !6121
  store ptr %2, ptr %__tmp, align 8, !dbg !6121
  %3 = load ptr, ptr %l2.addr, align 8, !dbg !6121
  store ptr %3, ptr %l1.addr, align 8, !dbg !6121
  %4 = load ptr, ptr %__tmp, align 8, !dbg !6121
  store ptr %4, ptr %l2.addr, align 8, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #12, !dbg !6120
  br label %do.cond, !dbg !6121

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6121

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !6121

if.end:                                           ; preds = %do.end, %entry
  %5 = load ptr, ptr %l1.addr, align 8, !dbg !6122
  %call = call i32 @down_read_killable(ptr noundef %5) #11, !dbg !6123
  store i32 %call, ptr %err, align 4, !dbg !6124
  %6 = load i32, ptr %err, align 4, !dbg !6125
  %tobool = icmp ne i32 %6, 0, !dbg !6125
  br i1 %tobool, label %if.end9, label %land.lhs.true, !dbg !6127

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %l1.addr, align 8, !dbg !6128
  %8 = load ptr, ptr %l2.addr, align 8, !dbg !6128
  %cmp1 = icmp ne ptr %7, %8, !dbg !6128
  %lnot = xor i1 %cmp1, true, !dbg !6128
  %lnot2 = xor i1 %lnot, true, !dbg !6128
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6128
  %conv = sext i32 %lnot.ext to i64, !dbg !6128
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6128
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6128
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !6129

if.then4:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %l2.addr, align 8, !dbg !6130
  %call5 = call i32 @down_read_killable(ptr noundef %9) #11, !dbg !6130
  store i32 %call5, ptr %err, align 4, !dbg !6132
  %10 = load i32, ptr %err, align 4, !dbg !6133
  %tobool6 = icmp ne i32 %10, 0, !dbg !6133
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6135

if.then7:                                         ; preds = %if.then4
  %11 = load ptr, ptr %l1.addr, align 8, !dbg !6136
  call void @up_read(ptr noundef %11) #11, !dbg !6137
  br label %if.end8, !dbg !6137

if.end8:                                          ; preds = %if.then7, %if.then4
  br label %if.end9, !dbg !6138

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  %12 = load i32, ptr %err, align 4, !dbg !6139
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !6140
  ret i32 %12, !dbg !6141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6142 dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_file_raw_ptr(ptr noundef %task, i32 noundef %idx) #0 align 16 !dbg !6146 {
entry:
  %task.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6150, metadata !DIExpression()), !dbg !6153
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6151, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #12, !dbg !6155
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6152, metadata !DIExpression()), !dbg !6156
  call void @rcu_read_lock() #11, !dbg !6157
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6158
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6159
  %call = call ptr @task_lookup_fd_rcu(ptr noundef %0, i32 noundef %1) #11, !dbg !6160
  store ptr %call, ptr %file, align 8, !dbg !6161
  call void @rcu_read_unlock() #11, !dbg !6162
  %2 = load ptr, ptr %file, align 8, !dbg !6163
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #12, !dbg !6164
  ret ptr %2, !dbg !6165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kcmp_ptr(ptr noundef %v1, ptr noundef %v2, i32 noundef %type) #0 align 16 !dbg !6166 {
entry:
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store ptr %v1, ptr %v1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v1.addr, metadata !6170, metadata !DIExpression()), !dbg !6175
  store ptr %v2, ptr %v2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v2.addr, metadata !6171, metadata !DIExpression()), !dbg !6176
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6172, metadata !DIExpression()), !dbg !6177
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #12, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !6173, metadata !DIExpression()), !dbg !6179
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #12, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !6174, metadata !DIExpression()), !dbg !6180
  %0 = load ptr, ptr %v1.addr, align 8, !dbg !6181
  %1 = ptrtoint ptr %0 to i64, !dbg !6182
  %2 = load i32, ptr %type.addr, align 4, !dbg !6183
  %call = call i64 @kptr_obfuscate(i64 noundef %1, i32 noundef %2) #11, !dbg !6184
  store i64 %call, ptr %t1, align 8, !dbg !6185
  %3 = load ptr, ptr %v2.addr, align 8, !dbg !6186
  %4 = ptrtoint ptr %3 to i64, !dbg !6187
  %5 = load i32, ptr %type.addr, align 4, !dbg !6188
  %call1 = call i64 @kptr_obfuscate(i64 noundef %4, i32 noundef %5) #11, !dbg !6189
  store i64 %call1, ptr %t2, align 8, !dbg !6190
  %6 = load i64, ptr %t1, align 8, !dbg !6191
  %7 = load i64, ptr %t2, align 8, !dbg !6192
  %cmp = icmp slt i64 %6, %7, !dbg !6193
  %conv = zext i1 %cmp to i32, !dbg !6193
  %8 = load i64, ptr %t1, align 8, !dbg !6194
  %9 = load i64, ptr %t2, align 8, !dbg !6195
  %cmp2 = icmp sgt i64 %8, %9, !dbg !6196
  %conv3 = zext i1 %cmp2 to i32, !dbg !6196
  %shl = shl i32 %conv3, 1, !dbg !6197
  %or = or i32 %conv, %shl, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #12, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #12, !dbg !6199
  ret i32 %or, !dbg !6200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kcmp_epoll_target(ptr noundef %task1, ptr noundef %task2, i64 noundef %idx1, ptr noundef %uslot) #0 align 16 !dbg !6201 {
entry:
  %retval = alloca i32, align 4
  %task1.addr = alloca ptr, align 8
  %task2.addr = alloca ptr, align 8
  %idx1.addr = alloca i64, align 8
  %uslot.addr = alloca ptr, align 8
  %filp = alloca ptr, align 8
  %filp_epoll = alloca ptr, align 8
  %filp_tgt = alloca ptr, align 8
  %slot = alloca %struct.kcmp_epoll_slot, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task1, ptr %task1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task1.addr, metadata !6211, metadata !DIExpression()), !dbg !6219
  store ptr %task2, ptr %task2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task2.addr, metadata !6212, metadata !DIExpression()), !dbg !6220
  store i64 %idx1, ptr %idx1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idx1.addr, metadata !6213, metadata !DIExpression()), !dbg !6221
  store ptr %uslot, ptr %uslot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uslot.addr, metadata !6214, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp) #12, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %filp, metadata !6215, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp_epoll) #12, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %filp_epoll, metadata !6216, metadata !DIExpression()), !dbg !6225
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp_tgt) #12, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %filp_tgt, metadata !6217, metadata !DIExpression()), !dbg !6226
  call void @llvm.lifetime.start.p0(i64 12, ptr %slot) #12, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !6218, metadata !DIExpression()), !dbg !6228
  %0 = load ptr, ptr %uslot.addr, align 8, !dbg !6229
  %call = call i64 @copy_from_user(ptr noundef %slot, ptr noundef %0, i64 noundef 12) #11, !dbg !6231
  %tobool = icmp ne i64 %call, 0, !dbg !6231
  br i1 %tobool, label %if.then, label %if.end, !dbg !6232

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6233

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %task1.addr, align 8, !dbg !6234
  %2 = load i64, ptr %idx1.addr, align 8, !dbg !6235
  %conv = trunc i64 %2 to i32, !dbg !6235
  %call1 = call ptr @get_file_raw_ptr(ptr noundef %1, i32 noundef %conv) #11, !dbg !6236
  store ptr %call1, ptr %filp, align 8, !dbg !6237
  %3 = load ptr, ptr %filp, align 8, !dbg !6238
  %tobool2 = icmp ne ptr %3, null, !dbg !6238
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6240

if.then3:                                         ; preds = %if.end
  store i32 -9, ptr %retval, align 4, !dbg !6241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6241

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %task2.addr, align 8, !dbg !6242
  %efd = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %slot, i32 0, i32 0, !dbg !6243
  %5 = load i32, ptr %efd, align 4, !dbg !6243
  %call5 = call ptr @fget_task(ptr noundef %4, i32 noundef %5) #11, !dbg !6244
  store ptr %call5, ptr %filp_epoll, align 8, !dbg !6245
  %6 = load ptr, ptr %filp_epoll, align 8, !dbg !6246
  %tobool6 = icmp ne ptr %6, null, !dbg !6246
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6248

if.then7:                                         ; preds = %if.end4
  store i32 -9, ptr %retval, align 4, !dbg !6249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6249

if.end8:                                          ; preds = %if.end4
  %7 = load ptr, ptr %filp_epoll, align 8, !dbg !6250
  %tfd = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %slot, i32 0, i32 1, !dbg !6251
  %8 = load i32, ptr %tfd, align 4, !dbg !6251
  %toff = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %slot, i32 0, i32 2, !dbg !6252
  %9 = load i32, ptr %toff, align 4, !dbg !6252
  %conv9 = zext i32 %9 to i64, !dbg !6253
  %call10 = call ptr @get_epoll_tfile_raw_ptr(ptr noundef %7, i32 noundef %8, i64 noundef %conv9) #11, !dbg !6254
  store ptr %call10, ptr %filp_tgt, align 8, !dbg !6255
  %10 = load ptr, ptr %filp_epoll, align 8, !dbg !6256
  call void @fput(ptr noundef %10) #11, !dbg !6257
  %11 = load ptr, ptr %filp_tgt, align 8, !dbg !6258
  %call11 = call zeroext i1 @IS_ERR(ptr noundef %11) #11, !dbg !6260
  br i1 %call11, label %if.then12, label %if.end15, !dbg !6261

if.then12:                                        ; preds = %if.end8
  %12 = load ptr, ptr %filp_tgt, align 8, !dbg !6262
  %call13 = call i64 @PTR_ERR(ptr noundef %12) #11, !dbg !6263
  %conv14 = trunc i64 %call13 to i32, !dbg !6263
  store i32 %conv14, ptr %retval, align 4, !dbg !6264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end15:                                         ; preds = %if.end8
  %13 = load ptr, ptr %filp, align 8, !dbg !6265
  %14 = load ptr, ptr %filp_tgt, align 8, !dbg !6266
  %call16 = call i32 @kcmp_ptr(ptr noundef %13, ptr noundef %14, i32 noundef 0) #11, !dbg !6267
  store i32 %call16, ptr %retval, align 4, !dbg !6268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6268

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %slot) #12, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp_tgt) #12, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp_epoll) #12, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp) #12, !dbg !6269
  %15 = load i32, ptr %retval, align 4, !dbg !6269
  ret i32 %15, !dbg !6269
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcmp_unlock(ptr noundef %l1, ptr noundef %l2) #0 align 16 !dbg !6270 {
entry:
  %l1.addr = alloca ptr, align 8
  %l2.addr = alloca ptr, align 8
  store ptr %l1, ptr %l1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l1.addr, metadata !6274, metadata !DIExpression()), !dbg !6276
  store ptr %l2, ptr %l2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l2.addr, metadata !6275, metadata !DIExpression()), !dbg !6277
  %0 = load ptr, ptr %l2.addr, align 8, !dbg !6278
  %1 = load ptr, ptr %l1.addr, align 8, !dbg !6278
  %cmp = icmp ne ptr %0, %1, !dbg !6278
  %lnot = xor i1 %cmp, true, !dbg !6278
  %lnot1 = xor i1 %lnot, true, !dbg !6278
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6278
  %conv = sext i32 %lnot.ext to i64, !dbg !6278
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6278
  %tobool = icmp ne i64 %expval, 0, !dbg !6278
  br i1 %tobool, label %if.then, label %if.end, !dbg !6280

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %l2.addr, align 8, !dbg !6281
  call void @up_read(ptr noundef %2) #11, !dbg !6282
  br label %if.end, !dbg !6282

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %l1.addr, align 8, !dbg !6283
  call void @up_read(ptr noundef %3) #11, !dbg !6284
  ret void, !dbg !6285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #4 align 16 !dbg !306 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5843, metadata !DIExpression()), !dbg !6286
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6287
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !6289
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #11, !dbg !6290
  br i1 %call, label %if.end, label %if.then, !dbg !6291

if.then:                                          ; preds = %entry
  br label %return, !dbg !6292

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6293

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6296

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6298
  call void @__put_task_struct(ptr noundef %1) #11, !dbg !6299
  br label %do.body1, !dbg !6300

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6301

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !6303

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !6304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local void @__rcu_read_lock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !6306 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6311, metadata !DIExpression()), !dbg !6312
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6313
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #11, !dbg !6314
  ret void, !dbg !6315
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6316 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6320, metadata !DIExpression()), !dbg !6322
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6321, metadata !DIExpression()), !dbg !6323
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6324
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6325
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6326
  ret void, !dbg !6327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6328 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6332, metadata !DIExpression()), !dbg !6336
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6333, metadata !DIExpression()), !dbg !6337
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6334, metadata !DIExpression()), !dbg !6338
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6335, metadata !DIExpression()), !dbg !6340
  %0 = load i32, ptr %i.addr, align 4, !dbg !6341
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6342
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6343
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #11, !dbg !6344
  store i32 %call, ptr %old, align 4, !dbg !6340
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6345
  %tobool = icmp ne ptr %2, null, !dbg !6345
  br i1 %tobool, label %if.then, label %if.end, !dbg !6347

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6348
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6349
  store i32 %3, ptr %4, align 4, !dbg !6350
  br label %if.end, !dbg !6351

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6352
  %tobool1 = icmp ne i32 %5, 0, !dbg !6352
  %lnot = xor i1 %tobool1, true, !dbg !6352
  %lnot2 = xor i1 %lnot, true, !dbg !6352
  %lnot3 = xor i1 %lnot2, true, !dbg !6352
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6352
  %conv = sext i32 %lnot.ext to i64, !dbg !6352
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6352
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6352
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6354

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6355
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #11, !dbg !6356
  br label %if.end18, !dbg !6356

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6357
  %cmp = icmp slt i32 %7, 0, !dbg !6357
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6357

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6357
  %9 = load i32, ptr %i.addr, align 4, !dbg !6357
  %add = add i32 %8, %9, !dbg !6357
  %cmp7 = icmp slt i32 %add, 0, !dbg !6357
  br label %lor.end, !dbg !6357

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6357
  %lnot11 = xor i1 %lnot9, true, !dbg !6357
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6357
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6357
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6357
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6357
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6359

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6360
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #11, !dbg !6361
  br label %if.end17, !dbg !6361

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !6362
  ret void, !dbg !6362
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6363 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6369, metadata !DIExpression()), !dbg !6371
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6373
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6374
  %1 = load i32, ptr %i.addr, align 4, !dbg !6375
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6376
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #11, !dbg !6377
  ret i32 %call, !dbg !6378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6379 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6382 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6394
  %1 = load i64, ptr %size.addr, align 8, !dbg !6395
  %conv = trunc i64 %1 to i32, !dbg !6395
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6396
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6397
  %3 = load i64, ptr %size.addr, align 8, !dbg !6397
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6397
  ret void, !dbg !6398
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6399 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6402, metadata !DIExpression()), !dbg !6404
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6403, metadata !DIExpression()), !dbg !6405
  %0 = load i32, ptr %i.addr, align 4, !dbg !6406
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6407
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #11, !dbg !6408
  ret i32 %call, !dbg !6409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6410 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6415, metadata !DIExpression()), !dbg !6417
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6416, metadata !DIExpression()), !dbg !6418
  ret i1 true, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6420 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6425, metadata !DIExpression()), !dbg !6428
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6426, metadata !DIExpression()), !dbg !6429
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6427, metadata !DIExpression()), !dbg !6430
  ret void, !dbg !6431
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6432 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6435, metadata !DIExpression()), !dbg !6439
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6436, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6437, metadata !DIExpression()), !dbg !6441
  %0 = load i32, ptr %i.addr, align 4, !dbg !6441
  store i32 %0, ptr %__ret, align 4, !dbg !6441
  %1 = load i32, ptr %__ret, align 4, !dbg !6441
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6441
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6441
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !6441, !srcloc !6442
  store i32 %3, ptr %__ret, align 4, !dbg !6441
  %4 = load i32, ptr %__ret, align 4, !dbg !6441
  store i32 %4, ptr %tmp, align 4, !dbg !6441
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !6443
  %5 = load i32, ptr %tmp, align 4, !dbg !6441
  ret i32 %5, !dbg !6444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6445 dso_local void @__rcu_read_unlock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6446 dso_local i32 @down_read_killable(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6449 dso_local void @up_read(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6452 dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kptr_obfuscate(i64 noundef %v, i32 noundef %type) #0 align 16 !dbg !6453 {
entry:
  %v.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6457, metadata !DIExpression()), !dbg !6459
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  %0 = load i64, ptr %v.addr, align 8, !dbg !6461
  %1 = load i32, ptr %type.addr, align 4, !dbg !6462
  %idxprom = sext i32 %1 to i64, !dbg !6463
  %arrayidx = getelementptr [8 x [2 x i64]], ptr @cookies, i64 0, i64 %idxprom, !dbg !6463
  %arrayidx1 = getelementptr [2 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !6463
  %2 = load i64, ptr %arrayidx1, align 16, !dbg !6463
  %xor = xor i64 %0, %2, !dbg !6464
  %3 = load i32, ptr %type.addr, align 4, !dbg !6465
  %idxprom2 = sext i32 %3 to i64, !dbg !6466
  %arrayidx3 = getelementptr [8 x [2 x i64]], ptr @cookies, i64 0, i64 %idxprom2, !dbg !6466
  %arrayidx4 = getelementptr [2 x i64], ptr %arrayidx3, i64 0, i64 1, !dbg !6466
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !6466
  %mul = mul i64 %xor, %4, !dbg !6467
  ret i64 %mul, !dbg !6468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !6469 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6474, metadata !DIExpression()), !dbg !6477
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6475, metadata !DIExpression()), !dbg !6478
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6476, metadata !DIExpression()), !dbg !6479
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6480
  %1 = load i64, ptr %n.addr, align 8, !dbg !6482
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #11, !dbg !6483
  br i1 %call, label %if.then, label %if.end, !dbg !6484

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6485
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6486
  %4 = load i64, ptr %n.addr, align 8, !dbg !6487
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #11, !dbg !6488
  store i64 %call1, ptr %n.addr, align 8, !dbg !6489
  br label %if.end, !dbg !6490

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6491
  ret i64 %5, !dbg !6492
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6493 dso_local ptr @fget_task(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6495 dso_local ptr @get_epoll_tfile_raw_ptr(ptr noundef, i32 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6499 dso_local void @fput(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6500 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6507
  %1 = ptrtoint ptr %0 to i64, !dbg !6507
  %2 = inttoptr i64 %1 to ptr, !dbg !6507
  %3 = ptrtoint ptr %2 to i64, !dbg !6507
  %cmp = icmp uge i64 %3, -4095, !dbg !6507
  %lnot = xor i1 %cmp, true, !dbg !6507
  %lnot1 = xor i1 %lnot, true, !dbg !6507
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6507
  %conv = sext i32 %lnot.ext to i64, !dbg !6507
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6507
  %tobool = icmp ne i64 %expval, 0, !dbg !6507
  ret i1 %tobool, !dbg !6508
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6509 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6515
  %1 = ptrtoint ptr %0 to i64, !dbg !6516
  ret i64 %1, !dbg !6517
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6518 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6522, metadata !DIExpression()), !dbg !6532
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6523, metadata !DIExpression()), !dbg !6533
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6524, metadata !DIExpression()), !dbg !6534
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6525, metadata !DIExpression()), !dbg !6536
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6537
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6538
  %conv = trunc i64 %1 to i32, !dbg !6538
  store i32 %conv, ptr %sz, align 4, !dbg !6536
  %2 = load i32, ptr %sz, align 4, !dbg !6539
  %cmp = icmp sge i32 %2, 0, !dbg !6539
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6539

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6539
  %conv2 = sext i32 %3 to i64, !dbg !6539
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6539
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6539
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6541
  %lnot = xor i1 %5, true, !dbg !6539
  %lnot5 = xor i1 %lnot, true, !dbg !6539
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6539
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6539
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6539
  %tobool = icmp ne i64 %expval, 0, !dbg !6539
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6542

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6543
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6546
  br i1 %7, label %if.else, label %if.then7, !dbg !6547

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6548
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6549
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #11, !dbg !6550
  br label %if.end11, !dbg !6550

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6551, !range !6553, !noundef !647
  %tobool8 = trunc i8 %10 to i1, !dbg !6551
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6554

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #11, !dbg !6555, !srcloc !6556
  br label %if.end, !dbg !6555

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #11, !dbg !6557, !srcloc !6558
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6559

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6526, metadata !DIExpression()), !dbg !6560
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6560
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6560
  %lnot15 = xor i1 %cmp13, true, !dbg !6560
  %lnot17 = xor i1 %lnot15, true, !dbg !6560
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6560
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6560
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6561
  %tobool19 = icmp ne i32 %12, 0, !dbg !6561
  %lnot20 = xor i1 %tobool19, true, !dbg !6561
  %lnot22 = xor i1 %lnot20, true, !dbg !6561
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6561
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6561
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6561
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6561
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6560

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6561

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6529, metadata !DIExpression()), !dbg !6562
  store i32 2307, ptr %__flags, align 4, !dbg !6562
  br label %do.body28, !dbg !6562

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6563

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6563

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6562

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6565
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #12, !dbg !6565, !srcloc !6567
  br label %do.cond30, !dbg !6565

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6565

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6562

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6568

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6568

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6561
  br label %do.cond35, !dbg !6562

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6562

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6562

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6560
  %tobool38 = icmp ne i32 %14, 0, !dbg !6560
  %lnot39 = xor i1 %tobool38, true, !dbg !6560
  %lnot41 = xor i1 %lnot39, true, !dbg !6560
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6560
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6560
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6560
  store i64 %expval44, ptr %tmp, align 8, !dbg !6561
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6570
  %15 = load i64, ptr %tmp, align 8, !dbg !6560
  %tobool45 = icmp ne i64 %15, 0, !dbg !6570
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6571

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6572

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6573
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6574
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6575, !range !6553, !noundef !647
  %tobool48 = trunc i8 %18 to i1, !dbg !6575
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #11, !dbg !6576
  store i1 true, ptr %retval, align 1, !dbg !6577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6577

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !6578
  %19 = load i1, ptr %retval, align 1, !dbg !6578
  ret i1 %19, !dbg !6578
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !6580 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6584, metadata !DIExpression()), !dbg !6586
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  %0 = load i32, ptr %size.addr, align 4, !dbg !6588
  %1 = load i64, ptr %count.addr, align 8, !dbg !6590
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #11, !dbg !6591
  ret void, !dbg !6592
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6593 dso_local void @__bad_copy_from() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6594 dso_local void @__bad_copy_to() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !6595 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6599, metadata !DIExpression()), !dbg !6602
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6600, metadata !DIExpression()), !dbg !6603
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6601, metadata !DIExpression()), !dbg !6604
  ret void, !dbg !6605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6606 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !6607 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6611, metadata !DIExpression()), !dbg !6612
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6613
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #11, !dbg !6614
  ret i1 %call, !dbg !6615
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6616 dso_local void @__put_task_struct(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6617 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6621, metadata !DIExpression()), !dbg !6623
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6622, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6625
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6626
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #11, !dbg !6627
  ret i1 %call, !dbg !6628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6629 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6633, metadata !DIExpression()), !dbg !6637
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6634, metadata !DIExpression()), !dbg !6638
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6635, metadata !DIExpression()), !dbg !6639
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6636, metadata !DIExpression()), !dbg !6641
  %0 = load i32, ptr %i.addr, align 4, !dbg !6642
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6643
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6644
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #11, !dbg !6645
  store i32 %call, ptr %old, align 4, !dbg !6641
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6646
  %tobool = icmp ne ptr %2, null, !dbg !6646
  br i1 %tobool, label %if.then, label %if.end, !dbg !6648

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6649
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6650
  store i32 %3, ptr %4, align 4, !dbg !6651
  br label %if.end, !dbg !6652

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6653
  %6 = load i32, ptr %i.addr, align 4, !dbg !6655
  %cmp = icmp eq i32 %5, %6, !dbg !6656
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6657

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6658

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6660

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6662

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6662

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6660

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6664

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6666

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6666

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6664, !srcloc !6668
  br label %do.cond7, !dbg !6664

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6664

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6660

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6660

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6670
  %cmp12 = icmp slt i32 %7, 0, !dbg !6670
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6670

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6670
  %9 = load i32, ptr %i.addr, align 4, !dbg !6670
  %sub = sub i32 %8, %9, !dbg !6670
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6670
  br label %lor.end, !dbg !6670

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6670
  %lnot14 = xor i1 %lnot, true, !dbg !6670
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6670
  %conv = sext i32 %lnot.ext to i64, !dbg !6670
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6670
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6670
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6672

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6673
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #11, !dbg !6674
  br label %if.end17, !dbg !6674

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6675

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !6676
  %12 = load i1, ptr %retval, align 1, !dbg !6676
  ret i1 %12, !dbg !6676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6677 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6679, metadata !DIExpression()), !dbg !6681
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6680, metadata !DIExpression()), !dbg !6682
  br label %do.body, !dbg !6683

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6686
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6687
  %1 = load i32, ptr %i.addr, align 4, !dbg !6688
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6689
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #11, !dbg !6690
  ret i32 %call, !dbg !6691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6692 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6694, metadata !DIExpression()), !dbg !6696
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6695, metadata !DIExpression()), !dbg !6697
  %0 = load i32, ptr %i.addr, align 4, !dbg !6698
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6699
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #11, !dbg !6700
  ret i32 %call, !dbg !6701
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6702 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6704, metadata !DIExpression()), !dbg !6708
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6705, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6706, metadata !DIExpression()), !dbg !6710
  %0 = load i32, ptr %i.addr, align 4, !dbg !6710
  %sub = sub i32 0, %0, !dbg !6710
  store i32 %sub, ptr %__ret, align 4, !dbg !6710
  %1 = load i32, ptr %__ret, align 4, !dbg !6710
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6710
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6710
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !6710, !srcloc !6711
  store i32 %3, ptr %__ret, align 4, !dbg !6710
  %4 = load i32, ptr %__ret, align 4, !dbg !6710
  store i32 %4, ptr %tmp, align 4, !dbg !6710
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !6712
  %5 = load i32, ptr %tmp, align 4, !dbg !6710
  ret i32 %5, !dbg !6713
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6714 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851}
!llvm.ident = !{!5852}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_kcmp__321_239_kcmp_cookies_init3322", scope: !2, file: !3, line: 239, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.kcmp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/kcmp\22 -D KBUILD_BASENAME=\22kcmp\22 -D KBUILD_MODNAME=\22kcmp\22 -D __KBUILD_MODNAME=kmod_kcmp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/kcmp.ll kernel/kcmp.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !287, globals: !291, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/kcmp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a11685a348d844b7d8face02f2d1d66e")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !153, !159, !170, !176, !182, !189, !197, !204, !213, !218, !223, !229, !238, !243, !249, !255, !262, !274, !282}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !147, line: 15, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!151 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!152 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !154, line: 26, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!157 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!158 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !160, line: 253, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!163 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!164 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!165 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!166 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!167 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!168 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !160, line: 158, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!173 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!174 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!175 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !177, line: 45, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!180 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!181 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !183, line: 487, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!184 = !{!185, !186, !187, !188}
!185 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!186 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!187 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!188 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !190, line: 620, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!193 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!194 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!195 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!196 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !190, line: 597, baseType: !22, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!200 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!201 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!202 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!203 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !183, line: 547, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212}
!206 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!207 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!208 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!209 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!210 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!211 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!212 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !183, line: 564, baseType: !7, size: 32, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!216 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!217 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !183, line: 577, baseType: !7, size: 32, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!221 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!222 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !183, line: 503, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!227 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!228 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !230, line: 593, baseType: !22, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!233 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!234 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!235 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!236 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !239, line: 2052, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!240 = !{!241, !242}
!241 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!242 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !244, line: 54, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "USRQUOTA", value: 0)
!247 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!248 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !250, line: 16, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "TT_NONE", value: 0)
!253 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!254 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !256, line: 51, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!257 = !{!258, !259, !260, !261}
!258 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!259 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!260 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!261 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kcmp_type", file: !263, line: 8, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/uapi/linux/kcmp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c81dd346c00571b03bbe23cb69fdcdde")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273}
!265 = !DIEnumerator(name: "KCMP_FILE", value: 0)
!266 = !DIEnumerator(name: "KCMP_VM", value: 1)
!267 = !DIEnumerator(name: "KCMP_FILES", value: 2)
!268 = !DIEnumerator(name: "KCMP_FS", value: 3)
!269 = !DIEnumerator(name: "KCMP_SIGHAND", value: 4)
!270 = !DIEnumerator(name: "KCMP_IO", value: 5)
!271 = !DIEnumerator(name: "KCMP_SYSVSEM", value: 6)
!272 = !DIEnumerator(name: "KCMP_EPOLL_TFD", value: 7)
!273 = !DIEnumerator(name: "KCMP_TYPES", value: 8)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !275, line: 119, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!278 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!279 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!280 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!281 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !283, line: 10, baseType: !7, size: 32, elements: !284)
!283 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!284 = !{!285, !286}
!285 = !DIEnumerator(name: "false", value: 0)
!286 = !DIEnumerator(name: "true", value: 1)
!287 = !{!7, !20, !288, !22, !39, !290}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!290 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!291 = !{!0, !292, !298, !304}
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "cookies", scope: !2, file: !3, line: 37, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !295)
!295 = !{!296, !297}
!296 = !DISubrange(count: 8)
!297 = !DISubrange(count: 2)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !300, line: 249, type: !301, isLocal: true, isDefinition: true)
!300 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 28)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "put_task_map", scope: !306, file: !307, line: 134, type: !2525, isLocal: true, isDefinition: true)
!306 = distinct !DISubprogram(name: "put_task_struct", scope: !307, file: !307, line: 124, type: !308, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5842)
!307 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !312, line: 746, size: 58368, elements: !313)
!312 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!313 = !{!314, !324, !325, !326, !331, !332, !333, !334, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !417, !428, !528, !532, !535, !566, !567, !568, !569, !580, !582, !583, !584, !585, !586, !587, !598, !599, !602, !603, !604, !605, !606, !607, !608, !609, !616, !617, !624, !625, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5025, !5031, !5032, !5033, !5034, !5035, !5037, !5040, !5047, !5052, !5055, !5082, !5085, !5117, !5315, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5353, !5354, !5355, !5364, !5372, !5373, !5374, !5375, !5376, !5381, !5382, !5383, !5386, !5387, !5390, !5393, !5396, !5404, !5407, !5408, !5494, !5495, !5496, !5497, !5498, !5504, !5505, !5506, !5507, !5508, !5509, !5513, !5516, !5517, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5560, !5561, !5567, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5579, !5651, !5653, !5654, !5655, !5656, !5657, !5658, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5675, !5676, !5677}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !311, file: !312, line: 752, baseType: !315, size: 192)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !316, line: 56, size: 192, elements: !317)
!316 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!317 = !{!318, !319, !320, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !316, line: 57, baseType: !39, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !315, file: !316, line: 58, baseType: !39, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !315, file: !316, line: 59, baseType: !321, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !315, file: !316, line: 61, baseType: !321, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !311, file: !312, line: 754, baseType: !7, size: 32, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !311, file: !312, line: 767, baseType: !20, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !311, file: !312, line: 768, baseType: !327, size: 32, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !275, line: 113, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !275, line: 111, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !328, file: !275, line: 112, baseType: !49, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 770, baseType: !7, size: 32, offset: 352)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !311, file: !312, line: 771, baseType: !7, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !311, file: !312, line: 774, baseType: !22, size: 32, offset: 416)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !311, file: !312, line: 775, baseType: !335, size: 128, offset: 448)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !336, line: 58, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!337 = !{!338, !344, !349, !350}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !335, file: !336, line: 59, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !340, line: 60, size: 64, elements: !341)
!340 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !340, line: 61, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 60, baseType: !345, size: 32, offset: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 60, size: 32, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !345, file: !336, line: 61, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !345, file: !336, line: 62, baseType: !49, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !335, file: !336, line: 65, baseType: !93, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !335, file: !336, line: 65, baseType: !93, size: 16, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !311, file: !312, line: 776, baseType: !7, size: 32, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !311, file: !312, line: 777, baseType: !39, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !311, file: !312, line: 778, baseType: !310, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !311, file: !312, line: 787, baseType: !22, size: 32, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !311, file: !312, line: 788, baseType: !22, size: 32, offset: 800)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !311, file: !312, line: 790, baseType: !22, size: 32, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !311, file: !312, line: 792, baseType: !22, size: 32, offset: 864)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !311, file: !312, line: 793, baseType: !22, size: 32, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !311, file: !312, line: 794, baseType: !22, size: 32, offset: 928)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !311, file: !312, line: 795, baseType: !7, size: 32, offset: 960)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !311, file: !312, line: 797, baseType: !362, size: 2048, offset: 1024)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !312, line: 551, size: 2048, elements: !363)
!363 = !{!364, !369, !377, !381, !382, !383, !384, !385, !386, !387, !388, !391, !392, !393, !394, !396, !399, !400, !401}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !362, file: !312, line: 553, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !312, line: 411, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !365, file: !312, line: 412, baseType: !39, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !365, file: !312, line: 413, baseType: !321, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !362, file: !312, line: 554, baseType: !370, size: 192, align: 64, offset: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !371, line: 5, size: 192, align: 64, elements: !372)
!371 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!372 = !{!373, !374, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !370, file: !371, line: 6, baseType: !39, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !370, file: !371, line: 7, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !370, file: !371, line: 8, baseType: !375, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !362, file: !312, line: 555, baseType: !378, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !380)
!380 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !362, file: !312, line: 556, baseType: !378, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !362, file: !312, line: 558, baseType: !97, size: 128, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !362, file: !312, line: 559, baseType: !7, size: 32, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !362, file: !312, line: 561, baseType: !378, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !362, file: !312, line: 562, baseType: !378, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !362, file: !312, line: 563, baseType: !378, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !362, file: !312, line: 564, baseType: !378, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !362, file: !312, line: 565, baseType: !389, size: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !362, file: !312, line: 566, baseType: !378, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !362, file: !312, line: 568, baseType: !378, size: 64, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !362, file: !312, line: 571, baseType: !22, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !362, file: !312, line: 572, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !362, file: !312, line: 574, baseType: !397, size: 64, offset: 1216)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !312, line: 49, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !362, file: !312, line: 576, baseType: !397, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !362, file: !312, line: 578, baseType: !39, size: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !362, file: !312, line: 588, baseType: !402, size: 512, align: 512, offset: 1536)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !312, line: 497, size: 512, align: 512, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !402, file: !312, line: 498, baseType: !378, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !402, file: !312, line: 499, baseType: !378, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !402, file: !312, line: 500, baseType: !378, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !402, file: !312, line: 501, baseType: !321, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !402, file: !312, line: 502, baseType: !321, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !402, file: !312, line: 503, baseType: !39, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !402, file: !312, line: 504, baseType: !39, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !402, file: !312, line: 505, baseType: !39, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !402, file: !312, line: 506, baseType: !413, size: 64, align: 64, offset: 448)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !312, line: 445, size: 64, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !413, file: !312, line: 446, baseType: !7, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !413, file: !312, line: 447, baseType: !7, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !311, file: !312, line: 798, baseType: !418, size: 384, offset: 3072)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !312, line: 592, size: 384, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !418, file: !312, line: 593, baseType: !97, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !418, file: !312, line: 594, baseType: !39, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !418, file: !312, line: 595, baseType: !39, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !418, file: !312, line: 596, baseType: !7, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !418, file: !312, line: 597, baseType: !26, size: 16, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !418, file: !312, line: 598, baseType: !26, size: 16, offset: 304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !418, file: !312, line: 600, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !311, file: !312, line: 799, baseType: !429, size: 1792, offset: 3456)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !312, line: 610, size: 1792, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !525, !526}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !429, file: !312, line: 611, baseType: !370, size: 192, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !429, file: !312, line: 618, baseType: !378, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !429, file: !312, line: 619, baseType: !378, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !429, file: !312, line: 620, baseType: !378, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !429, file: !312, line: 621, baseType: !378, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !429, file: !312, line: 622, baseType: !378, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !429, file: !312, line: 629, baseType: !389, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !429, file: !312, line: 630, baseType: !378, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !312, line: 631, baseType: !7, size: 32, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !429, file: !312, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !429, file: !312, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !429, file: !312, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !429, file: !312, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !429, file: !312, line: 662, baseType: !445, size: 512, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !446)
!446 = !{!447, !455, !456, !461, !521, !522, !523, !524}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !6, line: 119, baseType: !448, size: 256)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !449, line: 9, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !449, line: 10, baseType: !370, size: 192, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !448, file: !449, line: 11, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !454, line: 29, baseType: !389)
!454 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !445, file: !6, line: 120, baseType: !453, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !445, file: !6, line: 121, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!5, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !445, file: !6, line: 122, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !464)
!464 = !{!465, !490, !491, !494, !504, !505, !516, !520}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !463, file: !6, line: 160, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !468)
!468 = !{!469, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !6, line: 216, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !467, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !467, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !467, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !467, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !467, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !467, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !467, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !467, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !467, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !467, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !467, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !467, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !467, file: !6, line: 235, baseType: !453, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !467, file: !6, line: 236, baseType: !460, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !467, file: !6, line: 237, baseType: !453, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !467, file: !6, line: 238, baseType: !460, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !467, file: !6, line: 239, baseType: !488, size: 4096, align: 512, offset: 512)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 4096, align: 512, elements: !489)
!489 = !{!296}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !463, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !463, file: !6, line: 162, baseType: !492, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !463, file: !6, line: 163, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !496, line: 274, baseType: !497)
!496 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !496, line: 274, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !497, file: !496, line: 274, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !496, line: 69, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !496, line: 64, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !501, file: !496, line: 65, baseType: !7, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !463, file: !6, line: 164, baseType: !460, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !463, file: !6, line: 165, baseType: !506, size: 128, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !449, line: 14, size: 128, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !506, file: !449, line: 15, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !371, line: 26, size: 128, elements: !510)
!510 = !{!511, !515}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !509, file: !371, line: 27, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !371, line: 12, size: 64, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !512, file: !371, line: 13, baseType: !375, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !509, file: !371, line: 28, baseType: !375, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !463, file: !6, line: 166, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!453}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !463, file: !6, line: 167, baseType: !453, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !445, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !445, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !445, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !445, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !429, file: !312, line: 671, baseType: !445, size: 512, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !429, file: !312, line: 679, baseType: !527, size: 64, offset: 1728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !311, file: !312, line: 800, baseType: !529, size: 64, offset: 5248)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !312, line: 800, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !311, file: !312, line: 809, baseType: !533, size: 64, offset: 5312)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !312, line: 70, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !311, file: !312, line: 825, baseType: !536, size: 2048, align: 512, offset: 5632)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !312, line: 509, size: 2048, align: 512, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !536, file: !312, line: 511, baseType: !378, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !536, file: !312, line: 512, baseType: !378, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !536, file: !312, line: 513, baseType: !378, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !536, file: !312, line: 514, baseType: !378, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !536, file: !312, line: 515, baseType: !378, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !536, file: !312, line: 516, baseType: !378, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !536, file: !312, line: 518, baseType: !378, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !536, file: !312, line: 519, baseType: !378, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !536, file: !312, line: 520, baseType: !389, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !536, file: !312, line: 522, baseType: !378, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !536, file: !312, line: 523, baseType: !378, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !536, file: !312, line: 524, baseType: !389, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !536, file: !312, line: 526, baseType: !389, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !536, file: !312, line: 527, baseType: !378, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !536, file: !312, line: 529, baseType: !378, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !536, file: !312, line: 530, baseType: !378, size: 64, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !536, file: !312, line: 531, baseType: !378, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !536, file: !312, line: 532, baseType: !378, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !536, file: !312, line: 533, baseType: !378, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !536, file: !312, line: 535, baseType: !378, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !536, file: !312, line: 536, baseType: !378, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !536, file: !312, line: 537, baseType: !378, size: 64, offset: 1344)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !536, file: !312, line: 538, baseType: !378, size: 64, offset: 1408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !536, file: !312, line: 539, baseType: !378, size: 64, offset: 1472)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !536, file: !312, line: 540, baseType: !378, size: 64, offset: 1536)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !536, file: !312, line: 541, baseType: !378, size: 64, offset: 1600)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !536, file: !312, line: 542, baseType: !378, size: 64, offset: 1664)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !536, file: !312, line: 543, baseType: !378, size: 64, offset: 1728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !311, file: !312, line: 833, baseType: !7, size: 32, offset: 7680)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !311, file: !312, line: 836, baseType: !7, size: 32, offset: 7712)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !311, file: !312, line: 837, baseType: !22, size: 32, offset: 7744)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !311, file: !312, line: 838, baseType: !570, size: 64, offset: 7808)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !573, line: 19, baseType: !574)
!573 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !573, line: 19, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !574, file: !573, line: 19, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 1)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !311, file: !312, line: 839, baseType: !581, size: 64, offset: 7872)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !311, file: !312, line: 840, baseType: !572, size: 64, offset: 7936)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !311, file: !312, line: 841, baseType: !20, size: 64, offset: 8000)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !311, file: !312, line: 843, baseType: !26, size: 16, offset: 8064)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !311, file: !312, line: 845, baseType: !26, size: 16, offset: 8080)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !311, file: !312, line: 848, baseType: !22, size: 32, offset: 8096)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !311, file: !312, line: 849, baseType: !588, size: 32, offset: 8128)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !312, line: 718, size: 32, elements: !589)
!589 = !{!590, !597}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !588, file: !312, line: 724, baseType: !591, size: 32)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !312, line: 719, size: 32, elements: !592)
!592 = !{!593, !594, !595, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !591, file: !312, line: 720, baseType: !83, size: 8)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !591, file: !312, line: 721, baseType: !83, size: 8, offset: 8)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !591, file: !312, line: 722, baseType: !83, size: 8, offset: 16)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !591, file: !312, line: 723, baseType: !83, size: 8, offset: 24)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !588, file: !312, line: 725, baseType: !321, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !311, file: !312, line: 850, baseType: !97, size: 128, offset: 8192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !311, file: !312, line: 851, baseType: !600, size: 64, offset: 8320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !312, line: 60, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !311, file: !312, line: 855, baseType: !39, size: 64, offset: 8384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !311, file: !312, line: 856, baseType: !83, size: 8, offset: 8448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !311, file: !312, line: 857, baseType: !83, size: 8, offset: 8456)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !311, file: !312, line: 858, baseType: !22, size: 32, offset: 8480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !311, file: !312, line: 859, baseType: !97, size: 128, offset: 8512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !311, file: !312, line: 860, baseType: !22, size: 32, offset: 8640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !311, file: !312, line: 861, baseType: !97, size: 128, offset: 8704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !311, file: !312, line: 873, baseType: !610, size: 256, offset: 8832)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !312, line: 376, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !610, file: !312, line: 381, baseType: !39, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !610, file: !312, line: 384, baseType: !380, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !610, file: !312, line: 389, baseType: !380, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !610, file: !312, line: 392, baseType: !380, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !311, file: !312, line: 875, baseType: !97, size: 128, offset: 9088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !311, file: !312, line: 877, baseType: !618, size: 320, offset: 9216)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !619, line: 86, size: 320, elements: !620)
!619 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !618, file: !619, line: 87, baseType: !22, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !618, file: !619, line: 88, baseType: !97, size: 128, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !618, file: !619, line: 89, baseType: !97, size: 128, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !311, file: !312, line: 878, baseType: !370, size: 192, align: 64, offset: 9536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !311, file: !312, line: 881, baseType: !626, size: 64, offset: 9728)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !628)
!628 = !{!629, !4898}
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !131, line: 734, baseType: !630, size: 10240)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !131, line: 734, size: 10240, elements: !631)
!631 = !{!632, !636, !650, !4777, !4778, !4779, !4780, !4781, !4782, !4789, !4790, !4791, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4830, !4832, !4835, !4878, !4879, !4880, !4883, !4884, !4885, !4888, !4889, !4890, !4896, !4897}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !131, line: 739, baseType: !633, size: 512, align: 512)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !131, line: 739, size: 512, align: 512, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !633, file: !131, line: 747, baseType: !49, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !630, file: !131, line: 750, baseType: !637, size: 128, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !638, line: 218, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!639 = !{!640, !648, !649}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !638, line: 219, baseType: !641, size: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 219, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !641, file: !638, line: 220, baseType: !59, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !641, file: !638, line: 221, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !638, line: 197, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 197, elements: !647)
!647 = !{}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !637, file: !638, line: 223, baseType: !7, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !637, file: !638, line: 224, baseType: !20, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !630, file: !131, line: 752, baseType: !651, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!39, !654, !39, !39, !39, !39}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !239, line: 994, size: 1856, align: 64, elements: !656)
!656 = !{!657, !671, !672, !674, !681, !693, !694, !695, !1076, !1154, !1163, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !239, line: 995, baseType: !658, size: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !239, line: 995, size: 128, elements: !659)
!659 = !{!660, !661, !670}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !658, file: !239, line: 996, baseType: !339, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !658, file: !239, line: 997, baseType: !662, size: 128, align: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !663)
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !25, line: 233, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !662, file: !25, line: 234, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !665}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !658, file: !239, line: 998, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !655, file: !239, line: 1005, baseType: !59, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !655, file: !239, line: 1006, baseType: !673, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !655, file: !239, line: 1007, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !676, line: 13, baseType: !677)
!676 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !678, file: !25, line: 180, baseType: !389, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !655, file: !239, line: 1008, baseType: !682, size: 256, offset: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !683, line: 66, size: 256, elements: !684)
!683 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!684 = !{!685, !686, !687, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !683, line: 67, baseType: !675, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !682, file: !683, line: 68, baseType: !470, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !682, file: !683, line: 70, baseType: !688, size: 32, offset: 96)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !689, line: 15, size: 32, elements: !690)
!689 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !688, file: !689, line: 20, baseType: !49, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !682, file: !683, line: 72, baseType: !97, size: 128, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !655, file: !239, line: 1009, baseType: !41, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !655, file: !239, line: 1010, baseType: !7, size: 32, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !655, file: !239, line: 1011, baseType: !696, size: 256, offset: 640)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !239, line: 948, size: 256, elements: !697)
!697 = !{!698, !721, !1072, !1073, !1074, !1075}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !696, file: !239, line: 949, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !700, line: 34, baseType: !701)
!700 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !700, line: 25, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !701, file: !700, line: 26, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !705, line: 27, baseType: !706)
!705 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !705, line: 13, size: 64, elements: !707)
!707 = !{!708, !720}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !705, line: 14, baseType: !709, size: 32)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !705, line: 14, size: 32, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !709, file: !705, line: 15, baseType: !49, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 16, baseType: !713, size: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 16, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !713, file: !705, line: 18, baseType: !83, size: 8)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !713, file: !705, line: 19, baseType: !717, size: 24, offset: 8)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 3)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !705, line: 26, baseType: !71, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !696, file: !239, line: 950, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !724)
!724 = !{!725, !726, !727, !728, !741, !742, !743, !744}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !723, file: !108, line: 61, baseType: !327, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !723, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !723, file: !108, line: 65, baseType: !729, size: 256, offset: 128)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !739)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !730, file: !25, line: 195, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !25, line: 199, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !25, line: 199, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !{!740}
!740 = !DISubrange(count: 4)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !723, file: !108, line: 66, baseType: !730, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !723, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !723, file: !108, line: 69, baseType: !662, size: 128, align: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !723, file: !108, line: 70, baseType: !745, offset: 768)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, elements: !1070)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !746, file: !108, line: 55, baseType: !22, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !746, file: !108, line: 56, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !752, line: 26, size: 1152, elements: !753)
!752 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!753 = !{!754, !768, !769, !770, !771, !775, !776, !777, !780, !1066, !1067, !1068, !1069}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !751, file: !752, line: 27, baseType: !755, size: 192)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !756, line: 19, size: 192, elements: !757)
!756 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!757 = !{!758, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !755, file: !756, line: 20, baseType: !759, size: 128)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !760, line: 296, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!761 = !{!762, !763, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !759, file: !760, line: 297, baseType: !59, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !759, file: !760, line: 299, baseType: !764, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !759, file: !760, line: 300, baseType: !20, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !755, file: !756, line: 21, baseType: !7, size: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !755, file: !756, line: 22, baseType: !7, size: 32, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !751, file: !752, line: 28, baseType: !662, size: 128, align: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !751, file: !752, line: 29, baseType: !7, size: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !751, file: !752, line: 30, baseType: !310, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !751, file: !752, line: 31, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !774, line: 325, flags: DIFlagFwdDecl)
!774 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !751, file: !752, line: 32, baseType: !7, size: 32, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !751, file: !752, line: 33, baseType: !750, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !751, file: !752, line: 35, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !752, line: 17, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !751, file: !752, line: 37, baseType: !781, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !783, line: 68, size: 4800, elements: !784)
!783 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!784 = !{!785, !807, !808, !809, !810, !811, !819, !826, !837, !838, !841, !842, !964, !965, !977, !1047, !1048, !1062, !1064}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !782, file: !783, line: 69, baseType: !786, size: 576)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !783, line: 23, size: 576, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !786, file: !783, line: 24, baseType: !321, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !783, line: 25, baseType: !790, size: 512, offset: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !783, line: 25, size: 512, elements: !791)
!791 = !{!792, !801}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !790, file: !783, line: 26, baseType: !793, size: 480)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 480, elements: !799)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !783, line: 17, size: 96, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !794, file: !783, line: 18, baseType: !321, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !794, file: !783, line: 19, baseType: !321, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !783, line: 20, baseType: !321, size: 32, offset: 64)
!799 = !{!800}
!800 = !DISubrange(count: 5)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !783, line: 27, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !783, line: 27, size: 128, elements: !803)
!803 = !{!804, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !802, file: !783, line: 28, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !802, file: !783, line: 29, baseType: !805, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !782, file: !783, line: 70, baseType: !786, size: 576, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !782, file: !783, line: 71, baseType: !786, size: 576, offset: 1152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !782, file: !783, line: 72, baseType: !781, size: 64, offset: 1728)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !782, file: !783, line: 73, baseType: !22, size: 32, offset: 1792)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 74, baseType: !812, size: 32, offset: 1824)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !813, line: 23, baseType: !814)
!813 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 21, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !813, line: 22, baseType: !817, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !782, file: !783, line: 75, baseType: !820, size: 32, offset: 1856)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !813, line: 28, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 26, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !821, file: !813, line: 27, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !782, file: !783, line: 76, baseType: !827, size: 192, offset: 1920)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !828, line: 9, size: 192, elements: !829)
!828 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!829 = !{!830, !831, !835, !836}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !827, file: !828, line: 10, baseType: !675, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !827, file: !828, line: 11, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !828, line: 7, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !827, file: !828, line: 12, baseType: !7, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !827, file: !828, line: 13, baseType: !327, size: 32, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !783, line: 77, baseType: !39, size: 64, offset: 2112)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !782, file: !783, line: 80, baseType: !839, size: 8, offset: 2176)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !840)
!840 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !782, file: !783, line: 88, baseType: !97, size: 128, offset: 2240)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !782, file: !783, line: 89, baseType: !843, size: 64, offset: 2368)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !845, line: 195, size: 1728, elements: !846)
!845 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!846 = !{!847, !848, !853, !858, !867, !870, !871, !878, !879, !880, !881, !884, !885, !886, !888, !889, !928, !949}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !844, file: !845, line: 196, baseType: !327, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !844, file: !845, line: 197, baseType: !849, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !845, line: 28, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 198, baseType: !854, size: 192, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 198, size: 192, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !854, file: !845, line: 199, baseType: !97, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !854, file: !845, line: 200, baseType: !370, size: 192, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !844, file: !845, line: 205, baseType: !859, size: 320, offset: 256)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !860, line: 48, size: 320, elements: !861)
!860 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!861 = !{!862, !863, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !860, line: 49, baseType: !675, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !859, file: !860, line: 55, baseType: !675, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !859, file: !860, line: 57, baseType: !688, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !859, file: !860, line: 59, baseType: !470, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !859, file: !860, line: 60, baseType: !97, size: 128, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !844, file: !845, line: 206, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !845, line: 206, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !844, file: !845, line: 207, baseType: !20, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 208, baseType: !872, size: 64, offset: 704)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 208, size: 64, elements: !873)
!873 = !{!874, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !872, file: !845, line: 209, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !876, line: 8, baseType: !390)
!876 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !872, file: !845, line: 210, baseType: !875, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !844, file: !845, line: 212, baseType: !875, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !844, file: !845, line: 213, baseType: !812, size: 32, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !844, file: !845, line: 214, baseType: !820, size: 32, offset: 864)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !844, file: !845, line: 215, baseType: !882, size: 32, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !845, line: 31, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !321)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !844, file: !845, line: 216, baseType: !26, size: 16, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !844, file: !845, line: 217, baseType: !26, size: 16, offset: 944)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !844, file: !845, line: 221, baseType: !887, size: 16, offset: 960)
!887 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 228, baseType: !39, size: 64, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 245, baseType: !890, size: 320, offset: 1088)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 245, size: 320, elements: !891)
!891 = !{!892, !919}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !890, file: !845, line: 246, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !845, line: 114, size: 320, elements: !894)
!894 = !{!895, !896, !908, !911, !918}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !893, file: !845, line: 116, baseType: !39, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !845, line: 117, baseType: !897, size: 64, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !845, line: 117, size: 64, elements: !898)
!898 = !{!899, !907}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !845, line: 118, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !845, line: 118, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !900, file: !845, line: 120, baseType: !93, size: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !900, file: !845, line: 121, baseType: !904, size: 48, offset: 16)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 6)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !897, file: !845, line: 127, baseType: !39, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !845, line: 129, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !845, line: 102, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !893, file: !845, line: 130, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !845, line: 108, size: 192, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !913, file: !845, line: 109, baseType: !662, size: 128, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !913, file: !845, line: 110, baseType: !327, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !913, file: !845, line: 111, baseType: !839, size: 8, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !845, line: 131, baseType: !16, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !845, line: 247, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !845, line: 247, size: 320, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !920, file: !845, line: 248, baseType: !39, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !920, file: !845, line: 249, baseType: !39, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !845, line: 250, baseType: !909, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !920, file: !845, line: 251, baseType: !912, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !920, file: !845, line: 252, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 260, baseType: !929, size: 256, offset: 1408)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 260, size: 256, elements: !930)
!930 = !{!931, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !929, file: !845, line: 261, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !845, line: 134, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !932, file: !845, line: 135, baseType: !20, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !932, file: !845, line: 136, baseType: !936, size: 256)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !739)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !845, line: 262, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !845, line: 262, size: 256, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !938, file: !845, line: 264, baseType: !97, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !938, file: !845, line: 265, baseType: !942, size: 128, offset: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !943, line: 22, size: 128, elements: !944)
!943 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!944 = !{!945, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !942, file: !943, line: 23, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !943, line: 23, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !942, file: !943, line: 24, baseType: !39, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !844, file: !845, line: 280, baseType: !950, size: 64, offset: 1664)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !845, line: 176, size: 192, elements: !952)
!952 = !{!953, !962, !963}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !951, file: !845, line: 177, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !845, line: 171, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!22, !843, !958, !960, !843}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !951, file: !845, line: 178, baseType: !843, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !951, file: !845, line: 179, baseType: !909, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !782, file: !783, line: 90, baseType: !859, size: 320, offset: 2432)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !782, file: !783, line: 97, baseType: !966, size: 256, offset: 2752)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !967, line: 98, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !966, file: !967, line: 99, baseType: !675, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !966, file: !967, line: 100, baseType: !97, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !966, file: !967, line: 101, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !967, line: 21, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !782, file: !783, line: 99, baseType: !978, size: 768, offset: 3008)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !979)
!979 = !{!980, !985}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !978, file: !12, line: 200, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!22, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !978, file: !12, line: 201, baseType: !986, size: 704, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !987)
!987 = !{!988, !1046}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !986, file: !12, line: 195, baseType: !989, size: 640)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !990)
!990 = !{!991, !1003, !1015, !1016, !1036, !1037, !1039, !1045}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !12, line: 174, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !12, line: 174, size: 192, elements: !993)
!993 = !{!994, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !12, line: 175, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !12, line: 175, size: 192, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !995, file: !12, line: 176, baseType: !33, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !995, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !995, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !995, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !995, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !992, file: !12, line: 182, baseType: !662, size: 128, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !989, file: !12, line: 184, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1006, line: 26, size: 256, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1005, file: !1006, line: 27, baseType: !7, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1005, file: !1006, line: 28, baseType: !1010, size: 192, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1011, line: 43, size: 192, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !1011, line: 44, baseType: !470, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1010, file: !1011, line: 45, baseType: !97, size: 128, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !989, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !989, file: !12, line: 186, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1019)
!1019 = !{!1020, !1021, !1025, !1032}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1018, file: !12, line: 205, baseType: !978, size: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1018, file: !12, line: 206, baseType: !1022, size: 64, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!984, !1017}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1018, file: !12, line: 207, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1018, file: !12, line: 209, baseType: !1033, size: 64, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!22, !1029, !33}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !989, file: !12, line: 187, baseType: !984, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !989, file: !12, line: 188, baseType: !1038, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !989, file: !12, line: 189, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1041, file: !12, line: 158, baseType: !370, size: 192, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1041, file: !12, line: 159, baseType: !1029, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !989, file: !12, line: 190, baseType: !730, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !986, file: !12, line: 196, baseType: !512, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !782, file: !783, line: 100, baseType: !1029, size: 64, offset: 3776)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !782, file: !783, line: 102, baseType: !1049, size: 64, offset: 3840)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !783, line: 107, size: 1152, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1060}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !783, line: 108, baseType: !734, size: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1050, file: !783, line: 109, baseType: !781, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1050, file: !783, line: 110, baseType: !812, size: 32, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1050, file: !783, line: 111, baseType: !49, size: 32, offset: 224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1050, file: !783, line: 112, baseType: !1057, size: 640, offset: 256)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 640, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 10)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1050, file: !783, line: 113, baseType: !1061, size: 256, offset: 896)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !739)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !782, file: !783, line: 103, baseType: !1063, size: 640, offset: 3904)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !1058)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !782, file: !783, line: 104, baseType: !1065, size: 256, offset: 4544)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !739)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !751, file: !752, line: 38, baseType: !1049, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !751, file: !752, line: 39, baseType: !22, size: 32, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !752, line: 40, baseType: !827, size: 192, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !751, file: !752, line: 42, baseType: !22, size: 32, offset: 1088)
!1070 = !{!1071}
!1071 = !DISubrange(count: -1)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !696, file: !239, line: 951, baseType: !107, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !696, file: !239, line: 952, baseType: !812, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !696, file: !239, line: 952, baseType: !812, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !696, file: !239, line: 953, baseType: !22, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !655, file: !239, line: 1012, baseType: !1077, size: 64, offset: 896)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1080, line: 110, size: 1472, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1139, !1140, !1141, !1149}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1079, file: !1080, line: 111, baseType: !675, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1079, file: !1080, line: 112, baseType: !812, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1079, file: !1080, line: 113, baseType: !820, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1079, file: !1080, line: 114, baseType: !812, size: 32, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1079, file: !1080, line: 115, baseType: !820, size: 32, offset: 160)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1079, file: !1080, line: 116, baseType: !812, size: 32, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1079, file: !1080, line: 117, baseType: !820, size: 32, offset: 224)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1079, file: !1080, line: 118, baseType: !812, size: 32, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1079, file: !1080, line: 119, baseType: !820, size: 32, offset: 288)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1079, file: !1080, line: 120, baseType: !7, size: 32, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1079, file: !1080, line: 121, baseType: !1093, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1094, line: 24, baseType: !1095)
!1094 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1094, line: 24, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1095, file: !1094, line: 24, baseType: !378, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1079, file: !1080, line: 122, baseType: !1093, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1079, file: !1080, line: 123, baseType: !1093, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1079, file: !1080, line: 124, baseType: !1093, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1079, file: !1080, line: 125, baseType: !1093, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1079, file: !1080, line: 127, baseType: !87, size: 8, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1079, file: !1080, line: 129, baseType: !843, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1079, file: !1080, line: 130, baseType: !843, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1079, file: !1080, line: 131, baseType: !843, size: 64, offset: 896)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1079, file: !1080, line: 132, baseType: !843, size: 64, offset: 960)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1079, file: !1080, line: 135, baseType: !20, size: 64, offset: 1024)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1079, file: !1080, line: 137, baseType: !1109, size: 64, offset: 1088)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1111, line: 14, size: 1088, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1112 = !{!1113, !1114, !1123, !1124, !1125, !1126, !1127, !1128}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1110, file: !1111, line: 15, baseType: !327, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1110, file: !1111, line: 17, baseType: !1115, size: 320, offset: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1116, line: 22, size: 320, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1116, line: 23, baseType: !470, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1115, file: !1116, line: 24, baseType: !389, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1115, file: !1116, line: 26, baseType: !97, size: 128, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1115, file: !1116, line: 28, baseType: !1122, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1110, file: !1111, line: 19, baseType: !39, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1110, file: !1111, line: 20, baseType: !675, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1110, file: !1111, line: 23, baseType: !734, size: 128, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1110, file: !1111, line: 24, baseType: !812, size: 32, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1110, file: !1111, line: 29, baseType: !675, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1110, file: !1111, line: 36, baseType: !1129, size: 320, offset: 768)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1130, line: 15, size: 320, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1129, file: !1130, line: 16, baseType: !470, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1129, file: !1130, line: 18, baseType: !22, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1129, file: !1130, line: 19, baseType: !22, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1129, file: !1130, line: 20, baseType: !22, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1129, file: !1130, line: 21, baseType: !22, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1129, file: !1130, line: 22, baseType: !39, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 23, baseType: !39, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1079, file: !1080, line: 138, baseType: !781, size: 64, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1079, file: !1080, line: 139, baseType: !1049, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1079, file: !1080, line: 140, baseType: !1142, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1080, line: 25, size: 64, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1143, file: !1080, line: 26, baseType: !49, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1143, file: !1080, line: 27, baseType: !22, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1143, file: !1080, line: 28, baseType: !1148, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, elements: !1070)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !1080, line: 142, baseType: !1150, size: 128, offset: 1344)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !1080, line: 142, size: 128, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1150, file: !1080, line: 143, baseType: !22, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1150, file: !1080, line: 144, baseType: !662, size: 128, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !655, file: !239, line: 1013, baseType: !1155, size: 256, offset: 960)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !239, line: 970, size: 256, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1155, file: !239, line: 971, baseType: !39, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1155, file: !239, line: 972, baseType: !7, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1155, file: !239, line: 973, baseType: !7, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1155, file: !239, line: 974, baseType: !7, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1155, file: !239, line: 975, baseType: !7, size: 32, offset: 160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1155, file: !239, line: 976, baseType: !41, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !655, file: !239, line: 1014, baseType: !1164, size: 128, offset: 1216)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1165, line: 8, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1166 = !{!1167, !4767}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1164, file: !1165, line: 9, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1170, line: 70, size: 256, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1171 = !{!1172, !4764, !4765, !4766}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1169, file: !1170, line: 71, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1175, line: 82, size: 1536, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1176 = !{!1177, !1178, !1183, !1191, !1192, !1207, !4732, !4734, !4747, !4748, !4749, !4750, !4751, !4756, !4757, !4758}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1174, file: !1175, line: 84, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1174, file: !1175, line: 85, baseType: !1179, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !496, line: 275, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !496, line: 275, size: 32, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1180, file: !496, line: 275, baseType: !500, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1174, file: !1175, line: 86, baseType: !1184, size: 128, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1185, line: 38, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1186 = !{!1187, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1184, file: !1185, line: 39, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1184, file: !1185, line: 39, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1174, file: !1175, line: 87, baseType: !1173, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1174, file: !1175, line: 88, baseType: !1193, size: 128, offset: 256)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1175, line: 49, size: 128, elements: !1194)
!1194 = !{!1195, !1204}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1175, line: 50, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1175, line: 50, size: 64, elements: !1197)
!1197 = !{!1198, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1175, line: 51, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1175, line: 51, size: 64, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1199, file: !1175, line: 52, baseType: !321, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1199, file: !1175, line: 52, baseType: !321, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1196, file: !1175, line: 54, baseType: !378, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1193, file: !1175, line: 56, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1174, file: !1175, line: 89, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !239, line: 641, size: 4800, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1220, !1221, !1408, !4547, !4548, !4549, !4550, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4714, !4717, !4718, !4719, !4728, !4729, !4730, !4731}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1209, file: !239, line: 642, baseType: !24, size: 16)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1209, file: !239, line: 643, baseType: !26, size: 16, offset: 16)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1209, file: !239, line: 644, baseType: !812, size: 32, offset: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1209, file: !239, line: 645, baseType: !97, size: 128, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1209, file: !239, line: 646, baseType: !820, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1209, file: !239, line: 647, baseType: !7, size: 32, offset: 224)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1209, file: !239, line: 650, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !239, line: 607, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1209, file: !239, line: 651, baseType: !1218, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1209, file: !239, line: 654, baseType: !1222, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !239, line: 1966, size: 2048, align: 512, elements: !1225)
!1225 = !{!1226, !1230, !1243, !1249, !1253, !1257, !1261, !1265, !1269, !1273, !1277, !1278, !1284, !1288, !1325, !1356, !1363, !1369, !1373, !1377, !1381, !1385, !1389, !1395, !1399}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1224, file: !239, line: 1967, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1173, !1208, !1173, !7}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1224, file: !239, line: 1968, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!16, !1173, !1208, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1236, line: 10, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1237 = !{!1238, !1242}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1235, file: !1236, line: 11, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !20}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1235, file: !1236, line: 12, baseType: !20, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1224, file: !239, line: 1969, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!22, !1247, !1208, !22}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1094, line: 42, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1224, file: !239, line: 1970, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1218, !1208, !22, !839}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1224, file: !239, line: 1972, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!22, !1173, !927, !22}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1224, file: !239, line: 1974, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!22, !1247, !1208, !1173, !24, !839}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1224, file: !239, line: 1976, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!22, !1173, !1208, !1173}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1224, file: !239, line: 1977, baseType: !1266, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!22, !1208, !1173}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1224, file: !239, line: 1978, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!22, !1247, !1208, !1173, !16}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1224, file: !239, line: 1980, baseType: !1274, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!22, !1247, !1208, !1173, !24}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1224, file: !239, line: 1982, baseType: !1266, size: 64, offset: 640)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1224, file: !239, line: 1983, baseType: !1279, size: 64, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!22, !1247, !1208, !1173, !24, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !321)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1224, file: !239, line: 1985, baseType: !1285, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!22, !1247, !1208, !1173, !1208, !1173, !7}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1224, file: !239, line: 1987, baseType: !1289, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!22, !1247, !1173, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !239, line: 226, size: 640, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1307, !1316, !1317, !1322, !1323, !1324}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1293, file: !239, line: 227, baseType: !7, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1293, file: !239, line: 228, baseType: !24, size: 16, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !239, line: 241, baseType: !1298, size: 32, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !239, line: 241, size: 32, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1298, file: !239, line: 242, baseType: !812, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1298, file: !239, line: 243, baseType: !1302, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1303, line: 16, baseType: !1304)
!1303 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1303, line: 14, size: 32, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1304, file: !1303, line: 15, baseType: !817, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !239, line: 245, baseType: !1308, size: 32, offset: 96)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !239, line: 245, size: 32, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1308, file: !239, line: 246, baseType: !820, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1308, file: !239, line: 247, baseType: !1312, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1303, line: 20, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1303, line: 18, size: 32, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1313, file: !1303, line: 19, baseType: !824, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1293, file: !239, line: 249, baseType: !41, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1293, file: !239, line: 250, baseType: !1318, size: 128, offset: 192)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !876, line: 13, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !876, line: 14, baseType: !875, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !876, line: 15, baseType: !290, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1293, file: !239, line: 251, baseType: !1318, size: 128, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1293, file: !239, line: 252, baseType: !1318, size: 128, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1293, file: !239, line: 259, baseType: !654, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1224, file: !239, line: 1988, baseType: !1326, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!22, !1247, !1329, !1331, !321, !7}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1333, line: 22, size: 1280, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1332, file: !1333, line: 23, baseType: !321, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1332, file: !1333, line: 24, baseType: !24, size: 16, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1332, file: !1333, line: 25, baseType: !7, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1332, file: !1333, line: 26, baseType: !883, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1332, file: !1333, line: 27, baseType: !378, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1332, file: !1333, line: 28, baseType: !378, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1332, file: !1333, line: 41, baseType: !378, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1332, file: !1333, line: 42, baseType: !1282, size: 32, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1332, file: !1333, line: 43, baseType: !1282, size: 32, offset: 352)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1332, file: !1333, line: 44, baseType: !812, size: 32, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1332, file: !1333, line: 45, baseType: !820, size: 32, offset: 416)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1332, file: !1333, line: 46, baseType: !41, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1332, file: !1333, line: 47, baseType: !1318, size: 128, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1332, file: !1333, line: 48, baseType: !1318, size: 128, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1332, file: !1333, line: 49, baseType: !1318, size: 128, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1332, file: !1333, line: 50, baseType: !1318, size: 128, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1332, file: !1333, line: 51, baseType: !378, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1332, file: !1333, line: 52, baseType: !378, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1332, file: !1333, line: 53, baseType: !321, size: 32, offset: 1152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1332, file: !1333, line: 54, baseType: !321, size: 32, offset: 1184)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1332, file: !1333, line: 55, baseType: !378, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1224, file: !239, line: 1990, baseType: !1357, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1360, !1173, !927, !35}
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !290)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1224, file: !239, line: 1991, baseType: !1364, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!22, !1208, !1367, !378, !378}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !239, line: 55, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1224, file: !239, line: 1993, baseType: !1370, size: 64, offset: 1088)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!22, !1208, !22}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1224, file: !239, line: 1994, baseType: !1374, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!22, !1208, !1173, !654, !7, !24}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1224, file: !239, line: 1997, baseType: !1378, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!22, !1247, !1208, !654, !24}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1224, file: !239, line: 1999, baseType: !1382, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1218, !1247, !1173, !22}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1224, file: !239, line: 2001, baseType: !1386, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!22, !1247, !1173, !1218, !22}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1224, file: !239, line: 2003, baseType: !1390, size: 64, offset: 1408)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!22, !1247, !1173, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !239, line: 76, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1224, file: !239, line: 2005, baseType: !1396, size: 64, offset: 1472)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!22, !1173, !1393}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1224, file: !239, line: 2006, baseType: !1400, size: 64, offset: 1536)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1403, !1208}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !239, line: 3192, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1404, file: !239, line: 3193, baseType: !759, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1404, file: !239, line: 3194, baseType: !321, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1209, file: !239, line: 655, baseType: !1409, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !239, line: 1190, size: 10752, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !4064, !4196, !4236, !4319, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4336, !4340, !4341, !4344, !4347, !4350, !4353, !4354, !4355, !4396, !4418, !4419, !4420, !4421, !4422, !4423, !4426, !4430, !4439, !4440, !4441, !4442, !4501, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1410, file: !239, line: 1191, baseType: !97, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1410, file: !239, line: 1192, baseType: !1282, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1410, file: !239, line: 1193, baseType: !87, size: 8, offset: 160)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1410, file: !239, line: 1194, baseType: !39, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1410, file: !239, line: 1195, baseType: !41, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1410, file: !239, line: 1196, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !239, line: 2366, size: 576, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1429, !1433, !1437, !1441, !4052, !4053, !4054, !4056, !4057, !4058, !4060, !4061, !4062, !4063}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1419, file: !239, line: 2367, baseType: !16, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1419, file: !239, line: 2368, baseType: !22, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1419, file: !239, line: 2376, baseType: !1424, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!22, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1170, line: 21, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1419, file: !239, line: 2377, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !239, line: 75, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1419, file: !239, line: 2378, baseType: !1434, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!1173, !1418, !22, !16, !20}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1419, file: !239, line: 2380, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1409}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1419, file: !239, line: 2381, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1451, !2261, !2287, !2288, !2289, !2290, !2294, !2297, !2298, !2299, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2367, !2371, !2390, !2410, !2411, !2412, !2413, !2422, !2445, !2446, !2449, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2463, !2464, !2563, !2571, !2572, !2573, !2575, !4030, !4031, !4040, !4041, !4042, !4043, !4045, !4046, !4047, !4048, !4049, !4050, !4051}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1443, file: !116, line: 403, baseType: !115, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1443, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !116, line: 409, baseType: !1448, size: 448, offset: 192)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 56)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1443, file: !116, line: 417, baseType: !1452, size: 768, offset: 640)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1453)
!1453 = !{!1454, !2255, !2256, !2257, !2260}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1452, file: !116, line: 46, baseType: !1455, size: 512)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1456, line: 64, size: 512, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1457 = !{!1458, !1459, !1460, !1462, !1506, !2102, !2245, !2250, !2251, !2252, !2253, !2254}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1455, file: !1456, line: 65, baseType: !16, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1455, file: !1456, line: 66, baseType: !97, size: 128, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1455, file: !1456, line: 67, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1455, file: !1456, line: 68, baseType: !1463, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1456, line: 168, size: 768, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1464, file: !1456, line: 169, baseType: !97, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1464, file: !1456, line: 170, baseType: !59, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1464, file: !1456, line: 171, baseType: !1455, size: 512, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1464, file: !1456, line: 172, baseType: !1470, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1456, line: 133, size: 192, elements: !1473)
!1473 = !{!1474, !1481, !1486}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1472, file: !1456, line: 134, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!22, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1472, file: !1456, line: 135, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!16, !1479}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1472, file: !1456, line: 136, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!22, !1479, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1456, line: 125, size: 20736, elements: !1493)
!1493 = !{!1494, !1496, !1500, !1501, !1505}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1492, file: !1456, line: 126, baseType: !1495, size: 192)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 192, elements: !718)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1492, file: !1456, line: 127, baseType: !1497, size: 4096, offset: 192)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 4096, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1492, file: !1456, line: 128, baseType: !22, size: 32, offset: 4288)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1492, file: !1456, line: 129, baseType: !1502, size: 16384, offset: 4320)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 2048)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1492, file: !1456, line: 130, baseType: !22, size: 32, offset: 20704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1455, file: !1456, line: 69, baseType: !1507, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1456, line: 116, size: 384, elements: !1510)
!1510 = !{!1511, !1515, !1534, !2064, !2094, !2098}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1509, file: !1456, line: 117, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1461}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1509, file: !1456, line: 118, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1519, line: 254, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1520 = !{!1521, !1530}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1518, file: !1519, line: 255, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1360, !1461, !1525, !927}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1519, line: 30, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1526, file: !1519, line: 31, baseType: !16, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1526, file: !1519, line: 32, baseType: !24, size: 16, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1518, file: !1519, line: 256, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1360, !1461, !1525, !16, !35}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1509, file: !1456, line: 119, baseType: !1535, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1519, line: 84, size: 320, elements: !1539)
!1539 = !{!1540, !1541, !1545, !2060, !2062}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1538, file: !1519, line: 85, baseType: !16, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1538, file: !1519, line: 86, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!24, !1461, !1525, !22}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1538, file: !1519, line: 88, baseType: !1546, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!24, !1461, !1549, !22}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1519, line: 175, size: 512, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !2051, !2055, !2056}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1550, file: !1519, line: 176, baseType: !1526, size: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !1519, line: 177, baseType: !35, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1550, file: !1519, line: 178, baseType: !20, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1550, file: !1519, line: 179, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !239, line: 472, size: 1536, align: 64, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !2043, !2044, !2045, !2048, !2049, !2050}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1560, file: !239, line: 473, baseType: !1208, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1560, file: !239, line: 474, baseType: !759, size: 128, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1560, file: !239, line: 475, baseType: !859, size: 320, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1560, file: !239, line: 476, baseType: !764, size: 32, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1560, file: !239, line: 477, baseType: !49, size: 32, offset: 544)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1560, file: !239, line: 482, baseType: !509, size: 128, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1560, file: !239, line: 483, baseType: !39, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1560, file: !239, line: 484, baseType: !39, size: 64, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1560, file: !239, line: 485, baseType: !1571, size: 64, offset: 832)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !239, line: 404, size: 1280, elements: !1574)
!1574 = !{!1575, !1868, !1938, !1942, !1946, !1952, !1958, !1962, !1967, !1971, !1975, !1979, !2007, !2011, !2015, !2019, !2024, !2028, !2035, !2039}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1573, file: !239, line: 405, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!22, !1579, !1866}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1581)
!1581 = !{!1582, !1583, !1860, !1865}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !131, line: 75, baseType: !39, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !131, line: 83, baseType: !1584, size: 320, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !131, line: 83, size: 320, elements: !1585)
!1585 = !{!1586, !1607, !1621, !1625, !1859}
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !131, line: 84, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !131, line: 84, size: 320, elements: !1588)
!1588 = !{!1589, !1600, !1601, !1606}
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !131, line: 90, baseType: !1590, size: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !131, line: 90, size: 128, elements: !1591)
!1591 = !{!1592, !1593, !1598, !1599}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1590, file: !131, line: 91, baseType: !97, size: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !131, line: 94, baseType: !1594, size: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !131, line: 94, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1594, file: !131, line: 96, baseType: !20, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1594, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1590, file: !131, line: 102, baseType: !97, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1590, file: !131, line: 103, baseType: !97, size: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1587, file: !131, line: 106, baseType: !1559, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !131, line: 107, baseType: !1602, size: 64, offset: 192)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !131, line: 107, size: 64, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1602, file: !131, line: 108, baseType: !39, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1602, file: !131, line: 109, baseType: !39, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1587, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !131, line: 119, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !131, line: 119, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1614, !1615, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1608, file: !131, line: 124, baseType: !39, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1608, file: !131, line: 125, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1608, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1608, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !131, line: 128, baseType: !1617, size: 64, offset: 256)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !131, line: 128, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1617, file: !131, line: 133, baseType: !39, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1617, file: !131, line: 138, baseType: !675, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !131, line: 141, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !131, line: 141, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1622, file: !131, line: 142, baseType: !39, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !131, line: 144, baseType: !1626, size: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !131, line: 144, size: 128, elements: !1627)
!1627 = !{!1628, !1858}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1626, file: !131, line: 146, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1631)
!1631 = !{!1632, !1642, !1663, !1664, !1665, !1666, !1667, !1840, !1841, !1842}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1630, file: !123, line: 127, baseType: !1633, size: 384)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1634)
!1634 = !{!1635, !1636, !1638, !1639, !1640, !1641}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1633, file: !123, line: 22, baseType: !39, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1633, file: !123, line: 23, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1633, file: !123, line: 24, baseType: !1637, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1633, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1633, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1633, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1630, file: !123, line: 128, baseType: !1643, size: 128, offset: 384)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1644, line: 105, size: 128, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1643, file: !1644, line: 110, baseType: !39, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1643, file: !1644, line: 118, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1644, line: 95, size: 448, elements: !1650)
!1650 = !{!1651, !1652, !1658, !1659, !1660, !1661, !1662}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1649, file: !1644, line: 96, baseType: !675, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1649, file: !1644, line: 97, baseType: !1653, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1644, line: 60, baseType: !1655)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1649, file: !1644, line: 98, baseType: !1653, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1649, file: !1644, line: 99, baseType: !839, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1649, file: !1644, line: 100, baseType: !839, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1649, file: !1644, line: 101, baseType: !662, size: 128, align: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1649, file: !1644, line: 102, baseType: !1657, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1630, file: !123, line: 129, baseType: !1005, size: 256, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1630, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1630, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1630, file: !123, line: 133, baseType: !1668, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1671)
!1671 = !{!1672, !1676, !1836}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1670, file: !123, line: 83, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1579}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1670, file: !123, line: 89, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1683, line: 512, size: 896, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1684 = !{!1685, !1803, !1804, !1811, !1818, !1828, !1829, !1830, !1832, !1834}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 513, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1683, line: 513, size: 320, elements: !1687)
!1687 = !{!1688, !1799, !1800, !1801, !1802}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1686, file: !1683, line: 514, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1691)
!1691 = !{!1692, !1701, !1702, !1710, !1717, !1718, !1723, !1724, !1729, !1730, !1733, !1792, !1793, !1794, !1795, !1796, !1797}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !131, line: 628, baseType: !1693, size: 128)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !131, line: 628, size: 128, elements: !1694)
!1694 = !{!1695, !1700}
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !131, line: 629, baseType: !1696, size: 128)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !131, line: 629, size: 128, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1696, file: !131, line: 631, baseType: !39, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1696, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1693, file: !131, line: 635, baseType: !662, size: 128, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1690, file: !131, line: 639, baseType: !626, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1690, file: !131, line: 640, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1704, line: 297, baseType: !1705)
!1704 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1704, line: 297, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1705, file: !1704, line: 297, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1709, line: 19, baseType: !39)
!1709 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !131, line: 646, baseType: !1711, size: 64, offset: 256)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !131, line: 646, size: 64, elements: !1712)
!1712 = !{!1713, !1716}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1711, file: !131, line: 647, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1711, file: !131, line: 648, baseType: !1715, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1690, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1690, file: !131, line: 667, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !131, line: 580, baseType: !859, size: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1690, file: !131, line: 670, baseType: !839, size: 8, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1690, file: !131, line: 681, baseType: !1725, size: 256, offset: 512)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !131, line: 678, size: 256, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1725, file: !131, line: 679, baseType: !370, size: 192, align: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1725, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1690, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1690, file: !131, line: 691, baseType: !1731, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1690, file: !131, line: 694, baseType: !1734, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1683, line: 563, size: 1024, elements: !1737)
!1737 = !{!1738, !1742, !1743, !1747, !1751, !1755, !1756, !1760, !1764, !1768, !1769, !1770, !1774, !1778, !1784, !1788}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1736, file: !1683, line: 564, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1689}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1736, file: !1683, line: 569, baseType: !1739, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1736, file: !1683, line: 571, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!22, !1689, !39}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1736, file: !1683, line: 572, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!22, !1689}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1736, file: !1683, line: 578, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!22, !1689, !39, !39, !39}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1736, file: !1683, line: 580, baseType: !1677, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1736, file: !1683, line: 581, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1680, !1681, !7}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1736, file: !1683, line: 582, baseType: !1761, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1680, !1681, !39, !39}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1736, file: !1683, line: 584, baseType: !1765, size: 64, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!39, !1689}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1736, file: !1683, line: 588, baseType: !1677, size: 64, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1736, file: !1683, line: 591, baseType: !1677, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1736, file: !1683, line: 597, baseType: !1771, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!22, !1689, !39, !20, !22, !22}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1736, file: !1683, line: 603, baseType: !1775, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!16, !1689}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1736, file: !1683, line: 613, baseType: !1779, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!22, !1689, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !131, line: 717, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1736, file: !1683, line: 625, baseType: !1785, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1782, !1689, !39}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1736, file: !1683, line: 633, baseType: !1789, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1579, !1689, !39}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1690, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1690, file: !131, line: 699, baseType: !654, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1690, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1690, file: !131, line: 711, baseType: !675, size: 64, offset: 1216)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1690, file: !131, line: 717, baseType: !1782, size: 64, offset: 1280)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1690, file: !131, line: 722, baseType: !1798, offset: 1344)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !647)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1686, file: !1683, line: 515, baseType: !764, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1686, file: !1683, line: 516, baseType: !39, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1686, file: !1683, line: 517, baseType: !39, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1686, file: !1683, line: 518, baseType: !39, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 520, baseType: !130, size: 32, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1682, file: !1683, line: 522, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1709, line: 22, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1709, line: 22, size: 64, elements: !1808)
!1808 = !{!1809}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1807, file: !1709, line: 22, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1709, line: 15, baseType: !39)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1682, file: !1683, line: 524, baseType: !1812, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1704, line: 372, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1704, line: 372, size: 64, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1814, file: !1704, line: 372, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1709, line: 16, baseType: !39)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 527, baseType: !1819, size: 64, offset: 512)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 527, size: 64, elements: !1820)
!1820 = !{!1821, !1827}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1819, file: !1683, line: 528, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1709, line: 21, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1709, line: 21, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1823, file: !1709, line: 21, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1709, line: 14, baseType: !39)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1819, file: !1683, line: 529, baseType: !1806, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1682, file: !1683, line: 534, baseType: !1579, size: 64, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1682, file: !1683, line: 535, baseType: !1579, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1682, file: !1683, line: 541, baseType: !1831, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1682, file: !1683, line: 545, baseType: !1833, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1682, file: !1683, line: 549, baseType: !1835, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1704, line: 520, baseType: !1579)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1670, file: !123, line: 100, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!22, !1629, !39, !39, !22}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1630, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1630, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !123, line: 136, baseType: !1843, size: 128, offset: 1088)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !123, line: 136, size: 128, elements: !1844)
!1844 = !{!1845, !1851}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1843, file: !123, line: 137, baseType: !1846, size: 128)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1847, line: 6, size: 128, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1846, file: !1847, line: 7, baseType: !378, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1846, file: !1847, line: 8, baseType: !378, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !123, line: 138, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !123, line: 138, elements: !1853)
!1853 = !{!1854, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1852, file: !123, line: 138, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !123, line: 138, elements: !647)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1852, file: !123, line: 138, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, elements: !1070)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1626, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1584, file: !131, line: 161, baseType: !662, size: 128, align: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !131, line: 164, baseType: !1861, size: 32, offset: 384)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !131, line: 164, size: 32, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1861, file: !131, line: 169, baseType: !49, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1861, file: !131, line: 177, baseType: !7, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1580, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !239, line: 309, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1573, file: !239, line: 406, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!22, !654, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1874)
!1874 = !{!1875, !1905, !1919}
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !131, line: 295, baseType: !1876, size: 512)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !131, line: 295, size: 512, elements: !1877)
!1877 = !{!1878, !1904}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !131, line: 296, baseType: !1879, size: 448)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !131, line: 296, size: 448, elements: !1880)
!1880 = !{!1881, !1882, !1891, !1892, !1893, !1902, !1903}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1879, file: !131, line: 298, baseType: !39, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !131, line: 299, baseType: !1883, size: 128, offset: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !131, line: 299, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1883, file: !131, line: 300, baseType: !97, size: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !131, line: 302, baseType: !1887, size: 128)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !131, line: 302, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1887, file: !131, line: 303, baseType: !20, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1887, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1879, file: !131, line: 310, baseType: !1559, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1879, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !131, line: 312, baseType: !1894, size: 64, offset: 320)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !131, line: 312, size: 64, elements: !1895)
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1894, file: !131, line: 313, baseType: !20, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1894, file: !131, line: 314, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1899, file: !131, line: 256, baseType: !39, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1879, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1879, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1876, file: !131, line: 323, baseType: !1580, size: 512, align: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !131, line: 325, baseType: !1906, size: 512, offset: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !131, line: 325, size: 512, elements: !1907)
!1907 = !{!1908, !1918}
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !131, line: 326, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !131, line: 326, size: 320, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1909, file: !131, line: 327, baseType: !39, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1909, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1909, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1909, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1909, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1909, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1909, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1906, file: !131, line: 339, baseType: !1580, size: 512, align: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !131, line: 341, baseType: !1920, size: 512, offset: 1024)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !131, line: 341, size: 512, elements: !1921)
!1921 = !{!1922, !1931, !1937}
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !131, line: 342, baseType: !1923, size: 384)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !131, line: 342, size: 384, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1923, file: !131, line: 343, baseType: !39, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1923, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1923, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1923, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1923, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1923, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !131, line: 352, baseType: !1932, size: 256)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !131, line: 352, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1932, file: !131, line: 353, baseType: !39, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1932, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1932, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1920, file: !131, line: 359, baseType: !1580, size: 512, align: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1573, file: !239, line: 409, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!22, !1559, !1866}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1573, file: !239, line: 412, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!839, !1559, !1872}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1573, file: !239, line: 414, baseType: !1947, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !239, line: 310, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1573, file: !239, line: 416, baseType: !1953, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!22, !654, !1559, !41, !7, !1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1573, file: !239, line: 419, baseType: !1959, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!22, !654, !1559, !41, !7, !7, !1579, !20}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1573, file: !239, line: 424, baseType: !1963, size: 64, offset: 448)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1966, !1559, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !378)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1573, file: !239, line: 425, baseType: !1968, size: 64, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1872, !35, !35}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1573, file: !239, line: 426, baseType: !1972, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!839, !1872, !764}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1573, file: !239, line: 427, baseType: !1976, size: 64, offset: 640)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1872}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1573, file: !239, line: 428, baseType: !1980, size: 64, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1360, !1983, !2005}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !239, line: 373, size: 384, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1992, !1993, !1994, !1995}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1984, file: !239, line: 374, baseType: !654, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1984, file: !239, line: 375, baseType: !41, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1984, file: !239, line: 376, baseType: !1989, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1983, !290}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1984, file: !239, line: 377, baseType: !20, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1984, file: !239, line: 378, baseType: !22, size: 32, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1984, file: !239, line: 379, baseType: !93, size: 16, offset: 288)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !239, line: 380, baseType: !1996, size: 64, offset: 320)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !239, line: 380, size: 64, elements: !1997)
!1997 = !{!1998, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1996, file: !239, line: 386, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !239, line: 386, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1996, file: !239, line: 395, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!1360, !20}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !239, line: 69, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1573, file: !239, line: 433, baseType: !2008, size: 64, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!22, !1559, !1872, !1872, !146}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1573, file: !239, line: 435, baseType: !2012, size: 64, offset: 832)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!22, !1872}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1573, file: !239, line: 436, baseType: !2016, size: 64, offset: 896)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!839, !1872, !35, !35}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1573, file: !239, line: 438, baseType: !2020, size: 64, offset: 960)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1872, !2023, !2023}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1573, file: !239, line: 439, baseType: !2025, size: 64, offset: 1024)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!22, !1559, !1579}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1573, file: !239, line: 442, baseType: !2029, size: 64, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!22, !2032, !654, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !239, line: 66, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1573, file: !239, line: 444, baseType: !2036, size: 64, offset: 1152)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !654}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1573, file: !239, line: 445, baseType: !2040, size: 64, offset: 1216)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!22, !1983, !2005}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !239, line: 486, baseType: !39, size: 64, offset: 896)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1560, file: !239, line: 487, baseType: !859, size: 320, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1560, file: !239, line: 488, baseType: !2046, size: 32, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2047, line: 8, baseType: !321)
!2047 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1560, file: !239, line: 489, baseType: !59, size: 32, offset: 1312)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1560, file: !239, line: 490, baseType: !97, size: 128, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1560, file: !239, line: 491, baseType: !20, size: 64, offset: 1472)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1550, file: !1519, line: 180, baseType: !2052, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!1360, !654, !1461, !1549, !927, !41, !35}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1550, file: !1519, line: 182, baseType: !2052, size: 64, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1550, file: !1519, line: 184, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!22, !654, !1461, !1549, !1689}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1538, file: !1519, line: 90, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1538, file: !1519, line: 91, baseType: !2063, size: 64, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1509, file: !1456, line: 120, baseType: !2065, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2068, !1479}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !154, line: 39, size: 384, elements: !2071)
!2071 = !{!2072, !2073, !2077, !2081, !2089, !2093}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2070, file: !154, line: 40, baseType: !153, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2070, file: !154, line: 41, baseType: !2074, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!839}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2070, file: !154, line: 42, baseType: !2078, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!20}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2070, file: !154, line: 43, baseType: !2082, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2085, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !154, line: 19, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2070, file: !154, line: 44, baseType: !2090, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!2085}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2070, file: !154, line: 45, baseType: !1239, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1509, file: !1456, line: 121, baseType: !2095, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2085, !1479}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1509, file: !1456, line: 122, baseType: !2099, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !1479, !1030, !1031}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1455, file: !1456, line: 70, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2105, line: 190, size: 1152, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2237, !2238, !2239, !2240, !2241, !2244}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2104, file: !2105, line: 191, baseType: !49, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2104, file: !2105, line: 192, baseType: !49, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2104, file: !2105, line: 202, baseType: !2103, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2105, line: 203, baseType: !16, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2104, file: !2105, line: 205, baseType: !370, size: 192, align: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2104, file: !2105, line: 207, baseType: !2085, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2104, file: !2105, line: 208, baseType: !7, size: 32, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !2105, line: 209, baseType: !2115, size: 256, offset: 512)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2104, file: !2105, line: 209, size: 256, elements: !2116)
!2116 = !{!2117, !2126, !2130}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2115, file: !2105, line: 210, baseType: !2118, size: 256)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2105, line: 153, size: 256, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2125}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2118, file: !2105, line: 154, baseType: !39, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2118, file: !2105, line: 156, baseType: !512, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2118, file: !2105, line: 162, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2105, line: 162, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2118, file: !2105, line: 167, baseType: !39, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2115, file: !2105, line: 211, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2105, line: 170, size: 64, elements: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2127, file: !2105, line: 171, baseType: !2103, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2115, file: !2105, line: 212, baseType: !2131, size: 256)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2105, line: 174, size: 256, elements: !2132)
!2132 = !{!2133, !2232, !2235, !2236}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2131, file: !2105, line: 175, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2105, line: 271, size: 768, elements: !2137)
!2137 = !{!2138, !2196, !2200, !2201, !2202, !2203, !2204, !2208, !2209, !2210, !2211, !2228}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2136, file: !2105, line: 276, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!22, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2105, line: 251, size: 1216, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2143, file: !2105, line: 253, baseType: !2103, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2143, file: !2105, line: 254, baseType: !654, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2143, file: !2105, line: 255, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2150, line: 17, size: 960, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2181, !2182, !2185}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2149, file: !2150, line: 18, baseType: !927, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2149, file: !2150, line: 19, baseType: !35, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2149, file: !2150, line: 20, baseType: !35, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2149, file: !2150, line: 21, baseType: !35, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2149, file: !2150, line: 22, baseType: !35, size: 64, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2149, file: !2150, line: 23, baseType: !41, size: 64, offset: 320)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2149, file: !2150, line: 24, baseType: !41, size: 64, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2149, file: !2150, line: 25, baseType: !682, size: 256, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2149, file: !2150, line: 26, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2150, line: 32, size: 256, elements: !2164)
!2164 = !{!2165, !2169, !2173, !2177}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2163, file: !2150, line: 33, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!20, !2148, !40}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2163, file: !2150, line: 34, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !2148, !20}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2163, file: !2150, line: 35, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!20, !2148, !20, !40}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2163, file: !2150, line: 36, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!22, !2148, !20}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2149, file: !2150, line: 27, baseType: !22, size: 32, offset: 768)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2149, file: !2150, line: 28, baseType: !2183, size: 64, offset: 832)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2149, file: !2150, line: 29, baseType: !20, size: 64, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2143, file: !2105, line: 256, baseType: !20, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2143, file: !2105, line: 259, baseType: !682, size: 256, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2143, file: !2105, line: 260, baseType: !682, size: 256, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2143, file: !2105, line: 261, baseType: !22, size: 32, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2143, file: !2105, line: 262, baseType: !97, size: 128, offset: 832)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2143, file: !2105, line: 263, baseType: !927, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2143, file: !2105, line: 265, baseType: !35, size: 64, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2143, file: !2105, line: 266, baseType: !839, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2143, file: !2105, line: 267, baseType: !839, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2143, file: !2105, line: 268, baseType: !1734, size: 64, offset: 1152)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2136, file: !2105, line: 277, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !2142}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2136, file: !2105, line: 290, baseType: !2178, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2136, file: !2105, line: 292, baseType: !2166, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2136, file: !2105, line: 293, baseType: !2174, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2136, file: !2105, line: 294, baseType: !2170, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2136, file: !2105, line: 296, baseType: !2205, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!1360, !2142, !927, !35, !41}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2136, file: !2105, line: 306, baseType: !35, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2136, file: !2105, line: 313, baseType: !839, size: 8, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2136, file: !2105, line: 314, baseType: !2205, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2136, file: !2105, line: 317, baseType: !2212, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!2215, !2142, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2216, line: 59, baseType: !7)
!2216 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2219, line: 37, size: 128, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2220 = !{!2221, !2227}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2218, file: !2219, line: 38, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2219, line: 31, baseType: !2223)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !654, !2226, !2217}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2218, file: !2219, line: 39, baseType: !2215, size: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2136, file: !2105, line: 320, baseType: !2229, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!22, !2142, !1689}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2131, file: !2105, line: 176, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2105, line: 35, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2131, file: !2105, line: 177, baseType: !41, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2131, file: !2105, line: 178, baseType: !2103, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2104, file: !2105, line: 215, baseType: !20, size: 64, offset: 768)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2104, file: !2105, line: 221, baseType: !378, size: 64, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2104, file: !2105, line: 223, baseType: !26, size: 16, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2104, file: !2105, line: 224, baseType: !24, size: 16, offset: 912)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2104, file: !2105, line: 225, baseType: !2242, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2105, line: 36, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2104, file: !2105, line: 227, baseType: !662, size: 128, align: 64, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1455, file: !1456, line: 71, baseType: !2246, size: 32, offset: 448)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2247, line: 19, size: 32, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2248 = !{!2249}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2246, file: !2247, line: 20, baseType: !327, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1455, file: !1456, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1455, file: !1456, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1455, file: !1456, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1455, file: !1456, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1455, file: !1456, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1452, file: !116, line: 47, baseType: !1442, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1452, file: !116, line: 48, baseType: !1461, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1452, file: !116, line: 49, baseType: !2258, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1452, file: !116, line: 50, baseType: !1004, size: 64, offset: 704)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1443, file: !116, line: 418, baseType: !2262, size: 64, offset: 1408)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !2264)
!2264 = !{!2265, !2266, !2271, !2275, !2279, !2283}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2263, file: !116, line: 54, baseType: !1526, size: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2263, file: !116, line: 55, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!1360, !2262, !2270, !927}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2263, file: !116, line: 57, baseType: !2272, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!1360, !2262, !2270, !16, !35}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2263, file: !116, line: 59, baseType: !2276, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !1442, !16}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2263, file: !116, line: 60, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!22, !1442}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2263, file: !116, line: 61, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !1442}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1443, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1443, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1443, file: !116, line: 421, baseType: !1461, size: 64, offset: 1600)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1443, file: !116, line: 424, baseType: !2291, size: 64, offset: 1664)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1443, file: !116, line: 425, baseType: !2295, size: 64, offset: 1728)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1443, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1443, file: !116, line: 435, baseType: !682, size: 256, offset: 1856)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1443, file: !116, line: 437, baseType: !2300, size: 64, offset: 2112)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2302, line: 69, size: 320, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2303 = !{!2304, !2305, !2306, !2323, !2325, !2329, !2330}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2301, file: !2302, line: 70, baseType: !16, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2301, file: !2302, line: 71, baseType: !1442, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2301, file: !2302, line: 72, baseType: !2307, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2302, line: 47, size: 256, elements: !2310)
!2310 = !{!2311, !2312, !2318, !2322}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !2302, line: 49, baseType: !7, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2309, file: !2302, line: 51, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!22, !16, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2309, file: !2302, line: 53, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!22, !927, !2316}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2309, file: !2302, line: 55, baseType: !1239, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2301, file: !2302, line: 73, baseType: !2324, size: 16, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2301, file: !2302, line: 74, baseType: !2326, size: 8, offset: 208)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2328)
!2328 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2301, file: !2302, line: 75, baseType: !83, size: 8, offset: 216)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !2302, line: 76, baseType: !2331, size: 64, offset: 256)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !2302, line: 76, size: 64, elements: !2332)
!2332 = !{!2333, !2334, !2341}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2331, file: !2302, line: 77, baseType: !20, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2331, file: !2302, line: 78, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2302, line: 86, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2337, file: !2302, line: 87, baseType: !7, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2337, file: !2302, line: 88, baseType: !927, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2331, file: !2302, line: 79, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2302, line: 92, size: 256, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2350, !2351}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2344, file: !2302, line: 94, baseType: !7, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2344, file: !2302, line: 95, baseType: !7, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2344, file: !2302, line: 96, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2344, file: !2302, line: 97, baseType: !2307, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2344, file: !2302, line: 98, baseType: !20, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1443, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1443, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1443, file: !116, line: 442, baseType: !2291, size: 64, offset: 2240)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1443, file: !116, line: 443, baseType: !2295, size: 64, offset: 2304)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1443, file: !116, line: 444, baseType: !839, size: 8, offset: 2368)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1443, file: !116, line: 451, baseType: !839, size: 8, offset: 2376)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1443, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1443, file: !116, line: 455, baseType: !2360, size: 64, offset: 2432)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2362, line: 23, size: 96, elements: !2363)
!2362 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2363 = !{!2364, !2365, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2361, file: !2362, line: 24, baseType: !22, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2361, file: !2362, line: 24, baseType: !22, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2361, file: !2362, line: 24, baseType: !22, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1443, file: !116, line: 458, baseType: !2368, size: 64, offset: 2496)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!22}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1443, file: !116, line: 460, baseType: !2372, size: 4032, align: 512, offset: 2560)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2373, size: 4032, elements: !2388)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2373, file: !116, line: 363, baseType: !20, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2373, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2373, file: !116, line: 367, baseType: !2378, size: 448, offset: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2379)
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2378, file: !116, line: 320, baseType: !1442, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2378, file: !116, line: 321, baseType: !2382, size: 384, offset: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2383, line: 40, size: 384, elements: !2384)
!2383 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2382, file: !2383, line: 41, baseType: !2386, size: 384, align: 64)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, align: 64, elements: !2387)
!2387 = !{!297}
!2388 = !{!2389}
!2389 = !DISubrange(count: 7)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1443, file: !116, line: 463, baseType: !2391, size: 192, offset: 6592)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2392, line: 8, size: 192, elements: !2393)
!2392 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2393 = !{!2394, !2395, !2397}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2391, file: !2392, line: 10, baseType: !7, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2391, file: !2392, line: 11, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2391, file: !2392, line: 12, baseType: !2398, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2400, line: 59, size: 48, elements: !2401)
!2400 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2401 = !{!2402, !2405, !2406, !2407, !2408, !2409}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2399, file: !2400, line: 60, baseType: !2403, size: 16)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !887)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2399, file: !2400, line: 61, baseType: !2403, size: 16, offset: 16)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2399, file: !2400, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2399, file: !2400, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2399, file: !2400, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2399, file: !2400, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1443, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1443, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1443, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1443, file: !116, line: 471, baseType: !2414, size: 64, offset: 7040)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2416, line: 33, size: 96, elements: !2417)
!2416 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2415, file: !2416, line: 37, baseType: !22, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2415, file: !2416, line: 43, baseType: !22, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2415, file: !2416, line: 45, baseType: !26, size: 16, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !2416, line: 47, baseType: !26, size: 16, offset: 80)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1443, file: !116, line: 476, baseType: !2423, size: 64, offset: 7104)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2425)
!2425 = !{!2426, !2442, !2443, !2444}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2424, file: !116, line: 379, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2429, line: 204, baseType: !2430)
!2429 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2429, line: 197, size: 192, elements: !2431)
!2431 = !{!2432, !2434, !2435, !2436, !2438, !2440}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2430, file: !2429, line: 198, baseType: !2433, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2429, line: 21, baseType: !322)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2430, file: !2429, line: 199, baseType: !87, size: 8, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2430, file: !2429, line: 200, baseType: !87, size: 8, offset: 40)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2430, file: !2429, line: 201, baseType: !2437, size: 16, offset: 48)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2429, line: 17, baseType: !94)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2430, file: !2429, line: 202, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2429, line: 16, baseType: !379)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2430, file: !2429, line: 203, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2429, line: 22, baseType: !379)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2424, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2424, file: !116, line: 381, baseType: !927, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2424, file: !116, line: 382, baseType: !927, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1443, file: !116, line: 477, baseType: !2424, size: 256, offset: 7168)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1443, file: !116, line: 480, baseType: !2447, size: 64, offset: 7424)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1443, file: !116, line: 483, baseType: !2450, size: 64, offset: 7488)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1443, file: !116, line: 488, baseType: !927, size: 64, offset: 7552)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1443, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1443, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1443, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1443, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1443, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1443, file: !116, line: 500, baseType: !2459, size: 64, offset: 7872)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2461, line: 45, baseType: !2462)
!2461 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1443, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1443, file: !116, line: 504, baseType: !2465, size: 64, offset: 8000)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2468, line: 96, size: 192, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2469 = !{!2470, !2471, !2524, !2527}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2467, file: !2468, line: 97, baseType: !7, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2467, file: !2468, line: 98, baseType: !2472, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2468, line: 24, size: 3072, elements: !2474)
!2474 = !{!2475, !2477, !2478, !2479, !2480, !2493, !2494, !2495, !2496, !2508, !2509, !2510, !2521, !2522, !2523}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2473, file: !2468, line: 26, baseType: !2476, size: 128)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 128, elements: !2387)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2473, file: !2468, line: 27, baseType: !2476, size: 128, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2473, file: !2468, line: 28, baseType: !22, size: 32, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2473, file: !2468, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2473, file: !2468, line: 32, baseType: !2481, size: 960, offset: 576)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2482, line: 206, size: 960, elements: !2483)
!2482 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2483 = !{!2484, !2485, !2488, !2490, !2491, !2492}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2481, file: !2482, line: 207, baseType: !665, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2481, file: !2482, line: 208, baseType: !2486, size: 256, offset: 64)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2487, size: 256, elements: !739)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2481, file: !2482, line: 209, baseType: !2489, size: 256, offset: 320)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !739)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2481, file: !2482, line: 213, baseType: !290, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2481, file: !2482, line: 215, baseType: !1065, size: 256, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !2482, line: 216, baseType: !83, size: 8, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2473, file: !2468, line: 33, baseType: !39, size: 64, offset: 1536)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2473, file: !2468, line: 34, baseType: !39, size: 64, offset: 1600)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2473, file: !2468, line: 35, baseType: !839, size: 8, offset: 1664)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2473, file: !2468, line: 36, baseType: !2497, size: 320, offset: 1728)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2498, line: 11, size: 320, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2499 = !{!2500, !2501, !2502, !2507}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2497, file: !2498, line: 16, baseType: !734, size: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2497, file: !2498, line: 17, baseType: !39, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2497, file: !2498, line: 18, baseType: !2503, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2497, file: !2498, line: 19, baseType: !321, size: 32, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2473, file: !2468, line: 37, baseType: !966, size: 256, offset: 2048)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2473, file: !2468, line: 38, baseType: !662, size: 128, align: 64, offset: 2304)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2473, file: !2468, line: 39, baseType: !2511, size: 64, offset: 2432)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2468, line: 49, size: 768, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2512, file: !2468, line: 50, baseType: !59, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2512, file: !2468, line: 51, baseType: !2489, size: 256, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2512, file: !2468, line: 53, baseType: !2489, size: 256, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2512, file: !2468, line: 54, baseType: !39, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2512, file: !2468, line: 55, baseType: !2511, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2512, file: !2468, line: 56, baseType: !22, size: 32, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2512, file: !2468, line: 57, baseType: !22, size: 32, offset: 736)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2473, file: !2468, line: 40, baseType: !39, size: 64, offset: 2496)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2473, file: !2468, line: 42, baseType: !22, size: 32, offset: 2560)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2473, file: !2468, line: 43, baseType: !2466, size: 64, offset: 2624)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2467, file: !2468, line: 99, baseType: !2525, offset: 128)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2526, line: 211, elements: !647)
!2526 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2467, file: !2468, line: 100, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2468, line: 63, size: 3008, elements: !2530)
!2530 = !{!2531, !2532, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2562}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2529, file: !2468, line: 64, baseType: !2511, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2529, file: !2468, line: 65, baseType: !2533, size: 192, offset: 64)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2511, size: 192, elements: !718)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2529, file: !2468, line: 67, baseType: !22, size: 32, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2529, file: !2468, line: 68, baseType: !682, size: 256, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2529, file: !2468, line: 69, baseType: !59, size: 32, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2529, file: !2468, line: 70, baseType: !682, size: 256, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2529, file: !2468, line: 71, baseType: !39, size: 64, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2529, file: !2468, line: 72, baseType: !39, size: 64, offset: 960)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2529, file: !2468, line: 73, baseType: !39, size: 64, offset: 1024)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2529, file: !2468, line: 74, baseType: !39, size: 64, offset: 1088)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2529, file: !2468, line: 75, baseType: !39, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2529, file: !2468, line: 76, baseType: !39, size: 64, offset: 1216)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2529, file: !2468, line: 77, baseType: !39, size: 64, offset: 1280)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2529, file: !2468, line: 78, baseType: !39, size: 64, offset: 1344)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2529, file: !2468, line: 79, baseType: !839, size: 8, offset: 1408)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2529, file: !2468, line: 80, baseType: !39, size: 64, offset: 1472)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2529, file: !2468, line: 81, baseType: !682, size: 256, offset: 1536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2529, file: !2468, line: 82, baseType: !1005, size: 256, offset: 1792)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2529, file: !2468, line: 84, baseType: !49, size: 32, offset: 2048)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2529, file: !2468, line: 87, baseType: !39, size: 64, offset: 2112)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2529, file: !2468, line: 88, baseType: !39, size: 64, offset: 2176)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2529, file: !2468, line: 89, baseType: !2554, size: 704, offset: 2240)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !967, line: 111, size: 704, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2561}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2554, file: !967, line: 112, baseType: !966, size: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2554, file: !967, line: 113, baseType: !2497, size: 320, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2554, file: !967, line: 116, baseType: !2559, size: 64, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !967, line: 18, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2554, file: !967, line: 117, baseType: !22, size: 32, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2529, file: !2468, line: 90, baseType: !2466, size: 64, offset: 2944)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1443, file: !116, line: 515, baseType: !2564, size: 64, offset: 8064)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2566, line: 117, size: 128, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2567 = !{!2568, !2569, !2570}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2565, file: !2566, line: 118, baseType: !851, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2565, file: !2566, line: 119, baseType: !851, size: 32, offset: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2565, file: !2566, line: 120, baseType: !290, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1443, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1443, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1443, file: !116, line: 520, baseType: !2574, size: 64, offset: 8192)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1443, file: !116, line: 523, baseType: !2576, size: 64, offset: 8256)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !160, line: 372, size: 1024, elements: !2579)
!2579 = !{!2580, !2581, !2621, !2681, !2762, !2763, !2766, !2771, !2772, !2773, !2774, !2776, !2779}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2578, file: !160, line: 373, baseType: !97, size: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2578, file: !160, line: 374, baseType: !2582, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !160, line: 291, size: 576, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588, !2592, !2615, !2619, !2620}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2583, file: !160, line: 292, baseType: !16, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2583, file: !160, line: 293, baseType: !20, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2583, file: !160, line: 295, baseType: !20, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2583, file: !160, line: 297, baseType: !2589, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!22, !2577, !159, !20}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2583, file: !160, line: 299, baseType: !2593, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !160, line: 275, size: 320, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2594, file: !160, line: 276, baseType: !16, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !160, line: 277, baseType: !2598, size: 256, offset: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2594, file: !160, line: 277, size: 256, elements: !2599)
!2599 = !{!2600, !2611}
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2598, file: !160, line: 278, baseType: !2601, size: 256)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !160, line: 278, size: 256, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2608, !2609, !2610}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2601, file: !160, line: 279, baseType: !16, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2601, file: !160, line: 280, baseType: !2462, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2601, file: !160, line: 281, baseType: !2462, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2601, file: !160, line: 282, baseType: !2607, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2601, file: !160, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2601, file: !160, line: 284, baseType: !2462, size: 32, offset: 160)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2601, file: !160, line: 285, baseType: !2462, size: 32, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2598, file: !160, line: 287, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!22, !2577}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2583, file: !160, line: 300, baseType: !2616, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!100, !2577}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2583, file: !160, line: 301, baseType: !97, size: 128, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2583, file: !160, line: 302, baseType: !2612, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !160, line: 375, baseType: !2622, size: 64, offset: 192)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !160, line: 375, size: 64, elements: !2623)
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2622, file: !160, line: 376, baseType: !16, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2622, file: !160, line: 378, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2461, line: 32, size: 640, elements: !2628)
!2628 = !{!2629, !2630, !2642, !2666, !2667, !2668, !2669, !2670, !2674}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2627, file: !2461, line: 33, baseType: !16, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2627, file: !2461, line: 34, baseType: !2631, size: 128, offset: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2566, line: 85, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2631, file: !2566, line: 86, baseType: !49, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2631, file: !2566, line: 101, baseType: !2635, size: 64, offset: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2631, file: !2566, line: 101, size: 64, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2635, file: !2566, line: 102, baseType: !39, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2635, file: !2566, line: 103, baseType: !2564, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2635, file: !2566, line: 104, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2566, line: 104, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2627, file: !2461, line: 35, baseType: !2643, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2645, line: 61, size: 128, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2644, file: !2645, line: 62, baseType: !20, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !2645, line: 63, baseType: !2649, size: 64, offset: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !2645, line: 63, size: 64, elements: !2650)
!2650 = !{!2651, !2652, !2665}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2649, file: !2645, line: 65, baseType: !39, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2649, file: !2645, line: 66, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2655, line: 169, size: 192, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2656 = !{!2657, !2658, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2654, file: !2655, line: 170, baseType: !2653, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2654, file: !2655, line: 171, baseType: !1442, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2654, file: !2655, line: 172, baseType: !2660, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2645, line: 32, size: 64, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2661, file: !2645, line: 33, baseType: !851, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2661, file: !2645, line: 34, baseType: !851, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2649, file: !2645, line: 67, baseType: !2660, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2627, file: !2461, line: 36, baseType: !20, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2627, file: !2461, line: 37, baseType: !20, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2627, file: !2461, line: 38, baseType: !20, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2627, file: !2461, line: 39, baseType: !2368, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2627, file: !2461, line: 40, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2627, file: !2461, line: 41, baseType: !2675, size: 64, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2461, line: 26, size: 192, elements: !2677)
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2676, file: !2461, line: 27, baseType: !20, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2676, file: !2461, line: 28, baseType: !20, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2676, file: !2461, line: 29, baseType: !22, size: 32, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2578, file: !160, line: 380, baseType: !2682, size: 256, offset: 256)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !160, line: 148, size: 256, elements: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2682, file: !160, line: 149, baseType: !734, size: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !160, line: 150, baseType: !22, size: 32, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2682, file: !160, line: 151, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !160, line: 141, size: 256, elements: !2689)
!2689 = !{!2690, !2759, !2760, !2761}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2688, file: !160, line: 142, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !160, line: 138, baseType: !2692)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!170, !2695, !22, !2758}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !160, line: 93, size: 67776, elements: !2697)
!2697 = !{!2698, !2701, !2704, !2707, !2708, !2709, !2710, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2738, !2741, !2742, !2743, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2696, file: !160, line: 94, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !160, line: 13, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2696, file: !160, line: 95, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !160, line: 15, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2696, file: !160, line: 96, baseType: !2705, size: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !160, line: 14, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2696, file: !160, line: 97, baseType: !20, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2696, file: !160, line: 98, baseType: !22, size: 32, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2696, file: !160, line: 99, baseType: !682, size: 256, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2696, file: !160, line: 100, baseType: !2711, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2714, line: 10, flags: DIFlagFwdDecl)
!2714 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2696, file: !160, line: 101, baseType: !39, size: 64, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2696, file: !160, line: 102, baseType: !20, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2696, file: !160, line: 103, baseType: !7, size: 32, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2696, file: !160, line: 104, baseType: !927, size: 64, offset: 832)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2696, file: !160, line: 105, baseType: !7, size: 32, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2696, file: !160, line: 106, baseType: !290, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2696, file: !160, line: 109, baseType: !2722, size: 33088, offset: 1024)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2723, line: 14, size: 33088, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2724 = !{!2725, !2729, !2736, !2737}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2722, file: !2723, line: 15, baseType: !2726, size: 32768)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !2727)
!2727 = !{!2728}
!2728 = !DISubrange(count: 4096)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2722, file: !2723, line: 16, baseType: !2730, size: 192, offset: 32768)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2731, line: 18, size: 192, elements: !2732)
!2731 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2732 = !{!2733, !2734, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2730, file: !2731, line: 19, baseType: !927, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2730, file: !2731, line: 20, baseType: !35, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2730, file: !2731, line: 21, baseType: !35, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2722, file: !2723, line: 17, baseType: !35, size: 64, offset: 32960)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2722, file: !2723, line: 18, baseType: !22, size: 32, offset: 33024)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2696, file: !160, line: 111, baseType: !2739, size: 64, offset: 34112)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !573, line: 913, baseType: !2740)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 64, elements: !578)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2696, file: !160, line: 114, baseType: !839, size: 8, offset: 34176)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2696, file: !160, line: 117, baseType: !2722, size: 33088, offset: 34240)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2696, file: !160, line: 118, baseType: !2744, size: 64, offset: 67328)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !160, line: 79, size: 64, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2745, file: !160, line: 80, baseType: !26, size: 16)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !160, line: 81, baseType: !87, size: 8, offset: 16)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2745, file: !160, line: 82, baseType: !87, size: 8, offset: 24)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2745, file: !160, line: 83, baseType: !22, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2696, file: !160, line: 119, baseType: !39, size: 64, offset: 67392)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2696, file: !160, line: 120, baseType: !22, size: 32, offset: 67456)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2696, file: !160, line: 121, baseType: !22, size: 32, offset: 67488)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2696, file: !160, line: 122, baseType: !22, size: 32, offset: 67520)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2696, file: !160, line: 123, baseType: !378, size: 64, offset: 67584)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2696, file: !160, line: 125, baseType: !41, size: 64, offset: 67648)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2696, file: !160, line: 126, baseType: !290, size: 64, offset: 67712)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2688, file: !160, line: 143, baseType: !2691, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2688, file: !160, line: 144, baseType: !2691, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2688, file: !160, line: 145, baseType: !2691, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2578, file: !160, line: 381, baseType: !927, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2578, file: !160, line: 382, baseType: !2764, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !230, line: 821, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !160, line: 387, baseType: !2767, size: 64, offset: 640)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !160, line: 387, size: 64, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2767, file: !160, line: 388, baseType: !20, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2767, file: !160, line: 389, baseType: !49, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2578, file: !160, line: 391, baseType: !20, size: 64, offset: 704)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2578, file: !160, line: 394, baseType: !22, size: 32, offset: 768)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2578, file: !160, line: 397, baseType: !22, size: 32, offset: 800)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2578, file: !160, line: 398, baseType: !2775, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2578, file: !160, line: 399, baseType: !2777, size: 64, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !160, line: 399, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2578, file: !160, line: 401, baseType: !2780, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!22, !2577, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !230, line: 671, size: 8512, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !3318, !3319, !3320, !3321, !3327, !3328, !3329, !3330, !3331, !3415, !3416, !3417, !3418, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3538, !3539, !3540, !3541, !3542, !3543, !3558, !3559, !3560, !3561, !3562, !3568, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3585, !3756, !3757, !3758, !3759, !4027, !4028, !4029}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2784, file: !230, line: 678, baseType: !97, size: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2784, file: !230, line: 684, baseType: !97, size: 128, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2784, file: !230, line: 685, baseType: !97, size: 128, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2784, file: !230, line: 689, baseType: !370, size: 192, align: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2784, file: !230, line: 690, baseType: !378, size: 64, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2784, file: !230, line: 696, baseType: !97, size: 128, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2784, file: !230, line: 698, baseType: !734, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2784, file: !230, line: 699, baseType: !97, size: 128, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2784, file: !230, line: 700, baseType: !22, size: 32, offset: 1024)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2784, file: !230, line: 703, baseType: !22, size: 32, offset: 1056)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2784, file: !230, line: 705, baseType: !22, size: 32, offset: 1088)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2784, file: !230, line: 707, baseType: !7, size: 32, offset: 1120)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2784, file: !230, line: 708, baseType: !2783, size: 64, offset: 1152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2784, file: !230, line: 714, baseType: !2800, size: 64, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !230, line: 302, size: 2432, elements: !2802)
!2802 = !{!2803, !2804, !2805, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3228, !3229, !3230, !3231, !3232, !3236, !3237, !3241, !3245, !3246, !3250, !3254, !3255, !3256, !3260, !3264, !3268, !3269, !3270, !3274, !3275, !3279, !3283, !3284, !3304, !3308, !3309, !3310, !3314}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2801, file: !230, line: 303, baseType: !97, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2801, file: !230, line: 305, baseType: !1442, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2801, file: !230, line: 306, baseType: !2806, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !183, line: 705, size: 5824, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2814, !2815, !2868, !2938, !2939, !2940, !2941, !2942, !2949, !3041, !3054, !3064, !3068, !3070, !3071, !3072, !3076, !3083, !3084, !3087, !3090, !3094, !3097, !3098, !3099, !3100, !3101, !3102, !3132, !3133, !3134, !3137, !3140, !3149, !3150, !3151, !3152, !3153, !3154}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2807, file: !183, line: 706, baseType: !1455, size: 512)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2807, file: !183, line: 707, baseType: !2806, size: 64, offset: 512)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2807, file: !183, line: 709, baseType: !2812, size: 64, offset: 576)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !183, line: 37, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2807, file: !183, line: 711, baseType: !16, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2807, file: !183, line: 712, baseType: !2816, size: 64, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !183, line: 89, size: 384, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2828, !2833, !2837}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2818, file: !183, line: 90, baseType: !16, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2818, file: !183, line: 91, baseType: !1535, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2818, file: !183, line: 92, baseType: !2823, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!22, !2826, !1491}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2807)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2818, file: !183, line: 93, baseType: !2829, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!927, !2826, !2832, !1030, !1031}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2818, file: !183, line: 95, baseType: !2834, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{null, !2806}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2818, file: !183, line: 97, baseType: !2838, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2840)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !190, line: 286, size: 1472, elements: !2841)
!2841 = !{!2842, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2840, file: !190, line: 287, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!22, !2806}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2840, file: !190, line: 288, baseType: !2834, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2840, file: !190, line: 289, baseType: !2843, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2840, file: !190, line: 290, baseType: !2843, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2840, file: !190, line: 291, baseType: !2843, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2840, file: !190, line: 292, baseType: !2843, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2840, file: !190, line: 293, baseType: !2843, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2840, file: !190, line: 294, baseType: !2843, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2840, file: !190, line: 295, baseType: !2843, size: 64, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2840, file: !190, line: 296, baseType: !2843, size: 64, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2840, file: !190, line: 297, baseType: !2843, size: 64, offset: 640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2840, file: !190, line: 298, baseType: !2843, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2840, file: !190, line: 299, baseType: !2843, size: 64, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2840, file: !190, line: 300, baseType: !2843, size: 64, offset: 832)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2840, file: !190, line: 301, baseType: !2843, size: 64, offset: 896)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2840, file: !190, line: 302, baseType: !2843, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2840, file: !190, line: 303, baseType: !2843, size: 64, offset: 1024)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2840, file: !190, line: 304, baseType: !2843, size: 64, offset: 1088)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2840, file: !190, line: 305, baseType: !2843, size: 64, offset: 1152)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2840, file: !190, line: 306, baseType: !2843, size: 64, offset: 1216)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2840, file: !190, line: 307, baseType: !2843, size: 64, offset: 1280)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2840, file: !190, line: 308, baseType: !2843, size: 64, offset: 1344)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2840, file: !190, line: 309, baseType: !2843, size: 64, offset: 1408)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2807, file: !183, line: 714, baseType: !2869, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2871)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2872, line: 80, size: 1344, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2937}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2871, file: !2872, line: 81, baseType: !16, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2871, file: !2872, line: 82, baseType: !16, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2871, file: !2872, line: 83, baseType: !1535, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2871, file: !2872, line: 84, baseType: !1535, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2871, file: !2872, line: 85, baseType: !1535, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2871, file: !2872, line: 87, baseType: !2880, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!22, !2806, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !177, line: 96, size: 1152, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2896, !2900, !2901, !2902, !2903, !2904, !2912, !2913, !2914, !2915, !2916, !2917}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2884, file: !177, line: 97, baseType: !16, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2884, file: !177, line: 98, baseType: !2869, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2884, file: !177, line: 100, baseType: !1442, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2884, file: !177, line: 101, baseType: !16, size: 64, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2884, file: !177, line: 103, baseType: !839, size: 8, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2884, file: !177, line: 104, baseType: !176, size: 32, offset: 288)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2884, file: !177, line: 106, baseType: !2893, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !177, line: 106, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2884, file: !177, line: 107, baseType: !2897, size: 64, offset: 384)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2899)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !177, line: 107, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2884, file: !177, line: 109, baseType: !2843, size: 64, offset: 448)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2884, file: !177, line: 110, baseType: !2834, size: 64, offset: 512)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2884, file: !177, line: 111, baseType: !2843, size: 64, offset: 576)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2884, file: !177, line: 112, baseType: !2834, size: 64, offset: 640)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2884, file: !177, line: 113, baseType: !2905, size: 64, offset: 704)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!22, !2806, !2908}
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !190, line: 60, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !190, line: 58, size: 32, elements: !2910)
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2909, file: !190, line: 59, baseType: !22, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2884, file: !177, line: 114, baseType: !2843, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2884, file: !177, line: 115, baseType: !1535, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2884, file: !177, line: 116, baseType: !1535, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2884, file: !177, line: 118, baseType: !2838, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2884, file: !177, line: 119, baseType: !2834, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2884, file: !177, line: 121, baseType: !2918, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !177, line: 121, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2871, file: !2872, line: 88, baseType: !2823, size: 64, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2871, file: !2872, line: 89, baseType: !2843, size: 64, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2871, file: !2872, line: 90, baseType: !2834, size: 64, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2871, file: !2872, line: 91, baseType: !2834, size: 64, offset: 576)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2871, file: !2872, line: 92, baseType: !2834, size: 64, offset: 640)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2871, file: !2872, line: 94, baseType: !2843, size: 64, offset: 704)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2871, file: !2872, line: 95, baseType: !2843, size: 64, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2871, file: !2872, line: 97, baseType: !2905, size: 64, offset: 832)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2871, file: !2872, line: 98, baseType: !2843, size: 64, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2871, file: !2872, line: 100, baseType: !2843, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2871, file: !2872, line: 102, baseType: !2843, size: 64, offset: 1024)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2871, file: !2872, line: 103, baseType: !2834, size: 64, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2871, file: !2872, line: 105, baseType: !2838, size: 64, offset: 1152)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2871, file: !2872, line: 107, baseType: !2934, size: 64, offset: 1216)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2872, line: 107, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2871, file: !2872, line: 109, baseType: !839, size: 8, offset: 1280)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2807, file: !183, line: 715, baseType: !2883, size: 64, offset: 832)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2807, file: !183, line: 717, baseType: !20, size: 64, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2807, file: !183, line: 719, baseType: !20, size: 64, offset: 960)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2807, file: !183, line: 721, baseType: !682, size: 256, offset: 1024)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2807, file: !183, line: 725, baseType: !2943, size: 448, offset: 1280)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !183, line: 517, size: 448, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2943, file: !183, line: 518, baseType: !97, size: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2943, file: !183, line: 519, baseType: !97, size: 128, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2943, file: !183, line: 520, baseType: !97, size: 128, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2943, file: !183, line: 521, baseType: !182, size: 32, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2807, file: !183, line: 726, baseType: !2950, size: 2496, offset: 1728)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !190, line: 663, size: 2496, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3034, !3038}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2950, file: !190, line: 664, baseType: !2908, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2950, file: !190, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2950, file: !190, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2950, file: !190, line: 667, baseType: !839, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2950, file: !190, line: 668, baseType: !839, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2950, file: !190, line: 669, baseType: !839, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2950, file: !190, line: 670, baseType: !839, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2950, file: !190, line: 671, baseType: !839, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2950, file: !190, line: 672, baseType: !839, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2950, file: !190, line: 673, baseType: !839, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2950, file: !190, line: 674, baseType: !839, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2950, file: !190, line: 675, baseType: !321, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2950, file: !190, line: 676, baseType: !59, size: 32, offset: 96)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2950, file: !190, line: 678, baseType: !97, size: 128, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2950, file: !190, line: 679, baseType: !1005, size: 256, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2950, file: !190, line: 680, baseType: !2968, size: 64, offset: 512)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2970, line: 43, size: 1536, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2969, file: !2970, line: 44, baseType: !16, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2969, file: !2970, line: 45, baseType: !22, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2969, file: !2970, line: 46, baseType: !97, size: 128, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2969, file: !2970, line: 47, baseType: !59, size: 32, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2969, file: !2970, line: 48, baseType: !2977, size: 64, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !190, line: 629, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2969, file: !2970, line: 49, baseType: !2497, size: 320, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2969, file: !2970, line: 50, baseType: !39, size: 64, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2969, file: !2970, line: 51, baseType: !453, size: 64, offset: 768)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2969, file: !2970, line: 52, baseType: !453, size: 64, offset: 832)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2969, file: !2970, line: 53, baseType: !453, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2969, file: !2970, line: 54, baseType: !453, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2969, file: !2970, line: 55, baseType: !453, size: 64, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2969, file: !2970, line: 56, baseType: !39, size: 64, offset: 1088)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2969, file: !2970, line: 57, baseType: !39, size: 64, offset: 1152)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2969, file: !2970, line: 58, baseType: !39, size: 64, offset: 1216)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2969, file: !2970, line: 59, baseType: !39, size: 64, offset: 1280)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2969, file: !2970, line: 60, baseType: !39, size: 64, offset: 1344)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2969, file: !2970, line: 61, baseType: !2806, size: 64, offset: 1408)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2969, file: !2970, line: 62, baseType: !839, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2969, file: !2970, line: 63, baseType: !839, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2950, file: !190, line: 681, baseType: !839, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2950, file: !190, line: 682, baseType: !839, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2950, file: !190, line: 683, baseType: !839, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2950, file: !190, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2950, file: !190, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2950, file: !190, line: 690, baseType: !445, size: 512, offset: 640)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2950, file: !190, line: 691, baseType: !378, size: 64, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2950, file: !190, line: 692, baseType: !966, size: 256, offset: 1216)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2950, file: !190, line: 693, baseType: !54, size: 192, offset: 1472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2950, file: !190, line: 694, baseType: !2977, size: 64, offset: 1664)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2950, file: !190, line: 695, baseType: !49, size: 32, offset: 1728)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2950, file: !190, line: 696, baseType: !49, size: 32, offset: 1760)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2950, file: !190, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2950, file: !190, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2950, file: !190, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2950, file: !190, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2950, file: !190, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2950, file: !190, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2950, file: !190, line: 703, baseType: !839, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2950, file: !190, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2950, file: !190, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2950, file: !190, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2950, file: !190, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2950, file: !190, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2950, file: !190, line: 709, baseType: !7, size: 32, offset: 1824)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2950, file: !190, line: 710, baseType: !189, size: 32, offset: 1856)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2950, file: !190, line: 711, baseType: !197, size: 32, offset: 1888)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2950, file: !190, line: 712, baseType: !197, size: 32, offset: 1920)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2950, file: !190, line: 713, baseType: !22, size: 32, offset: 1952)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2950, file: !190, line: 714, baseType: !22, size: 32, offset: 1984)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2950, file: !190, line: 715, baseType: !378, size: 64, offset: 2048)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2950, file: !190, line: 716, baseType: !378, size: 64, offset: 2112)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2950, file: !190, line: 717, baseType: !378, size: 64, offset: 2176)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2950, file: !190, line: 718, baseType: !378, size: 64, offset: 2240)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2950, file: !190, line: 720, baseType: !3029, size: 64, offset: 2304)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !190, line: 632, size: 64, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3030, file: !190, line: 633, baseType: !59, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3030, file: !190, line: 634, baseType: !7, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2950, file: !190, line: 721, baseType: !3035, size: 64, offset: 2368)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !2806, !851}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2950, file: !190, line: 722, baseType: !3039, size: 64, offset: 2432)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !190, line: 722, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2807, file: !183, line: 727, baseType: !3042, size: 64, offset: 4224)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !190, line: 742, size: 1792, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3051, !3052, !3053}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3043, file: !190, line: 743, baseType: !2840, size: 1472)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3043, file: !190, line: 744, baseType: !2843, size: 64, offset: 1472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3043, file: !190, line: 745, baseType: !3048, size: 64, offset: 1536)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2806, !839}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3043, file: !190, line: 746, baseType: !2843, size: 64, offset: 1600)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3043, file: !190, line: 747, baseType: !2834, size: 64, offset: 1664)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3043, file: !190, line: 748, baseType: !2834, size: 64, offset: 1728)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2807, file: !183, line: 736, baseType: !3055, size: 128, offset: 4288)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !183, line: 529, size: 128, elements: !3056)
!3056 = !{!3057, !3061}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3055, file: !183, line: 531, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3060, line: 13, flags: DIFlagFwdDecl)
!3060 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3055, file: !183, line: 532, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !183, line: 49, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2807, file: !183, line: 738, baseType: !3065, size: 64, offset: 4416)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !183, line: 738, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2807, file: !183, line: 740, baseType: !3069, size: 64, offset: 4480)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2807, file: !183, line: 741, baseType: !378, size: 64, offset: 4544)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2807, file: !183, line: 746, baseType: !378, size: 64, offset: 4608)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2807, file: !183, line: 747, baseType: !3073, size: 64, offset: 4672)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3075)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !183, line: 747, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2807, file: !183, line: 749, baseType: !3077, size: 64, offset: 4736)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !183, line: 428, size: 128, elements: !3079)
!3079 = !{!3080, !3081, !3082}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3078, file: !183, line: 433, baseType: !7, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3078, file: !183, line: 434, baseType: !7, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3078, file: !183, line: 435, baseType: !39, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2807, file: !183, line: 751, baseType: !97, size: 128, offset: 4800)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2807, file: !183, line: 762, baseType: !3085, size: 64, offset: 4928)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !183, line: 762, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2807, file: !183, line: 770, baseType: !3088, offset: 4992)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3089, line: 5, elements: !647)
!3089 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2807, file: !183, line: 772, baseType: !3091, size: 64, offset: 4992)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3093, line: 18, flags: DIFlagFwdDecl)
!3093 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2807, file: !183, line: 773, baseType: !3095, size: 64, offset: 5056)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2872, line: 22, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2807, file: !183, line: 776, baseType: !22, size: 32, offset: 5120)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2807, file: !183, line: 778, baseType: !1282, size: 32, offset: 5152)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2807, file: !183, line: 779, baseType: !321, size: 32, offset: 5184)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2807, file: !183, line: 781, baseType: !59, size: 32, offset: 5216)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2807, file: !183, line: 782, baseType: !97, size: 128, offset: 5248)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2807, file: !183, line: 784, baseType: !3103, size: 64, offset: 5376)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3106, line: 52, size: 768, elements: !3107)
!3106 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3116, !3120, !3121, !3122, !3123, !3127, !3131}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3105, file: !3106, line: 53, baseType: !16, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3105, file: !3106, line: 55, baseType: !1535, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3105, file: !3106, line: 56, baseType: !1535, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3105, file: !3106, line: 58, baseType: !2823, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3105, file: !3106, line: 59, baseType: !3113, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!927, !2826, !2832}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3105, file: !3106, line: 61, baseType: !3117, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !3103}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3105, file: !3106, line: 62, baseType: !2834, size: 64, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3105, file: !3106, line: 64, baseType: !2843, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3105, file: !3106, line: 66, baseType: !2068, size: 64, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3105, file: !3106, line: 67, baseType: !3124, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!2085, !2826}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3105, file: !3106, line: 69, baseType: !3128, size: 64, offset: 640)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !2826, !1030, !1031}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3105, file: !3106, line: 71, baseType: !2838, size: 64, offset: 704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2807, file: !183, line: 785, baseType: !1535, size: 64, offset: 5440)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2807, file: !183, line: 787, baseType: !2834, size: 64, offset: 5504)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2807, file: !183, line: 788, baseType: !3135, size: 64, offset: 5568)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !183, line: 46, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2807, file: !183, line: 789, baseType: !3138, size: 64, offset: 5632)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !183, line: 48, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2807, file: !183, line: 791, baseType: !3141, size: 64, offset: 5696)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !183, line: 597, size: 128, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3142, file: !183, line: 598, baseType: !204, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3142, file: !183, line: 599, baseType: !213, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3142, file: !183, line: 600, baseType: !218, size: 32, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3142, file: !183, line: 601, baseType: !839, size: 8, offset: 96)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3142, file: !183, line: 602, baseType: !839, size: 8, offset: 104)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2807, file: !183, line: 793, baseType: !223, size: 32, offset: 5760)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2807, file: !183, line: 795, baseType: !839, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2807, file: !183, line: 796, baseType: !839, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2807, file: !183, line: 797, baseType: !839, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2807, file: !183, line: 798, baseType: !839, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2807, file: !183, line: 799, baseType: !839, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2801, file: !230, line: 307, baseType: !2806, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2801, file: !230, line: 308, baseType: !1535, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2801, file: !230, line: 309, baseType: !1535, size: 64, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2801, file: !230, line: 310, baseType: !16, size: 64, offset: 448)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2801, file: !230, line: 311, baseType: !22, size: 32, offset: 512)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2801, file: !230, line: 316, baseType: !22, size: 32, offset: 544)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2801, file: !230, line: 318, baseType: !2396, size: 64, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2801, file: !230, line: 319, baseType: !3163, size: 64, offset: 640)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !230, line: 977, size: 1856, elements: !3165)
!3165 = !{!3166, !3218, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3164, file: !230, line: 978, baseType: !3167, size: 896)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !230, line: 873, size: 896, elements: !3168)
!3168 = !{!3169, !3170, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3167, file: !230, line: 874, baseType: !2800, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3167, file: !230, line: 875, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !230, line: 912, size: 1792, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3172, file: !230, line: 917, baseType: !470, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3172, file: !230, line: 923, baseType: !682, size: 256, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3172, file: !230, line: 925, baseType: !97, size: 128, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3172, file: !230, line: 926, baseType: !3178, size: 128, offset: 448)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !230, line: 901, size: 128, elements: !3179)
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3178, file: !230, line: 902, baseType: !512, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3178, file: !230, line: 903, baseType: !378, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3172, file: !230, line: 927, baseType: !3178, size: 128, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3172, file: !230, line: 928, baseType: !97, size: 128, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3172, file: !230, line: 930, baseType: !22, size: 32, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3172, file: !230, line: 931, baseType: !22, size: 32, offset: 864)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3172, file: !230, line: 932, baseType: !22, size: 32, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3172, file: !230, line: 934, baseType: !22, size: 32, offset: 928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3172, file: !230, line: 935, baseType: !22, size: 32, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3172, file: !230, line: 936, baseType: !22, size: 32, offset: 992)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3172, file: !230, line: 937, baseType: !22, size: 32, offset: 1024)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3172, file: !230, line: 939, baseType: !327, size: 32, offset: 1056)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3172, file: !230, line: 940, baseType: !310, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3172, file: !230, line: 945, baseType: !378, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3172, file: !230, line: 946, baseType: !378, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3172, file: !230, line: 947, baseType: !378, size: 64, offset: 1280)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3172, file: !230, line: 953, baseType: !3171, size: 64, offset: 1344)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3172, file: !230, line: 954, baseType: !378, size: 64, offset: 1408)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3172, file: !230, line: 955, baseType: !378, size: 64, offset: 1472)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3172, file: !230, line: 956, baseType: !22, size: 32, offset: 1536)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3172, file: !230, line: 958, baseType: !22, size: 32, offset: 1568)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3172, file: !230, line: 960, baseType: !662, size: 128, align: 64, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3172, file: !230, line: 968, baseType: !3203, size: 64, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3204, line: 12, baseType: !3205)
!3204 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3204, line: 10, size: 64, elements: !3206)
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3205, file: !3204, line: 11, baseType: !675, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3167, file: !230, line: 877, baseType: !97, size: 128, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3167, file: !230, line: 879, baseType: !97, size: 128, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3167, file: !230, line: 880, baseType: !97, size: 128, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3167, file: !230, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3167, file: !230, line: 885, baseType: !7, size: 32, offset: 544)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3167, file: !230, line: 886, baseType: !7, size: 32, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3167, file: !230, line: 888, baseType: !49, size: 32, offset: 608)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3167, file: !230, line: 889, baseType: !662, size: 128, align: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3167, file: !230, line: 891, baseType: !20, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3167, file: !230, line: 898, baseType: !22, size: 32, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3164, file: !230, line: 979, baseType: !3219, size: 64, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3164, file: !230, line: 981, baseType: !97, size: 128, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3164, file: !230, line: 982, baseType: !22, size: 32, offset: 1088)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3164, file: !230, line: 984, baseType: !22, size: 32, offset: 1120)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3164, file: !230, line: 985, baseType: !22, size: 32, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3164, file: !230, line: 987, baseType: !470, size: 32, offset: 1184)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3164, file: !230, line: 988, baseType: !445, size: 512, offset: 1216)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3164, file: !230, line: 989, baseType: !453, size: 64, offset: 1728)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3164, file: !230, line: 990, baseType: !7, size: 32, offset: 1792)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2801, file: !230, line: 320, baseType: !49, size: 32, offset: 704)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2801, file: !230, line: 321, baseType: !22, size: 32, offset: 736)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2801, file: !230, line: 322, baseType: !22, size: 32, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2801, file: !230, line: 325, baseType: !7, size: 32, offset: 800)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2801, file: !230, line: 331, baseType: !3233, size: 64, offset: 832)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !2800}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2801, file: !230, line: 332, baseType: !3233, size: 64, offset: 896)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2801, file: !230, line: 350, baseType: !3238, size: 64, offset: 960)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!22, !2783}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2801, file: !230, line: 356, baseType: !3242, size: 64, offset: 1024)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !2783, !626}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2801, file: !230, line: 357, baseType: !3242, size: 64, offset: 1088)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2801, file: !230, line: 385, baseType: !3247, size: 64, offset: 1152)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!22, !2783, !22}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2801, file: !230, line: 386, baseType: !3251, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !2783, !22}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2801, file: !230, line: 406, baseType: !3251, size: 64, offset: 1280)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2801, file: !230, line: 407, baseType: !3251, size: 64, offset: 1344)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2801, file: !230, line: 415, baseType: !3257, size: 64, offset: 1408)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !2783}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2801, file: !230, line: 427, baseType: !3261, size: 64, offset: 1472)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !2800, !7}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2801, file: !230, line: 436, baseType: !3265, size: 64, offset: 1536)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!22, !2800}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2801, file: !230, line: 443, baseType: !3233, size: 64, offset: 1600)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2801, file: !230, line: 450, baseType: !3238, size: 64, offset: 1664)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2801, file: !230, line: 455, baseType: !3271, size: 64, offset: 1728)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !3219, !839}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2801, file: !230, line: 461, baseType: !772, size: 64, offset: 1792)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2801, file: !230, line: 469, baseType: !3276, size: 64, offset: 1856)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3219, !3219}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2801, file: !230, line: 476, baseType: !3280, size: 64, offset: 1920)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!20, !2783, !1957, !22, !839}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2801, file: !230, line: 483, baseType: !1239, size: 64, offset: 1984)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2801, file: !230, line: 494, baseType: !3285, size: 64, offset: 2048)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!290, !2783, !3288, !39}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !230, line: 1014, size: 448, elements: !3290)
!3290 = !{!3291, !3292, !3295, !3296, !3297, !3298, !3303}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3289, file: !230, line: 1015, baseType: !2783, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3289, file: !230, line: 1016, baseType: !3293, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !230, line: 641, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3289, file: !230, line: 1017, baseType: !39, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3289, file: !230, line: 1018, baseType: !39, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3289, file: !230, line: 1019, baseType: !378, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !230, line: 1020, baseType: !3299, size: 64, offset: 320)
!3299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !230, line: 1020, size: 64, elements: !3300)
!3300 = !{!3301, !3302}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3299, file: !230, line: 1021, baseType: !20, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3299, file: !230, line: 1022, baseType: !39, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3289, file: !230, line: 1024, baseType: !22, size: 32, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2801, file: !230, line: 506, baseType: !3305, size: 64, offset: 2112)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!22, !100}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2801, file: !230, line: 520, baseType: !3257, size: 64, offset: 2176)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2801, file: !230, line: 530, baseType: !3238, size: 64, offset: 2240)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2801, file: !230, line: 537, baseType: !3311, size: 64, offset: 2304)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!839, !2800, !22}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2801, file: !230, line: 542, baseType: !3315, size: 64, offset: 2368)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!22, !2783, !378}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2784, file: !230, line: 715, baseType: !20, size: 64, offset: 1280)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2784, file: !230, line: 717, baseType: !229, size: 32, offset: 1344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2784, file: !230, line: 718, baseType: !7, size: 32, offset: 1376)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2784, file: !230, line: 719, baseType: !3322, size: 64, offset: 1408)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3323, line: 26, baseType: !3324)
!3323 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3323, line: 24, size: 64, elements: !3325)
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3324, file: !3323, line: 25, baseType: !3203, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2784, file: !230, line: 720, baseType: !677, size: 64, offset: 1472)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2784, file: !230, line: 728, baseType: !378, size: 64, offset: 1536)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2784, file: !230, line: 729, baseType: !378, size: 64, offset: 1600)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2784, file: !230, line: 730, baseType: !378, size: 64, offset: 1664)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2784, file: !230, line: 732, baseType: !3332, size: 1088, offset: 1728)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3333, line: 385, size: 1088, elements: !3334)
!3333 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3334 = !{!3335, !3336, !3337, !3338, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3388, !3389, !3396, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3332, file: !3333, line: 390, baseType: !322, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3332, file: !3333, line: 395, baseType: !322, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3332, file: !3333, line: 400, baseType: !379, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3333, line: 402, baseType: !3339, size: 64, offset: 128)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3333, line: 402, size: 64, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3339, file: !3333, line: 403, baseType: !379, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3339, file: !3333, line: 404, baseType: !379, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3332, file: !3333, line: 407, baseType: !379, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3332, file: !3333, line: 408, baseType: !379, size: 64, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3332, file: !3333, line: 410, baseType: !379, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3332, file: !3333, line: 411, baseType: !379, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3332, file: !3333, line: 412, baseType: !379, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3332, file: !3333, line: 413, baseType: !379, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3332, file: !3333, line: 414, baseType: !379, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3332, file: !3333, line: 415, baseType: !379, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3332, file: !3333, line: 416, baseType: !379, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3332, file: !3333, line: 417, baseType: !379, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3332, file: !3333, line: 418, baseType: !379, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3332, file: !3333, line: 419, baseType: !379, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3332, file: !3333, line: 420, baseType: !379, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3332, file: !3333, line: 421, baseType: !379, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3332, file: !3333, line: 422, baseType: !379, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3332, file: !3333, line: 423, baseType: !379, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3332, file: !3333, line: 424, baseType: !379, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3332, file: !3333, line: 435, baseType: !379, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3332, file: !3333, line: 436, baseType: !379, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3332, file: !3333, line: 437, baseType: !379, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3332, file: !3333, line: 439, baseType: !379, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3332, file: !3333, line: 440, baseType: !379, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3332, file: !3333, line: 442, baseType: !379, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3332, file: !3333, line: 443, baseType: !379, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3332, file: !3333, line: 444, baseType: !379, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3332, file: !3333, line: 445, baseType: !379, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3332, file: !3333, line: 446, baseType: !379, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3332, file: !3333, line: 447, baseType: !379, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3332, file: !3333, line: 448, baseType: !379, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3332, file: !3333, line: 449, baseType: !379, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3332, file: !3333, line: 450, baseType: !379, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3332, file: !3333, line: 451, baseType: !379, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3332, file: !3333, line: 452, baseType: !379, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3332, file: !3333, line: 453, baseType: !379, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3332, file: !3333, line: 454, baseType: !379, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3332, file: !3333, line: 455, baseType: !379, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3332, file: !3333, line: 456, baseType: !379, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3332, file: !3333, line: 457, baseType: !379, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3332, file: !3333, line: 458, baseType: !379, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3332, file: !3333, line: 459, baseType: !379, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3333, line: 461, baseType: !3384, size: 32, offset: 384)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3333, line: 461, size: 32, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3384, file: !3333, line: 462, baseType: !322, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3384, file: !3333, line: 463, baseType: !322, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3332, file: !3333, line: 466, baseType: !322, size: 32, offset: 416)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3333, line: 467, baseType: !3390, size: 64, offset: 448)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3333, line: 467, size: 64, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3390, file: !3333, line: 468, baseType: !379, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3390, file: !3333, line: 469, baseType: !379, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3390, file: !3333, line: 470, baseType: !379, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3390, file: !3333, line: 471, baseType: !379, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3332, file: !3333, line: 473, baseType: !3397, size: 64, offset: 512)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3332, file: !3333, line: 473, size: 64, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3397, file: !3333, line: 474, baseType: !379, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3397, file: !3333, line: 475, baseType: !379, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3397, file: !3333, line: 476, baseType: !379, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3397, file: !3333, line: 477, baseType: !379, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3332, file: !3333, line: 479, baseType: !379, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3332, file: !3333, line: 485, baseType: !379, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3332, file: !3333, line: 490, baseType: !322, size: 32, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3332, file: !3333, line: 492, baseType: !852, size: 32, offset: 736)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3332, file: !3333, line: 501, baseType: !379, size: 64, offset: 768)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3332, file: !3333, line: 506, baseType: !322, size: 32, offset: 832)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3332, file: !3333, line: 507, baseType: !94, size: 16, offset: 864)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3332, file: !3333, line: 508, baseType: !94, size: 16, offset: 880)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3332, file: !3333, line: 509, baseType: !322, size: 32, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3332, file: !3333, line: 510, baseType: !322, size: 32, offset: 928)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3332, file: !3333, line: 518, baseType: !379, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3332, file: !3333, line: 520, baseType: !379, size: 64, offset: 1024)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2784, file: !230, line: 733, baseType: !93, size: 16, offset: 2816)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2784, file: !230, line: 734, baseType: !93, size: 16, offset: 2832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2784, file: !230, line: 735, baseType: !93, size: 16, offset: 2848)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2784, file: !230, line: 736, baseType: !3419, size: 1536, offset: 2880)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !230, line: 155, size: 1536, elements: !3420)
!3420 = !{!3421, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3505, !3506, !3507, !3508}
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3419, file: !230, line: 157, baseType: !3422, size: 768)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !230, line: 157, size: 768, elements: !3423)
!3423 = !{!3424, !3443, !3447, !3451, !3456, !3478}
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 158, baseType: !3425, size: 768)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 158, size: 768, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3442}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3425, file: !230, line: 159, baseType: !378, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3425, file: !230, line: 160, baseType: !378, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3425, file: !230, line: 161, baseType: !39, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3425, file: !230, line: 162, baseType: !39, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3425, file: !230, line: 163, baseType: !22, size: 32, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3425, file: !230, line: 164, baseType: !22, size: 32, offset: 288)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3425, file: !230, line: 165, baseType: !22, size: 32, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3425, file: !230, line: 166, baseType: !22, size: 32, offset: 352)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3425, file: !230, line: 168, baseType: !3436, size: 192, offset: 384)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !230, line: 134, size: 192, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3436, file: !230, line: 135, baseType: !378, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3436, file: !230, line: 136, baseType: !7, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3436, file: !230, line: 137, baseType: !22, size: 32, offset: 96)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3436, file: !230, line: 138, baseType: !22, size: 32, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3425, file: !230, line: 169, baseType: !3436, size: 192, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 171, baseType: !3444, size: 512)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 171, size: 512, elements: !3445)
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3444, file: !230, line: 172, baseType: !445, size: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 174, baseType: !3448, size: 128)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 174, size: 128, elements: !3449)
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3448, file: !230, line: 176, baseType: !97, size: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 178, baseType: !3452, size: 128)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 178, size: 128, elements: !3453)
!3453 = !{!3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3452, file: !230, line: 179, baseType: !378, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3452, file: !230, line: 180, baseType: !378, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 183, baseType: !3457, size: 320)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 183, size: 320, elements: !3458)
!3458 = !{!3459, !3467}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3457, file: !230, line: 189, baseType: !3460, size: 192)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3461, line: 14, size: 192, elements: !3462)
!3461 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3460, file: !3461, line: 15, baseType: !39, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3460, file: !3461, line: 16, baseType: !39, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3460, file: !3461, line: 17, baseType: !83, size: 8, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3460, file: !3461, line: 18, baseType: !83, size: 8, offset: 136)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3457, file: !230, line: 190, baseType: !3468, size: 128, offset: 192)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3469, line: 21, size: 128, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3470 = !{!3471, !3476}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3468, file: !3469, line: 22, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3469, line: 17, size: 64, elements: !3473)
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3472, file: !3469, line: 18, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3468, file: !3469, line: 23, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3422, file: !230, line: 193, baseType: !3479, size: 192)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3422, file: !230, line: 193, size: 192, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3479, file: !230, line: 194, baseType: !83, size: 8)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3479, file: !230, line: 195, baseType: !83, size: 8, offset: 8)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3479, file: !230, line: 196, baseType: !93, size: 16, offset: 16)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3479, file: !230, line: 197, baseType: !378, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3479, file: !230, line: 198, baseType: !378, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3419, file: !230, line: 205, baseType: !310, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3419, file: !230, line: 211, baseType: !20, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3419, file: !230, line: 214, baseType: !39, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3419, file: !230, line: 223, baseType: !22, size: 32, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3419, file: !230, line: 229, baseType: !3322, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3419, file: !230, line: 234, baseType: !378, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3419, file: !230, line: 236, baseType: !3493, size: 128, offset: 1152)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3419, file: !230, line: 236, size: 128, elements: !3494)
!3494 = !{!3495, !3500}
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3493, file: !230, line: 237, baseType: !3496, size: 128)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3493, file: !230, line: 237, size: 128, elements: !3497)
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3496, file: !230, line: 241, baseType: !378, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3496, file: !230, line: 249, baseType: !3322, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3493, file: !230, line: 251, baseType: !3501, size: 128)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3493, file: !230, line: 251, size: 128, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3501, file: !230, line: 252, baseType: !378, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3501, file: !230, line: 253, baseType: !378, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3419, file: !230, line: 261, baseType: !378, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3419, file: !230, line: 262, baseType: !378, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3419, file: !230, line: 268, baseType: !378, size: 64, offset: 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3419, file: !230, line: 269, baseType: !378, size: 64, offset: 1472)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2784, file: !230, line: 738, baseType: !3171, size: 64, offset: 4416)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2784, file: !230, line: 744, baseType: !3219, size: 64, offset: 4480)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2784, file: !230, line: 745, baseType: !675, size: 64, offset: 4544)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2784, file: !230, line: 751, baseType: !677, size: 64, offset: 4608)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2784, file: !230, line: 752, baseType: !677, size: 64, offset: 4672)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2784, file: !230, line: 757, baseType: !682, size: 256, offset: 4736)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2784, file: !230, line: 758, baseType: !97, size: 128, offset: 4992)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2784, file: !230, line: 759, baseType: !2783, size: 64, offset: 5120)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2784, file: !230, line: 761, baseType: !22, size: 32, offset: 5184)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2784, file: !230, line: 762, baseType: !22, size: 32, offset: 5216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2784, file: !230, line: 764, baseType: !97, size: 128, offset: 5248)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2784, file: !230, line: 765, baseType: !310, size: 64, offset: 5376)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2784, file: !230, line: 768, baseType: !682, size: 256, offset: 5440)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2784, file: !230, line: 769, baseType: !49, size: 32, offset: 5696)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2784, file: !230, line: 771, baseType: !3293, size: 64, offset: 5760)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2784, file: !230, line: 772, baseType: !97, size: 128, offset: 5824)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2784, file: !230, line: 773, baseType: !39, size: 64, offset: 5952)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2784, file: !230, line: 774, baseType: !22, size: 32, offset: 6016)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2784, file: !230, line: 777, baseType: !54, size: 192, offset: 6080)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2784, file: !230, line: 778, baseType: !3529, size: 64, offset: 6272)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !239, line: 1083, size: 384, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3530, file: !239, line: 1084, baseType: !699, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3530, file: !239, line: 1085, baseType: !22, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3530, file: !239, line: 1086, baseType: !22, size: 32, offset: 96)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3530, file: !239, line: 1087, baseType: !3529, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3530, file: !239, line: 1088, baseType: !654, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3530, file: !239, line: 1089, baseType: !662, size: 128, align: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2784, file: !230, line: 781, baseType: !7, size: 32, offset: 6336)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2784, file: !230, line: 782, baseType: !7, size: 32, offset: 6368)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2784, file: !230, line: 783, baseType: !7, size: 32, offset: 6400)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2784, file: !230, line: 784, baseType: !7, size: 32, offset: 6432)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2784, file: !230, line: 785, baseType: !39, size: 64, offset: 6464)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2784, file: !230, line: 786, baseType: !3544, size: 256, offset: 6528)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3545, line: 17, size: 256, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3546 = !{!3547, !3548, !3553}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3544, file: !3545, line: 18, baseType: !335, size: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3544, file: !3545, line: 19, baseType: !3549, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3544, file: !3545, line: 20, baseType: !3554, size: 64, offset: 192)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3555, line: 16, size: 64, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3556 = !{!3557}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3554, file: !3555, line: 17, baseType: !310, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2784, file: !230, line: 787, baseType: !662, size: 128, align: 64, offset: 6784)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2784, file: !230, line: 788, baseType: !7, size: 32, offset: 6912)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2784, file: !230, line: 789, baseType: !3554, size: 64, offset: 6976)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2784, file: !230, line: 791, baseType: !49, size: 32, offset: 7040)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2784, file: !230, line: 794, baseType: !3563, size: 192, offset: 7104)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !230, line: 579, size: 192, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3563, file: !230, line: 580, baseType: !97, size: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3563, file: !230, line: 581, baseType: !470, size: 32, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3563, file: !230, line: 582, baseType: !7, size: 32, offset: 160)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2784, file: !230, line: 796, baseType: !3569, size: 64, offset: 7296)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !230, line: 585, size: 128, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3570, file: !230, line: 586, baseType: !39, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3570, file: !230, line: 587, baseType: !39, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2784, file: !230, line: 797, baseType: !39, size: 64, offset: 7360)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2784, file: !230, line: 800, baseType: !2783, size: 64, offset: 7424)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2784, file: !230, line: 802, baseType: !3257, size: 64, offset: 7488)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2784, file: !230, line: 803, baseType: !662, size: 128, align: 64, offset: 7552)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2784, file: !230, line: 805, baseType: !750, size: 64, offset: 7680)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2784, file: !230, line: 806, baseType: !378, size: 64, offset: 7744)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2784, file: !230, line: 808, baseType: !677, size: 64, offset: 7808)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2784, file: !230, line: 810, baseType: !3582, size: 64, offset: 7872)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!378}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2784, file: !230, line: 811, baseType: !3586, size: 64, offset: 7936)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !230, line: 605, baseType: !3587)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !2783, !3590, !3695}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !230, line: 1148, size: 2048, align: 512, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3602, !3603, !3604, !3609, !3610, !3617, !3638, !3660, !3670, !3688, !3689, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3591, file: !230, line: 1153, baseType: !378, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3591, file: !230, line: 1154, baseType: !378, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3591, file: !230, line: 1155, baseType: !378, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3591, file: !230, line: 1161, baseType: !378, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3591, file: !230, line: 1165, baseType: !3598, size: 64, offset: 256)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !230, line: 1162, size: 64, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3598, file: !230, line: 1163, baseType: !321, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3598, file: !230, line: 1164, baseType: !321, size: 32, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3591, file: !230, line: 1166, baseType: !378, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3591, file: !230, line: 1167, baseType: !378, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3591, file: !230, line: 1171, baseType: !3605, size: 64, offset: 448)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !230, line: 1168, size: 64, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3605, file: !230, line: 1169, baseType: !321, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3605, file: !230, line: 1170, baseType: !321, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3591, file: !230, line: 1177, baseType: !378, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3591, file: !230, line: 1178, baseType: !3611, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !230, line: 67, size: 64, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3612, file: !230, line: 68, baseType: !379, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3612, file: !230, line: 69, baseType: !3616, offset: 64)
!3616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !1070)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3591, file: !230, line: 1179, baseType: !3618, size: 64, offset: 640)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !230, line: 93, size: 256, elements: !3620)
!3620 = !{!3621, !3637}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3619, file: !230, line: 94, baseType: !3622, size: 224)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !230, line: 83, size: 224, elements: !3623)
!3623 = !{!3624, !3630, !3635, !3636}
!3624 = !DIDerivedType(tag: DW_TAG_member, scope: !3622, file: !230, line: 84, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3622, file: !230, line: 84, size: 64, elements: !3626)
!3626 = !{!3627, !3629}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3625, file: !230, line: 85, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3625, file: !230, line: 86, baseType: !39, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3622, file: !230, line: 88, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !230, line: 80, baseType: !3632)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!39, !20, !2085, !39, !39}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3622, file: !230, line: 89, baseType: !20, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3622, file: !230, line: 90, baseType: !321, size: 32, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3619, file: !230, line: 95, baseType: !321, size: 32, offset: 224)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3591, file: !230, line: 1180, baseType: !3639, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !230, line: 123, size: 128, elements: !3641)
!3641 = !{!3642, !3643, !3644}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3640, file: !230, line: 124, baseType: !379, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3640, file: !230, line: 125, baseType: !379, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3640, file: !230, line: 126, baseType: !3645, offset: 128)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3646, elements: !1070)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3333, line: 1415, size: 192, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3646, file: !3333, line: 1416, baseType: !379, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3646, file: !3333, line: 1417, baseType: !379, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3646, file: !3333, line: 1418, baseType: !379, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3646, file: !3333, line: 1419, baseType: !379, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3646, file: !3333, line: 1420, baseType: !379, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3646, file: !3333, line: 1421, baseType: !379, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3646, file: !3333, line: 1422, baseType: !379, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3646, file: !3333, line: 1423, baseType: !379, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3646, file: !3333, line: 1424, baseType: !379, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3646, file: !3333, line: 1425, baseType: !379, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3646, file: !3333, line: 1426, baseType: !379, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3646, file: !3333, line: 1427, baseType: !379, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3591, file: !230, line: 1181, baseType: !3661, size: 64, offset: 768)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3333, line: 1430, size: 64, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3661, file: !3333, line: 1431, baseType: !379, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !3333, line: 1433, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3661, file: !3333, line: 1433, size: 64, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3665, file: !3333, line: 1434, baseType: !322, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3665, file: !3333, line: 1435, baseType: !94, size: 16, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3665, file: !3333, line: 1436, baseType: !94, size: 16, offset: 48)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3591, file: !230, line: 1182, baseType: !3671, size: 64, offset: 832)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3333, line: 1267, size: 64, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3671, file: !3333, line: 1268, baseType: !379, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, scope: !3671, file: !3333, line: 1269, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3671, file: !3333, line: 1269, size: 64, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3675, file: !3333, line: 1270, baseType: !379, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3675, file: !3333, line: 1271, baseType: !379, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3675, file: !3333, line: 1272, baseType: !379, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3675, file: !3333, line: 1273, baseType: !379, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3675, file: !3333, line: 1274, baseType: !379, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3675, file: !3333, line: 1275, baseType: !379, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3675, file: !3333, line: 1276, baseType: !379, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3675, file: !3333, line: 1277, baseType: !379, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3675, file: !3333, line: 1278, baseType: !379, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3675, file: !3333, line: 1279, baseType: !379, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3675, file: !3333, line: 1280, baseType: !379, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3591, file: !230, line: 1183, baseType: !378, size: 64, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3591, file: !230, line: 1185, baseType: !3690, size: 128, offset: 960)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3691, line: 7, size: 128, elements: !3692)
!3691 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3690, file: !3691, line: 8, baseType: !379, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3690, file: !3691, line: 9, baseType: !3695, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3697, line: 103, size: 1344, elements: !3698)
!3697 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3727, !3728, !3729}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3696, file: !3697, line: 109, baseType: !39, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3696, file: !3697, line: 110, baseType: !39, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3696, file: !3697, line: 111, baseType: !39, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3696, file: !3697, line: 112, baseType: !39, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3696, file: !3697, line: 113, baseType: !39, size: 64, offset: 256)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3696, file: !3697, line: 114, baseType: !39, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3696, file: !3697, line: 117, baseType: !39, size: 64, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3696, file: !3697, line: 118, baseType: !39, size: 64, offset: 448)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3696, file: !3697, line: 119, baseType: !39, size: 64, offset: 512)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3696, file: !3697, line: 120, baseType: !39, size: 64, offset: 576)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3696, file: !3697, line: 121, baseType: !39, size: 64, offset: 640)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3696, file: !3697, line: 122, baseType: !39, size: 64, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3696, file: !3697, line: 123, baseType: !39, size: 64, offset: 768)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3696, file: !3697, line: 124, baseType: !39, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3696, file: !3697, line: 125, baseType: !39, size: 64, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3696, file: !3697, line: 139, baseType: !39, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3696, file: !3697, line: 142, baseType: !39, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !3697, line: 144, baseType: !3717, size: 64, offset: 1088)
!3717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !3697, line: 144, size: 64, elements: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3717, file: !3697, line: 146, baseType: !93, size: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3717, file: !3697, line: 148, baseType: !378, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3717, file: !3697, line: 150, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3697, line: 59, size: 64, elements: !3723)
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3722, file: !3697, line: 61, baseType: !378, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3722, file: !3697, line: 63, baseType: !378, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3722, file: !3697, line: 65, baseType: !378, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3696, file: !3697, line: 153, baseType: !39, size: 64, offset: 1152)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3696, file: !3697, line: 154, baseType: !39, size: 64, offset: 1216)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !3697, line: 156, baseType: !3730, size: 64, offset: 1280)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !3697, line: 156, size: 64, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3730, file: !3697, line: 158, baseType: !93, size: 16)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3730, file: !3697, line: 160, baseType: !378, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3730, file: !3697, line: 162, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3697, line: 69, size: 64, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3735, file: !3697, line: 71, baseType: !378, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3735, file: !3697, line: 73, baseType: !378, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3735, file: !3697, line: 75, baseType: !378, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3735, file: !3697, line: 77, baseType: !378, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3735, file: !3697, line: 80, baseType: !378, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3735, file: !3697, line: 83, baseType: !378, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3735, file: !3697, line: 86, baseType: !378, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3735, file: !3697, line: 88, baseType: !378, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3735, file: !3697, line: 93, baseType: !378, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3735, file: !3697, line: 100, baseType: !378, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3591, file: !230, line: 1186, baseType: !3690, size: 128, offset: 1088)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3591, file: !230, line: 1187, baseType: !378, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3591, file: !230, line: 1189, baseType: !378, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3591, file: !230, line: 1190, baseType: !378, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3591, file: !230, line: 1191, baseType: !378, size: 64, offset: 1408)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3591, file: !230, line: 1192, baseType: !378, size: 64, offset: 1472)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3591, file: !230, line: 1193, baseType: !378, size: 64, offset: 1536)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3591, file: !230, line: 1194, baseType: !378, size: 64, offset: 1600)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3591, file: !230, line: 1195, baseType: !378, size: 64, offset: 1664)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2784, file: !230, line: 812, baseType: !20, size: 64, offset: 8000)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2784, file: !230, line: 820, baseType: !2577, size: 64, offset: 8064)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2784, file: !230, line: 821, baseType: !2764, size: 64, offset: 8128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2784, file: !230, line: 828, baseType: !3760, size: 64, offset: 8192)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !230, line: 1046, size: 1664, elements: !3762)
!3762 = !{!3763, !4019}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3761, file: !230, line: 1047, baseType: !3764, size: 1600)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3765, line: 152, size: 1600, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3766 = !{!3767, !3877, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4018}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3764, file: !3765, line: 154, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3765, line: 389, size: 7872, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3790, !3791, !3795, !3796, !3797, !3798, !3799, !3804, !3820, !3821, !3823, !3824, !3825, !3847, !3848, !3849, !3850, !3856, !3857, !3858, !3859, !3860, !3864, !3867, !3868, !3875}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3769, file: !3765, line: 391, baseType: !3764, size: 1600)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !3765, line: 393, baseType: !39, size: 64, offset: 1600)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3769, file: !3765, line: 401, baseType: !22, size: 32, offset: 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3769, file: !3765, line: 404, baseType: !22, size: 32, offset: 1696)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3769, file: !3765, line: 417, baseType: !22, size: 32, offset: 1728)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3769, file: !3765, line: 418, baseType: !22, size: 32, offset: 1760)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3769, file: !3765, line: 419, baseType: !22, size: 32, offset: 1792)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3769, file: !3765, line: 432, baseType: !22, size: 32, offset: 1824)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3769, file: !3765, line: 433, baseType: !22, size: 32, offset: 1856)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3769, file: !3765, line: 434, baseType: !22, size: 32, offset: 1888)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3769, file: !3765, line: 436, baseType: !22, size: 32, offset: 1920)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3769, file: !3765, line: 439, baseType: !7, size: 32, offset: 1952)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3769, file: !3765, line: 441, baseType: !2103, size: 64, offset: 1984)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3769, file: !3765, line: 442, baseType: !3785, size: 448, offset: 2048)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3765, line: 138, size: 448, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3785, file: !3765, line: 140, baseType: !2103, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3785, file: !3765, line: 141, baseType: !39, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3785, file: !3765, line: 142, baseType: !2497, size: 320, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3769, file: !3765, line: 443, baseType: !3785, size: 448, offset: 2496)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3769, file: !3765, line: 446, baseType: !3792, offset: 2944)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3785, elements: !3793)
!3793 = !{!3794}
!3794 = !DISubrange(count: 0)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3769, file: !3765, line: 455, baseType: !93, size: 16, offset: 2944)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3769, file: !3765, line: 456, baseType: !93, size: 16, offset: 2960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3769, file: !3765, line: 457, baseType: !93, size: 16, offset: 2976)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3769, file: !3765, line: 458, baseType: !93, size: 16, offset: 2992)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3769, file: !3765, line: 461, baseType: !3800, size: 896, offset: 3008)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3801, size: 896, elements: !3802)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3802 = !{!3803}
!3803 = !DISubrange(count: 14)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3769, file: !3765, line: 463, baseType: !3805, size: 64, offset: 3904)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3765, line: 537, size: 41664, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3806, file: !3765, line: 538, baseType: !2123, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3806, file: !3765, line: 541, baseType: !7, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3806, file: !3765, line: 544, baseType: !22, size: 32, offset: 96)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3806, file: !3765, line: 547, baseType: !97, size: 128, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3806, file: !3765, line: 548, baseType: !662, size: 128, align: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3806, file: !3765, line: 555, baseType: !3769, size: 7872, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3806, file: !3765, line: 558, baseType: !3768, size: 64, offset: 8256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3806, file: !3765, line: 561, baseType: !49, size: 32, offset: 8320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3806, file: !3765, line: 564, baseType: !7, size: 32, offset: 8352)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3806, file: !3765, line: 567, baseType: !2726, size: 32768, offset: 8384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3806, file: !3765, line: 570, baseType: !3819, size: 512, offset: 41152)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1498)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3769, file: !3765, line: 469, baseType: !97, size: 128, offset: 3968)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3769, file: !3765, line: 478, baseType: !3822, size: 1792, offset: 4096)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !3802)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3769, file: !3765, line: 487, baseType: !3768, size: 64, offset: 5888)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3769, file: !3765, line: 488, baseType: !3768, size: 64, offset: 5952)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3769, file: !3765, line: 491, baseType: !3826, size: 64, offset: 6016)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3765, line: 327, size: 896, elements: !3828)
!3828 = !{!3829, !3832, !3842, !3843, !3844, !3845, !3846}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3827, file: !3765, line: 332, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3831, line: 64, elements: !647)
!3831 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3827, file: !3765, line: 333, baseType: !3833, size: 192)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3765, line: 299, size: 192, elements: !3834)
!3834 = !{!3835}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3833, file: !3765, line: 300, baseType: !3836, size: 192)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3837, line: 17, size: 192, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3836, file: !3837, line: 18, baseType: !378, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3836, file: !3837, line: 19, baseType: !378, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3836, file: !3837, line: 20, baseType: !380, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3827, file: !3765, line: 339, baseType: !3833, size: 192, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3827, file: !3765, line: 347, baseType: !3833, size: 192, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3827, file: !3765, line: 353, baseType: !3833, size: 192, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3827, file: !3765, line: 366, baseType: !3768, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3827, file: !3765, line: 367, baseType: !3768, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3769, file: !3765, line: 492, baseType: !97, size: 128, offset: 6080)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3769, file: !3765, line: 495, baseType: !3833, size: 192, offset: 6208)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3769, file: !3765, line: 496, baseType: !3833, size: 192, offset: 6400)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3769, file: !3765, line: 497, baseType: !3851, size: 192, offset: 6592)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !312, line: 324, size: 192, elements: !3852)
!3852 = !{!3853, !3854, !3855}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3851, file: !312, line: 326, baseType: !378, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3851, file: !312, line: 327, baseType: !378, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3851, file: !312, line: 328, baseType: !470, size: 32, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3769, file: !3765, line: 503, baseType: !97, size: 128, offset: 6784)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3769, file: !3765, line: 504, baseType: !682, size: 256, offset: 6912)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3769, file: !3765, line: 507, baseType: !54, size: 192, offset: 7168)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3769, file: !3765, line: 510, baseType: !966, size: 256, offset: 7360)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3769, file: !3765, line: 513, baseType: !3861, size: 64, offset: 7616)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3863, line: 214, elements: !647)
!3863 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3769, file: !3765, line: 516, baseType: !3865, offset: 7680)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3866, line: 76, elements: !647)
!3866 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3769, file: !3765, line: 519, baseType: !49, size: 32, offset: 7680)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3769, file: !3765, line: 522, baseType: !3869, size: 128, offset: 7712)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3765, line: 370, size: 128, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3869, file: !3765, line: 372, baseType: !839, size: 8)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3869, file: !3765, line: 375, baseType: !22, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3869, file: !3765, line: 380, baseType: !22, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3869, file: !3765, line: 386, baseType: !22, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3769, file: !3765, line: 529, baseType: !3876, offset: 7872)
!3876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3768, elements: !1070)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3764, file: !3765, line: 157, baseType: !3878, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3765, line: 669, size: 1984, elements: !3880)
!3880 = !{!3881, !3885, !3889, !3893, !3894, !3895, !3896, !3900, !3904, !3905, !3911, !3915, !3916, !3917, !3946, !3950, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !4001, !4002}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3879, file: !3765, line: 670, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3801, !3801}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3879, file: !3765, line: 671, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!22, !3801}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3879, file: !3765, line: 672, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3801}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3879, file: !3765, line: 673, baseType: !3890, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3879, file: !3765, line: 674, baseType: !3890, size: 64, offset: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3879, file: !3765, line: 675, baseType: !3890, size: 64, offset: 320)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3879, file: !3765, line: 676, baseType: !3897, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3801, !22}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3879, file: !3765, line: 677, baseType: !3901, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!22, !2148, !3801}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3879, file: !3765, line: 679, baseType: !3901, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3879, file: !3765, line: 682, baseType: !3906, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!22, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3765, line: 30, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3879, file: !3765, line: 683, baseType: !3912, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3909}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3879, file: !3765, line: 684, baseType: !3912, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3879, file: !3765, line: 685, baseType: !2671, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3879, file: !3765, line: 686, baseType: !3918, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!22, !310, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3765, line: 209, size: 4736, elements: !3923)
!3923 = !{!3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3922, file: !3765, line: 215, baseType: !3800, size: 896)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3922, file: !3765, line: 218, baseType: !327, size: 32, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3922, file: !3765, line: 226, baseType: !3921, size: 64, offset: 960)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3922, file: !3765, line: 229, baseType: !3768, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3922, file: !3765, line: 232, baseType: !22, size: 32, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3922, file: !3765, line: 241, baseType: !97, size: 128, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3922, file: !3765, line: 242, baseType: !97, size: 128, offset: 1280)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3922, file: !3765, line: 243, baseType: !97, size: 128, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3922, file: !3765, line: 246, baseType: !97, size: 128, offset: 1536)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3922, file: !3765, line: 255, baseType: !3822, size: 1792, offset: 1664)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3922, file: !3765, line: 258, baseType: !97, size: 128, offset: 3456)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3922, file: !3765, line: 259, baseType: !97, size: 128, offset: 3584)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3922, file: !3765, line: 265, baseType: !734, size: 128, offset: 3712)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3922, file: !3765, line: 271, baseType: !97, size: 128, offset: 3840)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3922, file: !3765, line: 277, baseType: !97, size: 128, offset: 3968)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3922, file: !3765, line: 278, baseType: !97, size: 128, offset: 4096)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3922, file: !3765, line: 279, baseType: !97, size: 128, offset: 4224)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3922, file: !3765, line: 288, baseType: !3768, size: 64, offset: 4352)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3922, file: !3765, line: 289, baseType: !3768, size: 64, offset: 4416)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3922, file: !3765, line: 290, baseType: !3921, size: 64, offset: 4480)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3922, file: !3765, line: 293, baseType: !839, size: 8, offset: 4544)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3922, file: !3765, line: 296, baseType: !662, size: 128, align: 64, offset: 4608)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3879, file: !3765, line: 688, baseType: !3947, size: 64, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !310, !3921}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3879, file: !3765, line: 689, baseType: !3951, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3879, file: !3765, line: 690, baseType: !3951, size: 64, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3879, file: !3765, line: 691, baseType: !3951, size: 64, offset: 1088)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3879, file: !3765, line: 692, baseType: !3890, size: 64, offset: 1152)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3879, file: !3765, line: 694, baseType: !839, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3879, file: !3765, line: 707, baseType: !839, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3879, file: !3765, line: 719, baseType: !839, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3879, file: !3765, line: 722, baseType: !22, size: 32, offset: 1248)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3879, file: !3765, line: 723, baseType: !16, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3879, file: !3765, line: 726, baseType: !16, size: 64, offset: 1344)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3879, file: !3765, line: 729, baseType: !3805, size: 64, offset: 1408)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3879, file: !3765, line: 732, baseType: !755, size: 192, offset: 1472)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3879, file: !3765, line: 738, baseType: !97, size: 128, offset: 1664)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3879, file: !3765, line: 744, baseType: !3965, size: 64, offset: 1792)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3765, line: 580, size: 1728, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3977, !3978, !3979, !3983, !3987, !3988, !3989, !3990, !3991, !3995, !3999, !4000}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3966, file: !3765, line: 586, baseType: !3819, size: 512)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3966, file: !3765, line: 587, baseType: !39, size: 64, offset: 512)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3966, file: !3765, line: 593, baseType: !35, size: 64, offset: 576)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3966, file: !3765, line: 596, baseType: !7, size: 32, offset: 640)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3966, file: !3765, line: 604, baseType: !7, size: 32, offset: 672)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3966, file: !3765, line: 610, baseType: !3878, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3966, file: !3765, line: 611, baseType: !97, size: 128, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3966, file: !3765, line: 612, baseType: !3976, size: 64, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3966, file: !3765, line: 614, baseType: !2139, size: 64, offset: 960)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3966, file: !3765, line: 615, baseType: !2197, size: 64, offset: 1024)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3966, file: !3765, line: 621, baseType: !3980, size: 64, offset: 1088)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!378, !3801, !3965}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3966, file: !3765, line: 625, baseType: !3984, size: 64, offset: 1152)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!389, !3801, !3965}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3966, file: !3765, line: 628, baseType: !2178, size: 64, offset: 1216)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3966, file: !3765, line: 631, baseType: !2166, size: 64, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3966, file: !3765, line: 632, baseType: !2174, size: 64, offset: 1344)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3966, file: !3765, line: 633, baseType: !2170, size: 64, offset: 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3966, file: !3765, line: 640, baseType: !3992, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!22, !3801, !3965, !378}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3966, file: !3765, line: 645, baseType: !3996, size: 64, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!22, !3801, !3965, !389}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3966, file: !3765, line: 654, baseType: !2205, size: 64, offset: 1600)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3966, file: !3765, line: 657, baseType: !2212, size: 64, offset: 1664)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3879, file: !3765, line: 745, baseType: !3965, size: 64, offset: 1856)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3879, file: !3765, line: 754, baseType: !7, size: 32, offset: 1920)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3764, file: !3765, line: 160, baseType: !1643, size: 128, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3764, file: !3765, line: 163, baseType: !97, size: 128, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3764, file: !3765, line: 164, baseType: !97, size: 128, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3764, file: !3765, line: 167, baseType: !97, size: 128, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3764, file: !3765, line: 173, baseType: !22, size: 32, offset: 640)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3764, file: !3765, line: 175, baseType: !7, size: 32, offset: 672)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3764, file: !3765, line: 183, baseType: !378, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3764, file: !3765, line: 189, baseType: !49, size: 32, offset: 768)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3764, file: !3765, line: 192, baseType: !966, size: 256, offset: 832)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3764, file: !3765, line: 193, baseType: !4013, size: 448, offset: 1088)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !967, line: 120, size: 448, elements: !4014)
!4014 = !{!4015, !4016, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4013, file: !967, line: 121, baseType: !966, size: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4013, file: !967, line: 122, baseType: !662, size: 128, align: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4013, file: !967, line: 125, baseType: !2559, size: 64, offset: 384)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3764, file: !3765, line: 199, baseType: !3801, size: 64, offset: 1536)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3761, file: !230, line: 1048, baseType: !4020, size: 64, offset: 1600)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !230, line: 1039, size: 256, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4021, file: !230, line: 1040, baseType: !378, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4021, file: !230, line: 1041, baseType: !378, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4021, file: !230, line: 1042, baseType: !378, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4021, file: !230, line: 1043, baseType: !22, size: 32, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2784, file: !230, line: 832, baseType: !20, size: 64, offset: 8256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2784, file: !230, line: 834, baseType: !97, size: 128, offset: 8320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2784, file: !230, line: 842, baseType: !322, size: 32, offset: 8448)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1443, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1443, file: !116, line: 525, baseType: !4032, size: 64, offset: 8384)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4035, line: 28, size: 192, elements: !4036)
!4035 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4036 = !{!4037, !4038, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4034, file: !4035, line: 29, baseType: !16, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4034, file: !4035, line: 30, baseType: !16, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4034, file: !4035, line: 31, baseType: !39, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1443, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1443, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1443, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1443, file: !116, line: 535, baseType: !4044, size: 64, offset: 8640)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1443, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1443, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1443, file: !116, line: 540, baseType: !2660, size: 64, offset: 8768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1443, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1443, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1443, file: !116, line: 568, baseType: !2671, size: 64, offset: 9088)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1443, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1419, file: !239, line: 2382, baseType: !1418, size: 64, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1419, file: !239, line: 2383, baseType: !730, size: 64, offset: 512)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1419, file: !239, line: 2385, baseType: !4055, offset: 576)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2526, line: 206, elements: !647)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1419, file: !239, line: 2386, baseType: !4055, offset: 576)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1419, file: !239, line: 2387, baseType: !4055, offset: 576)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1419, file: !239, line: 2388, baseType: !4059, offset: 576)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4055, elements: !718)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1419, file: !239, line: 2390, baseType: !4055, offset: 576)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1419, file: !239, line: 2391, baseType: !4055, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1419, file: !239, line: 2392, baseType: !4055, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1419, file: !239, line: 2393, baseType: !4055, offset: 576)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1410, file: !239, line: 1197, baseType: !4065, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4067)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !239, line: 2057, size: 1664, elements: !4068)
!4068 = !{!4069, !4073, !4077, !4078, !4082, !4086, !4090, !4091, !4092, !4096, !4100, !4104, !4105, !4106, !4112, !4116, !4117, !4121, !4122, !4123, !4124, !4128, !4132, !4179, !4194, !4195}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4067, file: !239, line: 2058, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!1208, !1409}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4067, file: !239, line: 2059, baseType: !4074, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !1208}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4067, file: !239, line: 2060, baseType: !4074, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4067, file: !239, line: 2062, baseType: !4079, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !1208, !22}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4067, file: !239, line: 2063, baseType: !4083, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!22, !1208, !1866}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4067, file: !239, line: 2064, baseType: !4087, size: 64, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!22, !1208}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4067, file: !239, line: 2065, baseType: !4074, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4067, file: !239, line: 2066, baseType: !1438, size: 64, offset: 448)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4067, file: !239, line: 2067, baseType: !4093, size: 64, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!22, !1409, !22}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4067, file: !239, line: 2068, baseType: !4097, size: 64, offset: 576)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!22, !1409, !238}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4067, file: !239, line: 2069, baseType: !4101, size: 64, offset: 640)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!22, !1409}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4067, file: !239, line: 2070, baseType: !4097, size: 64, offset: 704)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4067, file: !239, line: 2071, baseType: !4101, size: 64, offset: 768)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4067, file: !239, line: 2072, baseType: !4107, size: 64, offset: 832)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!22, !1173, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !239, line: 62, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4067, file: !239, line: 2073, baseType: !4113, size: 64, offset: 896)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!22, !1409, !2396, !927}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4067, file: !239, line: 2074, baseType: !1438, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4067, file: !239, line: 2076, baseType: !4118, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!22, !2148, !1173}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4067, file: !239, line: 2077, baseType: !4118, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4067, file: !239, line: 2078, baseType: !4118, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4067, file: !239, line: 2079, baseType: !4118, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4067, file: !239, line: 2081, baseType: !4125, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!1360, !1409, !22, !927, !35, !41}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4067, file: !239, line: 2082, baseType: !4129, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!1360, !1409, !22, !16, !35, !41}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4067, file: !239, line: 2083, baseType: !4133, size: 64, offset: 1408)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!4136, !1208}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !244, line: 296, size: 1664, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4164, !4165, !4166}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4138, file: !244, line: 297, baseType: !734, size: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4138, file: !244, line: 298, baseType: !97, size: 128, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4138, file: !244, line: 299, baseType: !97, size: 128, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4138, file: !244, line: 300, baseType: !97, size: 128, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4138, file: !244, line: 301, baseType: !682, size: 256, offset: 512)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4138, file: !244, line: 302, baseType: !59, size: 32, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4138, file: !244, line: 303, baseType: !49, size: 32, offset: 800)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4138, file: !244, line: 304, baseType: !1409, size: 64, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4138, file: !244, line: 305, baseType: !4149, size: 64, offset: 896)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !244, line: 68, size: 64, elements: !4150)
!4150 = !{!4151, !4163}
!4151 = !DIDerivedType(tag: DW_TAG_member, scope: !4149, file: !244, line: 69, baseType: !4152, size: 32)
!4152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4149, file: !244, line: 69, size: 32, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4152, file: !244, line: 70, baseType: !812, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4152, file: !244, line: 71, baseType: !820, size: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4152, file: !244, line: 72, baseType: !4157, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4158, line: 24, baseType: !4159)
!4158 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4158, line: 22, size: 32, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4159, file: !4158, line: 23, baseType: !4162, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4158, line: 20, baseType: !818)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4149, file: !244, line: 74, baseType: !243, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4138, file: !244, line: 306, baseType: !41, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4138, file: !244, line: 307, baseType: !39, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4138, file: !244, line: 308, baseType: !4167, size: 576, offset: 1088)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !244, line: 205, size: 576, elements: !4168)
!4168 = !{!4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4167, file: !244, line: 206, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !244, line: 66, baseType: !43)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4167, file: !244, line: 207, baseType: !4170, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4167, file: !244, line: 208, baseType: !4170, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4167, file: !244, line: 209, baseType: !4170, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4167, file: !244, line: 210, baseType: !4170, size: 64, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4167, file: !244, line: 211, baseType: !4170, size: 64, offset: 320)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4167, file: !244, line: 212, baseType: !4170, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4167, file: !244, line: 213, baseType: !875, size: 64, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4167, file: !244, line: 214, baseType: !875, size: 64, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4067, file: !239, line: 2085, baseType: !4180, size: 64, offset: 1472)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!290, !1409, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4185, line: 15, size: 256, elements: !4186)
!4185 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4186 = !{!4187, !4188, !4189, !4190, !4191}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4184, file: !4185, line: 16, baseType: !764, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4184, file: !4185, line: 19, baseType: !22, size: 32, offset: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4184, file: !4185, line: 26, baseType: !39, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4184, file: !4185, line: 33, baseType: !39, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4184, file: !4185, line: 36, baseType: !4192, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4185, line: 36, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4067, file: !239, line: 2087, baseType: !4180, size: 64, offset: 1536)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4067, file: !239, line: 2089, baseType: !1438, size: 64, offset: 1600)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1410, file: !239, line: 1198, baseType: !4197, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !244, line: 324, size: 704, elements: !4200)
!4200 = !{!4201, !4205, !4209, !4213, !4214, !4215, !4216, !4217, !4222, !4227, !4231}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4199, file: !244, line: 325, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!22, !4137}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4199, file: !244, line: 326, baseType: !4206, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!4137, !1409, !22}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4199, file: !244, line: 327, baseType: !4210, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !4137}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4199, file: !244, line: 328, baseType: !4202, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4199, file: !244, line: 329, baseType: !4202, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4199, file: !244, line: 330, baseType: !4202, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4199, file: !244, line: 331, baseType: !4093, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4199, file: !244, line: 334, baseType: !4218, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!4221, !1208}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4199, file: !244, line: 335, baseType: !4223, size: 64, offset: 512)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!22, !1208, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4199, file: !244, line: 337, baseType: !4228, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!22, !1208, !4221}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4199, file: !244, line: 339, baseType: !4232, size: 64, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!22, !1409, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1410, file: !239, line: 1199, baseType: !4237, size: 64, offset: 512)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !244, line: 430, size: 704, elements: !4240)
!4240 = !{!4241, !4245, !4246, !4250, !4251, !4252, !4267, !4290, !4294, !4295, !4318}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4239, file: !244, line: 431, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!22, !1409, !22, !22, !1329}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4239, file: !244, line: 432, baseType: !4093, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4239, file: !244, line: 433, baseType: !4247, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!22, !1409, !7}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4239, file: !244, line: 434, baseType: !4247, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4239, file: !244, line: 435, baseType: !4093, size: 64, offset: 256)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4239, file: !244, line: 436, baseType: !4253, size: 64, offset: 320)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!22, !1409, !22, !4256}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !244, line: 417, size: 256, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4257, file: !244, line: 418, baseType: !22, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4257, file: !244, line: 419, baseType: !7, size: 32, offset: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4257, file: !244, line: 420, baseType: !7, size: 32, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4257, file: !244, line: 422, baseType: !7, size: 32, offset: 96)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4257, file: !244, line: 423, baseType: !7, size: 32, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4257, file: !244, line: 424, baseType: !7, size: 32, offset: 160)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4257, file: !244, line: 425, baseType: !7, size: 32, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4257, file: !244, line: 426, baseType: !7, size: 32, offset: 224)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4239, file: !244, line: 437, baseType: !4268, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!22, !1409, !4149, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !244, line: 345, size: 960, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4272, file: !244, line: 346, baseType: !22, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4272, file: !244, line: 347, baseType: !378, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4272, file: !244, line: 348, baseType: !378, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4272, file: !244, line: 349, baseType: !378, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4272, file: !244, line: 350, baseType: !378, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4272, file: !244, line: 351, baseType: !378, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4272, file: !244, line: 352, baseType: !378, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4272, file: !244, line: 353, baseType: !389, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4272, file: !244, line: 355, baseType: !389, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4272, file: !244, line: 356, baseType: !22, size: 32, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4272, file: !244, line: 357, baseType: !22, size: 32, offset: 608)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4272, file: !244, line: 358, baseType: !378, size: 64, offset: 640)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4272, file: !244, line: 359, baseType: !378, size: 64, offset: 704)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4272, file: !244, line: 360, baseType: !378, size: 64, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4272, file: !244, line: 361, baseType: !389, size: 64, offset: 832)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4272, file: !244, line: 362, baseType: !22, size: 32, offset: 896)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4239, file: !244, line: 438, baseType: !4291, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!22, !1409, !4235, !4271}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4239, file: !244, line: 440, baseType: !4268, size: 64, offset: 512)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4239, file: !244, line: 441, baseType: !4296, size: 64, offset: 576)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!22, !1409, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !244, line: 411, size: 1408, elements: !4301)
!4301 = !{!4302, !4303}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4300, file: !244, line: 412, baseType: !7, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4300, file: !244, line: 413, baseType: !4304, size: 1344, offset: 64)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4305, size: 1344, elements: !718)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !244, line: 397, size: 448, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4317}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4305, file: !244, line: 398, baseType: !7, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4305, file: !244, line: 399, baseType: !7, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4305, file: !244, line: 401, baseType: !7, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4305, file: !244, line: 402, baseType: !7, size: 32, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4305, file: !244, line: 403, baseType: !7, size: 32, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4305, file: !244, line: 404, baseType: !7, size: 32, offset: 160)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4305, file: !244, line: 405, baseType: !7, size: 32, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4305, file: !244, line: 406, baseType: !380, size: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4305, file: !244, line: 407, baseType: !4316, size: 64, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !378)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4305, file: !244, line: 408, baseType: !4316, size: 64, offset: 384)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4239, file: !244, line: 442, baseType: !4247, size: 64, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1410, file: !239, line: 1200, baseType: !4320, size: 64, offset: 576)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4322)
!4322 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !239, line: 54, flags: DIFlagFwdDecl)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1410, file: !239, line: 1201, baseType: !39, size: 64, offset: 640)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1410, file: !239, line: 1202, baseType: !39, size: 64, offset: 704)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1410, file: !239, line: 1203, baseType: !39, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1410, file: !239, line: 1204, baseType: !1173, size: 64, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1410, file: !239, line: 1205, baseType: !859, size: 320, offset: 896)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1410, file: !239, line: 1206, baseType: !22, size: 32, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1410, file: !239, line: 1207, baseType: !49, size: 32, offset: 1248)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1410, file: !239, line: 1209, baseType: !20, size: 64, offset: 1280)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1410, file: !239, line: 1211, baseType: !4332, size: 64, offset: 1344)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4335)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !239, line: 1211, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1410, file: !239, line: 1223, baseType: !4337, size: 64, offset: 1408)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1185, line: 34, size: 64, elements: !4338)
!4338 = !{!4339}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4337, file: !1185, line: 35, baseType: !1188, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1410, file: !239, line: 1224, baseType: !97, size: 128, offset: 1472)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1410, file: !239, line: 1225, baseType: !4342, size: 64, offset: 1600)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !239, line: 1225, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1410, file: !239, line: 1226, baseType: !4345, size: 64, offset: 1664)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !239, line: 1226, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1410, file: !239, line: 1227, baseType: !4348, size: 64, offset: 1728)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !239, line: 50, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1410, file: !239, line: 1228, baseType: !4351, size: 64, offset: 1792)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !239, line: 1228, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1410, file: !239, line: 1229, baseType: !734, size: 128, offset: 1856)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1410, file: !239, line: 1230, baseType: !7, size: 32, offset: 1984)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1410, file: !239, line: 1231, baseType: !4356, size: 2496, offset: 2048)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !244, line: 521, size: 2496, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4362, !4394}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4356, file: !244, line: 522, baseType: !7, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4356, file: !244, line: 523, baseType: !859, size: 320, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4356, file: !244, line: 524, baseType: !4361, size: 192, offset: 384)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 192, elements: !718)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4356, file: !244, line: 525, baseType: !4363, size: 1728, offset: 576)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4364, size: 1728, elements: !718)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !244, line: 222, size: 576, elements: !4365)
!4365 = !{!4366, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4364, file: !244, line: 223, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !244, line: 445, size: 256, elements: !4369)
!4369 = !{!4370, !4371, !4384, !4385}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4368, file: !244, line: 446, baseType: !22, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4368, file: !244, line: 447, baseType: !4372, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4374)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !244, line: 312, size: 512, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4374, file: !244, line: 313, baseType: !4093, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4374, file: !244, line: 314, baseType: !4093, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4374, file: !244, line: 315, baseType: !4093, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4374, file: !244, line: 316, baseType: !4093, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4374, file: !244, line: 317, baseType: !4202, size: 64, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4374, file: !244, line: 318, baseType: !4202, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4374, file: !244, line: 319, baseType: !4202, size: 64, offset: 384)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4374, file: !244, line: 320, baseType: !4232, size: 64, offset: 448)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4368, file: !244, line: 448, baseType: !1442, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4368, file: !244, line: 449, baseType: !4367, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4364, file: !244, line: 224, baseType: !22, size: 32, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4364, file: !244, line: 226, baseType: !97, size: 128, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4364, file: !244, line: 227, baseType: !39, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4364, file: !244, line: 228, baseType: !7, size: 32, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4364, file: !244, line: 229, baseType: !7, size: 32, offset: 352)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4364, file: !244, line: 230, baseType: !4170, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4364, file: !244, line: 231, baseType: !4170, size: 64, offset: 448)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4364, file: !244, line: 232, baseType: !20, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4356, file: !244, line: 526, baseType: !4395, size: 192, offset: 2304)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4372, size: 192, elements: !718)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1410, file: !239, line: 1233, baseType: !4397, size: 2368, offset: 4544)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !239, line: 1184, size: 2368, elements: !4398)
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4397, file: !239, line: 1185, baseType: !26, size: 16)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4397, file: !239, line: 1186, baseType: !26, size: 16, offset: 16)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4397, file: !239, line: 1187, baseType: !4402, size: 2304, offset: 64)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 2304, elements: !718)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4404, line: 12, size: 768, elements: !4405)
!4404 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4405 = !{!4406, !4414, !4415, !4416, !4417}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4403, file: !4404, line: 13, baseType: !4407, size: 384)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4408, line: 17, size: 384, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4409 = !{!4410, !4411, !4412, !4413}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4407, file: !4408, line: 18, baseType: !22, size: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4407, file: !4408, line: 19, baseType: !22, size: 32, offset: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4407, file: !4408, line: 20, baseType: !54, size: 192, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4407, file: !4408, line: 22, baseType: !662, size: 128, align: 64, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4403, file: !4404, line: 14, baseType: !2349, size: 64, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4403, file: !4404, line: 15, baseType: !3554, size: 64, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4403, file: !4404, line: 16, baseType: !54, size: 192, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4403, file: !4404, line: 17, baseType: !49, size: 32, offset: 704)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1410, file: !239, line: 1240, baseType: !20, size: 64, offset: 6912)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1410, file: !239, line: 1243, baseType: !321, size: 32, offset: 6976)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1410, file: !239, line: 1245, baseType: !875, size: 64, offset: 7040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1410, file: !239, line: 1246, baseType: !875, size: 64, offset: 7104)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1410, file: !239, line: 1248, baseType: !322, size: 32, offset: 7168)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1410, file: !239, line: 1249, baseType: !4424, size: 64, offset: 7232)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !239, line: 634, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1410, file: !239, line: 1252, baseType: !4427, size: 256, offset: 7296)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !4428)
!4428 = !{!4429}
!4429 = !DISubrange(count: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1410, file: !239, line: 1253, baseType: !4431, size: 128, offset: 7552)
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4432, line: 21, baseType: !4433)
!4432 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4432, line: 19, size: 128, elements: !4434)
!4434 = !{!4435}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4433, file: !4432, line: 20, baseType: !4436, size: 128)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !4437)
!4437 = !{!4438}
!4438 = !DISubrange(count: 16)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1410, file: !239, line: 1255, baseType: !7, size: 32, offset: 7680)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1410, file: !239, line: 1261, baseType: !682, size: 256, offset: 7744)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1410, file: !239, line: 1267, baseType: !16, size: 64, offset: 8000)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1410, file: !239, line: 1269, baseType: !4443, size: 64, offset: 8064)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1175, line: 128, size: 1024, align: 512, elements: !4446)
!4446 = !{!4447, !4451, !4452, !4459, !4465, !4469, !4473, !4477, !4478, !4482, !4486, !4491, !4495}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4445, file: !1175, line: 129, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!22, !1173, !7}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4445, file: !1175, line: 130, baseType: !4448, size: 64, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4445, file: !1175, line: 131, baseType: !4453, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!22, !4456, !4458}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4445, file: !1175, line: 132, baseType: !4460, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!22, !4456, !7, !16, !4463}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4445, file: !1175, line: 134, baseType: !4466, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!22, !4456}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4445, file: !1175, line: 135, baseType: !4470, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!22, !1173}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4445, file: !1175, line: 136, baseType: !4474, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !1173}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4445, file: !1175, line: 137, baseType: !4474, size: 64, offset: 448)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4445, file: !1175, line: 138, baseType: !4479, size: 64, offset: 512)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !1173, !1208}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4445, file: !1175, line: 139, baseType: !4483, size: 64, offset: 576)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!927, !1173, !927, !22}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4445, file: !1175, line: 140, baseType: !4487, size: 64, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!1168, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4445, file: !1175, line: 141, baseType: !4492, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!22, !1329, !839}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4445, file: !1175, line: 142, baseType: !4496, size: 64, offset: 768)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!1173, !1173, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1410, file: !239, line: 1271, baseType: !4502, size: 448, offset: 8128)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4185, line: 63, size: 448, elements: !4503)
!4503 = !{!4504, !4509, !4510, !4511, !4512, !4513, !4514}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4502, file: !4185, line: 64, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!39, !4508, !4183}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4502, file: !4185, line: 66, baseType: !4505, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4502, file: !4185, line: 69, baseType: !290, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4502, file: !4185, line: 70, baseType: !22, size: 32, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4502, file: !4185, line: 71, baseType: !7, size: 32, offset: 224)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4502, file: !4185, line: 74, baseType: !97, size: 128, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4502, file: !4185, line: 85, baseType: !4515, size: 64, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1410, file: !239, line: 1274, baseType: !675, size: 64, offset: 8576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1410, file: !239, line: 1280, baseType: !675, size: 64, offset: 8640)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1410, file: !239, line: 1283, baseType: !22, size: 32, offset: 8704)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1410, file: !239, line: 1286, baseType: !2046, size: 32, offset: 8736)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1410, file: !239, line: 1289, baseType: !2559, size: 64, offset: 8768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1410, file: !239, line: 1290, baseType: !730, size: 64, offset: 8832)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1410, file: !239, line: 1297, baseType: !781, size: 64, offset: 8896)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1410, file: !239, line: 1304, baseType: !4524, size: 64, offset: 8960)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4525, line: 49, size: 64, elements: !4526)
!4525 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4526 = !{!4527}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4524, file: !4525, line: 50, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4525, line: 41, size: 512, align: 512, elements: !4530)
!4530 = !{!4531, !4532, !4537}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4529, file: !4525, line: 43, baseType: !59, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4529, file: !4525, line: 45, baseType: !4533, size: 192, offset: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4525, line: 29, size: 192, elements: !4534)
!4534 = !{!4535, !4536}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4533, file: !4525, line: 30, baseType: !97, size: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4533, file: !4525, line: 32, baseType: !290, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4529, file: !4525, line: 46, baseType: !290, size: 64, offset: 256)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1410, file: !239, line: 1305, baseType: !4524, size: 64, offset: 9024)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1410, file: !239, line: 1306, baseType: !662, size: 128, align: 64, offset: 9088)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1410, file: !239, line: 1307, baseType: !966, size: 256, offset: 9216)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1410, file: !239, line: 1309, baseType: !682, size: 256, offset: 9472)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1410, file: !239, line: 1314, baseType: !22, size: 32, offset: 9728)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1410, file: !239, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1410, file: !239, line: 1318, baseType: !97, size: 128, offset: 10304)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1410, file: !239, line: 1320, baseType: !59, size: 32, offset: 10432)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1410, file: !239, line: 1321, baseType: !97, size: 128, offset: 10496)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1209, file: !239, line: 656, baseType: !1559, size: 64, offset: 512)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1209, file: !239, line: 659, baseType: !20, size: 64, offset: 576)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1209, file: !239, line: 663, baseType: !39, size: 64, offset: 640)
!4550 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !239, line: 671, baseType: !4551, size: 32, offset: 704)
!4551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !239, line: 671, size: 32, elements: !4552)
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4551, file: !239, line: 672, baseType: !2607, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4551, file: !239, line: 673, baseType: !7, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1209, file: !239, line: 675, baseType: !1282, size: 32, offset: 736)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1209, file: !239, line: 676, baseType: !41, size: 64, offset: 768)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1209, file: !239, line: 677, baseType: !1318, size: 128, offset: 832)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1209, file: !239, line: 678, baseType: !1318, size: 128, offset: 960)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1209, file: !239, line: 679, baseType: !1318, size: 128, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1209, file: !239, line: 680, baseType: !59, size: 32, offset: 1216)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1209, file: !239, line: 681, baseType: !26, size: 16, offset: 1248)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1209, file: !239, line: 682, baseType: !83, size: 8, offset: 1264)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1209, file: !239, line: 683, baseType: !83, size: 8, offset: 1272)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1209, file: !239, line: 684, baseType: !4316, size: 64, offset: 1280)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1209, file: !239, line: 691, baseType: !39, size: 64, offset: 1344)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1209, file: !239, line: 692, baseType: !859, size: 320, offset: 1408)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1209, file: !239, line: 694, baseType: !39, size: 64, offset: 1728)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1209, file: !239, line: 695, baseType: !39, size: 64, offset: 1792)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1209, file: !239, line: 697, baseType: !734, size: 128, offset: 1856)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1209, file: !239, line: 698, baseType: !97, size: 128, offset: 1984)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1209, file: !239, line: 707, baseType: !97, size: 128, offset: 2112)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1209, file: !239, line: 708, baseType: !97, size: 128, offset: 2240)
!4573 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !239, line: 709, baseType: !4574, size: 128, offset: 2368)
!4574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !239, line: 709, size: 128, elements: !4575)
!4575 = !{!4576, !4577}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4574, file: !239, line: 710, baseType: !730, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4574, file: !239, line: 711, baseType: !662, size: 128, align: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1209, file: !239, line: 713, baseType: !677, size: 64, offset: 2496)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1209, file: !239, line: 714, baseType: !677, size: 64, offset: 2560)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1209, file: !239, line: 715, baseType: !49, size: 32, offset: 2624)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1209, file: !239, line: 716, baseType: !49, size: 32, offset: 2656)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1209, file: !239, line: 717, baseType: !49, size: 32, offset: 2688)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1209, file: !239, line: 719, baseType: !49, size: 32, offset: 2720)
!4584 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !239, line: 721, baseType: !4585, size: 64, offset: 2752)
!4585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !239, line: 721, size: 64, elements: !4586)
!4586 = !{!4587, !4713}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4585, file: !239, line: 722, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !239, line: 1914, size: 2112, elements: !4591)
!4591 = !{!4592, !4593, !4597, !4601, !4605, !4606, !4607, !4613, !4626, !4630, !4634, !4635, !4639, !4640, !4644, !4649, !4650, !4654, !4658, !4664, !4665, !4669, !4670, !4676, !4680, !4681, !4686, !4690, !4694, !4698, !4702, !4703, !4709}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4590, file: !239, line: 1915, baseType: !1442, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4590, file: !239, line: 1916, baseType: !4594, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!41, !654, !41, !22}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4590, file: !239, line: 1917, baseType: !4598, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!1360, !654, !927, !35, !40}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4590, file: !239, line: 1918, baseType: !4602, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!1360, !654, !16, !35, !40}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4590, file: !239, line: 1919, baseType: !1980, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4590, file: !239, line: 1920, baseType: !1980, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4590, file: !239, line: 1921, baseType: !4608, size: 64, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!22, !1983, !4611, !7}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !239, line: 53, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4590, file: !239, line: 1923, baseType: !4614, size: 64, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!22, !654, !4617}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !239, line: 1858, size: 128, elements: !4619)
!4619 = !{!4620, !4625}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4618, file: !239, line: 1859, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !239, line: 1855, baseType: !4622)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!839, !4617, !16, !22, !41, !378, !7}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4618, file: !239, line: 1860, baseType: !41, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4590, file: !239, line: 1924, baseType: !4627, size: 64, offset: 512)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!2215, !654, !2217}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4590, file: !239, line: 1925, baseType: !4631, size: 64, offset: 576)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!290, !654, !7, !39}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4590, file: !239, line: 1926, baseType: !4631, size: 64, offset: 640)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4590, file: !239, line: 1927, baseType: !4636, size: 64, offset: 704)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!22, !654, !1689}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4590, file: !239, line: 1928, baseType: !39, size: 64, offset: 768)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4590, file: !239, line: 1929, baseType: !4641, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!22, !1208, !654}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4590, file: !239, line: 1930, baseType: !4645, size: 64, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!22, !654, !4648}
!4648 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !239, line: 1061, baseType: !20)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4590, file: !239, line: 1931, baseType: !4641, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4590, file: !239, line: 1932, baseType: !4651, size: 64, offset: 1024)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!22, !654, !41, !41, !22}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4590, file: !239, line: 1933, baseType: !4655, size: 64, offset: 1088)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!22, !22, !654, !22}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4590, file: !239, line: 1934, baseType: !4659, size: 64, offset: 1152)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!22, !654, !22, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !239, line: 1063, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4590, file: !239, line: 1935, baseType: !651, size: 64, offset: 1216)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4590, file: !239, line: 1936, baseType: !4666, size: 64, offset: 1280)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!22, !22}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4590, file: !239, line: 1937, baseType: !4659, size: 64, offset: 1344)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4590, file: !239, line: 1938, baseType: !4671, size: 64, offset: 1408)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!1360, !4674, !654, !40, !35, !7}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !312, line: 59, flags: DIFlagFwdDecl)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4590, file: !239, line: 1939, baseType: !4677, size: 64, offset: 1472)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!1360, !654, !40, !4674, !35, !7}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4590, file: !239, line: 1940, baseType: !2036, size: 64, offset: 1536)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4590, file: !239, line: 1941, baseType: !4682, size: 64, offset: 1600)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!22, !654, !22, !4685, !1957}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4590, file: !239, line: 1942, baseType: !4687, size: 64, offset: 1664)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!290, !654, !22, !41, !41}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4590, file: !239, line: 1944, baseType: !4691, size: 64, offset: 1728)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !2148, !654}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4590, file: !239, line: 1948, baseType: !4695, size: 64, offset: 1792)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!1360, !654, !41, !654, !41, !35, !7}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4590, file: !239, line: 1950, baseType: !4699, size: 64, offset: 1856)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!41, !654, !41, !654, !41, !41, !7}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4590, file: !239, line: 1953, baseType: !4651, size: 64, offset: 1920)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4590, file: !239, line: 1954, baseType: !4704, size: 64, offset: 1984)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!22, !4707, !7}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !239, line: 1911, flags: DIFlagFwdDecl)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4590, file: !239, line: 1955, baseType: !4710, size: 64, offset: 2048)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!22, !4707, !4611, !7}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4585, file: !239, line: 723, baseType: !4074, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1209, file: !239, line: 725, baseType: !4715, size: 64, offset: 2816)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !239, line: 725, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1209, file: !239, line: 726, baseType: !1560, size: 1536, align: 64, offset: 2880)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1209, file: !239, line: 727, baseType: !97, size: 128, offset: 4416)
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !239, line: 728, baseType: !4720, size: 64, offset: 4544)
!4720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !239, line: 728, size: 64, elements: !4721)
!4721 = !{!4722, !4723, !4726, !4727}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4720, file: !239, line: 729, baseType: !4674, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4720, file: !239, line: 730, baseType: !4724, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !239, line: 730, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4720, file: !239, line: 731, baseType: !927, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4720, file: !239, line: 732, baseType: !7, size: 32)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1209, file: !239, line: 735, baseType: !322, size: 32, offset: 4608)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1209, file: !239, line: 738, baseType: !322, size: 32, offset: 4640)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1209, file: !239, line: 739, baseType: !4424, size: 64, offset: 4672)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1209, file: !239, line: 750, baseType: !20, size: 64, offset: 4736)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1174, file: !1175, line: 91, baseType: !4733, size: 256, offset: 448)
!4733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !4428)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1174, file: !1175, line: 94, baseType: !4735, size: 64, offset: 704)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4736, line: 25, size: 64, elements: !4737)
!4736 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4737 = !{!4738}
!4738 = !DIDerivedType(tag: DW_TAG_member, scope: !4735, file: !4736, line: 26, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4735, file: !4736, line: 26, size: 64, elements: !4740)
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4739, file: !4736, line: 28, baseType: !379, size: 64, align: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, scope: !4739, file: !4736, line: 30, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4739, file: !4736, line: 30, size: 64, elements: !4744)
!4744 = !{!4745, !4746}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4743, file: !4736, line: 31, baseType: !59, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4743, file: !4736, line: 32, baseType: !22, size: 32, offset: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1174, file: !1175, line: 95, baseType: !4443, size: 64, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1174, file: !1175, line: 96, baseType: !1409, size: 64, offset: 832)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1174, file: !1175, line: 97, baseType: !39, size: 64, offset: 896)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1174, file: !1175, line: 98, baseType: !20, size: 64, offset: 960)
!4751 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1175, line: 100, baseType: !4752, size: 128, offset: 1024)
!4752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1175, line: 100, size: 128, elements: !4753)
!4753 = !{!4754, !4755}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4752, file: !1175, line: 101, baseType: !97, size: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4752, file: !1175, line: 102, baseType: !2226, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1174, file: !1175, line: 104, baseType: !97, size: 128, offset: 1152)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1174, file: !1175, line: 105, baseType: !97, size: 128, offset: 1280)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1174, file: !1175, line: 113, baseType: !4759, size: 128, offset: 1408)
!4759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1175, line: 109, size: 128, elements: !4760)
!4760 = !{!4761, !4762, !4763}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4759, file: !1175, line: 110, baseType: !734, size: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4759, file: !1175, line: 111, baseType: !1184, size: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4759, file: !1175, line: 112, baseType: !662, size: 128, align: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1169, file: !1170, line: 72, baseType: !1409, size: 64, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1169, file: !1170, line: 73, baseType: !22, size: 32, offset: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1169, file: !1170, line: 74, baseType: !1247, size: 64, offset: 192)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1164, file: !1165, line: 10, baseType: !1173, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !655, file: !239, line: 1015, baseType: !1208, size: 64, offset: 1344)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !655, file: !239, line: 1016, baseType: !4588, size: 64, offset: 1408)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !655, file: !239, line: 1018, baseType: !378, size: 64, offset: 1472)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !655, file: !239, line: 1020, baseType: !20, size: 64, offset: 1536)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !655, file: !239, line: 1023, baseType: !20, size: 64, offset: 1600)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !655, file: !239, line: 1027, baseType: !2775, size: 64, offset: 1664)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !655, file: !239, line: 1029, baseType: !1559, size: 64, offset: 1728)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !655, file: !239, line: 1030, baseType: !2046, size: 32, offset: 1792)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !655, file: !239, line: 1031, baseType: !2046, size: 32, offset: 1824)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !630, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !630, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !630, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !630, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !630, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !630, file: !131, line: 764, baseType: !4783, size: 64, offset: 1024)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1704, line: 299, baseType: !4785)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1704, line: 299, size: 64, elements: !4786)
!4786 = !{!4787}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4785, file: !1704, line: 299, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1709, line: 18, baseType: !39)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !630, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !630, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !630, file: !131, line: 795, baseType: !4792, size: 64, offset: 1152)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !4794)
!4794 = !{!4795, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4793, file: !131, line: 727, baseType: !378, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4793, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !630, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !630, file: !131, line: 804, baseType: !675, size: 64, offset: 1280)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !630, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !630, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !630, file: !131, line: 823, baseType: !859, size: 320, offset: 1408)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !630, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !630, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !630, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !630, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !630, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !630, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !630, file: !131, line: 854, baseType: !677, size: 64, offset: 2176)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !630, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !630, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !630, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !630, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !630, file: !131, line: 865, baseType: !500, size: 32, offset: 2496)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !630, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !630, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !630, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !630, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !630, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !630, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !630, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !630, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !630, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !630, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !630, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !630, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !630, file: !131, line: 873, baseType: !4827, size: 3328, offset: 3264)
!4827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !4828)
!4828 = !{!4829}
!4829 = !DISubrange(count: 52)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !630, file: !131, line: 875, baseType: !4831, size: 1280, offset: 6592)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 1280, elements: !739)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !630, file: !131, line: 877, baseType: !4833, size: 64, offset: 7872)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !630, file: !131, line: 880, baseType: !4836, size: 1088, offset: 7936)
!4836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4837, line: 72, baseType: !4838)
!4837 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4837, line: 23, size: 1088, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4847, !4848, !4849, !4850, !4875, !4876, !4877}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4838, file: !4837, line: 28, baseType: !378, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4838, file: !4837, line: 38, baseType: !677, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4838, file: !4837, line: 40, baseType: !39, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4838, file: !4837, line: 43, baseType: !859, size: 320, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4838, file: !4837, line: 44, baseType: !4845, size: 64, offset: 512)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4837, line: 44, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4838, file: !4837, line: 48, baseType: !39, size: 64, offset: 576)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4838, file: !4837, line: 59, baseType: !682, size: 256, offset: 640)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4838, file: !4837, line: 60, baseType: !20, size: 64, offset: 896)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4838, file: !4837, line: 61, baseType: !4851, size: 64, offset: 960)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4853)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4854, line: 13, size: 1216, elements: !4855)
!4854 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4855 = !{!4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4853, file: !4854, line: 14, baseType: !20, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4853, file: !4854, line: 15, baseType: !39, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4853, file: !4854, line: 17, baseType: !39, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4853, file: !4854, line: 17, baseType: !39, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4853, file: !4854, line: 18, baseType: !39, size: 64, offset: 256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4853, file: !4854, line: 18, baseType: !39, size: 64, offset: 320)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4853, file: !4854, line: 19, baseType: !2085, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4853, file: !4854, line: 21, baseType: !290, size: 64, offset: 448)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4853, file: !4854, line: 23, baseType: !290, size: 64, offset: 512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4853, file: !4854, line: 24, baseType: !290, size: 64, offset: 576)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4853, file: !4854, line: 25, baseType: !290, size: 64, offset: 640)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4853, file: !4854, line: 26, baseType: !290, size: 64, offset: 704)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4853, file: !4854, line: 27, baseType: !290, size: 64, offset: 768)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4853, file: !4854, line: 28, baseType: !290, size: 64, offset: 832)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4853, file: !4854, line: 29, baseType: !290, size: 64, offset: 896)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4853, file: !4854, line: 30, baseType: !290, size: 64, offset: 960)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4853, file: !4854, line: 31, baseType: !290, size: 64, offset: 1024)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4853, file: !4854, line: 32, baseType: !290, size: 64, offset: 1088)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4853, file: !4854, line: 33, baseType: !290, size: 64, offset: 1152)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4838, file: !4837, line: 63, baseType: !49, size: 32, offset: 1024)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4838, file: !4837, line: 69, baseType: !93, size: 16, offset: 1056)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4838, file: !4837, line: 70, baseType: !2403, size: 16, offset: 1072)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !630, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !630, file: !131, line: 886, baseType: !4881, size: 64, offset: 9152)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !630, file: !131, line: 901, baseType: !781, size: 64, offset: 9216)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !630, file: !131, line: 904, baseType: !654, size: 64, offset: 9280)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !630, file: !131, line: 906, baseType: !4886, size: 64, offset: 9344)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !630, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !630, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !630, file: !131, line: 935, baseType: !4891, size: 64, offset: 9472)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !256, line: 103, size: 64, elements: !4892)
!4892 = !{!4893}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4891, file: !256, line: 104, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !256, line: 101, flags: DIFlagFwdDecl)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !630, file: !131, line: 940, baseType: !675, size: 64, offset: 9536)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !630, file: !131, line: 942, baseType: !966, size: 256, offset: 9600)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !627, file: !131, line: 986, baseType: !4899, offset: 10240)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1070)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !311, file: !312, line: 882, baseType: !626, size: 64, offset: 9792)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !311, file: !312, line: 884, baseType: !22, size: 32, offset: 9856)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !311, file: !312, line: 885, baseType: !22, size: 32, offset: 9888)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !311, file: !312, line: 886, baseType: !22, size: 32, offset: 9920)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !311, file: !312, line: 888, baseType: !22, size: 32, offset: 9952)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !311, file: !312, line: 890, baseType: !39, size: 64, offset: 9984)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !311, file: !312, line: 893, baseType: !7, size: 32, offset: 10048)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !311, file: !312, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !311, file: !312, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !311, file: !312, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !311, file: !312, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !311, file: !312, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !311, file: !312, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !311, file: !312, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !311, file: !312, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !311, file: !312, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !311, file: !312, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !311, file: !312, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !311, file: !312, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !311, file: !312, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !311, file: !312, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !311, file: !312, line: 969, baseType: !39, size: 64, offset: 10176)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !311, file: !312, line: 971, baseType: !4923, size: 448, offset: 10240)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !250, line: 25, size: 448, elements: !4924)
!4924 = !{!4925, !4926, !4931}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4923, file: !250, line: 26, baseType: !39, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4923, file: !250, line: 27, baseType: !4927, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!290, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, scope: !4923, file: !250, line: 28, baseType: !4932, size: 320, offset: 128)
!4932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4923, file: !250, line: 28, size: 320, elements: !4933)
!4933 = !{!4934, !4944, !4969}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4932, file: !250, line: 37, baseType: !4935, size: 320)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4932, file: !250, line: 30, size: 320, elements: !4936)
!4936 = !{!4937, !4939, !4940, !4941, !4942, !4943}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4935, file: !250, line: 31, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4935, file: !250, line: 32, baseType: !321, size: 32, offset: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4935, file: !250, line: 33, baseType: !321, size: 32, offset: 96)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4935, file: !250, line: 34, baseType: !321, size: 32, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4935, file: !250, line: 35, baseType: !378, size: 64, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4935, file: !250, line: 36, baseType: !4938, size: 64, offset: 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4932, file: !250, line: 47, baseType: !4945, size: 192)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4932, file: !250, line: 39, size: 192, elements: !4946)
!4946 = !{!4947, !4948, !4949, !4968}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4945, file: !250, line: 40, baseType: !492, size: 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4945, file: !250, line: 41, baseType: !249, size: 32, offset: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, scope: !4945, file: !250, line: 42, baseType: !4950, size: 64, offset: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4945, file: !250, line: 42, size: 64, elements: !4951)
!4951 = !{!4952, !4960}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4950, file: !250, line: 43, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4955, line: 7, size: 128, elements: !4956)
!4955 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4956 = !{!4957, !4959}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4954, file: !4955, line: 8, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4954, file: !4955, line: 9, baseType: !43, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4950, file: !250, line: 44, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4963, line: 7, size: 64, elements: !4964)
!4963 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4964 = !{!4965, !4967}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4962, file: !4963, line: 8, baseType: !4966, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4963, line: 5, baseType: !851)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4962, file: !4963, line: 9, baseType: !851, size: 32, offset: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4945, file: !250, line: 46, baseType: !378, size: 64, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4932, file: !250, line: 55, baseType: !4970, size: 256)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4932, file: !250, line: 49, size: 256, elements: !4971)
!4971 = !{!4972, !4980, !4981, !4982, !4983}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4970, file: !250, line: 50, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4975, line: 36, size: 64, elements: !4976)
!4975 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4976 = !{!4977, !4978, !4979}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4974, file: !4975, line: 37, baseType: !22, size: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4974, file: !4975, line: 38, baseType: !887, size: 16, offset: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4974, file: !4975, line: 39, baseType: !887, size: 16, offset: 48)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4970, file: !250, line: 51, baseType: !22, size: 32, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4970, file: !250, line: 52, baseType: !22, size: 32, offset: 96)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4970, file: !250, line: 53, baseType: !39, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4970, file: !250, line: 54, baseType: !39, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !311, file: !312, line: 973, baseType: !288, size: 32, offset: 10688)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !311, file: !312, line: 974, baseType: !288, size: 32, offset: 10720)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !311, file: !312, line: 978, baseType: !39, size: 64, offset: 10752)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !311, file: !312, line: 987, baseType: !310, size: 64, offset: 10816)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !311, file: !312, line: 990, baseType: !310, size: 64, offset: 10880)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !311, file: !312, line: 995, baseType: !97, size: 128, offset: 10944)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !311, file: !312, line: 996, baseType: !97, size: 128, offset: 11072)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !311, file: !312, line: 997, baseType: !310, size: 64, offset: 11200)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !311, file: !312, line: 1005, baseType: !97, size: 128, offset: 11264)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !311, file: !312, line: 1006, baseType: !97, size: 128, offset: 11392)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !311, file: !312, line: 1009, baseType: !722, size: 64, offset: 11520)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !311, file: !312, line: 1010, baseType: !4996, size: 512, offset: 11584)
!4996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 512, elements: !739)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !311, file: !312, line: 1011, baseType: !97, size: 128, offset: 12096)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !311, file: !312, line: 1012, baseType: !97, size: 128, offset: 12224)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !311, file: !312, line: 1014, baseType: !1004, size: 64, offset: 12352)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !311, file: !312, line: 1017, baseType: !2396, size: 64, offset: 12416)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !311, file: !312, line: 1020, baseType: !2396, size: 64, offset: 12480)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !311, file: !312, line: 1023, baseType: !20, size: 64, offset: 12544)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !311, file: !312, line: 1025, baseType: !378, size: 64, offset: 12608)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !311, file: !312, line: 1026, baseType: !378, size: 64, offset: 12672)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !311, file: !312, line: 1031, baseType: !378, size: 64, offset: 12736)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !311, file: !312, line: 1032, baseType: !3851, size: 192, offset: 12800)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !311, file: !312, line: 1041, baseType: !39, size: 64, offset: 12992)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !311, file: !312, line: 1042, baseType: !39, size: 64, offset: 13056)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !311, file: !312, line: 1045, baseType: !378, size: 64, offset: 13120)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !311, file: !312, line: 1048, baseType: !378, size: 64, offset: 13184)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !311, file: !312, line: 1051, baseType: !39, size: 64, offset: 13248)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !311, file: !312, line: 1052, baseType: !39, size: 64, offset: 13312)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !311, file: !312, line: 1055, baseType: !5014, size: 640, offset: 13376)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5015, line: 132, size: 640, elements: !5016)
!5015 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5016 = !{!5017, !5023, !5024}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5014, file: !5015, line: 133, baseType: !5018, size: 576)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5019, size: 576, elements: !718)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5015, line: 117, size: 192, elements: !5020)
!5020 = !{!5021, !5022}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5019, file: !5015, line: 118, baseType: !378, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5019, file: !5015, line: 119, baseType: !506, size: 128, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5014, file: !5015, line: 134, baseType: !7, size: 32, offset: 576)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5014, file: !5015, line: 135, baseType: !7, size: 32, offset: 608)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !311, file: !312, line: 1058, baseType: !5026, size: 448, offset: 14016)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5015, line: 144, size: 448, elements: !5027)
!5027 = !{!5028, !5029, !5030}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5026, file: !5015, line: 145, baseType: !662, size: 128, align: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5026, file: !5015, line: 146, baseType: !682, size: 256, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5026, file: !5015, line: 147, baseType: !7, size: 32, offset: 384)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !311, file: !312, line: 1064, baseType: !1077, size: 64, offset: 14464)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !311, file: !312, line: 1067, baseType: !1077, size: 64, offset: 14528)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !311, file: !312, line: 1070, baseType: !1077, size: 64, offset: 14592)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !311, file: !312, line: 1074, baseType: !843, size: 64, offset: 14656)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !311, file: !312, line: 1084, baseType: !5036, size: 128, offset: 14720)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !4437)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !311, file: !312, line: 1086, baseType: !5038, size: 64, offset: 14848)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !312, line: 55, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !311, file: !312, line: 1089, baseType: !5041, size: 64, offset: 14912)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5042, line: 12, size: 64, elements: !5043)
!5042 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5043 = !{!5044}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5041, file: !5042, line: 13, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5042, line: 8, flags: DIFlagFwdDecl)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !311, file: !312, line: 1090, baseType: !5048, size: 128, offset: 14976)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5049, line: 13, size: 128, elements: !5050)
!5049 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5050 = !{!5051}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5048, file: !5049, line: 14, baseType: !97, size: 128)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !311, file: !312, line: 1097, baseType: !5053, size: 64, offset: 15104)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !312, line: 50, flags: DIFlagFwdDecl)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !311, file: !312, line: 1100, baseType: !5056, size: 64, offset: 15168)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !5058, line: 48, size: 5632, elements: !5059)
!5058 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!5059 = !{!5060, !5061, !5062, !5063, !5074, !5075, !5076, !5077, !5078, !5079, !5080}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5057, file: !5058, line: 52, baseType: !49, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !5057, file: !5058, line: 53, baseType: !839, size: 8, offset: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !5057, file: !5058, line: 54, baseType: !54, size: 192, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !5057, file: !5058, line: 56, baseType: !5064, size: 64, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !5058, line: 26, size: 448, elements: !5066)
!5066 = !{!5067, !5068, !5070, !5071, !5072, !5073}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !5065, file: !5058, line: 27, baseType: !7, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5065, file: !5058, line: 28, baseType: !5069, size: 64, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !5065, file: !5058, line: 29, baseType: !4044, size: 64, offset: 128)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !5065, file: !5058, line: 30, baseType: !4044, size: 64, offset: 192)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !5065, file: !5058, line: 31, baseType: !4044, size: 64, offset: 256)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5065, file: !5058, line: 32, baseType: !662, size: 128, align: 64, offset: 320)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !5057, file: !5058, line: 57, baseType: !5065, size: 448, offset: 320)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !5057, file: !5058, line: 61, baseType: !59, size: 32, align: 512, offset: 1024)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !5057, file: !5058, line: 62, baseType: !7, size: 32, offset: 1056)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !5057, file: !5058, line: 63, baseType: !577, size: 64, offset: 1088)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !5057, file: !5058, line: 64, baseType: !577, size: 64, offset: 1152)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !5057, file: !5058, line: 65, baseType: !577, size: 64, offset: 1216)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !5057, file: !5058, line: 66, baseType: !5081, size: 4096, offset: 1280)
!5081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 4096, elements: !1498)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !311, file: !312, line: 1103, baseType: !5083, size: 64, offset: 15232)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !312, line: 53, flags: DIFlagFwdDecl)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !311, file: !312, line: 1107, baseType: !5086, size: 64, offset: 15296)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5088, line: 31, size: 576, elements: !5089)
!5088 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5089 = !{!5090, !5091, !5094, !5097, !5100, !5101, !5104, !5107, !5108}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5087, file: !5088, line: 32, baseType: !327, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5087, file: !5088, line: 33, baseType: !5092, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5088, line: 9, flags: DIFlagFwdDecl)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5087, file: !5088, line: 34, baseType: !5095, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5088, line: 10, flags: DIFlagFwdDecl)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5087, file: !5088, line: 35, baseType: !5098, size: 64, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5088, line: 8, flags: DIFlagFwdDecl)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5087, file: !5088, line: 36, baseType: !750, size: 64, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5087, file: !5088, line: 37, baseType: !5102, size: 64, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !845, line: 34, flags: DIFlagFwdDecl)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5087, file: !5088, line: 38, baseType: !5105, size: 64, offset: 384)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5088, line: 38, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5087, file: !5088, line: 39, baseType: !5105, size: 64, offset: 448)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5087, file: !5088, line: 40, baseType: !5109, size: 64, offset: 512)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5111, line: 771, size: 384, elements: !5112)
!5111 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5112 = !{!5113, !5114, !5115, !5116}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5110, file: !5111, line: 772, baseType: !827, size: 192)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5110, file: !5111, line: 773, baseType: !781, size: 64, offset: 192)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5110, file: !5111, line: 774, baseType: !1049, size: 64, offset: 256)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5110, file: !5111, line: 775, baseType: !3921, size: 64, offset: 320)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !311, file: !312, line: 1110, baseType: !5118, size: 64, offset: 15360)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5120, line: 93, size: 8768, elements: !5121)
!5120 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5121 = !{!5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5170, !5179, !5180, !5182, !5183, !5184, !5187, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5225, !5226, !5233, !5243, !5305, !5306, !5309, !5310, !5311, !5312, !5313, !5314}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5119, file: !5120, line: 94, baseType: !327, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5119, file: !5120, line: 95, baseType: !49, size: 32, offset: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5119, file: !5120, line: 96, baseType: !22, size: 32, offset: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5119, file: !5120, line: 97, baseType: !22, size: 32, offset: 96)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5119, file: !5120, line: 98, baseType: !97, size: 128, offset: 128)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5119, file: !5120, line: 100, baseType: !54, size: 192, offset: 256)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5119, file: !5120, line: 103, baseType: !310, size: 64, offset: 448)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5119, file: !5120, line: 106, baseType: !5130, size: 192, offset: 512)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5131, line: 32, size: 192, elements: !5132)
!5131 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5132 = !{!5133, !5134}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5130, file: !5131, line: 33, baseType: !97, size: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5130, file: !5131, line: 34, baseType: !5135, size: 64, offset: 128)
!5135 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5136, line: 25, baseType: !5137)
!5136 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5136, line: 23, size: 64, elements: !5138)
!5138 = !{!5139}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5137, file: !5136, line: 24, baseType: !577, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5119, file: !5120, line: 109, baseType: !730, size: 64, offset: 704)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5119, file: !5120, line: 112, baseType: !22, size: 32, offset: 768)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5119, file: !5120, line: 114, baseType: !22, size: 32, offset: 800)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5119, file: !5120, line: 115, baseType: !310, size: 64, offset: 832)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5119, file: !5120, line: 118, baseType: !22, size: 32, offset: 896)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5119, file: !5120, line: 119, baseType: !7, size: 32, offset: 928)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5119, file: !5120, line: 121, baseType: !5147, size: 64, offset: 960)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5120, line: 80, size: 448, elements: !5149)
!5149 = !{!5150, !5151, !5157}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5148, file: !5120, line: 81, baseType: !49, size: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5148, file: !5120, line: 82, baseType: !5152, size: 128, offset: 64)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5120, line: 75, size: 128, elements: !5153)
!5153 = !{!5154, !5155}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5152, file: !5120, line: 76, baseType: !310, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5152, file: !5120, line: 77, baseType: !5156, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5148, file: !5120, line: 83, baseType: !1005, size: 256, offset: 192)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5119, file: !5120, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5119, file: !5120, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5119, file: !5120, line: 138, baseType: !7, size: 32, offset: 1056)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5119, file: !5120, line: 139, baseType: !97, size: 128, offset: 1088)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5119, file: !5120, line: 142, baseType: !445, size: 512, offset: 1216)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5119, file: !5120, line: 143, baseType: !453, size: 64, offset: 1728)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5119, file: !5120, line: 150, baseType: !5165, size: 256, offset: 1792)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5166, size: 256, elements: !2387)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5120, line: 38, size: 128, elements: !5167)
!5167 = !{!5168, !5169}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5166, file: !5120, line: 39, baseType: !378, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5166, file: !5120, line: 40, baseType: !378, size: 64, offset: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5119, file: !5120, line: 156, baseType: !5171, size: 192, offset: 2048)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5120, line: 66, size: 192, elements: !5172)
!5172 = !{!5173}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5171, file: !5120, line: 67, baseType: !5174, size: 192)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5120, line: 47, size: 192, elements: !5175)
!5175 = !{!5176, !5177, !5178}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5174, file: !5120, line: 48, baseType: !677, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5174, file: !5120, line: 49, baseType: !677, size: 64, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5174, file: !5120, line: 50, baseType: !677, size: 64, offset: 128)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5119, file: !5120, line: 160, baseType: !5014, size: 640, offset: 2240)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5119, file: !5120, line: 163, baseType: !5181, size: 256, offset: 2880)
!5181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 256, elements: !739)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5119, file: !5120, line: 169, baseType: !722, size: 64, offset: 3136)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5119, file: !5120, line: 172, baseType: !22, size: 32, offset: 3200)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5119, file: !5120, line: 174, baseType: !5185, size: 64, offset: 3264)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5120, line: 174, flags: DIFlagFwdDecl)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5119, file: !5120, line: 185, baseType: !5188, size: 64, offset: 3328)
!5188 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !496, line: 860, baseType: !5189)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 853, size: 64, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5189, file: !496, line: 858, baseType: !1179, size: 32)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5189, file: !496, line: 859, baseType: !59, size: 32, offset: 32)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5119, file: !5120, line: 186, baseType: !378, size: 64, offset: 3392)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5119, file: !5120, line: 186, baseType: !378, size: 64, offset: 3456)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5119, file: !5120, line: 186, baseType: !378, size: 64, offset: 3520)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5119, file: !5120, line: 186, baseType: !378, size: 64, offset: 3584)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5119, file: !5120, line: 187, baseType: !378, size: 64, offset: 3648)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5119, file: !5120, line: 188, baseType: !378, size: 64, offset: 3712)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5119, file: !5120, line: 189, baseType: !3851, size: 192, offset: 3776)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5119, file: !5120, line: 190, baseType: !39, size: 64, offset: 3968)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5119, file: !5120, line: 190, baseType: !39, size: 64, offset: 4032)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5119, file: !5120, line: 190, baseType: !39, size: 64, offset: 4096)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5119, file: !5120, line: 190, baseType: !39, size: 64, offset: 4160)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5119, file: !5120, line: 191, baseType: !39, size: 64, offset: 4224)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5119, file: !5120, line: 191, baseType: !39, size: 64, offset: 4288)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5119, file: !5120, line: 191, baseType: !39, size: 64, offset: 4352)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5119, file: !5120, line: 191, baseType: !39, size: 64, offset: 4416)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5119, file: !5120, line: 192, baseType: !39, size: 64, offset: 4480)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5119, file: !5120, line: 192, baseType: !39, size: 64, offset: 4544)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5119, file: !5120, line: 192, baseType: !39, size: 64, offset: 4608)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5119, file: !5120, line: 192, baseType: !39, size: 64, offset: 4672)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5119, file: !5120, line: 193, baseType: !39, size: 64, offset: 4736)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5119, file: !5120, line: 193, baseType: !39, size: 64, offset: 4800)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5119, file: !5120, line: 194, baseType: !5215, size: 448, offset: 4864)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5216, line: 12, size: 448, elements: !5217)
!5216 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223, !5224}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5215, file: !5216, line: 15, baseType: !378, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5215, file: !5216, line: 17, baseType: !378, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5215, file: !5216, line: 19, baseType: !378, size: 64, offset: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5215, file: !5216, line: 21, baseType: !378, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5215, file: !5216, line: 29, baseType: !378, size: 64, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5215, file: !5216, line: 35, baseType: !378, size: 64, offset: 320)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5215, file: !5216, line: 44, baseType: !378, size: 64, offset: 384)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5119, file: !5120, line: 202, baseType: !380, size: 64, offset: 5312)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5119, file: !5120, line: 213, baseType: !5227, size: 2048, offset: 5376)
!5227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5228, size: 2048, elements: !4437)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5229, line: 43, size: 128, elements: !5230)
!5229 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5228, file: !5229, line: 44, baseType: !38, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5228, file: !5229, line: 45, baseType: !38, size: 64, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5119, file: !5120, line: 216, baseType: !5234, size: 448, offset: 7424)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5120, line: 30, size: 448, elements: !5235)
!5235 = !{!5236, !5237, !5238, !5239, !5240, !5241, !5242}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5234, file: !5120, line: 31, baseType: !22, size: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5234, file: !5120, line: 32, baseType: !290, size: 64, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5234, file: !5120, line: 33, baseType: !39, size: 64, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5234, file: !5120, line: 34, baseType: !378, size: 64, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5234, file: !5120, line: 34, baseType: !378, size: 64, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5234, file: !5120, line: 35, baseType: !39, size: 64, offset: 320)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5234, file: !5120, line: 35, baseType: !39, size: 64, offset: 384)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5119, file: !5120, line: 219, baseType: !5244, size: 64, offset: 7872)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5246, line: 41, size: 3456, elements: !5247)
!5246 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5245, file: !5246, line: 47, baseType: !94, size: 16)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5245, file: !5246, line: 48, baseType: !322, size: 32, offset: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5245, file: !5246, line: 54, baseType: !85, size: 8, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5245, file: !5246, line: 55, baseType: !85, size: 8, offset: 72)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5245, file: !5246, line: 73, baseType: !379, size: 64, align: 64, offset: 128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5245, file: !5246, line: 74, baseType: !379, size: 64, offset: 192)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5245, file: !5246, line: 81, baseType: !379, size: 64, offset: 256)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5245, file: !5246, line: 82, baseType: !379, size: 64, offset: 320)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5245, file: !5246, line: 85, baseType: !379, size: 64, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5245, file: !5246, line: 86, baseType: !379, size: 64, offset: 448)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5245, file: !5246, line: 94, baseType: !379, size: 64, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5245, file: !5246, line: 102, baseType: !379, size: 64, offset: 576)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5245, file: !5246, line: 107, baseType: !4427, size: 256, offset: 640)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5245, file: !5246, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5245, file: !5246, line: 110, baseType: !5263, size: 24, offset: 904)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !718)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5245, file: !5246, line: 111, baseType: !322, size: 32, align: 64, offset: 960)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5245, file: !5246, line: 113, baseType: !322, size: 32, offset: 992)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5245, file: !5246, line: 114, baseType: !322, size: 32, offset: 1024)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5245, file: !5246, line: 115, baseType: !322, size: 32, offset: 1056)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5245, file: !5246, line: 117, baseType: !322, size: 32, offset: 1088)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5245, file: !5246, line: 118, baseType: !379, size: 64, align: 64, offset: 1152)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5245, file: !5246, line: 120, baseType: !379, size: 64, offset: 1216)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5245, file: !5246, line: 121, baseType: !379, size: 64, offset: 1280)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5245, file: !5246, line: 122, baseType: !379, size: 64, offset: 1344)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5245, file: !5246, line: 123, baseType: !379, size: 64, offset: 1408)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5245, file: !5246, line: 133, baseType: !379, size: 64, offset: 1472)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5245, file: !5246, line: 137, baseType: !379, size: 64, offset: 1536)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5245, file: !5246, line: 142, baseType: !379, size: 64, offset: 1600)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5245, file: !5246, line: 143, baseType: !379, size: 64, offset: 1664)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5245, file: !5246, line: 146, baseType: !379, size: 64, offset: 1728)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5245, file: !5246, line: 147, baseType: !379, size: 64, offset: 1792)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5245, file: !5246, line: 148, baseType: !379, size: 64, offset: 1856)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5245, file: !5246, line: 149, baseType: !379, size: 64, offset: 1920)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5245, file: !5246, line: 154, baseType: !379, size: 64, offset: 1984)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5245, file: !5246, line: 155, baseType: !379, size: 64, offset: 2048)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5245, file: !5246, line: 156, baseType: !379, size: 64, offset: 2112)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5245, file: !5246, line: 158, baseType: !379, size: 64, offset: 2176)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5245, file: !5246, line: 159, baseType: !379, size: 64, offset: 2240)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5245, file: !5246, line: 162, baseType: !379, size: 64, offset: 2304)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5245, file: !5246, line: 163, baseType: !379, size: 64, offset: 2368)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5245, file: !5246, line: 164, baseType: !379, size: 64, offset: 2432)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5245, file: !5246, line: 167, baseType: !379, size: 64, offset: 2496)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5245, file: !5246, line: 168, baseType: !379, size: 64, offset: 2560)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5245, file: !5246, line: 171, baseType: !379, size: 64, offset: 2624)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5245, file: !5246, line: 172, baseType: !379, size: 64, offset: 2688)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5245, file: !5246, line: 175, baseType: !379, size: 64, offset: 2752)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5245, file: !5246, line: 178, baseType: !379, size: 64, offset: 2816)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5245, file: !5246, line: 179, baseType: !379, size: 64, offset: 2880)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5245, file: !5246, line: 182, baseType: !322, size: 32, offset: 2944)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5245, file: !5246, line: 186, baseType: !379, size: 64, align: 64, offset: 3008)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5245, file: !5246, line: 194, baseType: !379, size: 64, offset: 3072)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5245, file: !5246, line: 195, baseType: !379, size: 64, offset: 3136)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5245, file: !5246, line: 199, baseType: !379, size: 64, offset: 3200)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5245, file: !5246, line: 200, baseType: !379, size: 64, offset: 3264)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5245, file: !5246, line: 203, baseType: !379, size: 64, offset: 3328)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5245, file: !5246, line: 204, baseType: !379, size: 64, offset: 3392)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5119, file: !5120, line: 222, baseType: !7, size: 32, offset: 7936)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5119, file: !5120, line: 223, baseType: !5307, size: 64, offset: 8000)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5120, line: 223, flags: DIFlagFwdDecl)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5119, file: !5120, line: 230, baseType: !839, size: 8, offset: 8064)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5119, file: !5120, line: 231, baseType: !887, size: 16, offset: 8080)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5119, file: !5120, line: 232, baseType: !887, size: 16, offset: 8096)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5119, file: !5120, line: 234, baseType: !626, size: 64, offset: 8128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5119, file: !5120, line: 237, baseType: !682, size: 256, offset: 8192)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5119, file: !5120, line: 243, baseType: !859, size: 320, offset: 8448)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !311, file: !312, line: 1111, baseType: !5316, size: 64, offset: 15424)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5120, line: 20, size: 16640, elements: !5318)
!5318 = !{!5319, !5320, !5321, !5322}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5317, file: !5120, line: 21, baseType: !59, size: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5317, file: !5120, line: 22, baseType: !327, size: 32, offset: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5317, file: !5120, line: 23, baseType: !54, size: 192, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5317, file: !5120, line: 24, baseType: !5323, size: 16384, offset: 256)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5324, size: 16384, elements: !1498)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5131, line: 51, size: 256, elements: !5325)
!5325 = !{!5326}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5324, file: !5131, line: 52, baseType: !5327, size: 256)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5131, line: 37, size: 256, elements: !5328)
!5328 = !{!5329, !5336, !5337, !5341}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5327, file: !5131, line: 39, baseType: !5330, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5331, line: 83, baseType: !5332)
!5331 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5331, line: 82, baseType: !5334)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !22}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5327, file: !5131, line: 40, baseType: !39, size: 64, offset: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5327, file: !5131, line: 46, baseType: !5338, size: 64, offset: 128)
!5338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5331, line: 86, baseType: !5339)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5331, line: 85, baseType: !2672)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5327, file: !5131, line: 48, baseType: !5135, size: 64, offset: 192)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !311, file: !312, line: 1112, baseType: !5135, size: 64, offset: 15488)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !311, file: !312, line: 1113, baseType: !5135, size: 64, offset: 15552)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !311, file: !312, line: 1115, baseType: !5135, size: 64, offset: 15616)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !311, file: !312, line: 1116, baseType: !5130, size: 192, offset: 15680)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !311, file: !312, line: 1117, baseType: !39, size: 64, offset: 15872)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !311, file: !312, line: 1118, baseType: !35, size: 64, offset: 15936)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !311, file: !312, line: 1119, baseType: !7, size: 32, offset: 16000)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !311, file: !312, line: 1121, baseType: !665, size: 64, offset: 16064)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !311, file: !312, line: 1125, baseType: !5351, size: 64, offset: 16128)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !312, line: 43, flags: DIFlagFwdDecl)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !311, file: !312, line: 1127, baseType: !812, size: 32, offset: 16192)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !311, file: !312, line: 1128, baseType: !7, size: 32, offset: 16224)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !311, file: !312, line: 1130, baseType: !5356, size: 128, offset: 16256)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5357, line: 37, size: 128, elements: !5358)
!5357 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5358 = !{!5359, !5360, !5361}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5356, file: !5357, line: 38, baseType: !22, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5356, file: !5357, line: 39, baseType: !49, size: 32, offset: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5356, file: !5357, line: 40, baseType: !5362, size: 64, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5357, line: 24, flags: DIFlagFwdDecl)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !311, file: !312, line: 1131, baseType: !5365, size: 256, offset: 16384)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5366, line: 12, size: 256, elements: !5367)
!5366 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5367 = !{!5368, !5369, !5370, !5371}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5365, file: !5366, line: 13, baseType: !927, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5365, file: !5366, line: 14, baseType: !39, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5365, file: !5366, line: 15, baseType: !39, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5365, file: !5366, line: 16, baseType: !839, size: 8, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !311, file: !312, line: 1134, baseType: !378, size: 64, offset: 16640)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !311, file: !312, line: 1135, baseType: !378, size: 64, offset: 16704)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !311, file: !312, line: 1138, baseType: !59, size: 32, offset: 16768)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !311, file: !312, line: 1141, baseType: !470, size: 32, offset: 16800)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !311, file: !312, line: 1143, baseType: !5377, size: 64, offset: 16832)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !312, line: 735, size: 64, elements: !5378)
!5378 = !{!5379}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5377, file: !312, line: 736, baseType: !5380, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !311, file: !312, line: 1147, baseType: !509, size: 128, offset: 16896)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !311, file: !312, line: 1149, baseType: !310, size: 64, offset: 17024)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !311, file: !312, line: 1151, baseType: !5384, size: 64, offset: 17088)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !312, line: 1151, flags: DIFlagFwdDecl)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !311, file: !312, line: 1188, baseType: !20, size: 64, offset: 17152)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !311, file: !312, line: 1191, baseType: !5388, size: 64, offset: 17216)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !312, line: 44, flags: DIFlagFwdDecl)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !311, file: !312, line: 1194, baseType: !5391, size: 64, offset: 17280)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !312, line: 45, flags: DIFlagFwdDecl)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !311, file: !312, line: 1197, baseType: !5394, size: 64, offset: 17344)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !312, line: 61, flags: DIFlagFwdDecl)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !311, file: !312, line: 1199, baseType: !5397, size: 64, offset: 17408)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5399, line: 99, size: 128, elements: !5400)
!5399 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5400 = !{!5401, !5402, !5403}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5398, file: !5399, line: 100, baseType: !675, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5398, file: !5399, line: 101, baseType: !49, size: 32, offset: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5398, file: !5399, line: 103, baseType: !26, size: 16, offset: 96)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !311, file: !312, line: 1202, baseType: !5405, size: 64, offset: 17472)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !312, line: 48, flags: DIFlagFwdDecl)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !311, file: !312, line: 1205, baseType: !39, size: 64, offset: 17536)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !311, file: !312, line: 1206, baseType: !5409, size: 64, offset: 17600)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5131, line: 14, baseType: !5411)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5131, line: 12, size: 384, elements: !5412)
!5412 = !{!5413}
!5413 = !DIDerivedType(tag: DW_TAG_member, scope: !5411, file: !5131, line: 13, baseType: !5414, size: 384)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5411, file: !5131, line: 13, size: 384, elements: !5415)
!5415 = !{!5416, !5417, !5418, !5419}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5414, file: !5131, line: 13, baseType: !22, size: 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5414, file: !5131, line: 13, baseType: !22, size: 32, offset: 32)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5414, file: !5131, line: 13, baseType: !22, size: 32, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5414, file: !5131, line: 13, baseType: !5420, size: 256, offset: 128)
!5420 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5421, line: 37, size: 256, elements: !5422)
!5421 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5422 = !{!5423, !5428, !5441, !5447, !5456, !5483, !5488}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5420, file: !5421, line: 42, baseType: !5424, size: 64)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 39, size: 64, elements: !5425)
!5425 = !{!5426, !5427}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5424, file: !5421, line: 40, baseType: !289, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5424, file: !5421, line: 41, baseType: !818, size: 32, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5420, file: !5421, line: 50, baseType: !5429, size: 192)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 45, size: 192, elements: !5430)
!5430 = !{!5431, !5433, !5434, !5440}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5429, file: !5421, line: 46, baseType: !5432, size: 32)
!5432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5429, file: !5421, line: 47, baseType: !22, size: 32, offset: 32)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5429, file: !5421, line: 48, baseType: !5435, size: 64, offset: 64)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5421, line: 11, baseType: !5436)
!5436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5421, line: 8, size: 64, elements: !5437)
!5437 = !{!5438, !5439}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5436, file: !5421, line: 9, baseType: !22, size: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5436, file: !5421, line: 10, baseType: !20, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5429, file: !5421, line: 49, baseType: !22, size: 32, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5420, file: !5421, line: 57, baseType: !5442, size: 128)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 53, size: 128, elements: !5443)
!5443 = !{!5444, !5445, !5446}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5442, file: !5421, line: 54, baseType: !289, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5442, file: !5421, line: 55, baseType: !818, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5442, file: !5421, line: 56, baseType: !5435, size: 64, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5420, file: !5421, line: 66, baseType: !5448, size: 256)
!5448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 60, size: 256, elements: !5449)
!5449 = !{!5450, !5451, !5452, !5453, !5455}
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5448, file: !5421, line: 61, baseType: !289, size: 32)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5448, file: !5421, line: 62, baseType: !818, size: 32, offset: 32)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5448, file: !5421, line: 63, baseType: !22, size: 32, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5448, file: !5421, line: 64, baseType: !5454, size: 64, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1362)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5448, file: !5421, line: 65, baseType: !5454, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5420, file: !5421, line: 105, baseType: !5457, size: 256)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 69, size: 256, elements: !5458)
!5458 = !{!5459, !5460}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5457, file: !5421, line: 70, baseType: !20, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, scope: !5457, file: !5421, line: 79, baseType: !5461, size: 192, offset: 64)
!5461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5457, file: !5421, line: 79, size: 192, elements: !5462)
!5462 = !{!5463, !5464, !5465, !5472, !5477}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5461, file: !5421, line: 81, baseType: !22, size: 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5461, file: !5421, line: 86, baseType: !887, size: 16)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5461, file: !5421, line: 92, baseType: !5466, size: 192)
!5466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !5421, line: 88, size: 192, elements: !5467)
!5467 = !{!5468, !5470, !5471}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5466, file: !5421, line: 89, baseType: !5469, size: 64)
!5469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !489)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5466, file: !5421, line: 90, baseType: !20, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5466, file: !5421, line: 91, baseType: !20, size: 64, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5461, file: !5421, line: 97, baseType: !5473, size: 96)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !5421, line: 94, size: 96, elements: !5474)
!5474 = !{!5475, !5476}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5473, file: !5421, line: 95, baseType: !5469, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5473, file: !5421, line: 96, baseType: !322, size: 32, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5461, file: !5421, line: 103, baseType: !5478, size: 128)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !5421, line: 99, size: 128, elements: !5479)
!5479 = !{!5480, !5481, !5482}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5478, file: !5421, line: 100, baseType: !39, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5478, file: !5421, line: 101, baseType: !322, size: 32, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5478, file: !5421, line: 102, baseType: !322, size: 32, offset: 96)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5420, file: !5421, line: 111, baseType: !5484, size: 128)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 108, size: 128, elements: !5485)
!5485 = !{!5486, !5487}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5484, file: !5421, line: 109, baseType: !290, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5484, file: !5421, line: 110, baseType: !22, size: 32, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5420, file: !5421, line: 118, baseType: !5489, size: 128)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5420, file: !5421, line: 114, size: 128, elements: !5490)
!5490 = !{!5491, !5492, !5493}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5489, file: !5421, line: 115, baseType: !20, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5489, file: !5421, line: 116, baseType: !22, size: 32, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5489, file: !5421, line: 117, baseType: !7, size: 32, offset: 96)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !311, file: !312, line: 1208, baseType: !5215, size: 448, offset: 17664)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !311, file: !312, line: 1215, baseType: !378, size: 64, offset: 18112)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !311, file: !312, line: 1217, baseType: !378, size: 64, offset: 18176)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !311, file: !312, line: 1219, baseType: !378, size: 64, offset: 18240)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !311, file: !312, line: 1223, baseType: !5499, size: 64, offset: 18304)
!5499 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5500, line: 99, baseType: !5501)
!5500 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5500, line: 99, size: 64, elements: !5502)
!5502 = !{!5503}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5501, file: !5500, line: 99, baseType: !577, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !311, file: !312, line: 1225, baseType: !1179, size: 32, offset: 18368)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !311, file: !312, line: 1226, baseType: !22, size: 32, offset: 18400)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !311, file: !312, line: 1227, baseType: !22, size: 32, offset: 18432)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !311, file: !312, line: 1231, baseType: !3921, size: 64, offset: 18496)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !311, file: !312, line: 1233, baseType: !97, size: 128, offset: 18560)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !311, file: !312, line: 1240, baseType: !5510, size: 64, offset: 18688)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !5512, line: 60, flags: DIFlagFwdDecl)
!5512 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !311, file: !312, line: 1242, baseType: !5514, size: 64, offset: 18752)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !312, line: 1242, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !311, file: !312, line: 1244, baseType: !97, size: 128, offset: 18816)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !311, file: !312, line: 1245, baseType: !5518, size: 64, offset: 18944)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !312, line: 51, flags: DIFlagFwdDecl)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !311, file: !312, line: 1246, baseType: !682, size: 256, offset: 19008)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !311, file: !312, line: 1247, baseType: !7, size: 32, offset: 19264)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !311, file: !312, line: 1250, baseType: !3171, size: 64, offset: 19328)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !311, file: !312, line: 1251, baseType: !682, size: 256, offset: 19392)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !311, file: !312, line: 1252, baseType: !97, size: 128, offset: 19648)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !311, file: !312, line: 1259, baseType: !1782, size: 64, offset: 19776)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !311, file: !312, line: 1260, baseType: !887, size: 16, offset: 19840)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !311, file: !312, line: 1261, baseType: !887, size: 16, offset: 19856)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !311, file: !312, line: 1314, baseType: !5529, size: 64, offset: 19904)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5531, line: 62, size: 256, align: 256, elements: !5532)
!5531 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5532 = !{!5533, !5534, !5535, !5536, !5537, !5538, !5539}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5530, file: !5531, line: 75, baseType: !322, size: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5530, file: !5531, line: 90, baseType: !322, size: 32, offset: 32)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5530, file: !5531, line: 112, baseType: !379, size: 64, offset: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5530, file: !5531, line: 132, baseType: !322, size: 32, offset: 128)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5530, file: !5531, line: 140, baseType: !322, size: 32, offset: 160)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5530, file: !5531, line: 149, baseType: !322, size: 32, offset: 192)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5530, file: !5531, line: 154, baseType: !5540, offset: 224)
!5540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1070)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !311, file: !312, line: 1315, baseType: !321, size: 32, offset: 19968)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !311, file: !312, line: 1316, baseType: !321, size: 32, offset: 20000)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !311, file: !312, line: 1321, baseType: !39, size: 64, offset: 20032)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !311, file: !312, line: 1325, baseType: !22, size: 32, offset: 20096)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !311, file: !312, line: 1326, baseType: !22, size: 32, offset: 20128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !311, file: !312, line: 1327, baseType: !22, size: 32, offset: 20160)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !311, file: !312, line: 1328, baseType: !22, size: 32, offset: 20192)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !311, file: !312, line: 1329, baseType: !662, size: 128, align: 64, offset: 20224)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !311, file: !312, line: 1332, baseType: !5550, size: 128, offset: 20352)
!5550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5551, line: 51, size: 128, elements: !5552)
!5551 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5552 = !{!5553, !5558, !5559}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5550, file: !5551, line: 60, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5555, line: 7, size: 64, elements: !5556)
!5555 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5556 = !{!5557}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5554, file: !5555, line: 12, baseType: !574, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5550, file: !5551, line: 63, baseType: !839, size: 8, offset: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5550, file: !5551, line: 70, baseType: !839, size: 8, offset: 72)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !311, file: !312, line: 1335, baseType: !4674, size: 64, offset: 20480)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !311, file: !312, line: 1337, baseType: !5562, size: 128, offset: 20544)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5551, line: 39, size: 128, elements: !5563)
!5563 = !{!5564, !5565, !5566}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5562, file: !5551, line: 40, baseType: !1579, size: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5562, file: !5551, line: 42, baseType: !322, size: 32, offset: 64)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5562, file: !5551, line: 43, baseType: !322, size: 32, offset: 96)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !311, file: !312, line: 1340, baseType: !5568, size: 64, offset: 20672)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !312, line: 69, flags: DIFlagFwdDecl)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !311, file: !312, line: 1351, baseType: !22, size: 32, offset: 20736)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !311, file: !312, line: 1352, baseType: !22, size: 32, offset: 20768)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !311, file: !312, line: 1354, baseType: !39, size: 64, offset: 20800)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !311, file: !312, line: 1364, baseType: !378, size: 64, offset: 20864)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !311, file: !312, line: 1365, baseType: !378, size: 64, offset: 20928)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !311, file: !312, line: 1412, baseType: !39, size: 64, offset: 20992)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !311, file: !312, line: 1453, baseType: !5577, size: 64, offset: 21056)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !312, line: 1453, flags: DIFlagFwdDecl)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !311, file: !312, line: 1457, baseType: !5580, size: 64, offset: 21120)
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !256, line: 61, size: 576, elements: !5582)
!5582 = !{!5583, !5584, !5603, !5606, !5607, !5640, !5650}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5581, file: !256, line: 62, baseType: !255, size: 32)
!5584 = !DIDerivedType(tag: DW_TAG_member, scope: !5581, file: !256, line: 64, baseType: !5585, size: 192, offset: 64)
!5585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5581, file: !256, line: 64, size: 192, elements: !5586)
!5586 = !{!5587, !5598}
!5587 = !DIDerivedType(tag: DW_TAG_member, scope: !5585, file: !256, line: 65, baseType: !5588, size: 192)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5585, file: !256, line: 65, size: 192, elements: !5589)
!5589 = !{!5590, !5597}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5588, file: !256, line: 66, baseType: !5591, size: 128)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5592, line: 50, size: 128, elements: !5593)
!5592 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5593 = !{!5594, !5595, !5596}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5591, file: !5592, line: 52, baseType: !39, size: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5591, file: !5592, line: 54, baseType: !7, size: 32, offset: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5591, file: !5592, line: 55, baseType: !7, size: 32, offset: 96)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5588, file: !256, line: 67, baseType: !39, size: 64, offset: 128)
!5598 = !DIDerivedType(tag: DW_TAG_member, scope: !5585, file: !256, line: 70, baseType: !5599, size: 192)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5585, file: !256, line: 70, size: 192, elements: !5600)
!5600 = !{!5601, !5602}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5599, file: !256, line: 71, baseType: !662, size: 128, align: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5599, file: !256, line: 72, baseType: !39, size: 64, offset: 128)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5581, file: !256, line: 76, baseType: !5604, size: 64, offset: 256)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !256, line: 76, flags: DIFlagFwdDecl)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5581, file: !256, line: 77, baseType: !39, size: 64, offset: 320)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5581, file: !256, line: 79, baseType: !5608, size: 64, offset: 384)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5592, line: 25, size: 256, elements: !5610)
!5610 = !{!5611, !5617, !5621}
!5611 = !DIDerivedType(tag: DW_TAG_member, scope: !5609, file: !5592, line: 26, baseType: !5612, size: 128)
!5612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5609, file: !5592, line: 26, size: 128, elements: !5613)
!5613 = !{!5614, !5616}
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5612, file: !5592, line: 27, baseType: !5615, size: 128)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !4437)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5612, file: !5592, line: 28, baseType: !5615, size: 128)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5609, file: !5592, line: 31, baseType: !5618, size: 64, offset: 128)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5620)
!5620 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5592, line: 23, flags: DIFlagFwdDecl)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5609, file: !5592, line: 33, baseType: !5622, size: 64, offset: 192)
!5622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5609, file: !5592, line: 33, size: 64, elements: !5623)
!5623 = !{!5624, !5630, !5635}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5622, file: !5592, line: 38, baseType: !5625, size: 64)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !5592, line: 34, size: 64, elements: !5626)
!5626 = !{!5627, !5628, !5629}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5625, file: !5592, line: 35, baseType: !851, size: 32)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5625, file: !5592, line: 36, baseType: !83, size: 8, offset: 32)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5625, file: !5592, line: 37, baseType: !83, size: 8, offset: 40)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5622, file: !5592, line: 42, baseType: !5631, size: 16)
!5631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !5592, line: 39, size: 16, elements: !5632)
!5632 = !{!5633, !5634}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5631, file: !5592, line: 40, baseType: !83, size: 8)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5631, file: !5592, line: 41, baseType: !83, size: 8, offset: 8)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5622, file: !5592, line: 46, baseType: !5636, size: 16)
!5636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !5592, line: 43, size: 16, elements: !5637)
!5637 = !{!5638, !5639}
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5636, file: !5592, line: 44, baseType: !83, size: 8)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5636, file: !5592, line: 45, baseType: !83, size: 8, offset: 8)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5581, file: !256, line: 81, baseType: !5641, size: 64, offset: 448)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !256, line: 85, size: 384, elements: !5643)
!5643 = !{!5644, !5645, !5646, !5647, !5648, !5649}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5642, file: !256, line: 86, baseType: !5604, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5642, file: !256, line: 87, baseType: !39, size: 64, offset: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5642, file: !256, line: 88, baseType: !39, size: 64, offset: 128)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5642, file: !256, line: 89, baseType: !39, size: 64, offset: 192)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5642, file: !256, line: 90, baseType: !839, size: 8, offset: 256)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5642, file: !256, line: 92, baseType: !5641, size: 64, offset: 320)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5581, file: !256, line: 82, baseType: !7, size: 32, offset: 512)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !311, file: !312, line: 1463, baseType: !5652, offset: 21184)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !312, line: 739, elements: !647)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !311, file: !312, line: 1470, baseType: !662, size: 128, align: 64, offset: 21184)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !311, file: !312, line: 1471, baseType: !327, size: 32, offset: 21312)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !311, file: !312, line: 1472, baseType: !22, size: 32, offset: 21344)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !311, file: !312, line: 1474, baseType: !310, size: 64, offset: 21376)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !311, file: !312, line: 1475, baseType: !2497, size: 320, offset: 21440)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !311, file: !312, line: 1478, baseType: !5659, size: 64, offset: 21760)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !312, line: 1478, flags: DIFlagFwdDecl)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !311, file: !312, line: 1482, baseType: !327, size: 32, offset: 21824)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !311, file: !312, line: 1489, baseType: !20, size: 64, offset: 21888)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !311, file: !312, line: 1504, baseType: !20, size: 64, offset: 21952)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !311, file: !312, line: 1505, baseType: !379, size: 64, offset: 22016)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !311, file: !312, line: 1506, baseType: !378, size: 64, offset: 22080)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !311, file: !312, line: 1507, baseType: !379, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !311, file: !312, line: 1508, baseType: !379, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !311, file: !312, line: 1509, baseType: !379, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !311, file: !312, line: 1510, baseType: !662, size: 128, align: 64, offset: 22208)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !311, file: !312, line: 1511, baseType: !22, size: 32, offset: 22336)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !311, file: !312, line: 1515, baseType: !5672, size: 64, offset: 22400)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !340, line: 56, size: 64, elements: !5673)
!5673 = !{!5674}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5672, file: !340, line: 57, baseType: !343, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !311, file: !312, line: 1518, baseType: !5672, size: 64, offset: 22464)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !311, file: !312, line: 1528, baseType: !662, size: 128, align: 64, offset: 22528)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !311, file: !312, line: 1552, baseType: !5678, size: 35328, offset: 23040)
!5678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5679, line: 430, size: 35328, elements: !5680)
!5679 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5680 = !{!5681, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5708, !5709, !5710, !5711, !5712, !5713, !5716, !5717, !5718, !5719}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5678, file: !5679, line: 432, baseType: !5682, size: 192)
!5682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5683, size: 192, elements: !718)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5684, line: 16, size: 64, elements: !5685)
!5684 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5685 = !{!5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5683, file: !5684, line: 17, baseType: !93, size: 16)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5683, file: !5684, line: 18, baseType: !93, size: 16, offset: 16)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5683, file: !5684, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5683, file: !5684, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5683, file: !5684, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5683, file: !5684, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5683, file: !5684, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5683, file: !5684, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5683, file: !5684, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5683, file: !5684, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5683, file: !5684, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5683, file: !5684, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5683, file: !5684, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5678, file: !5679, line: 436, baseType: !39, size: 64, offset: 192)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5678, file: !5679, line: 440, baseType: !26, size: 16, offset: 256)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5678, file: !5679, line: 441, baseType: !26, size: 16, offset: 272)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5678, file: !5679, line: 442, baseType: !26, size: 16, offset: 288)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5678, file: !5679, line: 443, baseType: !26, size: 16, offset: 304)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5678, file: !5679, line: 447, baseType: !39, size: 64, offset: 320)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5678, file: !5679, line: 448, baseType: !39, size: 64, offset: 384)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5678, file: !5679, line: 459, baseType: !5707, size: 256, offset: 448)
!5707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 256, elements: !739)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5678, file: !5679, line: 461, baseType: !39, size: 64, offset: 704)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5678, file: !5679, line: 463, baseType: !39, size: 64, offset: 768)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5678, file: !5679, line: 465, baseType: !39, size: 64, offset: 832)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5678, file: !5679, line: 466, baseType: !39, size: 64, offset: 896)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5678, file: !5679, line: 467, baseType: !39, size: 64, offset: 960)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5678, file: !5679, line: 473, baseType: !5714, size: 64, offset: 1024)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5679, line: 10, flags: DIFlagFwdDecl)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5678, file: !5679, line: 480, baseType: !39, size: 64, offset: 1088)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5678, file: !5679, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5678, file: !5679, line: 491, baseType: !321, size: 32, offset: 1184)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5678, file: !5679, line: 501, baseType: !5720, size: 33792, offset: 1536)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5721, line: 448, size: 33792, elements: !5722)
!5721 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5722 = !{!5723, !5724, !5725, !5833, !5834, !5840, !5841}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5720, file: !5721, line: 461, baseType: !7, size: 32)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5720, file: !5721, line: 468, baseType: !39, size: 64, offset: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5720, file: !5721, line: 476, baseType: !5726, size: 64, offset: 128)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5721, line: 356, size: 33280, align: 512, elements: !5728)
!5728 = !{!5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5727, file: !5721, line: 358, baseType: !7, size: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5727, file: !5721, line: 361, baseType: !7, size: 32, offset: 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5727, file: !5721, line: 364, baseType: !378, size: 64, offset: 64)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5727, file: !5721, line: 367, baseType: !378, size: 64, offset: 128)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5727, file: !5721, line: 370, baseType: !378, size: 64, offset: 192)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5727, file: !5721, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5727, file: !5721, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5727, file: !5721, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5727, file: !5721, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5727, file: !5721, line: 397, baseType: !5739, size: 32768, offset: 512)
!5739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5721, line: 348, size: 32768, elements: !5740)
!5740 = !{!5741, !5756, !5793, !5818, !5831}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5739, file: !5721, line: 349, baseType: !5742, size: 896)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5721, line: 12, size: 896, elements: !5743)
!5743 = !{!5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5755}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5742, file: !5721, line: 13, baseType: !321, size: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5742, file: !5721, line: 14, baseType: !321, size: 32, offset: 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5742, file: !5721, line: 15, baseType: !321, size: 32, offset: 64)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5742, file: !5721, line: 16, baseType: !321, size: 32, offset: 96)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5742, file: !5721, line: 17, baseType: !321, size: 32, offset: 128)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5742, file: !5721, line: 18, baseType: !321, size: 32, offset: 160)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5742, file: !5721, line: 19, baseType: !321, size: 32, offset: 192)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5742, file: !5721, line: 22, baseType: !5752, size: 640, offset: 224)
!5752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 640, elements: !5753)
!5753 = !{!5754}
!5754 = !DISubrange(count: 20)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5742, file: !5721, line: 25, baseType: !321, size: 32, offset: 864)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5739, file: !5721, line: 350, baseType: !5757, size: 4096, align: 128)
!5757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5721, line: 34, size: 4096, align: 128, elements: !5758)
!5758 = !{!5759, !5760, !5761, !5762, !5763, !5778, !5779, !5780, !5782, !5784, !5788}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5757, file: !5721, line: 35, baseType: !93, size: 16)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5757, file: !5721, line: 36, baseType: !93, size: 16, offset: 16)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5757, file: !5721, line: 37, baseType: !93, size: 16, offset: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5757, file: !5721, line: 38, baseType: !93, size: 16, offset: 48)
!5763 = !DIDerivedType(tag: DW_TAG_member, scope: !5757, file: !5721, line: 39, baseType: !5764, size: 128, offset: 64)
!5764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5757, file: !5721, line: 39, size: 128, elements: !5765)
!5765 = !{!5766, !5771}
!5766 = !DIDerivedType(tag: DW_TAG_member, scope: !5764, file: !5721, line: 40, baseType: !5767, size: 128)
!5767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5764, file: !5721, line: 40, size: 128, elements: !5768)
!5768 = !{!5769, !5770}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5767, file: !5721, line: 41, baseType: !378, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5767, file: !5721, line: 42, baseType: !378, size: 64, offset: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, scope: !5764, file: !5721, line: 44, baseType: !5772, size: 128)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5764, file: !5721, line: 44, size: 128, elements: !5773)
!5773 = !{!5774, !5775, !5776, !5777}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5772, file: !5721, line: 45, baseType: !321, size: 32)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5772, file: !5721, line: 46, baseType: !321, size: 32, offset: 32)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5772, file: !5721, line: 47, baseType: !321, size: 32, offset: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5772, file: !5721, line: 48, baseType: !321, size: 32, offset: 96)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5757, file: !5721, line: 51, baseType: !321, size: 32, offset: 192)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5757, file: !5721, line: 52, baseType: !321, size: 32, offset: 224)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5757, file: !5721, line: 55, baseType: !5781, size: 1024, offset: 256)
!5781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !4428)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5757, file: !5721, line: 58, baseType: !5783, size: 2048, offset: 1280)
!5783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2048, elements: !1498)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5757, file: !5721, line: 60, baseType: !5785, size: 384, offset: 3328)
!5785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 384, elements: !5786)
!5786 = !{!5787}
!5787 = !DISubrange(count: 12)
!5788 = !DIDerivedType(tag: DW_TAG_member, scope: !5757, file: !5721, line: 62, baseType: !5789, size: 384, offset: 3712)
!5789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5757, file: !5721, line: 62, size: 384, elements: !5790)
!5790 = !{!5791, !5792}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5789, file: !5721, line: 63, baseType: !5785, size: 384)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5789, file: !5721, line: 64, baseType: !5785, size: 384)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5739, file: !5721, line: 351, baseType: !5794, size: 1088)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5721, line: 79, size: 1088, elements: !5795)
!5795 = !{!5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5817}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5794, file: !5721, line: 80, baseType: !321, size: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5794, file: !5721, line: 81, baseType: !321, size: 32, offset: 32)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5794, file: !5721, line: 82, baseType: !321, size: 32, offset: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5794, file: !5721, line: 83, baseType: !321, size: 32, offset: 96)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5794, file: !5721, line: 84, baseType: !321, size: 32, offset: 128)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5794, file: !5721, line: 85, baseType: !321, size: 32, offset: 160)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5794, file: !5721, line: 86, baseType: !321, size: 32, offset: 192)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5794, file: !5721, line: 88, baseType: !5752, size: 640, offset: 224)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5794, file: !5721, line: 89, baseType: !83, size: 8, offset: 864)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5794, file: !5721, line: 90, baseType: !83, size: 8, offset: 872)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5794, file: !5721, line: 91, baseType: !83, size: 8, offset: 880)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5794, file: !5721, line: 92, baseType: !83, size: 8, offset: 888)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5794, file: !5721, line: 93, baseType: !83, size: 8, offset: 896)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5794, file: !5721, line: 94, baseType: !83, size: 8, offset: 904)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5794, file: !5721, line: 95, baseType: !5811, size: 64, offset: 960)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5812, size: 64)
!5812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5813, line: 11, size: 128, elements: !5814)
!5813 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5814 = !{!5815, !5816}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5812, file: !5813, line: 12, baseType: !290, size: 64)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5812, file: !5813, line: 13, baseType: !3695, size: 64, offset: 64)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5794, file: !5721, line: 96, baseType: !321, size: 32, offset: 1024)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5739, file: !5721, line: 352, baseType: !5819, size: 4608, align: 512)
!5819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5721, line: 333, size: 4608, align: 512, elements: !5820)
!5820 = !{!5821, !5822, !5829}
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5819, file: !5721, line: 334, baseType: !5757, size: 4096, align: 128)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5819, file: !5721, line: 335, baseType: !5823, size: 512, offset: 4096)
!5823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5721, line: 312, size: 512, elements: !5824)
!5824 = !{!5825, !5826, !5827}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5823, file: !5721, line: 313, baseType: !378, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5823, file: !5721, line: 314, baseType: !378, size: 64, offset: 64)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5823, file: !5721, line: 315, baseType: !5828, size: 384, offset: 128)
!5828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !905)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5819, file: !5721, line: 336, baseType: !5830, offset: 4608)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1070)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5739, file: !5721, line: 353, baseType: !5832, size: 32768)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !2727)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5720, file: !5721, line: 484, baseType: !5726, size: 64, offset: 192)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5720, file: !5721, line: 491, baseType: !5835, size: 128, offset: 256)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5721, line: 404, size: 128, elements: !5836)
!5836 = !{!5837, !5838, !5839}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5835, file: !5721, line: 424, baseType: !378, size: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5835, file: !5721, line: 432, baseType: !7, size: 32, offset: 64)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5835, file: !5721, line: 440, baseType: !7, size: 32, offset: 96)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5720, file: !5721, line: 498, baseType: !5835, size: 128, offset: 384)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5720, file: !5721, line: 508, baseType: !5727, size: 33280, align: 512, offset: 512)
!5842 = !{!5843}
!5843 = !DILocalVariable(name: "t", arg: 1, scope: !306, file: !307, line: 124, type: !310)
!5844 = !{i32 7, !"Dwarf Version", i32 5}
!5845 = !{i32 2, !"Debug Info Version", i32 3}
!5846 = !{i32 1, !"wchar_size", i32 2}
!5847 = !{i32 8, !"cf-protection-branch", i32 1}
!5848 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5849 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5850 = !{i32 1, !"Code Model", i32 2}
!5851 = !{i32 1, !"override-stack-alignment", i32 8}
!5852 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5853 = distinct !DISubprogram(name: "__x64_sys_kcmp", scope: !3, file: !3, line: 135, type: !5854, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!290, !5856}
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!5858 = !{!5859}
!5859 = !DILocalVariable(name: "regs", arg: 1, scope: !5853, file: !3, line: 135, type: !5856)
!5860 = !DILocation(line: 135, column: 1, scope: !5853)
!5861 = distinct !DISubprogram(name: "__se_sys_kcmp", scope: !3, file: !3, line: 135, type: !5862, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5864)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{!290, !290, !290, !290, !290, !290}
!5864 = !{!5865, !5866, !5867, !5868, !5869, !5870}
!5865 = !DILocalVariable(name: "pid1", arg: 1, scope: !5861, file: !3, line: 135, type: !290)
!5866 = !DILocalVariable(name: "pid2", arg: 2, scope: !5861, file: !3, line: 135, type: !290)
!5867 = !DILocalVariable(name: "type", arg: 3, scope: !5861, file: !3, line: 135, type: !290)
!5868 = !DILocalVariable(name: "idx1", arg: 4, scope: !5861, file: !3, line: 135, type: !290)
!5869 = !DILocalVariable(name: "idx2", arg: 5, scope: !5861, file: !3, line: 135, type: !290)
!5870 = !DILocalVariable(name: "ret", scope: !5861, file: !3, line: 135, type: !290)
!5871 = !DILocation(line: 135, column: 1, scope: !5861)
!5872 = !DILocation(line: 135, column: 1, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 135, column: 1)
!5874 = distinct !DISubprogram(name: "__ia32_sys_kcmp", scope: !3, file: !3, line: 135, type: !5854, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5875)
!5875 = !{!5876}
!5876 = !DILocalVariable(name: "regs", arg: 1, scope: !5874, file: !3, line: 135, type: !5856)
!5877 = !DILocation(line: 135, column: 1, scope: !5874)
!5878 = distinct !DISubprogram(name: "__initstub__kmod_kcmp__321_239_kcmp_cookies_init3", scope: !3, file: !3, line: 239, type: !2369, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5879 = !DILocation(line: 239, column: 1, scope: !5878)
!5880 = distinct !DISubprogram(name: "kcmp_cookies_init", scope: !3, file: !3, line: 228, type: !2369, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5881)
!5881 = !{!5882}
!5882 = !DILocalVariable(name: "i", scope: !5880, file: !3, line: 230, type: !22)
!5883 = !DILocation(line: 230, column: 2, scope: !5880)
!5884 = !DILocation(line: 230, column: 6, scope: !5880)
!5885 = !DILocation(line: 232, column: 2, scope: !5880)
!5886 = !DILocation(line: 234, column: 9, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 234, column: 2)
!5888 = !DILocation(line: 234, column: 7, scope: !5887)
!5889 = !DILocation(line: 234, column: 14, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 234, column: 2)
!5891 = !DILocation(line: 234, column: 16, scope: !5890)
!5892 = !DILocation(line: 234, column: 2, scope: !5887)
!5893 = !DILocation(line: 235, column: 11, scope: !5890)
!5894 = !DILocation(line: 235, column: 3, scope: !5890)
!5895 = !DILocation(line: 235, column: 17, scope: !5890)
!5896 = !DILocation(line: 234, column: 31, scope: !5890)
!5897 = !DILocation(line: 234, column: 2, scope: !5890)
!5898 = distinct !{!5898, !5892, !5899, !5900, !5901}
!5899 = !DILocation(line: 235, column: 38, scope: !5887)
!5900 = !{!"llvm.loop.mustprogress"}
!5901 = !{!"llvm.loop.unroll.disable"}
!5902 = !DILocation(line: 238, column: 1, scope: !5880)
!5903 = !DILocation(line: 237, column: 2, scope: !5880)
!5904 = distinct !DISubprogram(name: "__do_sys_kcmp", scope: !3, file: !3, line: 135, type: !5905, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!290, !288, !288, !22, !39, !39}
!5907 = !{!5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916, !5919, !5920, !5921, !5922}
!5908 = !DILocalVariable(name: "pid1", arg: 1, scope: !5904, file: !3, line: 135, type: !288)
!5909 = !DILocalVariable(name: "pid2", arg: 2, scope: !5904, file: !3, line: 135, type: !288)
!5910 = !DILocalVariable(name: "type", arg: 3, scope: !5904, file: !3, line: 135, type: !22)
!5911 = !DILocalVariable(name: "idx1", arg: 4, scope: !5904, file: !3, line: 135, type: !39)
!5912 = !DILocalVariable(name: "idx2", arg: 5, scope: !5904, file: !3, line: 135, type: !39)
!5913 = !DILocalVariable(name: "task1", scope: !5904, file: !3, line: 138, type: !310)
!5914 = !DILocalVariable(name: "task2", scope: !5904, file: !3, line: 138, type: !310)
!5915 = !DILocalVariable(name: "ret", scope: !5904, file: !3, line: 139, type: !22)
!5916 = !DILocalVariable(name: "filp1", scope: !5917, file: !3, line: 171, type: !654)
!5917 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 170, column: 18)
!5918 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 169, column: 16)
!5919 = !DILocalVariable(name: "filp2", scope: !5917, file: !3, line: 171, type: !654)
!5920 = !DILabel(scope: !5904, name: "err_unlock", file: !3, line: 214)
!5921 = !DILabel(scope: !5904, name: "err", file: !3, line: 217)
!5922 = !DILabel(scope: !5904, name: "err_no_task", file: !3, line: 223)
!5923 = !DILocation(line: 135, column: 1, scope: !5904)
!5924 = !DILocation(line: 138, column: 2, scope: !5904)
!5925 = !DILocation(line: 138, column: 22, scope: !5904)
!5926 = !DILocation(line: 138, column: 30, scope: !5904)
!5927 = !DILocation(line: 139, column: 2, scope: !5904)
!5928 = !DILocation(line: 139, column: 6, scope: !5904)
!5929 = !DILocation(line: 141, column: 2, scope: !5904)
!5930 = !DILocation(line: 146, column: 28, scope: !5904)
!5931 = !DILocation(line: 146, column: 10, scope: !5904)
!5932 = !DILocation(line: 146, column: 8, scope: !5904)
!5933 = !DILocation(line: 147, column: 28, scope: !5904)
!5934 = !DILocation(line: 147, column: 10, scope: !5904)
!5935 = !DILocation(line: 147, column: 8, scope: !5904)
!5936 = !DILocation(line: 148, column: 7, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 148, column: 6)
!5938 = !DILocation(line: 148, column: 13, scope: !5937)
!5939 = !DILocation(line: 148, column: 17, scope: !5937)
!5940 = !DILocation(line: 148, column: 6, scope: !5904)
!5941 = !DILocation(line: 149, column: 3, scope: !5937)
!5942 = !DILocation(line: 151, column: 18, scope: !5904)
!5943 = !DILocation(line: 151, column: 2, scope: !5904)
!5944 = !DILocation(line: 152, column: 18, scope: !5904)
!5945 = !DILocation(line: 152, column: 2, scope: !5904)
!5946 = !DILocation(line: 154, column: 2, scope: !5904)
!5947 = !DILocation(line: 159, column: 19, scope: !5904)
!5948 = !DILocation(line: 159, column: 26, scope: !5904)
!5949 = !DILocation(line: 159, column: 34, scope: !5904)
!5950 = !DILocation(line: 160, column: 5, scope: !5904)
!5951 = !DILocation(line: 160, column: 12, scope: !5904)
!5952 = !DILocation(line: 160, column: 20, scope: !5904)
!5953 = !DILocation(line: 159, column: 8, scope: !5904)
!5954 = !DILocation(line: 159, column: 6, scope: !5904)
!5955 = !DILocation(line: 161, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 161, column: 6)
!5957 = !DILocation(line: 161, column: 6, scope: !5904)
!5958 = !DILocation(line: 162, column: 3, scope: !5956)
!5959 = !DILocation(line: 163, column: 25, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 163, column: 6)
!5961 = !DILocation(line: 163, column: 7, scope: !5960)
!5962 = !DILocation(line: 163, column: 60, scope: !5960)
!5963 = !DILocation(line: 164, column: 25, scope: !5960)
!5964 = !DILocation(line: 164, column: 7, scope: !5960)
!5965 = !DILocation(line: 163, column: 6, scope: !5904)
!5966 = !DILocation(line: 165, column: 7, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5960, file: !3, line: 164, column: 61)
!5968 = !DILocation(line: 166, column: 3, scope: !5967)
!5969 = !DILocation(line: 169, column: 10, scope: !5904)
!5970 = !DILocation(line: 169, column: 2, scope: !5904)
!5971 = !DILocation(line: 171, column: 3, scope: !5917)
!5972 = !DILocation(line: 171, column: 16, scope: !5917)
!5973 = !DILocation(line: 171, column: 24, scope: !5917)
!5974 = !DILocation(line: 173, column: 28, scope: !5917)
!5975 = !DILocation(line: 173, column: 35, scope: !5917)
!5976 = !DILocation(line: 173, column: 11, scope: !5917)
!5977 = !DILocation(line: 173, column: 9, scope: !5917)
!5978 = !DILocation(line: 174, column: 28, scope: !5917)
!5979 = !DILocation(line: 174, column: 35, scope: !5917)
!5980 = !DILocation(line: 174, column: 11, scope: !5917)
!5981 = !DILocation(line: 174, column: 9, scope: !5917)
!5982 = !DILocation(line: 176, column: 7, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 176, column: 7)
!5984 = !DILocation(line: 176, column: 13, scope: !5983)
!5985 = !DILocation(line: 176, column: 16, scope: !5983)
!5986 = !DILocation(line: 176, column: 7, scope: !5917)
!5987 = !DILocation(line: 177, column: 19, scope: !5983)
!5988 = !DILocation(line: 177, column: 26, scope: !5983)
!5989 = !DILocation(line: 177, column: 10, scope: !5983)
!5990 = !DILocation(line: 177, column: 8, scope: !5983)
!5991 = !DILocation(line: 177, column: 4, scope: !5983)
!5992 = !DILocation(line: 179, column: 8, scope: !5983)
!5993 = !DILocation(line: 181, column: 2, scope: !5918)
!5994 = !DILocation(line: 183, column: 18, scope: !5918)
!5995 = !DILocation(line: 183, column: 25, scope: !5918)
!5996 = !DILocation(line: 183, column: 29, scope: !5918)
!5997 = !DILocation(line: 183, column: 36, scope: !5918)
!5998 = !DILocation(line: 183, column: 9, scope: !5918)
!5999 = !DILocation(line: 183, column: 7, scope: !5918)
!6000 = !DILocation(line: 184, column: 3, scope: !5918)
!6001 = !DILocation(line: 186, column: 18, scope: !5918)
!6002 = !DILocation(line: 186, column: 25, scope: !5918)
!6003 = !DILocation(line: 186, column: 32, scope: !5918)
!6004 = !DILocation(line: 186, column: 39, scope: !5918)
!6005 = !DILocation(line: 186, column: 9, scope: !5918)
!6006 = !DILocation(line: 186, column: 7, scope: !5918)
!6007 = !DILocation(line: 187, column: 3, scope: !5918)
!6008 = !DILocation(line: 189, column: 18, scope: !5918)
!6009 = !DILocation(line: 189, column: 25, scope: !5918)
!6010 = !DILocation(line: 189, column: 29, scope: !5918)
!6011 = !DILocation(line: 189, column: 36, scope: !5918)
!6012 = !DILocation(line: 189, column: 9, scope: !5918)
!6013 = !DILocation(line: 189, column: 7, scope: !5918)
!6014 = !DILocation(line: 190, column: 3, scope: !5918)
!6015 = !DILocation(line: 192, column: 18, scope: !5918)
!6016 = !DILocation(line: 192, column: 25, scope: !5918)
!6017 = !DILocation(line: 192, column: 34, scope: !5918)
!6018 = !DILocation(line: 192, column: 41, scope: !5918)
!6019 = !DILocation(line: 192, column: 9, scope: !5918)
!6020 = !DILocation(line: 192, column: 7, scope: !5918)
!6021 = !DILocation(line: 193, column: 3, scope: !5918)
!6022 = !DILocation(line: 195, column: 18, scope: !5918)
!6023 = !DILocation(line: 195, column: 25, scope: !5918)
!6024 = !DILocation(line: 195, column: 37, scope: !5918)
!6025 = !DILocation(line: 195, column: 44, scope: !5918)
!6026 = !DILocation(line: 195, column: 9, scope: !5918)
!6027 = !DILocation(line: 195, column: 7, scope: !5918)
!6028 = !DILocation(line: 196, column: 3, scope: !5918)
!6029 = !DILocation(line: 199, column: 18, scope: !5918)
!6030 = !DILocation(line: 199, column: 25, scope: !5918)
!6031 = !DILocation(line: 199, column: 33, scope: !5918)
!6032 = !DILocation(line: 200, column: 11, scope: !5918)
!6033 = !DILocation(line: 200, column: 18, scope: !5918)
!6034 = !DILocation(line: 200, column: 26, scope: !5918)
!6035 = !DILocation(line: 199, column: 9, scope: !5918)
!6036 = !DILocation(line: 199, column: 7, scope: !5918)
!6037 = !DILocation(line: 205, column: 3, scope: !5918)
!6038 = !DILocation(line: 207, column: 27, scope: !5918)
!6039 = !DILocation(line: 207, column: 34, scope: !5918)
!6040 = !DILocation(line: 207, column: 41, scope: !5918)
!6041 = !DILocation(line: 207, column: 55, scope: !5918)
!6042 = !DILocation(line: 207, column: 47, scope: !5918)
!6043 = !DILocation(line: 207, column: 9, scope: !5918)
!6044 = !DILocation(line: 207, column: 7, scope: !5918)
!6045 = !DILocation(line: 208, column: 3, scope: !5918)
!6046 = !DILocation(line: 210, column: 7, scope: !5918)
!6047 = !DILocation(line: 211, column: 3, scope: !5918)
!6048 = !DILocation(line: 212, column: 2, scope: !5918)
!6049 = !DILocation(line: 214, column: 1, scope: !5904)
!6050 = !DILocation(line: 215, column: 15, scope: !5904)
!6051 = !DILocation(line: 215, column: 22, scope: !5904)
!6052 = !DILocation(line: 215, column: 30, scope: !5904)
!6053 = !DILocation(line: 216, column: 8, scope: !5904)
!6054 = !DILocation(line: 216, column: 15, scope: !5904)
!6055 = !DILocation(line: 216, column: 23, scope: !5904)
!6056 = !DILocation(line: 215, column: 2, scope: !5904)
!6057 = !DILocation(line: 217, column: 1, scope: !5904)
!6058 = !DILocation(line: 218, column: 18, scope: !5904)
!6059 = !DILocation(line: 218, column: 2, scope: !5904)
!6060 = !DILocation(line: 219, column: 18, scope: !5904)
!6061 = !DILocation(line: 219, column: 2, scope: !5904)
!6062 = !DILocation(line: 221, column: 9, scope: !5904)
!6063 = !DILocation(line: 221, column: 2, scope: !5904)
!6064 = !DILocation(line: 223, column: 1, scope: !5904)
!6065 = !DILocation(line: 224, column: 2, scope: !5904)
!6066 = !DILocation(line: 225, column: 2, scope: !5904)
!6067 = !DILocation(line: 226, column: 1, scope: !5904)
!6068 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6069, file: !6069, line: 782, type: !2672, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6069 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6070 = !DILocation(line: 784, column: 2, scope: !6068)
!6071 = !DILocation(line: 786, column: 2, scope: !6068)
!6072 = !DILocation(line: 786, column: 2, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6068, file: !6069, line: 786, column: 2)
!6074 = !DILocation(line: 787, column: 2, scope: !6068)
!6075 = !DILocation(line: 787, column: 2, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !6069, line: 787, column: 2)
!6077 = !DILocation(line: 789, column: 1, scope: !6068)
!6078 = !DISubprogram(name: "find_task_by_vpid", scope: !312, file: !312, line: 1989, type: !6079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!310, !288}
!6081 = distinct !DISubprogram(name: "get_task_struct", scope: !307, file: !307, line: 115, type: !6082, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!310, !310}
!6084 = !{!6085}
!6085 = !DILocalVariable(name: "t", arg: 1, scope: !6081, file: !307, line: 115, type: !310)
!6086 = !DILocation(line: 115, column: 71, scope: !6081)
!6087 = !DILocation(line: 117, column: 16, scope: !6081)
!6088 = !DILocation(line: 117, column: 19, scope: !6081)
!6089 = !DILocation(line: 117, column: 2, scope: !6081)
!6090 = !DILocation(line: 118, column: 9, scope: !6081)
!6091 = !DILocation(line: 118, column: 2, scope: !6081)
!6092 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6069, file: !6069, line: 813, type: !2672, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6093 = !DILocation(line: 815, column: 2, scope: !6092)
!6094 = !DILocation(line: 815, column: 2, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6092, file: !6069, line: 815, column: 2)
!6096 = !DILocation(line: 818, column: 2, scope: !6092)
!6097 = !DILocation(line: 819, column: 2, scope: !6092)
!6098 = !DILocation(line: 819, column: 2, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6092, file: !6069, line: 819, column: 2)
!6100 = !DILocation(line: 820, column: 1, scope: !6092)
!6101 = distinct !DISubprogram(name: "kcmp_lock", scope: !3, file: !3, line: 80, type: !6102, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{!22, !6104, !6104}
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!6105 = !{!6106, !6107, !6108, !6109}
!6106 = !DILocalVariable(name: "l1", arg: 1, scope: !6101, file: !3, line: 80, type: !6104)
!6107 = !DILocalVariable(name: "l2", arg: 2, scope: !6101, file: !3, line: 80, type: !6104)
!6108 = !DILocalVariable(name: "err", scope: !6101, file: !3, line: 82, type: !22)
!6109 = !DILocalVariable(name: "__tmp", scope: !6110, file: !3, line: 85, type: !6104)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 85, column: 3)
!6111 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 84, column: 6)
!6112 = !DILocation(line: 80, column: 43, scope: !6101)
!6113 = !DILocation(line: 80, column: 68, scope: !6101)
!6114 = !DILocation(line: 82, column: 2, scope: !6101)
!6115 = !DILocation(line: 82, column: 6, scope: !6101)
!6116 = !DILocation(line: 84, column: 6, scope: !6111)
!6117 = !DILocation(line: 84, column: 11, scope: !6111)
!6118 = !DILocation(line: 84, column: 9, scope: !6111)
!6119 = !DILocation(line: 84, column: 6, scope: !6101)
!6120 = !DILocation(line: 85, column: 3, scope: !6111)
!6121 = !DILocation(line: 85, column: 3, scope: !6110)
!6122 = !DILocation(line: 87, column: 27, scope: !6101)
!6123 = !DILocation(line: 87, column: 8, scope: !6101)
!6124 = !DILocation(line: 87, column: 6, scope: !6101)
!6125 = !DILocation(line: 88, column: 7, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 88, column: 6)
!6127 = !DILocation(line: 88, column: 11, scope: !6126)
!6128 = !DILocation(line: 88, column: 14, scope: !6126)
!6129 = !DILocation(line: 88, column: 6, scope: !6101)
!6130 = !DILocation(line: 89, column: 9, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 88, column: 32)
!6132 = !DILocation(line: 89, column: 7, scope: !6131)
!6133 = !DILocation(line: 90, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 90, column: 7)
!6135 = !DILocation(line: 90, column: 7, scope: !6131)
!6136 = !DILocation(line: 91, column: 12, scope: !6134)
!6137 = !DILocation(line: 91, column: 4, scope: !6134)
!6138 = !DILocation(line: 92, column: 2, scope: !6131)
!6139 = !DILocation(line: 94, column: 9, scope: !6101)
!6140 = !DILocation(line: 95, column: 1, scope: !6101)
!6141 = !DILocation(line: 94, column: 2, scope: !6101)
!6142 = !DISubprogram(name: "ptrace_may_access", scope: !6143, file: !6143, line: 88, type: !6144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6143 = !DIFile(filename: "./include/linux/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2c607984366a17bb2bcdc39b38f3eca")
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!839, !310, !7}
!6146 = distinct !DISubprogram(name: "get_file_raw_ptr", scope: !3, file: !3, line: 62, type: !6147, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6149)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!654, !310, !7}
!6149 = !{!6150, !6151, !6152}
!6150 = !DILocalVariable(name: "task", arg: 1, scope: !6146, file: !3, line: 62, type: !310)
!6151 = !DILocalVariable(name: "idx", arg: 2, scope: !6146, file: !3, line: 62, type: !7)
!6152 = !DILocalVariable(name: "file", scope: !6146, file: !3, line: 64, type: !654)
!6153 = !DILocation(line: 62, column: 38, scope: !6146)
!6154 = !DILocation(line: 62, column: 57, scope: !6146)
!6155 = !DILocation(line: 64, column: 2, scope: !6146)
!6156 = !DILocation(line: 64, column: 15, scope: !6146)
!6157 = !DILocation(line: 66, column: 2, scope: !6146)
!6158 = !DILocation(line: 67, column: 28, scope: !6146)
!6159 = !DILocation(line: 67, column: 34, scope: !6146)
!6160 = !DILocation(line: 67, column: 9, scope: !6146)
!6161 = !DILocation(line: 67, column: 7, scope: !6146)
!6162 = !DILocation(line: 68, column: 2, scope: !6146)
!6163 = !DILocation(line: 70, column: 9, scope: !6146)
!6164 = !DILocation(line: 71, column: 1, scope: !6146)
!6165 = !DILocation(line: 70, column: 2, scope: !6146)
!6166 = distinct !DISubprogram(name: "kcmp_ptr", scope: !3, file: !3, line: 50, type: !6167, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!22, !20, !20, !262}
!6169 = !{!6170, !6171, !6172, !6173, !6174}
!6170 = !DILocalVariable(name: "v1", arg: 1, scope: !6166, file: !3, line: 50, type: !20)
!6171 = !DILocalVariable(name: "v2", arg: 2, scope: !6166, file: !3, line: 50, type: !20)
!6172 = !DILocalVariable(name: "type", arg: 3, scope: !6166, file: !3, line: 50, type: !262)
!6173 = !DILocalVariable(name: "t1", scope: !6166, file: !3, line: 52, type: !290)
!6174 = !DILocalVariable(name: "t2", scope: !6166, file: !3, line: 52, type: !290)
!6175 = !DILocation(line: 50, column: 27, scope: !6166)
!6176 = !DILocation(line: 50, column: 37, scope: !6166)
!6177 = !DILocation(line: 50, column: 56, scope: !6166)
!6178 = !DILocation(line: 52, column: 2, scope: !6166)
!6179 = !DILocation(line: 52, column: 7, scope: !6166)
!6180 = !DILocation(line: 52, column: 11, scope: !6166)
!6181 = !DILocation(line: 54, column: 28, scope: !6166)
!6182 = !DILocation(line: 54, column: 22, scope: !6166)
!6183 = !DILocation(line: 54, column: 32, scope: !6166)
!6184 = !DILocation(line: 54, column: 7, scope: !6166)
!6185 = !DILocation(line: 54, column: 5, scope: !6166)
!6186 = !DILocation(line: 55, column: 28, scope: !6166)
!6187 = !DILocation(line: 55, column: 22, scope: !6166)
!6188 = !DILocation(line: 55, column: 32, scope: !6166)
!6189 = !DILocation(line: 55, column: 7, scope: !6166)
!6190 = !DILocation(line: 55, column: 5, scope: !6166)
!6191 = !DILocation(line: 57, column: 10, scope: !6166)
!6192 = !DILocation(line: 57, column: 15, scope: !6166)
!6193 = !DILocation(line: 57, column: 13, scope: !6166)
!6194 = !DILocation(line: 57, column: 23, scope: !6166)
!6195 = !DILocation(line: 57, column: 28, scope: !6166)
!6196 = !DILocation(line: 57, column: 26, scope: !6166)
!6197 = !DILocation(line: 57, column: 32, scope: !6166)
!6198 = !DILocation(line: 57, column: 19, scope: !6166)
!6199 = !DILocation(line: 58, column: 1, scope: !6166)
!6200 = !DILocation(line: 57, column: 2, scope: !6166)
!6201 = distinct !DISubprogram(name: "kcmp_epoll_target", scope: !3, file: !3, line: 98, type: !6202, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6202 = !DISubroutineType(types: !6203)
!6203 = !{!22, !310, !310, !39, !6204}
!6204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64)
!6205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kcmp_epoll_slot", file: !263, line: 22, size: 96, elements: !6206)
!6206 = !{!6207, !6208, !6209}
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !6205, file: !263, line: 23, baseType: !322, size: 32)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "tfd", scope: !6205, file: !263, line: 24, baseType: !322, size: 32, offset: 32)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "toff", scope: !6205, file: !263, line: 25, baseType: !322, size: 32, offset: 64)
!6210 = !{!6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218}
!6211 = !DILocalVariable(name: "task1", arg: 1, scope: !6201, file: !3, line: 98, type: !310)
!6212 = !DILocalVariable(name: "task2", arg: 2, scope: !6201, file: !3, line: 99, type: !310)
!6213 = !DILocalVariable(name: "idx1", arg: 3, scope: !6201, file: !3, line: 100, type: !39)
!6214 = !DILocalVariable(name: "uslot", arg: 4, scope: !6201, file: !3, line: 101, type: !6204)
!6215 = !DILocalVariable(name: "filp", scope: !6201, file: !3, line: 103, type: !654)
!6216 = !DILocalVariable(name: "filp_epoll", scope: !6201, file: !3, line: 103, type: !654)
!6217 = !DILocalVariable(name: "filp_tgt", scope: !6201, file: !3, line: 103, type: !654)
!6218 = !DILocalVariable(name: "slot", scope: !6201, file: !3, line: 104, type: !6205)
!6219 = !DILocation(line: 98, column: 50, scope: !6201)
!6220 = !DILocation(line: 99, column: 29, scope: !6201)
!6221 = !DILocation(line: 100, column: 23, scope: !6201)
!6222 = !DILocation(line: 101, column: 40, scope: !6201)
!6223 = !DILocation(line: 103, column: 2, scope: !6201)
!6224 = !DILocation(line: 103, column: 15, scope: !6201)
!6225 = !DILocation(line: 103, column: 22, scope: !6201)
!6226 = !DILocation(line: 103, column: 35, scope: !6201)
!6227 = !DILocation(line: 104, column: 2, scope: !6201)
!6228 = !DILocation(line: 104, column: 25, scope: !6201)
!6229 = !DILocation(line: 106, column: 28, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 106, column: 6)
!6231 = !DILocation(line: 106, column: 6, scope: !6230)
!6232 = !DILocation(line: 106, column: 6, scope: !6201)
!6233 = !DILocation(line: 107, column: 3, scope: !6230)
!6234 = !DILocation(line: 109, column: 26, scope: !6201)
!6235 = !DILocation(line: 109, column: 33, scope: !6201)
!6236 = !DILocation(line: 109, column: 9, scope: !6201)
!6237 = !DILocation(line: 109, column: 7, scope: !6201)
!6238 = !DILocation(line: 110, column: 7, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 110, column: 6)
!6240 = !DILocation(line: 110, column: 6, scope: !6201)
!6241 = !DILocation(line: 111, column: 3, scope: !6239)
!6242 = !DILocation(line: 113, column: 25, scope: !6201)
!6243 = !DILocation(line: 113, column: 37, scope: !6201)
!6244 = !DILocation(line: 113, column: 15, scope: !6201)
!6245 = !DILocation(line: 113, column: 13, scope: !6201)
!6246 = !DILocation(line: 114, column: 7, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 114, column: 6)
!6248 = !DILocation(line: 114, column: 6, scope: !6201)
!6249 = !DILocation(line: 115, column: 3, scope: !6247)
!6250 = !DILocation(line: 117, column: 37, scope: !6201)
!6251 = !DILocation(line: 117, column: 54, scope: !6201)
!6252 = !DILocation(line: 117, column: 64, scope: !6201)
!6253 = !DILocation(line: 117, column: 59, scope: !6201)
!6254 = !DILocation(line: 117, column: 13, scope: !6201)
!6255 = !DILocation(line: 117, column: 11, scope: !6201)
!6256 = !DILocation(line: 118, column: 7, scope: !6201)
!6257 = !DILocation(line: 118, column: 2, scope: !6201)
!6258 = !DILocation(line: 120, column: 13, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 120, column: 6)
!6260 = !DILocation(line: 120, column: 6, scope: !6259)
!6261 = !DILocation(line: 120, column: 6, scope: !6201)
!6262 = !DILocation(line: 121, column: 18, scope: !6259)
!6263 = !DILocation(line: 121, column: 10, scope: !6259)
!6264 = !DILocation(line: 121, column: 3, scope: !6259)
!6265 = !DILocation(line: 123, column: 18, scope: !6201)
!6266 = !DILocation(line: 123, column: 24, scope: !6201)
!6267 = !DILocation(line: 123, column: 9, scope: !6201)
!6268 = !DILocation(line: 123, column: 2, scope: !6201)
!6269 = !DILocation(line: 124, column: 1, scope: !6201)
!6270 = distinct !DISubprogram(name: "kcmp_unlock", scope: !3, file: !3, line: 73, type: !6271, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6273)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{null, !6104, !6104}
!6273 = !{!6274, !6275}
!6274 = !DILocalVariable(name: "l1", arg: 1, scope: !6270, file: !3, line: 73, type: !6104)
!6275 = !DILocalVariable(name: "l2", arg: 2, scope: !6270, file: !3, line: 73, type: !6104)
!6276 = !DILocation(line: 73, column: 46, scope: !6270)
!6277 = !DILocation(line: 73, column: 71, scope: !6270)
!6278 = !DILocation(line: 75, column: 6, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 75, column: 6)
!6280 = !DILocation(line: 75, column: 6, scope: !6270)
!6281 = !DILocation(line: 76, column: 11, scope: !6279)
!6282 = !DILocation(line: 76, column: 3, scope: !6279)
!6283 = !DILocation(line: 77, column: 10, scope: !6270)
!6284 = !DILocation(line: 77, column: 2, scope: !6270)
!6285 = !DILocation(line: 78, column: 1, scope: !6270)
!6286 = !DILocation(line: 124, column: 56, scope: !306)
!6287 = !DILocation(line: 126, column: 30, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !306, file: !307, line: 126, column: 6)
!6289 = !DILocation(line: 126, column: 33, scope: !6288)
!6290 = !DILocation(line: 126, column: 7, scope: !6288)
!6291 = !DILocation(line: 126, column: 6, scope: !306)
!6292 = !DILocation(line: 127, column: 3, scope: !6288)
!6293 = !DILocation(line: 136, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6295, file: !307, line: 133, column: 55)
!6295 = distinct !DILexicalBlock(scope: !306, file: !307, line: 133, column: 6)
!6296 = !DILocation(line: 136, column: 3, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !307, line: 136, column: 3)
!6298 = !DILocation(line: 137, column: 21, scope: !6294)
!6299 = !DILocation(line: 137, column: 3, scope: !6294)
!6300 = !DILocation(line: 138, column: 3, scope: !6294)
!6301 = !DILocation(line: 138, column: 3, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6294, file: !307, line: 138, column: 3)
!6303 = !DILocation(line: 139, column: 3, scope: !6294)
!6304 = !DILocation(line: 163, column: 1, scope: !306)
!6305 = !DISubprogram(name: "__rcu_read_lock", scope: !6069, file: !6069, line: 74, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = distinct !DISubprogram(name: "refcount_inc", scope: !275, file: !275, line: 265, type: !6307, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{null, !6309}
!6309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!6310 = !{!6311}
!6311 = !DILocalVariable(name: "r", arg: 1, scope: !6306, file: !275, line: 265, type: !6309)
!6312 = !DILocation(line: 265, column: 45, scope: !6306)
!6313 = !DILocation(line: 267, column: 17, scope: !6306)
!6314 = !DILocation(line: 267, column: 2, scope: !6306)
!6315 = !DILocation(line: 268, column: 1, scope: !6306)
!6316 = distinct !DISubprogram(name: "__refcount_inc", scope: !275, file: !275, line: 248, type: !6317, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6319)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{null, !6309, !2396}
!6319 = !{!6320, !6321}
!6320 = !DILocalVariable(name: "r", arg: 1, scope: !6316, file: !275, line: 248, type: !6309)
!6321 = !DILocalVariable(name: "oldp", arg: 2, scope: !6316, file: !275, line: 248, type: !2396)
!6322 = !DILocation(line: 248, column: 47, scope: !6316)
!6323 = !DILocation(line: 248, column: 55, scope: !6316)
!6324 = !DILocation(line: 250, column: 20, scope: !6316)
!6325 = !DILocation(line: 250, column: 23, scope: !6316)
!6326 = !DILocation(line: 250, column: 2, scope: !6316)
!6327 = !DILocation(line: 251, column: 1, scope: !6316)
!6328 = distinct !DISubprogram(name: "__refcount_add", scope: !275, file: !275, line: 191, type: !6329, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6331)
!6329 = !DISubroutineType(types: !6330)
!6330 = !{null, !22, !6309, !2396}
!6331 = !{!6332, !6333, !6334, !6335}
!6332 = !DILocalVariable(name: "i", arg: 1, scope: !6328, file: !275, line: 191, type: !22)
!6333 = !DILocalVariable(name: "r", arg: 2, scope: !6328, file: !275, line: 191, type: !6309)
!6334 = !DILocalVariable(name: "oldp", arg: 3, scope: !6328, file: !275, line: 191, type: !2396)
!6335 = !DILocalVariable(name: "old", scope: !6328, file: !275, line: 193, type: !22)
!6336 = !DILocation(line: 191, column: 39, scope: !6328)
!6337 = !DILocation(line: 191, column: 54, scope: !6328)
!6338 = !DILocation(line: 191, column: 62, scope: !6328)
!6339 = !DILocation(line: 193, column: 2, scope: !6328)
!6340 = !DILocation(line: 193, column: 6, scope: !6328)
!6341 = !DILocation(line: 193, column: 37, scope: !6328)
!6342 = !DILocation(line: 193, column: 41, scope: !6328)
!6343 = !DILocation(line: 193, column: 44, scope: !6328)
!6344 = !DILocation(line: 193, column: 12, scope: !6328)
!6345 = !DILocation(line: 195, column: 6, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6328, file: !275, line: 195, column: 6)
!6347 = !DILocation(line: 195, column: 6, scope: !6328)
!6348 = !DILocation(line: 196, column: 11, scope: !6346)
!6349 = !DILocation(line: 196, column: 4, scope: !6346)
!6350 = !DILocation(line: 196, column: 9, scope: !6346)
!6351 = !DILocation(line: 196, column: 3, scope: !6346)
!6352 = !DILocation(line: 198, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6328, file: !275, line: 198, column: 6)
!6354 = !DILocation(line: 198, column: 6, scope: !6328)
!6355 = !DILocation(line: 199, column: 26, scope: !6353)
!6356 = !DILocation(line: 199, column: 3, scope: !6353)
!6357 = !DILocation(line: 200, column: 11, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6353, file: !275, line: 200, column: 11)
!6359 = !DILocation(line: 200, column: 11, scope: !6353)
!6360 = !DILocation(line: 201, column: 26, scope: !6358)
!6361 = !DILocation(line: 201, column: 3, scope: !6358)
!6362 = !DILocation(line: 202, column: 1, scope: !6328)
!6363 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6364, file: !6364, line: 250, type: !6365, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6364 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6365 = !DISubroutineType(types: !6366)
!6366 = !{!22, !22, !6367}
!6367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!6368 = !{!6369, !6370}
!6369 = !DILocalVariable(name: "i", arg: 1, scope: !6363, file: !6364, line: 250, type: !22)
!6370 = !DILocalVariable(name: "v", arg: 2, scope: !6363, file: !6364, line: 250, type: !6367)
!6371 = !DILocation(line: 250, column: 30, scope: !6363)
!6372 = !DILocation(line: 250, column: 43, scope: !6363)
!6373 = !DILocation(line: 252, column: 31, scope: !6363)
!6374 = !DILocation(line: 252, column: 2, scope: !6363)
!6375 = !DILocation(line: 253, column: 38, scope: !6363)
!6376 = !DILocation(line: 253, column: 41, scope: !6363)
!6377 = !DILocation(line: 253, column: 9, scope: !6363)
!6378 = !DILocation(line: 253, column: 2, scope: !6363)
!6379 = !DISubprogram(name: "refcount_warn_saturate", scope: !275, file: !275, line: 127, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{null, !6309, !274}
!6382 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6383, file: !6383, line: 94, type: !6384, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6383 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6384 = !DISubroutineType(types: !6385)
!6385 = !{null, !6386, !35}
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6387, size: 64)
!6387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6388)
!6388 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "v", arg: 1, scope: !6382, file: !6383, line: 94, type: !6386)
!6391 = !DILocalVariable(name: "size", arg: 2, scope: !6382, file: !6383, line: 94, type: !35)
!6392 = !DILocation(line: 94, column: 79, scope: !6382)
!6393 = !DILocation(line: 94, column: 89, scope: !6382)
!6394 = !DILocation(line: 96, column: 20, scope: !6382)
!6395 = !DILocation(line: 96, column: 23, scope: !6382)
!6396 = !DILocation(line: 96, column: 2, scope: !6382)
!6397 = !DILocation(line: 97, column: 2, scope: !6382)
!6398 = !DILocation(line: 98, column: 1, scope: !6382)
!6399 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6400, file: !6400, line: 731, type: !6365, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6401)
!6400 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6401 = !{!6402, !6403}
!6402 = !DILocalVariable(name: "i", arg: 1, scope: !6399, file: !6400, line: 731, type: !22)
!6403 = !DILocalVariable(name: "v", arg: 2, scope: !6399, file: !6400, line: 731, type: !6367)
!6404 = !DILocation(line: 731, column: 34, scope: !6399)
!6405 = !DILocation(line: 731, column: 47, scope: !6399)
!6406 = !DILocation(line: 736, column: 31, scope: !6399)
!6407 = !DILocation(line: 736, column: 34, scope: !6399)
!6408 = !DILocation(line: 736, column: 9, scope: !6399)
!6409 = !DILocation(line: 736, column: 2, scope: !6399)
!6410 = distinct !DISubprogram(name: "kasan_check_write", scope: !6411, file: !6411, line: 44, type: !6412, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6414)
!6411 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!839, !6386, !7}
!6414 = !{!6415, !6416}
!6415 = !DILocalVariable(name: "p", arg: 1, scope: !6410, file: !6411, line: 44, type: !6386)
!6416 = !DILocalVariable(name: "size", arg: 2, scope: !6410, file: !6411, line: 44, type: !7)
!6417 = !DILocation(line: 44, column: 59, scope: !6410)
!6418 = !DILocation(line: 44, column: 75, scope: !6410)
!6419 = !DILocation(line: 46, column: 2, scope: !6410)
!6420 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6421, file: !6421, line: 229, type: !6422, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6424)
!6421 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6422 = !DISubroutineType(types: !6423)
!6423 = !{null, !6386, !35, !22}
!6424 = !{!6425, !6426, !6427}
!6425 = !DILocalVariable(name: "ptr", arg: 1, scope: !6420, file: !6421, line: 229, type: !6386)
!6426 = !DILocalVariable(name: "size", arg: 2, scope: !6420, file: !6421, line: 229, type: !35)
!6427 = !DILocalVariable(name: "type", arg: 3, scope: !6420, file: !6421, line: 230, type: !22)
!6428 = !DILocation(line: 229, column: 60, scope: !6420)
!6429 = !DILocation(line: 229, column: 72, scope: !6420)
!6430 = !DILocation(line: 230, column: 15, scope: !6420)
!6431 = !DILocation(line: 230, column: 23, scope: !6420)
!6432 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6433, file: !6433, line: 95, type: !6365, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6434)
!6433 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6434 = !{!6435, !6436, !6437}
!6435 = !DILocalVariable(name: "i", arg: 1, scope: !6432, file: !6433, line: 95, type: !22)
!6436 = !DILocalVariable(name: "v", arg: 2, scope: !6432, file: !6433, line: 95, type: !6367)
!6437 = !DILocalVariable(name: "__ret", scope: !6438, file: !6433, line: 97, type: !22)
!6438 = distinct !DILexicalBlock(scope: !6432, file: !6433, line: 97, column: 9)
!6439 = !DILocation(line: 95, column: 54, scope: !6432)
!6440 = !DILocation(line: 95, column: 67, scope: !6432)
!6441 = !DILocation(line: 97, column: 9, scope: !6438)
!6442 = !{i64 2149047062, i64 2149047101, i64 2149047122, i64 2149047159, i64 2149047182, i64 2149047191}
!6443 = !DILocation(line: 97, column: 9, scope: !6432)
!6444 = !DILocation(line: 97, column: 2, scope: !6432)
!6445 = !DISubprogram(name: "__rcu_read_unlock", scope: !6069, file: !6069, line: 75, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6446 = !DISubprogram(name: "down_read_killable", scope: !860, file: !860, line: 177, type: !6447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{!22, !6104}
!6449 = !DISubprogram(name: "up_read", scope: !860, file: !860, line: 198, type: !6450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6450 = !DISubroutineType(types: !6451)
!6451 = !{null, !6104}
!6452 = !DISubprogram(name: "task_lookup_fd_rcu", scope: !5058, file: !5058, line: 112, type: !6147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6453 = distinct !DISubprogram(name: "kptr_obfuscate", scope: !3, file: !3, line: 39, type: !6454, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!290, !290, !22}
!6456 = !{!6457, !6458}
!6457 = !DILocalVariable(name: "v", arg: 1, scope: !6453, file: !3, line: 39, type: !290)
!6458 = !DILocalVariable(name: "type", arg: 2, scope: !6453, file: !3, line: 39, type: !22)
!6459 = !DILocation(line: 39, column: 33, scope: !6453)
!6460 = !DILocation(line: 39, column: 40, scope: !6453)
!6461 = !DILocation(line: 41, column: 10, scope: !6453)
!6462 = !DILocation(line: 41, column: 22, scope: !6453)
!6463 = !DILocation(line: 41, column: 14, scope: !6453)
!6464 = !DILocation(line: 41, column: 12, scope: !6453)
!6465 = !DILocation(line: 41, column: 42, scope: !6453)
!6466 = !DILocation(line: 41, column: 34, scope: !6453)
!6467 = !DILocation(line: 41, column: 32, scope: !6453)
!6468 = !DILocation(line: 41, column: 2, scope: !6453)
!6469 = distinct !DISubprogram(name: "copy_from_user", scope: !6470, file: !6470, line: 180, type: !6471, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6470 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6471 = !DISubroutineType(types: !6472)
!6472 = !{!39, !20, !2085, !39}
!6473 = !{!6474, !6475, !6476}
!6474 = !DILocalVariable(name: "to", arg: 1, scope: !6469, file: !6470, line: 180, type: !20)
!6475 = !DILocalVariable(name: "from", arg: 2, scope: !6469, file: !6470, line: 180, type: !2085)
!6476 = !DILocalVariable(name: "n", arg: 3, scope: !6469, file: !6470, line: 180, type: !39)
!6477 = !DILocation(line: 180, column: 22, scope: !6469)
!6478 = !DILocation(line: 180, column: 45, scope: !6469)
!6479 = !DILocation(line: 180, column: 65, scope: !6469)
!6480 = !DILocation(line: 182, column: 22, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6469, file: !6470, line: 182, column: 6)
!6482 = !DILocation(line: 182, column: 26, scope: !6481)
!6483 = !DILocation(line: 182, column: 6, scope: !6481)
!6484 = !DILocation(line: 182, column: 6, scope: !6469)
!6485 = !DILocation(line: 183, column: 23, scope: !6481)
!6486 = !DILocation(line: 183, column: 27, scope: !6481)
!6487 = !DILocation(line: 183, column: 33, scope: !6481)
!6488 = !DILocation(line: 183, column: 7, scope: !6481)
!6489 = !DILocation(line: 183, column: 5, scope: !6481)
!6490 = !DILocation(line: 183, column: 3, scope: !6481)
!6491 = !DILocation(line: 184, column: 9, scope: !6469)
!6492 = !DILocation(line: 184, column: 2, scope: !6469)
!6493 = !DISubprogram(name: "fget_task", scope: !6494, file: !6494, line: 51, type: !6147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6494 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6495 = !DISubprogram(name: "get_epoll_tfile_raw_ptr", scope: !6496, file: !6496, line: 22, type: !6497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6496 = !DIFile(filename: "./include/linux/eventpoll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a692477efe831fc19ecabeefa815cf5")
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!654, !654, !22, !39}
!6499 = !DISubprogram(name: "fput", scope: !6494, file: !6494, line: 17, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6500 = distinct !DISubprogram(name: "IS_ERR", scope: !6501, file: !6501, line: 59, type: !6502, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6504)
!6501 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6502 = !DISubroutineType(types: !6503)
!6503 = !{!839, !2085}
!6504 = !{!6505}
!6505 = !DILocalVariable(name: "ptr", arg: 1, scope: !6500, file: !6501, line: 59, type: !2085)
!6506 = !DILocation(line: 59, column: 60, scope: !6500)
!6507 = !DILocation(line: 61, column: 9, scope: !6500)
!6508 = !DILocation(line: 61, column: 2, scope: !6500)
!6509 = distinct !DISubprogram(name: "PTR_ERR", scope: !6501, file: !6501, line: 49, type: !6510, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6512)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!290, !2085}
!6512 = !{!6513}
!6513 = !DILocalVariable(name: "ptr", arg: 1, scope: !6509, file: !6501, line: 49, type: !2085)
!6514 = !DILocation(line: 49, column: 61, scope: !6509)
!6515 = !DILocation(line: 51, column: 16, scope: !6509)
!6516 = !DILocation(line: 51, column: 9, scope: !6509)
!6517 = !DILocation(line: 51, column: 2, scope: !6509)
!6518 = distinct !DISubprogram(name: "check_copy_size", scope: !300, file: !300, line: 237, type: !6519, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6521)
!6519 = !DISubroutineType(types: !6520)
!6520 = !{!839, !2085, !35, !839}
!6521 = !{!6522, !6523, !6524, !6525, !6526, !6529}
!6522 = !DILocalVariable(name: "addr", arg: 1, scope: !6518, file: !300, line: 237, type: !2085)
!6523 = !DILocalVariable(name: "bytes", arg: 2, scope: !6518, file: !300, line: 237, type: !35)
!6524 = !DILocalVariable(name: "is_source", arg: 3, scope: !6518, file: !300, line: 237, type: !839)
!6525 = !DILocalVariable(name: "sz", scope: !6518, file: !300, line: 239, type: !22)
!6526 = !DILocalVariable(name: "__ret_warn_on", scope: !6527, file: !300, line: 249, type: !22)
!6527 = distinct !DILexicalBlock(scope: !6528, file: !300, line: 249, column: 6)
!6528 = distinct !DILexicalBlock(scope: !6518, file: !300, line: 249, column: 6)
!6529 = !DILocalVariable(name: "__flags", scope: !6530, file: !300, line: 249, type: !22)
!6530 = distinct !DILexicalBlock(scope: !6531, file: !300, line: 249, column: 6)
!6531 = distinct !DILexicalBlock(scope: !6527, file: !300, line: 249, column: 6)
!6532 = !DILocation(line: 237, column: 29, scope: !6518)
!6533 = !DILocation(line: 237, column: 42, scope: !6518)
!6534 = !DILocation(line: 237, column: 54, scope: !6518)
!6535 = !DILocation(line: 239, column: 2, scope: !6518)
!6536 = !DILocation(line: 239, column: 6, scope: !6518)
!6537 = !DILocation(line: 239, column: 33, scope: !6518)
!6538 = !DILocation(line: 239, column: 11, scope: !6518)
!6539 = !DILocation(line: 240, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6518, file: !300, line: 240, column: 6)
!6541 = !DILocation(line: 0, scope: !6540)
!6542 = !DILocation(line: 240, column: 6, scope: !6518)
!6543 = !DILocation(line: 241, column: 29, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6545, file: !300, line: 241, column: 7)
!6545 = distinct !DILexicalBlock(scope: !6540, file: !300, line: 240, column: 39)
!6546 = !DILocation(line: 241, column: 8, scope: !6544)
!6547 = !DILocation(line: 241, column: 7, scope: !6545)
!6548 = !DILocation(line: 242, column: 18, scope: !6544)
!6549 = !DILocation(line: 242, column: 22, scope: !6544)
!6550 = !DILocation(line: 242, column: 4, scope: !6544)
!6551 = !DILocation(line: 243, column: 12, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6544, file: !300, line: 243, column: 12)
!6553 = !{i8 0, i8 2}
!6554 = !DILocation(line: 243, column: 12, scope: !6544)
!6555 = !DILocation(line: 244, column: 4, scope: !6552)
!6556 = !{i32 1021790}
!6557 = !DILocation(line: 246, column: 4, scope: !6552)
!6558 = !{i32 1021819}
!6559 = !DILocation(line: 247, column: 3, scope: !6545)
!6560 = !DILocation(line: 249, column: 6, scope: !6527)
!6561 = !DILocation(line: 249, column: 6, scope: !6531)
!6562 = !DILocation(line: 249, column: 6, scope: !6530)
!6563 = !DILocation(line: 249, column: 6, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6530, file: !300, line: 249, column: 6)
!6565 = !DILocation(line: 249, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6530, file: !300, line: 249, column: 6)
!6567 = !{i64 2149674061, i64 2149674090, i64 2149674136, i64 2149674194, i64 2149674248, i64 2149674302, i64 2149674357, i64 2149674388, i64 2149674696, i64 2149674702, i64 2149674749, i64 2149674772, i64 2149674798}
!6568 = !DILocation(line: 249, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6530, file: !300, line: 249, column: 6)
!6570 = !DILocation(line: 249, column: 6, scope: !6528)
!6571 = !DILocation(line: 249, column: 6, scope: !6518)
!6572 = !DILocation(line: 250, column: 3, scope: !6528)
!6573 = !DILocation(line: 251, column: 20, scope: !6518)
!6574 = !DILocation(line: 251, column: 26, scope: !6518)
!6575 = !DILocation(line: 251, column: 33, scope: !6518)
!6576 = !DILocation(line: 251, column: 2, scope: !6518)
!6577 = !DILocation(line: 252, column: 2, scope: !6518)
!6578 = !DILocation(line: 253, column: 1, scope: !6518)
!6579 = !DISubprogram(name: "_copy_from_user", scope: !6470, file: !6470, line: 158, type: !6471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = distinct !DISubprogram(name: "copy_overflow", scope: !300, file: !300, line: 230, type: !6581, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6583)
!6581 = !DISubroutineType(types: !6582)
!6582 = !{null, !22, !39}
!6583 = !{!6584, !6585}
!6584 = !DILocalVariable(name: "size", arg: 1, scope: !6580, file: !300, line: 230, type: !22)
!6585 = !DILocalVariable(name: "count", arg: 2, scope: !6580, file: !300, line: 230, type: !39)
!6586 = !DILocation(line: 230, column: 38, scope: !6580)
!6587 = !DILocation(line: 230, column: 58, scope: !6580)
!6588 = !DILocation(line: 233, column: 19, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6580, file: !300, line: 232, column: 6)
!6590 = !DILocation(line: 233, column: 25, scope: !6589)
!6591 = !DILocation(line: 233, column: 3, scope: !6589)
!6592 = !DILocation(line: 234, column: 1, scope: !6580)
!6593 = !DISubprogram(name: "__bad_copy_from", scope: !300, file: !300, line: 224, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6594 = !DISubprogram(name: "__bad_copy_to", scope: !300, file: !300, line: 226, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6595 = distinct !DISubprogram(name: "check_object_size", scope: !300, file: !300, line: 218, type: !6596, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6598)
!6596 = !DISubroutineType(types: !6597)
!6597 = !{null, !2085, !39, !839}
!6598 = !{!6599, !6600, !6601}
!6599 = !DILocalVariable(name: "ptr", arg: 1, scope: !6595, file: !300, line: 218, type: !2085)
!6600 = !DILocalVariable(name: "n", arg: 2, scope: !6595, file: !300, line: 218, type: !39)
!6601 = !DILocalVariable(name: "to_user", arg: 3, scope: !6595, file: !300, line: 219, type: !839)
!6602 = !DILocation(line: 218, column: 50, scope: !6595)
!6603 = !DILocation(line: 218, column: 69, scope: !6595)
!6604 = !DILocation(line: 219, column: 15, scope: !6595)
!6605 = !DILocation(line: 220, column: 3, scope: !6595)
!6606 = !DISubprogram(name: "__copy_overflow", scope: !300, file: !300, line: 228, type: !6581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6607 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !275, file: !275, line: 331, type: !6608, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!839, !6309}
!6610 = !{!6611}
!6611 = !DILocalVariable(name: "r", arg: 1, scope: !6607, file: !275, line: 331, type: !6309)
!6612 = !DILocation(line: 331, column: 67, scope: !6607)
!6613 = !DILocation(line: 333, column: 33, scope: !6607)
!6614 = !DILocation(line: 333, column: 9, scope: !6607)
!6615 = !DILocation(line: 333, column: 2, scope: !6607)
!6616 = !DISubprogram(name: "__put_task_struct", scope: !307, file: !307, line: 121, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6617 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !275, file: !275, line: 313, type: !6618, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6620)
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!839, !6309, !2396}
!6620 = !{!6621, !6622}
!6621 = !DILocalVariable(name: "r", arg: 1, scope: !6617, file: !275, line: 313, type: !6309)
!6622 = !DILocalVariable(name: "oldp", arg: 2, scope: !6617, file: !275, line: 313, type: !2396)
!6623 = !DILocation(line: 313, column: 69, scope: !6617)
!6624 = !DILocation(line: 313, column: 77, scope: !6617)
!6625 = !DILocation(line: 315, column: 36, scope: !6617)
!6626 = !DILocation(line: 315, column: 39, scope: !6617)
!6627 = !DILocation(line: 315, column: 9, scope: !6617)
!6628 = !DILocation(line: 315, column: 2, scope: !6617)
!6629 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !275, file: !275, line: 270, type: !6630, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6632)
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!839, !22, !6309, !2396}
!6632 = !{!6633, !6634, !6635, !6636}
!6633 = !DILocalVariable(name: "i", arg: 1, scope: !6629, file: !275, line: 270, type: !22)
!6634 = !DILocalVariable(name: "r", arg: 2, scope: !6629, file: !275, line: 270, type: !6309)
!6635 = !DILocalVariable(name: "oldp", arg: 3, scope: !6629, file: !275, line: 270, type: !2396)
!6636 = !DILocalVariable(name: "old", scope: !6629, file: !275, line: 272, type: !22)
!6637 = !DILocation(line: 270, column: 61, scope: !6629)
!6638 = !DILocation(line: 270, column: 76, scope: !6629)
!6639 = !DILocation(line: 270, column: 84, scope: !6629)
!6640 = !DILocation(line: 272, column: 2, scope: !6629)
!6641 = !DILocation(line: 272, column: 6, scope: !6629)
!6642 = !DILocation(line: 272, column: 37, scope: !6629)
!6643 = !DILocation(line: 272, column: 41, scope: !6629)
!6644 = !DILocation(line: 272, column: 44, scope: !6629)
!6645 = !DILocation(line: 272, column: 12, scope: !6629)
!6646 = !DILocation(line: 274, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6629, file: !275, line: 274, column: 6)
!6648 = !DILocation(line: 274, column: 6, scope: !6629)
!6649 = !DILocation(line: 275, column: 11, scope: !6647)
!6650 = !DILocation(line: 275, column: 4, scope: !6647)
!6651 = !DILocation(line: 275, column: 9, scope: !6647)
!6652 = !DILocation(line: 275, column: 3, scope: !6647)
!6653 = !DILocation(line: 277, column: 6, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6629, file: !275, line: 277, column: 6)
!6655 = !DILocation(line: 277, column: 13, scope: !6654)
!6656 = !DILocation(line: 277, column: 10, scope: !6654)
!6657 = !DILocation(line: 277, column: 6, scope: !6629)
!6658 = !DILocation(line: 278, column: 3, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6654, file: !275, line: 277, column: 16)
!6660 = !DILocation(line: 278, column: 3, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6659, file: !275, line: 278, column: 3)
!6662 = !DILocation(line: 278, column: 3, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6661, file: !275, line: 278, column: 3)
!6664 = !DILocation(line: 278, column: 3, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6661, file: !275, line: 278, column: 3)
!6666 = !DILocation(line: 278, column: 3, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6665, file: !275, line: 278, column: 3)
!6668 = !{i64 2150870781}
!6669 = !DILocation(line: 279, column: 3, scope: !6659)
!6670 = !DILocation(line: 282, column: 6, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6629, file: !275, line: 282, column: 6)
!6672 = !DILocation(line: 282, column: 6, scope: !6629)
!6673 = !DILocation(line: 283, column: 26, scope: !6671)
!6674 = !DILocation(line: 283, column: 3, scope: !6671)
!6675 = !DILocation(line: 285, column: 2, scope: !6629)
!6676 = !DILocation(line: 286, column: 1, scope: !6629)
!6677 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6364, file: !6364, line: 397, type: !6365, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6678)
!6678 = !{!6679, !6680}
!6679 = !DILocalVariable(name: "i", arg: 1, scope: !6677, file: !6364, line: 397, type: !22)
!6680 = !DILocalVariable(name: "v", arg: 2, scope: !6677, file: !6364, line: 397, type: !6367)
!6681 = !DILocation(line: 397, column: 30, scope: !6677)
!6682 = !DILocation(line: 397, column: 43, scope: !6677)
!6683 = !DILocation(line: 399, column: 2, scope: !6677)
!6684 = !DILocation(line: 399, column: 2, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6677, file: !6364, line: 399, column: 2)
!6686 = !DILocation(line: 400, column: 31, scope: !6677)
!6687 = !DILocation(line: 400, column: 2, scope: !6677)
!6688 = !DILocation(line: 401, column: 38, scope: !6677)
!6689 = !DILocation(line: 401, column: 41, scope: !6677)
!6690 = !DILocation(line: 401, column: 9, scope: !6677)
!6691 = !DILocation(line: 401, column: 2, scope: !6677)
!6692 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6400, file: !6400, line: 928, type: !6365, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6693)
!6693 = !{!6694, !6695}
!6694 = !DILocalVariable(name: "i", arg: 1, scope: !6692, file: !6400, line: 928, type: !22)
!6695 = !DILocalVariable(name: "v", arg: 2, scope: !6692, file: !6400, line: 928, type: !6367)
!6696 = !DILocation(line: 928, column: 34, scope: !6692)
!6697 = !DILocation(line: 928, column: 47, scope: !6692)
!6698 = !DILocation(line: 936, column: 31, scope: !6692)
!6699 = !DILocation(line: 936, column: 34, scope: !6692)
!6700 = !DILocation(line: 936, column: 9, scope: !6692)
!6701 = !DILocation(line: 936, column: 2, scope: !6692)
!6702 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6433, file: !6433, line: 101, type: !6365, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6703)
!6703 = !{!6704, !6705, !6706}
!6704 = !DILocalVariable(name: "i", arg: 1, scope: !6702, file: !6433, line: 101, type: !22)
!6705 = !DILocalVariable(name: "v", arg: 2, scope: !6702, file: !6433, line: 101, type: !6367)
!6706 = !DILocalVariable(name: "__ret", scope: !6707, file: !6433, line: 103, type: !22)
!6707 = distinct !DILexicalBlock(scope: !6702, file: !6433, line: 103, column: 9)
!6708 = !DILocation(line: 101, column: 54, scope: !6702)
!6709 = !DILocation(line: 101, column: 67, scope: !6702)
!6710 = !DILocation(line: 103, column: 9, scope: !6707)
!6711 = !{i64 2149049247, i64 2149049286, i64 2149049307, i64 2149049344, i64 2149049367, i64 2149049376}
!6712 = !DILocation(line: 103, column: 9, scope: !6702)
!6713 = !DILocation(line: 103, column: 2, scope: !6702)
!6714 = !DISubprogram(name: "get_random_bytes", scope: !6715, file: !6715, line: 39, type: !6716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6715 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!6716 = !DISubroutineType(types: !6717)
!6717 = !{null, !20, !35}
