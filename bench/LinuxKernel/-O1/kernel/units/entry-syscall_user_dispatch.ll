; ModuleID = 'kernel/entry/syscall_user_dispatch.c'
source_filename = "kernel/entry/syscall_user_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.15, i64, i64, %union.anon.16 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%struct.kernel_siginfo = type { %struct.anon.17 }
%struct.anon.17 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.21 }
%struct.anon.21 = type { i32, i32, i32, i64, i64 }
%struct.anon.28 = type { ptr, i32, i32 }
%struct.ptrace_sud_config = type { i64, i64, i64, i64 }

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @syscall_user_dispatch(ptr noundef %regs) #0 align 16 !dbg !3499 {
entry:
  %retval = alloca i1, align 1
  %regs.addr = alloca ptr, align 8
  %sd = alloca ptr, align 8
  %state = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %__tmp = alloca i64, align 8
  %tmp = alloca i8, align 1
  %tmp27 = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !3503, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #14, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !3504, metadata !DIExpression()), !dbg !3517
  %call = call ptr @get_current() #15, !dbg !3518
  %syscall_dispatch = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 118, !dbg !3519
  store ptr %syscall_dispatch, ptr %sd, align 8, !dbg !3517
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #14, !dbg !3520
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3506, metadata !DIExpression()), !dbg !3521
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !3522
  %call1 = call i64 @instruction_pointer(ptr noundef %0) #15, !dbg !3522
  %1 = load ptr, ptr %sd, align 8, !dbg !3522
  %offset = getelementptr inbounds %struct.syscall_user_dispatch, ptr %1, i32 0, i32 1, !dbg !3522
  %2 = load i64, ptr %offset, align 8, !dbg !3522
  %sub = sub i64 %call1, %2, !dbg !3522
  %3 = load ptr, ptr %sd, align 8, !dbg !3522
  %len = getelementptr inbounds %struct.syscall_user_dispatch, ptr %3, i32 0, i32 2, !dbg !3522
  %4 = load i64, ptr %len, align 8, !dbg !3522
  %cmp = icmp ult i64 %sub, %4, !dbg !3522
  %lnot = xor i1 %cmp, true, !dbg !3522
  %lnot2 = xor i1 %lnot, true, !dbg !3522
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3522
  %conv = sext i32 %lnot.ext to i64, !dbg !3522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3522
  %tobool = icmp ne i64 %expval, 0, !dbg !3522
  br i1 %tobool, label %if.then, label %if.end, !dbg !3524

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3525

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !3526
  %call3 = call zeroext i1 @arch_syscall_is_vdso_sigreturn(ptr noundef %5) #15, !dbg !3526
  %lnot4 = xor i1 %call3, true, !dbg !3526
  %lnot6 = xor i1 %lnot4, true, !dbg !3526
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3526
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !3526
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !3526
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !3526
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3528

if.then11:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !3529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3529

if.end12:                                         ; preds = %if.end
  %6 = load ptr, ptr %sd, align 8, !dbg !3530
  %selector = getelementptr inbounds %struct.syscall_user_dispatch, ptr %6, i32 0, i32 0, !dbg !3530
  %7 = load ptr, ptr %selector, align 8, !dbg !3530
  %tobool13 = icmp ne ptr %7, null, !dbg !3530
  %lnot14 = xor i1 %tobool13, true, !dbg !3530
  %lnot16 = xor i1 %lnot14, true, !dbg !3530
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3530
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3530
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1), !dbg !3530
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !3530
  br i1 %tobool20, label %if.then21, label %if.end57, !dbg !3531

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !3532
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !3507, metadata !DIExpression()), !dbg !3532
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_gu) #14, !dbg !3532
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !3512, metadata !DIExpression()), !dbg !3532
  %8 = call i64 @llvm.read_register.i64(metadata !3489), !dbg !3532
  %9 = load ptr, ptr %sd, align 8, !dbg !3532
  %selector22 = getelementptr inbounds %struct.syscall_user_dispatch, ptr %9, i32 0, i32 0, !dbg !3532
  %10 = load ptr, ptr %selector22, align 8, !dbg !3532
  %11 = call { ptr, i8, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %10, i64 1, i64 %8) #14, !dbg !3532, !srcloc !3533
  %asmresult = extractvalue { ptr, i8, i64 } %11, 0, !dbg !3532
  %asmresult23 = extractvalue { ptr, i8, i64 } %11, 1, !dbg !3532
  %asmresult24 = extractvalue { ptr, i8, i64 } %11, 2, !dbg !3532
  %12 = ptrtoint ptr %asmresult to i64, !dbg !3532
  %13 = trunc i64 %12 to i32, !dbg !3532
  store i32 %13, ptr %__ret_gu, align 4, !dbg !3532
  store i8 %asmresult23, ptr %__val_gu, align 1, !dbg !3532
  call void @llvm.write_register.i64(metadata !3489, i64 %asmresult24), !dbg !3532
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !3513, metadata !DIExpression()), !dbg !3534
  %14 = load i8, ptr %__val_gu, align 1, !dbg !3534
  %conv25 = zext i8 %14 to i64, !dbg !3534
  store i64 %conv25, ptr %__tmp, align 8, !dbg !3534
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !3534
  %15 = load i64, ptr %__tmp, align 8, !dbg !3534
  %conv26 = trunc i64 %15 to i8, !dbg !3534
  store i8 %conv26, ptr %__val_gu, align 1, !dbg !3534
  store i8 %conv26, ptr %tmp, align 1, !dbg !3534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !3532
  %16 = load i8, ptr %tmp, align 1, !dbg !3534
  %17 = load i8, ptr %__val_gu, align 1, !dbg !3532
  store i8 %17, ptr %state, align 1, !dbg !3532
  %18 = load i32, ptr %__ret_gu, align 4, !dbg !3532
  %conv28 = sext i32 %18 to i64, !dbg !3532
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !3532
  store i64 %expval29, ptr %tmp27, align 8, !dbg !3532
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_gu) #14, !dbg !3535
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !3535
  %19 = load i64, ptr %tmp27, align 8, !dbg !3532
  %tobool30 = icmp ne i64 %19, 0, !dbg !3535
  %lnot31 = xor i1 %tobool30, true, !dbg !3535
  %lnot33 = xor i1 %lnot31, true, !dbg !3535
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !3535
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !3535
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !3535
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !3535
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !3536

if.then38:                                        ; preds = %if.then21
  call void @force_exit_sig(i32 noundef 11) #15, !dbg !3537
  store i1 true, ptr %retval, align 1, !dbg !3539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3539

if.end39:                                         ; preds = %if.then21
  %20 = load i8, ptr %state, align 1, !dbg !3540
  %conv40 = zext i8 %20 to i32, !dbg !3540
  %cmp41 = icmp eq i32 %conv40, 0, !dbg !3540
  %lnot43 = xor i1 %cmp41, true, !dbg !3540
  %lnot45 = xor i1 %lnot43, true, !dbg !3540
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !3540
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !3540
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 1), !dbg !3540
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !3540
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !3542

if.then50:                                        ; preds = %if.end39
  store i1 false, ptr %retval, align 1, !dbg !3543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3543

if.end51:                                         ; preds = %if.end39
  %21 = load i8, ptr %state, align 1, !dbg !3544
  %conv52 = zext i8 %21 to i32, !dbg !3544
  %cmp53 = icmp ne i32 %conv52, 1, !dbg !3546
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !3547

if.then55:                                        ; preds = %if.end51
  call void @force_exit_sig(i32 noundef 31) #15, !dbg !3548
  store i1 true, ptr %retval, align 1, !dbg !3550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3550

if.end56:                                         ; preds = %if.end51
  br label %if.end57, !dbg !3551

if.end57:                                         ; preds = %if.end56, %if.end12
  %22 = load ptr, ptr %sd, align 8, !dbg !3552
  %on_dispatch = getelementptr inbounds %struct.syscall_user_dispatch, ptr %22, i32 0, i32 3, !dbg !3553
  store i8 1, ptr %on_dispatch, align 8, !dbg !3554
  %call58 = call ptr @get_current() #15, !dbg !3555
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !3556
  call void @syscall_rollback(ptr noundef %call58, ptr noundef %23) #15, !dbg !3557
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !3558
  call void @trigger_sigsys(ptr noundef %24) #15, !dbg !3559
  store i1 true, ptr %retval, align 1, !dbg !3560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3560

cleanup:                                          ; preds = %if.end57, %if.then55, %if.then50, %if.then38, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #14, !dbg !3561
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #14, !dbg !3561
  %25 = load i1, ptr %retval, align 1, !dbg !3561
  ret i1 %25, !dbg !3561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !3562 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3567, metadata !DIExpression()), !dbg !3573
  br label %do.body, !dbg !3573

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3569, metadata !DIExpression()), !dbg !3574
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3574
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3573
  br label %do.cond, !dbg !3574

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3574

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !3575
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3571, metadata !DIExpression()), !dbg !3575
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !3575, !srcloc !3576
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3575
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3575
  %3 = inttoptr i64 %2 to ptr, !dbg !3575
  store ptr %3, ptr %tmp, align 8, !dbg !3575
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !3573
  %4 = load ptr, ptr %tmp, align 8, !dbg !3575
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3573
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3573
  store ptr %5, ptr %tmp1, align 8, !dbg !3573
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3577
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3573
  ret ptr %6, !dbg !3578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @instruction_pointer(ptr noundef %regs) #4 align 16 !dbg !3579 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !3585
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !3586
  %1 = load i64, ptr %ip, align 8, !dbg !3586
  ret i64 %1, !dbg !3587
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3588 dso_local zeroext i1 @arch_syscall_is_vdso_sigreturn(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !3590 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3595, metadata !DIExpression()), !dbg !3597
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3596, metadata !DIExpression()), !dbg !3598
  ret void, !dbg !3599
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3600 dso_local void @force_exit_sig(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @syscall_rollback(ptr noundef %task, ptr noundef %regs) #4 align 16 !dbg !3601 {
entry:
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3606, metadata !DIExpression()), !dbg !3608
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !3607, metadata !DIExpression()), !dbg !3609
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !3610
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 15, !dbg !3611
  %1 = load i64, ptr %orig_ax, align 8, !dbg !3611
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !3612
  %ax = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 10, !dbg !3613
  store i64 %1, ptr %ax, align 8, !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trigger_sigsys(ptr noundef %regs) #0 align 16 !dbg !3616 {
entry:
  %regs.addr = alloca ptr, align 8
  %info = alloca %struct.kernel_siginfo, align 8
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 48, ptr %info) #14, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %info, metadata !3621, metadata !DIExpression()), !dbg !3626
  call void @clear_siginfo(ptr noundef %info) #15, !dbg !3627
  %0 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3628
  %si_signo = getelementptr inbounds %struct.anon.17, ptr %0, i32 0, i32 0, !dbg !3628
  store i32 31, ptr %si_signo, align 8, !dbg !3629
  %1 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3630
  %si_code = getelementptr inbounds %struct.anon.17, ptr %1, i32 0, i32 2, !dbg !3630
  store i32 2, ptr %si_code, align 8, !dbg !3631
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !3632
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3622, metadata !DIExpression()), !dbg !3632
  %call = call ptr @get_current() #15, !dbg !3632
  %call1 = call ptr @task_stack_page(ptr noundef %call) #15, !dbg !3632
  %2 = ptrtoint ptr %call1 to i64, !dbg !3632
  store i64 %2, ptr %__ptr, align 8, !dbg !3632
  %3 = load i64, ptr %__ptr, align 8, !dbg !3632
  %add = add i64 %3, 16384, !dbg !3632
  store i64 %add, ptr %__ptr, align 8, !dbg !3632
  %4 = load i64, ptr %__ptr, align 8, !dbg !3632
  %5 = inttoptr i64 %4 to ptr, !dbg !3632
  %add.ptr = getelementptr %struct.pt_regs, ptr %5, i64 -1, !dbg !3632
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !3633
  %6 = load ptr, ptr %tmp, align 8, !dbg !3632
  %ip = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 16, !dbg !3633
  %7 = load i64, ptr %ip, align 8, !dbg !3633
  %8 = inttoptr i64 %7 to ptr, !dbg !3634
  %9 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3635
  %_sifields = getelementptr inbounds %struct.anon.17, ptr %9, i32 0, i32 3, !dbg !3635
  %_call_addr = getelementptr inbounds %struct.anon.28, ptr %_sifields, i32 0, i32 0, !dbg !3635
  store ptr %8, ptr %_call_addr, align 8, !dbg !3636
  %10 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3637
  %si_errno = getelementptr inbounds %struct.anon.17, ptr %10, i32 0, i32 1, !dbg !3637
  store i32 0, ptr %si_errno, align 4, !dbg !3638
  %call2 = call ptr @get_current() #15, !dbg !3639
  %call3 = call i32 @syscall_get_arch(ptr noundef %call2) #15, !dbg !3640
  %11 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3641
  %_sifields4 = getelementptr inbounds %struct.anon.17, ptr %11, i32 0, i32 3, !dbg !3641
  %_arch = getelementptr inbounds %struct.anon.28, ptr %_sifields4, i32 0, i32 2, !dbg !3641
  store i32 %call3, ptr %_arch, align 4, !dbg !3642
  %call5 = call ptr @get_current() #15, !dbg !3643
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !3644
  %call6 = call i32 @syscall_get_nr(ptr noundef %call5, ptr noundef %12) #15, !dbg !3645
  %13 = getelementptr inbounds %struct.kernel_siginfo, ptr %info, i32 0, i32 0, !dbg !3646
  %_sifields7 = getelementptr inbounds %struct.anon.17, ptr %13, i32 0, i32 3, !dbg !3646
  %_syscall = getelementptr inbounds %struct.anon.28, ptr %_sifields7, i32 0, i32 1, !dbg !3646
  store i32 %call6, ptr %_syscall, align 8, !dbg !3647
  %call8 = call i32 @force_sig_info(ptr noundef %info) #15, !dbg !3648
  call void @llvm.lifetime.end.p0(i64 48, ptr %info) #14, !dbg !3649
  ret void, !dbg !3649
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @set_syscall_user_dispatch(i64 noundef %mode, i64 noundef %offset, i64 noundef %len, ptr noundef %selector) #0 align 16 !dbg !3650 {
entry:
  %mode.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %selector.addr = alloca ptr, align 8
  store i64 %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3654, metadata !DIExpression()), !dbg !3658
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3655, metadata !DIExpression()), !dbg !3659
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3656, metadata !DIExpression()), !dbg !3660
  store ptr %selector, ptr %selector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %selector.addr, metadata !3657, metadata !DIExpression()), !dbg !3661
  %call = call ptr @get_current() #15, !dbg !3662
  %0 = load i64, ptr %mode.addr, align 8, !dbg !3663
  %1 = load i64, ptr %offset.addr, align 8, !dbg !3664
  %2 = load i64, ptr %len.addr, align 8, !dbg !3665
  %3 = load ptr, ptr %selector.addr, align 8, !dbg !3666
  %call1 = call i32 @task_set_syscall_user_dispatch(ptr noundef %call, i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #15, !dbg !3667
  ret i32 %call1, !dbg !3668
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_set_syscall_user_dispatch(ptr noundef %task, i64 noundef %mode, i64 noundef %offset, i64 noundef %len, ptr noundef %selector) #0 align 16 !dbg !3669 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %mode.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %selector.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3673, metadata !DIExpression()), !dbg !3678
  store i64 %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3674, metadata !DIExpression()), !dbg !3679
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3675, metadata !DIExpression()), !dbg !3680
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3676, metadata !DIExpression()), !dbg !3681
  store ptr %selector, ptr %selector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %selector.addr, metadata !3677, metadata !DIExpression()), !dbg !3682
  %0 = load i64, ptr %mode.addr, align 8, !dbg !3683
  switch i64 %0, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb4
  ], !dbg !3684

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %offset.addr, align 8, !dbg !3685
  %tobool = icmp ne i64 %1, 0, !dbg !3685
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3688

lor.lhs.false:                                    ; preds = %sw.bb
  %2 = load i64, ptr %len.addr, align 8, !dbg !3689
  %tobool1 = icmp ne i64 %2, 0, !dbg !3689
  br i1 %tobool1, label %if.then, label %lor.lhs.false2, !dbg !3690

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %selector.addr, align 8, !dbg !3691
  %tobool3 = icmp ne ptr %3, null, !dbg !3691
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3692

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !3693
  br label %return, !dbg !3693

if.end:                                           ; preds = %lor.lhs.false2
  br label %sw.epilog, !dbg !3694

sw.bb4:                                           ; preds = %entry
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3695
  %tobool5 = icmp ne i64 %4, 0, !dbg !3695
  br i1 %tobool5, label %land.lhs.true, label %if.end7, !dbg !3697

land.lhs.true:                                    ; preds = %sw.bb4
  %5 = load i64, ptr %offset.addr, align 8, !dbg !3698
  %6 = load i64, ptr %len.addr, align 8, !dbg !3699
  %add = add i64 %5, %6, !dbg !3700
  %7 = load i64, ptr %offset.addr, align 8, !dbg !3701
  %cmp = icmp ule i64 %add, %7, !dbg !3702
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3703

if.then6:                                         ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !3704
  br label %return, !dbg !3704

if.end7:                                          ; preds = %land.lhs.true, %sw.bb4
  %8 = load ptr, ptr %selector.addr, align 8, !dbg !3705
  %tobool8 = icmp ne ptr %8, null, !dbg !3705
  br i1 %tobool8, label %land.lhs.true9, label %if.end13, !dbg !3707

land.lhs.true9:                                   ; preds = %if.end7
  %9 = load ptr, ptr %selector.addr, align 8, !dbg !3708
  %call = call zeroext i1 @__access_ok(ptr noundef %9, i64 noundef 1) #15, !dbg !3708
  %lnot = xor i1 %call, true, !dbg !3708
  %lnot10 = xor i1 %lnot, true, !dbg !3708
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3708
  %conv = sext i32 %lnot.ext to i64, !dbg !3708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3708
  %tobool11 = icmp ne i64 %expval, 0, !dbg !3708
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3709

if.then12:                                        ; preds = %land.lhs.true9
  store i32 -14, ptr %retval, align 4, !dbg !3710
  br label %return, !dbg !3710

if.end13:                                         ; preds = %land.lhs.true9, %if.end7
  br label %sw.epilog, !dbg !3711

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3712
  br label %return, !dbg !3712

sw.epilog:                                        ; preds = %if.end13, %if.end
  %10 = load ptr, ptr %selector.addr, align 8, !dbg !3713
  %11 = load ptr, ptr %task.addr, align 8, !dbg !3714
  %syscall_dispatch = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 118, !dbg !3715
  %selector14 = getelementptr inbounds %struct.syscall_user_dispatch, ptr %syscall_dispatch, i32 0, i32 0, !dbg !3716
  store ptr %10, ptr %selector14, align 64, !dbg !3717
  %12 = load i64, ptr %offset.addr, align 8, !dbg !3718
  %13 = load ptr, ptr %task.addr, align 8, !dbg !3719
  %syscall_dispatch15 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 118, !dbg !3720
  %offset16 = getelementptr inbounds %struct.syscall_user_dispatch, ptr %syscall_dispatch15, i32 0, i32 1, !dbg !3721
  store i64 %12, ptr %offset16, align 8, !dbg !3722
  %14 = load i64, ptr %len.addr, align 8, !dbg !3723
  %15 = load ptr, ptr %task.addr, align 8, !dbg !3724
  %syscall_dispatch17 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 118, !dbg !3725
  %len18 = getelementptr inbounds %struct.syscall_user_dispatch, ptr %syscall_dispatch17, i32 0, i32 2, !dbg !3726
  store i64 %14, ptr %len18, align 16, !dbg !3727
  %16 = load ptr, ptr %task.addr, align 8, !dbg !3728
  %syscall_dispatch19 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 118, !dbg !3729
  %on_dispatch = getelementptr inbounds %struct.syscall_user_dispatch, ptr %syscall_dispatch19, i32 0, i32 3, !dbg !3730
  store i8 0, ptr %on_dispatch, align 8, !dbg !3731
  %17 = load i64, ptr %mode.addr, align 8, !dbg !3732
  %cmp20 = icmp eq i64 %17, 1, !dbg !3734
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !3735

if.then22:                                        ; preds = %sw.epilog
  %18 = load ptr, ptr %task.addr, align 8, !dbg !3736
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 0, !dbg !3736
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !3736
  call void @set_bit(i64 noundef 5, ptr noundef %syscall_work) #15, !dbg !3736
  br label %if.end25, !dbg !3736

if.else:                                          ; preds = %sw.epilog
  %19 = load ptr, ptr %task.addr, align 8, !dbg !3737
  %thread_info23 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 0, !dbg !3737
  %syscall_work24 = getelementptr inbounds %struct.thread_info, ptr %thread_info23, i32 0, i32 1, !dbg !3737
  call void @clear_bit(i64 noundef 5, ptr noundef %syscall_work24) #15, !dbg !3737
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  store i32 0, ptr %retval, align 4, !dbg !3738
  br label %return, !dbg !3738

return:                                           ; preds = %if.end25, %sw.default, %if.then12, %if.then6, %if.then
  %20 = load i32, ptr %retval, align 4, !dbg !3739
  ret i32 %20, !dbg !3739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @syscall_user_dispatch_get_config(ptr noundef %task, i64 noundef %size, ptr noundef %data) #0 align 16 !dbg !3740 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %sd = alloca ptr, align 8
  %cfg = alloca %struct.ptrace_sud_config, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3744, metadata !DIExpression()), !dbg !3756
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3745, metadata !DIExpression()), !dbg !3757
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3746, metadata !DIExpression()), !dbg !3758
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #14, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !3747, metadata !DIExpression()), !dbg !3760
  %0 = load ptr, ptr %task.addr, align 8, !dbg !3761
  %syscall_dispatch = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 118, !dbg !3762
  store ptr %syscall_dispatch, ptr %sd, align 8, !dbg !3760
  call void @llvm.lifetime.start.p0(i64 32, ptr %cfg) #14, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !3748, metadata !DIExpression()), !dbg !3764
  %1 = load i64, ptr %size.addr, align 8, !dbg !3765
  %cmp = icmp ne i64 %1, 32, !dbg !3767
  br i1 %cmp, label %if.then, label %if.end, !dbg !3768

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3769

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %task.addr, align 8, !dbg !3770
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 0, !dbg !3770
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !3770
  %3 = ptrtoint ptr %syscall_work to i64, !dbg !3770
  %cmp1 = icmp ne i64 %3, 0, !dbg !3770
  %conv = zext i1 %cmp1 to i32, !dbg !3770
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3770
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !3770

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %task.addr, align 8, !dbg !3770
  %thread_info2 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 0, !dbg !3770
  %syscall_work3 = getelementptr inbounds %struct.thread_info, ptr %thread_info2, i32 0, i32 1, !dbg !3770
  %6 = ptrtoint ptr %syscall_work3 to i64, !dbg !3770
  %cmp4 = icmp ne i64 %6, 0, !dbg !3770
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !3770

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %task.addr, align 8, !dbg !3770
  %thread_info7 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 0, !dbg !3770
  %syscall_work8 = getelementptr inbounds %struct.thread_info, ptr %thread_info7, i32 0, i32 1, !dbg !3770
  %8 = load i64, ptr %syscall_work8, align 8, !dbg !3770
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3770
  br i1 %9, label %cond.true, label %cond.false, !dbg !3772

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load ptr, ptr %task.addr, align 8, !dbg !3770
  %thread_info9 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 0, !dbg !3770
  %syscall_work10 = getelementptr inbounds %struct.thread_info, ptr %thread_info9, i32 0, i32 1, !dbg !3770
  %call = call zeroext i1 @const_test_bit(i64 noundef 5, ptr noundef %syscall_work10) #15, !dbg !3770
  br i1 %call, label %if.then16, label %if.else, !dbg !3770

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %11 = load ptr, ptr %task.addr, align 8, !dbg !3770
  %thread_info12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 0, !dbg !3770
  %syscall_work13 = getelementptr inbounds %struct.thread_info, ptr %thread_info12, i32 0, i32 1, !dbg !3770
  %call14 = call zeroext i1 @_test_bit(i64 noundef 5, ptr noundef %syscall_work13) #15, !dbg !3770
  br i1 %call14, label %if.then16, label %if.else, !dbg !3772

if.then16:                                        ; preds = %cond.false, %cond.true
  %mode = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 0, !dbg !3773
  store i64 1, ptr %mode, align 8, !dbg !3774
  br label %if.end18, !dbg !3775

if.else:                                          ; preds = %cond.false, %cond.true
  %mode17 = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 0, !dbg !3776
  store i64 0, ptr %mode17, align 8, !dbg !3777
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %12 = load ptr, ptr %sd, align 8, !dbg !3778
  %offset = getelementptr inbounds %struct.syscall_user_dispatch, ptr %12, i32 0, i32 1, !dbg !3779
  %13 = load i64, ptr %offset, align 8, !dbg !3779
  %offset19 = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 2, !dbg !3780
  store i64 %13, ptr %offset19, align 8, !dbg !3781
  %14 = load ptr, ptr %sd, align 8, !dbg !3782
  %len = getelementptr inbounds %struct.syscall_user_dispatch, ptr %14, i32 0, i32 2, !dbg !3783
  %15 = load i64, ptr %len, align 8, !dbg !3783
  %len20 = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 3, !dbg !3784
  store i64 %15, ptr %len20, align 8, !dbg !3785
  %16 = load ptr, ptr %sd, align 8, !dbg !3786
  %selector = getelementptr inbounds %struct.syscall_user_dispatch, ptr %16, i32 0, i32 0, !dbg !3787
  %17 = load ptr, ptr %selector, align 8, !dbg !3787
  %18 = ptrtoint ptr %17 to i64, !dbg !3788
  %selector21 = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 1, !dbg !3789
  store i64 %18, ptr %selector21, align 8, !dbg !3790
  %19 = load ptr, ptr %data.addr, align 8, !dbg !3791
  %call22 = call i64 @copy_to_user(ptr noundef %19, ptr noundef %cfg, i64 noundef 32) #15, !dbg !3793
  %tobool = icmp ne i64 %call22, 0, !dbg !3793
  br i1 %tobool, label %if.then23, label %if.end24, !dbg !3794

if.then23:                                        ; preds = %if.end18
  store i32 -14, ptr %retval, align 4, !dbg !3795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3795

if.end24:                                         ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !3796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3796

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %cfg) #14, !dbg !3797
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #14, !dbg !3797
  %20 = load i32, ptr %retval, align 4, !dbg !3797
  ret i32 %20, !dbg !3797
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3798 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3806, metadata !DIExpression()), !dbg !3811
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3808, metadata !DIExpression()), !dbg !3814
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3815
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3816
  %div = udiv i64 %1, 64, !dbg !3816
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3817
  store ptr %add.ptr, ptr %p, align 8, !dbg !3814
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3809, metadata !DIExpression()), !dbg !3819
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3820
  %rem = urem i64 %2, 64, !dbg !3820
  %shl = shl i64 1, %rem, !dbg !3820
  store i64 %shl, ptr %mask, align 8, !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !3821
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3810, metadata !DIExpression()), !dbg !3822
  %3 = load ptr, ptr %p, align 8, !dbg !3823
  %4 = load i64, ptr %3, align 8, !dbg !3824
  store i64 %4, ptr %val, align 8, !dbg !3822
  %5 = load i64, ptr %val, align 8, !dbg !3825
  %6 = load i64, ptr %mask, align 8, !dbg !3826
  %and = and i64 %5, %6, !dbg !3827
  %tobool = icmp ne i64 %and, 0, !dbg !3828
  %lnot = xor i1 %tobool, true, !dbg !3828
  %lnot1 = xor i1 %lnot, true, !dbg !3829
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !3830
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !3830
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !3830
  ret i1 %lnot1, !dbg !3831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !3832 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3835, metadata !DIExpression()), !dbg !3837
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3836, metadata !DIExpression()), !dbg !3838
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3839
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3840
  %div = udiv i64 %1, 64, !dbg !3840
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3841
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !3842
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3843
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3844
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !3845
  ret i1 %call, !dbg !3846
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !3847 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3852, metadata !DIExpression()), !dbg !3855
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3853, metadata !DIExpression()), !dbg !3856
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3854, metadata !DIExpression()), !dbg !3857
  %0 = load ptr, ptr %from.addr, align 8, !dbg !3858
  %1 = load i64, ptr %n.addr, align 8, !dbg !3860
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !3861
  br i1 %call, label %if.then, label %if.end, !dbg !3862

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !3863
  %3 = load ptr, ptr %from.addr, align 8, !dbg !3864
  %4 = load i64, ptr %n.addr, align 8, !dbg !3865
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !3866
  store i64 %call1, ptr %n.addr, align 8, !dbg !3867
  br label %if.end, !dbg !3868

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3869
  ret i64 %5, !dbg !3870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @syscall_user_dispatch_set_config(ptr noundef %task, i64 noundef %size, ptr noundef %data) #0 align 16 !dbg !3871 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cfg = alloca %struct.ptrace_sud_config, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3873, metadata !DIExpression()), !dbg !3877
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3874, metadata !DIExpression()), !dbg !3878
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3875, metadata !DIExpression()), !dbg !3879
  call void @llvm.lifetime.start.p0(i64 32, ptr %cfg) #14, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !3876, metadata !DIExpression()), !dbg !3881
  %0 = load i64, ptr %size.addr, align 8, !dbg !3882
  %cmp = icmp ne i64 %0, 32, !dbg !3884
  br i1 %cmp, label %if.then, label %if.end, !dbg !3885

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3886

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !3887
  %call = call i64 @copy_from_user(ptr noundef %cfg, ptr noundef %1, i64 noundef 32) #15, !dbg !3889
  %tobool = icmp ne i64 %call, 0, !dbg !3889
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3890

if.then1:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !3891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3891

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %task.addr, align 8, !dbg !3892
  %mode = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 0, !dbg !3893
  %3 = load i64, ptr %mode, align 8, !dbg !3893
  %offset = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 2, !dbg !3894
  %4 = load i64, ptr %offset, align 8, !dbg !3894
  %len = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 3, !dbg !3895
  %5 = load i64, ptr %len, align 8, !dbg !3895
  %selector = getelementptr inbounds %struct.ptrace_sud_config, ptr %cfg, i32 0, i32 1, !dbg !3896
  %6 = load i64, ptr %selector, align 8, !dbg !3896
  %7 = inttoptr i64 %6 to ptr, !dbg !3897
  %call3 = call i32 @task_set_syscall_user_dispatch(ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %7) #15, !dbg !3898
  store i32 %call3, ptr %retval, align 4, !dbg !3899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3899

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %cfg) #14, !dbg !3900
  %8 = load i32, ptr %retval, align 4, !dbg !3900
  ret i32 %8, !dbg !3900
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !3901 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3903, metadata !DIExpression()), !dbg !3906
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3904, metadata !DIExpression()), !dbg !3907
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3905, metadata !DIExpression()), !dbg !3908
  %0 = load ptr, ptr %to.addr, align 8, !dbg !3909
  %1 = load i64, ptr %n.addr, align 8, !dbg !3911
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !3912
  br i1 %call, label %if.then, label %if.end, !dbg !3913

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !3914
  %3 = load ptr, ptr %from.addr, align 8, !dbg !3915
  %4 = load i64, ptr %n.addr, align 8, !dbg !3916
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !3917
  store i64 %call1, ptr %n.addr, align 8, !dbg !3918
  br label %if.end, !dbg !3919

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3920
  ret i64 %5, !dbg !3921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_siginfo(ptr noundef %info) #4 align 16 !dbg !3922 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !3926, metadata !DIExpression()), !dbg !3927
  %0 = load ptr, ptr %info.addr, align 8, !dbg !3928
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #3 align 16 !dbg !3931 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3938, metadata !DIExpression()), !dbg !3939
  %0 = load ptr, ptr %task.addr, align 8, !dbg !3940
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !3941
  %1 = load ptr, ptr %stack, align 32, !dbg !3941
  ret ptr %1, !dbg !3942
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @syscall_get_arch(ptr noundef %task) #4 align 16 !dbg !3943 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  %0 = load ptr, ptr %task.addr, align 8, !dbg !3949
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !3950
  %status = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 2, !dbg !3951
  %1 = load i32, ptr %status, align 16, !dbg !3951
  %and = and i32 %1, 2, !dbg !3952
  %tobool = icmp ne i32 %and, 0, !dbg !3953
  %2 = zext i1 %tobool to i64, !dbg !3954
  %cond = select i1 %tobool, i32 1073741827, i32 -1073741762, !dbg !3954
  ret i32 %cond, !dbg !3955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @syscall_get_nr(ptr noundef %task, ptr noundef %regs) #4 align 16 !dbg !3956 {
entry:
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3960, metadata !DIExpression()), !dbg !3962
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !3961, metadata !DIExpression()), !dbg !3963
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !3964
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 15, !dbg !3965
  %1 = load i64, ptr %orig_ax, align 8, !dbg !3965
  %conv = trunc i64 %1 to i32, !dbg !3964
  ret i32 %conv, !dbg !3966
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3967 dso_local i32 @force_sig_info(ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #4 align 16 !dbg !3971 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3976, metadata !DIExpression()), !dbg !3981
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3977, metadata !DIExpression()), !dbg !3982
  %0 = load i64, ptr %size.addr, align 8, !dbg !3983
  %cmp = icmp ule i64 %0, 4096, !dbg !3984
  %conv = zext i1 %cmp to i32, !dbg !3984
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3985
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3986

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3987
  %cmp1 = icmp ule i64 %2, 4096, !dbg !3988
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3989

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !3990
  %4 = ptrtoint ptr %3 to i64, !dbg !3990
  %cmp3 = icmp sge i64 %4, 0, !dbg !3990
  store i1 %cmp3, ptr %retval, align 1, !dbg !3992
  br label %return, !dbg !3992

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !3993
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !3978, metadata !DIExpression()), !dbg !3994
  %5 = load i64, ptr %size.addr, align 8, !dbg !3995
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !3996
  %7 = ptrtoint ptr %6 to i64, !dbg !3997
  %add = add i64 %5, %7, !dbg !3998
  store i64 %add, ptr %sum, align 8, !dbg !3994
  %8 = load i64, ptr %sum, align 8, !dbg !3999
  %cmp5 = icmp sge i64 %8, 0, !dbg !3999
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !4000

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !4001
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !4002
  %11 = ptrtoint ptr %10 to i64, !dbg !4003
  %cmp7 = icmp uge i64 %9, %11, !dbg !4004
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !4005
  store i1 %12, ptr %retval, align 1, !dbg !4006
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !4007
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !4008
  ret i1 %13, !dbg !4008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4009 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4015, metadata !DIExpression()), !dbg !4017
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4016, metadata !DIExpression()), !dbg !4018
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4019
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4020
  %div = sdiv i64 %1, 64, !dbg !4020
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4021
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !4022
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4023
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4024
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4025
  ret void, !dbg !4026
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4027 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4029, metadata !DIExpression()), !dbg !4031
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4030, metadata !DIExpression()), !dbg !4032
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4033
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4034
  %div = sdiv i64 %1, 64, !dbg !4034
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4035
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !4036
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4037
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4038
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4039
  ret void, !dbg !4040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4041 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4049, metadata !DIExpression()), !dbg !4051
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4050, metadata !DIExpression()), !dbg !4052
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4053
  %1 = load i64, ptr %size.addr, align 8, !dbg !4054
  %conv = trunc i64 %1 to i32, !dbg !4054
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !4055
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4056
  %3 = load i64, ptr %size.addr, align 8, !dbg !4056
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !4056
  ret void, !dbg !4057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4058 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4061, metadata !DIExpression()), !dbg !4063
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4062, metadata !DIExpression()), !dbg !4064
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4065
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4067
  br i1 %1, label %if.then, label %if.else, !dbg !4068

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4069
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4069
  %shr = ashr i64 %3, 3, !dbg !4069
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4069
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4071
  %and = and i64 %4, 7, !dbg !4071
  %sh_prom = trunc i64 %and to i32, !dbg !4071
  %shl = shl i32 1, %sh_prom, !dbg !4071
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #14, !dbg !4072, !srcloc !4073
  br label %if.end, !dbg !4074

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4075
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4077
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !4078, !srcloc !4079
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4081 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4086, metadata !DIExpression()), !dbg !4088
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4087, metadata !DIExpression()), !dbg !4089
  ret i1 true, !dbg !4090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !4091 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4096, metadata !DIExpression()), !dbg !4099
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4097, metadata !DIExpression()), !dbg !4100
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4098, metadata !DIExpression()), !dbg !4101
  ret void, !dbg !4102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4103 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4105, metadata !DIExpression()), !dbg !4107
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4106, metadata !DIExpression()), !dbg !4108
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4109
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4111
  br i1 %1, label %if.then, label %if.else, !dbg !4112

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4113
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4113
  %shr = ashr i64 %3, 3, !dbg !4113
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4113
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4115
  %and = and i64 %4, 7, !dbg !4115
  %sh_prom = trunc i64 %and to i32, !dbg !4115
  %shl = shl i32 1, %sh_prom, !dbg !4115
  %not = xor i32 %shl, -1, !dbg !4116
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #14, !dbg !4117, !srcloc !4118
  br label %if.end, !dbg !4119

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4120
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4122
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !4123, !srcloc !4124
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4125
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4126 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4128, metadata !DIExpression()), !dbg !4130
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4129, metadata !DIExpression()), !dbg !4131
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4132
  %1 = load i64, ptr %size.addr, align 8, !dbg !4133
  %conv = trunc i64 %1 to i32, !dbg !4133
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !4134
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4135
  %3 = load i64, ptr %size.addr, align 8, !dbg !4135
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !4135
  ret void, !dbg !4136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4137 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4139, metadata !DIExpression()), !dbg !4141
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4140, metadata !DIExpression()), !dbg !4142
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4143
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4144
  br i1 %1, label %cond.true, label %cond.false, !dbg !4144

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4145
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4146
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4147
  %conv = zext i1 %call to i32, !dbg !4147
  br label %cond.end, !dbg !4144

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4148
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4149
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !4150
  %conv2 = zext i1 %call1 to i32, !dbg !4150
  br label %cond.end, !dbg !4144

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4144
  %tobool = icmp ne i32 %cond, 0, !dbg !4144
  ret i1 %tobool, !dbg !4151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4152 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4154, metadata !DIExpression()), !dbg !4156
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4155, metadata !DIExpression()), !dbg !4157
  ret i1 true, !dbg !4158
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4159 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4163, metadata !DIExpression()), !dbg !4165
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4164, metadata !DIExpression()), !dbg !4166
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4167
  %and = and i64 %0, 63, !dbg !4168
  %shl = shl i64 1, %and, !dbg !4169
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4170
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4171
  %shr = ashr i64 %2, 6, !dbg !4172
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4170
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4170
  %and1 = and i64 %shl, %3, !dbg !4173
  %cmp = icmp ne i64 %and1, 0, !dbg !4174
  ret i1 %cmp, !dbg !4175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4176 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4178, metadata !DIExpression()), !dbg !4181
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4179, metadata !DIExpression()), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4180, metadata !DIExpression()), !dbg !4184
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4185
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4186
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !4187, !srcloc !4188
  %3 = icmp ult i8 %2, 2, !dbg !4187
  call void @llvm.assume(i1 %3), !dbg !4187
  store i8 %2, ptr %oldbit, align 1, !dbg !4187
  %4 = load i8, ptr %oldbit, align 1, !dbg !4189, !range !4190, !noundef !491
  %tobool = trunc i8 %4 to i1, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !4191
  ret i1 %tobool, !dbg !4192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !4193 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4197, metadata !DIExpression()), !dbg !4207
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4198, metadata !DIExpression()), !dbg !4208
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4199, metadata !DIExpression()), !dbg !4209
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !4210
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4200, metadata !DIExpression()), !dbg !4211
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4212
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4213
  %conv = trunc i64 %1 to i32, !dbg !4213
  store i32 %conv, ptr %sz, align 4, !dbg !4211
  %2 = load i32, ptr %sz, align 4, !dbg !4214
  %cmp = icmp sge i32 %2, 0, !dbg !4214
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4214

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4214
  %conv2 = sext i32 %3 to i64, !dbg !4214
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4214
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4214
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4216
  %lnot = xor i1 %5, true, !dbg !4214
  %lnot5 = xor i1 %lnot, true, !dbg !4214
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4214
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4214
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4214
  %tobool = icmp ne i64 %expval, 0, !dbg !4214
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4217

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4218
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4221
  br i1 %7, label %if.else, label %if.then7, !dbg !4222

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4223
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4224
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !4225
  br label %if.end11, !dbg !4225

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4226, !range !4190, !noundef !491
  %tobool8 = trunc i8 %10 to i1, !dbg !4226
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4228

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !4229, !srcloc !4230
  br label %if.end, !dbg !4229

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !4231, !srcloc !4232
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4233

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4234
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4201, metadata !DIExpression()), !dbg !4234
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4234
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4234
  %lnot15 = xor i1 %cmp13, true, !dbg !4234
  %lnot17 = xor i1 %lnot15, true, !dbg !4234
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4234
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4234
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4235
  %tobool19 = icmp ne i32 %12, 0, !dbg !4235
  %lnot20 = xor i1 %tobool19, true, !dbg !4235
  %lnot22 = xor i1 %lnot20, true, !dbg !4235
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4235
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4235
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4235
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4235
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4234

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4235

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !4236
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4204, metadata !DIExpression()), !dbg !4236
  store i32 2307, ptr %__flags, align 4, !dbg !4236
  br label %do.body28, !dbg !4236

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4237

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4237

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4236

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4239
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #14, !dbg !4239, !srcloc !4241
  br label %do.cond30, !dbg !4239

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4239

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4236

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4242

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4242

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !4235
  br label %do.cond35, !dbg !4236

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4236

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4236

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4234
  %tobool38 = icmp ne i32 %14, 0, !dbg !4234
  %lnot39 = xor i1 %tobool38, true, !dbg !4234
  %lnot41 = xor i1 %lnot39, true, !dbg !4234
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4234
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4234
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4234
  store i64 %expval44, ptr %tmp, align 8, !dbg !4235
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4244
  %15 = load i64, ptr %tmp, align 8, !dbg !4234
  %tobool45 = icmp ne i64 %15, 0, !dbg !4244
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4245

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4246

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4247
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4248
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4249, !range !4190, !noundef !491
  %tobool48 = trunc i8 %18 to i1, !dbg !4249
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !4250
  store i1 true, ptr %retval, align 1, !dbg !4251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4251

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !4252
  %19 = load i1, ptr %retval, align 1, !dbg !4252
  ret i1 %19, !dbg !4252
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4253 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !4254 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4258, metadata !DIExpression()), !dbg !4260
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4259, metadata !DIExpression()), !dbg !4261
  %0 = load i32, ptr %size.addr, align 4, !dbg !4262
  %1 = load i64, ptr %count.addr, align 8, !dbg !4264
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !4265
  ret void, !dbg !4266
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4267 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4268 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !4269 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4273, metadata !DIExpression()), !dbg !4276
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4274, metadata !DIExpression()), !dbg !4277
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4275, metadata !DIExpression()), !dbg !4278
  ret void, !dbg !4279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4281 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!7}
!llvm.named.register.rsp = !{!3489}
!llvm.module.flags = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!llvm.ident = !{!3498}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/entry/.syscall_user_dispatch.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/entry/syscall_user_dispatch\22 -D KBUILD_BASENAME=\22syscall_user_dispatch\22 -D KBUILD_MODNAME=\22syscall_user_dispatch\22 -D __KBUILD_MODNAME=kmod_syscall_user_dispatch -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/entry/syscall_user_dispatch.ll kernel/entry/syscall_user_dispatch.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !93, globals: !3488, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "kernel/entry/syscall_user_dispatch.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dfd10a08a8f3bd77576f1efc5bef6dc")
!9 = !{!10, !16, !21, !29, !34, !40, !48, !64, !71, !77, !84}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !12, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!20 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !22, line: 9, baseType: !12, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!25 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!26 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!27 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!28 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !12, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !12, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !41, line: 68, baseType: !12, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !49, line: 1325, baseType: !12, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!52 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!53 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!54 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!55 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!56 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!57 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!58 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!59 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!60 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!61 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!62 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!63 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !65, line: 15, baseType: !12, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!68 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!69 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!70 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !72, line: 16, baseType: !12, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "TT_NONE", value: 0)
!75 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!76 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !78, line: 51, baseType: !12, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!81 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!82 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!83 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "syscall_work_bit", file: !2, line: 41, baseType: !12, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SECCOMP", value: 0)
!87 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACEPOINT", value: 1)
!88 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACE", value: 2)
!89 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EMU", value: 3)
!90 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_AUDIT", value: 4)
!91 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_USER_DISPATCH", value: 5)
!92 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EXIT_TRAP", value: 6)
!93 = !{!94, !4, !99, !102, !103, !96, !105, !106, !107, !101, !3404, !1042, !3483, !3485, !3487, !133}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !95, line: 23, baseType: !96)
!95 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !98)
!97 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!98 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !100, line: 42, baseType: !101)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !109, line: 746, size: 58368, elements: !110)
!109 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!110 = !{!111, !121, !122, !123, !134, !135, !136, !137, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !226, !237, !364, !368, !371, !402, !403, !404, !405, !416, !418, !419, !420, !421, !422, !423, !434, !435, !438, !439, !440, !441, !442, !443, !444, !445, !452, !453, !460, !461, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2631, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2646, !2647, !2648, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2680, !2686, !2687, !2688, !2689, !2690, !2692, !2695, !2702, !2707, !2710, !2713, !2716, !2742, !2882, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2924, !2925, !2926, !2935, !2943, !2944, !2945, !2946, !2947, !2952, !2953, !2954, !2957, !2958, !2961, !2964, !2967, !2975, !2978, !2979, !3065, !3066, !3067, !3068, !3069, !3075, !3076, !3077, !3078, !3081, !3082, !3085, !3088, !3089, !3092, !3093, !3094, !3097, !3098, !3099, !3100, !3101, !3102, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3134, !3135, !3141, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3153, !3225, !3227, !3228, !3229, !3230, !3231, !3243, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3260, !3261, !3262}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !108, file: !109, line: 752, baseType: !112, size: 192)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !113, line: 56, size: 192, elements: !114)
!113 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!114 = !{!115, !116, !117, !120}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 57, baseType: !101, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !112, file: !113, line: 58, baseType: !101, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !112, file: !113, line: 59, baseType: !118, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !95, line: 21, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !12)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !112, file: !113, line: 61, baseType: !118, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !108, file: !109, line: 754, baseType: !12, size: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !108, file: !109, line: 767, baseType: !102, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !108, file: !109, line: 768, baseType: !124, size: 32, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !125, line: 113, baseType: !126)
!125 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !125, line: 111, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !126, file: !125, line: 112, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !100, line: 174, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 172, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !130, file: !100, line: 173, baseType: !133, size: 32)
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !109, line: 770, baseType: !12, size: 32, offset: 352)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !108, file: !109, line: 771, baseType: !12, size: 32, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !108, file: !109, line: 774, baseType: !133, size: 32, offset: 416)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !108, file: !109, line: 775, baseType: !138, size: 128, offset: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !139, line: 58, size: 128, elements: !140)
!139 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!140 = !{!141, !147, !152, !156}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !138, file: !139, line: 59, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !143, line: 60, size: 64, elements: !144)
!143 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 61, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 60, baseType: !148, size: 32, offset: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 60, size: 32, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !148, file: !139, line: 61, baseType: !12, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !148, file: !139, line: 62, baseType: !129, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !138, file: !139, line: 65, baseType: !153, size: 16, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !95, line: 19, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !138, file: !139, line: 65, baseType: !153, size: 16, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !108, file: !109, line: 776, baseType: !12, size: 32, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !108, file: !109, line: 777, baseType: !101, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !108, file: !109, line: 778, baseType: !107, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !108, file: !109, line: 787, baseType: !133, size: 32, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !108, file: !109, line: 788, baseType: !133, size: 32, offset: 800)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !108, file: !109, line: 790, baseType: !133, size: 32, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !108, file: !109, line: 792, baseType: !133, size: 32, offset: 864)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !108, file: !109, line: 793, baseType: !133, size: 32, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !108, file: !109, line: 794, baseType: !133, size: 32, offset: 928)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !108, file: !109, line: 795, baseType: !12, size: 32, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !108, file: !109, line: 797, baseType: !168, size: 2048, offset: 1024)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !109, line: 551, size: 2048, elements: !169)
!169 = !{!170, !175, !183, !184, !185, !191, !192, !193, !194, !195, !196, !200, !201, !202, !203, !205, !208, !209, !210}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !168, file: !109, line: 553, baseType: !171, size: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !109, line: 411, size: 128, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !171, file: !109, line: 412, baseType: !101, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !171, file: !109, line: 413, baseType: !118, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !168, file: !109, line: 554, baseType: !176, size: 192, align: 64, offset: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !177, line: 5, size: 192, align: 64, elements: !178)
!177 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!178 = !{!179, !180, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !176, file: !177, line: 6, baseType: !101, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !176, file: !177, line: 7, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !176, file: !177, line: 8, baseType: !181, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !168, file: !109, line: 555, baseType: !94, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !168, file: !109, line: 556, baseType: !94, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !168, file: !109, line: 558, baseType: !186, size: 128, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !100, line: 190, size: 128, elements: !187)
!187 = !{!188, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !100, line: 191, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !100, line: 191, baseType: !189, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !168, file: !109, line: 559, baseType: !12, size: 32, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !168, file: !109, line: 561, baseType: !94, size: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !168, file: !109, line: 562, baseType: !94, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !168, file: !109, line: 563, baseType: !94, size: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !168, file: !109, line: 564, baseType: !94, size: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !168, file: !109, line: 565, baseType: !197, size: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !95, line: 22, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !97, line: 30, baseType: !199)
!199 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !168, file: !109, line: 566, baseType: !94, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !168, file: !109, line: 568, baseType: !94, size: 64, offset: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !168, file: !109, line: 571, baseType: !133, size: 32, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !109, line: 572, baseType: !204, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !168, file: !109, line: 574, baseType: !206, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !109, line: 49, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !168, file: !109, line: 576, baseType: !206, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !168, file: !109, line: 578, baseType: !101, size: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !168, file: !109, line: 588, baseType: !211, size: 512, align: 512, offset: 1536)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !109, line: 497, size: 512, align: 512, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !211, file: !109, line: 498, baseType: !94, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !211, file: !109, line: 499, baseType: !94, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !211, file: !109, line: 500, baseType: !94, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !211, file: !109, line: 501, baseType: !118, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !211, file: !109, line: 502, baseType: !118, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !211, file: !109, line: 503, baseType: !101, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !211, file: !109, line: 504, baseType: !101, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !211, file: !109, line: 505, baseType: !101, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !211, file: !109, line: 506, baseType: !222, size: 64, align: 64, offset: 448)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !109, line: 445, size: 64, align: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !222, file: !109, line: 446, baseType: !12, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !222, file: !109, line: 447, baseType: !12, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !108, file: !109, line: 798, baseType: !227, size: 384, offset: 3072)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !109, line: 592, size: 384, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !227, file: !109, line: 593, baseType: !186, size: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !227, file: !109, line: 594, baseType: !101, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !227, file: !109, line: 595, baseType: !101, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !227, file: !109, line: 596, baseType: !12, size: 32, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !227, file: !109, line: 597, baseType: !155, size: 16, offset: 288)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !227, file: !109, line: 598, baseType: !155, size: 16, offset: 304)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !227, file: !109, line: 600, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !108, file: !109, line: 799, baseType: !238, size: 1792, offset: 3456)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !109, line: 610, size: 1792, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !361, !362}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !238, file: !109, line: 611, baseType: !176, size: 192, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !238, file: !109, line: 618, baseType: !94, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !238, file: !109, line: 619, baseType: !94, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !238, file: !109, line: 620, baseType: !94, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !238, file: !109, line: 621, baseType: !94, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !238, file: !109, line: 622, baseType: !94, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !238, file: !109, line: 629, baseType: !197, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !238, file: !109, line: 630, baseType: !94, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !109, line: 631, baseType: !12, size: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !238, file: !109, line: 653, baseType: !12, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !238, file: !109, line: 654, baseType: !12, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !238, file: !109, line: 655, baseType: !12, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !238, file: !109, line: 656, baseType: !12, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !238, file: !109, line: 662, baseType: !254, size: 512, offset: 704)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !255)
!255 = !{!256, !264, !265, !270, !357, !358, !359, !360}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !254, file: !17, line: 119, baseType: !257, size: 256)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !258, line: 9, size: 256, elements: !259)
!258 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !258, line: 10, baseType: !176, size: 192, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !257, file: !258, line: 11, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !263, line: 29, baseType: !197)
!263 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !254, file: !17, line: 120, baseType: !262, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !254, file: !17, line: 121, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!16, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !254, file: !17, line: 122, baseType: !271, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !273)
!273 = !{!274, !325, !326, !330, !340, !341, !352, !356}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !272, file: !17, line: 160, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !277)
!277 = !{!278, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !276, file: !17, line: 216, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !280, line: 23, baseType: !281)
!280 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !280, line: 14, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !281, file: !280, line: 15, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !285, line: 44, baseType: !286)
!285 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !285, line: 14, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !285, line: 15, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !286, file: !285, line: 15, size: 32, elements: !290)
!290 = !{!291, !292, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !289, file: !285, line: 16, baseType: !129, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !285, line: 24, baseType: !293, size: 16)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !285, line: 24, size: 16, elements: !294)
!294 = !{!295, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !293, file: !285, line: 25, baseType: !296, size: 8)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !95, line: 17, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !298)
!298 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !293, file: !285, line: 26, baseType: !296, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !285, line: 28, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !285, line: 28, size: 32, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !301, file: !285, line: 29, baseType: !153, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !285, line: 30, baseType: !153, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !276, file: !17, line: 217, baseType: !12, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !276, file: !17, line: 218, baseType: !12, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !276, file: !17, line: 219, baseType: !12, size: 32, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !276, file: !17, line: 220, baseType: !12, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !276, file: !17, line: 221, baseType: !12, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !276, file: !17, line: 222, baseType: !12, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !276, file: !17, line: 223, baseType: !12, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !276, file: !17, line: 224, baseType: !12, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !276, file: !17, line: 226, baseType: !12, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !276, file: !17, line: 227, baseType: !155, size: 16, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !276, file: !17, line: 228, baseType: !155, size: 16, offset: 208)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !276, file: !17, line: 229, baseType: !12, size: 32, offset: 224)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !276, file: !17, line: 235, baseType: !262, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !276, file: !17, line: 236, baseType: !269, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !276, file: !17, line: 237, baseType: !262, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !276, file: !17, line: 238, baseType: !269, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !276, file: !17, line: 239, baseType: !322, size: 4096, align: 512, offset: 512)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 4096, align: 512, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 8)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !272, file: !17, line: 161, baseType: !12, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !272, file: !17, line: 162, baseType: !327, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !100, line: 32, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !329, line: 96, baseType: !133)
!329 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !272, file: !17, line: 163, baseType: !331, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !332, line: 274, baseType: !333)
!332 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !332, line: 274, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !333, file: !332, line: 274, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !332, line: 69, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !332, line: 64, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !337, file: !332, line: 65, baseType: !12, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !272, file: !17, line: 164, baseType: !269, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !272, file: !17, line: 165, baseType: !342, size: 128, offset: 256)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !258, line: 14, size: 128, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !342, file: !258, line: 15, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !177, line: 26, size: 128, elements: !346)
!346 = !{!347, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !345, file: !177, line: 27, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !177, line: 12, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !348, file: !177, line: 13, baseType: !181, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !345, file: !177, line: 28, baseType: !181, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !272, file: !17, line: 166, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!262}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !272, file: !17, line: 167, baseType: !262, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !254, file: !17, line: 123, baseType: !296, size: 8, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !254, file: !17, line: 124, baseType: !296, size: 8, offset: 456)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !254, file: !17, line: 125, baseType: !296, size: 8, offset: 464)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !254, file: !17, line: 126, baseType: !296, size: 8, offset: 472)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !238, file: !109, line: 671, baseType: !254, size: 512, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !238, file: !109, line: 679, baseType: !363, size: 64, offset: 1728)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !108, file: !109, line: 800, baseType: !365, size: 64, offset: 5248)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !109, line: 800, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !108, file: !109, line: 809, baseType: !369, size: 64, offset: 5312)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !109, line: 70, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !108, file: !109, line: 825, baseType: !372, size: 2048, align: 512, offset: 5632)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !109, line: 509, size: 2048, align: 512, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !372, file: !109, line: 511, baseType: !94, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !372, file: !109, line: 512, baseType: !94, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !372, file: !109, line: 513, baseType: !94, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !372, file: !109, line: 514, baseType: !94, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !372, file: !109, line: 515, baseType: !94, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !372, file: !109, line: 516, baseType: !94, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !372, file: !109, line: 518, baseType: !94, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !372, file: !109, line: 519, baseType: !94, size: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !372, file: !109, line: 520, baseType: !197, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !372, file: !109, line: 522, baseType: !94, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !372, file: !109, line: 523, baseType: !94, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !372, file: !109, line: 524, baseType: !197, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !372, file: !109, line: 526, baseType: !197, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !372, file: !109, line: 527, baseType: !94, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !372, file: !109, line: 529, baseType: !94, size: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !372, file: !109, line: 530, baseType: !94, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !372, file: !109, line: 531, baseType: !94, size: 64, offset: 1024)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !372, file: !109, line: 532, baseType: !94, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !372, file: !109, line: 533, baseType: !94, size: 64, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !372, file: !109, line: 535, baseType: !94, size: 64, offset: 1216)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !372, file: !109, line: 536, baseType: !94, size: 64, offset: 1280)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !372, file: !109, line: 537, baseType: !94, size: 64, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !372, file: !109, line: 538, baseType: !94, size: 64, offset: 1408)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !372, file: !109, line: 539, baseType: !94, size: 64, offset: 1472)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !372, file: !109, line: 540, baseType: !94, size: 64, offset: 1536)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !372, file: !109, line: 541, baseType: !94, size: 64, offset: 1600)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !372, file: !109, line: 542, baseType: !94, size: 64, offset: 1664)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !372, file: !109, line: 543, baseType: !94, size: 64, offset: 1728)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !108, file: !109, line: 833, baseType: !12, size: 32, offset: 7680)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !108, file: !109, line: 836, baseType: !12, size: 32, offset: 7712)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !108, file: !109, line: 837, baseType: !133, size: 32, offset: 7744)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !108, file: !109, line: 838, baseType: !406, size: 64, offset: 7808)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !409, line: 19, baseType: !410)
!409 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !409, line: 19, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !410, file: !409, line: 19, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 1)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !108, file: !109, line: 839, baseType: !417, size: 64, offset: 7872)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !108, file: !109, line: 840, baseType: !408, size: 64, offset: 7936)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !108, file: !109, line: 841, baseType: !102, size: 64, offset: 8000)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !108, file: !109, line: 843, baseType: !155, size: 16, offset: 8064)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !108, file: !109, line: 845, baseType: !155, size: 16, offset: 8080)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !108, file: !109, line: 848, baseType: !133, size: 32, offset: 8096)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !108, file: !109, line: 849, baseType: !424, size: 32, offset: 8128)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !109, line: 718, size: 32, elements: !425)
!425 = !{!426, !433}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !424, file: !109, line: 724, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !109, line: 719, size: 32, elements: !428)
!428 = !{!429, !430, !431, !432}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !427, file: !109, line: 720, baseType: !296, size: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !427, file: !109, line: 721, baseType: !296, size: 8, offset: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !427, file: !109, line: 722, baseType: !296, size: 8, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !427, file: !109, line: 723, baseType: !296, size: 8, offset: 24)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !424, file: !109, line: 725, baseType: !118, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !108, file: !109, line: 850, baseType: !186, size: 128, offset: 8192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !108, file: !109, line: 851, baseType: !436, size: 64, offset: 8320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !109, line: 60, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !108, file: !109, line: 855, baseType: !101, size: 64, offset: 8384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !108, file: !109, line: 856, baseType: !296, size: 8, offset: 8448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !108, file: !109, line: 857, baseType: !296, size: 8, offset: 8456)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !108, file: !109, line: 858, baseType: !133, size: 32, offset: 8480)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !108, file: !109, line: 859, baseType: !186, size: 128, offset: 8512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !108, file: !109, line: 860, baseType: !133, size: 32, offset: 8640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !108, file: !109, line: 861, baseType: !186, size: 128, offset: 8704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !108, file: !109, line: 873, baseType: !446, size: 256, offset: 8832)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !109, line: 376, size: 256, elements: !447)
!447 = !{!448, !449, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !446, file: !109, line: 381, baseType: !101, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !446, file: !109, line: 384, baseType: !98, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !446, file: !109, line: 389, baseType: !98, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !446, file: !109, line: 392, baseType: !98, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !108, file: !109, line: 875, baseType: !186, size: 128, offset: 9088)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !108, file: !109, line: 877, baseType: !454, size: 320, offset: 9216)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !455, line: 86, size: 320, elements: !456)
!455 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !454, file: !455, line: 87, baseType: !133, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !454, file: !455, line: 88, baseType: !186, size: 128, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !454, file: !455, line: 89, baseType: !186, size: 128, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !108, file: !109, line: 878, baseType: !176, size: 192, align: 64, offset: 9536)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !108, file: !109, line: 881, baseType: !462, size: 64, offset: 9728)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !49, line: 733, size: 10240, elements: !464)
!464 = !{!465, !2550}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !49, line: 734, baseType: !466, size: 10240)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !49, line: 734, size: 10240, elements: !467)
!467 = !{!468, !472, !494, !2425, !2426, !2427, !2428, !2429, !2430, !2437, !2438, !2439, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2478, !2480, !2483, !2530, !2531, !2532, !2535, !2536, !2537, !2540, !2541, !2542, !2548, !2549}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !49, line: 739, baseType: !469, size: 512, align: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !49, line: 739, size: 512, align: 512, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !469, file: !49, line: 747, baseType: !129, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !466, file: !49, line: 750, baseType: !473, size: 128, offset: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !474, line: 218, size: 128, elements: !475)
!474 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!475 = !{!476, !492, !493}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !473, file: !474, line: 219, baseType: !477, size: 32)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !474, line: 219, size: 32, elements: !478)
!478 = !{!479, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !477, file: !474, line: 220, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !481, line: 29, baseType: !482)
!481 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !481, line: 17, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !481, line: 18, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !481, line: 18, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !485, file: !481, line: 19, baseType: !281, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !477, file: !474, line: 221, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !474, line: 197, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 197, elements: !491)
!491 = !{}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !473, file: !474, line: 223, baseType: !12, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !473, file: !474, line: 224, baseType: !102, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !466, file: !49, line: 752, baseType: !495, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!101, !498, !101, !101, !101, !101}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !500)
!500 = !{!501, !515, !516, !518, !525, !537, !540, !541, !665, !873, !882, !2415, !2416, !2417, !2418, !2419, !2420, !2422, !2423, !2424}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !30, line: 995, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !30, line: 995, size: 128, elements: !503)
!503 = !{!504, !505, !514}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !502, file: !30, line: 996, baseType: !142, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !502, file: !30, line: 997, baseType: !506, size: 128, align: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !100, line: 232, size: 128, align: 64, elements: !507)
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !100, line: 233, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !506, file: !100, line: 234, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !509}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !502, file: !30, line: 998, baseType: !12, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !499, file: !30, line: 1005, baseType: !480, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !499, file: !30, line: 1006, baseType: !517, size: 32, offset: 160)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !100, line: 156, baseType: !12)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !499, file: !30, line: 1007, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !520, line: 13, baseType: !521)
!520 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !100, line: 181, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 179, size: 64, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !522, file: !100, line: 180, baseType: !197, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !499, file: !30, line: 1008, baseType: !526, size: 256, offset: 256)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !527, line: 66, size: 256, elements: !528)
!527 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!528 = !{!529, !530, !531, !536}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !526, file: !527, line: 67, baseType: !519, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !526, file: !527, line: 68, baseType: !279, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !526, file: !527, line: 70, baseType: !532, size: 32, offset: 96)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !533, line: 15, size: 32, elements: !534)
!533 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !532, file: !533, line: 20, baseType: !129, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !526, file: !527, line: 72, baseType: !186, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !499, file: !30, line: 1009, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !100, line: 52, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !329, line: 88, baseType: !199)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !499, file: !30, line: 1010, baseType: !12, size: 32, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !499, file: !30, line: 1011, baseType: !542, size: 256, offset: 640)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !543)
!543 = !{!544, !567, !655, !656, !663, !664}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !30, line: 949, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !546, line: 34, baseType: !547)
!546 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 25, size: 64, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !547, file: !546, line: 26, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !551, line: 27, baseType: !552)
!551 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !551, line: 13, size: 64, elements: !553)
!553 = !{!554, !566}
!554 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !551, line: 14, baseType: !555, size: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !551, line: 14, size: 32, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !555, file: !551, line: 15, baseType: !129, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !551, line: 16, baseType: !559, size: 32)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !555, file: !551, line: 16, size: 32, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !559, file: !551, line: 18, baseType: !296, size: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !559, file: !551, line: 19, baseType: !563, size: 24, offset: 8)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 24, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 3)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !552, file: !551, line: 26, baseType: !284, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !542, file: !30, line: 950, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !22, line: 59, size: 768, elements: !570)
!570 = !{!571, !572, !573, !574, !587, !588, !595, !596}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !569, file: !22, line: 61, baseType: !124, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !569, file: !22, line: 62, baseType: !12, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !22, line: 63, baseType: !480, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !569, file: !22, line: 65, baseType: !575, size: 256, offset: 128)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 256, elements: !585)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !100, line: 194, size: 64, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !576, file: !100, line: 195, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !100, line: 198, size: 128, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !100, line: 199, baseType: !579, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !580, file: !100, line: 199, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!585 = !{!586}
!586 = !DISubrange(count: 4)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !569, file: !22, line: 66, baseType: !576, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !569, file: !22, line: 68, baseType: !589, size: 192, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !590, line: 41, baseType: !591)
!590 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !590, line: 37, size: 192, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !590, line: 38, baseType: !480, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !591, file: !590, line: 39, baseType: !186, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !569, file: !22, line: 69, baseType: !506, size: 128, align: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !569, file: !22, line: 70, baseType: !597, offset: 768)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, elements: !653)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !22, line: 54, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !598, file: !22, line: 55, baseType: !133, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !598, file: !22, line: 56, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !604, line: 26, size: 1152, elements: !605)
!604 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!605 = !{!606, !620, !621, !622, !623, !627, !628, !629, !632, !636, !640, !641, !652}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !603, file: !604, line: 27, baseType: !607, size: 192)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !608, line: 19, size: 192, elements: !609)
!608 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!609 = !{!610, !618, !619}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !607, file: !608, line: 20, baseType: !611, size: 128)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !612, line: 296, size: 128, elements: !613)
!612 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!613 = !{!614, !615, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !611, file: !612, line: 297, baseType: !480, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !611, file: !612, line: 299, baseType: !616, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 154, baseType: !12)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !611, file: !612, line: 300, baseType: !102, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !607, file: !608, line: 21, baseType: !12, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !607, file: !608, line: 22, baseType: !12, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !603, file: !604, line: 28, baseType: !506, size: 128, align: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !603, file: !604, line: 29, baseType: !12, size: 32, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !603, file: !604, line: 30, baseType: !107, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !603, file: !604, line: 31, baseType: !624, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !626, line: 325, flags: DIFlagFwdDecl)
!626 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!627 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !603, file: !604, line: 32, baseType: !12, size: 32, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !603, file: !604, line: 33, baseType: !602, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !603, file: !604, line: 35, baseType: !630, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !604, line: 17, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !603, file: !604, line: 37, baseType: !633, size: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !635, line: 18, flags: DIFlagFwdDecl)
!635 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !603, file: !604, line: 38, baseType: !637, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !639, line: 16, flags: DIFlagFwdDecl)
!639 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !603, file: !604, line: 39, baseType: !133, size: 32, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !603, file: !604, line: 40, baseType: !642, size: 192, offset: 896)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !643, line: 9, size: 192, elements: !644)
!643 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!644 = !{!645, !646, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !642, file: !643, line: 10, baseType: !519, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !642, file: !643, line: 11, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !643, line: 7, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !642, file: !643, line: 12, baseType: !12, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !642, file: !643, line: 13, baseType: !124, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !603, file: !604, line: 42, baseType: !133, size: 32, offset: 1088)
!653 = !{!654}
!654 = !DISubrange(count: -1)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !542, file: !30, line: 951, baseType: !21, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !542, file: !30, line: 952, baseType: !657, size: 32, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !635, line: 23, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 21, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !658, file: !635, line: 22, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !100, line: 37, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !329, line: 49, baseType: !12)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !542, file: !30, line: 952, baseType: !657, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !542, file: !30, line: 953, baseType: !133, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !499, file: !30, line: 1012, baseType: !666, size: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !669, line: 110, size: 1472, elements: !670)
!669 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!670 = !{!671, !672, !673, !680, !681, !682, !683, !684, !685, !686, !687, !693, !694, !695, !696, !697, !698, !823, !824, !825, !826, !827, !858, !859, !860, !868}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !668, file: !669, line: 111, baseType: !519, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !668, file: !669, line: 112, baseType: !657, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !668, file: !669, line: 113, baseType: !674, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !635, line: 28, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 26, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !635, line: 27, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !100, line: 38, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !329, line: 50, baseType: !12)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !668, file: !669, line: 114, baseType: !657, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !668, file: !669, line: 115, baseType: !674, size: 32, offset: 160)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !668, file: !669, line: 116, baseType: !657, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !668, file: !669, line: 117, baseType: !674, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !668, file: !669, line: 118, baseType: !657, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !668, file: !669, line: 119, baseType: !674, size: 32, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !668, file: !669, line: 120, baseType: !12, size: 32, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !668, file: !669, line: 121, baseType: !688, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !689, line: 24, baseType: !690)
!689 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 24, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !689, line: 24, baseType: !94, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !668, file: !669, line: 122, baseType: !688, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !668, file: !669, line: 123, baseType: !688, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !668, file: !669, line: 124, baseType: !688, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !668, file: !669, line: 125, baseType: !688, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !668, file: !669, line: 127, baseType: !298, size: 8, offset: 704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !668, file: !669, line: 129, baseType: !699, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !701, line: 195, size: 1728, elements: !702)
!701 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!702 = !{!703, !704, !709, !714, !723, !726, !727, !734, !735, !736, !737, !740, !741, !742, !744, !745, !787, !808}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !700, file: !701, line: 196, baseType: !124, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !700, file: !701, line: 197, baseType: !705, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !701, line: 28, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !100, line: 104, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !95, line: 20, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !133)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 198, baseType: !710, size: 192, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 198, size: 192, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !710, file: !701, line: 199, baseType: !186, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !710, file: !701, line: 200, baseType: !176, size: 192, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !700, file: !701, line: 205, baseType: !715, size: 320, offset: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !716, line: 48, size: 320, elements: !717)
!716 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!717 = !{!718, !719, !720, !721, !722}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !716, line: 49, baseType: !519, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !715, file: !716, line: 55, baseType: !519, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !715, file: !716, line: 57, baseType: !532, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !715, file: !716, line: 59, baseType: !279, size: 32, offset: 160)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !715, file: !716, line: 60, baseType: !186, size: 128, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !700, file: !701, line: 206, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !701, line: 206, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !700, file: !701, line: 207, baseType: !102, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 208, baseType: !728, size: 64, offset: 704)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 208, size: 64, elements: !729)
!729 = !{!730, !733}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !728, file: !701, line: 209, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !732, line: 8, baseType: !198)
!732 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!733 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !728, file: !701, line: 210, baseType: !731, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !700, file: !701, line: 212, baseType: !731, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !700, file: !701, line: 213, baseType: !657, size: 32, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !700, file: !701, line: 214, baseType: !674, size: 32, offset: 864)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !700, file: !701, line: 215, baseType: !738, size: 32, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !701, line: 31, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 110, baseType: !118)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !700, file: !701, line: 216, baseType: !155, size: 16, offset: 928)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !700, file: !701, line: 217, baseType: !155, size: 16, offset: 944)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !700, file: !701, line: 221, baseType: !743, size: 16, offset: 960)
!743 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !701, line: 228, baseType: !101, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 245, baseType: !746, size: 320, offset: 1088)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 245, size: 320, elements: !747)
!747 = !{!748, !779}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !746, file: !701, line: 246, baseType: !749, size: 320)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !701, line: 114, size: 320, elements: !750)
!750 = !{!751, !752, !764, !767, !776}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !749, file: !701, line: 116, baseType: !101, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !701, line: 117, baseType: !753, size: 64, offset: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !701, line: 117, size: 64, elements: !754)
!754 = !{!755, !763}
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !701, line: 118, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !701, line: 118, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !756, file: !701, line: 120, baseType: !153, size: 16)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !756, file: !701, line: 121, baseType: !760, size: 48, offset: 16)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 6)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !753, file: !701, line: 127, baseType: !101, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !701, line: 129, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !701, line: 102, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !749, file: !701, line: 130, baseType: !768, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !701, line: 108, size: 192, elements: !770)
!770 = !{!771, !772, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !769, file: !701, line: 109, baseType: !506, size: 128, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !769, file: !701, line: 110, baseType: !124, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !769, file: !701, line: 111, baseType: !774, size: 8, offset: 160)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !100, line: 35, baseType: !775)
!775 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !749, file: !701, line: 131, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !701, line: 247, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !701, line: 247, size: 320, elements: !781)
!781 = !{!782, !783, !784, !785, !786}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !780, file: !701, line: 248, baseType: !101, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !780, file: !701, line: 249, baseType: !101, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !701, line: 250, baseType: !765, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !780, file: !701, line: 251, baseType: !768, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !780, file: !701, line: 252, baseType: !105, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 260, baseType: !788, size: 256, offset: 1408)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 260, size: 256, elements: !789)
!789 = !{!790, !796}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !788, file: !701, line: 261, baseType: !791, size: 256)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !701, line: 134, size: 256, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !791, file: !701, line: 135, baseType: !102, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !791, file: !701, line: 136, baseType: !795, size: 256)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !585)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !701, line: 262, baseType: !797, size: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !701, line: 262, size: 256, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !797, file: !701, line: 264, baseType: !186, size: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !797, file: !701, line: 265, baseType: !801, size: 128, offset: 128)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !802, line: 22, size: 128, elements: !803)
!802 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!803 = !{!804, !807}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !801, file: !802, line: 23, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !802, line: 23, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !801, file: !802, line: 24, baseType: !101, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !700, file: !701, line: 280, baseType: !809, size: 64, offset: 1664)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !701, line: 176, size: 192, elements: !811)
!811 = !{!812, !821, !822}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !810, file: !701, line: 177, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !701, line: 171, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!133, !699, !817, !819, !699}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !810, file: !701, line: 178, baseType: !699, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !810, file: !701, line: 179, baseType: !765, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !668, file: !669, line: 130, baseType: !699, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !668, file: !669, line: 131, baseType: !699, size: 64, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !668, file: !669, line: 132, baseType: !699, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !668, file: !669, line: 135, baseType: !102, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !668, file: !669, line: 137, baseType: !828, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !830, line: 14, size: 1088, elements: !831)
!830 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!831 = !{!832, !833, !842, !843, !844, !845, !846, !847}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !829, file: !830, line: 15, baseType: !124, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !829, file: !830, line: 17, baseType: !834, size: 320, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !835, line: 22, size: 320, elements: !836)
!835 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!836 = !{!837, !838, !839, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 23, baseType: !279, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !834, file: !835, line: 24, baseType: !197, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !834, file: !835, line: 26, baseType: !186, size: 128, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !834, file: !835, line: 28, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !829, file: !830, line: 19, baseType: !101, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !829, file: !830, line: 20, baseType: !519, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !829, file: !830, line: 23, baseType: !580, size: 128, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !829, file: !830, line: 24, baseType: !657, size: 32, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !829, file: !830, line: 29, baseType: !519, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !829, file: !830, line: 36, baseType: !848, size: 320, offset: 768)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !849, line: 15, size: 320, elements: !850)
!849 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!850 = !{!851, !852, !853, !854, !855, !856, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !848, file: !849, line: 16, baseType: !279, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !848, file: !849, line: 18, baseType: !133, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !848, file: !849, line: 19, baseType: !133, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !848, file: !849, line: 20, baseType: !133, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !848, file: !849, line: 21, baseType: !133, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !848, file: !849, line: 22, baseType: !101, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !849, line: 23, baseType: !101, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !668, file: !669, line: 138, baseType: !633, size: 64, offset: 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !668, file: !669, line: 139, baseType: !637, size: 64, offset: 1216)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !668, file: !669, line: 140, baseType: !861, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !669, line: 25, size: 64, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !862, file: !669, line: 26, baseType: !129, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !862, file: !669, line: 27, baseType: !133, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !862, file: !669, line: 28, baseType: !867, offset: 64)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, elements: !653)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !669, line: 142, baseType: !869, size: 128, offset: 1344)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !669, line: 142, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !869, file: !669, line: 143, baseType: !133, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !869, file: !669, line: 144, baseType: !506, size: 128, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !499, file: !30, line: 1013, baseType: !874, size: 256, offset: 960)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !874, file: !30, line: 971, baseType: !101, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !874, file: !30, line: 972, baseType: !12, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !874, file: !30, line: 973, baseType: !12, size: 32, offset: 96)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !874, file: !30, line: 974, baseType: !12, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !874, file: !30, line: 975, baseType: !12, size: 32, offset: 160)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !874, file: !30, line: 976, baseType: !538, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !499, file: !30, line: 1014, baseType: !883, size: 128, offset: 1216)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !884, line: 8, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!885 = !{!886, !2414}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !883, file: !884, line: 9, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !889, line: 70, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!890 = !{!891, !2411, !2412, !2413}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !888, file: !889, line: 71, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !894, line: 82, size: 1536, elements: !895)
!894 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!895 = !{!896, !897, !902, !910, !911, !926, !2378, !2380, !2393, !2394, !2395, !2396, !2397, !2403, !2404, !2405}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !893, file: !894, line: 84, baseType: !12, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !893, file: !894, line: 85, baseType: !898, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !332, line: 275, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !332, line: 275, size: 32, elements: !900)
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !899, file: !332, line: 275, baseType: !336, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !893, file: !894, line: 86, baseType: !903, size: 128, offset: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !904, line: 38, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!905 = !{!906, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !904, line: 39, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !903, file: !904, line: 39, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !893, file: !894, line: 87, baseType: !892, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !893, file: !894, line: 88, baseType: !912, size: 128, offset: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !894, line: 49, size: 128, elements: !913)
!913 = !{!914, !923}
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !894, line: 50, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !894, line: 50, size: 64, elements: !916)
!916 = !{!917, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !894, line: 51, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !894, line: 51, size: 64, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !918, file: !894, line: 52, baseType: !118, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !918, file: !894, line: 52, baseType: !118, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !915, file: !894, line: 54, baseType: !94, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !912, file: !894, line: 56, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !893, file: !894, line: 89, baseType: !927, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !929)
!929 = !{!930, !932, !933, !934, !935, !936, !937, !940, !941, !1132, !1690, !2188, !2189, !2190, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2360, !2363, !2364, !2365, !2374, !2375, !2376, !2377}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !928, file: !30, line: 642, baseType: !931, size: 16)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !100, line: 24, baseType: !155)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !928, file: !30, line: 643, baseType: !155, size: 16, offset: 16)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !928, file: !30, line: 644, baseType: !657, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !928, file: !30, line: 645, baseType: !186, size: 128, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !928, file: !30, line: 646, baseType: !674, size: 32, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !928, file: !30, line: 647, baseType: !12, size: 32, offset: 224)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !928, file: !30, line: 650, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !928, file: !30, line: 651, baseType: !938, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !928, file: !30, line: 654, baseType: !942, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !945)
!945 = !{!946, !950, !963, !969, !973, !977, !981, !985, !989, !993, !997, !998, !1004, !1008, !1046, !1077, !1087, !1093, !1097, !1101, !1105, !1109, !1113, !1119, !1123}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !944, file: !30, line: 1967, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!892, !927, !892, !12}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !944, file: !30, line: 1968, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!777, !892, !927, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !956, line: 10, size: 128, elements: !957)
!956 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!957 = !{!958, !962}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !955, file: !956, line: 11, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !102}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !955, file: !956, line: 12, baseType: !102, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !944, file: !30, line: 1969, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!133, !967, !927, !133}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !689, line: 42, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !944, file: !30, line: 1970, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!938, !927, !133, !774}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !944, file: !30, line: 1972, baseType: !974, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!133, !892, !105, !133}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !944, file: !30, line: 1974, baseType: !978, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!133, !967, !927, !892, !931, !774}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !944, file: !30, line: 1976, baseType: !982, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!133, !892, !927, !892}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !944, file: !30, line: 1977, baseType: !986, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!133, !927, !892}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !944, file: !30, line: 1978, baseType: !990, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!133, !967, !927, !892, !777}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !944, file: !30, line: 1980, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!133, !967, !927, !892, !931}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !944, file: !30, line: 1982, baseType: !986, size: 64, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !944, file: !30, line: 1983, baseType: !999, size: 64, offset: 704)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!133, !967, !927, !892, !931, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !100, line: 21, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !100, line: 18, baseType: !118)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !944, file: !30, line: 1985, baseType: !1005, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!133, !967, !927, !892, !927, !892, !12}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !944, file: !30, line: 1987, baseType: !1009, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!133, !967, !892, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1027, !1036, !1037, !1043, !1044, !1045}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1013, file: !30, line: 227, baseType: !12, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1013, file: !30, line: 228, baseType: !931, size: 16, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !30, line: 241, baseType: !1018, size: 32, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !30, line: 241, size: 32, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1018, file: !30, line: 242, baseType: !657, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1018, file: !30, line: 243, baseType: !1022, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1023, line: 16, baseType: !1024)
!1023 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1023, line: 14, size: 32, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1024, file: !1023, line: 15, baseType: !661, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !30, line: 245, baseType: !1028, size: 32, offset: 96)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !30, line: 245, size: 32, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1028, file: !30, line: 246, baseType: !674, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1028, file: !30, line: 247, baseType: !1032, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1023, line: 20, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1023, line: 18, size: 32, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1033, file: !1023, line: 19, baseType: !678, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1013, file: !30, line: 249, baseType: !538, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1013, file: !30, line: 250, baseType: !1038, size: 128, offset: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !732, line: 13, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1038, file: !732, line: 14, baseType: !731, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1038, file: !732, line: 15, baseType: !1042, size: 64, offset: 64)
!1042 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1013, file: !30, line: 251, baseType: !1038, size: 128, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1013, file: !30, line: 252, baseType: !1038, size: 128, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1013, file: !30, line: 259, baseType: !498, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !944, file: !30, line: 1988, baseType: !1047, size: 64, offset: 896)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!133, !967, !1050, !1052, !118, !12}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1054, line: 22, size: 1280, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1053, file: !1054, line: 23, baseType: !118, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1053, file: !1054, line: 24, baseType: !931, size: 16, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1053, file: !1054, line: 25, baseType: !12, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1053, file: !1054, line: 26, baseType: !739, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1053, file: !1054, line: 27, baseType: !94, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1053, file: !1054, line: 28, baseType: !94, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1053, file: !1054, line: 41, baseType: !94, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1053, file: !1054, line: 42, baseType: !1002, size: 32, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1053, file: !1054, line: 43, baseType: !1002, size: 32, offset: 352)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1053, file: !1054, line: 44, baseType: !657, size: 32, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1053, file: !1054, line: 45, baseType: !674, size: 32, offset: 416)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1053, file: !1054, line: 46, baseType: !538, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1053, file: !1054, line: 47, baseType: !1038, size: 128, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1053, file: !1054, line: 48, baseType: !1038, size: 128, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1053, file: !1054, line: 49, baseType: !1038, size: 128, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1053, file: !1054, line: 50, baseType: !1038, size: 128, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1053, file: !1054, line: 51, baseType: !94, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1053, file: !1054, line: 52, baseType: !94, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1053, file: !1054, line: 53, baseType: !118, size: 32, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1053, file: !1054, line: 54, baseType: !118, size: 32, offset: 1184)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1053, file: !1054, line: 55, baseType: !94, size: 64, offset: 1216)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !944, file: !30, line: 1990, baseType: !1078, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !892, !105, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !100, line: 66, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !329, line: 73, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !329, line: 15, baseType: !1042)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 61, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !329, line: 72, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !329, line: 16, baseType: !101)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !944, file: !30, line: 1991, baseType: !1088, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!133, !927, !1091, !94, !94}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !944, file: !30, line: 1993, baseType: !1094, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!133, !927, !133}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !944, file: !30, line: 1994, baseType: !1098, size: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!133, !927, !892, !498, !12, !931}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !944, file: !30, line: 1997, baseType: !1102, size: 64, offset: 1216)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!133, !967, !927, !498, !931}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !944, file: !30, line: 1999, baseType: !1106, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!938, !967, !892, !133}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !944, file: !30, line: 2001, baseType: !1110, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!133, !967, !892, !938, !133}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !944, file: !30, line: 2003, baseType: !1114, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!133, !967, !892, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !944, file: !30, line: 2005, baseType: !1120, size: 64, offset: 1472)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!133, !892, !1117}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !944, file: !30, line: 2006, baseType: !1124, size: 64, offset: 1536)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1127, !927}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1128, file: !30, line: 3193, baseType: !611, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1128, file: !30, line: 3194, baseType: !118, size: 32, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !928, file: !30, line: 655, baseType: !1133, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1182, !1319, !1359, !1442, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1459, !1463, !1464, !1467, !1470, !1473, !1476, !1477, !1478, !1519, !1546, !1547, !1548, !1549, !1550, !1551, !1554, !1558, !1567, !1568, !1569, !1570, !1629, !1644, !1645, !1646, !1647, !1650, !1654, !1655, !1656, !1671, !1672, !1673, !1684, !1685, !1686, !1687, !1688, !1689}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1134, file: !30, line: 1191, baseType: !186, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1134, file: !30, line: 1192, baseType: !1002, size: 32, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1134, file: !30, line: 1193, baseType: !298, size: 8, offset: 160)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1134, file: !30, line: 1194, baseType: !101, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1134, file: !30, line: 1195, baseType: !538, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1134, file: !30, line: 1196, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1153, !1157, !1161, !1165, !1169, !1170, !1171, !1174, !1175, !1176, !1178, !1179, !1180, !1181}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1143, file: !30, line: 2367, baseType: !777, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1143, file: !30, line: 2368, baseType: !133, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1143, file: !30, line: 2376, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!133, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !889, line: 21, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1143, file: !30, line: 2377, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1143, file: !30, line: 2378, baseType: !1158, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!892, !1142, !133, !777, !102}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1143, file: !30, line: 2380, baseType: !1162, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1133}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1143, file: !30, line: 2381, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1168, line: 103, flags: DIFlagFwdDecl)
!1168 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1143, file: !30, line: 2382, baseType: !1142, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1143, file: !30, line: 2383, baseType: !576, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1143, file: !30, line: 2385, baseType: !1172, offset: 576)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1173, line: 206, elements: !491)
!1173 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1143, file: !30, line: 2386, baseType: !1172, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1143, file: !30, line: 2387, baseType: !1172, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1143, file: !30, line: 2388, baseType: !1177, offset: 576)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, elements: !564)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1143, file: !30, line: 2390, baseType: !1172, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1143, file: !30, line: 2391, baseType: !1172, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1143, file: !30, line: 2392, baseType: !1172, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1143, file: !30, line: 2393, baseType: !1172, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1134, file: !30, line: 1197, baseType: !1183, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !1186)
!1186 = !{!1187, !1191, !1195, !1196, !1200, !1206, !1210, !1211, !1212, !1216, !1220, !1224, !1225, !1226, !1232, !1237, !1238, !1244, !1245, !1246, !1247, !1251, !1255, !1302, !1317, !1318}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1185, file: !30, line: 2058, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!927, !1133}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1185, file: !30, line: 2059, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !927}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1185, file: !30, line: 2060, baseType: !1192, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1185, file: !30, line: 2062, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !927, !133}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1185, file: !30, line: 2063, baseType: !1201, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!133, !927, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1185, file: !30, line: 2064, baseType: !1207, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!133, !927}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1185, file: !30, line: 2065, baseType: !1192, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1185, file: !30, line: 2066, baseType: !1162, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1185, file: !30, line: 2067, baseType: !1213, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!133, !1133, !133}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1185, file: !30, line: 2068, baseType: !1217, size: 64, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!133, !1133, !29}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1185, file: !30, line: 2069, baseType: !1221, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!133, !1133}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1185, file: !30, line: 2070, baseType: !1217, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1185, file: !30, line: 2071, baseType: !1221, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1185, file: !30, line: 2072, baseType: !1227, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!133, !892, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1185, file: !30, line: 2073, baseType: !1233, size: 64, offset: 896)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!133, !1133, !1236, !105}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1185, file: !30, line: 2074, baseType: !1162, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1185, file: !30, line: 2076, baseType: !1239, size: 64, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!133, !1242, !892}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !109, line: 66, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1185, file: !30, line: 2077, baseType: !1239, size: 64, offset: 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1185, file: !30, line: 2078, baseType: !1239, size: 64, offset: 1152)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1185, file: !30, line: 2079, baseType: !1239, size: 64, offset: 1216)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1185, file: !30, line: 2081, baseType: !1248, size: 64, offset: 1280)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1081, !1133, !133, !105, !1084, !538}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1185, file: !30, line: 2082, baseType: !1252, size: 64, offset: 1344)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1081, !1133, !133, !777, !1084, !538}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1185, file: !30, line: 2083, baseType: !1256, size: 64, offset: 1408)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1259, !927}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1287, !1288, !1289}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1261, file: !35, line: 297, baseType: !580, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1261, file: !35, line: 298, baseType: !186, size: 128, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1261, file: !35, line: 299, baseType: !186, size: 128, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1261, file: !35, line: 300, baseType: !186, size: 128, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1261, file: !35, line: 301, baseType: !526, size: 256, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1261, file: !35, line: 302, baseType: !480, size: 32, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1261, file: !35, line: 303, baseType: !129, size: 32, offset: 800)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1261, file: !35, line: 304, baseType: !1133, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1261, file: !35, line: 305, baseType: !1272, size: 64, offset: 896)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !1273)
!1273 = !{!1274, !1286}
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !35, line: 69, baseType: !1275, size: 32)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1272, file: !35, line: 69, size: 32, elements: !1276)
!1276 = !{!1277, !1278, !1279}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1275, file: !35, line: 70, baseType: !657, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1275, file: !35, line: 71, baseType: !674, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1275, file: !35, line: 72, baseType: !1280, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1281, line: 24, baseType: !1282)
!1281 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 22, size: 32, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1282, file: !1281, line: 23, baseType: !1285, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1281, line: 20, baseType: !662)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1272, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1261, file: !35, line: 306, baseType: !538, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1261, file: !35, line: 307, baseType: !101, size: 64, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1261, file: !35, line: 308, baseType: !1290, size: 576, offset: 1088)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !1291)
!1291 = !{!1292, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1290, file: !35, line: 206, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !199)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1290, file: !35, line: 207, baseType: !1293, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1290, file: !35, line: 208, baseType: !1293, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1290, file: !35, line: 209, baseType: !1293, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1290, file: !35, line: 210, baseType: !1293, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1290, file: !35, line: 211, baseType: !1293, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1290, file: !35, line: 212, baseType: !1293, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1290, file: !35, line: 213, baseType: !731, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1290, file: !35, line: 214, baseType: !731, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1185, file: !30, line: 2085, baseType: !1303, size: 64, offset: 1472)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1042, !1133, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1308, line: 15, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1307, file: !1308, line: 16, baseType: !616, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1307, file: !1308, line: 19, baseType: !133, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1307, file: !1308, line: 26, baseType: !101, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1307, file: !1308, line: 33, baseType: !101, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1307, file: !1308, line: 36, baseType: !1315, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !49, line: 33, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1185, file: !30, line: 2087, baseType: !1303, size: 64, offset: 1536)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1185, file: !30, line: 2089, baseType: !1162, size: 64, offset: 1600)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1134, file: !30, line: 1198, baseType: !1320, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !1323)
!1323 = !{!1324, !1328, !1332, !1336, !1337, !1338, !1339, !1340, !1345, !1350, !1354}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1322, file: !35, line: 325, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!133, !1260}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1322, file: !35, line: 326, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1260, !1133, !133}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1322, file: !35, line: 327, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1260}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1322, file: !35, line: 328, baseType: !1325, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1322, file: !35, line: 329, baseType: !1325, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1322, file: !35, line: 330, baseType: !1325, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1322, file: !35, line: 331, baseType: !1213, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1322, file: !35, line: 334, baseType: !1341, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!1344, !927}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1322, file: !35, line: 335, baseType: !1346, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!133, !927, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1322, file: !35, line: 337, baseType: !1351, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!133, !927, !1344}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1322, file: !35, line: 339, baseType: !1355, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!133, !1133, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1134, file: !30, line: 1199, baseType: !1360, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !1363)
!1363 = !{!1364, !1368, !1369, !1373, !1374, !1375, !1390, !1413, !1417, !1418, !1441}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1362, file: !35, line: 431, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!133, !1133, !133, !133, !1050}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1362, file: !35, line: 432, baseType: !1213, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1362, file: !35, line: 433, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!133, !1133, !12}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1362, file: !35, line: 434, baseType: !1370, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1362, file: !35, line: 435, baseType: !1213, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1362, file: !35, line: 436, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!133, !1133, !133, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1380, file: !35, line: 418, baseType: !133, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1380, file: !35, line: 419, baseType: !12, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1380, file: !35, line: 420, baseType: !12, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1380, file: !35, line: 422, baseType: !12, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1380, file: !35, line: 423, baseType: !12, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1380, file: !35, line: 424, baseType: !12, size: 32, offset: 160)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1380, file: !35, line: 425, baseType: !12, size: 32, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1380, file: !35, line: 426, baseType: !12, size: 32, offset: 224)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1362, file: !35, line: 437, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!133, !1133, !1272, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1395, file: !35, line: 346, baseType: !133, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1395, file: !35, line: 347, baseType: !94, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1395, file: !35, line: 348, baseType: !94, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1395, file: !35, line: 349, baseType: !94, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1395, file: !35, line: 350, baseType: !94, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1395, file: !35, line: 351, baseType: !94, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1395, file: !35, line: 352, baseType: !94, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1395, file: !35, line: 353, baseType: !197, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1395, file: !35, line: 355, baseType: !197, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1395, file: !35, line: 356, baseType: !133, size: 32, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1395, file: !35, line: 357, baseType: !133, size: 32, offset: 608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1395, file: !35, line: 358, baseType: !94, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1395, file: !35, line: 359, baseType: !94, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1395, file: !35, line: 360, baseType: !94, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1395, file: !35, line: 361, baseType: !197, size: 64, offset: 832)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1395, file: !35, line: 362, baseType: !133, size: 32, offset: 896)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1362, file: !35, line: 438, baseType: !1414, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!133, !1133, !1358, !1394}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1362, file: !35, line: 440, baseType: !1391, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1362, file: !35, line: 441, baseType: !1419, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!133, !1133, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1423, file: !35, line: 412, baseType: !12, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1423, file: !35, line: 413, baseType: !1427, size: 1344, offset: 64)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 1344, elements: !564)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1440}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1428, file: !35, line: 398, baseType: !12, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1428, file: !35, line: 399, baseType: !12, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1428, file: !35, line: 401, baseType: !12, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1428, file: !35, line: 402, baseType: !12, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1428, file: !35, line: 403, baseType: !12, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1428, file: !35, line: 404, baseType: !12, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1428, file: !35, line: 405, baseType: !12, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1428, file: !35, line: 406, baseType: !98, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1428, file: !35, line: 407, baseType: !1439, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !100, line: 132, baseType: !94)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1428, file: !35, line: 408, baseType: !1439, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1362, file: !35, line: 442, baseType: !1370, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1134, file: !30, line: 1200, baseType: !1443, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1134, file: !30, line: 1201, baseType: !101, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1134, file: !30, line: 1202, baseType: !101, size: 64, offset: 704)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1134, file: !30, line: 1203, baseType: !101, size: 64, offset: 768)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1134, file: !30, line: 1204, baseType: !892, size: 64, offset: 832)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1134, file: !30, line: 1205, baseType: !715, size: 320, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1134, file: !30, line: 1206, baseType: !133, size: 32, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1134, file: !30, line: 1207, baseType: !129, size: 32, offset: 1248)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1134, file: !30, line: 1209, baseType: !102, size: 64, offset: 1280)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1134, file: !30, line: 1211, baseType: !1455, size: 64, offset: 1344)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1134, file: !30, line: 1223, baseType: !1460, size: 64, offset: 1408)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !904, line: 34, size: 64, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1460, file: !904, line: 35, baseType: !907, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1134, file: !30, line: 1224, baseType: !186, size: 128, offset: 1472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1134, file: !30, line: 1225, baseType: !1465, size: 64, offset: 1600)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !30, line: 1225, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1134, file: !30, line: 1226, baseType: !1468, size: 64, offset: 1664)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !30, line: 1226, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1134, file: !30, line: 1227, baseType: !1471, size: 64, offset: 1728)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1134, file: !30, line: 1228, baseType: !1474, size: 64, offset: 1792)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1134, file: !30, line: 1229, baseType: !580, size: 128, offset: 1856)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1134, file: !30, line: 1230, baseType: !12, size: 32, offset: 1984)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1134, file: !30, line: 1231, baseType: !1479, size: 2496, offset: 2048)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1485, !1517}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !35, line: 522, baseType: !12, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1479, file: !35, line: 523, baseType: !715, size: 320, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1479, file: !35, line: 524, baseType: !1484, size: 192, offset: 384)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 192, elements: !564)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1479, file: !35, line: 525, baseType: !1486, size: 1728, offset: 576)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, size: 1728, elements: !564)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !1488)
!1488 = !{!1489, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1487, file: !35, line: 223, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !1492)
!1492 = !{!1493, !1494, !1507, !1508}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1491, file: !35, line: 446, baseType: !133, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1491, file: !35, line: 447, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1497, file: !35, line: 313, baseType: !1213, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1497, file: !35, line: 314, baseType: !1213, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1497, file: !35, line: 315, baseType: !1213, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1497, file: !35, line: 316, baseType: !1213, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1497, file: !35, line: 317, baseType: !1325, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1497, file: !35, line: 318, baseType: !1325, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1497, file: !35, line: 319, baseType: !1325, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1497, file: !35, line: 320, baseType: !1355, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1491, file: !35, line: 448, baseType: !1166, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1491, file: !35, line: 449, baseType: !1490, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1487, file: !35, line: 224, baseType: !133, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1487, file: !35, line: 226, baseType: !186, size: 128, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1487, file: !35, line: 227, baseType: !101, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1487, file: !35, line: 228, baseType: !12, size: 32, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1487, file: !35, line: 229, baseType: !12, size: 32, offset: 352)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1487, file: !35, line: 230, baseType: !1293, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1487, file: !35, line: 231, baseType: !1293, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1487, file: !35, line: 232, baseType: !102, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1479, file: !35, line: 526, baseType: !1518, size: 192, offset: 2304)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1495, size: 192, elements: !564)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1134, file: !30, line: 1233, baseType: !1520, size: 2368, offset: 4544)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1520, file: !30, line: 1185, baseType: !155, size: 16)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1520, file: !30, line: 1186, baseType: !155, size: 16, offset: 16)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1520, file: !30, line: 1187, baseType: !1525, size: 2304, offset: 64)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1526, size: 2304, elements: !564)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1527, line: 12, size: 768, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1528 = !{!1529, !1537, !1539, !1544, !1545}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1526, file: !1527, line: 13, baseType: !1530, size: 384)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1531, line: 17, size: 384, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1532 = !{!1533, !1534, !1535, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1530, file: !1531, line: 18, baseType: !133, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1530, file: !1531, line: 19, baseType: !133, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1530, file: !1531, line: 20, baseType: !589, size: 192, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1530, file: !1531, line: 22, baseType: !506, size: 128, align: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1526, file: !1527, line: 14, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1526, file: !1527, line: 15, baseType: !1540, size: 64, offset: 448)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1541, line: 16, size: 64, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1540, file: !1541, line: 17, baseType: !107, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1526, file: !1527, line: 16, baseType: !589, size: 192, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1526, file: !1527, line: 17, baseType: !129, size: 32, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1134, file: !30, line: 1240, baseType: !102, size: 64, offset: 6912)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1134, file: !30, line: 1243, baseType: !118, size: 32, offset: 6976)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1134, file: !30, line: 1245, baseType: !731, size: 64, offset: 7040)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1134, file: !30, line: 1246, baseType: !731, size: 64, offset: 7104)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1134, file: !30, line: 1248, baseType: !119, size: 32, offset: 7168)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1134, file: !30, line: 1249, baseType: !1552, size: 64, offset: 7232)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1134, file: !30, line: 1252, baseType: !1555, size: 256, offset: 7296)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1556)
!1556 = !{!1557}
!1557 = !DISubrange(count: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1134, file: !30, line: 1253, baseType: !1559, size: 128, offset: 7552)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1560, line: 21, baseType: !1561)
!1560 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1560, line: 19, size: 128, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1561, file: !1560, line: 20, baseType: !1564, size: 128)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 16)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1134, file: !30, line: 1255, baseType: !12, size: 32, offset: 7680)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1134, file: !30, line: 1261, baseType: !526, size: 256, offset: 7744)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1134, file: !30, line: 1267, baseType: !777, size: 64, offset: 8000)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1134, file: !30, line: 1269, baseType: !1571, size: 64, offset: 8064)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !894, line: 128, size: 1024, align: 512, elements: !1574)
!1574 = !{!1575, !1579, !1580, !1587, !1593, !1597, !1601, !1605, !1606, !1610, !1614, !1619, !1623}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1573, file: !894, line: 129, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!133, !892, !12}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1573, file: !894, line: 130, baseType: !1576, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1573, file: !894, line: 131, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!133, !1584, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1573, file: !894, line: 132, baseType: !1588, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!133, !1584, !12, !777, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1573, file: !894, line: 134, baseType: !1594, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!133, !1584}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1573, file: !894, line: 135, baseType: !1598, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!133, !892}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1573, file: !894, line: 136, baseType: !1602, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !892}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1573, file: !894, line: 137, baseType: !1602, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1573, file: !894, line: 138, baseType: !1607, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !892, !927}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1573, file: !894, line: 139, baseType: !1611, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!105, !892, !105, !133}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1573, file: !894, line: 140, baseType: !1615, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!887, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1573, file: !894, line: 141, baseType: !1620, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!133, !1050, !774}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1573, file: !894, line: 142, baseType: !1624, size: 64, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!892, !892, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1134, file: !30, line: 1271, baseType: !1630, size: 448, offset: 8128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1308, line: 63, size: 448, elements: !1631)
!1631 = !{!1632, !1637, !1638, !1639, !1640, !1641, !1642}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1630, file: !1308, line: 64, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!101, !1636, !1306}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1630, file: !1308, line: 66, baseType: !1633, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1630, file: !1308, line: 69, baseType: !1042, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1630, file: !1308, line: 70, baseType: !133, size: 32, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1308, line: 71, baseType: !12, size: 32, offset: 224)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1630, file: !1308, line: 74, baseType: !186, size: 128, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1630, file: !1308, line: 85, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1134, file: !30, line: 1274, baseType: !519, size: 64, offset: 8576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1134, file: !30, line: 1280, baseType: !519, size: 64, offset: 8640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1134, file: !30, line: 1283, baseType: !133, size: 32, offset: 8704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1134, file: !30, line: 1286, baseType: !1648, size: 32, offset: 8736)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1649, line: 8, baseType: !118)
!1649 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1134, file: !30, line: 1289, baseType: !1651, size: 64, offset: 8768)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1653, line: 18, flags: DIFlagFwdDecl)
!1653 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1134, file: !30, line: 1290, baseType: !576, size: 64, offset: 8832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1134, file: !30, line: 1297, baseType: !633, size: 64, offset: 8896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1134, file: !30, line: 1304, baseType: !1657, size: 64, offset: 8960)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1658, line: 49, size: 64, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1657, file: !1658, line: 50, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1658, line: 41, size: 512, align: 512, elements: !1663)
!1663 = !{!1664, !1665, !1670}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1662, file: !1658, line: 43, baseType: !480, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1662, file: !1658, line: 45, baseType: !1666, size: 192, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1658, line: 29, size: 192, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1666, file: !1658, line: 30, baseType: !186, size: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1666, file: !1658, line: 32, baseType: !1042, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1662, file: !1658, line: 46, baseType: !1042, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1134, file: !30, line: 1305, baseType: !1657, size: 64, offset: 9024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1134, file: !30, line: 1306, baseType: !506, size: 128, align: 64, offset: 9088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1134, file: !30, line: 1307, baseType: !1674, size: 256, offset: 9216)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1653, line: 98, size: 256, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1674, file: !1653, line: 99, baseType: !519, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1674, file: !1653, line: 100, baseType: !186, size: 128, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1674, file: !1653, line: 101, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1653, line: 21, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1134, file: !30, line: 1309, baseType: !526, size: 256, offset: 9472)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1134, file: !30, line: 1314, baseType: !133, size: 32, offset: 9728)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1134, file: !30, line: 1317, baseType: !480, size: 32, align: 512, offset: 10240)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1134, file: !30, line: 1318, baseType: !186, size: 128, offset: 10304)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1134, file: !30, line: 1320, baseType: !480, size: 32, offset: 10432)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1134, file: !30, line: 1321, baseType: !186, size: 128, offset: 10496)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !928, file: !30, line: 656, baseType: !1691, size: 64, offset: 512)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !2182, !2183, !2184, !2185, !2186, !2187}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1692, file: !30, line: 473, baseType: !927, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1692, file: !30, line: 474, baseType: !611, size: 128, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1692, file: !30, line: 475, baseType: !715, size: 320, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1692, file: !30, line: 476, baseType: !616, size: 32, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1692, file: !30, line: 477, baseType: !129, size: 32, offset: 544)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1692, file: !30, line: 482, baseType: !345, size: 128, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1692, file: !30, line: 483, baseType: !101, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1692, file: !30, line: 484, baseType: !101, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1692, file: !30, line: 485, baseType: !1703, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !1706)
!1706 = !{!1707, !2007, !2077, !2081, !2085, !2091, !2097, !2101, !2106, !2110, !2114, !2118, !2146, !2150, !2154, !2158, !2163, !2167, !2174, !2178}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1705, file: !30, line: 405, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!133, !1711, !1204}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !49, line: 74, size: 512, align: 128, elements: !1713)
!1713 = !{!1714, !1715, !2001, !2006}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !49, line: 75, baseType: !101, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !49, line: 83, baseType: !1716, size: 320, offset: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !49, line: 83, size: 320, elements: !1717)
!1717 = !{!1718, !1739, !1753, !1757, !2000}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !49, line: 84, baseType: !1719, size: 320)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !49, line: 84, size: 320, elements: !1720)
!1720 = !{!1721, !1732, !1733, !1738}
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !49, line: 90, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !49, line: 90, size: 128, elements: !1723)
!1723 = !{!1724, !1725, !1730, !1731}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1722, file: !49, line: 91, baseType: !186, size: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !49, line: 94, baseType: !1726, size: 128)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1722, file: !49, line: 94, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1726, file: !49, line: 96, baseType: !102, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1726, file: !49, line: 98, baseType: !12, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1722, file: !49, line: 102, baseType: !186, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1722, file: !49, line: 103, baseType: !186, size: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1719, file: !49, line: 106, baseType: !1691, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !49, line: 107, baseType: !1734, size: 64, offset: 192)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !49, line: 107, size: 64, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1734, file: !49, line: 108, baseType: !101, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1734, file: !49, line: 109, baseType: !101, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1719, file: !49, line: 117, baseType: !101, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !49, line: 119, baseType: !1740, size: 320)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !49, line: 119, size: 320, elements: !1741)
!1741 = !{!1742, !1743, !1746, !1747, !1748}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1740, file: !49, line: 124, baseType: !101, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1740, file: !49, line: 125, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !49, line: 125, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1740, file: !49, line: 126, baseType: !101, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1740, file: !49, line: 127, baseType: !101, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !49, line: 128, baseType: !1749, size: 64, offset: 256)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1740, file: !49, line: 128, size: 64, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1749, file: !49, line: 133, baseType: !101, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1749, file: !49, line: 138, baseType: !519, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !49, line: 141, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !49, line: 141, size: 64, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1754, file: !49, line: 142, baseType: !101, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !49, line: 144, baseType: !1758, size: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !49, line: 144, size: 128, elements: !1759)
!1759 = !{!1760, !1999}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1758, file: !49, line: 146, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !41, line: 126, size: 1216, elements: !1763)
!1763 = !{!1764, !1773, !1794, !1805, !1806, !1807, !1808, !1981, !1982, !1983}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1762, file: !41, line: 127, baseType: !1765, size: 384)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !41, line: 21, size: 384, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1765, file: !41, line: 22, baseType: !101, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1765, file: !41, line: 23, baseType: !104, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1765, file: !41, line: 24, baseType: !104, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1765, file: !41, line: 25, baseType: !101, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1765, file: !41, line: 26, baseType: !101, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1765, file: !41, line: 27, baseType: !101, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1762, file: !41, line: 128, baseType: !1774, size: 128, offset: 384)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1775, line: 105, size: 128, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1774, file: !1775, line: 110, baseType: !101, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1774, file: !1775, line: 118, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1775, line: 95, size: 448, elements: !1781)
!1781 = !{!1782, !1783, !1789, !1790, !1791, !1792, !1793}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1780, file: !1775, line: 96, baseType: !519, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1780, file: !1775, line: 97, baseType: !1784, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1775, line: 60, baseType: !1786)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1780, file: !1775, line: 98, baseType: !1784, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1780, file: !1775, line: 99, baseType: !774, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1780, file: !1775, line: 100, baseType: !774, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1780, file: !1775, line: 101, baseType: !506, size: 128, align: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1780, file: !1775, line: 102, baseType: !1788, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1762, file: !41, line: 129, baseType: !1795, size: 256, offset: 512)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1796, line: 26, size: 256, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1795, file: !1796, line: 27, baseType: !12, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1795, file: !1796, line: 28, baseType: !1800, size: 192, offset: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1801, line: 43, size: 192, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1800, file: !1801, line: 44, baseType: !279, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1800, file: !1801, line: 45, baseType: !186, size: 128, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1762, file: !41, line: 130, baseType: !40, size: 32, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !41, line: 131, baseType: !12, size: 32, offset: 800)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1762, file: !41, line: 132, baseType: !101, size: 64, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1762, file: !41, line: 133, baseType: !1809, size: 64, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !41, line: 77, size: 192, elements: !1812)
!1812 = !{!1813, !1817, !1977}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1811, file: !41, line: 83, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1711}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1811, file: !41, line: 89, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !49, line: 1184, baseType: !12)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1824, line: 512, size: 896, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1825 = !{!1826, !1944, !1945, !1952, !1959, !1969, !1970, !1971, !1973, !1975}
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1824, line: 513, baseType: !1827, size: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !1824, line: 513, size: 320, elements: !1828)
!1828 = !{!1829, !1940, !1941, !1942, !1943}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1827, file: !1824, line: 514, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !49, line: 625, size: 1344, elements: !1832)
!1832 = !{!1833, !1842, !1843, !1851, !1858, !1859, !1864, !1865, !1870, !1871, !1874, !1933, !1934, !1935, !1936, !1937, !1938}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !49, line: 628, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !49, line: 628, size: 128, elements: !1835)
!1835 = !{!1836, !1841}
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !49, line: 629, baseType: !1837, size: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !49, line: 629, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1837, file: !49, line: 631, baseType: !101, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1837, file: !49, line: 632, baseType: !101, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1834, file: !49, line: 635, baseType: !506, size: 128, align: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1831, file: !49, line: 639, baseType: !462, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1831, file: !49, line: 640, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1845, line: 297, baseType: !1846)
!1845 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1845, line: 297, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1846, file: !1845, line: 297, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1850, line: 19, baseType: !101)
!1850 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !49, line: 646, baseType: !1852, size: 64, offset: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !49, line: 646, size: 64, elements: !1853)
!1853 = !{!1854, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1852, file: !49, line: 647, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !49, line: 542, baseType: !101)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1852, file: !49, line: 648, baseType: !1856, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1831, file: !49, line: 666, baseType: !133, size: 32, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1831, file: !49, line: 667, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !49, line: 579, size: 320, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !49, line: 580, baseType: !715, size: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1831, file: !49, line: 670, baseType: !774, size: 8, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1831, file: !49, line: 681, baseType: !1866, size: 256, offset: 512)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !49, line: 678, size: 256, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1866, file: !49, line: 679, baseType: !176, size: 192, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1866, file: !49, line: 680, baseType: !101, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1831, file: !49, line: 689, baseType: !186, size: 128, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1831, file: !49, line: 691, baseType: !1872, size: 64, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !49, line: 691, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1831, file: !49, line: 694, baseType: !1875, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1824, line: 563, size: 1024, elements: !1878)
!1878 = !{!1879, !1883, !1884, !1888, !1892, !1896, !1897, !1901, !1905, !1909, !1910, !1911, !1915, !1919, !1925, !1929}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1877, file: !1824, line: 564, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1830}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1877, file: !1824, line: 569, baseType: !1880, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1877, file: !1824, line: 571, baseType: !1885, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!133, !1830, !101}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1877, file: !1824, line: 572, baseType: !1889, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!133, !1830}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1877, file: !1824, line: 578, baseType: !1893, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!133, !1830, !101, !101, !101}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1877, file: !1824, line: 580, baseType: !1818, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1877, file: !1824, line: 581, baseType: !1898, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1821, !1822, !12}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1877, file: !1824, line: 582, baseType: !1902, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1821, !1822, !101, !101}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1877, file: !1824, line: 584, baseType: !1906, size: 64, offset: 512)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!101, !1830}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1877, file: !1824, line: 588, baseType: !1818, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1877, file: !1824, line: 591, baseType: !1818, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1877, file: !1824, line: 597, baseType: !1912, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!133, !1830, !101, !102, !133, !133}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1877, file: !1824, line: 603, baseType: !1916, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!777, !1830}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1877, file: !1824, line: 613, baseType: !1920, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!133, !1830, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !109, line: 54, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1877, file: !1824, line: 625, baseType: !1926, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1923, !1830, !101}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1877, file: !1824, line: 633, baseType: !1930, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1711, !1830, !101}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1831, file: !49, line: 697, baseType: !101, size: 64, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1831, file: !49, line: 699, baseType: !498, size: 64, offset: 1088)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1831, file: !49, line: 700, baseType: !102, size: 64, offset: 1152)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1831, file: !49, line: 711, baseType: !519, size: 64, offset: 1216)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1831, file: !49, line: 717, baseType: !1923, size: 64, offset: 1280)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1831, file: !49, line: 722, baseType: !1939, offset: 1344)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !49, line: 570, elements: !491)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1827, file: !1824, line: 515, baseType: !616, size: 32, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1827, file: !1824, line: 516, baseType: !101, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1827, file: !1824, line: 517, baseType: !101, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1827, file: !1824, line: 518, baseType: !101, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !1824, line: 520, baseType: !48, size: 32, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1823, file: !1824, line: 522, baseType: !1946, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1850, line: 22, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1850, line: 22, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1948, file: !1850, line: 22, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1850, line: 15, baseType: !101)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1823, file: !1824, line: 524, baseType: !1953, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1845, line: 372, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1845, line: 372, size: 64, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1955, file: !1845, line: 372, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1850, line: 16, baseType: !101)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1824, line: 527, baseType: !1960, size: 64, offset: 512)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !1824, line: 527, size: 64, elements: !1961)
!1961 = !{!1962, !1968}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1960, file: !1824, line: 528, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1850, line: 21, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1850, line: 21, size: 64, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1964, file: !1850, line: 21, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1850, line: 14, baseType: !101)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1960, file: !1824, line: 529, baseType: !1947, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1823, file: !1824, line: 534, baseType: !1711, size: 64, offset: 576)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1823, file: !1824, line: 535, baseType: !1711, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1823, file: !1824, line: 541, baseType: !1972, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1823, file: !1824, line: 545, baseType: !1974, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1823, file: !1824, line: 549, baseType: !1976, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1845, line: 520, baseType: !1711)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1811, file: !41, line: 100, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!133, !1761, !101, !101, !133}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1762, file: !41, line: 134, baseType: !102, size: 64, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1762, file: !41, line: 135, baseType: !133, size: 32, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !41, line: 136, baseType: !1984, size: 128, offset: 1088)
!1984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !41, line: 136, size: 128, elements: !1985)
!1985 = !{!1986, !1992}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1984, file: !41, line: 137, baseType: !1987, size: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1988, line: 6, size: 128, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1987, file: !1988, line: 7, baseType: !94, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1987, file: !1988, line: 8, baseType: !94, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !41, line: 138, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1984, file: !41, line: 138, elements: !1994)
!1994 = !{!1995, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1993, file: !41, line: 138, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !41, line: 138, elements: !491)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1993, file: !41, line: 138, baseType: !1998)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1987, elements: !653)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1758, file: !49, line: 147, baseType: !102, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1716, file: !49, line: 161, baseType: !506, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !49, line: 164, baseType: !2002, size: 32, offset: 384)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !49, line: 164, size: 32, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2002, file: !49, line: 169, baseType: !129, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2002, file: !49, line: 177, baseType: !12, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1712, file: !49, line: 181, baseType: !129, size: 32, offset: 416)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1705, file: !30, line: 406, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!133, !498, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !49, line: 293, size: 1536, elements: !2013)
!2013 = !{!2014, !2044, !2058}
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !49, line: 295, baseType: !2015, size: 512)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !49, line: 295, size: 512, elements: !2016)
!2016 = !{!2017, !2043}
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !49, line: 296, baseType: !2018, size: 448)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !49, line: 296, size: 448, elements: !2019)
!2019 = !{!2020, !2021, !2030, !2031, !2032, !2041, !2042}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !49, line: 298, baseType: !101, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !49, line: 299, baseType: !2022, size: 128, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2018, file: !49, line: 299, size: 128, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2022, file: !49, line: 300, baseType: !186, size: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !49, line: 302, baseType: !2026, size: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !49, line: 302, size: 128, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2026, file: !49, line: 303, baseType: !102, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2026, file: !49, line: 305, baseType: !12, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2018, file: !49, line: 310, baseType: !1691, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2018, file: !49, line: 311, baseType: !101, size: 64, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !49, line: 312, baseType: !2033, size: 64, offset: 320)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2018, file: !49, line: 312, size: 64, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2033, file: !49, line: 313, baseType: !102, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2033, file: !49, line: 314, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !49, line: 257, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 255, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2038, file: !49, line: 256, baseType: !101, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2018, file: !49, line: 316, baseType: !129, size: 32, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2018, file: !49, line: 317, baseType: !129, size: 32, offset: 416)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2015, file: !49, line: 323, baseType: !1712, size: 512, align: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !49, line: 325, baseType: !2045, size: 512, offset: 512)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !49, line: 325, size: 512, elements: !2046)
!2046 = !{!2047, !2057}
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !49, line: 326, baseType: !2048, size: 320)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !49, line: 326, size: 320, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2048, file: !49, line: 327, baseType: !101, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2048, file: !49, line: 328, baseType: !101, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2048, file: !49, line: 329, baseType: !101, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2048, file: !49, line: 331, baseType: !129, size: 32, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2048, file: !49, line: 332, baseType: !129, size: 32, offset: 224)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2048, file: !49, line: 333, baseType: !129, size: 32, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2048, file: !49, line: 335, baseType: !12, size: 32, offset: 288)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2045, file: !49, line: 339, baseType: !1712, size: 512, align: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !49, line: 341, baseType: !2059, size: 512, offset: 1024)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !49, line: 341, size: 512, elements: !2060)
!2060 = !{!2061, !2070, !2076}
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !49, line: 342, baseType: !2062, size: 384)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2059, file: !49, line: 342, size: 384, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2062, file: !49, line: 343, baseType: !101, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2062, file: !49, line: 344, baseType: !101, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2062, file: !49, line: 346, baseType: !102, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2062, file: !49, line: 347, baseType: !102, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2062, file: !49, line: 348, baseType: !102, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2062, file: !49, line: 349, baseType: !102, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !49, line: 352, baseType: !2071, size: 256)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2059, file: !49, line: 352, size: 256, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2071, file: !49, line: 353, baseType: !101, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2071, file: !49, line: 354, baseType: !101, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2071, file: !49, line: 356, baseType: !186, size: 128, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2059, file: !49, line: 359, baseType: !1712, size: 512, align: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1705, file: !30, line: 409, baseType: !2078, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!133, !1691, !1204}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1705, file: !30, line: 412, baseType: !2082, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!774, !1691, !2011}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1705, file: !30, line: 414, baseType: !2086, size: 64, offset: 256)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1705, file: !30, line: 416, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!133, !498, !1691, !538, !12, !2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1705, file: !30, line: 419, baseType: !2098, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!133, !498, !1691, !538, !12, !12, !1711, !102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1705, file: !30, line: 424, baseType: !2102, size: 64, offset: 448)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !1691, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !100, line: 131, baseType: !94)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1705, file: !30, line: 425, baseType: !2107, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2011, !1084, !1084}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1705, file: !30, line: 426, baseType: !2111, size: 64, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!774, !2011, !616}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1705, file: !30, line: 427, baseType: !2115, size: 64, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !2011}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1705, file: !30, line: 428, baseType: !2119, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!1081, !2122, !2144}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2131, !2132, !2133, !2134}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2123, file: !30, line: 374, baseType: !498, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2123, file: !30, line: 375, baseType: !538, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2123, file: !30, line: 376, baseType: !2128, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2122, !1042}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2123, file: !30, line: 377, baseType: !102, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2123, file: !30, line: 378, baseType: !133, size: 32, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2123, file: !30, line: 379, baseType: !153, size: 16, offset: 288)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !30, line: 380, baseType: !2135, size: 64, offset: 320)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !30, line: 380, size: 64, elements: !2136)
!2136 = !{!2137, !2140}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2135, file: !30, line: 386, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2135, file: !30, line: 395, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1081, !102}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !30, line: 69, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1705, file: !30, line: 433, baseType: !2147, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!133, !1691, !2011, !2011, !64}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1705, file: !30, line: 435, baseType: !2151, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!133, !2011}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1705, file: !30, line: 436, baseType: !2155, size: 64, offset: 896)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!774, !2011, !1084, !1084}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1705, file: !30, line: 438, baseType: !2159, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !2011, !2162, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1705, file: !30, line: 439, baseType: !2164, size: 64, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!133, !1691, !1711}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1705, file: !30, line: 442, baseType: !2168, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!133, !2171, !498, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1705, file: !30, line: 444, baseType: !2175, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !498}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1705, file: !30, line: 445, baseType: !2179, size: 64, offset: 1216)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!133, !2122, !2144}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1692, file: !30, line: 486, baseType: !101, size: 64, offset: 896)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1692, file: !30, line: 487, baseType: !715, size: 320, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1692, file: !30, line: 488, baseType: !1648, size: 32, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1692, file: !30, line: 489, baseType: !480, size: 32, offset: 1312)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1692, file: !30, line: 490, baseType: !186, size: 128, offset: 1344)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1692, file: !30, line: 491, baseType: !102, size: 64, offset: 1472)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !928, file: !30, line: 659, baseType: !102, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !928, file: !30, line: 663, baseType: !101, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !30, line: 671, baseType: !2191, size: 32, offset: 704)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !30, line: 671, size: 32, elements: !2192)
!2192 = !{!2193, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2191, file: !30, line: 672, baseType: !2194, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2191, file: !30, line: 673, baseType: !12, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !928, file: !30, line: 675, baseType: !1002, size: 32, offset: 736)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !928, file: !30, line: 676, baseType: !538, size: 64, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !928, file: !30, line: 677, baseType: !1038, size: 128, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !928, file: !30, line: 678, baseType: !1038, size: 128, offset: 960)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !928, file: !30, line: 679, baseType: !1038, size: 128, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !928, file: !30, line: 680, baseType: !480, size: 32, offset: 1216)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !928, file: !30, line: 681, baseType: !155, size: 16, offset: 1248)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !928, file: !30, line: 682, baseType: !296, size: 8, offset: 1264)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !928, file: !30, line: 683, baseType: !296, size: 8, offset: 1272)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !928, file: !30, line: 684, baseType: !1439, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !928, file: !30, line: 691, baseType: !101, size: 64, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !928, file: !30, line: 692, baseType: !715, size: 320, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !928, file: !30, line: 694, baseType: !101, size: 64, offset: 1728)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !928, file: !30, line: 695, baseType: !101, size: 64, offset: 1792)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !928, file: !30, line: 697, baseType: !580, size: 128, offset: 1856)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !928, file: !30, line: 698, baseType: !186, size: 128, offset: 1984)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !928, file: !30, line: 707, baseType: !186, size: 128, offset: 2112)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !928, file: !30, line: 708, baseType: !186, size: 128, offset: 2240)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !30, line: 709, baseType: !2215, size: 128, offset: 2368)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !30, line: 709, size: 128, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2215, file: !30, line: 710, baseType: !576, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2215, file: !30, line: 711, baseType: !506, size: 128, align: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !928, file: !30, line: 713, baseType: !521, size: 64, offset: 2496)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !928, file: !30, line: 714, baseType: !521, size: 64, offset: 2560)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !928, file: !30, line: 715, baseType: !129, size: 32, offset: 2624)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !928, file: !30, line: 716, baseType: !129, size: 32, offset: 2656)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !928, file: !30, line: 717, baseType: !129, size: 32, offset: 2688)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !928, file: !30, line: 719, baseType: !129, size: 32, offset: 2720)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !30, line: 721, baseType: !2226, size: 64, offset: 2752)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !30, line: 721, size: 64, elements: !2227)
!2227 = !{!2228, !2359}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2226, file: !30, line: 722, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !2232)
!2232 = !{!2233, !2234, !2238, !2243, !2247, !2248, !2249, !2255, !2268, !2276, !2280, !2281, !2285, !2286, !2290, !2295, !2296, !2300, !2304, !2310, !2311, !2315, !2316, !2322, !2326, !2327, !2332, !2336, !2340, !2344, !2348, !2349, !2355}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2231, file: !30, line: 1915, baseType: !1166, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2231, file: !30, line: 1916, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!538, !498, !538, !133}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2231, file: !30, line: 1917, baseType: !2239, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!1081, !498, !105, !1084, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2231, file: !30, line: 1918, baseType: !2244, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1081, !498, !777, !1084, !2242}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2231, file: !30, line: 1919, baseType: !2119, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2231, file: !30, line: 1920, baseType: !2119, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2231, file: !30, line: 1921, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!133, !2122, !2253, !12}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !30, line: 53, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2231, file: !30, line: 1923, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!133, !498, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !2261)
!2261 = !{!2262, !2267}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2260, file: !30, line: 1859, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!774, !2259, !777, !133, !538, !94, !12}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2260, file: !30, line: 1860, baseType: !538, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2231, file: !30, line: 1924, baseType: !2269, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2272, !498, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2273, line: 59, baseType: !12)
!2273 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !30, line: 61, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2231, file: !30, line: 1925, baseType: !2277, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!1042, !498, !12, !101}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2231, file: !30, line: 1926, baseType: !2277, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2231, file: !30, line: 1927, baseType: !2282, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!133, !498, !1830}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2231, file: !30, line: 1928, baseType: !101, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2231, file: !30, line: 1929, baseType: !2287, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!133, !927, !498}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2231, file: !30, line: 1930, baseType: !2291, size: 64, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!133, !498, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !102)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2231, file: !30, line: 1931, baseType: !2287, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2231, file: !30, line: 1932, baseType: !2297, size: 64, offset: 1024)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!133, !498, !538, !538, !133}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2231, file: !30, line: 1933, baseType: !2301, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!133, !133, !498, !133}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2231, file: !30, line: 1934, baseType: !2305, size: 64, offset: 1152)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!133, !498, !133, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2231, file: !30, line: 1935, baseType: !495, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2231, file: !30, line: 1936, baseType: !2312, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!133, !133}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2231, file: !30, line: 1937, baseType: !2305, size: 64, offset: 1344)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2231, file: !30, line: 1938, baseType: !2317, size: 64, offset: 1408)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!1081, !2320, !498, !2242, !1084, !12}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !109, line: 59, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2231, file: !30, line: 1939, baseType: !2323, size: 64, offset: 1472)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!1081, !498, !2242, !2320, !1084, !12}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2231, file: !30, line: 1940, baseType: !2175, size: 64, offset: 1536)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2231, file: !30, line: 1941, baseType: !2328, size: 64, offset: 1600)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!133, !498, !133, !2331, !2096}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2231, file: !30, line: 1942, baseType: !2333, size: 64, offset: 1664)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!1042, !498, !133, !538, !538}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2231, file: !30, line: 1944, baseType: !2337, size: 64, offset: 1728)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !1242, !498}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2231, file: !30, line: 1948, baseType: !2341, size: 64, offset: 1792)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!1081, !498, !538, !498, !538, !1084, !12}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2231, file: !30, line: 1950, baseType: !2345, size: 64, offset: 1856)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!538, !498, !538, !498, !538, !538, !12}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2231, file: !30, line: 1953, baseType: !2297, size: 64, offset: 1920)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2231, file: !30, line: 1954, baseType: !2350, size: 64, offset: 1984)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!133, !2353, !12}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2231, file: !30, line: 1955, baseType: !2356, size: 64, offset: 2048)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!133, !2353, !2253, !12}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2226, file: !30, line: 723, baseType: !1192, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !928, file: !30, line: 725, baseType: !2361, size: 64, offset: 2816)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !928, file: !30, line: 726, baseType: !1692, size: 1536, align: 64, offset: 2880)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !928, file: !30, line: 727, baseType: !186, size: 128, offset: 4416)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !30, line: 728, baseType: !2366, size: 64, offset: 4544)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !30, line: 728, size: 64, elements: !2367)
!2367 = !{!2368, !2369, !2372, !2373}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2366, file: !30, line: 729, baseType: !2320, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2366, file: !30, line: 730, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !30, line: 730, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2366, file: !30, line: 731, baseType: !105, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2366, file: !30, line: 732, baseType: !12, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !928, file: !30, line: 735, baseType: !119, size: 32, offset: 4608)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !928, file: !30, line: 738, baseType: !119, size: 32, offset: 4640)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !928, file: !30, line: 739, baseType: !1552, size: 64, offset: 4672)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !928, file: !30, line: 750, baseType: !102, size: 64, offset: 4736)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !893, file: !894, line: 91, baseType: !2379, size: 256, offset: 448)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !1556)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !893, file: !894, line: 94, baseType: !2381, size: 64, offset: 704)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2382, line: 25, size: 64, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2381, file: !2382, line: 26, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2381, file: !2382, line: 26, size: 64, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2385, file: !2382, line: 28, baseType: !96, size: 64, align: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !2382, line: 30, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2385, file: !2382, line: 30, size: 64, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2389, file: !2382, line: 31, baseType: !480, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2389, file: !2382, line: 32, baseType: !133, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !893, file: !894, line: 95, baseType: !1571, size: 64, offset: 768)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !893, file: !894, line: 96, baseType: !1133, size: 64, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !893, file: !894, line: 97, baseType: !101, size: 64, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !893, file: !894, line: 98, baseType: !102, size: 64, offset: 960)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !894, line: 100, baseType: !2398, size: 128, offset: 1024)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !894, line: 100, size: 128, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2398, file: !894, line: 101, baseType: !186, size: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2398, file: !894, line: 102, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !893, file: !894, line: 104, baseType: !186, size: 128, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !893, file: !894, line: 105, baseType: !186, size: 128, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !893, file: !894, line: 113, baseType: !2406, size: 128, offset: 1408)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !894, line: 109, size: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2406, file: !894, line: 110, baseType: !580, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2406, file: !894, line: 111, baseType: !903, size: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2406, file: !894, line: 112, baseType: !506, size: 128, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !888, file: !889, line: 72, baseType: !1133, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !888, file: !889, line: 73, baseType: !133, size: 32, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !888, file: !889, line: 74, baseType: !967, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !883, file: !884, line: 10, baseType: !892, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !499, file: !30, line: 1015, baseType: !927, size: 64, offset: 1344)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !499, file: !30, line: 1016, baseType: !2229, size: 64, offset: 1408)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !499, file: !30, line: 1018, baseType: !94, size: 64, offset: 1472)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !499, file: !30, line: 1020, baseType: !102, size: 64, offset: 1536)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !499, file: !30, line: 1023, baseType: !102, size: 64, offset: 1600)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !499, file: !30, line: 1027, baseType: !2421, size: 64, offset: 1664)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !499, file: !30, line: 1029, baseType: !1691, size: 64, offset: 1728)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !499, file: !30, line: 1030, baseType: !1648, size: 32, offset: 1792)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !499, file: !30, line: 1031, baseType: !1648, size: 32, offset: 1824)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !466, file: !49, line: 756, baseType: !101, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !466, file: !49, line: 757, baseType: !101, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !466, file: !49, line: 760, baseType: !101, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !466, file: !49, line: 761, baseType: !101, size: 64, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !466, file: !49, line: 763, baseType: !101, size: 64, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !466, file: !49, line: 764, baseType: !2431, size: 64, offset: 1024)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1845, line: 299, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1845, line: 299, size: 64, elements: !2434)
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2433, file: !1845, line: 299, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1850, line: 18, baseType: !101)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !466, file: !49, line: 773, baseType: !129, size: 32, offset: 1088)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !466, file: !49, line: 785, baseType: !129, size: 32, offset: 1120)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !466, file: !49, line: 795, baseType: !2440, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !49, line: 726, size: 128, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2441, file: !49, line: 727, baseType: !94, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2441, file: !49, line: 728, baseType: !133, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !466, file: !49, line: 801, baseType: !101, size: 64, offset: 1216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !466, file: !49, line: 804, baseType: !519, size: 64, offset: 1280)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !466, file: !49, line: 806, baseType: !133, size: 32, offset: 1344)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !466, file: !49, line: 808, baseType: !480, size: 32, offset: 1376)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !466, file: !49, line: 823, baseType: !715, size: 320, offset: 1408)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !466, file: !49, line: 825, baseType: !186, size: 128, offset: 1728)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !466, file: !49, line: 845, baseType: !133, size: 32, offset: 1856)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !466, file: !49, line: 849, baseType: !101, size: 64, offset: 1920)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !466, file: !49, line: 850, baseType: !101, size: 64, offset: 1984)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !466, file: !49, line: 852, baseType: !101, size: 64, offset: 2048)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !466, file: !49, line: 853, baseType: !101, size: 64, offset: 2112)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !466, file: !49, line: 854, baseType: !521, size: 64, offset: 2176)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !466, file: !49, line: 855, baseType: !101, size: 64, offset: 2240)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !466, file: !49, line: 856, baseType: !101, size: 64, offset: 2304)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !466, file: !49, line: 857, baseType: !101, size: 64, offset: 2368)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !466, file: !49, line: 858, baseType: !101, size: 64, offset: 2432)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !466, file: !49, line: 865, baseType: !336, size: 32, offset: 2496)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !466, file: !49, line: 867, baseType: !480, size: 32, offset: 2528)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !466, file: !49, line: 869, baseType: !101, size: 64, offset: 2560)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !466, file: !49, line: 869, baseType: !101, size: 64, offset: 2624)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !466, file: !49, line: 869, baseType: !101, size: 64, offset: 2688)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !466, file: !49, line: 869, baseType: !101, size: 64, offset: 2752)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !466, file: !49, line: 870, baseType: !101, size: 64, offset: 2816)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !466, file: !49, line: 870, baseType: !101, size: 64, offset: 2880)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !466, file: !49, line: 870, baseType: !101, size: 64, offset: 2944)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !466, file: !49, line: 871, baseType: !101, size: 64, offset: 3008)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !466, file: !49, line: 871, baseType: !101, size: 64, offset: 3072)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !466, file: !49, line: 871, baseType: !101, size: 64, offset: 3136)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !466, file: !49, line: 871, baseType: !101, size: 64, offset: 3200)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !466, file: !49, line: 873, baseType: !2475, size: 3328, offset: 3264)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3328, elements: !2476)
!2476 = !{!2477}
!2477 = !DISubrange(count: 52)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !466, file: !49, line: 875, baseType: !2479, size: 1280, offset: 6592)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 1280, elements: !585)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !466, file: !49, line: 877, baseType: !2481, size: 64, offset: 7872)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !49, line: 877, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !466, file: !49, line: 880, baseType: !2484, size: 1088, offset: 7936)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2485, line: 72, baseType: !2486)
!2485 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2485, line: 23, size: 1088, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2495, !2496, !2497, !2498, !2525, !2526, !2527}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2486, file: !2485, line: 28, baseType: !94, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2486, file: !2485, line: 38, baseType: !521, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2486, file: !2485, line: 40, baseType: !101, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2486, file: !2485, line: 43, baseType: !715, size: 320, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2486, file: !2485, line: 44, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2485, line: 44, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2486, file: !2485, line: 48, baseType: !101, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2486, file: !2485, line: 59, baseType: !526, size: 256, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2486, file: !2485, line: 60, baseType: !102, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2486, file: !2485, line: 61, baseType: !2499, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2502, line: 13, size: 1216, elements: !2503)
!2502 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2501, file: !2502, line: 14, baseType: !102, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2501, file: !2502, line: 15, baseType: !101, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2501, file: !2502, line: 17, baseType: !101, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2501, file: !2502, line: 17, baseType: !101, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2501, file: !2502, line: 18, baseType: !101, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2501, file: !2502, line: 18, baseType: !101, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2501, file: !2502, line: 19, baseType: !2511, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2501, file: !2502, line: 21, baseType: !1042, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2501, file: !2502, line: 23, baseType: !1042, size: 64, offset: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2501, file: !2502, line: 24, baseType: !1042, size: 64, offset: 576)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2501, file: !2502, line: 25, baseType: !1042, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2501, file: !2502, line: 26, baseType: !1042, size: 64, offset: 704)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2501, file: !2502, line: 27, baseType: !1042, size: 64, offset: 768)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2501, file: !2502, line: 28, baseType: !1042, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2501, file: !2502, line: 29, baseType: !1042, size: 64, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2501, file: !2502, line: 30, baseType: !1042, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2501, file: !2502, line: 31, baseType: !1042, size: 64, offset: 1024)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2501, file: !2502, line: 32, baseType: !1042, size: 64, offset: 1088)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2501, file: !2502, line: 33, baseType: !1042, size: 64, offset: 1152)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2486, file: !2485, line: 63, baseType: !129, size: 32, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2486, file: !2485, line: 69, baseType: !153, size: 16, offset: 1056)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2486, file: !2485, line: 70, baseType: !2528, size: 16, offset: 1072)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !95, line: 18, baseType: !2529)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !97, line: 23, baseType: !743)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !49, line: 882, baseType: !101, size: 64, offset: 9024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !466, file: !49, line: 885, baseType: !480, size: 32, offset: 9088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !466, file: !49, line: 886, baseType: !2533, size: 64, offset: 9152)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !49, line: 732, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !466, file: !49, line: 901, baseType: !633, size: 64, offset: 9216)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !466, file: !49, line: 904, baseType: !498, size: 64, offset: 9280)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !466, file: !49, line: 906, baseType: !2538, size: 64, offset: 9344)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !49, line: 906, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !466, file: !49, line: 930, baseType: !129, size: 32, offset: 9408)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !466, file: !49, line: 933, baseType: !129, size: 32, offset: 9440)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !466, file: !49, line: 935, baseType: !2543, size: 64, offset: 9472)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !78, line: 103, size: 64, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2543, file: !78, line: 104, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !78, line: 101, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !466, file: !49, line: 940, baseType: !519, size: 64, offset: 9536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !466, file: !49, line: 942, baseType: !1674, size: 256, offset: 9600)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !463, file: !49, line: 986, baseType: !2551, offset: 10240)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, elements: !653)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !108, file: !109, line: 882, baseType: !462, size: 64, offset: 9792)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !108, file: !109, line: 884, baseType: !133, size: 32, offset: 9856)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !108, file: !109, line: 885, baseType: !133, size: 32, offset: 9888)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !108, file: !109, line: 886, baseType: !133, size: 32, offset: 9920)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !108, file: !109, line: 888, baseType: !133, size: 32, offset: 9952)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !108, file: !109, line: 890, baseType: !101, size: 64, offset: 9984)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !108, file: !109, line: 893, baseType: !12, size: 32, offset: 10048)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !108, file: !109, line: 896, baseType: !12, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !108, file: !109, line: 897, baseType: !12, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !108, file: !109, line: 898, baseType: !12, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !108, file: !109, line: 899, baseType: !12, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !108, file: !109, line: 919, baseType: !12, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !108, file: !109, line: 922, baseType: !12, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !108, file: !109, line: 923, baseType: !12, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !108, file: !109, line: 925, baseType: !12, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !108, file: !109, line: 939, baseType: !12, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !108, file: !109, line: 941, baseType: !12, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !108, file: !109, line: 944, baseType: !12, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !108, file: !109, line: 956, baseType: !12, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !108, file: !109, line: 962, baseType: !12, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !108, file: !109, line: 966, baseType: !12, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !108, file: !109, line: 969, baseType: !101, size: 64, offset: 10176)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !108, file: !109, line: 971, baseType: !2575, size: 448, offset: 10240)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !72, line: 25, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2583}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2575, file: !72, line: 26, baseType: !101, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2575, file: !72, line: 27, baseType: !2579, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!1042, !2582}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !72, line: 28, baseType: !2584, size: 320, offset: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !72, line: 28, size: 320, elements: !2585)
!2585 = !{!2586, !2596, !2621}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2584, file: !72, line: 37, baseType: !2587, size: 320)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !72, line: 30, size: 320, elements: !2588)
!2588 = !{!2589, !2591, !2592, !2593, !2594, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2587, file: !72, line: 31, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2587, file: !72, line: 32, baseType: !118, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !72, line: 33, baseType: !118, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2587, file: !72, line: 34, baseType: !118, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2587, file: !72, line: 35, baseType: !94, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2587, file: !72, line: 36, baseType: !2590, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2584, file: !72, line: 47, baseType: !2597, size: 192)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !72, line: 39, size: 192, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2620}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2597, file: !72, line: 40, baseType: !327, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2597, file: !72, line: 41, baseType: !71, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !72, line: 42, baseType: !2602, size: 64, offset: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !72, line: 42, size: 64, elements: !2603)
!2603 = !{!2604, !2612}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2602, file: !72, line: 43, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2607, line: 7, size: 128, elements: !2608)
!2607 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2608 = !{!2609, !2611}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2606, file: !2607, line: 8, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !329, line: 93, baseType: !199)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2606, file: !2607, line: 9, baseType: !199, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2602, file: !72, line: 44, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2615, line: 7, size: 64, elements: !2616)
!2615 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2616 = !{!2617, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2614, file: !2615, line: 8, baseType: !2618, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2615, line: 5, baseType: !707)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2614, file: !2615, line: 9, baseType: !707, size: 32, offset: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2597, file: !72, line: 46, baseType: !94, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2584, file: !72, line: 55, baseType: !2622, size: 256)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !72, line: 49, size: 256, elements: !2623)
!2623 = !{!2624, !2627, !2628, !2629, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2622, file: !72, line: 50, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !72, line: 14, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2622, file: !72, line: 51, baseType: !133, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2622, file: !72, line: 52, baseType: !133, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2622, file: !72, line: 53, baseType: !101, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2622, file: !72, line: 54, baseType: !101, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !108, file: !109, line: 973, baseType: !2632, size: 32, offset: 10688)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !100, line: 27, baseType: !2633)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !329, line: 28, baseType: !133)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !108, file: !109, line: 974, baseType: !2632, size: 32, offset: 10720)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !108, file: !109, line: 978, baseType: !101, size: 64, offset: 10752)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !108, file: !109, line: 987, baseType: !107, size: 64, offset: 10816)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !109, line: 990, baseType: !107, size: 64, offset: 10880)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !108, file: !109, line: 995, baseType: !186, size: 128, offset: 10944)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !108, file: !109, line: 996, baseType: !186, size: 128, offset: 11072)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !108, file: !109, line: 997, baseType: !107, size: 64, offset: 11200)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !108, file: !109, line: 1005, baseType: !186, size: 128, offset: 11264)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !108, file: !109, line: 1006, baseType: !186, size: 128, offset: 11392)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !108, file: !109, line: 1009, baseType: !568, size: 64, offset: 11520)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !108, file: !109, line: 1010, baseType: !2645, size: 512, offset: 11584)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 512, elements: !585)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !108, file: !109, line: 1011, baseType: !186, size: 128, offset: 12096)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !108, file: !109, line: 1012, baseType: !186, size: 128, offset: 12224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !108, file: !109, line: 1014, baseType: !2649, size: 64, offset: 12352)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !108, file: !109, line: 1017, baseType: !1236, size: 64, offset: 12416)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !108, file: !109, line: 1020, baseType: !1236, size: 64, offset: 12480)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !108, file: !109, line: 1023, baseType: !102, size: 64, offset: 12544)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !108, file: !109, line: 1025, baseType: !94, size: 64, offset: 12608)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !108, file: !109, line: 1026, baseType: !94, size: 64, offset: 12672)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !108, file: !109, line: 1031, baseType: !94, size: 64, offset: 12736)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !108, file: !109, line: 1032, baseType: !2657, size: 192, offset: 12800)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !109, line: 324, size: 192, elements: !2658)
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2657, file: !109, line: 326, baseType: !94, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2657, file: !109, line: 327, baseType: !94, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2657, file: !109, line: 328, baseType: !279, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !108, file: !109, line: 1041, baseType: !101, size: 64, offset: 12992)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !108, file: !109, line: 1042, baseType: !101, size: 64, offset: 13056)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !108, file: !109, line: 1045, baseType: !94, size: 64, offset: 13120)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !108, file: !109, line: 1048, baseType: !94, size: 64, offset: 13184)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !108, file: !109, line: 1051, baseType: !101, size: 64, offset: 13248)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !108, file: !109, line: 1052, baseType: !101, size: 64, offset: 13312)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !108, file: !109, line: 1055, baseType: !2669, size: 640, offset: 13376)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2670, line: 132, size: 640, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2671 = !{!2672, !2678, !2679}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2669, file: !2670, line: 133, baseType: !2673, size: 576)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 576, elements: !564)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2670, line: 117, size: 192, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2674, file: !2670, line: 118, baseType: !94, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2674, file: !2670, line: 119, baseType: !342, size: 128, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2669, file: !2670, line: 134, baseType: !12, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2669, file: !2670, line: 135, baseType: !12, size: 32, offset: 608)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !108, file: !109, line: 1058, baseType: !2681, size: 448, offset: 14016)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2670, line: 144, size: 448, elements: !2682)
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2681, file: !2670, line: 145, baseType: !506, size: 128, align: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2681, file: !2670, line: 146, baseType: !526, size: 256, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2681, file: !2670, line: 147, baseType: !12, size: 32, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !108, file: !109, line: 1064, baseType: !666, size: 64, offset: 14464)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !108, file: !109, line: 1067, baseType: !666, size: 64, offset: 14528)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !108, file: !109, line: 1070, baseType: !666, size: 64, offset: 14592)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !108, file: !109, line: 1074, baseType: !699, size: 64, offset: 14656)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !108, file: !109, line: 1084, baseType: !2691, size: 128, offset: 14720)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1565)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !108, file: !109, line: 1086, baseType: !2693, size: 64, offset: 14848)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !109, line: 55, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !108, file: !109, line: 1089, baseType: !2696, size: 64, offset: 14912)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2697, line: 12, size: 64, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2696, file: !2697, line: 13, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2697, line: 8, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !108, file: !109, line: 1090, baseType: !2703, size: 128, offset: 14976)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2704, line: 13, size: 128, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2703, file: !2704, line: 14, baseType: !186, size: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !108, file: !109, line: 1097, baseType: !2708, size: 64, offset: 15104)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !109, line: 50, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !108, file: !109, line: 1100, baseType: !2711, size: 64, offset: 15168)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !109, line: 1100, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !108, file: !109, line: 1103, baseType: !2714, size: 64, offset: 15232)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !109, line: 53, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !108, file: !109, line: 1107, baseType: !2717, size: 64, offset: 15296)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2719, line: 31, size: 576, elements: !2720)
!2719 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2720 = !{!2721, !2722, !2725, !2728, !2731, !2732, !2735, !2738, !2739}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2718, file: !2719, line: 32, baseType: !124, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2718, file: !2719, line: 33, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2719, line: 9, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2718, file: !2719, line: 34, baseType: !2726, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2719, line: 10, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2718, file: !2719, line: 35, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2719, line: 8, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2718, file: !2719, line: 36, baseType: !602, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2718, file: !2719, line: 37, baseType: !2733, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !701, line: 34, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2718, file: !2719, line: 38, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2719, line: 38, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2718, file: !2719, line: 39, baseType: !2736, size: 64, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2718, file: !2719, line: 40, baseType: !2740, size: 64, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2719, line: 12, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !108, file: !109, line: 1110, baseType: !2743, size: 64, offset: 15360)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2745, line: 93, size: 8768, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2796, !2805, !2806, !2808, !2809, !2810, !2813, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2851, !2852, !2859, !2869, !2872, !2873, !2876, !2877, !2878, !2879, !2880, !2881}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2744, file: !2745, line: 94, baseType: !124, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2744, file: !2745, line: 95, baseType: !129, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2744, file: !2745, line: 96, baseType: !133, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2744, file: !2745, line: 97, baseType: !133, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2744, file: !2745, line: 98, baseType: !186, size: 128, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2744, file: !2745, line: 100, baseType: !589, size: 192, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2744, file: !2745, line: 103, baseType: !107, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2744, file: !2745, line: 106, baseType: !2755, size: 192, offset: 512)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !639, line: 32, size: 192, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2755, file: !639, line: 33, baseType: !186, size: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2755, file: !639, line: 34, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2760, line: 25, baseType: !2761)
!2760 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 23, size: 64, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2761, file: !2760, line: 24, baseType: !413, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2744, file: !2745, line: 109, baseType: !576, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2744, file: !2745, line: 112, baseType: !133, size: 32, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2744, file: !2745, line: 114, baseType: !133, size: 32, offset: 800)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2744, file: !2745, line: 115, baseType: !107, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2744, file: !2745, line: 118, baseType: !133, size: 32, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2745, line: 119, baseType: !12, size: 32, offset: 928)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2744, file: !2745, line: 121, baseType: !2771, size: 64, offset: 960)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2745, line: 80, size: 448, elements: !2773)
!2773 = !{!2774, !2775, !2781}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2772, file: !2745, line: 81, baseType: !129, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2772, file: !2745, line: 82, baseType: !2776, size: 128, offset: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2745, line: 75, size: 128, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2776, file: !2745, line: 76, baseType: !107, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2776, file: !2745, line: 77, baseType: !2780, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2772, file: !2745, line: 83, baseType: !1795, size: 256, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2744, file: !2745, line: 132, baseType: !12, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2744, file: !2745, line: 133, baseType: !12, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2744, file: !2745, line: 138, baseType: !12, size: 32, offset: 1056)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2744, file: !2745, line: 139, baseType: !186, size: 128, offset: 1088)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2744, file: !2745, line: 142, baseType: !254, size: 512, offset: 1216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2744, file: !2745, line: 143, baseType: !262, size: 64, offset: 1728)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2744, file: !2745, line: 150, baseType: !2789, size: 256, offset: 1792)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2790, size: 256, elements: !2794)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2745, line: 38, size: 128, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2790, file: !2745, line: 39, baseType: !94, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2790, file: !2745, line: 40, baseType: !94, size: 64, offset: 64)
!2794 = !{!2795}
!2795 = !DISubrange(count: 2)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2744, file: !2745, line: 156, baseType: !2797, size: 192, offset: 2048)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2745, line: 66, size: 192, elements: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2797, file: !2745, line: 67, baseType: !2800, size: 192)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2745, line: 47, size: 192, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2800, file: !2745, line: 48, baseType: !521, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2800, file: !2745, line: 49, baseType: !521, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2800, file: !2745, line: 50, baseType: !521, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2744, file: !2745, line: 160, baseType: !2669, size: 640, offset: 2240)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2744, file: !2745, line: 163, baseType: !2807, size: 256, offset: 2880)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 256, elements: !585)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2744, file: !2745, line: 169, baseType: !568, size: 64, offset: 3136)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2744, file: !2745, line: 172, baseType: !133, size: 32, offset: 3200)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2744, file: !2745, line: 174, baseType: !2811, size: 64, offset: 3264)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2745, line: 174, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2744, file: !2745, line: 185, baseType: !2814, size: 64, offset: 3328)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !332, line: 860, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 853, size: 64, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2815, file: !332, line: 858, baseType: !898, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2815, file: !332, line: 859, baseType: !480, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2744, file: !2745, line: 186, baseType: !94, size: 64, offset: 3392)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2744, file: !2745, line: 186, baseType: !94, size: 64, offset: 3456)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2744, file: !2745, line: 186, baseType: !94, size: 64, offset: 3520)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2744, file: !2745, line: 186, baseType: !94, size: 64, offset: 3584)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2744, file: !2745, line: 187, baseType: !94, size: 64, offset: 3648)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2744, file: !2745, line: 188, baseType: !94, size: 64, offset: 3712)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2744, file: !2745, line: 189, baseType: !2657, size: 192, offset: 3776)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2744, file: !2745, line: 190, baseType: !101, size: 64, offset: 3968)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2744, file: !2745, line: 190, baseType: !101, size: 64, offset: 4032)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2744, file: !2745, line: 190, baseType: !101, size: 64, offset: 4096)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2744, file: !2745, line: 190, baseType: !101, size: 64, offset: 4160)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2744, file: !2745, line: 191, baseType: !101, size: 64, offset: 4224)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2744, file: !2745, line: 191, baseType: !101, size: 64, offset: 4288)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2744, file: !2745, line: 191, baseType: !101, size: 64, offset: 4352)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2744, file: !2745, line: 191, baseType: !101, size: 64, offset: 4416)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2744, file: !2745, line: 192, baseType: !101, size: 64, offset: 4480)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2744, file: !2745, line: 192, baseType: !101, size: 64, offset: 4544)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2744, file: !2745, line: 192, baseType: !101, size: 64, offset: 4608)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2744, file: !2745, line: 192, baseType: !101, size: 64, offset: 4672)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2744, file: !2745, line: 193, baseType: !101, size: 64, offset: 4736)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2744, file: !2745, line: 193, baseType: !101, size: 64, offset: 4800)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2744, file: !2745, line: 194, baseType: !2841, size: 448, offset: 4864)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2842, line: 12, size: 448, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2843 = !{!2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2841, file: !2842, line: 15, baseType: !94, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2841, file: !2842, line: 17, baseType: !94, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2841, file: !2842, line: 19, baseType: !94, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2841, file: !2842, line: 21, baseType: !94, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2841, file: !2842, line: 29, baseType: !94, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2841, file: !2842, line: 35, baseType: !94, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2841, file: !2842, line: 44, baseType: !94, size: 64, offset: 384)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2744, file: !2745, line: 202, baseType: !98, size: 64, offset: 5312)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2744, file: !2745, line: 213, baseType: !2853, size: 2048, offset: 5376)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2854, size: 2048, elements: !1565)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2855, line: 43, size: 128, elements: !2856)
!2855 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2854, file: !2855, line: 44, baseType: !1086, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2854, file: !2855, line: 45, baseType: !1086, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2744, file: !2745, line: 216, baseType: !2860, size: 448, offset: 7424)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2745, line: 30, size: 448, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2860, file: !2745, line: 31, baseType: !133, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2860, file: !2745, line: 32, baseType: !1042, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2860, file: !2745, line: 33, baseType: !101, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2860, file: !2745, line: 34, baseType: !94, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2860, file: !2745, line: 34, baseType: !94, size: 64, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2860, file: !2745, line: 35, baseType: !101, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2860, file: !2745, line: 35, baseType: !101, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2744, file: !2745, line: 219, baseType: !2870, size: 64, offset: 7872)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2745, line: 219, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2744, file: !2745, line: 222, baseType: !12, size: 32, offset: 7936)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2744, file: !2745, line: 223, baseType: !2874, size: 64, offset: 8000)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2745, line: 223, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2744, file: !2745, line: 230, baseType: !774, size: 8, offset: 8064)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2744, file: !2745, line: 231, baseType: !743, size: 16, offset: 8080)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2744, file: !2745, line: 232, baseType: !743, size: 16, offset: 8096)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2744, file: !2745, line: 234, baseType: !462, size: 64, offset: 8128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2744, file: !2745, line: 237, baseType: !526, size: 256, offset: 8192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2744, file: !2745, line: 243, baseType: !715, size: 320, offset: 8448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !108, file: !109, line: 1111, baseType: !2883, size: 64, offset: 15424)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2745, line: 20, size: 16640, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2884, file: !2745, line: 21, baseType: !480, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2884, file: !2745, line: 22, baseType: !124, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2884, file: !2745, line: 23, baseType: !589, size: 192, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2884, file: !2745, line: 24, baseType: !2890, size: 16384, offset: 256)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2891, size: 16384, elements: !2911)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !639, line: 51, size: 256, elements: !2892)
!2892 = !{!2893}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2891, file: !639, line: 52, baseType: !2894, size: 256)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !639, line: 37, size: 256, elements: !2895)
!2895 = !{!2896, !2903, !2904, !2910}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2894, file: !639, line: 39, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2898, line: 83, baseType: !2899)
!2898 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2898, line: 82, baseType: !2901)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !133}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2894, file: !639, line: 40, baseType: !101, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2894, file: !639, line: 46, baseType: !2905, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2898, line: 86, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2898, line: 85, baseType: !2908)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2894, file: !639, line: 48, baseType: !2759, size: 64, offset: 192)
!2911 = !{!2912}
!2912 = !DISubrange(count: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !108, file: !109, line: 1112, baseType: !2759, size: 64, offset: 15488)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !108, file: !109, line: 1113, baseType: !2759, size: 64, offset: 15552)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !108, file: !109, line: 1115, baseType: !2759, size: 64, offset: 15616)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !108, file: !109, line: 1116, baseType: !2755, size: 192, offset: 15680)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !108, file: !109, line: 1117, baseType: !101, size: 64, offset: 15872)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !108, file: !109, line: 1118, baseType: !1084, size: 64, offset: 15936)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !108, file: !109, line: 1119, baseType: !12, size: 32, offset: 16000)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !108, file: !109, line: 1121, baseType: !509, size: 64, offset: 16064)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !108, file: !109, line: 1125, baseType: !2922, size: 64, offset: 16128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !109, line: 43, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !108, file: !109, line: 1127, baseType: !657, size: 32, offset: 16192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !108, file: !109, line: 1128, baseType: !12, size: 32, offset: 16224)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !108, file: !109, line: 1130, baseType: !2927, size: 128, offset: 16256)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2928, line: 37, size: 128, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2927, file: !2928, line: 38, baseType: !133, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2927, file: !2928, line: 39, baseType: !129, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2927, file: !2928, line: 40, baseType: !2933, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2928, line: 24, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !108, file: !109, line: 1131, baseType: !2936, size: 256, offset: 16384)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2937, line: 12, size: 256, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2938 = !{!2939, !2940, !2941, !2942}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2936, file: !2937, line: 13, baseType: !105, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2936, file: !2937, line: 14, baseType: !101, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2936, file: !2937, line: 15, baseType: !101, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2936, file: !2937, line: 16, baseType: !774, size: 8, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !108, file: !109, line: 1134, baseType: !94, size: 64, offset: 16640)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !108, file: !109, line: 1135, baseType: !94, size: 64, offset: 16704)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !108, file: !109, line: 1138, baseType: !480, size: 32, offset: 16768)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !108, file: !109, line: 1141, baseType: !279, size: 32, offset: 16800)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !108, file: !109, line: 1143, baseType: !2948, size: 64, offset: 16832)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !109, line: 735, size: 64, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2948, file: !109, line: 736, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !108, file: !109, line: 1147, baseType: !345, size: 128, offset: 16896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !108, file: !109, line: 1149, baseType: !107, size: 64, offset: 17024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !108, file: !109, line: 1151, baseType: !2955, size: 64, offset: 17088)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !109, line: 1151, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !108, file: !109, line: 1188, baseType: !102, size: 64, offset: 17152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !108, file: !109, line: 1191, baseType: !2959, size: 64, offset: 17216)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !109, line: 44, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !108, file: !109, line: 1194, baseType: !2962, size: 64, offset: 17280)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !109, line: 45, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !108, file: !109, line: 1197, baseType: !2965, size: 64, offset: 17344)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !109, line: 61, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !108, file: !109, line: 1199, baseType: !2968, size: 64, offset: 17408)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2970, line: 99, size: 128, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2969, file: !2970, line: 100, baseType: !519, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2969, file: !2970, line: 101, baseType: !129, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2969, file: !2970, line: 103, baseType: !155, size: 16, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !108, file: !109, line: 1202, baseType: !2976, size: 64, offset: 17472)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !109, line: 48, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !108, file: !109, line: 1205, baseType: !101, size: 64, offset: 17536)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !108, file: !109, line: 1206, baseType: !2980, size: 64, offset: 17600)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !639, line: 14, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !639, line: 12, size: 384, elements: !2983)
!2983 = !{!2984}
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !639, line: 13, baseType: !2985, size: 384)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2982, file: !639, line: 13, size: 384, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2985, file: !639, line: 13, baseType: !133, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2985, file: !639, line: 13, baseType: !133, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2985, file: !639, line: 13, baseType: !133, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2985, file: !639, line: 13, baseType: !2991, size: 256, offset: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2992, line: 37, size: 256, elements: !2993)
!2992 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2993 = !{!2994, !2999, !3012, !3018, !3027, !3054, !3059}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2991, file: !2992, line: 42, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 39, size: 64, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2995, file: !2992, line: 40, baseType: !2633, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2995, file: !2992, line: 41, baseType: !662, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2991, file: !2992, line: 50, baseType: !3000, size: 192)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 45, size: 192, elements: !3001)
!3001 = !{!3002, !3004, !3005, !3011}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3000, file: !2992, line: 46, baseType: !3003, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !329, line: 95, baseType: !133)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3000, file: !2992, line: 47, baseType: !133, size: 32, offset: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3000, file: !2992, line: 48, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2992, line: 11, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2992, line: 8, size: 64, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3007, file: !2992, line: 9, baseType: !133, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3007, file: !2992, line: 10, baseType: !102, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3000, file: !2992, line: 49, baseType: !133, size: 32, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2991, file: !2992, line: 57, baseType: !3013, size: 128)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 53, size: 128, elements: !3014)
!3014 = !{!3015, !3016, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3013, file: !2992, line: 54, baseType: !2633, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3013, file: !2992, line: 55, baseType: !662, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3013, file: !2992, line: 56, baseType: !3006, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2991, file: !2992, line: 66, baseType: !3019, size: 256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 60, size: 256, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3026}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3019, file: !2992, line: 61, baseType: !2633, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3019, file: !2992, line: 62, baseType: !662, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3019, file: !2992, line: 63, baseType: !133, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3019, file: !2992, line: 64, baseType: !3025, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !329, line: 94, baseType: !1083)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3019, file: !2992, line: 65, baseType: !3025, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2991, file: !2992, line: 105, baseType: !3028, size: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 69, size: 256, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3028, file: !2992, line: 70, baseType: !102, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !2992, line: 79, baseType: !3032, size: 192, offset: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !2992, line: 79, size: 192, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3043, !3048}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3032, file: !2992, line: 81, baseType: !133, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3032, file: !2992, line: 86, baseType: !743, size: 16)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3032, file: !2992, line: 92, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !2992, line: 88, size: 192, elements: !3038)
!3038 = !{!3039, !3041, !3042}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3037, file: !2992, line: 89, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !323)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3037, file: !2992, line: 90, baseType: !102, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3037, file: !2992, line: 91, baseType: !102, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3032, file: !2992, line: 97, baseType: !3044, size: 96)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !2992, line: 94, size: 96, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3044, file: !2992, line: 95, baseType: !3040, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3044, file: !2992, line: 96, baseType: !119, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3032, file: !2992, line: 103, baseType: !3049, size: 128)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !2992, line: 99, size: 128, elements: !3050)
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3049, file: !2992, line: 100, baseType: !101, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3049, file: !2992, line: 101, baseType: !119, size: 32, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3049, file: !2992, line: 102, baseType: !119, size: 32, offset: 96)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2991, file: !2992, line: 111, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 108, size: 128, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3055, file: !2992, line: 109, baseType: !1042, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3055, file: !2992, line: 110, baseType: !133, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2991, file: !2992, line: 118, baseType: !3060, size: 128)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2991, file: !2992, line: 114, size: 128, elements: !3061)
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3060, file: !2992, line: 115, baseType: !102, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3060, file: !2992, line: 116, baseType: !133, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3060, file: !2992, line: 117, baseType: !12, size: 32, offset: 96)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !108, file: !109, line: 1208, baseType: !2841, size: 448, offset: 17664)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !108, file: !109, line: 1215, baseType: !94, size: 64, offset: 18112)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !108, file: !109, line: 1217, baseType: !94, size: 64, offset: 18176)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !108, file: !109, line: 1219, baseType: !94, size: 64, offset: 18240)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !108, file: !109, line: 1223, baseType: !3070, size: 64, offset: 18304)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3071, line: 99, baseType: !3072)
!3071 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3071, line: 99, size: 64, elements: !3073)
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3072, file: !3071, line: 99, baseType: !413, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !108, file: !109, line: 1225, baseType: !898, size: 32, offset: 18368)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !108, file: !109, line: 1226, baseType: !133, size: 32, offset: 18400)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !108, file: !109, line: 1227, baseType: !133, size: 32, offset: 18432)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !108, file: !109, line: 1231, baseType: !3079, size: 64, offset: 18496)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !109, line: 1231, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !108, file: !109, line: 1233, baseType: !186, size: 128, offset: 18560)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !108, file: !109, line: 1240, baseType: !3083, size: 64, offset: 18688)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !109, line: 62, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !108, file: !109, line: 1242, baseType: !3086, size: 64, offset: 18752)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !109, line: 1242, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !108, file: !109, line: 1244, baseType: !186, size: 128, offset: 18816)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !108, file: !109, line: 1245, baseType: !3090, size: 64, offset: 18944)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !109, line: 51, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !108, file: !109, line: 1246, baseType: !526, size: 256, offset: 19008)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !108, file: !109, line: 1247, baseType: !12, size: 32, offset: 19264)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !108, file: !109, line: 1250, baseType: !3095, size: 64, offset: 19328)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !109, line: 57, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !108, file: !109, line: 1251, baseType: !526, size: 256, offset: 19392)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !108, file: !109, line: 1252, baseType: !186, size: 128, offset: 19648)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !108, file: !109, line: 1259, baseType: !1923, size: 64, offset: 19776)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !108, file: !109, line: 1260, baseType: !743, size: 16, offset: 19840)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !108, file: !109, line: 1261, baseType: !743, size: 16, offset: 19856)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !108, file: !109, line: 1314, baseType: !3103, size: 64, offset: 19904)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3105, line: 62, size: 256, align: 256, elements: !3106)
!3105 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3104, file: !3105, line: 75, baseType: !119, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3104, file: !3105, line: 90, baseType: !119, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3104, file: !3105, line: 112, baseType: !96, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !3105, line: 132, baseType: !119, size: 32, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3104, file: !3105, line: 140, baseType: !119, size: 32, offset: 160)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3104, file: !3105, line: 149, baseType: !119, size: 32, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3104, file: !3105, line: 154, baseType: !3114, offset: 224)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !653)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !108, file: !109, line: 1315, baseType: !118, size: 32, offset: 19968)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !108, file: !109, line: 1316, baseType: !118, size: 32, offset: 20000)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !108, file: !109, line: 1321, baseType: !101, size: 64, offset: 20032)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !108, file: !109, line: 1325, baseType: !133, size: 32, offset: 20096)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !108, file: !109, line: 1326, baseType: !133, size: 32, offset: 20128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !108, file: !109, line: 1327, baseType: !133, size: 32, offset: 20160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !108, file: !109, line: 1328, baseType: !133, size: 32, offset: 20192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !108, file: !109, line: 1329, baseType: !506, size: 128, align: 64, offset: 20224)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !108, file: !109, line: 1332, baseType: !3124, size: 128, offset: 20352)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3125, line: 51, size: 128, elements: !3126)
!3125 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3126 = !{!3127, !3132, !3133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3124, file: !3125, line: 60, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3129, line: 7, size: 64, elements: !3130)
!3129 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3128, file: !3129, line: 12, baseType: !410, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3124, file: !3125, line: 63, baseType: !774, size: 8, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3124, file: !3125, line: 70, baseType: !774, size: 8, offset: 72)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !108, file: !109, line: 1335, baseType: !2320, size: 64, offset: 20480)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !108, file: !109, line: 1337, baseType: !3136, size: 128, offset: 20544)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3125, line: 39, size: 128, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3136, file: !3125, line: 40, baseType: !1711, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3136, file: !3125, line: 42, baseType: !119, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3136, file: !3125, line: 43, baseType: !119, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !108, file: !109, line: 1340, baseType: !3142, size: 64, offset: 20672)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !109, line: 69, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !108, file: !109, line: 1351, baseType: !133, size: 32, offset: 20736)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !108, file: !109, line: 1352, baseType: !133, size: 32, offset: 20768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !108, file: !109, line: 1354, baseType: !101, size: 64, offset: 20800)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !108, file: !109, line: 1364, baseType: !94, size: 64, offset: 20864)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !108, file: !109, line: 1365, baseType: !94, size: 64, offset: 20928)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !108, file: !109, line: 1412, baseType: !101, size: 64, offset: 20992)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !108, file: !109, line: 1453, baseType: !3151, size: 64, offset: 21056)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !109, line: 1453, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !108, file: !109, line: 1457, baseType: !3154, size: 64, offset: 21120)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !78, line: 61, size: 576, elements: !3156)
!3156 = !{!3157, !3158, !3177, !3180, !3181, !3214, !3224}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3155, file: !78, line: 62, baseType: !77, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !78, line: 64, baseType: !3159, size: 192, offset: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !78, line: 64, size: 192, elements: !3160)
!3160 = !{!3161, !3172}
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !78, line: 65, baseType: !3162, size: 192)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !78, line: 65, size: 192, elements: !3163)
!3163 = !{!3164, !3171}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3162, file: !78, line: 66, baseType: !3165, size: 128)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3166, line: 50, size: 128, elements: !3167)
!3166 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3165, file: !3166, line: 52, baseType: !101, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3165, file: !3166, line: 54, baseType: !12, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3165, file: !3166, line: 55, baseType: !12, size: 32, offset: 96)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3162, file: !78, line: 67, baseType: !101, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !3159, file: !78, line: 70, baseType: !3173, size: 192)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !78, line: 70, size: 192, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3173, file: !78, line: 71, baseType: !506, size: 128, align: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3173, file: !78, line: 72, baseType: !101, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3155, file: !78, line: 76, baseType: !3178, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !78, line: 76, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3155, file: !78, line: 77, baseType: !101, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3155, file: !78, line: 79, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3166, line: 25, size: 256, elements: !3184)
!3184 = !{!3185, !3191, !3195}
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3166, line: 26, baseType: !3186, size: 128)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3166, line: 26, size: 128, elements: !3187)
!3187 = !{!3188, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3186, file: !3166, line: 27, baseType: !3189, size: 128)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !1565)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3186, file: !3166, line: 28, baseType: !3189, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3183, file: !3166, line: 31, baseType: !3192, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3166, line: 23, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3166, line: 33, baseType: !3196, size: 64, offset: 192)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3166, line: 33, size: 64, elements: !3197)
!3197 = !{!3198, !3204, !3209}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3196, file: !3166, line: 38, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3196, file: !3166, line: 34, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3199, file: !3166, line: 35, baseType: !707, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3199, file: !3166, line: 36, baseType: !296, size: 8, offset: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3199, file: !3166, line: 37, baseType: !296, size: 8, offset: 40)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3196, file: !3166, line: 42, baseType: !3205, size: 16)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3196, file: !3166, line: 39, size: 16, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3205, file: !3166, line: 40, baseType: !296, size: 8)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3205, file: !3166, line: 41, baseType: !296, size: 8, offset: 8)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3196, file: !3166, line: 46, baseType: !3210, size: 16)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3196, file: !3166, line: 43, size: 16, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3210, file: !3166, line: 44, baseType: !296, size: 8)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3210, file: !3166, line: 45, baseType: !296, size: 8, offset: 8)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3155, file: !78, line: 81, baseType: !3215, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !78, line: 85, size: 384, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3216, file: !78, line: 86, baseType: !3178, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3216, file: !78, line: 87, baseType: !101, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3216, file: !78, line: 88, baseType: !101, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3216, file: !78, line: 89, baseType: !101, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3216, file: !78, line: 90, baseType: !774, size: 8, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3216, file: !78, line: 92, baseType: !3215, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3155, file: !78, line: 82, baseType: !12, size: 32, offset: 512)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !108, file: !109, line: 1463, baseType: !3226, offset: 21184)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !109, line: 739, elements: !491)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !108, file: !109, line: 1470, baseType: !506, size: 128, align: 64, offset: 21184)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !108, file: !109, line: 1471, baseType: !124, size: 32, offset: 21312)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !108, file: !109, line: 1472, baseType: !133, size: 32, offset: 21344)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !108, file: !109, line: 1474, baseType: !107, size: 64, offset: 21376)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !108, file: !109, line: 1475, baseType: !3232, size: 320, offset: 21440)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3233, line: 11, size: 320, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3234 = !{!3235, !3236, !3237, !3242}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3232, file: !3233, line: 16, baseType: !580, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3232, file: !3233, line: 17, baseType: !101, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3232, file: !3233, line: 18, baseType: !3238, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !3233, line: 19, baseType: !118, size: 32, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !108, file: !109, line: 1478, baseType: !3244, size: 64, offset: 21760)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !109, line: 1478, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !108, file: !109, line: 1482, baseType: !124, size: 32, offset: 21824)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !108, file: !109, line: 1489, baseType: !102, size: 64, offset: 21888)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !108, file: !109, line: 1504, baseType: !102, size: 64, offset: 21952)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !108, file: !109, line: 1505, baseType: !96, size: 64, offset: 22016)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !108, file: !109, line: 1506, baseType: !94, size: 64, offset: 22080)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !108, file: !109, line: 1507, baseType: !96, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !108, file: !109, line: 1508, baseType: !96, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !108, file: !109, line: 1509, baseType: !96, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !108, file: !109, line: 1510, baseType: !506, size: 128, align: 64, offset: 22208)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !108, file: !109, line: 1511, baseType: !133, size: 32, offset: 22336)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !108, file: !109, line: 1515, baseType: !3257, size: 64, offset: 22400)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !143, line: 56, size: 64, elements: !3258)
!3258 = !{!3259}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3257, file: !143, line: 57, baseType: !146, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !108, file: !109, line: 1518, baseType: !3257, size: 64, offset: 22464)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !108, file: !109, line: 1528, baseType: !506, size: 128, align: 64, offset: 22528)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !108, file: !109, line: 1552, baseType: !3263, size: 35328, offset: 23040)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3264, line: 430, size: 35328, elements: !3265)
!3264 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3265 = !{!3266, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3295, !3296, !3297, !3298, !3299, !3300, !3303, !3304, !3305, !3306}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3263, file: !3264, line: 432, baseType: !3267, size: 192)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3268, size: 192, elements: !564)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3269, line: 16, size: 64, elements: !3270)
!3269 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3268, file: !3269, line: 17, baseType: !153, size: 16)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3268, file: !3269, line: 18, baseType: !153, size: 16, offset: 16)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3268, file: !3269, line: 19, baseType: !153, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3268, file: !3269, line: 19, baseType: !153, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3268, file: !3269, line: 19, baseType: !153, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3268, file: !3269, line: 19, baseType: !153, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3268, file: !3269, line: 19, baseType: !153, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3268, file: !3269, line: 20, baseType: !153, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3268, file: !3269, line: 20, baseType: !153, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3268, file: !3269, line: 20, baseType: !153, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3268, file: !3269, line: 20, baseType: !153, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3268, file: !3269, line: 20, baseType: !153, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3268, file: !3269, line: 20, baseType: !153, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3263, file: !3264, line: 436, baseType: !101, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3263, file: !3264, line: 440, baseType: !155, size: 16, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3263, file: !3264, line: 441, baseType: !155, size: 16, offset: 272)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3263, file: !3264, line: 442, baseType: !155, size: 16, offset: 288)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3263, file: !3264, line: 443, baseType: !155, size: 16, offset: 304)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3263, file: !3264, line: 447, baseType: !101, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3263, file: !3264, line: 448, baseType: !101, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3263, file: !3264, line: 459, baseType: !3292, size: 256, offset: 448)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3293, size: 256, elements: !585)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3264, line: 428, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3263, file: !3264, line: 461, baseType: !101, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3263, file: !3264, line: 463, baseType: !101, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3263, file: !3264, line: 465, baseType: !101, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3263, file: !3264, line: 466, baseType: !101, size: 64, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3263, file: !3264, line: 467, baseType: !101, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3263, file: !3264, line: 473, baseType: !3301, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3264, line: 10, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3263, file: !3264, line: 480, baseType: !101, size: 64, offset: 1088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3263, file: !3264, line: 482, baseType: !12, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3263, file: !3264, line: 491, baseType: !118, size: 32, offset: 1184)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3263, file: !3264, line: 501, baseType: !3307, size: 33792, offset: 1536)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3308, line: 448, size: 33792, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3309 = !{!3310, !3311, !3312, !3474, !3475, !3481, !3482}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3307, file: !3308, line: 461, baseType: !12, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3307, file: !3308, line: 468, baseType: !101, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3307, file: !3308, line: 476, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3308, line: 356, size: 33280, align: 512, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3314, file: !3308, line: 358, baseType: !12, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3314, file: !3308, line: 361, baseType: !12, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3314, file: !3308, line: 364, baseType: !94, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3314, file: !3308, line: 367, baseType: !94, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3314, file: !3308, line: 370, baseType: !94, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3314, file: !3308, line: 373, baseType: !12, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3314, file: !3308, line: 376, baseType: !12, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3314, file: !3308, line: 391, baseType: !12, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3314, file: !3308, line: 394, baseType: !12, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3314, file: !3308, line: 397, baseType: !3326, size: 32768, offset: 512)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3308, line: 348, size: 32768, elements: !3327)
!3327 = !{!3328, !3343, !3380, !3457, !3470}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3326, file: !3308, line: 349, baseType: !3329, size: 896)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3308, line: 12, size: 896, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3342}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3329, file: !3308, line: 13, baseType: !118, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3329, file: !3308, line: 14, baseType: !118, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3329, file: !3308, line: 15, baseType: !118, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3329, file: !3308, line: 16, baseType: !118, size: 32, offset: 96)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3329, file: !3308, line: 17, baseType: !118, size: 32, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3329, file: !3308, line: 18, baseType: !118, size: 32, offset: 160)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3329, file: !3308, line: 19, baseType: !118, size: 32, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3329, file: !3308, line: 22, baseType: !3339, size: 640, offset: 224)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, elements: !3340)
!3340 = !{!3341}
!3341 = !DISubrange(count: 20)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3329, file: !3308, line: 25, baseType: !118, size: 32, offset: 864)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3326, file: !3308, line: 350, baseType: !3344, size: 4096, align: 128)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3308, line: 34, size: 4096, align: 128, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3365, !3366, !3367, !3369, !3371, !3375}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3344, file: !3308, line: 35, baseType: !153, size: 16)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3344, file: !3308, line: 36, baseType: !153, size: 16, offset: 16)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3344, file: !3308, line: 37, baseType: !153, size: 16, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3344, file: !3308, line: 38, baseType: !153, size: 16, offset: 48)
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !3308, line: 39, baseType: !3351, size: 128, offset: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !3308, line: 39, size: 128, elements: !3352)
!3352 = !{!3353, !3358}
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !3308, line: 40, baseType: !3354, size: 128)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3351, file: !3308, line: 40, size: 128, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3354, file: !3308, line: 41, baseType: !94, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3354, file: !3308, line: 42, baseType: !94, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !3308, line: 44, baseType: !3359, size: 128)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3351, file: !3308, line: 44, size: 128, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3359, file: !3308, line: 45, baseType: !118, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3359, file: !3308, line: 46, baseType: !118, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3359, file: !3308, line: 47, baseType: !118, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3359, file: !3308, line: 48, baseType: !118, size: 32, offset: 96)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3344, file: !3308, line: 51, baseType: !118, size: 32, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3344, file: !3308, line: 52, baseType: !118, size: 32, offset: 224)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3344, file: !3308, line: 55, baseType: !3368, size: 1024, offset: 256)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !1556)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3344, file: !3308, line: 58, baseType: !3370, size: 2048, offset: 1280)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 2048, elements: !2911)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3344, file: !3308, line: 60, baseType: !3372, size: 384, offset: 3328)
!3372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 384, elements: !3373)
!3373 = !{!3374}
!3374 = !DISubrange(count: 12)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !3308, line: 62, baseType: !3376, size: 384, offset: 3712)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !3308, line: 62, size: 384, elements: !3377)
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3376, file: !3308, line: 63, baseType: !3372, size: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3376, file: !3308, line: 64, baseType: !3372, size: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3326, file: !3308, line: 351, baseType: !3381, size: 1088)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3308, line: 79, size: 1088, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3456}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3381, file: !3308, line: 80, baseType: !118, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3381, file: !3308, line: 81, baseType: !118, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3381, file: !3308, line: 82, baseType: !118, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3381, file: !3308, line: 83, baseType: !118, size: 32, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3381, file: !3308, line: 84, baseType: !118, size: 32, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3381, file: !3308, line: 85, baseType: !118, size: 32, offset: 160)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3381, file: !3308, line: 86, baseType: !118, size: 32, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3381, file: !3308, line: 88, baseType: !3339, size: 640, offset: 224)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3381, file: !3308, line: 89, baseType: !296, size: 8, offset: 864)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3381, file: !3308, line: 90, baseType: !296, size: 8, offset: 872)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3381, file: !3308, line: 91, baseType: !296, size: 8, offset: 880)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3381, file: !3308, line: 92, baseType: !296, size: 8, offset: 888)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3381, file: !3308, line: 93, baseType: !296, size: 8, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3381, file: !3308, line: 94, baseType: !296, size: 8, offset: 904)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3381, file: !3308, line: 95, baseType: !3398, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3400, line: 11, size: 128, elements: !3401)
!3400 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3399, file: !3400, line: 12, baseType: !1042, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3399, file: !3400, line: 13, baseType: !3404, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3406, line: 103, size: 1344, elements: !3407)
!3406 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3436, !3437, !3438}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3405, file: !3406, line: 109, baseType: !101, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3405, file: !3406, line: 110, baseType: !101, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3405, file: !3406, line: 111, baseType: !101, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3405, file: !3406, line: 112, baseType: !101, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3405, file: !3406, line: 113, baseType: !101, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3405, file: !3406, line: 114, baseType: !101, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3405, file: !3406, line: 117, baseType: !101, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3405, file: !3406, line: 118, baseType: !101, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3405, file: !3406, line: 119, baseType: !101, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3405, file: !3406, line: 120, baseType: !101, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3405, file: !3406, line: 121, baseType: !101, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3405, file: !3406, line: 122, baseType: !101, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3405, file: !3406, line: 123, baseType: !101, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3405, file: !3406, line: 124, baseType: !101, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3405, file: !3406, line: 125, baseType: !101, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3405, file: !3406, line: 139, baseType: !101, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3405, file: !3406, line: 142, baseType: !101, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3406, line: 144, baseType: !3426, size: 64, offset: 1088)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3406, line: 144, size: 64, elements: !3427)
!3427 = !{!3428, !3429, !3430}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3426, file: !3406, line: 146, baseType: !153, size: 16)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3426, file: !3406, line: 148, baseType: !94, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3426, file: !3406, line: 150, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3406, line: 59, size: 64, elements: !3432)
!3432 = !{!3433, !3434, !3435}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3431, file: !3406, line: 61, baseType: !94, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3431, file: !3406, line: 63, baseType: !94, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3431, file: !3406, line: 65, baseType: !94, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3405, file: !3406, line: 153, baseType: !101, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3405, file: !3406, line: 154, baseType: !101, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3406, line: 156, baseType: !3439, size: 64, offset: 1280)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3406, line: 156, size: 64, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3439, file: !3406, line: 158, baseType: !153, size: 16)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3439, file: !3406, line: 160, baseType: !94, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3439, file: !3406, line: 162, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3406, line: 69, size: 64, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3444, file: !3406, line: 71, baseType: !94, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3444, file: !3406, line: 73, baseType: !94, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3444, file: !3406, line: 75, baseType: !94, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3444, file: !3406, line: 77, baseType: !94, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3444, file: !3406, line: 80, baseType: !94, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3444, file: !3406, line: 83, baseType: !94, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3444, file: !3406, line: 86, baseType: !94, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3444, file: !3406, line: 88, baseType: !94, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3444, file: !3406, line: 93, baseType: !94, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3444, file: !3406, line: 100, baseType: !94, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3381, file: !3308, line: 96, baseType: !118, size: 32, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3326, file: !3308, line: 352, baseType: !3458, size: 4608, align: 512)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3308, line: 333, size: 4608, align: 512, elements: !3459)
!3459 = !{!3460, !3461, !3468}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3458, file: !3308, line: 334, baseType: !3344, size: 4096, align: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3458, file: !3308, line: 335, baseType: !3462, size: 512, offset: 4096)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3308, line: 312, size: 512, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3462, file: !3308, line: 313, baseType: !94, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3462, file: !3308, line: 314, baseType: !94, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3462, file: !3308, line: 315, baseType: !3467, size: 384, offset: 128)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 384, elements: !761)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3458, file: !3308, line: 336, baseType: !3469, offset: 4608)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !653)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3326, file: !3308, line: 353, baseType: !3471, size: 32768)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 32768, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 4096)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3307, file: !3308, line: 484, baseType: !3313, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3307, file: !3308, line: 491, baseType: !3476, size: 128, offset: 256)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3308, line: 404, size: 128, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3476, file: !3308, line: 424, baseType: !94, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3476, file: !3308, line: 432, baseType: !12, size: 32, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3476, file: !3308, line: 440, baseType: !12, size: 32, offset: 96)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3307, file: !3308, line: 498, baseType: !3476, size: 128, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3307, file: !3308, line: 508, baseType: !3314, size: 33280, align: 512, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1042)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!3488 = !{!0}
!3489 = !{!"rsp"}
!3490 = !{i32 7, !"Dwarf Version", i32 5}
!3491 = !{i32 2, !"Debug Info Version", i32 3}
!3492 = !{i32 1, !"wchar_size", i32 2}
!3493 = !{i32 8, !"cf-protection-branch", i32 1}
!3494 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3495 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3496 = !{i32 1, !"Code Model", i32 2}
!3497 = !{i32 1, !"override-stack-alignment", i32 8}
!3498 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3499 = distinct !DISubprogram(name: "syscall_user_dispatch", scope: !8, file: !8, line: 35, type: !3500, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!774, !3404}
!3502 = !{!3503, !3504, !3506, !3507, !3512, !3513}
!3503 = !DILocalVariable(name: "regs", arg: 1, scope: !3499, file: !8, line: 35, type: !3404)
!3504 = !DILocalVariable(name: "sd", scope: !3499, file: !8, line: 37, type: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!3506 = !DILocalVariable(name: "state", scope: !3499, file: !8, line: 38, type: !4)
!3507 = !DILocalVariable(name: "__ret_gu", scope: !3508, file: !8, line: 51, type: !133)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !8, line: 51, column: 7)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !8, line: 51, column: 7)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !8, line: 46, column: 28)
!3511 = distinct !DILexicalBlock(scope: !3499, file: !8, line: 46, column: 6)
!3512 = !DILocalVariable(name: "__val_gu", scope: !3508, file: !8, line: 51, type: !298)
!3513 = !DILocalVariable(name: "__tmp", scope: !3514, file: !8, line: 51, type: !94)
!3514 = distinct !DILexicalBlock(scope: !3508, file: !8, line: 51, column: 7)
!3515 = !DILocation(line: 35, column: 44, scope: !3499)
!3516 = !DILocation(line: 37, column: 2, scope: !3499)
!3517 = !DILocation(line: 37, column: 32, scope: !3499)
!3518 = !DILocation(line: 37, column: 38, scope: !3499)
!3519 = !DILocation(line: 37, column: 47, scope: !3499)
!3520 = !DILocation(line: 38, column: 2, scope: !3499)
!3521 = !DILocation(line: 38, column: 7, scope: !3499)
!3522 = !DILocation(line: 40, column: 6, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3499, file: !8, line: 40, column: 6)
!3524 = !DILocation(line: 40, column: 6, scope: !3499)
!3525 = !DILocation(line: 41, column: 3, scope: !3523)
!3526 = !DILocation(line: 43, column: 6, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3499, file: !8, line: 43, column: 6)
!3528 = !DILocation(line: 43, column: 6, scope: !3499)
!3529 = !DILocation(line: 44, column: 3, scope: !3527)
!3530 = !DILocation(line: 46, column: 6, scope: !3511)
!3531 = !DILocation(line: 46, column: 6, scope: !3499)
!3532 = !DILocation(line: 51, column: 7, scope: !3508)
!3533 = !{i64 2154146130}
!3534 = !DILocation(line: 51, column: 7, scope: !3514)
!3535 = !DILocation(line: 51, column: 7, scope: !3509)
!3536 = !DILocation(line: 51, column: 7, scope: !3510)
!3537 = !DILocation(line: 52, column: 4, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3509, file: !8, line: 51, column: 50)
!3539 = !DILocation(line: 53, column: 4, scope: !3538)
!3540 = !DILocation(line: 56, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3510, file: !8, line: 56, column: 7)
!3542 = !DILocation(line: 56, column: 7, scope: !3510)
!3543 = !DILocation(line: 57, column: 4, scope: !3541)
!3544 = !DILocation(line: 59, column: 7, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3510, file: !8, line: 59, column: 7)
!3546 = !DILocation(line: 59, column: 13, scope: !3545)
!3547 = !DILocation(line: 59, column: 7, scope: !3510)
!3548 = !DILocation(line: 60, column: 4, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !8, line: 59, column: 47)
!3550 = !DILocation(line: 61, column: 4, scope: !3549)
!3551 = !DILocation(line: 63, column: 2, scope: !3510)
!3552 = !DILocation(line: 65, column: 2, scope: !3499)
!3553 = !DILocation(line: 65, column: 6, scope: !3499)
!3554 = !DILocation(line: 65, column: 18, scope: !3499)
!3555 = !DILocation(line: 66, column: 19, scope: !3499)
!3556 = !DILocation(line: 66, column: 28, scope: !3499)
!3557 = !DILocation(line: 66, column: 2, scope: !3499)
!3558 = !DILocation(line: 67, column: 17, scope: !3499)
!3559 = !DILocation(line: 67, column: 2, scope: !3499)
!3560 = !DILocation(line: 69, column: 2, scope: !3499)
!3561 = !DILocation(line: 70, column: 1, scope: !3499)
!3562 = distinct !DISubprogram(name: "get_current", scope: !3563, file: !3563, line: 39, type: !3564, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3566)
!3563 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!107}
!3566 = !{!3567, !3569, !3571}
!3567 = !DILocalVariable(name: "pscr_ret__", scope: !3568, file: !3563, line: 41, type: !107)
!3568 = distinct !DILexicalBlock(scope: !3562, file: !3563, line: 41, column: 9)
!3569 = !DILocalVariable(name: "__vpp_verify", scope: !3570, file: !3563, line: 41, type: !2511)
!3570 = distinct !DILexicalBlock(scope: !3568, file: !3563, line: 41, column: 9)
!3571 = !DILocalVariable(name: "pfo_val__", scope: !3572, file: !3563, line: 41, type: !94)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !3563, line: 41, column: 9)
!3573 = !DILocation(line: 41, column: 9, scope: !3568)
!3574 = !DILocation(line: 41, column: 9, scope: !3570)
!3575 = !DILocation(line: 41, column: 9, scope: !3572)
!3576 = !{i64 2148193277}
!3577 = !DILocation(line: 41, column: 9, scope: !3562)
!3578 = !DILocation(line: 41, column: 2, scope: !3562)
!3579 = distinct !DISubprogram(name: "instruction_pointer", scope: !3406, file: !3406, line: 285, type: !3580, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!101, !3404}
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "regs", arg: 1, scope: !3579, file: !3406, line: 285, type: !3404)
!3584 = !DILocation(line: 285, column: 65, scope: !3579)
!3585 = !DILocation(line: 287, column: 9, scope: !3579)
!3586 = !DILocation(line: 287, column: 15, scope: !3579)
!3587 = !DILocation(line: 287, column: 2, scope: !3579)
!3588 = !DISubprogram(name: "arch_syscall_is_vdso_sigreturn", scope: !3589, file: !3589, line: 379, type: !3500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3589 = !DIFile(filename: "./arch/x86/include/asm/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32e72248bc6ddafa8bbab996ffdd88dd")
!3590 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !3591, file: !3591, line: 70, type: !3592, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3594)
!3591 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !2511, !1084}
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "address", arg: 1, scope: !3590, file: !3591, line: 70, type: !2511)
!3596 = !DILocalVariable(name: "size", arg: 2, scope: !3590, file: !3591, line: 70, type: !1084)
!3597 = !DILocation(line: 70, column: 54, scope: !3590)
!3598 = !DILocation(line: 70, column: 70, scope: !3590)
!3599 = !DILocation(line: 72, column: 1, scope: !3590)
!3600 = !DISubprogram(name: "force_exit_sig", scope: !2745, file: !2745, line: 347, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3601 = distinct !DISubprogram(name: "syscall_rollback", scope: !3602, file: !3602, line: 41, type: !3603, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3605)
!3602 = !DIFile(filename: "./arch/x86/include/asm/syscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "757a8fbb630f22ac4219812d1d4dd322")
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !107, !3404}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "task", arg: 1, scope: !3601, file: !3602, line: 41, type: !107)
!3607 = !DILocalVariable(name: "regs", arg: 2, scope: !3601, file: !3602, line: 42, type: !3404)
!3608 = !DILocation(line: 41, column: 57, scope: !3601)
!3609 = !DILocation(line: 42, column: 25, scope: !3601)
!3610 = !DILocation(line: 44, column: 13, scope: !3601)
!3611 = !DILocation(line: 44, column: 19, scope: !3601)
!3612 = !DILocation(line: 44, column: 2, scope: !3601)
!3613 = !DILocation(line: 44, column: 8, scope: !3601)
!3614 = !DILocation(line: 44, column: 11, scope: !3601)
!3615 = !DILocation(line: 45, column: 1, scope: !3601)
!3616 = distinct !DISubprogram(name: "trigger_sigsys", scope: !8, file: !8, line: 20, type: !3617, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3404}
!3619 = !{!3620, !3621, !3622}
!3620 = !DILocalVariable(name: "regs", arg: 1, scope: !3616, file: !8, line: 20, type: !3404)
!3621 = !DILocalVariable(name: "info", scope: !3616, file: !8, line: 22, type: !2982)
!3622 = !DILocalVariable(name: "__ptr", scope: !3623, file: !8, line: 27, type: !101)
!3623 = distinct !DILexicalBlock(scope: !3616, file: !8, line: 27, column: 37)
!3624 = !DILocation(line: 20, column: 44, scope: !3616)
!3625 = !DILocation(line: 22, column: 2, scope: !3616)
!3626 = !DILocation(line: 22, column: 24, scope: !3616)
!3627 = !DILocation(line: 24, column: 2, scope: !3616)
!3628 = !DILocation(line: 25, column: 7, scope: !3616)
!3629 = !DILocation(line: 25, column: 16, scope: !3616)
!3630 = !DILocation(line: 26, column: 7, scope: !3616)
!3631 = !DILocation(line: 26, column: 15, scope: !3616)
!3632 = !DILocation(line: 27, column: 37, scope: !3623)
!3633 = !DILocation(line: 27, column: 37, scope: !3616)
!3634 = !DILocation(line: 27, column: 22, scope: !3616)
!3635 = !DILocation(line: 27, column: 7, scope: !3616)
!3636 = !DILocation(line: 27, column: 20, scope: !3616)
!3637 = !DILocation(line: 28, column: 7, scope: !3616)
!3638 = !DILocation(line: 28, column: 16, scope: !3616)
!3639 = !DILocation(line: 29, column: 34, scope: !3616)
!3640 = !DILocation(line: 29, column: 17, scope: !3616)
!3641 = !DILocation(line: 29, column: 7, scope: !3616)
!3642 = !DILocation(line: 29, column: 15, scope: !3616)
!3643 = !DILocation(line: 30, column: 35, scope: !3616)
!3644 = !DILocation(line: 30, column: 44, scope: !3616)
!3645 = !DILocation(line: 30, column: 20, scope: !3616)
!3646 = !DILocation(line: 30, column: 7, scope: !3616)
!3647 = !DILocation(line: 30, column: 18, scope: !3616)
!3648 = !DILocation(line: 32, column: 2, scope: !3616)
!3649 = !DILocation(line: 33, column: 1, scope: !3616)
!3650 = distinct !DISubprogram(name: "set_syscall_user_dispatch", scope: !8, file: !8, line: 121, type: !3651, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!133, !101, !101, !101, !105}
!3653 = !{!3654, !3655, !3656, !3657}
!3654 = !DILocalVariable(name: "mode", arg: 1, scope: !3650, file: !8, line: 121, type: !101)
!3655 = !DILocalVariable(name: "offset", arg: 2, scope: !3650, file: !8, line: 121, type: !101)
!3656 = !DILocalVariable(name: "len", arg: 3, scope: !3650, file: !8, line: 122, type: !101)
!3657 = !DILocalVariable(name: "selector", arg: 4, scope: !3650, file: !8, line: 122, type: !105)
!3658 = !DILocation(line: 121, column: 45, scope: !3650)
!3659 = !DILocation(line: 121, column: 65, scope: !3650)
!3660 = !DILocation(line: 122, column: 24, scope: !3650)
!3661 = !DILocation(line: 122, column: 42, scope: !3650)
!3662 = !DILocation(line: 124, column: 40, scope: !3650)
!3663 = !DILocation(line: 124, column: 49, scope: !3650)
!3664 = !DILocation(line: 124, column: 55, scope: !3650)
!3665 = !DILocation(line: 124, column: 63, scope: !3650)
!3666 = !DILocation(line: 124, column: 68, scope: !3650)
!3667 = !DILocation(line: 124, column: 9, scope: !3650)
!3668 = !DILocation(line: 124, column: 2, scope: !3650)
!3669 = distinct !DISubprogram(name: "task_set_syscall_user_dispatch", scope: !8, file: !8, line: 72, type: !3670, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!133, !107, !101, !101, !101, !105}
!3672 = !{!3673, !3674, !3675, !3676, !3677}
!3673 = !DILocalVariable(name: "task", arg: 1, scope: !3669, file: !8, line: 72, type: !107)
!3674 = !DILocalVariable(name: "mode", arg: 2, scope: !3669, file: !8, line: 72, type: !101)
!3675 = !DILocalVariable(name: "offset", arg: 3, scope: !3669, file: !8, line: 73, type: !101)
!3676 = !DILocalVariable(name: "len", arg: 4, scope: !3669, file: !8, line: 73, type: !101)
!3677 = !DILocalVariable(name: "selector", arg: 5, scope: !3669, file: !8, line: 74, type: !105)
!3678 = !DILocation(line: 72, column: 63, scope: !3669)
!3679 = !DILocation(line: 72, column: 83, scope: !3669)
!3680 = !DILocation(line: 73, column: 22, scope: !3669)
!3681 = !DILocation(line: 73, column: 44, scope: !3669)
!3682 = !DILocation(line: 74, column: 21, scope: !3669)
!3683 = !DILocation(line: 76, column: 10, scope: !3669)
!3684 = !DILocation(line: 76, column: 2, scope: !3669)
!3685 = !DILocation(line: 78, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !8, line: 78, column: 7)
!3687 = distinct !DILexicalBlock(scope: !3669, file: !8, line: 76, column: 16)
!3688 = !DILocation(line: 78, column: 14, scope: !3686)
!3689 = !DILocation(line: 78, column: 17, scope: !3686)
!3690 = !DILocation(line: 78, column: 21, scope: !3686)
!3691 = !DILocation(line: 78, column: 24, scope: !3686)
!3692 = !DILocation(line: 78, column: 7, scope: !3687)
!3693 = !DILocation(line: 79, column: 4, scope: !3686)
!3694 = !DILocation(line: 80, column: 3, scope: !3687)
!3695 = !DILocation(line: 88, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3687, file: !8, line: 88, column: 7)
!3697 = !DILocation(line: 88, column: 14, scope: !3696)
!3698 = !DILocation(line: 88, column: 17, scope: !3696)
!3699 = !DILocation(line: 88, column: 26, scope: !3696)
!3700 = !DILocation(line: 88, column: 24, scope: !3696)
!3701 = !DILocation(line: 88, column: 33, scope: !3696)
!3702 = !DILocation(line: 88, column: 30, scope: !3696)
!3703 = !DILocation(line: 88, column: 7, scope: !3687)
!3704 = !DILocation(line: 89, column: 4, scope: !3696)
!3705 = !DILocation(line: 100, column: 7, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3687, file: !8, line: 100, column: 7)
!3707 = !DILocation(line: 100, column: 16, scope: !3706)
!3708 = !DILocation(line: 100, column: 20, scope: !3706)
!3709 = !DILocation(line: 100, column: 7, scope: !3687)
!3710 = !DILocation(line: 101, column: 4, scope: !3706)
!3711 = !DILocation(line: 103, column: 3, scope: !3687)
!3712 = !DILocation(line: 105, column: 3, scope: !3687)
!3713 = !DILocation(line: 108, column: 36, scope: !3669)
!3714 = !DILocation(line: 108, column: 2, scope: !3669)
!3715 = !DILocation(line: 108, column: 8, scope: !3669)
!3716 = !DILocation(line: 108, column: 25, scope: !3669)
!3717 = !DILocation(line: 108, column: 34, scope: !3669)
!3718 = !DILocation(line: 109, column: 34, scope: !3669)
!3719 = !DILocation(line: 109, column: 2, scope: !3669)
!3720 = !DILocation(line: 109, column: 8, scope: !3669)
!3721 = !DILocation(line: 109, column: 25, scope: !3669)
!3722 = !DILocation(line: 109, column: 32, scope: !3669)
!3723 = !DILocation(line: 110, column: 31, scope: !3669)
!3724 = !DILocation(line: 110, column: 2, scope: !3669)
!3725 = !DILocation(line: 110, column: 8, scope: !3669)
!3726 = !DILocation(line: 110, column: 25, scope: !3669)
!3727 = !DILocation(line: 110, column: 29, scope: !3669)
!3728 = !DILocation(line: 111, column: 2, scope: !3669)
!3729 = !DILocation(line: 111, column: 8, scope: !3669)
!3730 = !DILocation(line: 111, column: 25, scope: !3669)
!3731 = !DILocation(line: 111, column: 37, scope: !3669)
!3732 = !DILocation(line: 113, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3669, file: !8, line: 113, column: 6)
!3734 = !DILocation(line: 113, column: 11, scope: !3733)
!3735 = !DILocation(line: 113, column: 6, scope: !3669)
!3736 = !DILocation(line: 114, column: 3, scope: !3733)
!3737 = !DILocation(line: 116, column: 3, scope: !3733)
!3738 = !DILocation(line: 118, column: 2, scope: !3669)
!3739 = !DILocation(line: 119, column: 1, scope: !3669)
!3740 = distinct !DISubprogram(name: "syscall_user_dispatch_get_config", scope: !8, file: !8, line: 127, type: !3741, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!133, !107, !101, !102}
!3743 = !{!3744, !3745, !3746, !3747, !3748}
!3744 = !DILocalVariable(name: "task", arg: 1, scope: !3740, file: !8, line: 127, type: !107)
!3745 = !DILocalVariable(name: "size", arg: 2, scope: !3740, file: !8, line: 127, type: !101)
!3746 = !DILocalVariable(name: "data", arg: 3, scope: !3740, file: !8, line: 128, type: !102)
!3747 = !DILocalVariable(name: "sd", scope: !3740, file: !8, line: 130, type: !3505)
!3748 = !DILocalVariable(name: "cfg", scope: !3740, file: !8, line: 131, type: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptrace_sud_config", file: !3750, line: 138, size: 256, elements: !3751)
!3750 = !DIFile(filename: "./include/uapi/linux/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "34de8b2b51160c136d41d327647139ec")
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3749, file: !3750, line: 139, baseType: !96, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3749, file: !3750, line: 140, baseType: !96, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3749, file: !3750, line: 141, baseType: !96, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3749, file: !3750, line: 142, baseType: !96, size: 64, offset: 192)
!3756 = !DILocation(line: 127, column: 58, scope: !3740)
!3757 = !DILocation(line: 127, column: 78, scope: !3740)
!3758 = !DILocation(line: 128, column: 23, scope: !3740)
!3759 = !DILocation(line: 130, column: 2, scope: !3740)
!3760 = !DILocation(line: 130, column: 32, scope: !3740)
!3761 = !DILocation(line: 130, column: 38, scope: !3740)
!3762 = !DILocation(line: 130, column: 44, scope: !3740)
!3763 = !DILocation(line: 131, column: 2, scope: !3740)
!3764 = !DILocation(line: 131, column: 27, scope: !3740)
!3765 = !DILocation(line: 133, column: 6, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3740, file: !8, line: 133, column: 6)
!3767 = !DILocation(line: 133, column: 11, scope: !3766)
!3768 = !DILocation(line: 133, column: 6, scope: !3740)
!3769 = !DILocation(line: 134, column: 3, scope: !3766)
!3770 = !DILocation(line: 136, column: 6, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3740, file: !8, line: 136, column: 6)
!3772 = !DILocation(line: 136, column: 6, scope: !3740)
!3773 = !DILocation(line: 137, column: 7, scope: !3771)
!3774 = !DILocation(line: 137, column: 12, scope: !3771)
!3775 = !DILocation(line: 137, column: 3, scope: !3771)
!3776 = !DILocation(line: 139, column: 7, scope: !3771)
!3777 = !DILocation(line: 139, column: 12, scope: !3771)
!3778 = !DILocation(line: 141, column: 15, scope: !3740)
!3779 = !DILocation(line: 141, column: 19, scope: !3740)
!3780 = !DILocation(line: 141, column: 6, scope: !3740)
!3781 = !DILocation(line: 141, column: 13, scope: !3740)
!3782 = !DILocation(line: 142, column: 12, scope: !3740)
!3783 = !DILocation(line: 142, column: 16, scope: !3740)
!3784 = !DILocation(line: 142, column: 6, scope: !3740)
!3785 = !DILocation(line: 142, column: 10, scope: !3740)
!3786 = !DILocation(line: 143, column: 35, scope: !3740)
!3787 = !DILocation(line: 143, column: 39, scope: !3740)
!3788 = !DILocation(line: 143, column: 24, scope: !3740)
!3789 = !DILocation(line: 143, column: 6, scope: !3740)
!3790 = !DILocation(line: 143, column: 15, scope: !3740)
!3791 = !DILocation(line: 145, column: 19, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3740, file: !8, line: 145, column: 6)
!3793 = !DILocation(line: 145, column: 6, scope: !3792)
!3794 = !DILocation(line: 145, column: 6, scope: !3740)
!3795 = !DILocation(line: 146, column: 3, scope: !3792)
!3796 = !DILocation(line: 148, column: 2, scope: !3740)
!3797 = !DILocation(line: 149, column: 1, scope: !3740)
!3798 = distinct !DISubprogram(name: "const_test_bit", scope: !3799, file: !3799, line: 166, type: !3800, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3805)
!3799 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!774, !101, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!3805 = !{!3806, !3807, !3808, !3809, !3810}
!3806 = !DILocalVariable(name: "nr", arg: 1, scope: !3798, file: !3799, line: 166, type: !101)
!3807 = !DILocalVariable(name: "addr", arg: 2, scope: !3798, file: !3799, line: 166, type: !3802)
!3808 = !DILocalVariable(name: "p", scope: !3798, file: !3799, line: 168, type: !103)
!3809 = !DILocalVariable(name: "mask", scope: !3798, file: !3799, line: 169, type: !101)
!3810 = !DILocalVariable(name: "val", scope: !3798, file: !3799, line: 170, type: !101)
!3811 = !DILocation(line: 166, column: 30, scope: !3798)
!3812 = !DILocation(line: 166, column: 64, scope: !3798)
!3813 = !DILocation(line: 168, column: 2, scope: !3798)
!3814 = !DILocation(line: 168, column: 23, scope: !3798)
!3815 = !DILocation(line: 168, column: 50, scope: !3798)
!3816 = !DILocation(line: 168, column: 57, scope: !3798)
!3817 = !DILocation(line: 168, column: 55, scope: !3798)
!3818 = !DILocation(line: 169, column: 2, scope: !3798)
!3819 = !DILocation(line: 169, column: 16, scope: !3798)
!3820 = !DILocation(line: 169, column: 23, scope: !3798)
!3821 = !DILocation(line: 170, column: 2, scope: !3798)
!3822 = !DILocation(line: 170, column: 16, scope: !3798)
!3823 = !DILocation(line: 170, column: 23, scope: !3798)
!3824 = !DILocation(line: 170, column: 22, scope: !3798)
!3825 = !DILocation(line: 172, column: 12, scope: !3798)
!3826 = !DILocation(line: 172, column: 18, scope: !3798)
!3827 = !DILocation(line: 172, column: 16, scope: !3798)
!3828 = !DILocation(line: 172, column: 10, scope: !3798)
!3829 = !DILocation(line: 172, column: 9, scope: !3798)
!3830 = !DILocation(line: 173, column: 1, scope: !3798)
!3831 = !DILocation(line: 172, column: 2, scope: !3798)
!3832 = distinct !DISubprogram(name: "_test_bit", scope: !3833, file: !3833, line: 139, type: !3800, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3834)
!3833 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "nr", arg: 1, scope: !3832, file: !3833, line: 139, type: !101)
!3836 = !DILocalVariable(name: "addr", arg: 2, scope: !3832, file: !3833, line: 139, type: !3802)
!3837 = !DILocation(line: 139, column: 25, scope: !3832)
!3838 = !DILocation(line: 139, column: 59, scope: !3832)
!3839 = !DILocation(line: 141, column: 25, scope: !3832)
!3840 = !DILocation(line: 141, column: 32, scope: !3832)
!3841 = !DILocation(line: 141, column: 30, scope: !3832)
!3842 = !DILocation(line: 141, column: 2, scope: !3832)
!3843 = !DILocation(line: 142, column: 23, scope: !3832)
!3844 = !DILocation(line: 142, column: 27, scope: !3832)
!3845 = !DILocation(line: 142, column: 9, scope: !3832)
!3846 = !DILocation(line: 142, column: 2, scope: !3832)
!3847 = distinct !DISubprogram(name: "copy_to_user", scope: !3848, file: !3848, line: 188, type: !3849, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3851)
!3848 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!101, !102, !2511, !101}
!3851 = !{!3852, !3853, !3854}
!3852 = !DILocalVariable(name: "to", arg: 1, scope: !3847, file: !3848, line: 188, type: !102)
!3853 = !DILocalVariable(name: "from", arg: 2, scope: !3847, file: !3848, line: 188, type: !2511)
!3854 = !DILocalVariable(name: "n", arg: 3, scope: !3847, file: !3848, line: 188, type: !101)
!3855 = !DILocation(line: 188, column: 27, scope: !3847)
!3856 = !DILocation(line: 188, column: 43, scope: !3847)
!3857 = !DILocation(line: 188, column: 63, scope: !3847)
!3858 = !DILocation(line: 190, column: 22, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 190, column: 6)
!3860 = !DILocation(line: 190, column: 28, scope: !3859)
!3861 = !DILocation(line: 190, column: 6, scope: !3859)
!3862 = !DILocation(line: 190, column: 6, scope: !3847)
!3863 = !DILocation(line: 191, column: 21, scope: !3859)
!3864 = !DILocation(line: 191, column: 25, scope: !3859)
!3865 = !DILocation(line: 191, column: 31, scope: !3859)
!3866 = !DILocation(line: 191, column: 7, scope: !3859)
!3867 = !DILocation(line: 191, column: 5, scope: !3859)
!3868 = !DILocation(line: 191, column: 3, scope: !3859)
!3869 = !DILocation(line: 192, column: 9, scope: !3847)
!3870 = !DILocation(line: 192, column: 2, scope: !3847)
!3871 = distinct !DISubprogram(name: "syscall_user_dispatch_set_config", scope: !8, file: !8, line: 151, type: !3741, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3872)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DILocalVariable(name: "task", arg: 1, scope: !3871, file: !8, line: 151, type: !107)
!3874 = !DILocalVariable(name: "size", arg: 2, scope: !3871, file: !8, line: 151, type: !101)
!3875 = !DILocalVariable(name: "data", arg: 3, scope: !3871, file: !8, line: 152, type: !102)
!3876 = !DILocalVariable(name: "cfg", scope: !3871, file: !8, line: 154, type: !3749)
!3877 = !DILocation(line: 151, column: 58, scope: !3871)
!3878 = !DILocation(line: 151, column: 78, scope: !3871)
!3879 = !DILocation(line: 152, column: 23, scope: !3871)
!3880 = !DILocation(line: 154, column: 2, scope: !3871)
!3881 = !DILocation(line: 154, column: 27, scope: !3871)
!3882 = !DILocation(line: 156, column: 6, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3871, file: !8, line: 156, column: 6)
!3884 = !DILocation(line: 156, column: 11, scope: !3883)
!3885 = !DILocation(line: 156, column: 6, scope: !3871)
!3886 = !DILocation(line: 157, column: 3, scope: !3883)
!3887 = !DILocation(line: 159, column: 27, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3871, file: !8, line: 159, column: 6)
!3889 = !DILocation(line: 159, column: 6, scope: !3888)
!3890 = !DILocation(line: 159, column: 6, scope: !3871)
!3891 = !DILocation(line: 160, column: 3, scope: !3888)
!3892 = !DILocation(line: 162, column: 40, scope: !3871)
!3893 = !DILocation(line: 162, column: 50, scope: !3871)
!3894 = !DILocation(line: 162, column: 60, scope: !3871)
!3895 = !DILocation(line: 162, column: 72, scope: !3871)
!3896 = !DILocation(line: 163, column: 42, scope: !3871)
!3897 = !DILocation(line: 163, column: 12, scope: !3871)
!3898 = !DILocation(line: 162, column: 9, scope: !3871)
!3899 = !DILocation(line: 162, column: 2, scope: !3871)
!3900 = !DILocation(line: 164, column: 1, scope: !3871)
!3901 = distinct !DISubprogram(name: "copy_from_user", scope: !3848, file: !3848, line: 180, type: !3849, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3902)
!3902 = !{!3903, !3904, !3905}
!3903 = !DILocalVariable(name: "to", arg: 1, scope: !3901, file: !3848, line: 180, type: !102)
!3904 = !DILocalVariable(name: "from", arg: 2, scope: !3901, file: !3848, line: 180, type: !2511)
!3905 = !DILocalVariable(name: "n", arg: 3, scope: !3901, file: !3848, line: 180, type: !101)
!3906 = !DILocation(line: 180, column: 22, scope: !3901)
!3907 = !DILocation(line: 180, column: 45, scope: !3901)
!3908 = !DILocation(line: 180, column: 65, scope: !3901)
!3909 = !DILocation(line: 182, column: 22, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !3848, line: 182, column: 6)
!3911 = !DILocation(line: 182, column: 26, scope: !3910)
!3912 = !DILocation(line: 182, column: 6, scope: !3910)
!3913 = !DILocation(line: 182, column: 6, scope: !3901)
!3914 = !DILocation(line: 183, column: 23, scope: !3910)
!3915 = !DILocation(line: 183, column: 27, scope: !3910)
!3916 = !DILocation(line: 183, column: 33, scope: !3910)
!3917 = !DILocation(line: 183, column: 7, scope: !3910)
!3918 = !DILocation(line: 183, column: 5, scope: !3910)
!3919 = !DILocation(line: 183, column: 3, scope: !3910)
!3920 = !DILocation(line: 184, column: 9, scope: !3901)
!3921 = !DILocation(line: 184, column: 2, scope: !3901)
!3922 = distinct !DISubprogram(name: "clear_siginfo", scope: !626, file: !626, line: 20, type: !3923, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !2980}
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "info", arg: 1, scope: !3922, file: !626, line: 20, type: !2980)
!3927 = !DILocation(line: 20, column: 52, scope: !3922)
!3928 = !DILocation(line: 22, column: 9, scope: !3922)
!3929 = !DILocation(line: 22, column: 2, scope: !3922)
!3930 = !DILocation(line: 23, column: 1, scope: !3922)
!3931 = distinct !DISubprogram(name: "task_stack_page", scope: !3932, file: !3932, line: 20, type: !3933, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3937)
!3932 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!102, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3937 = !{!3938}
!3938 = !DILocalVariable(name: "task", arg: 1, scope: !3931, file: !3932, line: 20, type: !3935)
!3939 = !DILocation(line: 20, column: 72, scope: !3931)
!3940 = !DILocation(line: 22, column: 9, scope: !3931)
!3941 = !DILocation(line: 22, column: 15, scope: !3931)
!3942 = !DILocation(line: 22, column: 2, scope: !3931)
!3943 = distinct !DISubprogram(name: "syscall_get_arch", scope: !3602, file: !3602, line: 124, type: !3944, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!133, !107}
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "task", arg: 1, scope: !3943, file: !3602, line: 124, type: !107)
!3948 = !DILocation(line: 124, column: 56, scope: !3943)
!3949 = !DILocation(line: 128, column: 3, scope: !3943)
!3950 = !DILocation(line: 128, column: 9, scope: !3943)
!3951 = !DILocation(line: 128, column: 21, scope: !3943)
!3952 = !DILocation(line: 128, column: 28, scope: !3943)
!3953 = !DILocation(line: 127, column: 44, scope: !3943)
!3954 = !DILocation(line: 127, column: 9, scope: !3943)
!3955 = !DILocation(line: 127, column: 2, scope: !3943)
!3956 = distinct !DISubprogram(name: "syscall_get_nr", scope: !3602, file: !3602, line: 36, type: !3957, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!133, !107, !3404}
!3959 = !{!3960, !3961}
!3960 = !DILocalVariable(name: "task", arg: 1, scope: !3956, file: !3602, line: 36, type: !107)
!3961 = !DILocalVariable(name: "regs", arg: 2, scope: !3956, file: !3602, line: 36, type: !3404)
!3962 = !DILocation(line: 36, column: 54, scope: !3956)
!3963 = !DILocation(line: 36, column: 76, scope: !3956)
!3964 = !DILocation(line: 38, column: 9, scope: !3956)
!3965 = !DILocation(line: 38, column: 15, scope: !3956)
!3966 = !DILocation(line: 38, column: 2, scope: !3956)
!3967 = !DISubprogram(name: "force_sig_info", scope: !2745, file: !2745, line: 336, type: !3968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!133, !3970}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!3971 = distinct !DISubprogram(name: "__access_ok", scope: !3972, file: !3972, line: 85, type: !3973, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !3975)
!3972 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!774, !2511, !101}
!3975 = !{!3976, !3977, !3978}
!3976 = !DILocalVariable(name: "ptr", arg: 1, scope: !3971, file: !3972, line: 85, type: !2511)
!3977 = !DILocalVariable(name: "size", arg: 2, scope: !3971, file: !3972, line: 85, type: !101)
!3978 = !DILocalVariable(name: "sum", scope: !3979, file: !3972, line: 90, type: !101)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !3972, line: 89, column: 9)
!3980 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 87, column: 6)
!3981 = !DILocation(line: 85, column: 51, scope: !3971)
!3982 = !DILocation(line: 85, column: 70, scope: !3971)
!3983 = !DILocation(line: 87, column: 27, scope: !3980)
!3984 = !DILocation(line: 87, column: 32, scope: !3980)
!3985 = !DILocation(line: 87, column: 6, scope: !3980)
!3986 = !DILocation(line: 87, column: 46, scope: !3980)
!3987 = !DILocation(line: 87, column: 49, scope: !3980)
!3988 = !DILocation(line: 87, column: 54, scope: !3980)
!3989 = !DILocation(line: 87, column: 6, scope: !3971)
!3990 = !DILocation(line: 88, column: 10, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3980, file: !3972, line: 87, column: 68)
!3992 = !DILocation(line: 88, column: 3, scope: !3991)
!3993 = !DILocation(line: 90, column: 3, scope: !3979)
!3994 = !DILocation(line: 90, column: 17, scope: !3979)
!3995 = !DILocation(line: 90, column: 23, scope: !3979)
!3996 = !DILocation(line: 90, column: 45, scope: !3979)
!3997 = !DILocation(line: 90, column: 30, scope: !3979)
!3998 = !DILocation(line: 90, column: 28, scope: !3979)
!3999 = !DILocation(line: 91, column: 10, scope: !3979)
!4000 = !DILocation(line: 91, column: 34, scope: !3979)
!4001 = !DILocation(line: 91, column: 37, scope: !3979)
!4002 = !DILocation(line: 91, column: 59, scope: !3979)
!4003 = !DILocation(line: 91, column: 44, scope: !3979)
!4004 = !DILocation(line: 91, column: 41, scope: !3979)
!4005 = !DILocation(line: 0, scope: !3979)
!4006 = !DILocation(line: 91, column: 3, scope: !3979)
!4007 = !DILocation(line: 92, column: 2, scope: !3980)
!4008 = !DILocation(line: 93, column: 1, scope: !3971)
!4009 = distinct !DISubprogram(name: "set_bit", scope: !4010, file: !4010, line: 26, type: !4011, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4014)
!4010 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !1042, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "nr", arg: 1, scope: !4009, file: !4010, line: 26, type: !1042)
!4016 = !DILocalVariable(name: "addr", arg: 2, scope: !4009, file: !4010, line: 26, type: !4013)
!4017 = !DILocation(line: 26, column: 42, scope: !4009)
!4018 = !DILocation(line: 26, column: 70, scope: !4009)
!4019 = !DILocation(line: 28, column: 26, scope: !4009)
!4020 = !DILocation(line: 28, column: 33, scope: !4009)
!4021 = !DILocation(line: 28, column: 31, scope: !4009)
!4022 = !DILocation(line: 28, column: 2, scope: !4009)
!4023 = !DILocation(line: 29, column: 15, scope: !4009)
!4024 = !DILocation(line: 29, column: 19, scope: !4009)
!4025 = !DILocation(line: 29, column: 2, scope: !4009)
!4026 = !DILocation(line: 30, column: 1, scope: !4009)
!4027 = distinct !DISubprogram(name: "clear_bit", scope: !4010, file: !4010, line: 39, type: !4011, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4028)
!4028 = !{!4029, !4030}
!4029 = !DILocalVariable(name: "nr", arg: 1, scope: !4027, file: !4010, line: 39, type: !1042)
!4030 = !DILocalVariable(name: "addr", arg: 2, scope: !4027, file: !4010, line: 39, type: !4013)
!4031 = !DILocation(line: 39, column: 44, scope: !4027)
!4032 = !DILocation(line: 39, column: 72, scope: !4027)
!4033 = !DILocation(line: 41, column: 26, scope: !4027)
!4034 = !DILocation(line: 41, column: 33, scope: !4027)
!4035 = !DILocation(line: 41, column: 31, scope: !4027)
!4036 = !DILocation(line: 41, column: 2, scope: !4027)
!4037 = !DILocation(line: 42, column: 17, scope: !4027)
!4038 = !DILocation(line: 42, column: 21, scope: !4027)
!4039 = !DILocation(line: 42, column: 2, scope: !4027)
!4040 = !DILocation(line: 43, column: 1, scope: !4027)
!4041 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4042, file: !4042, line: 80, type: !4043, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4048)
!4042 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !4045, !1084}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "v", arg: 1, scope: !4041, file: !4042, line: 80, type: !4045)
!4050 = !DILocalVariable(name: "size", arg: 2, scope: !4041, file: !4042, line: 80, type: !1084)
!4051 = !DILocation(line: 80, column: 74, scope: !4041)
!4052 = !DILocation(line: 80, column: 84, scope: !4041)
!4053 = !DILocation(line: 82, column: 20, scope: !4041)
!4054 = !DILocation(line: 82, column: 23, scope: !4041)
!4055 = !DILocation(line: 82, column: 2, scope: !4041)
!4056 = !DILocation(line: 83, column: 2, scope: !4041)
!4057 = !DILocation(line: 84, column: 1, scope: !4041)
!4058 = distinct !DISubprogram(name: "arch_set_bit", scope: !4059, file: !4059, line: 52, type: !4011, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4060)
!4059 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4060 = !{!4061, !4062}
!4061 = !DILocalVariable(name: "nr", arg: 1, scope: !4058, file: !4059, line: 52, type: !1042)
!4062 = !DILocalVariable(name: "addr", arg: 2, scope: !4058, file: !4059, line: 52, type: !4013)
!4063 = !DILocation(line: 52, column: 19, scope: !4058)
!4064 = !DILocation(line: 52, column: 47, scope: !4058)
!4065 = !DILocation(line: 54, column: 27, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !4059, line: 54, column: 6)
!4067 = !DILocation(line: 54, column: 6, scope: !4066)
!4068 = !DILocation(line: 54, column: 6, scope: !4058)
!4069 = !DILocation(line: 56, column: 6, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4066, file: !4059, line: 54, column: 32)
!4071 = !DILocation(line: 57, column: 12, scope: !4070)
!4072 = !DILocation(line: 55, column: 3, scope: !4070)
!4073 = !{i64 2147887473, i64 2147887512, i64 2147887533, i64 2147887570, i64 2147887593, i64 2147887463}
!4074 = !DILocation(line: 59, column: 2, scope: !4070)
!4075 = !DILocation(line: 61, column: 8, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4066, file: !4059, line: 59, column: 9)
!4077 = !DILocation(line: 61, column: 32, scope: !4076)
!4078 = !DILocation(line: 60, column: 3, scope: !4076)
!4079 = !{i64 2147887758, i64 2147887797, i64 2147887818, i64 2147887855, i64 2147887878, i64 2147887748}
!4080 = !DILocation(line: 63, column: 1, scope: !4058)
!4081 = distinct !DISubprogram(name: "kasan_check_write", scope: !4082, file: !4082, line: 44, type: !4083, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4085)
!4082 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!774, !4045, !12}
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "p", arg: 1, scope: !4081, file: !4082, line: 44, type: !4045)
!4087 = !DILocalVariable(name: "size", arg: 2, scope: !4081, file: !4082, line: 44, type: !12)
!4088 = !DILocation(line: 44, column: 59, scope: !4081)
!4089 = !DILocation(line: 44, column: 75, scope: !4081)
!4090 = !DILocation(line: 46, column: 2, scope: !4081)
!4091 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4092, file: !4092, line: 229, type: !4093, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4095)
!4092 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !4045, !1084, !133}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "ptr", arg: 1, scope: !4091, file: !4092, line: 229, type: !4045)
!4097 = !DILocalVariable(name: "size", arg: 2, scope: !4091, file: !4092, line: 229, type: !1084)
!4098 = !DILocalVariable(name: "type", arg: 3, scope: !4091, file: !4092, line: 230, type: !133)
!4099 = !DILocation(line: 229, column: 60, scope: !4091)
!4100 = !DILocation(line: 229, column: 72, scope: !4091)
!4101 = !DILocation(line: 230, column: 15, scope: !4091)
!4102 = !DILocation(line: 230, column: 23, scope: !4091)
!4103 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4059, file: !4059, line: 72, type: !4011, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4104)
!4104 = !{!4105, !4106}
!4105 = !DILocalVariable(name: "nr", arg: 1, scope: !4103, file: !4059, line: 72, type: !1042)
!4106 = !DILocalVariable(name: "addr", arg: 2, scope: !4103, file: !4059, line: 72, type: !4013)
!4107 = !DILocation(line: 72, column: 21, scope: !4103)
!4108 = !DILocation(line: 72, column: 49, scope: !4103)
!4109 = !DILocation(line: 74, column: 27, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !4059, line: 74, column: 6)
!4111 = !DILocation(line: 74, column: 6, scope: !4110)
!4112 = !DILocation(line: 74, column: 6, scope: !4103)
!4113 = !DILocation(line: 76, column: 6, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !4059, line: 74, column: 32)
!4115 = !DILocation(line: 77, column: 13, scope: !4114)
!4116 = !DILocation(line: 77, column: 12, scope: !4114)
!4117 = !DILocation(line: 75, column: 3, scope: !4114)
!4118 = !{i64 2147888761, i64 2147888800, i64 2147888821, i64 2147888858, i64 2147888881, i64 2147888751}
!4119 = !DILocation(line: 78, column: 2, scope: !4114)
!4120 = !DILocation(line: 80, column: 8, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4110, file: !4059, line: 78, column: 9)
!4122 = !DILocation(line: 80, column: 32, scope: !4121)
!4123 = !DILocation(line: 79, column: 3, scope: !4121)
!4124 = !{i64 2147889046, i64 2147889085, i64 2147889106, i64 2147889143, i64 2147889166, i64 2147889036}
!4125 = !DILocation(line: 82, column: 1, scope: !4103)
!4126 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4042, file: !4042, line: 66, type: !4043, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4127)
!4127 = !{!4128, !4129}
!4128 = !DILocalVariable(name: "v", arg: 1, scope: !4126, file: !4042, line: 66, type: !4045)
!4129 = !DILocalVariable(name: "size", arg: 2, scope: !4126, file: !4042, line: 66, type: !1084)
!4130 = !DILocation(line: 66, column: 73, scope: !4126)
!4131 = !DILocation(line: 66, column: 83, scope: !4126)
!4132 = !DILocation(line: 68, column: 19, scope: !4126)
!4133 = !DILocation(line: 68, column: 22, scope: !4126)
!4134 = !DILocation(line: 68, column: 2, scope: !4126)
!4135 = !DILocation(line: 69, column: 2, scope: !4126)
!4136 = !DILocation(line: 70, column: 1, scope: !4126)
!4137 = distinct !DISubprogram(name: "arch_test_bit", scope: !4059, file: !4059, line: 237, type: !3800, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4138)
!4138 = !{!4139, !4140}
!4139 = !DILocalVariable(name: "nr", arg: 1, scope: !4137, file: !4059, line: 237, type: !101)
!4140 = !DILocalVariable(name: "addr", arg: 2, scope: !4137, file: !4059, line: 237, type: !3802)
!4141 = !DILocation(line: 237, column: 29, scope: !4137)
!4142 = !DILocation(line: 237, column: 63, scope: !4137)
!4143 = !DILocation(line: 239, column: 30, scope: !4137)
!4144 = !DILocation(line: 239, column: 9, scope: !4137)
!4145 = !DILocation(line: 239, column: 54, scope: !4137)
!4146 = !DILocation(line: 239, column: 58, scope: !4137)
!4147 = !DILocation(line: 239, column: 36, scope: !4137)
!4148 = !DILocation(line: 240, column: 26, scope: !4137)
!4149 = !DILocation(line: 240, column: 30, scope: !4137)
!4150 = !DILocation(line: 240, column: 8, scope: !4137)
!4151 = !DILocation(line: 239, column: 2, scope: !4137)
!4152 = distinct !DISubprogram(name: "kasan_check_read", scope: !4082, file: !4082, line: 40, type: !4083, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4153)
!4153 = !{!4154, !4155}
!4154 = !DILocalVariable(name: "p", arg: 1, scope: !4152, file: !4082, line: 40, type: !4045)
!4155 = !DILocalVariable(name: "size", arg: 2, scope: !4152, file: !4082, line: 40, type: !12)
!4156 = !DILocation(line: 40, column: 58, scope: !4152)
!4157 = !DILocation(line: 40, column: 74, scope: !4152)
!4158 = !DILocation(line: 42, column: 2, scope: !4152)
!4159 = distinct !DISubprogram(name: "constant_test_bit", scope: !4059, file: !4059, line: 204, type: !4160, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!774, !1042, !3802}
!4162 = !{!4163, !4164}
!4163 = !DILocalVariable(name: "nr", arg: 1, scope: !4159, file: !4059, line: 204, type: !1042)
!4164 = !DILocalVariable(name: "addr", arg: 2, scope: !4159, file: !4059, line: 204, type: !3802)
!4165 = !DILocation(line: 204, column: 52, scope: !4159)
!4166 = !DILocation(line: 204, column: 86, scope: !4159)
!4167 = !DILocation(line: 206, column: 19, scope: !4159)
!4168 = !DILocation(line: 206, column: 22, scope: !4159)
!4169 = !DILocation(line: 206, column: 15, scope: !4159)
!4170 = !DILocation(line: 207, column: 4, scope: !4159)
!4171 = !DILocation(line: 207, column: 9, scope: !4159)
!4172 = !DILocation(line: 207, column: 12, scope: !4159)
!4173 = !DILocation(line: 206, column: 44, scope: !4159)
!4174 = !DILocation(line: 207, column: 37, scope: !4159)
!4175 = !DILocation(line: 206, column: 2, scope: !4159)
!4176 = distinct !DISubprogram(name: "variable_test_bit", scope: !4059, file: !4059, line: 224, type: !4160, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4177)
!4177 = !{!4178, !4179, !4180}
!4178 = !DILocalVariable(name: "nr", arg: 1, scope: !4176, file: !4059, line: 224, type: !1042)
!4179 = !DILocalVariable(name: "addr", arg: 2, scope: !4176, file: !4059, line: 224, type: !3802)
!4180 = !DILocalVariable(name: "oldbit", scope: !4176, file: !4059, line: 226, type: !774)
!4181 = !DILocation(line: 224, column: 52, scope: !4176)
!4182 = !DILocation(line: 224, column: 86, scope: !4176)
!4183 = !DILocation(line: 226, column: 2, scope: !4176)
!4184 = !DILocation(line: 226, column: 7, scope: !4176)
!4185 = !DILocation(line: 231, column: 33, scope: !4176)
!4186 = !DILocation(line: 231, column: 46, scope: !4176)
!4187 = !DILocation(line: 228, column: 2, scope: !4176)
!4188 = !{i64 2147901085, i64 2147901159}
!4189 = !DILocation(line: 233, column: 9, scope: !4176)
!4190 = !{i8 0, i8 2}
!4191 = !DILocation(line: 234, column: 1, scope: !4176)
!4192 = !DILocation(line: 233, column: 2, scope: !4176)
!4193 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !4194, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!774, !2511, !1084, !774}
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4204}
!4197 = !DILocalVariable(name: "addr", arg: 1, scope: !4193, file: !2, line: 237, type: !2511)
!4198 = !DILocalVariable(name: "bytes", arg: 2, scope: !4193, file: !2, line: 237, type: !1084)
!4199 = !DILocalVariable(name: "is_source", arg: 3, scope: !4193, file: !2, line: 237, type: !774)
!4200 = !DILocalVariable(name: "sz", scope: !4193, file: !2, line: 239, type: !133)
!4201 = !DILocalVariable(name: "__ret_warn_on", scope: !4202, file: !2, line: 249, type: !133)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !2, line: 249, column: 6)
!4203 = distinct !DILexicalBlock(scope: !4193, file: !2, line: 249, column: 6)
!4204 = !DILocalVariable(name: "__flags", scope: !4205, file: !2, line: 249, type: !133)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !2, line: 249, column: 6)
!4206 = distinct !DILexicalBlock(scope: !4202, file: !2, line: 249, column: 6)
!4207 = !DILocation(line: 237, column: 29, scope: !4193)
!4208 = !DILocation(line: 237, column: 42, scope: !4193)
!4209 = !DILocation(line: 237, column: 54, scope: !4193)
!4210 = !DILocation(line: 239, column: 2, scope: !4193)
!4211 = !DILocation(line: 239, column: 6, scope: !4193)
!4212 = !DILocation(line: 239, column: 33, scope: !4193)
!4213 = !DILocation(line: 239, column: 11, scope: !4193)
!4214 = !DILocation(line: 240, column: 6, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4193, file: !2, line: 240, column: 6)
!4216 = !DILocation(line: 0, scope: !4215)
!4217 = !DILocation(line: 240, column: 6, scope: !4193)
!4218 = !DILocation(line: 241, column: 29, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !2, line: 241, column: 7)
!4220 = distinct !DILexicalBlock(scope: !4215, file: !2, line: 240, column: 39)
!4221 = !DILocation(line: 241, column: 8, scope: !4219)
!4222 = !DILocation(line: 241, column: 7, scope: !4220)
!4223 = !DILocation(line: 242, column: 18, scope: !4219)
!4224 = !DILocation(line: 242, column: 22, scope: !4219)
!4225 = !DILocation(line: 242, column: 4, scope: !4219)
!4226 = !DILocation(line: 243, column: 12, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4219, file: !2, line: 243, column: 12)
!4228 = !DILocation(line: 243, column: 12, scope: !4219)
!4229 = !DILocation(line: 244, column: 4, scope: !4227)
!4230 = !{i32 1607688}
!4231 = !DILocation(line: 246, column: 4, scope: !4227)
!4232 = !{i32 1607717}
!4233 = !DILocation(line: 247, column: 3, scope: !4220)
!4234 = !DILocation(line: 249, column: 6, scope: !4202)
!4235 = !DILocation(line: 249, column: 6, scope: !4206)
!4236 = !DILocation(line: 249, column: 6, scope: !4205)
!4237 = !DILocation(line: 249, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 249, column: 6)
!4239 = !DILocation(line: 249, column: 6, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 249, column: 6)
!4241 = !{i64 2149578611, i64 2149578640, i64 2149578686, i64 2149578744, i64 2149578798, i64 2149578852, i64 2149578907, i64 2149578938, i64 2149579246, i64 2149579252, i64 2149579299, i64 2149579322, i64 2149579348}
!4242 = !DILocation(line: 249, column: 6, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 249, column: 6)
!4244 = !DILocation(line: 249, column: 6, scope: !4203)
!4245 = !DILocation(line: 249, column: 6, scope: !4193)
!4246 = !DILocation(line: 250, column: 3, scope: !4203)
!4247 = !DILocation(line: 251, column: 20, scope: !4193)
!4248 = !DILocation(line: 251, column: 26, scope: !4193)
!4249 = !DILocation(line: 251, column: 33, scope: !4193)
!4250 = !DILocation(line: 251, column: 2, scope: !4193)
!4251 = !DILocation(line: 252, column: 2, scope: !4193)
!4252 = !DILocation(line: 253, column: 1, scope: !4193)
!4253 = !DISubprogram(name: "_copy_to_user", scope: !3848, file: !3848, line: 176, type: !3849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4254 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !4255, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !133, !101}
!4257 = !{!4258, !4259}
!4258 = !DILocalVariable(name: "size", arg: 1, scope: !4254, file: !2, line: 230, type: !133)
!4259 = !DILocalVariable(name: "count", arg: 2, scope: !4254, file: !2, line: 230, type: !101)
!4260 = !DILocation(line: 230, column: 38, scope: !4254)
!4261 = !DILocation(line: 230, column: 58, scope: !4254)
!4262 = !DILocation(line: 233, column: 19, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4254, file: !2, line: 232, column: 6)
!4264 = !DILocation(line: 233, column: 25, scope: !4263)
!4265 = !DILocation(line: 233, column: 3, scope: !4263)
!4266 = !DILocation(line: 234, column: 1, scope: !4254)
!4267 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !2908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4268 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !2908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4269 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !4270, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !2511, !101, !774}
!4272 = !{!4273, !4274, !4275}
!4273 = !DILocalVariable(name: "ptr", arg: 1, scope: !4269, file: !2, line: 218, type: !2511)
!4274 = !DILocalVariable(name: "n", arg: 2, scope: !4269, file: !2, line: 218, type: !101)
!4275 = !DILocalVariable(name: "to_user", arg: 3, scope: !4269, file: !2, line: 219, type: !774)
!4276 = !DILocation(line: 218, column: 50, scope: !4269)
!4277 = !DILocation(line: 218, column: 69, scope: !4269)
!4278 = !DILocation(line: 219, column: 15, scope: !4269)
!4279 = !DILocation(line: 220, column: 3, scope: !4269)
!4280 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !4255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DISubprogram(name: "_copy_from_user", scope: !3848, file: !3848, line: 158, type: !3849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
