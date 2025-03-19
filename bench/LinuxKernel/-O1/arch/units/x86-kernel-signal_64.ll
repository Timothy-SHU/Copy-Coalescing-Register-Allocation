; ModuleID = 'arch/x86/kernel/signal_64.c'
source_filename = "arch/x86/kernel/signal_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.35, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.37, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.35 = type { i32 }
%union.anon.37 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.38 }
%union.anon.38 = type { %struct.anon.39, [16 x i8] }
%struct.anon.39 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.kernel_siginfo = type { %struct.anon }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.rt_sigframe = type { ptr, %struct.ucontext, %struct.siginfo }
%struct.ucontext = type { i64, ptr, %struct.sigaltstack, %struct.sigcontext_64, %struct.sigset_t }
%struct.sigaltstack = type { ptr, i32, i64 }
%struct.sigcontext_64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, i64, [8 x i64] }
%struct.siginfo = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11, [80 x i8] }
%struct.anon.11 = type { i32, i32, i32, %union.__sifields }
%struct.__large_struct = type { [100 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.29, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.32 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i64, i64 }
%union.anon.32 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.33, i64, i64, %union.anon.34 }
%union.anon.33 = type { i64 }
%union.anon.34 = type { i64 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [13 x i8] c"rt_sigreturn\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !7

@__x64_sys_rt_sigreturn = hidden alias i64 (ptr), ptr @__do_sys_rt_sigreturn
@__ia32_sys_rt_sigreturn = hidden alias i64 (ptr), ptr @__do_sys_rt_sigreturn

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x64_setup_rt_frame(ptr noundef %ksig, ptr noundef %regs) #0 align 16 !dbg !5944 {
entry:
  %retval = alloca i32, align 4
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %set = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %uc_flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %__x8 = alloca ptr, align 8
  %__ptr9 = alloca ptr, align 8
  %__uss = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__x18 = alloca ptr, align 8
  %__ptr19 = alloca ptr, align 8
  %__x24 = alloca i32, align 4
  %__ptr25 = alloca ptr, align 8
  %__x30 = alloca i64, align 8
  %__ptr31 = alloca ptr, align 8
  %__x38 = alloca ptr, align 8
  %__ptr41 = alloca ptr, align 8
  %__x54 = alloca i64, align 8
  %__ptr55 = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !5954, metadata !DIExpression()), !dbg !5990
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5955, metadata !DIExpression()), !dbg !5991
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #13, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %set, metadata !5956, metadata !DIExpression()), !dbg !5993
  %call = call ptr @sigmask_to_save() #14, !dbg !5994
  store ptr %call, ptr %set, align 8, !dbg !5993
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame) #13, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %frame, metadata !5958, metadata !DIExpression()), !dbg !5996
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #13, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %fp, metadata !5959, metadata !DIExpression()), !dbg !5998
  store ptr null, ptr %fp, align 8, !dbg !5998
  call void @llvm.lifetime.start.p0(i64 8, ptr %uc_flags) #13, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %uc_flags, metadata !5960, metadata !DIExpression()), !dbg !6000
  %0 = load ptr, ptr %ksig.addr, align 8, !dbg !6001
  %ka = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 0, !dbg !6003
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %ka, i32 0, i32 0, !dbg !6004
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6005
  %1 = load i64, ptr %sa_flags, align 8, !dbg !6005
  %and = and i64 %1, 67108864, !dbg !6006
  %tobool = icmp ne i64 %and, 0, !dbg !6006
  br i1 %tobool, label %if.end, label %if.then, !dbg !6007

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6008

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ksig.addr, align 8, !dbg !6009
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6010
  %call1 = call ptr @get_sigframe(ptr noundef %2, ptr noundef %3, i64 noundef 440, ptr noundef %fp) #14, !dbg !6011
  store ptr %call1, ptr %frame, align 8, !dbg !6012
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6013
  %call2 = call i64 @frame_uc_flags(ptr noundef %4) #14, !dbg !6014
  store i64 %call2, ptr %uc_flags, align 8, !dbg !6015
  %5 = load ptr, ptr %frame, align 8, !dbg !6016
  %call3 = call zeroext i1 @user_access_begin(ptr noundef %5, i64 noundef 440) #14, !dbg !6016
  br i1 %call3, label %if.end5, label %if.then4, !dbg !6018

if.then4:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !6019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6019

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !6020

do.body:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #13, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5961, metadata !DIExpression()), !dbg !6021
  %6 = load i64, ptr %uc_flags, align 8, !dbg !6021
  store i64 %6, ptr %__x, align 8, !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5963, metadata !DIExpression()), !dbg !6021
  %7 = load ptr, ptr %frame, align 8, !dbg !6021
  %uc = getelementptr inbounds %struct.rt_sigframe, ptr %7, i32 0, i32 1, !dbg !6021
  %uc_flags6 = getelementptr inbounds %struct.ucontext, ptr %uc, i32 0, i32 0, !dbg !6021
  store ptr %uc_flags6, ptr %__ptr, align 8, !dbg !6021
  %8 = load i64, ptr %__x, align 8, !dbg !6021
  %9 = load ptr, ptr %__ptr, align 8, !dbg !6021
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %8, ptr elementtype(%struct.__large_struct) %9) #13
          to label %asm.fallthrough [label %Efault], !dbg !6021, !srcloc !6022

asm.fallthrough:                                  ; preds = %do.body
  %10 = load ptr, ptr %__ptr, align 8, !dbg !6023
  call void @kmsan_copy_to_user(ptr noundef %10, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #14, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #13, !dbg !6020
  br label %do.cond, !dbg !6021

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !6021

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6025

do.body7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x8) #13, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %__x8, metadata !5964, metadata !DIExpression()), !dbg !6026
  store ptr null, ptr %__x8, align 8, !dbg !6026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr9) #13, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %__ptr9, metadata !5966, metadata !DIExpression()), !dbg !6026
  %11 = load ptr, ptr %frame, align 8, !dbg !6026
  %uc10 = getelementptr inbounds %struct.rt_sigframe, ptr %11, i32 0, i32 1, !dbg !6026
  %uc_link = getelementptr inbounds %struct.ucontext, ptr %uc10, i32 0, i32 1, !dbg !6026
  store ptr %uc_link, ptr %__ptr9, align 8, !dbg !6026
  %12 = load ptr, ptr %__x8, align 8, !dbg !6026
  %13 = load ptr, ptr %__ptr9, align 8, !dbg !6026
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr %12, ptr elementtype(%struct.__large_struct) %13) #13
          to label %asm.fallthrough11 [label %Efault], !dbg !6026, !srcloc !6027

asm.fallthrough11:                                ; preds = %do.body7
  %14 = load ptr, ptr %__ptr9, align 8, !dbg !6028
  call void @kmsan_copy_to_user(ptr noundef %14, ptr noundef %__x8, i64 noundef 8, i64 noundef 0) #14, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr9) #13, !dbg !6025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x8) #13, !dbg !6025
  br label %do.cond12, !dbg !6026

do.cond12:                                        ; preds = %asm.fallthrough11
  br label %do.end13, !dbg !6026

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6030

do.body14:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__uss) #13, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %__uss, metadata !5968, metadata !DIExpression()), !dbg !6031
  %15 = load ptr, ptr %frame, align 8, !dbg !6031
  %uc15 = getelementptr inbounds %struct.rt_sigframe, ptr %15, i32 0, i32 1, !dbg !6031
  %uc_stack = getelementptr inbounds %struct.ucontext, ptr %uc15, i32 0, i32 2, !dbg !6031
  store ptr %uc_stack, ptr %__uss, align 8, !dbg !6031
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #13, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5971, metadata !DIExpression()), !dbg !6031
  %call16 = call ptr @get_current() #14, !dbg !6031
  store ptr %call16, ptr %t, align 8, !dbg !6031
  br label %do.body17, !dbg !6031

do.body17:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x18) #13, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %__x18, metadata !5972, metadata !DIExpression()), !dbg !6032
  %16 = load ptr, ptr %t, align 8, !dbg !6032
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110, !dbg !6032
  %17 = load i64, ptr %sas_ss_sp, align 64, !dbg !6032
  %18 = inttoptr i64 %17 to ptr, !dbg !6032
  store ptr %18, ptr %__x18, align 8, !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr19) #13, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %__ptr19, metadata !5974, metadata !DIExpression()), !dbg !6032
  %19 = load ptr, ptr %__uss, align 8, !dbg !6032
  %ss_sp = getelementptr inbounds %struct.sigaltstack, ptr %19, i32 0, i32 0, !dbg !6032
  store ptr %ss_sp, ptr %__ptr19, align 8, !dbg !6032
  %20 = load ptr, ptr %__x18, align 8, !dbg !6032
  %21 = load ptr, ptr %__ptr19, align 8, !dbg !6032
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr %20, ptr elementtype(%struct.__large_struct) %21) #13
          to label %asm.fallthrough20 [label %Efault], !dbg !6032, !srcloc !6033

asm.fallthrough20:                                ; preds = %do.body17
  %22 = load ptr, ptr %__ptr19, align 8, !dbg !6034
  call void @kmsan_copy_to_user(ptr noundef %22, ptr noundef %__x18, i64 noundef 8, i64 noundef 0) #14, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr19) #13, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x18) #13, !dbg !6031
  br label %do.cond21, !dbg !6032

do.cond21:                                        ; preds = %asm.fallthrough20
  br label %do.end22, !dbg !6032

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !6031

do.body23:                                        ; preds = %do.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x24) #13, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %__x24, metadata !5975, metadata !DIExpression()), !dbg !6036
  %23 = load ptr, ptr %t, align 8, !dbg !6036
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 112, !dbg !6036
  %24 = load i32, ptr %sas_ss_flags, align 16, !dbg !6036
  store i32 %24, ptr %__x24, align 4, !dbg !6036
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr25) #13, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %__ptr25, metadata !5977, metadata !DIExpression()), !dbg !6036
  %25 = load ptr, ptr %__uss, align 8, !dbg !6036
  %ss_flags = getelementptr inbounds %struct.sigaltstack, ptr %25, i32 0, i32 1, !dbg !6036
  store ptr %ss_flags, ptr %__ptr25, align 8, !dbg !6036
  %26 = load i32, ptr %__x24, align 4, !dbg !6036
  %27 = load ptr, ptr %__ptr25, align 8, !dbg !6036
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %26, ptr elementtype(%struct.__large_struct) %27) #13
          to label %asm.fallthrough26 [label %Efault], !dbg !6036, !srcloc !6037

asm.fallthrough26:                                ; preds = %do.body23
  %28 = load ptr, ptr %__ptr25, align 8, !dbg !6038
  call void @kmsan_copy_to_user(ptr noundef %28, ptr noundef %__x24, i64 noundef 4, i64 noundef 0) #14, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr25) #13, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x24) #13, !dbg !6031
  br label %do.cond27, !dbg !6036

do.cond27:                                        ; preds = %asm.fallthrough26
  br label %do.end28, !dbg !6036

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !6031

do.body29:                                        ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x30) #13, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %__x30, metadata !5978, metadata !DIExpression()), !dbg !6040
  %29 = load ptr, ptr %t, align 8, !dbg !6040
  %sas_ss_size = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 111, !dbg !6040
  %30 = load i64, ptr %sas_ss_size, align 8, !dbg !6040
  store i64 %30, ptr %__x30, align 8, !dbg !6040
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr31) #13, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %__ptr31, metadata !5980, metadata !DIExpression()), !dbg !6040
  %31 = load ptr, ptr %__uss, align 8, !dbg !6040
  %ss_size = getelementptr inbounds %struct.sigaltstack, ptr %31, i32 0, i32 2, !dbg !6040
  store ptr %ss_size, ptr %__ptr31, align 8, !dbg !6040
  %32 = load i64, ptr %__x30, align 8, !dbg !6040
  %33 = load ptr, ptr %__ptr31, align 8, !dbg !6040
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %32, ptr elementtype(%struct.__large_struct) %33) #13
          to label %asm.fallthrough32 [label %Efault], !dbg !6040, !srcloc !6041

asm.fallthrough32:                                ; preds = %do.body29
  %34 = load ptr, ptr %__ptr31, align 8, !dbg !6042
  call void @kmsan_copy_to_user(ptr noundef %34, ptr noundef %__x30, i64 noundef 8, i64 noundef 0) #14, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr31) #13, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x30) #13, !dbg !6031
  br label %do.cond33, !dbg !6040

do.cond33:                                        ; preds = %asm.fallthrough32
  br label %do.end34, !dbg !6040

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #13, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__uss) #13, !dbg !6030
  br label %do.cond35, !dbg !6031

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6031

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6044

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x38) #13, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %__x38, metadata !5982, metadata !DIExpression()), !dbg !6045
  %35 = load ptr, ptr %ksig.addr, align 8, !dbg !6045
  %ka39 = getelementptr inbounds %struct.ksignal, ptr %35, i32 0, i32 0, !dbg !6045
  %sa40 = getelementptr inbounds %struct.k_sigaction, ptr %ka39, i32 0, i32 0, !dbg !6045
  %sa_restorer = getelementptr inbounds %struct.sigaction, ptr %sa40, i32 0, i32 2, !dbg !6045
  %36 = load ptr, ptr %sa_restorer, align 8, !dbg !6045
  store ptr %36, ptr %__x38, align 8, !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr41) #13, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %__ptr41, metadata !5984, metadata !DIExpression()), !dbg !6045
  %37 = load ptr, ptr %frame, align 8, !dbg !6045
  %pretcode = getelementptr inbounds %struct.rt_sigframe, ptr %37, i32 0, i32 0, !dbg !6045
  store ptr %pretcode, ptr %__ptr41, align 8, !dbg !6045
  %38 = load ptr, ptr %__x38, align 8, !dbg !6045
  %39 = load ptr, ptr %__ptr41, align 8, !dbg !6045
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr %38, ptr elementtype(%struct.__large_struct) %39) #13
          to label %asm.fallthrough42 [label %Efault], !dbg !6045, !srcloc !6046

asm.fallthrough42:                                ; preds = %do.body37
  %40 = load ptr, ptr %__ptr41, align 8, !dbg !6047
  call void @kmsan_copy_to_user(ptr noundef %40, ptr noundef %__x38, i64 noundef 8, i64 noundef 0) #14, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr41) #13, !dbg !6044
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x38) #13, !dbg !6044
  br label %do.cond43, !dbg !6045

do.cond43:                                        ; preds = %asm.fallthrough42
  br label %do.end44, !dbg !6045

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !6049

do.body45:                                        ; preds = %do.end44
  %41 = load ptr, ptr %frame, align 8, !dbg !6050
  %uc46 = getelementptr inbounds %struct.rt_sigframe, ptr %41, i32 0, i32 1, !dbg !6050
  %uc_mcontext = getelementptr inbounds %struct.ucontext, ptr %uc46, i32 0, i32 3, !dbg !6050
  %42 = load ptr, ptr %fp, align 8, !dbg !6050
  %43 = load ptr, ptr %regs.addr, align 8, !dbg !6050
  %44 = load ptr, ptr %set, align 8, !dbg !6050
  %sig = getelementptr inbounds %struct.sigset_t, ptr %44, i32 0, i32 0, !dbg !6050
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6050
  %45 = load i64, ptr %arrayidx, align 8, !dbg !6050
  %call47 = call i32 @__unsafe_setup_sigcontext(ptr noundef %uc_mcontext, ptr noundef %42, ptr noundef %43, i64 noundef %45) #14, !dbg !6050
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6050
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6053

if.then49:                                        ; preds = %do.body45
  br label %Efault, !dbg !6050

if.end50:                                         ; preds = %do.body45
  br label %do.cond51, !dbg !6053

do.cond51:                                        ; preds = %if.end50
  br label %do.end52, !dbg !6053

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !6054

do.body53:                                        ; preds = %do.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x54) #13, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %__x54, metadata !5986, metadata !DIExpression()), !dbg !6055
  %46 = load ptr, ptr %set, align 8, !dbg !6055
  %47 = load i64, ptr %46, align 8, !dbg !6055
  store i64 %47, ptr %__x54, align 8, !dbg !6055
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr55) #13, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %__ptr55, metadata !5988, metadata !DIExpression()), !dbg !6055
  %48 = load ptr, ptr %frame, align 8, !dbg !6055
  %uc56 = getelementptr inbounds %struct.rt_sigframe, ptr %48, i32 0, i32 1, !dbg !6055
  %uc_sigmask = getelementptr inbounds %struct.ucontext, ptr %uc56, i32 0, i32 4, !dbg !6055
  store ptr %uc_sigmask, ptr %__ptr55, align 8, !dbg !6055
  %49 = load i64, ptr %__x54, align 8, !dbg !6055
  %50 = load ptr, ptr %__ptr55, align 8, !dbg !6055
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %49, ptr elementtype(%struct.__large_struct) %50) #13
          to label %asm.fallthrough57 [label %Efault], !dbg !6055, !srcloc !6056

asm.fallthrough57:                                ; preds = %do.body53
  %51 = load ptr, ptr %__ptr55, align 8, !dbg !6057
  call void @kmsan_copy_to_user(ptr noundef %51, ptr noundef %__x54, i64 noundef 8, i64 noundef 0) #14, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr55) #13, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x54) #13, !dbg !6054
  br label %do.cond58, !dbg !6055

do.cond58:                                        ; preds = %asm.fallthrough57
  br label %do.end59, !dbg !6055

do.end59:                                         ; preds = %do.cond58
  call void @clac() #14, !dbg !6059
  %52 = load ptr, ptr %ksig.addr, align 8, !dbg !6060
  %ka60 = getelementptr inbounds %struct.ksignal, ptr %52, i32 0, i32 0, !dbg !6062
  %sa61 = getelementptr inbounds %struct.k_sigaction, ptr %ka60, i32 0, i32 0, !dbg !6063
  %sa_flags62 = getelementptr inbounds %struct.sigaction, ptr %sa61, i32 0, i32 1, !dbg !6064
  %53 = load i64, ptr %sa_flags62, align 8, !dbg !6064
  %and63 = and i64 %53, 4, !dbg !6065
  %tobool64 = icmp ne i64 %and63, 0, !dbg !6065
  br i1 %tobool64, label %if.then65, label %if.end71, !dbg !6066

if.then65:                                        ; preds = %do.end59
  %54 = load ptr, ptr %frame, align 8, !dbg !6067
  %info = getelementptr inbounds %struct.rt_sigframe, ptr %54, i32 0, i32 2, !dbg !6070
  %55 = load ptr, ptr %ksig.addr, align 8, !dbg !6071
  %info66 = getelementptr inbounds %struct.ksignal, ptr %55, i32 0, i32 1, !dbg !6072
  %call67 = call i32 @copy_siginfo_to_user(ptr noundef %info, ptr noundef %info66) #14, !dbg !6073
  %tobool68 = icmp ne i32 %call67, 0, !dbg !6073
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !6074

if.then69:                                        ; preds = %if.then65
  store i32 -14, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

if.end70:                                         ; preds = %if.then65
  br label %if.end71, !dbg !6076

if.end71:                                         ; preds = %if.end70, %do.end59
  %56 = load ptr, ptr %ksig.addr, align 8, !dbg !6077
  %call72 = call i32 @setup_signal_shadow_stack(ptr noundef %56) #14, !dbg !6079
  %tobool73 = icmp ne i32 %call72, 0, !dbg !6079
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !6080

if.then74:                                        ; preds = %if.end71
  store i32 -14, ptr %retval, align 4, !dbg !6081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

if.end75:                                         ; preds = %if.end71
  %57 = load ptr, ptr %ksig.addr, align 8, !dbg !6082
  %sig76 = getelementptr inbounds %struct.ksignal, ptr %57, i32 0, i32 2, !dbg !6083
  %58 = load i32, ptr %sig76, align 8, !dbg !6083
  %conv = sext i32 %58 to i64, !dbg !6082
  %59 = load ptr, ptr %regs.addr, align 8, !dbg !6084
  %di = getelementptr inbounds %struct.pt_regs, ptr %59, i32 0, i32 14, !dbg !6085
  store i64 %conv, ptr %di, align 8, !dbg !6086
  %60 = load ptr, ptr %regs.addr, align 8, !dbg !6087
  %ax = getelementptr inbounds %struct.pt_regs, ptr %60, i32 0, i32 10, !dbg !6088
  store i64 0, ptr %ax, align 8, !dbg !6089
  %61 = load ptr, ptr %frame, align 8, !dbg !6090
  %info77 = getelementptr inbounds %struct.rt_sigframe, ptr %61, i32 0, i32 2, !dbg !6091
  %62 = ptrtoint ptr %info77 to i64, !dbg !6092
  %63 = load ptr, ptr %regs.addr, align 8, !dbg !6093
  %si = getelementptr inbounds %struct.pt_regs, ptr %63, i32 0, i32 13, !dbg !6094
  store i64 %62, ptr %si, align 8, !dbg !6095
  %64 = load ptr, ptr %frame, align 8, !dbg !6096
  %uc78 = getelementptr inbounds %struct.rt_sigframe, ptr %64, i32 0, i32 1, !dbg !6097
  %65 = ptrtoint ptr %uc78 to i64, !dbg !6098
  %66 = load ptr, ptr %regs.addr, align 8, !dbg !6099
  %dx = getelementptr inbounds %struct.pt_regs, ptr %66, i32 0, i32 12, !dbg !6100
  store i64 %65, ptr %dx, align 8, !dbg !6101
  %67 = load ptr, ptr %ksig.addr, align 8, !dbg !6102
  %ka79 = getelementptr inbounds %struct.ksignal, ptr %67, i32 0, i32 0, !dbg !6103
  %sa80 = getelementptr inbounds %struct.k_sigaction, ptr %ka79, i32 0, i32 0, !dbg !6104
  %sa_handler = getelementptr inbounds %struct.sigaction, ptr %sa80, i32 0, i32 0, !dbg !6105
  %68 = load ptr, ptr %sa_handler, align 8, !dbg !6105
  %69 = ptrtoint ptr %68 to i64, !dbg !6106
  %70 = load ptr, ptr %regs.addr, align 8, !dbg !6107
  %ip = getelementptr inbounds %struct.pt_regs, ptr %70, i32 0, i32 16, !dbg !6108
  store i64 %69, ptr %ip, align 8, !dbg !6109
  %71 = load ptr, ptr %frame, align 8, !dbg !6110
  %72 = ptrtoint ptr %71 to i64, !dbg !6111
  %73 = load ptr, ptr %regs.addr, align 8, !dbg !6112
  %sp = getelementptr inbounds %struct.pt_regs, ptr %73, i32 0, i32 19, !dbg !6113
  store i64 %72, ptr %sp, align 8, !dbg !6114
  %74 = load ptr, ptr %regs.addr, align 8, !dbg !6115
  %75 = getelementptr inbounds %struct.pt_regs, ptr %74, i32 0, i32 17, !dbg !6116
  store i16 51, ptr %75, align 8, !dbg !6117
  %76 = load ptr, ptr %regs.addr, align 8, !dbg !6118
  %77 = getelementptr inbounds %struct.pt_regs, ptr %76, i32 0, i32 20, !dbg !6118
  %78 = load i16, ptr %77, align 8, !dbg !6118
  %conv81 = zext i16 %78 to i32, !dbg !6118
  %cmp = icmp ne i32 %conv81, 43, !dbg !6118
  %lnot = xor i1 %cmp, true, !dbg !6118
  %lnot83 = xor i1 %lnot, true, !dbg !6118
  %lnot.ext = zext i1 %lnot83 to i32, !dbg !6118
  %conv84 = sext i32 %lnot.ext to i64, !dbg !6118
  %expval = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !6118
  %tobool85 = icmp ne i64 %expval, 0, !dbg !6118
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !6120

if.then86:                                        ; preds = %if.end75
  %79 = load ptr, ptr %regs.addr, align 8, !dbg !6121
  call void @force_valid_ss(ptr noundef %79) #14, !dbg !6122
  br label %if.end87, !dbg !6122

if.end87:                                         ; preds = %if.then86, %if.end75
  store i32 0, ptr %retval, align 4, !dbg !6123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6123

Efault:                                           ; preds = %do.body53, %if.then49, %do.body37, %do.body29, %do.body23, %do.body17, %do.body7, %do.body
  call void @llvm.dbg.label(metadata !5989), !dbg !6124
  call void @clac() #14, !dbg !6125
  store i32 -14, ptr %retval, align 4, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

cleanup:                                          ; preds = %Efault, %if.end87, %if.then74, %if.then69, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uc_flags) #13, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #13, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame) #13, !dbg !6127
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #13, !dbg !6127
  %80 = load i32, ptr %retval, align 4, !dbg !6127
  ret i32 %80, !dbg !6127
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sigmask_to_save() #3 align 16 !dbg !6128 {
entry:
  %res = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6132, metadata !DIExpression()), !dbg !6134
  %call = call ptr @get_current() #14, !dbg !6135
  %blocked = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 106, !dbg !6136
  store ptr %blocked, ptr %res, align 8, !dbg !6134
  %call1 = call zeroext i1 @test_restore_sigmask() #14, !dbg !6137
  %lnot = xor i1 %call1, true, !dbg !6137
  %lnot2 = xor i1 %lnot, true, !dbg !6137
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6137
  %conv = sext i32 %lnot.ext to i64, !dbg !6137
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6137
  %tobool = icmp ne i64 %expval, 0, !dbg !6137
  br i1 %tobool, label %if.then, label %if.end, !dbg !6139

if.then:                                          ; preds = %entry
  %call3 = call ptr @get_current() #14, !dbg !6140
  %saved_sigmask = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 108, !dbg !6141
  store ptr %saved_sigmask, ptr %res, align 8, !dbg !6142
  br label %if.end, !dbg !6143

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %res, align 8, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !6145
  ret ptr %0, !dbg !6146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6147 dso_local ptr @get_sigframe(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @frame_uc_flags(ptr noundef %regs) #0 align 16 !dbg !6151 {
entry:
  %regs.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !6158
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6156, metadata !DIExpression()), !dbg !6159
  br i1 false, label %cond.true, label %cond.false, !dbg !6160

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.else, !dbg !6161

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 154, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !6161
  br i1 %call, label %if.then, label %if.else, !dbg !6160

if.then:                                          ; preds = %cond.false, %cond.true
  store i64 3, ptr %flags, align 8, !dbg !6163
  br label %if.end, !dbg !6164

if.else:                                          ; preds = %cond.false, %cond.true
  store i64 2, ptr %flags, align 8, !dbg !6165
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6166
  %call1 = call zeroext i1 @user_64bit_mode(ptr noundef %0) #14, !dbg !6166
  %lnot = xor i1 %call1, true, !dbg !6166
  %lnot2 = xor i1 %lnot, true, !dbg !6166
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6166
  %conv = sext i32 %lnot.ext to i64, !dbg !6166
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6166
  %tobool = icmp ne i64 %expval, 0, !dbg !6166
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !6168

if.then3:                                         ; preds = %if.end
  %1 = load i64, ptr %flags, align 8, !dbg !6169
  %or = or i64 %1, 4, !dbg !6169
  store i64 %or, ptr %flags, align 8, !dbg !6169
  br label %if.end4, !dbg !6170

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i64, ptr %flags, align 8, !dbg !6171
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !6172
  ret i64 %2, !dbg !6173
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #5 align 16 !dbg !6174 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6178, metadata !DIExpression()), !dbg !6180
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6179, metadata !DIExpression()), !dbg !6181
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6182
  %1 = load i64, ptr %len.addr, align 8, !dbg !6182
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #14, !dbg !6182
  %lnot = xor i1 %call, true, !dbg !6182
  %lnot1 = xor i1 %lnot, true, !dbg !6182
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6182
  %conv = sext i32 %lnot.ext to i64, !dbg !6182
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6182
  %tobool = icmp ne i64 %expval, 0, !dbg !6182
  %lnot2 = xor i1 %tobool, true, !dbg !6182
  %lnot4 = xor i1 %lnot2, true, !dbg !6182
  %lnot6 = xor i1 %lnot4, true, !dbg !6182
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6182
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !6182
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6182
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !6182
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6184

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6185
  br label %return, !dbg !6185

if.end:                                           ; preds = %entry
  call void @stac() #14, !dbg !6186
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6186, !srcloc !6188
  store i1 true, ptr %retval, align 1, !dbg !6189
  br label %return, !dbg !6189

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !6190
  ret i1 %2, !dbg !6190
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !6191 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6196, metadata !DIExpression()), !dbg !6200
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6197, metadata !DIExpression()), !dbg !6201
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6198, metadata !DIExpression()), !dbg !6202
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6199, metadata !DIExpression()), !dbg !6203
  ret void, !dbg !6204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6205 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6210, metadata !DIExpression()), !dbg !6216
  br label %do.body, !dbg !6216

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6217
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6212, metadata !DIExpression()), !dbg !6217
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6217
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !6216
  br label %do.cond, !dbg !6217

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6217

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !6218
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6214, metadata !DIExpression()), !dbg !6218
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !6218, !srcloc !6219
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6218
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6218
  %3 = inttoptr i64 %2 to ptr, !dbg !6218
  store ptr %3, ptr %tmp, align 8, !dbg !6218
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !6216
  %4 = load ptr, ptr %tmp, align 8, !dbg !6218
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6216
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6216
  store ptr %5, ptr %tmp1, align 8, !dbg !6216
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !6220
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6216
  ret ptr %6, !dbg !6221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__unsafe_setup_sigcontext(ptr noundef %sc, ptr noundef %fpstate, ptr noundef %regs, i64 noundef %mask) #5 align 16 !dbg !6222 {
entry:
  %retval = alloca i32, align 4
  %sc.addr = alloca ptr, align 8
  %fpstate.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %__x3 = alloca i64, align 8
  %__ptr4 = alloca ptr, align 8
  %__x9 = alloca i64, align 8
  %__ptr10 = alloca ptr, align 8
  %__x15 = alloca i64, align 8
  %__ptr16 = alloca ptr, align 8
  %__x21 = alloca i64, align 8
  %__ptr22 = alloca ptr, align 8
  %__x27 = alloca i64, align 8
  %__ptr28 = alloca ptr, align 8
  %__x33 = alloca i64, align 8
  %__ptr34 = alloca ptr, align 8
  %__x39 = alloca i64, align 8
  %__ptr40 = alloca ptr, align 8
  %__x45 = alloca i64, align 8
  %__ptr46 = alloca ptr, align 8
  %__x51 = alloca i64, align 8
  %__ptr52 = alloca ptr, align 8
  %__x57 = alloca i64, align 8
  %__ptr58 = alloca ptr, align 8
  %__x63 = alloca i64, align 8
  %__ptr64 = alloca ptr, align 8
  %__x69 = alloca i64, align 8
  %__ptr70 = alloca ptr, align 8
  %__x75 = alloca i64, align 8
  %__ptr76 = alloca ptr, align 8
  %__x81 = alloca i64, align 8
  %__ptr82 = alloca ptr, align 8
  %__x87 = alloca i64, align 8
  %__ptr88 = alloca ptr, align 8
  %__x93 = alloca i64, align 8
  %__ptr94 = alloca ptr, align 8
  %__x98 = alloca i64, align 8
  %__ptr101 = alloca ptr, align 8
  %__x105 = alloca i64, align 8
  %__ptr106 = alloca ptr, align 8
  %__x111 = alloca i64, align 8
  %__ptr112 = alloca ptr, align 8
  %__x117 = alloca i16, align 2
  %__ptr118 = alloca ptr, align 8
  %__x122 = alloca i16, align 2
  %__ptr123 = alloca ptr, align 8
  %__x127 = alloca i16, align 2
  %__ptr128 = alloca ptr, align 8
  %__x132 = alloca i16, align 2
  %__ptr133 = alloca ptr, align 8
  %__x137 = alloca i64, align 8
  %__ptr138 = alloca ptr, align 8
  %__x143 = alloca i64, align 8
  %__ptr144 = alloca ptr, align 8
  %__x148 = alloca i64, align 8
  %__ptr151 = alloca ptr, align 8
  store ptr %sc, ptr %sc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sc.addr, metadata !6227, metadata !DIExpression()), !dbg !6314
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6228, metadata !DIExpression()), !dbg !6315
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6229, metadata !DIExpression()), !dbg !6316
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6230, metadata !DIExpression()), !dbg !6317
  br label %do.body, !dbg !6318

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #13, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6231, metadata !DIExpression()), !dbg !6319
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6319
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6319
  %1 = load i64, ptr %di, align 8, !dbg !6319
  store i64 %1, ptr %__x, align 8, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6319
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6233, metadata !DIExpression()), !dbg !6319
  %2 = load ptr, ptr %sc.addr, align 8, !dbg !6319
  %di1 = getelementptr inbounds %struct.sigcontext_64, ptr %2, i32 0, i32 8, !dbg !6319
  store ptr %di1, ptr %__ptr, align 8, !dbg !6319
  %3 = load i64, ptr %__x, align 8, !dbg !6319
  %4 = load ptr, ptr %__ptr, align 8, !dbg !6319
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %3, ptr elementtype(%struct.__large_struct) %4) #13
          to label %asm.fallthrough [label %Efault], !dbg !6319, !srcloc !6320

asm.fallthrough:                                  ; preds = %do.body
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6321
  call void @kmsan_copy_to_user(ptr noundef %5, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #14, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6318
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #13, !dbg !6318
  br label %do.end, !dbg !6319

do.end:                                           ; preds = %asm.fallthrough
  br label %do.body2, !dbg !6323

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x3) #13, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__x3, metadata !6234, metadata !DIExpression()), !dbg !6324
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6324
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6324
  %7 = load i64, ptr %si, align 8, !dbg !6324
  store i64 %7, ptr %__x3, align 8, !dbg !6324
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr4) #13, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__ptr4, metadata !6236, metadata !DIExpression()), !dbg !6324
  %8 = load ptr, ptr %sc.addr, align 8, !dbg !6324
  %si5 = getelementptr inbounds %struct.sigcontext_64, ptr %8, i32 0, i32 9, !dbg !6324
  store ptr %si5, ptr %__ptr4, align 8, !dbg !6324
  %9 = load i64, ptr %__x3, align 8, !dbg !6324
  %10 = load ptr, ptr %__ptr4, align 8, !dbg !6324
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %9, ptr elementtype(%struct.__large_struct) %10) #13
          to label %asm.fallthrough6 [label %Efault], !dbg !6324, !srcloc !6325

asm.fallthrough6:                                 ; preds = %do.body2
  %11 = load ptr, ptr %__ptr4, align 8, !dbg !6326
  call void @kmsan_copy_to_user(ptr noundef %11, ptr noundef %__x3, i64 noundef 8, i64 noundef 0) #14, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr4) #13, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x3) #13, !dbg !6323
  br label %do.end7, !dbg !6324

do.end7:                                          ; preds = %asm.fallthrough6
  br label %do.body8, !dbg !6328

do.body8:                                         ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x9) #13, !dbg !6329
  call void @llvm.dbg.declare(metadata ptr %__x9, metadata !6237, metadata !DIExpression()), !dbg !6329
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !6329
  %bp = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 4, !dbg !6329
  %13 = load i64, ptr %bp, align 8, !dbg !6329
  store i64 %13, ptr %__x9, align 8, !dbg !6329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #13, !dbg !6329
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !6239, metadata !DIExpression()), !dbg !6329
  %14 = load ptr, ptr %sc.addr, align 8, !dbg !6329
  %bp11 = getelementptr inbounds %struct.sigcontext_64, ptr %14, i32 0, i32 10, !dbg !6329
  store ptr %bp11, ptr %__ptr10, align 8, !dbg !6329
  %15 = load i64, ptr %__x9, align 8, !dbg !6329
  %16 = load ptr, ptr %__ptr10, align 8, !dbg !6329
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %15, ptr elementtype(%struct.__large_struct) %16) #13
          to label %asm.fallthrough12 [label %Efault], !dbg !6329, !srcloc !6330

asm.fallthrough12:                                ; preds = %do.body8
  %17 = load ptr, ptr %__ptr10, align 8, !dbg !6331
  call void @kmsan_copy_to_user(ptr noundef %17, ptr noundef %__x9, i64 noundef 8, i64 noundef 0) #14, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #13, !dbg !6328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x9) #13, !dbg !6328
  br label %do.end13, !dbg !6329

do.end13:                                         ; preds = %asm.fallthrough12
  br label %do.body14, !dbg !6333

do.body14:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x15) #13, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %__x15, metadata !6240, metadata !DIExpression()), !dbg !6334
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !6334
  %sp = getelementptr inbounds %struct.pt_regs, ptr %18, i32 0, i32 19, !dbg !6334
  %19 = load i64, ptr %sp, align 8, !dbg !6334
  store i64 %19, ptr %__x15, align 8, !dbg !6334
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr16) #13, !dbg !6334
  call void @llvm.dbg.declare(metadata ptr %__ptr16, metadata !6242, metadata !DIExpression()), !dbg !6334
  %20 = load ptr, ptr %sc.addr, align 8, !dbg !6334
  %sp17 = getelementptr inbounds %struct.sigcontext_64, ptr %20, i32 0, i32 15, !dbg !6334
  store ptr %sp17, ptr %__ptr16, align 8, !dbg !6334
  %21 = load i64, ptr %__x15, align 8, !dbg !6334
  %22 = load ptr, ptr %__ptr16, align 8, !dbg !6334
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %21, ptr elementtype(%struct.__large_struct) %22) #13
          to label %asm.fallthrough18 [label %Efault], !dbg !6334, !srcloc !6335

asm.fallthrough18:                                ; preds = %do.body14
  %23 = load ptr, ptr %__ptr16, align 8, !dbg !6336
  call void @kmsan_copy_to_user(ptr noundef %23, ptr noundef %__x15, i64 noundef 8, i64 noundef 0) #14, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr16) #13, !dbg !6333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x15) #13, !dbg !6333
  br label %do.end19, !dbg !6334

do.end19:                                         ; preds = %asm.fallthrough18
  br label %do.body20, !dbg !6338

do.body20:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x21) #13, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %__x21, metadata !6243, metadata !DIExpression()), !dbg !6339
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !6339
  %bx = getelementptr inbounds %struct.pt_regs, ptr %24, i32 0, i32 5, !dbg !6339
  %25 = load i64, ptr %bx, align 8, !dbg !6339
  store i64 %25, ptr %__x21, align 8, !dbg !6339
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr22) #13, !dbg !6339
  call void @llvm.dbg.declare(metadata ptr %__ptr22, metadata !6245, metadata !DIExpression()), !dbg !6339
  %26 = load ptr, ptr %sc.addr, align 8, !dbg !6339
  %bx23 = getelementptr inbounds %struct.sigcontext_64, ptr %26, i32 0, i32 11, !dbg !6339
  store ptr %bx23, ptr %__ptr22, align 8, !dbg !6339
  %27 = load i64, ptr %__x21, align 8, !dbg !6339
  %28 = load ptr, ptr %__ptr22, align 8, !dbg !6339
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %27, ptr elementtype(%struct.__large_struct) %28) #13
          to label %asm.fallthrough24 [label %Efault], !dbg !6339, !srcloc !6340

asm.fallthrough24:                                ; preds = %do.body20
  %29 = load ptr, ptr %__ptr22, align 8, !dbg !6341
  call void @kmsan_copy_to_user(ptr noundef %29, ptr noundef %__x21, i64 noundef 8, i64 noundef 0) #14, !dbg !6341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr22) #13, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x21) #13, !dbg !6338
  br label %do.end25, !dbg !6339

do.end25:                                         ; preds = %asm.fallthrough24
  br label %do.body26, !dbg !6343

do.body26:                                        ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x27) #13, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %__x27, metadata !6246, metadata !DIExpression()), !dbg !6344
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !6344
  %dx = getelementptr inbounds %struct.pt_regs, ptr %30, i32 0, i32 12, !dbg !6344
  %31 = load i64, ptr %dx, align 8, !dbg !6344
  store i64 %31, ptr %__x27, align 8, !dbg !6344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr28) #13, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %__ptr28, metadata !6248, metadata !DIExpression()), !dbg !6344
  %32 = load ptr, ptr %sc.addr, align 8, !dbg !6344
  %dx29 = getelementptr inbounds %struct.sigcontext_64, ptr %32, i32 0, i32 12, !dbg !6344
  store ptr %dx29, ptr %__ptr28, align 8, !dbg !6344
  %33 = load i64, ptr %__x27, align 8, !dbg !6344
  %34 = load ptr, ptr %__ptr28, align 8, !dbg !6344
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %33, ptr elementtype(%struct.__large_struct) %34) #13
          to label %asm.fallthrough30 [label %Efault], !dbg !6344, !srcloc !6345

asm.fallthrough30:                                ; preds = %do.body26
  %35 = load ptr, ptr %__ptr28, align 8, !dbg !6346
  call void @kmsan_copy_to_user(ptr noundef %35, ptr noundef %__x27, i64 noundef 8, i64 noundef 0) #14, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr28) #13, !dbg !6343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x27) #13, !dbg !6343
  br label %do.end31, !dbg !6344

do.end31:                                         ; preds = %asm.fallthrough30
  br label %do.body32, !dbg !6348

do.body32:                                        ; preds = %do.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x33) #13, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %__x33, metadata !6249, metadata !DIExpression()), !dbg !6349
  %36 = load ptr, ptr %regs.addr, align 8, !dbg !6349
  %cx = getelementptr inbounds %struct.pt_regs, ptr %36, i32 0, i32 11, !dbg !6349
  %37 = load i64, ptr %cx, align 8, !dbg !6349
  store i64 %37, ptr %__x33, align 8, !dbg !6349
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr34) #13, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %__ptr34, metadata !6251, metadata !DIExpression()), !dbg !6349
  %38 = load ptr, ptr %sc.addr, align 8, !dbg !6349
  %cx35 = getelementptr inbounds %struct.sigcontext_64, ptr %38, i32 0, i32 14, !dbg !6349
  store ptr %cx35, ptr %__ptr34, align 8, !dbg !6349
  %39 = load i64, ptr %__x33, align 8, !dbg !6349
  %40 = load ptr, ptr %__ptr34, align 8, !dbg !6349
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %39, ptr elementtype(%struct.__large_struct) %40) #13
          to label %asm.fallthrough36 [label %Efault], !dbg !6349, !srcloc !6350

asm.fallthrough36:                                ; preds = %do.body32
  %41 = load ptr, ptr %__ptr34, align 8, !dbg !6351
  call void @kmsan_copy_to_user(ptr noundef %41, ptr noundef %__x33, i64 noundef 8, i64 noundef 0) #14, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr34) #13, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x33) #13, !dbg !6348
  br label %do.end37, !dbg !6349

do.end37:                                         ; preds = %asm.fallthrough36
  br label %do.body38, !dbg !6353

do.body38:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x39) #13, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %__x39, metadata !6252, metadata !DIExpression()), !dbg !6354
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !6354
  %ax = getelementptr inbounds %struct.pt_regs, ptr %42, i32 0, i32 10, !dbg !6354
  %43 = load i64, ptr %ax, align 8, !dbg !6354
  store i64 %43, ptr %__x39, align 8, !dbg !6354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr40) #13, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %__ptr40, metadata !6254, metadata !DIExpression()), !dbg !6354
  %44 = load ptr, ptr %sc.addr, align 8, !dbg !6354
  %ax41 = getelementptr inbounds %struct.sigcontext_64, ptr %44, i32 0, i32 13, !dbg !6354
  store ptr %ax41, ptr %__ptr40, align 8, !dbg !6354
  %45 = load i64, ptr %__x39, align 8, !dbg !6354
  %46 = load ptr, ptr %__ptr40, align 8, !dbg !6354
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %45, ptr elementtype(%struct.__large_struct) %46) #13
          to label %asm.fallthrough42 [label %Efault], !dbg !6354, !srcloc !6355

asm.fallthrough42:                                ; preds = %do.body38
  %47 = load ptr, ptr %__ptr40, align 8, !dbg !6356
  call void @kmsan_copy_to_user(ptr noundef %47, ptr noundef %__x39, i64 noundef 8, i64 noundef 0) #14, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr40) #13, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x39) #13, !dbg !6353
  br label %do.end43, !dbg !6354

do.end43:                                         ; preds = %asm.fallthrough42
  br label %do.body44, !dbg !6358

do.body44:                                        ; preds = %do.end43
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x45) #13, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__x45, metadata !6255, metadata !DIExpression()), !dbg !6359
  %48 = load ptr, ptr %regs.addr, align 8, !dbg !6359
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %48, i32 0, i32 9, !dbg !6359
  %49 = load i64, ptr %r8, align 8, !dbg !6359
  store i64 %49, ptr %__x45, align 8, !dbg !6359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr46) #13, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %__ptr46, metadata !6257, metadata !DIExpression()), !dbg !6359
  %50 = load ptr, ptr %sc.addr, align 8, !dbg !6359
  %r847 = getelementptr inbounds %struct.sigcontext_64, ptr %50, i32 0, i32 0, !dbg !6359
  store ptr %r847, ptr %__ptr46, align 8, !dbg !6359
  %51 = load i64, ptr %__x45, align 8, !dbg !6359
  %52 = load ptr, ptr %__ptr46, align 8, !dbg !6359
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %51, ptr elementtype(%struct.__large_struct) %52) #13
          to label %asm.fallthrough48 [label %Efault], !dbg !6359, !srcloc !6360

asm.fallthrough48:                                ; preds = %do.body44
  %53 = load ptr, ptr %__ptr46, align 8, !dbg !6361
  call void @kmsan_copy_to_user(ptr noundef %53, ptr noundef %__x45, i64 noundef 8, i64 noundef 0) #14, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr46) #13, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x45) #13, !dbg !6358
  br label %do.end49, !dbg !6359

do.end49:                                         ; preds = %asm.fallthrough48
  br label %do.body50, !dbg !6363

do.body50:                                        ; preds = %do.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x51) #13, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %__x51, metadata !6258, metadata !DIExpression()), !dbg !6364
  %54 = load ptr, ptr %regs.addr, align 8, !dbg !6364
  %r9 = getelementptr inbounds %struct.pt_regs, ptr %54, i32 0, i32 8, !dbg !6364
  %55 = load i64, ptr %r9, align 8, !dbg !6364
  store i64 %55, ptr %__x51, align 8, !dbg !6364
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr52) #13, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %__ptr52, metadata !6260, metadata !DIExpression()), !dbg !6364
  %56 = load ptr, ptr %sc.addr, align 8, !dbg !6364
  %r953 = getelementptr inbounds %struct.sigcontext_64, ptr %56, i32 0, i32 1, !dbg !6364
  store ptr %r953, ptr %__ptr52, align 8, !dbg !6364
  %57 = load i64, ptr %__x51, align 8, !dbg !6364
  %58 = load ptr, ptr %__ptr52, align 8, !dbg !6364
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %57, ptr elementtype(%struct.__large_struct) %58) #13
          to label %asm.fallthrough54 [label %Efault], !dbg !6364, !srcloc !6365

asm.fallthrough54:                                ; preds = %do.body50
  %59 = load ptr, ptr %__ptr52, align 8, !dbg !6366
  call void @kmsan_copy_to_user(ptr noundef %59, ptr noundef %__x51, i64 noundef 8, i64 noundef 0) #14, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr52) #13, !dbg !6363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x51) #13, !dbg !6363
  br label %do.end55, !dbg !6364

do.end55:                                         ; preds = %asm.fallthrough54
  br label %do.body56, !dbg !6368

do.body56:                                        ; preds = %do.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x57) #13, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %__x57, metadata !6261, metadata !DIExpression()), !dbg !6369
  %60 = load ptr, ptr %regs.addr, align 8, !dbg !6369
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %60, i32 0, i32 7, !dbg !6369
  %61 = load i64, ptr %r10, align 8, !dbg !6369
  store i64 %61, ptr %__x57, align 8, !dbg !6369
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr58) #13, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %__ptr58, metadata !6263, metadata !DIExpression()), !dbg !6369
  %62 = load ptr, ptr %sc.addr, align 8, !dbg !6369
  %r1059 = getelementptr inbounds %struct.sigcontext_64, ptr %62, i32 0, i32 2, !dbg !6369
  store ptr %r1059, ptr %__ptr58, align 8, !dbg !6369
  %63 = load i64, ptr %__x57, align 8, !dbg !6369
  %64 = load ptr, ptr %__ptr58, align 8, !dbg !6369
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %63, ptr elementtype(%struct.__large_struct) %64) #13
          to label %asm.fallthrough60 [label %Efault], !dbg !6369, !srcloc !6370

asm.fallthrough60:                                ; preds = %do.body56
  %65 = load ptr, ptr %__ptr58, align 8, !dbg !6371
  call void @kmsan_copy_to_user(ptr noundef %65, ptr noundef %__x57, i64 noundef 8, i64 noundef 0) #14, !dbg !6371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr58) #13, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x57) #13, !dbg !6368
  br label %do.end61, !dbg !6369

do.end61:                                         ; preds = %asm.fallthrough60
  br label %do.body62, !dbg !6373

do.body62:                                        ; preds = %do.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x63) #13, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %__x63, metadata !6264, metadata !DIExpression()), !dbg !6374
  %66 = load ptr, ptr %regs.addr, align 8, !dbg !6374
  %r11 = getelementptr inbounds %struct.pt_regs, ptr %66, i32 0, i32 6, !dbg !6374
  %67 = load i64, ptr %r11, align 8, !dbg !6374
  store i64 %67, ptr %__x63, align 8, !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr64) #13, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %__ptr64, metadata !6266, metadata !DIExpression()), !dbg !6374
  %68 = load ptr, ptr %sc.addr, align 8, !dbg !6374
  %r1165 = getelementptr inbounds %struct.sigcontext_64, ptr %68, i32 0, i32 3, !dbg !6374
  store ptr %r1165, ptr %__ptr64, align 8, !dbg !6374
  %69 = load i64, ptr %__x63, align 8, !dbg !6374
  %70 = load ptr, ptr %__ptr64, align 8, !dbg !6374
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %69, ptr elementtype(%struct.__large_struct) %70) #13
          to label %asm.fallthrough66 [label %Efault], !dbg !6374, !srcloc !6375

asm.fallthrough66:                                ; preds = %do.body62
  %71 = load ptr, ptr %__ptr64, align 8, !dbg !6376
  call void @kmsan_copy_to_user(ptr noundef %71, ptr noundef %__x63, i64 noundef 8, i64 noundef 0) #14, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr64) #13, !dbg !6373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x63) #13, !dbg !6373
  br label %do.end67, !dbg !6374

do.end67:                                         ; preds = %asm.fallthrough66
  br label %do.body68, !dbg !6378

do.body68:                                        ; preds = %do.end67
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x69) #13, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__x69, metadata !6267, metadata !DIExpression()), !dbg !6379
  %72 = load ptr, ptr %regs.addr, align 8, !dbg !6379
  %r12 = getelementptr inbounds %struct.pt_regs, ptr %72, i32 0, i32 3, !dbg !6379
  %73 = load i64, ptr %r12, align 8, !dbg !6379
  store i64 %73, ptr %__x69, align 8, !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr70) #13, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__ptr70, metadata !6269, metadata !DIExpression()), !dbg !6379
  %74 = load ptr, ptr %sc.addr, align 8, !dbg !6379
  %r1271 = getelementptr inbounds %struct.sigcontext_64, ptr %74, i32 0, i32 4, !dbg !6379
  store ptr %r1271, ptr %__ptr70, align 8, !dbg !6379
  %75 = load i64, ptr %__x69, align 8, !dbg !6379
  %76 = load ptr, ptr %__ptr70, align 8, !dbg !6379
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %75, ptr elementtype(%struct.__large_struct) %76) #13
          to label %asm.fallthrough72 [label %Efault], !dbg !6379, !srcloc !6380

asm.fallthrough72:                                ; preds = %do.body68
  %77 = load ptr, ptr %__ptr70, align 8, !dbg !6381
  call void @kmsan_copy_to_user(ptr noundef %77, ptr noundef %__x69, i64 noundef 8, i64 noundef 0) #14, !dbg !6381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr70) #13, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x69) #13, !dbg !6378
  br label %do.end73, !dbg !6379

do.end73:                                         ; preds = %asm.fallthrough72
  br label %do.body74, !dbg !6383

do.body74:                                        ; preds = %do.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x75) #13, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__x75, metadata !6270, metadata !DIExpression()), !dbg !6384
  %78 = load ptr, ptr %regs.addr, align 8, !dbg !6384
  %r13 = getelementptr inbounds %struct.pt_regs, ptr %78, i32 0, i32 2, !dbg !6384
  %79 = load i64, ptr %r13, align 8, !dbg !6384
  store i64 %79, ptr %__x75, align 8, !dbg !6384
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr76) #13, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__ptr76, metadata !6272, metadata !DIExpression()), !dbg !6384
  %80 = load ptr, ptr %sc.addr, align 8, !dbg !6384
  %r1377 = getelementptr inbounds %struct.sigcontext_64, ptr %80, i32 0, i32 5, !dbg !6384
  store ptr %r1377, ptr %__ptr76, align 8, !dbg !6384
  %81 = load i64, ptr %__x75, align 8, !dbg !6384
  %82 = load ptr, ptr %__ptr76, align 8, !dbg !6384
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %81, ptr elementtype(%struct.__large_struct) %82) #13
          to label %asm.fallthrough78 [label %Efault], !dbg !6384, !srcloc !6385

asm.fallthrough78:                                ; preds = %do.body74
  %83 = load ptr, ptr %__ptr76, align 8, !dbg !6386
  call void @kmsan_copy_to_user(ptr noundef %83, ptr noundef %__x75, i64 noundef 8, i64 noundef 0) #14, !dbg !6386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr76) #13, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x75) #13, !dbg !6383
  br label %do.end79, !dbg !6384

do.end79:                                         ; preds = %asm.fallthrough78
  br label %do.body80, !dbg !6388

do.body80:                                        ; preds = %do.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x81) #13, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %__x81, metadata !6273, metadata !DIExpression()), !dbg !6389
  %84 = load ptr, ptr %regs.addr, align 8, !dbg !6389
  %r14 = getelementptr inbounds %struct.pt_regs, ptr %84, i32 0, i32 1, !dbg !6389
  %85 = load i64, ptr %r14, align 8, !dbg !6389
  store i64 %85, ptr %__x81, align 8, !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr82) #13, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %__ptr82, metadata !6275, metadata !DIExpression()), !dbg !6389
  %86 = load ptr, ptr %sc.addr, align 8, !dbg !6389
  %r1483 = getelementptr inbounds %struct.sigcontext_64, ptr %86, i32 0, i32 6, !dbg !6389
  store ptr %r1483, ptr %__ptr82, align 8, !dbg !6389
  %87 = load i64, ptr %__x81, align 8, !dbg !6389
  %88 = load ptr, ptr %__ptr82, align 8, !dbg !6389
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %87, ptr elementtype(%struct.__large_struct) %88) #13
          to label %asm.fallthrough84 [label %Efault], !dbg !6389, !srcloc !6390

asm.fallthrough84:                                ; preds = %do.body80
  %89 = load ptr, ptr %__ptr82, align 8, !dbg !6391
  call void @kmsan_copy_to_user(ptr noundef %89, ptr noundef %__x81, i64 noundef 8, i64 noundef 0) #14, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr82) #13, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x81) #13, !dbg !6388
  br label %do.end85, !dbg !6389

do.end85:                                         ; preds = %asm.fallthrough84
  br label %do.body86, !dbg !6393

do.body86:                                        ; preds = %do.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x87) #13, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %__x87, metadata !6276, metadata !DIExpression()), !dbg !6394
  %90 = load ptr, ptr %regs.addr, align 8, !dbg !6394
  %r15 = getelementptr inbounds %struct.pt_regs, ptr %90, i32 0, i32 0, !dbg !6394
  %91 = load i64, ptr %r15, align 8, !dbg !6394
  store i64 %91, ptr %__x87, align 8, !dbg !6394
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr88) #13, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %__ptr88, metadata !6278, metadata !DIExpression()), !dbg !6394
  %92 = load ptr, ptr %sc.addr, align 8, !dbg !6394
  %r1589 = getelementptr inbounds %struct.sigcontext_64, ptr %92, i32 0, i32 7, !dbg !6394
  store ptr %r1589, ptr %__ptr88, align 8, !dbg !6394
  %93 = load i64, ptr %__x87, align 8, !dbg !6394
  %94 = load ptr, ptr %__ptr88, align 8, !dbg !6394
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %93, ptr elementtype(%struct.__large_struct) %94) #13
          to label %asm.fallthrough90 [label %Efault], !dbg !6394, !srcloc !6395

asm.fallthrough90:                                ; preds = %do.body86
  %95 = load ptr, ptr %__ptr88, align 8, !dbg !6396
  call void @kmsan_copy_to_user(ptr noundef %95, ptr noundef %__x87, i64 noundef 8, i64 noundef 0) #14, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr88) #13, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x87) #13, !dbg !6393
  br label %do.end91, !dbg !6394

do.end91:                                         ; preds = %asm.fallthrough90
  br label %do.body92, !dbg !6398

do.body92:                                        ; preds = %do.end91
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x93) #13, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %__x93, metadata !6279, metadata !DIExpression()), !dbg !6399
  %call = call ptr @get_current() #14, !dbg !6399
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6399
  %trap_nr = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 12, !dbg !6399
  %96 = load i64, ptr %trap_nr, align 16, !dbg !6399
  store i64 %96, ptr %__x93, align 8, !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr94) #13, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %__ptr94, metadata !6281, metadata !DIExpression()), !dbg !6399
  %97 = load ptr, ptr %sc.addr, align 8, !dbg !6399
  %trapno = getelementptr inbounds %struct.sigcontext_64, ptr %97, i32 0, i32 23, !dbg !6399
  store ptr %trapno, ptr %__ptr94, align 8, !dbg !6399
  %98 = load i64, ptr %__x93, align 8, !dbg !6399
  %99 = load ptr, ptr %__ptr94, align 8, !dbg !6399
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %98, ptr elementtype(%struct.__large_struct) %99) #13
          to label %asm.fallthrough95 [label %Efault], !dbg !6399, !srcloc !6400

asm.fallthrough95:                                ; preds = %do.body92
  %100 = load ptr, ptr %__ptr94, align 8, !dbg !6401
  call void @kmsan_copy_to_user(ptr noundef %100, ptr noundef %__x93, i64 noundef 8, i64 noundef 0) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr94) #13, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x93) #13, !dbg !6398
  br label %do.end96, !dbg !6399

do.end96:                                         ; preds = %asm.fallthrough95
  br label %do.body97, !dbg !6403

do.body97:                                        ; preds = %do.end96
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x98) #13, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %__x98, metadata !6282, metadata !DIExpression()), !dbg !6404
  %call99 = call ptr @get_current() #14, !dbg !6404
  %thread100 = getelementptr inbounds %struct.task_struct, ptr %call99, i32 0, i32 197, !dbg !6404
  %error_code = getelementptr inbounds %struct.thread_struct, ptr %thread100, i32 0, i32 13, !dbg !6404
  %101 = load i64, ptr %error_code, align 8, !dbg !6404
  store i64 %101, ptr %__x98, align 8, !dbg !6404
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr101) #13, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %__ptr101, metadata !6284, metadata !DIExpression()), !dbg !6404
  %102 = load ptr, ptr %sc.addr, align 8, !dbg !6404
  %err = getelementptr inbounds %struct.sigcontext_64, ptr %102, i32 0, i32 22, !dbg !6404
  store ptr %err, ptr %__ptr101, align 8, !dbg !6404
  %103 = load i64, ptr %__x98, align 8, !dbg !6404
  %104 = load ptr, ptr %__ptr101, align 8, !dbg !6404
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %103, ptr elementtype(%struct.__large_struct) %104) #13
          to label %asm.fallthrough102 [label %Efault], !dbg !6404, !srcloc !6405

asm.fallthrough102:                               ; preds = %do.body97
  %105 = load ptr, ptr %__ptr101, align 8, !dbg !6406
  call void @kmsan_copy_to_user(ptr noundef %105, ptr noundef %__x98, i64 noundef 8, i64 noundef 0) #14, !dbg !6406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr101) #13, !dbg !6403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x98) #13, !dbg !6403
  br label %do.end103, !dbg !6404

do.end103:                                        ; preds = %asm.fallthrough102
  br label %do.body104, !dbg !6408

do.body104:                                       ; preds = %do.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x105) #13, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %__x105, metadata !6285, metadata !DIExpression()), !dbg !6409
  %106 = load ptr, ptr %regs.addr, align 8, !dbg !6409
  %ip = getelementptr inbounds %struct.pt_regs, ptr %106, i32 0, i32 16, !dbg !6409
  %107 = load i64, ptr %ip, align 8, !dbg !6409
  store i64 %107, ptr %__x105, align 8, !dbg !6409
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr106) #13, !dbg !6409
  call void @llvm.dbg.declare(metadata ptr %__ptr106, metadata !6287, metadata !DIExpression()), !dbg !6409
  %108 = load ptr, ptr %sc.addr, align 8, !dbg !6409
  %ip107 = getelementptr inbounds %struct.sigcontext_64, ptr %108, i32 0, i32 16, !dbg !6409
  store ptr %ip107, ptr %__ptr106, align 8, !dbg !6409
  %109 = load i64, ptr %__x105, align 8, !dbg !6409
  %110 = load ptr, ptr %__ptr106, align 8, !dbg !6409
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %109, ptr elementtype(%struct.__large_struct) %110) #13
          to label %asm.fallthrough108 [label %Efault], !dbg !6409, !srcloc !6410

asm.fallthrough108:                               ; preds = %do.body104
  %111 = load ptr, ptr %__ptr106, align 8, !dbg !6411
  call void @kmsan_copy_to_user(ptr noundef %111, ptr noundef %__x105, i64 noundef 8, i64 noundef 0) #14, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr106) #13, !dbg !6408
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x105) #13, !dbg !6408
  br label %do.end109, !dbg !6409

do.end109:                                        ; preds = %asm.fallthrough108
  br label %do.body110, !dbg !6413

do.body110:                                       ; preds = %do.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x111) #13, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__x111, metadata !6288, metadata !DIExpression()), !dbg !6414
  %112 = load ptr, ptr %regs.addr, align 8, !dbg !6414
  %flags = getelementptr inbounds %struct.pt_regs, ptr %112, i32 0, i32 18, !dbg !6414
  %113 = load i64, ptr %flags, align 8, !dbg !6414
  store i64 %113, ptr %__x111, align 8, !dbg !6414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr112) #13, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__ptr112, metadata !6290, metadata !DIExpression()), !dbg !6414
  %114 = load ptr, ptr %sc.addr, align 8, !dbg !6414
  %flags113 = getelementptr inbounds %struct.sigcontext_64, ptr %114, i32 0, i32 17, !dbg !6414
  store ptr %flags113, ptr %__ptr112, align 8, !dbg !6414
  %115 = load i64, ptr %__x111, align 8, !dbg !6414
  %116 = load ptr, ptr %__ptr112, align 8, !dbg !6414
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %115, ptr elementtype(%struct.__large_struct) %116) #13
          to label %asm.fallthrough114 [label %Efault], !dbg !6414, !srcloc !6415

asm.fallthrough114:                               ; preds = %do.body110
  %117 = load ptr, ptr %__ptr112, align 8, !dbg !6416
  call void @kmsan_copy_to_user(ptr noundef %117, ptr noundef %__x111, i64 noundef 8, i64 noundef 0) #14, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr112) #13, !dbg !6413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x111) #13, !dbg !6413
  br label %do.end115, !dbg !6414

do.end115:                                        ; preds = %asm.fallthrough114
  br label %do.body116, !dbg !6418

do.body116:                                       ; preds = %do.end115
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x117) #13, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %__x117, metadata !6291, metadata !DIExpression()), !dbg !6419
  %118 = load ptr, ptr %regs.addr, align 8, !dbg !6419
  %119 = getelementptr inbounds %struct.pt_regs, ptr %118, i32 0, i32 17, !dbg !6419
  %120 = load i16, ptr %119, align 8, !dbg !6419
  store i16 %120, ptr %__x117, align 2, !dbg !6419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr118) #13, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %__ptr118, metadata !6293, metadata !DIExpression()), !dbg !6419
  %121 = load ptr, ptr %sc.addr, align 8, !dbg !6419
  %cs = getelementptr inbounds %struct.sigcontext_64, ptr %121, i32 0, i32 18, !dbg !6419
  store ptr %cs, ptr %__ptr118, align 8, !dbg !6419
  %122 = load i16, ptr %__x117, align 2, !dbg !6419
  %123 = load ptr, ptr %__ptr118, align 8, !dbg !6419
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %122, ptr elementtype(%struct.__large_struct) %123) #13
          to label %asm.fallthrough119 [label %Efault], !dbg !6419, !srcloc !6420

asm.fallthrough119:                               ; preds = %do.body116
  %124 = load ptr, ptr %__ptr118, align 8, !dbg !6421
  call void @kmsan_copy_to_user(ptr noundef %124, ptr noundef %__x117, i64 noundef 2, i64 noundef 0) #14, !dbg !6421
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr118) #13, !dbg !6418
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x117) #13, !dbg !6418
  br label %do.end120, !dbg !6419

do.end120:                                        ; preds = %asm.fallthrough119
  br label %do.body121, !dbg !6423

do.body121:                                       ; preds = %do.end120
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x122) #13, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %__x122, metadata !6295, metadata !DIExpression()), !dbg !6424
  store i16 0, ptr %__x122, align 2, !dbg !6424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr123) #13, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %__ptr123, metadata !6297, metadata !DIExpression()), !dbg !6424
  %125 = load ptr, ptr %sc.addr, align 8, !dbg !6424
  %gs = getelementptr inbounds %struct.sigcontext_64, ptr %125, i32 0, i32 19, !dbg !6424
  store ptr %gs, ptr %__ptr123, align 8, !dbg !6424
  %126 = load i16, ptr %__x122, align 2, !dbg !6424
  %127 = load ptr, ptr %__ptr123, align 8, !dbg !6424
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %126, ptr elementtype(%struct.__large_struct) %127) #13
          to label %asm.fallthrough124 [label %Efault], !dbg !6424, !srcloc !6425

asm.fallthrough124:                               ; preds = %do.body121
  %128 = load ptr, ptr %__ptr123, align 8, !dbg !6426
  call void @kmsan_copy_to_user(ptr noundef %128, ptr noundef %__x122, i64 noundef 2, i64 noundef 0) #14, !dbg !6426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr123) #13, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x122) #13, !dbg !6423
  br label %do.end125, !dbg !6424

do.end125:                                        ; preds = %asm.fallthrough124
  br label %do.body126, !dbg !6428

do.body126:                                       ; preds = %do.end125
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x127) #13, !dbg !6429
  call void @llvm.dbg.declare(metadata ptr %__x127, metadata !6298, metadata !DIExpression()), !dbg !6429
  store i16 0, ptr %__x127, align 2, !dbg !6429
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr128) #13, !dbg !6429
  call void @llvm.dbg.declare(metadata ptr %__ptr128, metadata !6300, metadata !DIExpression()), !dbg !6429
  %129 = load ptr, ptr %sc.addr, align 8, !dbg !6429
  %fs = getelementptr inbounds %struct.sigcontext_64, ptr %129, i32 0, i32 20, !dbg !6429
  store ptr %fs, ptr %__ptr128, align 8, !dbg !6429
  %130 = load i16, ptr %__x127, align 2, !dbg !6429
  %131 = load ptr, ptr %__ptr128, align 8, !dbg !6429
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %130, ptr elementtype(%struct.__large_struct) %131) #13
          to label %asm.fallthrough129 [label %Efault], !dbg !6429, !srcloc !6430

asm.fallthrough129:                               ; preds = %do.body126
  %132 = load ptr, ptr %__ptr128, align 8, !dbg !6431
  call void @kmsan_copy_to_user(ptr noundef %132, ptr noundef %__x127, i64 noundef 2, i64 noundef 0) #14, !dbg !6431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr128) #13, !dbg !6428
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x127) #13, !dbg !6428
  br label %do.end130, !dbg !6429

do.end130:                                        ; preds = %asm.fallthrough129
  br label %do.body131, !dbg !6433

do.body131:                                       ; preds = %do.end130
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x132) #13, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %__x132, metadata !6301, metadata !DIExpression()), !dbg !6434
  %133 = load ptr, ptr %regs.addr, align 8, !dbg !6434
  %134 = getelementptr inbounds %struct.pt_regs, ptr %133, i32 0, i32 20, !dbg !6434
  %135 = load i16, ptr %134, align 8, !dbg !6434
  store i16 %135, ptr %__x132, align 2, !dbg !6434
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr133) #13, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %__ptr133, metadata !6303, metadata !DIExpression()), !dbg !6434
  %136 = load ptr, ptr %sc.addr, align 8, !dbg !6434
  %ss = getelementptr inbounds %struct.sigcontext_64, ptr %136, i32 0, i32 21, !dbg !6434
  store ptr %ss, ptr %__ptr133, align 8, !dbg !6434
  %137 = load i16, ptr %__x132, align 2, !dbg !6434
  %138 = load ptr, ptr %__ptr133, align 8, !dbg !6434
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %137, ptr elementtype(%struct.__large_struct) %138) #13
          to label %asm.fallthrough134 [label %Efault], !dbg !6434, !srcloc !6435

asm.fallthrough134:                               ; preds = %do.body131
  %139 = load ptr, ptr %__ptr133, align 8, !dbg !6436
  call void @kmsan_copy_to_user(ptr noundef %139, ptr noundef %__x132, i64 noundef 2, i64 noundef 0) #14, !dbg !6436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr133) #13, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x132) #13, !dbg !6433
  br label %do.end135, !dbg !6434

do.end135:                                        ; preds = %asm.fallthrough134
  br label %do.body136, !dbg !6438

do.body136:                                       ; preds = %do.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x137) #13, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__x137, metadata !6304, metadata !DIExpression()), !dbg !6439
  %140 = load ptr, ptr %fpstate.addr, align 8, !dbg !6439
  %141 = ptrtoint ptr %140 to i64, !dbg !6439
  store i64 %141, ptr %__x137, align 8, !dbg !6439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr138) #13, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %__ptr138, metadata !6306, metadata !DIExpression()), !dbg !6439
  %142 = load ptr, ptr %sc.addr, align 8, !dbg !6439
  %fpstate139 = getelementptr inbounds %struct.sigcontext_64, ptr %142, i32 0, i32 26, !dbg !6439
  store ptr %fpstate139, ptr %__ptr138, align 8, !dbg !6439
  %143 = load i64, ptr %__x137, align 8, !dbg !6439
  %144 = load ptr, ptr %__ptr138, align 8, !dbg !6439
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %143, ptr elementtype(%struct.__large_struct) %144) #13
          to label %asm.fallthrough140 [label %Efault], !dbg !6439, !srcloc !6440

asm.fallthrough140:                               ; preds = %do.body136
  %145 = load ptr, ptr %__ptr138, align 8, !dbg !6441
  call void @kmsan_copy_to_user(ptr noundef %145, ptr noundef %__x137, i64 noundef 8, i64 noundef 0) #14, !dbg !6441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr138) #13, !dbg !6438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x137) #13, !dbg !6438
  br label %do.end141, !dbg !6439

do.end141:                                        ; preds = %asm.fallthrough140
  br label %do.body142, !dbg !6443

do.body142:                                       ; preds = %do.end141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x143) #13, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %__x143, metadata !6307, metadata !DIExpression()), !dbg !6444
  %146 = load i64, ptr %mask.addr, align 8, !dbg !6444
  store i64 %146, ptr %__x143, align 8, !dbg !6444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr144) #13, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %__ptr144, metadata !6309, metadata !DIExpression()), !dbg !6444
  %147 = load ptr, ptr %sc.addr, align 8, !dbg !6444
  %oldmask = getelementptr inbounds %struct.sigcontext_64, ptr %147, i32 0, i32 24, !dbg !6444
  store ptr %oldmask, ptr %__ptr144, align 8, !dbg !6444
  %148 = load i64, ptr %__x143, align 8, !dbg !6444
  %149 = load ptr, ptr %__ptr144, align 8, !dbg !6444
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %148, ptr elementtype(%struct.__large_struct) %149) #13
          to label %asm.fallthrough145 [label %Efault], !dbg !6444, !srcloc !6445

asm.fallthrough145:                               ; preds = %do.body142
  %150 = load ptr, ptr %__ptr144, align 8, !dbg !6446
  call void @kmsan_copy_to_user(ptr noundef %150, ptr noundef %__x143, i64 noundef 8, i64 noundef 0) #14, !dbg !6446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr144) #13, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x143) #13, !dbg !6443
  br label %do.end146, !dbg !6444

do.end146:                                        ; preds = %asm.fallthrough145
  br label %do.body147, !dbg !6448

do.body147:                                       ; preds = %do.end146
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x148) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__x148, metadata !6310, metadata !DIExpression()), !dbg !6449
  %call149 = call ptr @get_current() #14, !dbg !6449
  %thread150 = getelementptr inbounds %struct.task_struct, ptr %call149, i32 0, i32 197, !dbg !6449
  %cr2 = getelementptr inbounds %struct.thread_struct, ptr %thread150, i32 0, i32 11, !dbg !6449
  %151 = load i64, ptr %cr2, align 8, !dbg !6449
  store i64 %151, ptr %__x148, align 8, !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr151) #13, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__ptr151, metadata !6312, metadata !DIExpression()), !dbg !6449
  %152 = load ptr, ptr %sc.addr, align 8, !dbg !6449
  %cr2152 = getelementptr inbounds %struct.sigcontext_64, ptr %152, i32 0, i32 25, !dbg !6449
  store ptr %cr2152, ptr %__ptr151, align 8, !dbg !6449
  %153 = load i64, ptr %__x148, align 8, !dbg !6449
  %154 = load ptr, ptr %__ptr151, align 8, !dbg !6449
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %153, ptr elementtype(%struct.__large_struct) %154) #13
          to label %asm.fallthrough153 [label %Efault], !dbg !6449, !srcloc !6450

asm.fallthrough153:                               ; preds = %do.body147
  %155 = load ptr, ptr %__ptr151, align 8, !dbg !6451
  call void @kmsan_copy_to_user(ptr noundef %155, ptr noundef %__x148, i64 noundef 8, i64 noundef 0) #14, !dbg !6451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr151) #13, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x148) #13, !dbg !6448
  br label %do.end154, !dbg !6449

do.end154:                                        ; preds = %asm.fallthrough153
  store i32 0, ptr %retval, align 4, !dbg !6453
  br label %return, !dbg !6453

Efault:                                           ; preds = %do.body147, %do.body142, %do.body136, %do.body131, %do.body126, %do.body121, %do.body116, %do.body110, %do.body104, %do.body97, %do.body92, %do.body86, %do.body80, %do.body74, %do.body68, %do.body62, %do.body56, %do.body50, %do.body44, %do.body38, %do.body32, %do.body26, %do.body20, %do.body14, %do.body8, %do.body2, %do.body
  call void @llvm.dbg.label(metadata !6313), !dbg !6454
  store i32 -14, ptr %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

return:                                           ; preds = %Efault, %do.end154
  %156 = load i32, ptr %retval, align 4, !dbg !6456
  ret i32 %156, !dbg !6456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #5 align 16 !dbg !6457 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6459, !srcloc !6460
  ret void, !dbg !6461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6462 dso_local i32 @copy_siginfo_to_user(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_signal_shadow_stack(ptr noundef %ksig) #3 align 16 !dbg !6469 {
entry:
  %ksig.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  ret i32 0, !dbg !6476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @force_valid_ss(ptr noundef %regs) #0 align 16 !dbg !6477 {
entry:
  %regs.addr = alloca ptr, align 8
  %ar = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6481, metadata !DIExpression()), !dbg !6483
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar) #13, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %ar, metadata !6482, metadata !DIExpression()), !dbg !6485
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6486
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 20, !dbg !6487
  %2 = load i16, ptr %1, align 8, !dbg !6487
  %3 = call i32 asm sideeffect "lar $1, $0\0A\09jz 1f\0A\09xorl $0, $0\0A\091:", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i16 %2) #13, !dbg !6488, !srcloc !6489
  store i32 %3, ptr %ar, align 4, !dbg !6488
  %4 = load i32, ptr %ar, align 4, !dbg !6490
  %and = and i32 %4, 65024, !dbg !6490
  store i32 %and, ptr %ar, align 4, !dbg !6490
  %5 = load i32, ptr %ar, align 4, !dbg !6491
  %cmp = icmp ne i32 %5, 61952, !dbg !6493
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6494

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr %ar, align 4, !dbg !6495
  %cmp1 = icmp ne i32 %6, 62976, !dbg !6496
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6497

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %8 = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 20, !dbg !6499
  store i16 43, ptr %8, align 8, !dbg !6500
  br label %if.end, !dbg !6498

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar) #13, !dbg !6501
  ret void, !dbg !6501
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_rt_sigreturn(ptr noundef %__unused) #0 align 16 !dbg !6502 {
entry:
  %retval = alloca i64, align 8
  %__unused.addr = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %set = alloca %struct.sigset_t, align 8
  %uc_flags = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %__ret_gu13 = alloca i32, align 4
  %__val_gu14 = alloca i64, align 8
  %__tmp20 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  %tmp22 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6508, metadata !DIExpression()), !dbg !6528
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #13, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !6509, metadata !DIExpression()), !dbg !6530
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6510, metadata !DIExpression()), !dbg !6531
  %call = call ptr @get_current() #14, !dbg !6531
  %call1 = call ptr @task_stack_page(ptr noundef %call) #14, !dbg !6531
  %0 = ptrtoint ptr %call1 to i64, !dbg !6531
  store i64 %0, ptr %__ptr, align 8, !dbg !6531
  %1 = load i64, ptr %__ptr, align 8, !dbg !6531
  %add = add i64 %1, 16384, !dbg !6531
  store i64 %add, ptr %__ptr, align 8, !dbg !6531
  %2 = load i64, ptr %__ptr, align 8, !dbg !6531
  %3 = inttoptr i64 %2 to ptr, !dbg !6531
  %add.ptr = getelementptr %struct.pt_regs, ptr %3, i64 -1, !dbg !6531
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6531
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !6532
  %4 = load ptr, ptr %tmp, align 8, !dbg !6531
  store ptr %4, ptr %regs, align 8, !dbg !6530
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame) #13, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %frame, metadata !6512, metadata !DIExpression()), !dbg !6534
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #13, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %set, metadata !6513, metadata !DIExpression()), !dbg !6536
  call void @llvm.lifetime.start.p0(i64 8, ptr %uc_flags) #13, !dbg !6537
  call void @llvm.dbg.declare(metadata ptr %uc_flags, metadata !6514, metadata !DIExpression()), !dbg !6538
  %5 = load ptr, ptr %regs, align 8, !dbg !6539
  %sp = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 19, !dbg !6540
  %6 = load i64, ptr %sp, align 8, !dbg !6540
  %sub = sub i64 %6, 8, !dbg !6541
  %7 = inttoptr i64 %sub to ptr, !dbg !6542
  store ptr %7, ptr %frame, align 8, !dbg !6543
  %8 = load ptr, ptr %frame, align 8, !dbg !6544
  %call2 = call zeroext i1 @__access_ok(ptr noundef %8, i64 noundef 440) #14, !dbg !6544
  %lnot = xor i1 %call2, true, !dbg !6544
  %lnot3 = xor i1 %lnot, true, !dbg !6544
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6544
  %conv = sext i32 %lnot.ext to i64, !dbg !6544
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6544
  %tobool = icmp ne i64 %expval, 0, !dbg !6544
  br i1 %tobool, label %if.end, label %if.then, !dbg !6546

if.then:                                          ; preds = %entry
  br label %badframe, !dbg !6547

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #13, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6515, metadata !DIExpression()), !dbg !6548
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu) #13, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6518, metadata !DIExpression()), !dbg !6548
  %9 = call i64 @llvm.read_register.i64(metadata !5934), !dbg !6548
  %10 = load ptr, ptr %frame, align 8, !dbg !6548
  %uc = getelementptr inbounds %struct.rt_sigframe, ptr %10, i32 0, i32 1, !dbg !6548
  %uc_sigmask = getelementptr inbounds %struct.ucontext, ptr %uc, i32 0, i32 4, !dbg !6548
  %11 = call { ptr, i64, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %uc_sigmask, i64 8, i64 %9) #13, !dbg !6548, !srcloc !6549
  %asmresult = extractvalue { ptr, i64, i64 } %11, 0, !dbg !6548
  %asmresult4 = extractvalue { ptr, i64, i64 } %11, 1, !dbg !6548
  %asmresult5 = extractvalue { ptr, i64, i64 } %11, 2, !dbg !6548
  %12 = ptrtoint ptr %asmresult to i64, !dbg !6548
  %13 = trunc i64 %12 to i32, !dbg !6548
  store i32 %13, ptr %__ret_gu, align 4, !dbg !6548
  store i64 %asmresult4, ptr %__val_gu, align 8, !dbg !6548
  call void @llvm.write_register.i64(metadata !5934, i64 %asmresult5), !dbg !6548
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #13, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6519, metadata !DIExpression()), !dbg !6550
  %14 = load i64, ptr %__val_gu, align 8, !dbg !6550
  store i64 %14, ptr %__tmp, align 8, !dbg !6550
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !6550
  %15 = load i64, ptr %__tmp, align 8, !dbg !6550
  store i64 %15, ptr %__val_gu, align 8, !dbg !6550
  store i64 %15, ptr %tmp6, align 8, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #13, !dbg !6548
  %16 = load i64, ptr %tmp6, align 8, !dbg !6550
  %17 = load i64, ptr %__val_gu, align 8, !dbg !6548
  store i64 %17, ptr %set, align 8, !dbg !6548
  %18 = load i32, ptr %__ret_gu, align 4, !dbg !6548
  %conv8 = sext i32 %18 to i64, !dbg !6548
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6548
  store i64 %expval9, ptr %tmp7, align 8, !dbg !6548
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu) #13, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #13, !dbg !6551
  %19 = load i64, ptr %tmp7, align 8, !dbg !6548
  %tobool10 = icmp ne i64 %19, 0, !dbg !6551
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6552

if.then11:                                        ; preds = %if.end
  br label %badframe, !dbg !6553

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu13) #13, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %__ret_gu13, metadata !6521, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu14) #13, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %__val_gu14, metadata !6524, metadata !DIExpression()), !dbg !6554
  %20 = call i64 @llvm.read_register.i64(metadata !5934), !dbg !6554
  %21 = load ptr, ptr %frame, align 8, !dbg !6554
  %uc15 = getelementptr inbounds %struct.rt_sigframe, ptr %21, i32 0, i32 1, !dbg !6554
  %uc_flags16 = getelementptr inbounds %struct.ucontext, ptr %uc15, i32 0, i32 0, !dbg !6554
  %22 = call { ptr, i64, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %uc_flags16, i64 8, i64 %20) #13, !dbg !6554, !srcloc !6555
  %asmresult17 = extractvalue { ptr, i64, i64 } %22, 0, !dbg !6554
  %asmresult18 = extractvalue { ptr, i64, i64 } %22, 1, !dbg !6554
  %asmresult19 = extractvalue { ptr, i64, i64 } %22, 2, !dbg !6554
  %23 = ptrtoint ptr %asmresult17 to i64, !dbg !6554
  %24 = trunc i64 %23 to i32, !dbg !6554
  store i32 %24, ptr %__ret_gu13, align 4, !dbg !6554
  store i64 %asmresult18, ptr %__val_gu14, align 8, !dbg !6554
  call void @llvm.write_register.i64(metadata !5934, i64 %asmresult19), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp20) #13, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %__tmp20, metadata !6525, metadata !DIExpression()), !dbg !6556
  %25 = load i64, ptr %__val_gu14, align 8, !dbg !6556
  store i64 %25, ptr %__tmp20, align 8, !dbg !6556
  call void @kmsan_unpoison_memory(ptr noundef %__tmp20, i64 noundef 8) #14, !dbg !6556
  %26 = load i64, ptr %__tmp20, align 8, !dbg !6556
  store i64 %26, ptr %__val_gu14, align 8, !dbg !6556
  store i64 %26, ptr %tmp21, align 8, !dbg !6556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp20) #13, !dbg !6554
  %27 = load i64, ptr %tmp21, align 8, !dbg !6556
  %28 = load i64, ptr %__val_gu14, align 8, !dbg !6554
  store i64 %28, ptr %uc_flags, align 8, !dbg !6554
  %29 = load i32, ptr %__ret_gu13, align 4, !dbg !6554
  %conv23 = sext i32 %29 to i64, !dbg !6554
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6554
  store i64 %expval24, ptr %tmp22, align 8, !dbg !6554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu14) #13, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu13) #13, !dbg !6557
  %30 = load i64, ptr %tmp22, align 8, !dbg !6554
  %tobool25 = icmp ne i64 %30, 0, !dbg !6557
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6558

if.then26:                                        ; preds = %if.end12
  br label %badframe, !dbg !6559

if.end27:                                         ; preds = %if.end12
  call void @set_current_blocked(ptr noundef %set) #14, !dbg !6560
  %31 = load ptr, ptr %frame, align 8, !dbg !6561
  %uc28 = getelementptr inbounds %struct.rt_sigframe, ptr %31, i32 0, i32 1, !dbg !6563
  %uc_stack = getelementptr inbounds %struct.ucontext, ptr %uc28, i32 0, i32 2, !dbg !6564
  %call29 = call i32 @restore_altstack(ptr noundef %uc_stack) #14, !dbg !6565
  %tobool30 = icmp ne i32 %call29, 0, !dbg !6565
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6566

if.then31:                                        ; preds = %if.end27
  br label %badframe, !dbg !6567

if.end32:                                         ; preds = %if.end27
  %32 = load ptr, ptr %regs, align 8, !dbg !6568
  %33 = load ptr, ptr %frame, align 8, !dbg !6570
  %uc33 = getelementptr inbounds %struct.rt_sigframe, ptr %33, i32 0, i32 1, !dbg !6571
  %uc_mcontext = getelementptr inbounds %struct.ucontext, ptr %uc33, i32 0, i32 3, !dbg !6572
  %34 = load i64, ptr %uc_flags, align 8, !dbg !6573
  %call34 = call zeroext i1 @restore_sigcontext(ptr noundef %32, ptr noundef %uc_mcontext, i64 noundef %34) #14, !dbg !6574
  br i1 %call34, label %if.end36, label %if.then35, !dbg !6575

if.then35:                                        ; preds = %if.end32
  br label %badframe, !dbg !6576

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @restore_signal_shadow_stack() #14, !dbg !6577
  %tobool38 = icmp ne i32 %call37, 0, !dbg !6577
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6579

if.then39:                                        ; preds = %if.end36
  br label %badframe, !dbg !6580

if.end40:                                         ; preds = %if.end36
  %35 = load ptr, ptr %regs, align 8, !dbg !6581
  %ax = getelementptr inbounds %struct.pt_regs, ptr %35, i32 0, i32 10, !dbg !6582
  %36 = load i64, ptr %ax, align 8, !dbg !6582
  store i64 %36, ptr %retval, align 8, !dbg !6583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6583

badframe:                                         ; preds = %if.then39, %if.then35, %if.then31, %if.then26, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !6527), !dbg !6584
  %37 = load ptr, ptr %regs, align 8, !dbg !6585
  %38 = load ptr, ptr %frame, align 8, !dbg !6586
  call void @signal_fault(ptr noundef %37, ptr noundef %38, ptr noundef @.str) #14, !dbg !6587
  store i64 0, ptr %retval, align 8, !dbg !6588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6588

cleanup:                                          ; preds = %badframe, %if.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %uc_flags) #13, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #13, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame) #13, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #13, !dbg !6589
  %39 = load i64, ptr %retval, align 8, !dbg !6589
  ret i64 %39, !dbg !6589
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sigaction_compat_abi(ptr noundef %act, ptr noundef %oact) #0 align 16 !dbg !6590 {
entry:
  %act.addr = alloca ptr, align 8
  %oact.addr = alloca ptr, align 8
  store ptr %act, ptr %act.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %act.addr, metadata !6595, metadata !DIExpression()), !dbg !6597
  store ptr %oact, ptr %oact.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oact.addr, metadata !6596, metadata !DIExpression()), !dbg !6598
  %0 = load ptr, ptr %act.addr, align 8, !dbg !6599
  %tobool = icmp ne ptr %0, null, !dbg !6599
  br i1 %tobool, label %if.end, label %if.then, !dbg !6601

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !6602

if.end:                                           ; preds = %entry
  %call = call ptr @get_current() #14, !dbg !6603
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !6603
  %1 = load i32, ptr %status, align 8, !dbg !6603
  %and = and i32 %1, 2, !dbg !6603
  %tobool1 = icmp ne i32 %and, 0, !dbg !6603
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6605

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %act.addr, align 8, !dbg !6606
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %2, i32 0, i32 0, !dbg !6607
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6608
  %3 = load i64, ptr %sa_flags, align 8, !dbg !6609
  %or = or i64 %3, 33554432, !dbg !6609
  store i64 %or, ptr %sa_flags, align 8, !dbg !6609
  br label %if.end3, !dbg !6606

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call zeroext i1 @in_x32_syscall() #14, !dbg !6610
  br i1 %call4, label %if.then5, label %if.end9, !dbg !6612

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %act.addr, align 8, !dbg !6613
  %sa6 = getelementptr inbounds %struct.k_sigaction, ptr %4, i32 0, i32 0, !dbg !6614
  %sa_flags7 = getelementptr inbounds %struct.sigaction, ptr %sa6, i32 0, i32 1, !dbg !6615
  %5 = load i64, ptr %sa_flags7, align 8, !dbg !6616
  %or8 = or i64 %5, 16777216, !dbg !6616
  store i64 %or8, ptr %sa_flags7, align 8, !dbg !6616
  br label %if.end9, !dbg !6613

if.end9:                                          ; preds = %if.then, %if.then5, %if.end3
  ret void, !dbg !6617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_x32_syscall() #3 align 16 !dbg !6618 {
entry:
  ret i1 false, !dbg !6620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_restore_sigmask() #3 align 16 !dbg !6621 {
entry:
  %call = call ptr @get_current() #14, !dbg !6622
  %restore_sigmask = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !6623
  %bf.load = load i16, ptr %restore_sigmask, align 16, !dbg !6623
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !6623
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6623
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6623
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6622
  ret i1 %tobool, !dbg !6624
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6625 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6633, metadata !DIExpression()), !dbg !6635
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6637
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6638
  br i1 %1, label %cond.true, label %cond.false, !dbg !6638

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6639
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6640
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !6641
  %conv = zext i1 %call to i32, !dbg !6641
  br label %cond.end, !dbg !6638

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6643
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !6644
  %conv2 = zext i1 %call1 to i32, !dbg !6644
  br label %cond.end, !dbg !6638

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6638
  %tobool = icmp ne i32 %cond, 0, !dbg !6638
  ret i1 %tobool, !dbg !6645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_64bit_mode(ptr noundef %regs) #3 align 16 !dbg !6646 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6652
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !6653
  %2 = load i16, ptr %1, align 8, !dbg !6653
  %conv = zext i16 %2 to i32, !dbg !6652
  %cmp = icmp eq i32 %conv, 51, !dbg !6654
  ret i1 %cmp, !dbg !6655
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6656 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6664
  %and = and i64 %0, 63, !dbg !6665
  %shl = shl i64 1, %and, !dbg !6666
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6667
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6668
  %shr = ashr i64 %2, 6, !dbg !6669
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6667
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6667
  %and1 = and i64 %shl, %3, !dbg !6670
  %cmp = icmp ne i64 %and1, 0, !dbg !6671
  ret i1 %cmp, !dbg !6672
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6673 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !6680
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6677, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6682
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6683
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !6684, !srcloc !6685
  %3 = icmp ult i8 %2, 2, !dbg !6684
  call void @llvm.assume(i1 %3), !dbg !6684
  store i8 %2, ptr %oldbit, align 1, !dbg !6684
  %4 = load i8, ptr %oldbit, align 1, !dbg !6686, !range !6687, !noundef !683
  %tobool = trunc i8 %4 to i1, !dbg !6686
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !6688
  ret i1 %tobool, !dbg !6689
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !6690 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6695, metadata !DIExpression()), !dbg !6700
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6696, metadata !DIExpression()), !dbg !6701
  %0 = load i64, ptr %size.addr, align 8, !dbg !6702
  %cmp = icmp ule i64 %0, 4096, !dbg !6703
  %conv = zext i1 %cmp to i32, !dbg !6703
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6704
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6705

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6706
  %cmp1 = icmp ule i64 %2, 4096, !dbg !6707
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6708

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !6709
  %4 = ptrtoint ptr %3 to i64, !dbg !6709
  %cmp3 = icmp sge i64 %4, 0, !dbg !6709
  store i1 %cmp3, ptr %retval, align 1, !dbg !6711
  br label %return, !dbg !6711

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #13, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6697, metadata !DIExpression()), !dbg !6713
  %5 = load i64, ptr %size.addr, align 8, !dbg !6714
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !6715
  %7 = ptrtoint ptr %6 to i64, !dbg !6716
  %add = add i64 %5, %7, !dbg !6717
  store i64 %add, ptr %sum, align 8, !dbg !6713
  %8 = load i64, ptr %sum, align 8, !dbg !6718
  %cmp5 = icmp sge i64 %8, 0, !dbg !6718
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !6719

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !6720
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !6721
  %11 = ptrtoint ptr %10 to i64, !dbg !6722
  %cmp7 = icmp uge i64 %9, %11, !dbg !6723
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !6724
  store i1 %12, ptr %retval, align 1, !dbg !6725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #13, !dbg !6726
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !6727
  ret i1 %13, !dbg !6727
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #5 align 16 !dbg !6728 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !6729, !srcloc !6730
  ret void, !dbg !6731
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #5 align 16 !dbg !6732 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6739, metadata !DIExpression()), !dbg !6740
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6741
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !6742
  %1 = load ptr, ptr %stack, align 32, !dbg !6742
  ret ptr %1, !dbg !6743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !6744 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6748, metadata !DIExpression()), !dbg !6750
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  ret void, !dbg !6752
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6753 dso_local void @set_current_blocked(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local i32 @restore_altstack(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @restore_sigcontext(ptr noundef %regs, ptr noundef %usc, i64 noundef %uc_flags) #0 align 16 !dbg !6761 {
entry:
  %retval = alloca i1, align 1
  %regs.addr = alloca ptr, align 8
  %usc.addr = alloca ptr, align 8
  %uc_flags.addr = alloca i64, align 8
  %sc = alloca %struct.sigcontext_64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6765, metadata !DIExpression()), !dbg !6769
  store ptr %usc, ptr %usc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usc.addr, metadata !6766, metadata !DIExpression()), !dbg !6770
  store i64 %uc_flags, ptr %uc_flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uc_flags.addr, metadata !6767, metadata !DIExpression()), !dbg !6771
  call void @llvm.lifetime.start.p0(i64 256, ptr %sc) #13, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !6768, metadata !DIExpression()), !dbg !6773
  %call = call ptr @get_current() #14, !dbg !6774
  %restart_block = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 61, !dbg !6775
  %fn = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 1, !dbg !6776
  store ptr @do_no_restart_syscall, ptr %fn, align 8, !dbg !6777
  %0 = load ptr, ptr %usc.addr, align 8, !dbg !6778
  %call1 = call i64 @copy_from_user(ptr noundef %sc, ptr noundef %0, i64 noundef 192) #14, !dbg !6780
  %tobool = icmp ne i64 %call1, 0, !dbg !6780
  br i1 %tobool, label %if.then, label %if.end, !dbg !6781

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6782

if.end:                                           ; preds = %entry
  %bx = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 11, !dbg !6783
  %1 = load i64, ptr %bx, align 8, !dbg !6783
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6784
  %bx2 = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 5, !dbg !6785
  store i64 %1, ptr %bx2, align 8, !dbg !6786
  %cx = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 14, !dbg !6787
  %3 = load i64, ptr %cx, align 8, !dbg !6787
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6788
  %cx3 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 11, !dbg !6789
  store i64 %3, ptr %cx3, align 8, !dbg !6790
  %dx = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 12, !dbg !6791
  %5 = load i64, ptr %dx, align 8, !dbg !6791
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6792
  %dx4 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 12, !dbg !6793
  store i64 %5, ptr %dx4, align 8, !dbg !6794
  %si = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 9, !dbg !6795
  %7 = load i64, ptr %si, align 8, !dbg !6795
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6796
  %si5 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 13, !dbg !6797
  store i64 %7, ptr %si5, align 8, !dbg !6798
  %di = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 8, !dbg !6799
  %9 = load i64, ptr %di, align 8, !dbg !6799
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6800
  %di6 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 14, !dbg !6801
  store i64 %9, ptr %di6, align 8, !dbg !6802
  %bp = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 10, !dbg !6803
  %11 = load i64, ptr %bp, align 8, !dbg !6803
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !6804
  %bp7 = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 4, !dbg !6805
  store i64 %11, ptr %bp7, align 8, !dbg !6806
  %ax = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 13, !dbg !6807
  %13 = load i64, ptr %ax, align 8, !dbg !6807
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !6808
  %ax8 = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 10, !dbg !6809
  store i64 %13, ptr %ax8, align 8, !dbg !6810
  %sp = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 15, !dbg !6811
  %15 = load i64, ptr %sp, align 8, !dbg !6811
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !6812
  %sp9 = getelementptr inbounds %struct.pt_regs, ptr %16, i32 0, i32 19, !dbg !6813
  store i64 %15, ptr %sp9, align 8, !dbg !6814
  %ip = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 16, !dbg !6815
  %17 = load i64, ptr %ip, align 8, !dbg !6815
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !6816
  %ip10 = getelementptr inbounds %struct.pt_regs, ptr %18, i32 0, i32 16, !dbg !6817
  store i64 %17, ptr %ip10, align 8, !dbg !6818
  %r8 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 0, !dbg !6819
  %19 = load i64, ptr %r8, align 8, !dbg !6819
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !6820
  %r811 = getelementptr inbounds %struct.pt_regs, ptr %20, i32 0, i32 9, !dbg !6821
  store i64 %19, ptr %r811, align 8, !dbg !6822
  %r9 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 1, !dbg !6823
  %21 = load i64, ptr %r9, align 8, !dbg !6823
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !6824
  %r912 = getelementptr inbounds %struct.pt_regs, ptr %22, i32 0, i32 8, !dbg !6825
  store i64 %21, ptr %r912, align 8, !dbg !6826
  %r10 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 2, !dbg !6827
  %23 = load i64, ptr %r10, align 8, !dbg !6827
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !6828
  %r1013 = getelementptr inbounds %struct.pt_regs, ptr %24, i32 0, i32 7, !dbg !6829
  store i64 %23, ptr %r1013, align 8, !dbg !6830
  %r11 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 3, !dbg !6831
  %25 = load i64, ptr %r11, align 8, !dbg !6831
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !6832
  %r1114 = getelementptr inbounds %struct.pt_regs, ptr %26, i32 0, i32 6, !dbg !6833
  store i64 %25, ptr %r1114, align 8, !dbg !6834
  %r12 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 4, !dbg !6835
  %27 = load i64, ptr %r12, align 8, !dbg !6835
  %28 = load ptr, ptr %regs.addr, align 8, !dbg !6836
  %r1215 = getelementptr inbounds %struct.pt_regs, ptr %28, i32 0, i32 3, !dbg !6837
  store i64 %27, ptr %r1215, align 8, !dbg !6838
  %r13 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 5, !dbg !6839
  %29 = load i64, ptr %r13, align 8, !dbg !6839
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !6840
  %r1316 = getelementptr inbounds %struct.pt_regs, ptr %30, i32 0, i32 2, !dbg !6841
  store i64 %29, ptr %r1316, align 8, !dbg !6842
  %r14 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 6, !dbg !6843
  %31 = load i64, ptr %r14, align 8, !dbg !6843
  %32 = load ptr, ptr %regs.addr, align 8, !dbg !6844
  %r1417 = getelementptr inbounds %struct.pt_regs, ptr %32, i32 0, i32 1, !dbg !6845
  store i64 %31, ptr %r1417, align 8, !dbg !6846
  %r15 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 7, !dbg !6847
  %33 = load i64, ptr %r15, align 8, !dbg !6847
  %34 = load ptr, ptr %regs.addr, align 8, !dbg !6848
  %r1518 = getelementptr inbounds %struct.pt_regs, ptr %34, i32 0, i32 0, !dbg !6849
  store i64 %33, ptr %r1518, align 8, !dbg !6850
  %cs = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 18, !dbg !6851
  %35 = load i16, ptr %cs, align 8, !dbg !6851
  %conv = zext i16 %35 to i32, !dbg !6852
  %or = or i32 %conv, 3, !dbg !6853
  %conv19 = trunc i32 %or to i16, !dbg !6852
  %36 = load ptr, ptr %regs.addr, align 8, !dbg !6854
  %37 = getelementptr inbounds %struct.pt_regs, ptr %36, i32 0, i32 17, !dbg !6855
  store i16 %conv19, ptr %37, align 8, !dbg !6856
  %ss = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 21, !dbg !6857
  %38 = load i16, ptr %ss, align 2, !dbg !6857
  %conv20 = zext i16 %38 to i32, !dbg !6858
  %or21 = or i32 %conv20, 3, !dbg !6859
  %conv22 = trunc i32 %or21 to i16, !dbg !6858
  %39 = load ptr, ptr %regs.addr, align 8, !dbg !6860
  %40 = getelementptr inbounds %struct.pt_regs, ptr %39, i32 0, i32 20, !dbg !6861
  store i16 %conv22, ptr %40, align 8, !dbg !6862
  %41 = load ptr, ptr %regs.addr, align 8, !dbg !6863
  %flags = getelementptr inbounds %struct.pt_regs, ptr %41, i32 0, i32 18, !dbg !6864
  %42 = load i64, ptr %flags, align 8, !dbg !6864
  %and = and i64 %42, -331222, !dbg !6865
  %flags23 = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 17, !dbg !6866
  %43 = load i64, ptr %flags23, align 8, !dbg !6866
  %and24 = and i64 %43, 331221, !dbg !6867
  %or25 = or i64 %and, %and24, !dbg !6868
  %44 = load ptr, ptr %regs.addr, align 8, !dbg !6869
  %flags26 = getelementptr inbounds %struct.pt_regs, ptr %44, i32 0, i32 18, !dbg !6870
  store i64 %or25, ptr %flags26, align 8, !dbg !6871
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !6872
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %45, i32 0, i32 15, !dbg !6873
  store i64 -1, ptr %orig_ax, align 8, !dbg !6874
  %46 = load i64, ptr %uc_flags.addr, align 8, !dbg !6875
  %and27 = and i64 %46, 4, !dbg !6875
  %tobool28 = icmp ne i64 %and27, 0, !dbg !6875
  br i1 %tobool28, label %land.end, label %land.rhs, !dbg !6875

land.rhs:                                         ; preds = %if.end
  %47 = load ptr, ptr %regs.addr, align 8, !dbg !6875
  %call29 = call zeroext i1 @user_64bit_mode(ptr noundef %47) #14, !dbg !6875
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %48 = phi i1 [ false, %if.end ], [ %call29, %land.rhs ], !dbg !6877
  %lnot = xor i1 %48, true, !dbg !6875
  %lnot31 = xor i1 %lnot, true, !dbg !6875
  %lnot.ext = zext i1 %lnot31 to i32, !dbg !6875
  %conv32 = sext i32 %lnot.ext to i64, !dbg !6875
  %expval = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !6875
  %tobool33 = icmp ne i64 %expval, 0, !dbg !6875
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6878

if.then34:                                        ; preds = %land.end
  %49 = load ptr, ptr %regs.addr, align 8, !dbg !6879
  call void @force_valid_ss(ptr noundef %49) #14, !dbg !6880
  br label %if.end35, !dbg !6880

if.end35:                                         ; preds = %if.then34, %land.end
  %fpstate = getelementptr inbounds %struct.sigcontext_64, ptr %sc, i32 0, i32 26, !dbg !6881
  %50 = load i64, ptr %fpstate, align 8, !dbg !6881
  %51 = inttoptr i64 %50 to ptr, !dbg !6882
  %call36 = call zeroext i1 @fpu__restore_sig(ptr noundef %51, i32 noundef 0) #14, !dbg !6883
  store i1 %call36, ptr %retval, align 1, !dbg !6884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6884

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 256, ptr %sc) #13, !dbg !6885
  %52 = load i1, ptr %retval, align 1, !dbg !6885
  ret i1 %52, !dbg !6885
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @restore_signal_shadow_stack() #3 align 16 !dbg !6886 {
entry:
  ret i32 0, !dbg !6887
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6888 dso_local void @signal_fault(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @do_no_restart_syscall(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !6891 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6896, metadata !DIExpression()), !dbg !6899
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6897, metadata !DIExpression()), !dbg !6900
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6898, metadata !DIExpression()), !dbg !6901
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6902
  %1 = load i64, ptr %n.addr, align 8, !dbg !6904
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #14, !dbg !6905
  br i1 %call, label %if.then, label %if.end, !dbg !6906

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6907
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6908
  %4 = load i64, ptr %n.addr, align 8, !dbg !6909
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !6910
  store i64 %call1, ptr %n.addr, align 8, !dbg !6911
  br label %if.end, !dbg !6912

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6913
  ret i64 %5, !dbg !6914
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6915 dso_local zeroext i1 @fpu__restore_sig(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6919 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6923, metadata !DIExpression()), !dbg !6933
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6924, metadata !DIExpression()), !dbg !6934
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6925, metadata !DIExpression()), !dbg !6935
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #13, !dbg !6936
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6926, metadata !DIExpression()), !dbg !6937
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6938
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6939
  %conv = trunc i64 %1 to i32, !dbg !6939
  store i32 %conv, ptr %sz, align 4, !dbg !6937
  %2 = load i32, ptr %sz, align 4, !dbg !6940
  %cmp = icmp sge i32 %2, 0, !dbg !6940
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6940

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6940
  %conv2 = sext i32 %3 to i64, !dbg !6940
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6940
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6940
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6942
  %lnot = xor i1 %5, true, !dbg !6940
  %lnot5 = xor i1 %lnot, true, !dbg !6940
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6940
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6940
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6940
  %tobool = icmp ne i64 %expval, 0, !dbg !6940
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6943

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6944
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6947
  br i1 %7, label %if.else, label %if.then7, !dbg !6948

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6949
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6950
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !6951
  br label %if.end11, !dbg !6951

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6952, !range !6687, !noundef !683
  %tobool8 = trunc i8 %10 to i1, !dbg !6952
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6954

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !6955, !srcloc !6956
  br label %if.end, !dbg !6955

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !6957, !srcloc !6958
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6959

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6960
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6927, metadata !DIExpression()), !dbg !6960
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6960
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6960
  %lnot15 = xor i1 %cmp13, true, !dbg !6960
  %lnot17 = xor i1 %lnot15, true, !dbg !6960
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6960
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6960
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6961
  %tobool19 = icmp ne i32 %12, 0, !dbg !6961
  %lnot20 = xor i1 %tobool19, true, !dbg !6961
  %lnot22 = xor i1 %lnot20, true, !dbg !6961
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6961
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6961
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6961
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6961
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6960

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6961

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6962
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6930, metadata !DIExpression()), !dbg !6962
  store i32 2307, ptr %__flags, align 4, !dbg !6962
  br label %do.body28, !dbg !6962

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6963

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6963

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6962

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6965
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #13, !dbg !6965, !srcloc !6967
  br label %do.cond30, !dbg !6965

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6965

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6962

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6968

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6968

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6961
  br label %do.cond35, !dbg !6962

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6962

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6962

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6960
  %tobool38 = icmp ne i32 %14, 0, !dbg !6960
  %lnot39 = xor i1 %tobool38, true, !dbg !6960
  %lnot41 = xor i1 %lnot39, true, !dbg !6960
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6960
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6960
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6960
  store i64 %expval44, ptr %tmp, align 8, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6970
  %15 = load i64, ptr %tmp, align 8, !dbg !6960
  %tobool45 = icmp ne i64 %15, 0, !dbg !6970
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6971

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6972

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6973
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6974
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6975, !range !6687, !noundef !683
  %tobool48 = trunc i8 %18 to i1, !dbg !6975
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !6976
  store i1 true, ptr %retval, align 1, !dbg !6977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6977

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #13, !dbg !6978
  %19 = load i1, ptr %retval, align 1, !dbg !6978
  ret i1 %19, !dbg !6978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6979 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !6980 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6984, metadata !DIExpression()), !dbg !6986
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6985, metadata !DIExpression()), !dbg !6987
  %0 = load i32, ptr %size.addr, align 4, !dbg !6988
  %1 = load i64, ptr %count.addr, align 8, !dbg !6990
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !6991
  ret void, !dbg !6992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6993 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6994 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !6995 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6999, metadata !DIExpression()), !dbg !7002
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7000, metadata !DIExpression()), !dbg !7003
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7001, metadata !DIExpression()), !dbg !7004
  ret void, !dbg !7005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7006 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!13}
!llvm.named.register.rsp = !{!5934}
!llvm.module.flags = !{!5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942}
!llvm.ident = !{!5943}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/signal_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "404e5219d8203a85f3511d479fa8278e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 249, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.signal_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/signal_64\22 -D KBUILD_BASENAME=\22signal_64\22 -D KBUILD_MODNAME=\22signal_64\22 -D __KBUILD_MODNAME=kmod_signal_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/signal_64.ll arch/x86/kernel/signal_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !276, globals: !5933, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21, !116, !124, !131, !139, !155, !162, !168, !179, !185, !191, !198, !206, !213, !222, !227, !232, !238, !247, !252, !258, !264, !271}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !16, line: 65, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!20 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !23, file: !22, line: 147, baseType: !17, size: 32, elements: !113)
!22 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !22, line: 135, size: 512, elements: !24)
!24 = !{!25, !28, !30, !32, !36, !37, !53, !111, !112}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !23, file: !22, line: 136, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !22, line: 137, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !23, file: !22, line: 138, baseType: !31, size: 32, offset: 128)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !23, file: !22, line: 139, baseType: !33, size: 16, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !22, line: 150, baseType: !21, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !23, file: !22, line: 151, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !22, line: 64, baseType: !40)
!40 = !DISubroutineType(types: !41)
!41 = !{!31, !42, !31, !29, !43, !49}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !46, line: 72, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !46, line: 16, baseType: !48)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !34, line: 52, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !46, line: 88, baseType: !52)
!52 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !23, file: !22, line: 152, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !22, line: 117, size: 256, elements: !56)
!56 = !{!57, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !22, line: 118, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !59, file: !34, line: 173, baseType: !31, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !55, file: !22, line: 119, baseType: !63, size: 192, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !64, line: 41, baseType: !65)
!64 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !64, line: 37, size: 192, elements: !66)
!66 = !{!67, !105}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !65, file: !64, line: 38, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !69, line: 17, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !69, line: 18, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !69, line: 18, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !73, file: !69, line: 19, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !77, line: 14, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !76, file: !77, line: 15, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !81, line: 44, baseType: !82)
!81 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !81, line: 14, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 15, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 15, size: 32, elements: !86)
!86 = !{!87, !88, !98}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !81, line: 16, baseType: !58, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 24, baseType: !89, size: 16)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 24, size: 16, elements: !90)
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !89, file: !81, line: 25, baseType: !92, size: 8)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !95, line: 21, baseType: !96)
!95 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !89, file: !81, line: 26, baseType: !92, size: 8, offset: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 28, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 28, size: 32, elements: !100)
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !99, file: !81, line: 29, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !95, line: 24, baseType: !35)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !99, file: !81, line: 30, baseType: !102, size: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !65, file: !64, line: 39, baseType: !106, size: 128, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !34, line: 191, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !34, line: 191, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !23, file: !22, line: 153, baseType: !29, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !23, file: !22, line: 154, baseType: !29, size: 64, offset: 448)
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!115 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !117, line: 9, baseType: !17, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!120 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!121 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!122 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!123 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !125, line: 312, baseType: !17, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!128 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!129 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!130 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !132, line: 68, baseType: !17, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!135 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!138 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !140, line: 1325, baseType: !17, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!142 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!143 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!144 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!145 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!146 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!147 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!148 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!149 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!150 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!151 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!152 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!153 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!154 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !17, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !163, line: 26, baseType: !17, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !169, line: 253, baseType: !17, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178}
!171 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!172 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!173 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !169, line: 158, baseType: !17, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!182 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!183 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!184 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !186, line: 45, baseType: !17, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!189 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!190 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !192, line: 487, baseType: !17, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!193 = !{!194, !195, !196, !197}
!194 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!195 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!196 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!197 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !199, line: 620, baseType: !17, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!200 = !{!201, !202, !203, !204, !205}
!201 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!202 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!203 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!204 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!205 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !199, line: 597, baseType: !31, size: 32, elements: !207)
!207 = !{!208, !209, !210, !211, !212}
!208 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!209 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!210 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!211 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!212 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !192, line: 547, baseType: !17, size: 32, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221}
!215 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!216 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!217 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!218 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!219 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!220 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!221 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !192, line: 564, baseType: !17, size: 32, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!226 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !192, line: 577, baseType: !17, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!231 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !192, line: 503, baseType: !17, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!236 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!237 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !239, line: 593, baseType: !31, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!245 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!246 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !248, line: 2052, baseType: !17, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!249 = !{!250, !251}
!250 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!251 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !253, line: 54, baseType: !17, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!254 = !{!255, !256, !257}
!255 = !DIEnumerator(name: "USRQUOTA", value: 0)
!256 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!257 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !259, line: 16, baseType: !17, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "TT_NONE", value: 0)
!262 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!263 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !265, line: 51, baseType: !17, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!266 = !{!267, !268, !269, !270}
!267 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!268 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!269 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!270 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !272, line: 10, baseType: !17, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!273 = !{!274, !275}
!274 = !DIEnumerator(name: "false", value: 0)
!275 = !DIEnumerator(name: "true", value: 1)
!276 = !{!29, !48, !277, !285, !31, !45, !345, !304, !346, !347, !357, !358, !359, !360, !103, !102, !3781, !5912, !420}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !279, line: 471, size: 6400, elements: !280)
!279 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !278, file: !279, line: 471, baseType: !282, size: 6400)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6400, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 100)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucontext", file: !287, line: 5, size: 2432, elements: !288)
!287 = !DIFile(filename: "./include/uapi/asm-generic/ucontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cc2428f92681aaa12d9c08e58bab60b")
!288 = !{!289, !290, !291, !299, !336}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uc_flags", scope: !286, file: !287, line: 6, baseType: !48, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "uc_link", scope: !286, file: !287, line: 7, baseType: !285, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "uc_stack", scope: !286, file: !287, line: 8, baseType: !292, size: 192, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_t", file: !293, line: 108, baseType: !294)
!293 = !DIFile(filename: "./arch/x86/include/uapi/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "196ec61d4e4255fff220522bd3918f3f")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaltstack", file: !293, line: 104, size: 192, elements: !295)
!295 = !{!296, !297, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ss_sp", scope: !294, file: !293, line: 105, baseType: !29, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ss_flags", scope: !294, file: !293, line: 106, baseType: !31, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ss_size", scope: !294, file: !293, line: 107, baseType: !45, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "uc_mcontext", scope: !286, file: !287, line: 9, baseType: !300, size: 2048, offset: 320)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigcontext_64", file: !301, line: 238, size: 2048, elements: !302)
!301 = !DIFile(filename: "./arch/x86/include/uapi/asm/sigcontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "327abd771cf7c66287c9e3382680e4d3")
!302 = !{!303, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !300, file: !301, line: 239, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 31, baseType: !305)
!305 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !300, file: !301, line: 240, baseType: !304, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !300, file: !301, line: 241, baseType: !304, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !300, file: !301, line: 242, baseType: !304, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !300, file: !301, line: 243, baseType: !304, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !300, file: !301, line: 244, baseType: !304, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !300, file: !301, line: 245, baseType: !304, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !300, file: !301, line: 246, baseType: !304, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !300, file: !301, line: 247, baseType: !304, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !300, file: !301, line: 248, baseType: !304, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !300, file: !301, line: 249, baseType: !304, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !300, file: !301, line: 250, baseType: !304, size: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !300, file: !301, line: 251, baseType: !304, size: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !300, file: !301, line: 252, baseType: !304, size: 64, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !300, file: !301, line: 253, baseType: !304, size: 64, offset: 896)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !300, file: !301, line: 254, baseType: !304, size: 64, offset: 960)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !300, file: !301, line: 255, baseType: !304, size: 64, offset: 1024)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 256, baseType: !304, size: 64, offset: 1088)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !300, file: !301, line: 257, baseType: !103, size: 16, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !300, file: !301, line: 258, baseType: !103, size: 16, offset: 1168)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !300, file: !301, line: 259, baseType: !103, size: 16, offset: 1184)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !300, file: !301, line: 260, baseType: !103, size: 16, offset: 1200)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !300, file: !301, line: 261, baseType: !304, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "trapno", scope: !300, file: !301, line: 262, baseType: !304, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "oldmask", scope: !300, file: !301, line: 263, baseType: !304, size: 64, offset: 1344)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !300, file: !301, line: 264, baseType: !304, size: 64, offset: 1408)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !300, file: !301, line: 273, baseType: !304, size: 64, offset: 1472)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !300, file: !301, line: 274, baseType: !333, size: 512, offset: 1536)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 512, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "uc_sigmask", scope: !286, file: !287, line: 10, baseType: !337, size: 64, offset: 2368)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !338, line: 25, baseType: !339)
!338 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 23, size: 64, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !339, file: !338, line: 24, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 1)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !349, line: 56, size: 192, elements: !350)
!349 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!350 = !{!351, !352, !353, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !349, line: 57, baseType: !48, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !348, file: !349, line: 58, baseType: !48, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !348, file: !349, line: 59, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !95, line: 27, baseType: !17)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !348, file: !349, line: 61, baseType: !354, size: 32, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!358 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !362, line: 746, size: 58368, elements: !363)
!362 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!363 = !{!364, !365, !366, !367, !373, !374, !375, !376, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !457, !468, !567, !571, !574, !605, !606, !607, !608, !616, !618, !619, !620, !621, !622, !623, !634, !635, !638, !639, !640, !641, !642, !643, !644, !645, !652, !653, !660, !661, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5071, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5114, !5120, !5121, !5122, !5123, !5124, !5126, !5129, !5136, !5141, !5144, !5147, !5150, !5182, !5375, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5413, !5414, !5415, !5424, !5432, !5433, !5434, !5435, !5436, !5441, !5442, !5443, !5446, !5447, !5450, !5453, !5456, !5464, !5467, !5468, !5554, !5555, !5556, !5557, !5558, !5564, !5565, !5566, !5567, !5568, !5569, !5572, !5586, !5587, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5630, !5631, !5637, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5649, !5721, !5723, !5724, !5725, !5726, !5727, !5728, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5745, !5746, !5747}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !361, file: !362, line: 752, baseType: !348, size: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !361, file: !362, line: 754, baseType: !17, size: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !361, file: !362, line: 767, baseType: !29, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !361, file: !362, line: 768, baseType: !368, size: 32, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !369, line: 113, baseType: !370)
!369 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !369, line: 111, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !370, file: !369, line: 112, baseType: !58, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !362, line: 770, baseType: !17, size: 32, offset: 352)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !361, file: !362, line: 771, baseType: !17, size: 32, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !361, file: !362, line: 774, baseType: !31, size: 32, offset: 416)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !361, file: !362, line: 775, baseType: !377, size: 128, offset: 448)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !378, line: 58, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!379 = !{!380, !386, !391, !392}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !377, file: !378, line: 59, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !382, line: 60, size: 64, elements: !383)
!382 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !382, line: 61, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !378, line: 60, baseType: !387, size: 32, offset: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !378, line: 60, size: 32, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !387, file: !378, line: 61, baseType: !17, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !387, file: !378, line: 62, baseType: !58, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !377, file: !378, line: 65, baseType: !102, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !377, file: !378, line: 65, baseType: !102, size: 16, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !361, file: !362, line: 776, baseType: !17, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !361, file: !362, line: 777, baseType: !48, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !361, file: !362, line: 778, baseType: !360, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !361, file: !362, line: 787, baseType: !31, size: 32, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !361, file: !362, line: 788, baseType: !31, size: 32, offset: 800)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !361, file: !362, line: 790, baseType: !31, size: 32, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !361, file: !362, line: 792, baseType: !31, size: 32, offset: 864)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !361, file: !362, line: 793, baseType: !31, size: 32, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !361, file: !362, line: 794, baseType: !31, size: 32, offset: 928)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !361, file: !362, line: 795, baseType: !17, size: 32, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !361, file: !362, line: 797, baseType: !404, size: 2048, offset: 1024)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !362, line: 551, size: 2048, elements: !405)
!405 = !{!406, !411, !419, !421, !422, !423, !424, !425, !426, !427, !428, !431, !432, !433, !434, !436, !439, !440, !441}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !404, file: !362, line: 553, baseType: !407, size: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !362, line: 411, size: 128, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !407, file: !362, line: 412, baseType: !48, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !407, file: !362, line: 413, baseType: !354, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !404, file: !362, line: 554, baseType: !412, size: 192, align: 64, offset: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !413, line: 5, size: 192, align: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!414 = !{!415, !416, !418}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !412, file: !413, line: 6, baseType: !48, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !412, file: !413, line: 7, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !412, file: !413, line: 8, baseType: !417, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !404, file: !362, line: 555, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !93, line: 23, baseType: !304)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !404, file: !362, line: 556, baseType: !420, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !404, file: !362, line: 558, baseType: !106, size: 128, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !404, file: !362, line: 559, baseType: !17, size: 32, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !404, file: !362, line: 561, baseType: !420, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !404, file: !362, line: 562, baseType: !420, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !404, file: !362, line: 563, baseType: !420, size: 64, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !404, file: !362, line: 564, baseType: !420, size: 64, offset: 832)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !404, file: !362, line: 565, baseType: !429, size: 64, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !93, line: 22, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 30, baseType: !52)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !404, file: !362, line: 566, baseType: !420, size: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !404, file: !362, line: 568, baseType: !420, size: 64, offset: 1024)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !404, file: !362, line: 571, baseType: !31, size: 32, offset: 1088)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !404, file: !362, line: 572, baseType: !435, size: 64, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !404, file: !362, line: 574, baseType: !437, size: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !362, line: 49, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !404, file: !362, line: 576, baseType: !437, size: 64, offset: 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !404, file: !362, line: 578, baseType: !48, size: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !404, file: !362, line: 588, baseType: !442, size: 512, align: 512, offset: 1536)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !362, line: 497, size: 512, align: 512, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !442, file: !362, line: 498, baseType: !420, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !442, file: !362, line: 499, baseType: !420, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !442, file: !362, line: 500, baseType: !420, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !442, file: !362, line: 501, baseType: !354, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !442, file: !362, line: 502, baseType: !354, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !442, file: !362, line: 503, baseType: !48, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !442, file: !362, line: 504, baseType: !48, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !442, file: !362, line: 505, baseType: !48, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !442, file: !362, line: 506, baseType: !453, size: 64, align: 64, offset: 448)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !362, line: 445, size: 64, align: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !453, file: !362, line: 446, baseType: !17, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !453, file: !362, line: 447, baseType: !17, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !361, file: !362, line: 798, baseType: !458, size: 384, offset: 3072)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !362, line: 592, size: 384, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !458, file: !362, line: 593, baseType: !106, size: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !458, file: !362, line: 594, baseType: !48, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !458, file: !362, line: 595, baseType: !48, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !458, file: !362, line: 596, baseType: !17, size: 32, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !458, file: !362, line: 597, baseType: !35, size: 16, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !458, file: !362, line: 598, baseType: !35, size: 16, offset: 304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !458, file: !362, line: 600, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !361, file: !362, line: 799, baseType: !469, size: 1792, offset: 3456)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !362, line: 610, size: 1792, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !564, !565}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !469, file: !362, line: 611, baseType: !412, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !469, file: !362, line: 618, baseType: !420, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !469, file: !362, line: 619, baseType: !420, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !469, file: !362, line: 620, baseType: !420, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !469, file: !362, line: 621, baseType: !420, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !469, file: !362, line: 622, baseType: !420, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !469, file: !362, line: 629, baseType: !429, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !469, file: !362, line: 630, baseType: !420, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !362, line: 631, baseType: !17, size: 32, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !469, file: !362, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !469, file: !362, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !469, file: !362, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !469, file: !362, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !469, file: !362, line: 662, baseType: !485, size: 512, offset: 704)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !16, line: 118, size: 512, elements: !486)
!486 = !{!487, !495, !496, !501, !560, !561, !562, !563}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !16, line: 119, baseType: !488, size: 256)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !489, line: 9, size: 256, elements: !490)
!489 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !488, file: !489, line: 10, baseType: !412, size: 192, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !488, file: !489, line: 11, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !494, line: 29, baseType: !429)
!494 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !485, file: !16, line: 120, baseType: !493, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !485, file: !16, line: 121, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!15, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !485, file: !16, line: 122, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !16, line: 159, size: 512, align: 512, elements: !504)
!504 = !{!505, !529, !530, !533, !543, !544, !555, !559}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !503, file: !16, line: 160, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !16, line: 215, size: 4608, align: 512, elements: !508)
!508 = !{!509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !16, line: 216, baseType: !510, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !77, line: 23, baseType: !76)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !507, file: !16, line: 217, baseType: !17, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !507, file: !16, line: 218, baseType: !17, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !507, file: !16, line: 219, baseType: !17, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !507, file: !16, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !507, file: !16, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !507, file: !16, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !507, file: !16, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !507, file: !16, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !507, file: !16, line: 226, baseType: !17, size: 32, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !507, file: !16, line: 227, baseType: !35, size: 16, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !507, file: !16, line: 228, baseType: !35, size: 16, offset: 208)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !507, file: !16, line: 229, baseType: !17, size: 32, offset: 224)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !507, file: !16, line: 235, baseType: !493, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !507, file: !16, line: 236, baseType: !500, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !507, file: !16, line: 237, baseType: !493, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !507, file: !16, line: 238, baseType: !500, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !507, file: !16, line: 239, baseType: !528, size: 4096, align: 512, offset: 512)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 4096, align: 512, elements: !334)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !503, file: !16, line: 161, baseType: !17, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !503, file: !16, line: 162, baseType: !531, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !46, line: 96, baseType: !31)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !503, file: !16, line: 163, baseType: !534, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !535, line: 274, baseType: !536)
!535 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !535, line: 274, size: 32, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !536, file: !535, line: 274, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !535, line: 69, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !535, line: 64, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !540, file: !535, line: 65, baseType: !17, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !503, file: !16, line: 164, baseType: !500, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !503, file: !16, line: 165, baseType: !545, size: 128, offset: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !489, line: 14, size: 128, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !545, file: !489, line: 15, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !413, line: 26, size: 128, elements: !549)
!549 = !{!550, !554}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !548, file: !413, line: 27, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !413, line: 12, size: 64, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !551, file: !413, line: 13, baseType: !417, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !548, file: !413, line: 28, baseType: !417, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !503, file: !16, line: 166, baseType: !556, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!493}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !503, file: !16, line: 167, baseType: !493, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !485, file: !16, line: 123, baseType: !92, size: 8, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !485, file: !16, line: 124, baseType: !92, size: 8, offset: 456)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !485, file: !16, line: 125, baseType: !92, size: 8, offset: 464)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !485, file: !16, line: 126, baseType: !92, size: 8, offset: 472)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !469, file: !362, line: 671, baseType: !485, size: 512, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !469, file: !362, line: 679, baseType: !566, size: 64, offset: 1728)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !361, file: !362, line: 800, baseType: !568, size: 64, offset: 5248)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !362, line: 800, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !361, file: !362, line: 809, baseType: !572, size: 64, offset: 5312)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !362, line: 70, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !361, file: !362, line: 825, baseType: !575, size: 2048, align: 512, offset: 5632)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !362, line: 509, size: 2048, align: 512, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !575, file: !362, line: 511, baseType: !420, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !575, file: !362, line: 512, baseType: !420, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !575, file: !362, line: 513, baseType: !420, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !575, file: !362, line: 514, baseType: !420, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !575, file: !362, line: 515, baseType: !420, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !575, file: !362, line: 516, baseType: !420, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !575, file: !362, line: 518, baseType: !420, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !575, file: !362, line: 519, baseType: !420, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !575, file: !362, line: 520, baseType: !429, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !575, file: !362, line: 522, baseType: !420, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !575, file: !362, line: 523, baseType: !420, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !575, file: !362, line: 524, baseType: !429, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !575, file: !362, line: 526, baseType: !429, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !575, file: !362, line: 527, baseType: !420, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !575, file: !362, line: 529, baseType: !420, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !575, file: !362, line: 530, baseType: !420, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !575, file: !362, line: 531, baseType: !420, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !575, file: !362, line: 532, baseType: !420, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !575, file: !362, line: 533, baseType: !420, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !575, file: !362, line: 535, baseType: !420, size: 64, offset: 1216)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !575, file: !362, line: 536, baseType: !420, size: 64, offset: 1280)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !575, file: !362, line: 537, baseType: !420, size: 64, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !575, file: !362, line: 538, baseType: !420, size: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !575, file: !362, line: 539, baseType: !420, size: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !575, file: !362, line: 540, baseType: !420, size: 64, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !575, file: !362, line: 541, baseType: !420, size: 64, offset: 1600)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !575, file: !362, line: 542, baseType: !420, size: 64, offset: 1664)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !575, file: !362, line: 543, baseType: !420, size: 64, offset: 1728)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !361, file: !362, line: 833, baseType: !17, size: 32, offset: 7680)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !361, file: !362, line: 836, baseType: !17, size: 32, offset: 7712)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !361, file: !362, line: 837, baseType: !31, size: 32, offset: 7744)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !361, file: !362, line: 838, baseType: !609, size: 64, offset: 7808)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !612, line: 19, baseType: !613)
!612 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !612, line: 19, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !613, file: !612, line: 19, baseType: !342, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !361, file: !362, line: 839, baseType: !617, size: 64, offset: 7872)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !361, file: !362, line: 840, baseType: !611, size: 64, offset: 7936)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !361, file: !362, line: 841, baseType: !29, size: 64, offset: 8000)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !361, file: !362, line: 843, baseType: !35, size: 16, offset: 8064)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !361, file: !362, line: 845, baseType: !35, size: 16, offset: 8080)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !361, file: !362, line: 848, baseType: !31, size: 32, offset: 8096)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !361, file: !362, line: 849, baseType: !624, size: 32, offset: 8128)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !362, line: 718, size: 32, elements: !625)
!625 = !{!626, !633}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !624, file: !362, line: 724, baseType: !627, size: 32)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !362, line: 719, size: 32, elements: !628)
!628 = !{!629, !630, !631, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !627, file: !362, line: 720, baseType: !92, size: 8)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !627, file: !362, line: 721, baseType: !92, size: 8, offset: 8)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !627, file: !362, line: 722, baseType: !92, size: 8, offset: 16)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !627, file: !362, line: 723, baseType: !92, size: 8, offset: 24)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !624, file: !362, line: 725, baseType: !354, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !361, file: !362, line: 850, baseType: !106, size: 128, offset: 8192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !361, file: !362, line: 851, baseType: !636, size: 64, offset: 8320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !362, line: 60, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !361, file: !362, line: 855, baseType: !48, size: 64, offset: 8384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !361, file: !362, line: 856, baseType: !92, size: 8, offset: 8448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !361, file: !362, line: 857, baseType: !92, size: 8, offset: 8456)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !361, file: !362, line: 858, baseType: !31, size: 32, offset: 8480)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !361, file: !362, line: 859, baseType: !106, size: 128, offset: 8512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !361, file: !362, line: 860, baseType: !31, size: 32, offset: 8640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !361, file: !362, line: 861, baseType: !106, size: 128, offset: 8704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !361, file: !362, line: 873, baseType: !646, size: 256, offset: 8832)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !362, line: 376, size: 256, elements: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !646, file: !362, line: 381, baseType: !48, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !646, file: !362, line: 384, baseType: !305, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !646, file: !362, line: 389, baseType: !305, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !646, file: !362, line: 392, baseType: !305, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !361, file: !362, line: 875, baseType: !106, size: 128, offset: 9088)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !361, file: !362, line: 877, baseType: !654, size: 320, offset: 9216)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !655, line: 86, size: 320, elements: !656)
!655 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!656 = !{!657, !658, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !654, file: !655, line: 87, baseType: !31, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !654, file: !655, line: 88, baseType: !106, size: 128, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !654, file: !655, line: 89, baseType: !106, size: 128, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !361, file: !362, line: 878, baseType: !412, size: 192, align: 64, offset: 9536)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !361, file: !362, line: 881, baseType: !662, size: 64, offset: 9728)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !140, line: 733, size: 10240, elements: !664)
!664 = !{!665, !4985}
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !140, line: 734, baseType: !666, size: 10240)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !140, line: 734, size: 10240, elements: !667)
!667 = !{!668, !672, !686, !4864, !4865, !4866, !4867, !4868, !4869, !4876, !4877, !4878, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4917, !4919, !4922, !4965, !4966, !4967, !4970, !4971, !4972, !4975, !4976, !4977, !4983, !4984}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !140, line: 739, baseType: !669, size: 512, align: 512)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !666, file: !140, line: 739, size: 512, align: 512, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !669, file: !140, line: 747, baseType: !58, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !666, file: !140, line: 750, baseType: !673, size: 128, offset: 512)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !674, line: 218, size: 128, elements: !675)
!674 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!675 = !{!676, !684, !685}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 219, baseType: !677, size: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !674, line: 219, size: 32, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !677, file: !674, line: 220, baseType: !68, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !677, file: !674, line: 221, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !674, line: 197, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 197, elements: !683)
!683 = !{}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !673, file: !674, line: 223, baseType: !17, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !673, file: !674, line: 224, baseType: !29, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !666, file: !140, line: 752, baseType: !687, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!48, !690, !48, !48, !48, !48}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !248, line: 994, size: 1856, align: 64, elements: !692)
!692 = !{!693, !707, !708, !710, !717, !729, !730, !731, !1111, !1189, !1198, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863}
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !248, line: 995, baseType: !694, size: 128)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !248, line: 995, size: 128, elements: !695)
!695 = !{!696, !697, !706}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !694, file: !248, line: 996, baseType: !381, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !694, file: !248, line: 997, baseType: !698, size: 128, align: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !699)
!699 = !{!700, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !34, line: 233, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !698, file: !34, line: 234, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !701}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !694, file: !248, line: 998, baseType: !17, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !691, file: !248, line: 1005, baseType: !68, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !691, file: !248, line: 1006, baseType: !709, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !34, line: 156, baseType: !17)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !691, file: !248, line: 1007, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !712, line: 13, baseType: !713)
!712 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !714, file: !34, line: 180, baseType: !429, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !691, file: !248, line: 1008, baseType: !718, size: 256, offset: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !719, line: 66, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!720 = !{!721, !722, !723, !728}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !719, line: 67, baseType: !711, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !718, file: !719, line: 68, baseType: !510, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !718, file: !719, line: 70, baseType: !724, size: 32, offset: 96)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !725, line: 15, size: 32, elements: !726)
!725 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !724, file: !725, line: 20, baseType: !58, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !718, file: !719, line: 72, baseType: !106, size: 128, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !691, file: !248, line: 1009, baseType: !50, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !691, file: !248, line: 1010, baseType: !17, size: 32, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !691, file: !248, line: 1011, baseType: !732, size: 256, offset: 640)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !248, line: 948, size: 256, elements: !733)
!733 = !{!734, !757, !1107, !1108, !1109, !1110}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !248, line: 949, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !736, line: 34, baseType: !737)
!736 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !736, line: 25, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !737, file: !736, line: 26, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !741, line: 27, baseType: !742)
!741 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !741, line: 13, size: 64, elements: !743)
!743 = !{!744, !756}
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !741, line: 14, baseType: !745, size: 32)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !741, line: 14, size: 32, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !745, file: !741, line: 15, baseType: !58, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 16, baseType: !749, size: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 16, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !749, file: !741, line: 18, baseType: !92, size: 8)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !749, file: !741, line: 19, baseType: !753, size: 24, offset: 8)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 24, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 3)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !742, file: !741, line: 26, baseType: !80, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !732, file: !248, line: 950, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !117, line: 59, size: 768, elements: !760)
!760 = !{!761, !762, !763, !764, !777, !778, !779, !780}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !759, file: !117, line: 61, baseType: !368, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !759, file: !117, line: 62, baseType: !17, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !117, line: 63, baseType: !68, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !759, file: !117, line: 65, baseType: !765, size: 256, offset: 128)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 256, elements: !775)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !766, file: !34, line: 195, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !34, line: 199, baseType: !769, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !770, file: !34, line: 199, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!775 = !{!776}
!776 = !DISubrange(count: 4)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !759, file: !117, line: 66, baseType: !766, size: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !759, file: !117, line: 68, baseType: !63, size: 192, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !759, file: !117, line: 69, baseType: !698, size: 128, align: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !759, file: !117, line: 70, baseType: !781, offset: 768)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, elements: !1105)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !117, line: 54, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !782, file: !117, line: 55, baseType: !31, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !782, file: !117, line: 56, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !788, line: 26, size: 1152, elements: !789)
!788 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!789 = !{!790, !804, !805, !806, !807, !811, !812, !813, !816, !1101, !1102, !1103, !1104}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !787, file: !788, line: 27, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !792, line: 19, size: 192, elements: !793)
!792 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!793 = !{!794, !802, !803}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !791, file: !792, line: 20, baseType: !795, size: 128)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !796, line: 296, size: 128, elements: !797)
!796 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!797 = !{!798, !799, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !795, file: !796, line: 297, baseType: !68, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !795, file: !796, line: 299, baseType: !800, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !17)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !795, file: !796, line: 300, baseType: !29, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !791, file: !792, line: 21, baseType: !17, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !791, file: !792, line: 22, baseType: !17, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !787, file: !788, line: 28, baseType: !698, size: 128, align: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !787, file: !788, line: 29, baseType: !17, size: 32, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !787, file: !788, line: 30, baseType: !360, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !787, file: !788, line: 31, baseType: !808, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !810, line: 325, flags: DIFlagFwdDecl)
!810 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!811 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !787, file: !788, line: 32, baseType: !17, size: 32, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !787, file: !788, line: 33, baseType: !786, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !787, file: !788, line: 35, baseType: !814, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !788, line: 17, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !787, file: !788, line: 37, baseType: !817, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !819, line: 68, size: 4800, elements: !820)
!819 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!820 = !{!821, !843, !844, !845, !846, !847, !855, !862, !873, !874, !877, !878, !999, !1000, !1012, !1082, !1083, !1097, !1099}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !818, file: !819, line: 69, baseType: !822, size: 576)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !819, line: 23, size: 576, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !822, file: !819, line: 24, baseType: !354, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !819, line: 25, baseType: !826, size: 512, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !819, line: 25, size: 512, elements: !827)
!827 = !{!828, !837}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !826, file: !819, line: 26, baseType: !829, size: 480)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 480, elements: !835)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !819, line: 17, size: 96, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !830, file: !819, line: 18, baseType: !354, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !830, file: !819, line: 19, baseType: !354, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !819, line: 20, baseType: !354, size: 32, offset: 64)
!835 = !{!836}
!836 = !DISubrange(count: 5)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !819, line: 27, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !819, line: 27, size: 128, elements: !839)
!839 = !{!840, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !838, file: !819, line: 28, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !838, file: !819, line: 29, baseType: !841, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !818, file: !819, line: 70, baseType: !822, size: 576, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !818, file: !819, line: 71, baseType: !822, size: 576, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !818, file: !819, line: 72, baseType: !817, size: 64, offset: 1728)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !818, file: !819, line: 73, baseType: !31, size: 32, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !818, file: !819, line: 74, baseType: !848, size: 32, offset: 1824)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !849, line: 23, baseType: !850)
!849 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 21, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !850, file: !849, line: 22, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !46, line: 49, baseType: !17)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !818, file: !819, line: 75, baseType: !856, size: 32, offset: 1856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !849, line: 28, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 26, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !857, file: !849, line: 27, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !46, line: 50, baseType: !17)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !818, file: !819, line: 76, baseType: !863, size: 192, offset: 1920)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !864, line: 9, size: 192, elements: !865)
!864 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!865 = !{!866, !867, !871, !872}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !863, file: !864, line: 10, baseType: !711, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !863, file: !864, line: 11, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !864, line: 7, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !863, file: !864, line: 12, baseType: !17, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !864, line: 13, baseType: !368, size: 32, offset: 160)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !819, line: 77, baseType: !48, size: 64, offset: 2112)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !818, file: !819, line: 80, baseType: !875, size: 8, offset: 2176)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !876)
!876 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !818, file: !819, line: 88, baseType: !106, size: 128, offset: 2240)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !818, file: !819, line: 89, baseType: !879, size: 64, offset: 2368)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !881, line: 195, size: 1728, elements: !882)
!881 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!882 = !{!883, !884, !889, !894, !903, !906, !907, !914, !915, !916, !917, !920, !921, !922, !924, !925, !963, !984}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !880, file: !881, line: 196, baseType: !368, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !880, file: !881, line: 197, baseType: !885, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !881, line: 28, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !93, line: 20, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !95, line: 26, baseType: !31)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 198, baseType: !890, size: 192, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 198, size: 192, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !890, file: !881, line: 199, baseType: !106, size: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !890, file: !881, line: 200, baseType: !412, size: 192, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !880, file: !881, line: 205, baseType: !895, size: 320, offset: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !896, line: 48, size: 320, elements: !897)
!896 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!897 = !{!898, !899, !900, !901, !902}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !895, file: !896, line: 49, baseType: !711, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !895, file: !896, line: 55, baseType: !711, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !895, file: !896, line: 57, baseType: !724, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !895, file: !896, line: 59, baseType: !510, size: 32, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !895, file: !896, line: 60, baseType: !106, size: 128, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !880, file: !881, line: 206, baseType: !904, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !881, line: 206, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !880, file: !881, line: 207, baseType: !29, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 208, baseType: !908, size: 64, offset: 704)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 208, size: 64, elements: !909)
!909 = !{!910, !913}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !908, file: !881, line: 209, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !912, line: 8, baseType: !430)
!912 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !908, file: !881, line: 210, baseType: !911, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !880, file: !881, line: 212, baseType: !911, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !880, file: !881, line: 213, baseType: !848, size: 32, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !880, file: !881, line: 214, baseType: !856, size: 32, offset: 864)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !880, file: !881, line: 215, baseType: !918, size: 32, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !881, line: 31, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !354)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !880, file: !881, line: 216, baseType: !35, size: 16, offset: 928)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !880, file: !881, line: 217, baseType: !35, size: 16, offset: 944)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !880, file: !881, line: 221, baseType: !923, size: 16, offset: 960)
!923 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !880, file: !881, line: 228, baseType: !48, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 245, baseType: !926, size: 320, offset: 1088)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 245, size: 320, elements: !927)
!927 = !{!928, !955}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !926, file: !881, line: 246, baseType: !929, size: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !881, line: 114, size: 320, elements: !930)
!930 = !{!931, !932, !944, !947, !954}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !929, file: !881, line: 116, baseType: !48, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !881, line: 117, baseType: !933, size: 64, offset: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !929, file: !881, line: 117, size: 64, elements: !934)
!934 = !{!935, !943}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !881, line: 118, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !881, line: 118, size: 64, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !936, file: !881, line: 120, baseType: !102, size: 16)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !936, file: !881, line: 121, baseType: !940, size: 48, offset: 16)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 6)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !933, file: !881, line: 127, baseType: !48, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !929, file: !881, line: 129, baseType: !945, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !881, line: 102, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !929, file: !881, line: 130, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !881, line: 108, size: 192, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !949, file: !881, line: 109, baseType: !698, size: 128, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !949, file: !881, line: 110, baseType: !368, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !949, file: !881, line: 111, baseType: !875, size: 8, offset: 160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !929, file: !881, line: 131, baseType: !26, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !881, line: 247, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !881, line: 247, size: 320, elements: !957)
!957 = !{!958, !959, !960, !961, !962}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !956, file: !881, line: 248, baseType: !48, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !956, file: !881, line: 249, baseType: !48, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !956, file: !881, line: 250, baseType: !945, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !956, file: !881, line: 251, baseType: !948, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !956, file: !881, line: 252, baseType: !345, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 260, baseType: !964, size: 256, offset: 1408)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 260, size: 256, elements: !965)
!965 = !{!966, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !964, file: !881, line: 261, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !881, line: 134, size: 256, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !967, file: !881, line: 135, baseType: !29, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !967, file: !881, line: 136, baseType: !971, size: 256)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !775)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !881, line: 262, baseType: !973, size: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !881, line: 262, size: 256, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !973, file: !881, line: 264, baseType: !106, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !973, file: !881, line: 265, baseType: !977, size: 128, offset: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !978, line: 22, size: 128, elements: !979)
!978 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!979 = !{!980, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !977, file: !978, line: 23, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !978, line: 23, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !977, file: !978, line: 24, baseType: !48, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !880, file: !881, line: 280, baseType: !985, size: 64, offset: 1664)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !881, line: 176, size: 192, elements: !987)
!987 = !{!988, !997, !998}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !986, file: !881, line: 177, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !881, line: 171, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!31, !879, !993, !995, !879}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !986, file: !881, line: 178, baseType: !879, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !986, file: !881, line: 179, baseType: !945, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !818, file: !819, line: 90, baseType: !895, size: 320, offset: 2432)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !818, file: !819, line: 97, baseType: !1001, size: 256, offset: 2752)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1002, line: 98, size: 256, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1001, file: !1002, line: 99, baseType: !711, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1001, file: !1002, line: 100, baseType: !106, size: 128, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1001, file: !1002, line: 101, baseType: !1007, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1002, line: 21, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !818, file: !819, line: 99, baseType: !1013, size: 768, offset: 3008)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !22, line: 199, size: 768, elements: !1014)
!1014 = !{!1015, !1020}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1013, file: !22, line: 200, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!31, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1013, file: !22, line: 201, baseType: !1021, size: 704, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !22, line: 193, size: 704, elements: !1022)
!1022 = !{!1023, !1081}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1021, file: !22, line: 195, baseType: !1024, size: 640)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !22, line: 173, size: 640, elements: !1025)
!1025 = !{!1026, !1038, !1050, !1051, !1071, !1072, !1074, !1080}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !22, line: 174, baseType: !1027, size: 192)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !22, line: 174, size: 192, elements: !1028)
!1028 = !{!1029, !1037}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !22, line: 175, baseType: !1030, size: 192)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !22, line: 175, size: 192, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1030, file: !22, line: 176, baseType: !42, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1030, file: !22, line: 177, baseType: !31, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1030, file: !22, line: 178, baseType: !31, size: 32, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1030, file: !22, line: 179, baseType: !31, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1030, file: !22, line: 180, baseType: !31, size: 32, offset: 160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1027, file: !22, line: 182, baseType: !698, size: 128, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1024, file: !22, line: 184, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1041, line: 26, size: 256, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1040, file: !1041, line: 27, baseType: !17, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1040, file: !1041, line: 28, baseType: !1045, size: 192, offset: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1046, line: 43, size: 192, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1045, file: !1046, line: 44, baseType: !510, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1045, file: !1046, line: 45, baseType: !106, size: 128, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1024, file: !22, line: 185, baseType: !42, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1024, file: !22, line: 186, baseType: !1052, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !22, line: 204, size: 960, elements: !1054)
!1054 = !{!1055, !1056, !1060, !1067}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1053, file: !22, line: 205, baseType: !1013, size: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1053, file: !22, line: 206, baseType: !1057, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1019, !1052}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1053, file: !22, line: 207, baseType: !1061, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1053, file: !22, line: 209, baseType: !1068, size: 64, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!31, !1064, !42}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1024, file: !22, line: 187, baseType: !1019, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1024, file: !22, line: 188, baseType: !1073, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1024, file: !22, line: 189, baseType: !1075, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !22, line: 157, size: 256, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1076, file: !22, line: 158, baseType: !412, size: 192, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1076, file: !22, line: 159, baseType: !1064, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1024, file: !22, line: 190, baseType: !766, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1021, file: !22, line: 196, baseType: !551, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !818, file: !819, line: 100, baseType: !1064, size: 64, offset: 3776)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !818, file: !819, line: 102, baseType: !1084, size: 64, offset: 3840)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !819, line: 107, size: 1152, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1095}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !819, line: 108, baseType: !770, size: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1085, file: !819, line: 109, baseType: !817, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1085, file: !819, line: 110, baseType: !848, size: 32, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1085, file: !819, line: 111, baseType: !58, size: 32, offset: 224)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1085, file: !819, line: 112, baseType: !1092, size: 640, offset: 256)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 640, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 10)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1085, file: !819, line: 113, baseType: !1096, size: 256, offset: 896)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 256, elements: !775)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !818, file: !819, line: 103, baseType: !1098, size: 640, offset: 3904)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 640, elements: !1093)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !818, file: !819, line: 104, baseType: !1100, size: 256, offset: 4544)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !775)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !787, file: !788, line: 38, baseType: !1084, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !787, file: !788, line: 39, baseType: !31, size: 32, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !787, file: !788, line: 40, baseType: !863, size: 192, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !787, file: !788, line: 42, baseType: !31, size: 32, offset: 1088)
!1105 = !{!1106}
!1106 = !DISubrange(count: -1)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !732, file: !248, line: 951, baseType: !116, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !732, file: !248, line: 952, baseType: !848, size: 32, offset: 160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !732, file: !248, line: 952, baseType: !848, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !732, file: !248, line: 953, baseType: !31, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !691, file: !248, line: 1012, baseType: !1112, size: 64, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1115, line: 110, size: 1472, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1174, !1175, !1176, !1184}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1114, file: !1115, line: 111, baseType: !711, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1114, file: !1115, line: 112, baseType: !848, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1114, file: !1115, line: 113, baseType: !856, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1114, file: !1115, line: 114, baseType: !848, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1114, file: !1115, line: 115, baseType: !856, size: 32, offset: 160)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1114, file: !1115, line: 116, baseType: !848, size: 32, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1114, file: !1115, line: 117, baseType: !856, size: 32, offset: 224)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1114, file: !1115, line: 118, baseType: !848, size: 32, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1114, file: !1115, line: 119, baseType: !856, size: 32, offset: 288)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1114, file: !1115, line: 120, baseType: !17, size: 32, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1114, file: !1115, line: 121, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1129, line: 24, baseType: !1130)
!1129 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1129, line: 24, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1130, file: !1129, line: 24, baseType: !420, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1114, file: !1115, line: 122, baseType: !1128, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1114, file: !1115, line: 123, baseType: !1128, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1114, file: !1115, line: 124, baseType: !1128, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1114, file: !1115, line: 125, baseType: !1128, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1114, file: !1115, line: 127, baseType: !96, size: 8, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1114, file: !1115, line: 129, baseType: !879, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1114, file: !1115, line: 130, baseType: !879, size: 64, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1114, file: !1115, line: 131, baseType: !879, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1114, file: !1115, line: 132, baseType: !879, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1114, file: !1115, line: 135, baseType: !29, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1114, file: !1115, line: 137, baseType: !1144, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1146, line: 14, size: 1088, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1147 = !{!1148, !1149, !1158, !1159, !1160, !1161, !1162, !1163}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1145, file: !1146, line: 15, baseType: !368, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1145, file: !1146, line: 17, baseType: !1150, size: 320, offset: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1151, line: 22, size: 320, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1150, file: !1151, line: 23, baseType: !510, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1150, file: !1151, line: 24, baseType: !429, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1150, file: !1151, line: 26, baseType: !106, size: 128, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1150, file: !1151, line: 28, baseType: !1157, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1145, file: !1146, line: 19, baseType: !48, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1145, file: !1146, line: 20, baseType: !711, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1145, file: !1146, line: 23, baseType: !770, size: 128, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1145, file: !1146, line: 24, baseType: !848, size: 32, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1145, file: !1146, line: 29, baseType: !711, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1145, file: !1146, line: 36, baseType: !1164, size: 320, offset: 768)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1165, line: 15, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1164, file: !1165, line: 16, baseType: !510, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1164, file: !1165, line: 18, baseType: !31, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1164, file: !1165, line: 19, baseType: !31, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1164, file: !1165, line: 20, baseType: !31, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1164, file: !1165, line: 21, baseType: !31, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1164, file: !1165, line: 22, baseType: !48, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !1165, line: 23, baseType: !48, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1114, file: !1115, line: 138, baseType: !817, size: 64, offset: 1152)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1114, file: !1115, line: 139, baseType: !1084, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1114, file: !1115, line: 140, baseType: !1177, size: 64, offset: 1280)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1115, line: 25, size: 64, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1178, file: !1115, line: 26, baseType: !58, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1178, file: !1115, line: 27, baseType: !31, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1178, file: !1115, line: 28, baseType: !1183, offset: 64)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, elements: !1105)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !1115, line: 142, baseType: !1185, size: 128, offset: 1344)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !1115, line: 142, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1185, file: !1115, line: 143, baseType: !31, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1185, file: !1115, line: 144, baseType: !698, size: 128, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !691, file: !248, line: 1013, baseType: !1190, size: 256, offset: 960)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !248, line: 970, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1190, file: !248, line: 971, baseType: !48, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1190, file: !248, line: 972, baseType: !17, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1190, file: !248, line: 973, baseType: !17, size: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1190, file: !248, line: 974, baseType: !17, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1190, file: !248, line: 975, baseType: !17, size: 32, offset: 160)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1190, file: !248, line: 976, baseType: !50, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !691, file: !248, line: 1014, baseType: !1199, size: 128, offset: 1216)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1200, line: 8, size: 128, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1201 = !{!1202, !4854}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1199, file: !1200, line: 9, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1205, line: 70, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1206 = !{!1207, !4851, !4852, !4853}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1204, file: !1205, line: 71, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1210, line: 82, size: 1536, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1211 = !{!1212, !1213, !1218, !1226, !1227, !1242, !4819, !4821, !4834, !4835, !4836, !4837, !4838, !4843, !4844, !4845}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1209, file: !1210, line: 84, baseType: !17, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1209, file: !1210, line: 85, baseType: !1214, size: 32, offset: 32)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !535, line: 275, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !535, line: 275, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1215, file: !535, line: 275, baseType: !539, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1209, file: !1210, line: 86, baseType: !1219, size: 128, offset: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1220, line: 38, size: 128, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1221 = !{!1222, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1219, file: !1220, line: 39, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1219, file: !1220, line: 39, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1209, file: !1210, line: 87, baseType: !1208, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1209, file: !1210, line: 88, baseType: !1228, size: 128, offset: 256)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1210, line: 49, size: 128, elements: !1229)
!1229 = !{!1230, !1239}
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !1210, line: 50, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1210, line: 50, size: 64, elements: !1232)
!1232 = !{!1233, !1238}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1210, line: 51, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1231, file: !1210, line: 51, size: 64, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1234, file: !1210, line: 52, baseType: !354, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1234, file: !1210, line: 52, baseType: !354, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1231, file: !1210, line: 54, baseType: !420, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1228, file: !1210, line: 56, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1209, file: !1210, line: 89, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !248, line: 641, size: 4800, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1443, !4634, !4635, !4636, !4637, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4801, !4804, !4805, !4806, !4815, !4816, !4817, !4818}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1244, file: !248, line: 642, baseType: !33, size: 16)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1244, file: !248, line: 643, baseType: !35, size: 16, offset: 16)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1244, file: !248, line: 644, baseType: !848, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1244, file: !248, line: 645, baseType: !106, size: 128, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1244, file: !248, line: 646, baseType: !856, size: 32, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1244, file: !248, line: 647, baseType: !17, size: 32, offset: 224)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1244, file: !248, line: 650, baseType: !1253, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !248, line: 607, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1244, file: !248, line: 651, baseType: !1253, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1244, file: !248, line: 654, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !248, line: 1966, size: 2048, align: 512, elements: !1260)
!1260 = !{!1261, !1265, !1278, !1284, !1288, !1292, !1296, !1300, !1304, !1308, !1312, !1313, !1319, !1323, !1360, !1391, !1398, !1404, !1408, !1412, !1416, !1420, !1424, !1430, !1434}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1259, file: !248, line: 1967, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1208, !1243, !1208, !17}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1259, file: !248, line: 1968, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!26, !1208, !1243, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1271, line: 10, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1272 = !{!1273, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1270, file: !1271, line: 11, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !29}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1270, file: !1271, line: 12, baseType: !29, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1259, file: !248, line: 1969, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!31, !1282, !1243, !31}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1129, line: 42, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1259, file: !248, line: 1970, baseType: !1285, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!1253, !1243, !31, !875}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1259, file: !248, line: 1972, baseType: !1289, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!31, !1208, !345, !31}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1259, file: !248, line: 1974, baseType: !1293, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!31, !1282, !1243, !1208, !33, !875}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1259, file: !248, line: 1976, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!31, !1208, !1243, !1208}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1259, file: !248, line: 1977, baseType: !1301, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!31, !1243, !1208}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1259, file: !248, line: 1978, baseType: !1305, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!31, !1282, !1243, !1208, !26}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1259, file: !248, line: 1980, baseType: !1309, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!31, !1282, !1243, !1208, !33}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1259, file: !248, line: 1982, baseType: !1301, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1259, file: !248, line: 1983, baseType: !1314, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!31, !1282, !1243, !1208, !33, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 21, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !34, line: 18, baseType: !354)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1259, file: !248, line: 1985, baseType: !1320, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!31, !1282, !1243, !1208, !1243, !1208, !17}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1259, file: !248, line: 1987, baseType: !1324, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!31, !1282, !1208, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !248, line: 226, size: 640, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1342, !1351, !1352, !1357, !1358, !1359}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1328, file: !248, line: 227, baseType: !17, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1328, file: !248, line: 228, baseType: !33, size: 16, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !248, line: 241, baseType: !1333, size: 32, offset: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !248, line: 241, size: 32, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1333, file: !248, line: 242, baseType: !848, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1333, file: !248, line: 243, baseType: !1337, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1338, line: 16, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 14, size: 32, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1339, file: !1338, line: 15, baseType: !853, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !248, line: 245, baseType: !1343, size: 32, offset: 96)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !248, line: 245, size: 32, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1343, file: !248, line: 246, baseType: !856, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1343, file: !248, line: 247, baseType: !1347, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1338, line: 20, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 18, size: 32, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1348, file: !1338, line: 19, baseType: !860, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1328, file: !248, line: 249, baseType: !50, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1328, file: !248, line: 250, baseType: !1353, size: 128, offset: 192)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !912, line: 13, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1353, file: !912, line: 14, baseType: !911, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1353, file: !912, line: 15, baseType: !358, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1328, file: !248, line: 251, baseType: !1353, size: 128, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1328, file: !248, line: 252, baseType: !1353, size: 128, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1328, file: !248, line: 259, baseType: !690, size: 64, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1259, file: !248, line: 1988, baseType: !1361, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!31, !1282, !1364, !1366, !354, !17}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1368, line: 22, size: 1280, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1367, file: !1368, line: 23, baseType: !354, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1367, file: !1368, line: 24, baseType: !33, size: 16, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1367, file: !1368, line: 25, baseType: !17, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1367, file: !1368, line: 26, baseType: !919, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1367, file: !1368, line: 27, baseType: !420, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1367, file: !1368, line: 28, baseType: !420, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1367, file: !1368, line: 41, baseType: !420, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1367, file: !1368, line: 42, baseType: !1317, size: 32, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1367, file: !1368, line: 43, baseType: !1317, size: 32, offset: 352)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1367, file: !1368, line: 44, baseType: !848, size: 32, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1367, file: !1368, line: 45, baseType: !856, size: 32, offset: 416)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1367, file: !1368, line: 46, baseType: !50, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1367, file: !1368, line: 47, baseType: !1353, size: 128, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1367, file: !1368, line: 48, baseType: !1353, size: 128, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1367, file: !1368, line: 49, baseType: !1353, size: 128, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1367, file: !1368, line: 50, baseType: !1353, size: 128, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1367, file: !1368, line: 51, baseType: !420, size: 64, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1367, file: !1368, line: 52, baseType: !420, size: 64, offset: 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1367, file: !1368, line: 53, baseType: !354, size: 32, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1367, file: !1368, line: 54, baseType: !354, size: 32, offset: 1184)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1367, file: !1368, line: 55, baseType: !420, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1259, file: !248, line: 1990, baseType: !1392, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !1208, !345, !44}
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 66, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !46, line: 73, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !46, line: 15, baseType: !358)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1259, file: !248, line: 1991, baseType: !1399, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!31, !1243, !1402, !420, !420}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !248, line: 55, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1259, file: !248, line: 1993, baseType: !1405, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!31, !1243, !31}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1259, file: !248, line: 1994, baseType: !1409, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!31, !1243, !1208, !690, !17, !33}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1259, file: !248, line: 1997, baseType: !1413, size: 64, offset: 1216)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!31, !1282, !1243, !690, !33}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1259, file: !248, line: 1999, baseType: !1417, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1253, !1282, !1208, !31}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1259, file: !248, line: 2001, baseType: !1421, size: 64, offset: 1344)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!31, !1282, !1208, !1253, !31}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1259, file: !248, line: 2003, baseType: !1425, size: 64, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!31, !1282, !1208, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !248, line: 76, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1259, file: !248, line: 2005, baseType: !1431, size: 64, offset: 1472)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!31, !1208, !1428}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1259, file: !248, line: 2006, baseType: !1435, size: 64, offset: 1536)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438, !1243}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !248, line: 3192, size: 192, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1439, file: !248, line: 3193, baseType: !795, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1439, file: !248, line: 3194, baseType: !354, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1244, file: !248, line: 655, baseType: !1444, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !248, line: 1190, size: 10752, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !4151, !4283, !4323, !4406, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4423, !4427, !4428, !4431, !4434, !4437, !4440, !4441, !4442, !4483, !4505, !4506, !4507, !4508, !4509, !4510, !4513, !4517, !4526, !4527, !4528, !4529, !4588, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1445, file: !248, line: 1191, baseType: !106, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1445, file: !248, line: 1192, baseType: !1317, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1445, file: !248, line: 1193, baseType: !96, size: 8, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1445, file: !248, line: 1194, baseType: !48, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1445, file: !248, line: 1195, baseType: !50, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1445, file: !248, line: 1196, baseType: !1453, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !248, line: 2366, size: 576, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1464, !1468, !1472, !1476, !4139, !4140, !4141, !4143, !4144, !4145, !4147, !4148, !4149, !4150}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1454, file: !248, line: 2367, baseType: !26, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1454, file: !248, line: 2368, baseType: !31, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1454, file: !248, line: 2376, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!31, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1205, line: 21, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1454, file: !248, line: 2377, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !248, line: 75, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1454, file: !248, line: 2378, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1208, !1453, !31, !26, !29}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1454, file: !248, line: 2380, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1444}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1454, file: !248, line: 2381, baseType: !1477, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !125, line: 402, size: 9216, align: 512, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1486, !2346, !2372, !2373, !2374, !2375, !2379, !2382, !2383, !2384, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2452, !2456, !2476, !2496, !2497, !2498, !2499, !2508, !2531, !2532, !2535, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2549, !2550, !2649, !2657, !2658, !2659, !2661, !4118, !4119, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1478, file: !125, line: 403, baseType: !124, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1478, file: !125, line: 406, baseType: !106, size: 128, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1478, file: !125, line: 409, baseType: !1483, size: 448, offset: 192)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 56)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1478, file: !125, line: 417, baseType: !1487, size: 768, offset: 640)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !125, line: 45, size: 768, elements: !1488)
!1488 = !{!1489, !2340, !2341, !2342, !2345}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1487, file: !125, line: 46, baseType: !1490, size: 512)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1491, line: 64, size: 512, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1492 = !{!1493, !1494, !1495, !1497, !1541, !2187, !2330, !2335, !2336, !2337, !2338, !2339}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1490, file: !1491, line: 65, baseType: !26, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1490, file: !1491, line: 66, baseType: !106, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1490, file: !1491, line: 67, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1490, file: !1491, line: 68, baseType: !1498, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1491, line: 168, size: 768, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1499, file: !1491, line: 169, baseType: !106, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1499, file: !1491, line: 170, baseType: !68, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1499, file: !1491, line: 171, baseType: !1490, size: 512, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1499, file: !1491, line: 172, baseType: !1505, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1491, line: 133, size: 192, elements: !1508)
!1508 = !{!1509, !1516, !1521}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1507, file: !1491, line: 134, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!31, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1490)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1507, file: !1491, line: 135, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!26, !1514}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1507, file: !1491, line: 136, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!31, !1514, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1491, line: 125, size: 20736, elements: !1528)
!1528 = !{!1529, !1531, !1535, !1536, !1540}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1527, file: !1491, line: 126, baseType: !1530, size: 192)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !754)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1527, file: !1491, line: 127, baseType: !1532, size: 4096, offset: 192)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 4096, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1527, file: !1491, line: 128, baseType: !31, size: 32, offset: 4288)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1527, file: !1491, line: 129, baseType: !1537, size: 16384, offset: 4320)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 2048)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1527, file: !1491, line: 130, baseType: !31, size: 32, offset: 20704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1490, file: !1491, line: 69, baseType: !1542, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1491, line: 116, size: 384, elements: !1545)
!1545 = !{!1546, !1550, !1569, !2149, !2179, !2183}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1544, file: !1491, line: 117, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1496}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1544, file: !1491, line: 118, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1554, line: 254, size: 128, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1555 = !{!1556, !1565}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1553, file: !1554, line: 255, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1395, !1496, !1560, !345}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1554, line: 30, size: 128, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1561, file: !1554, line: 31, baseType: !26, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1561, file: !1554, line: 32, baseType: !33, size: 16, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1553, file: !1554, line: 256, baseType: !1566, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1395, !1496, !1560, !26, !44}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1544, file: !1491, line: 119, baseType: !1570, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1554, line: 84, size: 320, elements: !1574)
!1574 = !{!1575, !1576, !1580, !2145, !2147}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1573, file: !1554, line: 85, baseType: !26, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1573, file: !1554, line: 86, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!33, !1496, !1560, !31}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1573, file: !1554, line: 88, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!33, !1496, !1584, !31}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1554, line: 175, size: 512, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !2136, !2140, !2141}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1585, file: !1554, line: 176, baseType: !1561, size: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1585, file: !1554, line: 177, baseType: !44, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1585, file: !1554, line: 178, baseType: !29, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1585, file: !1554, line: 179, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !248, line: 472, size: 1536, align: 64, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !2128, !2129, !2130, !2133, !2134, !2135}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1595, file: !248, line: 473, baseType: !1243, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1595, file: !248, line: 474, baseType: !795, size: 128, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1595, file: !248, line: 475, baseType: !895, size: 320, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1595, file: !248, line: 476, baseType: !800, size: 32, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1595, file: !248, line: 477, baseType: !58, size: 32, offset: 544)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1595, file: !248, line: 482, baseType: !548, size: 128, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1595, file: !248, line: 483, baseType: !48, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1595, file: !248, line: 484, baseType: !48, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1595, file: !248, line: 485, baseType: !1606, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !248, line: 404, size: 1280, elements: !1609)
!1609 = !{!1610, !1903, !1973, !1977, !1981, !1987, !1993, !1997, !2002, !2006, !2010, !2014, !2092, !2096, !2100, !2104, !2109, !2113, !2120, !2124}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1608, file: !248, line: 405, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!31, !1614, !1901}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !140, line: 74, size: 512, align: 128, elements: !1616)
!1616 = !{!1617, !1618, !1895, !1900}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1615, file: !140, line: 75, baseType: !48, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !140, line: 83, baseType: !1619, size: 320, offset: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !140, line: 83, size: 320, elements: !1620)
!1620 = !{!1621, !1642, !1656, !1660, !1894}
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !140, line: 84, baseType: !1622, size: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !140, line: 84, size: 320, elements: !1623)
!1623 = !{!1624, !1635, !1636, !1641}
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !140, line: 90, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !140, line: 90, size: 128, elements: !1626)
!1626 = !{!1627, !1628, !1633, !1634}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1625, file: !140, line: 91, baseType: !106, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !140, line: 94, baseType: !1629, size: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !140, line: 94, size: 128, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1629, file: !140, line: 96, baseType: !29, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1629, file: !140, line: 98, baseType: !17, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1625, file: !140, line: 102, baseType: !106, size: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1625, file: !140, line: 103, baseType: !106, size: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1622, file: !140, line: 106, baseType: !1594, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !140, line: 107, baseType: !1637, size: 64, offset: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !140, line: 107, size: 64, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1637, file: !140, line: 108, baseType: !48, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1637, file: !140, line: 109, baseType: !48, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1622, file: !140, line: 117, baseType: !48, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !140, line: 119, baseType: !1643, size: 320)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !140, line: 119, size: 320, elements: !1644)
!1644 = !{!1645, !1646, !1649, !1650, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1643, file: !140, line: 124, baseType: !48, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1643, file: !140, line: 125, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !140, line: 125, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1643, file: !140, line: 126, baseType: !48, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1643, file: !140, line: 127, baseType: !48, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !140, line: 128, baseType: !1652, size: 64, offset: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !140, line: 128, size: 64, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1652, file: !140, line: 133, baseType: !48, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1652, file: !140, line: 138, baseType: !711, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !140, line: 141, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !140, line: 141, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1657, file: !140, line: 142, baseType: !48, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !140, line: 144, baseType: !1661, size: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !140, line: 144, size: 128, elements: !1662)
!1662 = !{!1663, !1893}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1661, file: !140, line: 146, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !132, line: 126, size: 1216, elements: !1666)
!1666 = !{!1667, !1677, !1698, !1699, !1700, !1701, !1702, !1875, !1876, !1877}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1665, file: !132, line: 127, baseType: !1668, size: 384)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !132, line: 21, size: 384, elements: !1669)
!1669 = !{!1670, !1671, !1673, !1674, !1675, !1676}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1668, file: !132, line: 22, baseType: !48, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1668, file: !132, line: 23, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1668, file: !132, line: 24, baseType: !1672, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1668, file: !132, line: 25, baseType: !48, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1668, file: !132, line: 26, baseType: !48, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1668, file: !132, line: 27, baseType: !48, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1665, file: !132, line: 128, baseType: !1678, size: 128, offset: 384)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1679, line: 105, size: 128, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1678, file: !1679, line: 110, baseType: !48, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !1679, line: 118, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1679, line: 95, size: 448, elements: !1685)
!1685 = !{!1686, !1687, !1693, !1694, !1695, !1696, !1697}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1684, file: !1679, line: 96, baseType: !711, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1684, file: !1679, line: 97, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1679, line: 60, baseType: !1690)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1684, file: !1679, line: 98, baseType: !1688, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1684, file: !1679, line: 99, baseType: !875, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1684, file: !1679, line: 100, baseType: !875, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1684, file: !1679, line: 101, baseType: !698, size: 128, align: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1684, file: !1679, line: 102, baseType: !1692, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1665, file: !132, line: 129, baseType: !1040, size: 256, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1665, file: !132, line: 130, baseType: !131, size: 32, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !132, line: 131, baseType: !17, size: 32, offset: 800)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1665, file: !132, line: 132, baseType: !48, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1665, file: !132, line: 133, baseType: !1703, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !132, line: 77, size: 192, elements: !1706)
!1706 = !{!1707, !1711, !1871}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1705, file: !132, line: 83, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1614}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1705, file: !132, line: 89, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !140, line: 1184, baseType: !17)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1718, line: 512, size: 896, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1719 = !{!1720, !1838, !1839, !1846, !1853, !1863, !1864, !1865, !1867, !1869}
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1718, line: 513, baseType: !1721, size: 320)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1718, line: 513, size: 320, elements: !1722)
!1722 = !{!1723, !1834, !1835, !1836, !1837}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1721, file: !1718, line: 514, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !140, line: 625, size: 1344, elements: !1726)
!1726 = !{!1727, !1736, !1737, !1745, !1752, !1753, !1758, !1759, !1764, !1765, !1768, !1827, !1828, !1829, !1830, !1831, !1832}
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !140, line: 628, baseType: !1728, size: 128)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !140, line: 628, size: 128, elements: !1729)
!1729 = !{!1730, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !140, line: 629, baseType: !1731, size: 128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !140, line: 629, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1731, file: !140, line: 631, baseType: !48, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1731, file: !140, line: 632, baseType: !48, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1728, file: !140, line: 635, baseType: !698, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1725, file: !140, line: 639, baseType: !662, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1725, file: !140, line: 640, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1739, line: 297, baseType: !1740)
!1739 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1739, line: 297, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1740, file: !1739, line: 297, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1744, line: 19, baseType: !48)
!1744 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !140, line: 646, baseType: !1746, size: 64, offset: 256)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !140, line: 646, size: 64, elements: !1747)
!1747 = !{!1748, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1746, file: !140, line: 647, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !140, line: 542, baseType: !48)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1746, file: !140, line: 648, baseType: !1750, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1725, file: !140, line: 666, baseType: !31, size: 32, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1725, file: !140, line: 667, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !140, line: 579, size: 320, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !140, line: 580, baseType: !895, size: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1725, file: !140, line: 670, baseType: !875, size: 8, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1725, file: !140, line: 681, baseType: !1760, size: 256, offset: 512)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !140, line: 678, size: 256, elements: !1761)
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1760, file: !140, line: 679, baseType: !412, size: 192, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1760, file: !140, line: 680, baseType: !48, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1725, file: !140, line: 689, baseType: !106, size: 128, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1725, file: !140, line: 691, baseType: !1766, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !140, line: 691, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1725, file: !140, line: 694, baseType: !1769, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1718, line: 563, size: 1024, elements: !1772)
!1772 = !{!1773, !1777, !1778, !1782, !1786, !1790, !1791, !1795, !1799, !1803, !1804, !1805, !1809, !1813, !1819, !1823}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1771, file: !1718, line: 564, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1724}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1771, file: !1718, line: 569, baseType: !1774, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1771, file: !1718, line: 571, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!31, !1724, !48}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1771, file: !1718, line: 572, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!31, !1724}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1771, file: !1718, line: 578, baseType: !1787, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!31, !1724, !48, !48, !48}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1771, file: !1718, line: 580, baseType: !1712, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1771, file: !1718, line: 581, baseType: !1792, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!1715, !1716, !17}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1771, file: !1718, line: 582, baseType: !1796, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1715, !1716, !48, !48}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1771, file: !1718, line: 584, baseType: !1800, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!48, !1724}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1771, file: !1718, line: 588, baseType: !1712, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1771, file: !1718, line: 591, baseType: !1712, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1771, file: !1718, line: 597, baseType: !1806, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!31, !1724, !48, !29, !31, !31}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1771, file: !1718, line: 603, baseType: !1810, size: 64, offset: 768)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!26, !1724}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1771, file: !1718, line: 613, baseType: !1814, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!31, !1724, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !362, line: 54, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1771, file: !1718, line: 625, baseType: !1820, size: 64, offset: 896)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1817, !1724, !48}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1771, file: !1718, line: 633, baseType: !1824, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!1614, !1724, !48}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1725, file: !140, line: 697, baseType: !48, size: 64, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1725, file: !140, line: 699, baseType: !690, size: 64, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1725, file: !140, line: 700, baseType: !29, size: 64, offset: 1152)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1725, file: !140, line: 711, baseType: !711, size: 64, offset: 1216)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1725, file: !140, line: 717, baseType: !1817, size: 64, offset: 1280)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1725, file: !140, line: 722, baseType: !1833, offset: 1344)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !140, line: 570, elements: !683)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1721, file: !1718, line: 515, baseType: !800, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1721, file: !1718, line: 516, baseType: !48, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1721, file: !1718, line: 517, baseType: !48, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1721, file: !1718, line: 518, baseType: !48, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1717, file: !1718, line: 520, baseType: !139, size: 32, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1717, file: !1718, line: 522, baseType: !1840, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1744, line: 22, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1744, line: 22, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1842, file: !1744, line: 22, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1744, line: 15, baseType: !48)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1717, file: !1718, line: 524, baseType: !1847, size: 64, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1739, line: 372, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 372, size: 64, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1849, file: !1739, line: 372, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1744, line: 16, baseType: !48)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1718, line: 527, baseType: !1854, size: 64, offset: 512)
!1854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !1718, line: 527, size: 64, elements: !1855)
!1855 = !{!1856, !1862}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1854, file: !1718, line: 528, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1744, line: 21, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1744, line: 21, size: 64, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1858, file: !1744, line: 21, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1744, line: 14, baseType: !48)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1854, file: !1718, line: 529, baseType: !1841, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1717, file: !1718, line: 534, baseType: !1614, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1717, file: !1718, line: 535, baseType: !1614, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1717, file: !1718, line: 541, baseType: !1866, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1717, file: !1718, line: 545, baseType: !1868, size: 64, offset: 768)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1717, file: !1718, line: 549, baseType: !1870, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1739, line: 520, baseType: !1614)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1705, file: !132, line: 100, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!31, !1664, !48, !48, !31}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1665, file: !132, line: 134, baseType: !29, size: 64, offset: 960)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1665, file: !132, line: 135, baseType: !31, size: 32, offset: 1024)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !132, line: 136, baseType: !1878, size: 128, offset: 1088)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !132, line: 136, size: 128, elements: !1879)
!1879 = !{!1880, !1886}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1878, file: !132, line: 137, baseType: !1881, size: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1882, line: 6, size: 128, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1881, file: !1882, line: 7, baseType: !420, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1881, file: !1882, line: 8, baseType: !420, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !132, line: 138, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1878, file: !132, line: 138, elements: !1888)
!1888 = !{!1889, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1887, file: !132, line: 138, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !132, line: 138, elements: !683)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1887, file: !132, line: 138, baseType: !1892)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1881, elements: !1105)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1661, file: !140, line: 147, baseType: !29, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1619, file: !140, line: 161, baseType: !698, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !140, line: 164, baseType: !1896, size: 32, offset: 384)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !140, line: 164, size: 32, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1896, file: !140, line: 169, baseType: !58, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1896, file: !140, line: 177, baseType: !17, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1615, file: !140, line: 181, baseType: !58, size: 32, offset: 416)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !248, line: 309, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1608, file: !248, line: 406, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!31, !690, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !140, line: 293, size: 1536, elements: !1909)
!1909 = !{!1910, !1940, !1954}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !140, line: 295, baseType: !1911, size: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !140, line: 295, size: 512, elements: !1912)
!1912 = !{!1913, !1939}
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !140, line: 296, baseType: !1914, size: 448)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !140, line: 296, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1926, !1927, !1928, !1937, !1938}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !140, line: 298, baseType: !48, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !140, line: 299, baseType: !1918, size: 128, offset: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !140, line: 299, size: 128, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1918, file: !140, line: 300, baseType: !106, size: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !140, line: 302, baseType: !1922, size: 128)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !140, line: 302, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1922, file: !140, line: 303, baseType: !29, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1922, file: !140, line: 305, baseType: !17, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1914, file: !140, line: 310, baseType: !1594, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1914, file: !140, line: 311, baseType: !48, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !140, line: 312, baseType: !1929, size: 64, offset: 320)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !140, line: 312, size: 64, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1929, file: !140, line: 313, baseType: !29, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1929, file: !140, line: 314, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !140, line: 257, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 255, size: 64, elements: !1935)
!1935 = !{!1936}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1934, file: !140, line: 256, baseType: !48, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1914, file: !140, line: 316, baseType: !58, size: 32, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1914, file: !140, line: 317, baseType: !58, size: 32, offset: 416)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1911, file: !140, line: 323, baseType: !1615, size: 512, align: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !140, line: 325, baseType: !1941, size: 512, offset: 512)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !140, line: 325, size: 512, elements: !1942)
!1942 = !{!1943, !1953}
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !140, line: 326, baseType: !1944, size: 320)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !140, line: 326, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1944, file: !140, line: 327, baseType: !48, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1944, file: !140, line: 328, baseType: !48, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1944, file: !140, line: 329, baseType: !48, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1944, file: !140, line: 331, baseType: !58, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1944, file: !140, line: 332, baseType: !58, size: 32, offset: 224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1944, file: !140, line: 333, baseType: !58, size: 32, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1944, file: !140, line: 335, baseType: !17, size: 32, offset: 288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1941, file: !140, line: 339, baseType: !1615, size: 512, align: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !140, line: 341, baseType: !1955, size: 512, offset: 1024)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !140, line: 341, size: 512, elements: !1956)
!1956 = !{!1957, !1966, !1972}
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !140, line: 342, baseType: !1958, size: 384)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !140, line: 342, size: 384, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1958, file: !140, line: 343, baseType: !48, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1958, file: !140, line: 344, baseType: !48, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1958, file: !140, line: 346, baseType: !29, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1958, file: !140, line: 347, baseType: !29, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1958, file: !140, line: 348, baseType: !29, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1958, file: !140, line: 349, baseType: !29, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !140, line: 352, baseType: !1967, size: 256)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !140, line: 352, size: 256, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1967, file: !140, line: 353, baseType: !48, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1967, file: !140, line: 354, baseType: !48, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1967, file: !140, line: 356, baseType: !106, size: 128, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1955, file: !140, line: 359, baseType: !1615, size: 512, align: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1608, file: !248, line: 409, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!31, !1594, !1901}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1608, file: !248, line: 412, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!875, !1594, !1907}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1608, file: !248, line: 414, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !248, line: 310, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1608, file: !248, line: 416, baseType: !1988, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!31, !690, !1594, !50, !17, !1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1608, file: !248, line: 419, baseType: !1994, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!31, !690, !1594, !50, !17, !17, !1614, !29}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1608, file: !248, line: 424, baseType: !1998, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!2001, !1594, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !34, line: 131, baseType: !420)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1608, file: !248, line: 425, baseType: !2003, size: 64, offset: 512)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !1907, !44, !44}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1608, file: !248, line: 426, baseType: !2007, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!875, !1907, !800}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1608, file: !248, line: 427, baseType: !2011, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !1907}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1608, file: !248, line: 428, baseType: !2015, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1395, !2018, !2040}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !248, line: 373, size: 384, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2027, !2028, !2029, !2030}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2019, file: !248, line: 374, baseType: !690, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2019, file: !248, line: 375, baseType: !50, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2019, file: !248, line: 376, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2018, !358}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2019, file: !248, line: 377, baseType: !29, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2019, file: !248, line: 378, baseType: !31, size: 32, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2019, file: !248, line: 379, baseType: !102, size: 16, offset: 288)
!2030 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !248, line: 380, baseType: !2031, size: 64, offset: 320)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !248, line: 380, size: 64, elements: !2032)
!2032 = !{!2033, !2036}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2031, file: !248, line: 386, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !248, line: 386, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2031, file: !248, line: 395, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1395, !29}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2042, line: 41, size: 320, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2054, !2087}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2041, file: !2042, line: 42, baseType: !92, size: 8)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2041, file: !2042, line: 43, baseType: !875, size: 8, offset: 8)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2041, file: !2042, line: 44, baseType: !875, size: 8, offset: 16)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2041, file: !2042, line: 45, baseType: !875, size: 8, offset: 24)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2041, file: !2042, line: 46, baseType: !875, size: 8, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2042, line: 47, baseType: !2050, size: 64, offset: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 47, size: 64, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2050, file: !2042, line: 48, baseType: !44, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2050, file: !2042, line: 49, baseType: !31, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2042, line: 61, baseType: !2055, size: 128, offset: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 61, size: 128, elements: !2056)
!2056 = !{!2057, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2055, file: !2042, line: 67, baseType: !2058, size: 128)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2059, line: 17, size: 128, elements: !2060)
!2059 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2058, file: !2059, line: 19, baseType: !29, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2058, file: !2059, line: 20, baseType: !45, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !2042, line: 68, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2042, line: 68, size: 128, elements: !2065)
!2065 = !{!2066, !2086}
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2042, line: 69, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2042, line: 69, size: 64, elements: !2068)
!2068 = !{!2069, !2072, !2079, !2083, !2085}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2067, file: !2042, line: 71, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2067, file: !2042, line: 72, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2042, line: 17, size: 128, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2075, file: !2042, line: 18, baseType: !29, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2075, file: !2042, line: 19, baseType: !44, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2067, file: !2042, line: 73, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2042, line: 73, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2067, file: !2042, line: 74, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2067, file: !2042, line: 75, baseType: !29, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2064, file: !2042, line: 77, baseType: !44, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !2042, line: 80, baseType: !2088, size: 64, offset: 256)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 80, size: 64, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2088, file: !2042, line: 81, baseType: !48, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2088, file: !2042, line: 82, baseType: !50, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1608, file: !248, line: 433, baseType: !2093, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!31, !1594, !1907, !1907, !155}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1608, file: !248, line: 435, baseType: !2097, size: 64, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!31, !1907}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1608, file: !248, line: 436, baseType: !2101, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!875, !1907, !44, !44}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1608, file: !248, line: 438, baseType: !2105, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !1907, !2108, !2108}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1608, file: !248, line: 439, baseType: !2110, size: 64, offset: 1024)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!31, !1594, !1614}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1608, file: !248, line: 442, baseType: !2114, size: 64, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!31, !2117, !690, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !248, line: 66, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1608, file: !248, line: 444, baseType: !2121, size: 64, offset: 1152)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !690}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1608, file: !248, line: 445, baseType: !2125, size: 64, offset: 1216)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!31, !2018, !2040}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1595, file: !248, line: 486, baseType: !48, size: 64, offset: 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1595, file: !248, line: 487, baseType: !895, size: 320, offset: 960)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1595, file: !248, line: 488, baseType: !2131, size: 32, offset: 1280)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2132, line: 8, baseType: !354)
!2132 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1595, file: !248, line: 489, baseType: !68, size: 32, offset: 1312)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1595, file: !248, line: 490, baseType: !106, size: 128, offset: 1344)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1595, file: !248, line: 491, baseType: !29, size: 64, offset: 1472)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1585, file: !1554, line: 180, baseType: !2137, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1395, !690, !1496, !1584, !345, !50, !44}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1585, file: !1554, line: 182, baseType: !2137, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1585, file: !1554, line: 184, baseType: !2142, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!31, !690, !1496, !1584, !1724}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1573, file: !1554, line: 90, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1573, file: !1554, line: 91, baseType: !2148, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1544, file: !1491, line: 120, baseType: !2150, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !1514}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !163, line: 39, size: 384, elements: !2156)
!2156 = !{!2157, !2158, !2162, !2166, !2174, !2178}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2155, file: !163, line: 40, baseType: !162, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2155, file: !163, line: 41, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!875}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2155, file: !163, line: 42, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!29}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2155, file: !163, line: 43, baseType: !2167, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2170, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !163, line: 19, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2155, file: !163, line: 44, baseType: !2175, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2170}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2155, file: !163, line: 45, baseType: !1274, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1544, file: !1491, line: 121, baseType: !2180, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2170, !1514}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1544, file: !1491, line: 122, baseType: !2184, size: 64, offset: 320)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !1514, !1065, !1066}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1490, file: !1491, line: 70, baseType: !2188, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2190, line: 190, size: 1152, elements: !2191)
!2190 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2322, !2323, !2324, !2325, !2326, !2329}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2189, file: !2190, line: 191, baseType: !58, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2189, file: !2190, line: 192, baseType: !58, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2189, file: !2190, line: 202, baseType: !2188, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2189, file: !2190, line: 203, baseType: !26, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2189, file: !2190, line: 205, baseType: !412, size: 192, align: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2189, file: !2190, line: 207, baseType: !2170, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2189, file: !2190, line: 208, baseType: !17, size: 32, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2190, line: 209, baseType: !2200, size: 256, offset: 512)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !2190, line: 209, size: 256, elements: !2201)
!2201 = !{!2202, !2211, !2215}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2200, file: !2190, line: 210, baseType: !2203, size: 256)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2190, line: 153, size: 256, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2210}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2203, file: !2190, line: 154, baseType: !48, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2203, file: !2190, line: 156, baseType: !551, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2203, file: !2190, line: 162, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2190, line: 162, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2203, file: !2190, line: 167, baseType: !48, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2200, file: !2190, line: 211, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2190, line: 170, size: 64, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2212, file: !2190, line: 171, baseType: !2188, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2200, file: !2190, line: 212, baseType: !2216, size: 256)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2190, line: 174, size: 256, elements: !2217)
!2217 = !{!2218, !2317, !2320, !2321}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2216, file: !2190, line: 175, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2190, line: 271, size: 768, elements: !2222)
!2222 = !{!2223, !2281, !2285, !2286, !2287, !2288, !2289, !2293, !2294, !2295, !2296, !2313}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2221, file: !2190, line: 276, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!31, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2190, line: 251, size: 1216, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2228, file: !2190, line: 253, baseType: !2188, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2228, file: !2190, line: 254, baseType: !690, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2228, file: !2190, line: 255, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2235, line: 17, size: 960, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2266, !2267, !2270}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2234, file: !2235, line: 18, baseType: !345, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2234, file: !2235, line: 19, baseType: !44, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2234, file: !2235, line: 20, baseType: !44, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !2235, line: 21, baseType: !44, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2234, file: !2235, line: 22, baseType: !44, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2234, file: !2235, line: 23, baseType: !50, size: 64, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2234, file: !2235, line: 24, baseType: !50, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2234, file: !2235, line: 25, baseType: !718, size: 256, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2234, file: !2235, line: 26, baseType: !2246, size: 64, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2235, line: 32, size: 256, elements: !2249)
!2249 = !{!2250, !2254, !2258, !2262}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2248, file: !2235, line: 33, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!29, !2233, !49}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2248, file: !2235, line: 34, baseType: !2255, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2233, !29}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2248, file: !2235, line: 35, baseType: !2259, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!29, !2233, !29, !49}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2248, file: !2235, line: 36, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!31, !2233, !29}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2234, file: !2235, line: 27, baseType: !31, size: 32, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2234, file: !2235, line: 28, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2234, file: !2235, line: 29, baseType: !29, size: 64, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2228, file: !2190, line: 256, baseType: !29, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2228, file: !2190, line: 259, baseType: !718, size: 256, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2228, file: !2190, line: 260, baseType: !718, size: 256, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2228, file: !2190, line: 261, baseType: !31, size: 32, offset: 768)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2228, file: !2190, line: 262, baseType: !106, size: 128, offset: 832)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2228, file: !2190, line: 263, baseType: !345, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2228, file: !2190, line: 265, baseType: !44, size: 64, offset: 1024)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2228, file: !2190, line: 266, baseType: !875, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2228, file: !2190, line: 267, baseType: !875, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2228, file: !2190, line: 268, baseType: !1769, size: 64, offset: 1152)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2221, file: !2190, line: 277, baseType: !2282, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2227}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2221, file: !2190, line: 290, baseType: !2263, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2221, file: !2190, line: 292, baseType: !2251, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2221, file: !2190, line: 293, baseType: !2259, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2221, file: !2190, line: 294, baseType: !2255, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2221, file: !2190, line: 296, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!1395, !2227, !345, !44, !50}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2221, file: !2190, line: 306, baseType: !44, size: 64, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2221, file: !2190, line: 313, baseType: !875, size: 8, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2221, file: !2190, line: 314, baseType: !2290, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2221, file: !2190, line: 317, baseType: !2297, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2300, !2227, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2301, line: 59, baseType: !17)
!2301 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2304, line: 37, size: 128, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2305 = !{!2306, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2303, file: !2304, line: 38, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2304, line: 31, baseType: !2308)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !690, !2311, !2302}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2303, file: !2304, line: 39, baseType: !2300, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2221, file: !2190, line: 320, baseType: !2314, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!31, !2227, !1724}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2216, file: !2190, line: 176, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2190, line: 35, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2216, file: !2190, line: 177, baseType: !50, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2216, file: !2190, line: 178, baseType: !2188, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2189, file: !2190, line: 215, baseType: !29, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2189, file: !2190, line: 221, baseType: !420, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2190, line: 223, baseType: !35, size: 16, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2189, file: !2190, line: 224, baseType: !33, size: 16, offset: 912)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2189, file: !2190, line: 225, baseType: !2327, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2190, line: 36, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2189, file: !2190, line: 227, baseType: !698, size: 128, align: 64, offset: 1024)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1490, file: !1491, line: 71, baseType: !2331, size: 32, offset: 448)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2332, line: 19, size: 32, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2331, file: !2332, line: 20, baseType: !368, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1490, file: !1491, line: 73, baseType: !17, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1490, file: !1491, line: 74, baseType: !17, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1490, file: !1491, line: 75, baseType: !17, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1490, file: !1491, line: 76, baseType: !17, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1490, file: !1491, line: 77, baseType: !17, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1487, file: !125, line: 47, baseType: !1477, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1487, file: !125, line: 48, baseType: !1496, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1487, file: !125, line: 49, baseType: !2343, size: 64, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !125, line: 49, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1487, file: !125, line: 50, baseType: !1039, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1478, file: !125, line: 418, baseType: !2347, size: 64, offset: 1408)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !125, line: 53, size: 448, elements: !2349)
!2349 = !{!2350, !2351, !2356, !2360, !2364, !2368}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2348, file: !125, line: 54, baseType: !1561, size: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2348, file: !125, line: 55, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!1395, !2347, !2355, !345}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2348, file: !125, line: 57, baseType: !2357, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!1395, !2347, !2355, !26, !44}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2348, file: !125, line: 59, baseType: !2361, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !1477, !26}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2348, file: !125, line: 60, baseType: !2365, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!31, !1477}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2348, file: !125, line: 61, baseType: !2369, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !1477}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1478, file: !125, line: 419, baseType: !26, size: 64, offset: 1472)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1478, file: !125, line: 420, baseType: !26, size: 64, offset: 1536)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1478, file: !125, line: 421, baseType: !1496, size: 64, offset: 1600)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1478, file: !125, line: 424, baseType: !2376, size: 64, offset: 1664)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !125, line: 424, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1478, file: !125, line: 425, baseType: !2380, size: 64, offset: 1728)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1478, file: !125, line: 426, baseType: !17, size: 32, offset: 1792)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1478, file: !125, line: 435, baseType: !718, size: 256, offset: 1856)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1478, file: !125, line: 437, baseType: !2385, size: 64, offset: 2112)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2387, line: 69, size: 320, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2388 = !{!2389, !2390, !2391, !2408, !2410, !2414, !2415}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2386, file: !2387, line: 70, baseType: !26, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2386, file: !2387, line: 71, baseType: !1477, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2386, file: !2387, line: 72, baseType: !2392, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2387, line: 47, size: 256, elements: !2395)
!2395 = !{!2396, !2397, !2403, !2407}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2394, file: !2387, line: 49, baseType: !17, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2394, file: !2387, line: 51, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!31, !26, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2386)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2394, file: !2387, line: 53, baseType: !2404, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!31, !345, !2401}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2394, file: !2387, line: 55, baseType: !1274, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2386, file: !2387, line: 73, baseType: !2409, size: 16, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2386, file: !2387, line: 74, baseType: !2411, size: 8, offset: 208)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !93, line: 16, baseType: !2412)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !95, line: 20, baseType: !2413)
!2413 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !2387, line: 75, baseType: !92, size: 8, offset: 216)
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2387, line: 76, baseType: !2416, size: 64, offset: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2386, file: !2387, line: 76, size: 64, elements: !2417)
!2417 = !{!2418, !2419, !2426}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2416, file: !2387, line: 77, baseType: !29, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2416, file: !2387, line: 78, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2387, line: 86, size: 128, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2422, file: !2387, line: 87, baseType: !17, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2422, file: !2387, line: 88, baseType: !345, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2416, file: !2387, line: 79, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2387, line: 92, size: 256, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2435, !2436}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2429, file: !2387, line: 94, baseType: !17, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2429, file: !2387, line: 95, baseType: !17, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2429, file: !2387, line: 96, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2429, file: !2387, line: 97, baseType: !2392, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2429, file: !2387, line: 98, baseType: !29, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1478, file: !125, line: 438, baseType: !17, size: 32, offset: 2176)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1478, file: !125, line: 441, baseType: !17, size: 32, offset: 2208)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1478, file: !125, line: 442, baseType: !2376, size: 64, offset: 2240)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1478, file: !125, line: 443, baseType: !2380, size: 64, offset: 2304)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1478, file: !125, line: 444, baseType: !875, size: 8, offset: 2368)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1478, file: !125, line: 451, baseType: !875, size: 8, offset: 2376)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1478, file: !125, line: 454, baseType: !17, size: 32, offset: 2400)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1478, file: !125, line: 455, baseType: !2445, size: 64, offset: 2432)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2447, line: 23, size: 96, elements: !2448)
!2447 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2446, file: !2447, line: 24, baseType: !31, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2446, file: !2447, line: 24, baseType: !31, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2446, file: !2447, line: 24, baseType: !31, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1478, file: !125, line: 458, baseType: !2453, size: 64, offset: 2496)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!31}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1478, file: !125, line: 460, baseType: !2457, size: 4032, align: 512, offset: 2560)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 4032, elements: !2474)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !125, line: 362, size: 576, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2458, file: !125, line: 363, baseType: !29, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2458, file: !125, line: 364, baseType: !17, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2458, file: !125, line: 367, baseType: !2463, size: 448, offset: 128)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !125, line: 319, size: 448, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2463, file: !125, line: 320, baseType: !1477, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2463, file: !125, line: 321, baseType: !2467, size: 384, offset: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2468, line: 40, size: 384, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2467, file: !2468, line: 41, baseType: !2471, size: 384, align: 64)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, align: 64, elements: !2472)
!2472 = !{!2473}
!2473 = !DISubrange(count: 2)
!2474 = !{!2475}
!2475 = !DISubrange(count: 7)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1478, file: !125, line: 463, baseType: !2477, size: 192, offset: 6592)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2478, line: 8, size: 192, elements: !2479)
!2478 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2479 = !{!2480, !2481, !2483}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2477, file: !2478, line: 10, baseType: !17, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2477, file: !2478, line: 11, baseType: !2482, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2477, file: !2478, line: 12, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2486, line: 59, size: 48, elements: !2487)
!2486 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2487 = !{!2488, !2491, !2492, !2493, !2494, !2495}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2485, file: !2486, line: 60, baseType: !2489, size: 16)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !93, line: 18, baseType: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !95, line: 23, baseType: !923)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2485, file: !2486, line: 61, baseType: !2489, size: 16, offset: 16)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2485, file: !2486, line: 63, baseType: !17, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2485, file: !2486, line: 64, baseType: !17, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2485, file: !2486, line: 65, baseType: !17, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2485, file: !2486, line: 66, baseType: !17, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1478, file: !125, line: 465, baseType: !48, size: 64, offset: 6784)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1478, file: !125, line: 469, baseType: !17, size: 32, offset: 6848)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1478, file: !125, line: 470, baseType: !106, size: 128, offset: 6912)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1478, file: !125, line: 471, baseType: !2500, size: 64, offset: 7040)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2502, line: 33, size: 96, elements: !2503)
!2502 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2501, file: !2502, line: 37, baseType: !31, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2501, file: !2502, line: 43, baseType: !31, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2501, file: !2502, line: 45, baseType: !35, size: 16, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2501, file: !2502, line: 47, baseType: !35, size: 16, offset: 80)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1478, file: !125, line: 476, baseType: !2509, size: 64, offset: 7104)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !125, line: 378, size: 256, elements: !2511)
!2511 = !{!2512, !2528, !2529, !2530}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2510, file: !125, line: 379, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2515, line: 204, baseType: !2516)
!2515 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2515, line: 197, size: 192, elements: !2517)
!2517 = !{!2518, !2520, !2521, !2522, !2524, !2526}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2516, file: !2515, line: 198, baseType: !2519, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2515, line: 21, baseType: !355)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2516, file: !2515, line: 199, baseType: !96, size: 8, offset: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2516, file: !2515, line: 200, baseType: !96, size: 8, offset: 40)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2516, file: !2515, line: 201, baseType: !2523, size: 16, offset: 48)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2515, line: 17, baseType: !103)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2516, file: !2515, line: 202, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2515, line: 16, baseType: !304)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2516, file: !2515, line: 203, baseType: !2527, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2515, line: 22, baseType: !304)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2510, file: !125, line: 380, baseType: !17, size: 32, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2510, file: !125, line: 381, baseType: !345, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2510, file: !125, line: 382, baseType: !345, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1478, file: !125, line: 477, baseType: !2510, size: 256, offset: 7168)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1478, file: !125, line: 480, baseType: !2533, size: 64, offset: 7424)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !125, line: 480, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1478, file: !125, line: 483, baseType: !2536, size: 64, offset: 7488)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !125, line: 483, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1478, file: !125, line: 488, baseType: !345, size: 64, offset: 7552)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1478, file: !125, line: 492, baseType: !29, size: 64, offset: 7616)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1478, file: !125, line: 493, baseType: !17, size: 32, offset: 7680)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1478, file: !125, line: 495, baseType: !29, size: 64, offset: 7744)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1478, file: !125, line: 496, baseType: !17, size: 32, offset: 7808)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1478, file: !125, line: 499, baseType: !17, size: 32, offset: 7840)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1478, file: !125, line: 500, baseType: !2545, size: 64, offset: 7872)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2547, line: 45, baseType: !2548)
!2547 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1478, file: !125, line: 503, baseType: !17, size: 32, offset: 7936)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1478, file: !125, line: 504, baseType: !2551, size: 64, offset: 8000)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2554, line: 96, size: 192, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2555 = !{!2556, !2557, !2610, !2613}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2553, file: !2554, line: 97, baseType: !17, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2553, file: !2554, line: 98, baseType: !2558, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2554, line: 24, size: 3072, elements: !2560)
!2560 = !{!2561, !2563, !2564, !2565, !2566, !2579, !2580, !2581, !2582, !2594, !2595, !2596, !2607, !2608, !2609}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2559, file: !2554, line: 26, baseType: !2562, size: 128)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 128, elements: !2472)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2559, file: !2554, line: 27, baseType: !2562, size: 128, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2559, file: !2554, line: 28, baseType: !31, size: 32, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2559, file: !2554, line: 31, baseType: !68, size: 32, align: 512, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2559, file: !2554, line: 32, baseType: !2567, size: 960, offset: 576)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2568, line: 206, size: 960, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2569 = !{!2570, !2571, !2574, !2576, !2577, !2578}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2567, file: !2568, line: 207, baseType: !701, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2567, file: !2568, line: 208, baseType: !2572, size: 256, offset: 64)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2573, size: 256, elements: !775)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2567, file: !2568, line: 209, baseType: !2575, size: 256, offset: 320)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !775)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2567, file: !2568, line: 213, baseType: !358, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2567, file: !2568, line: 215, baseType: !1100, size: 256, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2568, line: 216, baseType: !92, size: 8, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2559, file: !2554, line: 33, baseType: !48, size: 64, offset: 1536)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2559, file: !2554, line: 34, baseType: !48, size: 64, offset: 1600)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2559, file: !2554, line: 35, baseType: !875, size: 8, offset: 1664)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2559, file: !2554, line: 36, baseType: !2583, size: 320, offset: 1728)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2584, line: 11, size: 320, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2585 = !{!2586, !2587, !2588, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2583, file: !2584, line: 16, baseType: !770, size: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2583, file: !2584, line: 17, baseType: !48, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2583, file: !2584, line: 18, baseType: !2589, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !2584, line: 19, baseType: !354, size: 32, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2559, file: !2554, line: 37, baseType: !1001, size: 256, offset: 2048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2559, file: !2554, line: 38, baseType: !698, size: 128, align: 64, offset: 2304)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2559, file: !2554, line: 39, baseType: !2597, size: 64, offset: 2432)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2554, line: 49, size: 768, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2598, file: !2554, line: 50, baseType: !68, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2598, file: !2554, line: 51, baseType: !2575, size: 256, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2598, file: !2554, line: 53, baseType: !2575, size: 256, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2598, file: !2554, line: 54, baseType: !48, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2598, file: !2554, line: 55, baseType: !2597, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2598, file: !2554, line: 56, baseType: !31, size: 32, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2598, file: !2554, line: 57, baseType: !31, size: 32, offset: 736)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2559, file: !2554, line: 40, baseType: !48, size: 64, offset: 2496)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2559, file: !2554, line: 42, baseType: !31, size: 32, offset: 2560)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2559, file: !2554, line: 43, baseType: !2552, size: 64, offset: 2624)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2553, file: !2554, line: 99, baseType: !2611, offset: 128)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2612, line: 211, elements: !683)
!2612 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2553, file: !2554, line: 100, baseType: !2614, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2554, line: 63, size: 3008, elements: !2616)
!2616 = !{!2617, !2618, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2648}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2615, file: !2554, line: 64, baseType: !2597, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2615, file: !2554, line: 65, baseType: !2619, size: 192, offset: 64)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2597, size: 192, elements: !754)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2615, file: !2554, line: 67, baseType: !31, size: 32, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2615, file: !2554, line: 68, baseType: !718, size: 256, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2615, file: !2554, line: 69, baseType: !68, size: 32, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2615, file: !2554, line: 70, baseType: !718, size: 256, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2615, file: !2554, line: 71, baseType: !48, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2615, file: !2554, line: 72, baseType: !48, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2615, file: !2554, line: 73, baseType: !48, size: 64, offset: 1024)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2615, file: !2554, line: 74, baseType: !48, size: 64, offset: 1088)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2615, file: !2554, line: 75, baseType: !48, size: 64, offset: 1152)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2615, file: !2554, line: 76, baseType: !48, size: 64, offset: 1216)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2615, file: !2554, line: 77, baseType: !48, size: 64, offset: 1280)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2615, file: !2554, line: 78, baseType: !48, size: 64, offset: 1344)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2615, file: !2554, line: 79, baseType: !875, size: 8, offset: 1408)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2615, file: !2554, line: 80, baseType: !48, size: 64, offset: 1472)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2615, file: !2554, line: 81, baseType: !718, size: 256, offset: 1536)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2615, file: !2554, line: 82, baseType: !1040, size: 256, offset: 1792)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2615, file: !2554, line: 84, baseType: !58, size: 32, offset: 2048)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2615, file: !2554, line: 87, baseType: !48, size: 64, offset: 2112)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2615, file: !2554, line: 88, baseType: !48, size: 64, offset: 2176)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2615, file: !2554, line: 89, baseType: !2640, size: 704, offset: 2240)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1002, line: 111, size: 704, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2647}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2640, file: !1002, line: 112, baseType: !1001, size: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2640, file: !1002, line: 113, baseType: !2583, size: 320, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2640, file: !1002, line: 116, baseType: !2645, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1002, line: 18, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2640, file: !1002, line: 117, baseType: !31, size: 32, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2615, file: !2554, line: 90, baseType: !2552, size: 64, offset: 2944)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1478, file: !125, line: 515, baseType: !2650, size: 64, offset: 8064)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2652, line: 117, size: 128, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2651, file: !2652, line: 118, baseType: !887, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2651, file: !2652, line: 119, baseType: !887, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2651, file: !2652, line: 120, baseType: !358, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1478, file: !125, line: 516, baseType: !17, size: 32, offset: 8128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1478, file: !125, line: 519, baseType: !17, size: 32, offset: 8160)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1478, file: !125, line: 520, baseType: !2660, size: 64, offset: 8192)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1478, file: !125, line: 523, baseType: !2662, size: 64, offset: 8256)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !169, line: 372, size: 1024, elements: !2665)
!2665 = !{!2666, !2667, !2707, !2767, !2848, !2849, !2852, !2857, !2858, !2859, !2860, !2862, !2865}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2664, file: !169, line: 373, baseType: !106, size: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2664, file: !169, line: 374, baseType: !2668, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !169, line: 291, size: 576, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2678, !2701, !2705, !2706}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2669, file: !169, line: 292, baseType: !26, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2669, file: !169, line: 293, baseType: !29, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2669, file: !169, line: 295, baseType: !29, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2669, file: !169, line: 297, baseType: !2675, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!31, !2663, !168, !29}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2669, file: !169, line: 299, baseType: !2679, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !169, line: 275, size: 320, elements: !2681)
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2680, file: !169, line: 276, baseType: !26, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !169, line: 277, baseType: !2684, size: 256, offset: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2680, file: !169, line: 277, size: 256, elements: !2685)
!2685 = !{!2686, !2697}
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2684, file: !169, line: 278, baseType: !2687, size: 256)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2684, file: !169, line: 278, size: 256, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2694, !2695, !2696}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2687, file: !169, line: 279, baseType: !26, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2687, file: !169, line: 280, baseType: !2548, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2687, file: !169, line: 281, baseType: !2548, size: 32, offset: 96)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2687, file: !169, line: 282, baseType: !2693, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2687, file: !169, line: 283, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2687, file: !169, line: 284, baseType: !2548, size: 32, offset: 160)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2687, file: !169, line: 285, baseType: !2548, size: 32, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2684, file: !169, line: 287, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!31, !2663}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2669, file: !169, line: 300, baseType: !2702, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!109, !2663}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2669, file: !169, line: 301, baseType: !106, size: 128, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2669, file: !169, line: 302, baseType: !2698, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !169, line: 375, baseType: !2708, size: 64, offset: 192)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2664, file: !169, line: 375, size: 64, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2708, file: !169, line: 376, baseType: !26, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2708, file: !169, line: 378, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2547, line: 32, size: 640, elements: !2714)
!2714 = !{!2715, !2716, !2728, !2752, !2753, !2754, !2755, !2756, !2760}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2713, file: !2547, line: 33, baseType: !26, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2713, file: !2547, line: 34, baseType: !2717, size: 128, offset: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2652, line: 85, size: 128, elements: !2718)
!2718 = !{!2719, !2720}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2717, file: !2652, line: 86, baseType: !58, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !2652, line: 101, baseType: !2721, size: 64, offset: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2717, file: !2652, line: 101, size: 64, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2721, file: !2652, line: 102, baseType: !48, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2721, file: !2652, line: 103, baseType: !2650, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2721, file: !2652, line: 104, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2652, line: 104, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2713, file: !2547, line: 35, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2731, line: 61, size: 128, elements: !2732)
!2731 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2730, file: !2731, line: 62, baseType: !29, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !2731, line: 63, baseType: !2735, size: 64, offset: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !2731, line: 63, size: 64, elements: !2736)
!2736 = !{!2737, !2738, !2751}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2735, file: !2731, line: 65, baseType: !48, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2735, file: !2731, line: 66, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2741, line: 169, size: 192, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2742 = !{!2743, !2744, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2740, file: !2741, line: 170, baseType: !2739, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2740, file: !2741, line: 171, baseType: !1477, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2740, file: !2741, line: 172, baseType: !2746, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2731, line: 32, size: 64, elements: !2748)
!2748 = !{!2749, !2750}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2747, file: !2731, line: 33, baseType: !887, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2747, file: !2731, line: 34, baseType: !887, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2735, file: !2731, line: 67, baseType: !2746, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2713, file: !2547, line: 36, baseType: !29, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2713, file: !2547, line: 37, baseType: !29, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2713, file: !2547, line: 38, baseType: !29, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2713, file: !2547, line: 39, baseType: !2453, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2713, file: !2547, line: 40, baseType: !2757, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2713, file: !2547, line: 41, baseType: !2761, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2547, line: 26, size: 192, elements: !2763)
!2763 = !{!2764, !2765, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2762, file: !2547, line: 27, baseType: !29, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2762, file: !2547, line: 28, baseType: !29, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2762, file: !2547, line: 29, baseType: !31, size: 32, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2664, file: !169, line: 380, baseType: !2768, size: 256, offset: 256)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !169, line: 148, size: 256, elements: !2769)
!2769 = !{!2770, !2771, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2768, file: !169, line: 149, baseType: !770, size: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2768, file: !169, line: 150, baseType: !31, size: 32, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2768, file: !169, line: 151, baseType: !2773, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !169, line: 141, size: 256, elements: !2775)
!2775 = !{!2776, !2845, !2846, !2847}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2774, file: !169, line: 142, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !169, line: 138, baseType: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!179, !2781, !31, !2844}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !169, line: 93, size: 67776, elements: !2783)
!2783 = !{!2784, !2787, !2790, !2793, !2794, !2795, !2796, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2824, !2827, !2828, !2829, !2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2782, file: !169, line: 94, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !169, line: 13, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2782, file: !169, line: 95, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !169, line: 15, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2782, file: !169, line: 96, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !169, line: 14, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2782, file: !169, line: 97, baseType: !29, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2782, file: !169, line: 98, baseType: !31, size: 32, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2782, file: !169, line: 99, baseType: !718, size: 256, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2782, file: !169, line: 100, baseType: !2797, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2800, line: 10, flags: DIFlagFwdDecl)
!2800 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2782, file: !169, line: 101, baseType: !48, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2782, file: !169, line: 102, baseType: !29, size: 64, offset: 704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2782, file: !169, line: 103, baseType: !17, size: 32, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2782, file: !169, line: 104, baseType: !345, size: 64, offset: 832)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2782, file: !169, line: 105, baseType: !17, size: 32, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2782, file: !169, line: 106, baseType: !358, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2782, file: !169, line: 109, baseType: !2808, size: 33088, offset: 1024)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2809, line: 14, size: 33088, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2810 = !{!2811, !2815, !2822, !2823}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2808, file: !2809, line: 15, baseType: !2812, size: 32768)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2813)
!2813 = !{!2814}
!2814 = !DISubrange(count: 4096)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2808, file: !2809, line: 16, baseType: !2816, size: 192, offset: 32768)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2817, line: 18, size: 192, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2818 = !{!2819, !2820, !2821}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2816, file: !2817, line: 19, baseType: !345, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2816, file: !2817, line: 20, baseType: !44, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2816, file: !2817, line: 21, baseType: !44, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2808, file: !2809, line: 17, baseType: !44, size: 64, offset: 32960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2808, file: !2809, line: 18, baseType: !31, size: 32, offset: 33024)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2782, file: !169, line: 111, baseType: !2825, size: 64, offset: 34112)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !612, line: 913, baseType: !2826)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 64, elements: !343)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2782, file: !169, line: 114, baseType: !875, size: 8, offset: 34176)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2782, file: !169, line: 117, baseType: !2808, size: 33088, offset: 34240)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2782, file: !169, line: 118, baseType: !2830, size: 64, offset: 67328)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !169, line: 79, size: 64, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2831, file: !169, line: 80, baseType: !35, size: 16)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !169, line: 81, baseType: !96, size: 8, offset: 16)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2831, file: !169, line: 82, baseType: !96, size: 8, offset: 24)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2831, file: !169, line: 83, baseType: !31, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2782, file: !169, line: 119, baseType: !48, size: 64, offset: 67392)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2782, file: !169, line: 120, baseType: !31, size: 32, offset: 67456)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2782, file: !169, line: 121, baseType: !31, size: 32, offset: 67488)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2782, file: !169, line: 122, baseType: !31, size: 32, offset: 67520)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2782, file: !169, line: 123, baseType: !420, size: 64, offset: 67584)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2782, file: !169, line: 125, baseType: !50, size: 64, offset: 67648)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2782, file: !169, line: 126, baseType: !358, size: 64, offset: 67712)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2774, file: !169, line: 143, baseType: !2777, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2774, file: !169, line: 144, baseType: !2777, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2774, file: !169, line: 145, baseType: !2777, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2664, file: !169, line: 381, baseType: !345, size: 64, offset: 512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2664, file: !169, line: 382, baseType: !2850, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !239, line: 821, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !169, line: 387, baseType: !2853, size: 64, offset: 640)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2664, file: !169, line: 387, size: 64, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2853, file: !169, line: 388, baseType: !29, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2853, file: !169, line: 389, baseType: !58, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2664, file: !169, line: 391, baseType: !29, size: 64, offset: 704)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !169, line: 394, baseType: !31, size: 32, offset: 768)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2664, file: !169, line: 397, baseType: !31, size: 32, offset: 800)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2664, file: !169, line: 398, baseType: !2861, size: 64, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2664, file: !169, line: 399, baseType: !2863, size: 64, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !169, line: 399, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2664, file: !169, line: 401, baseType: !2866, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!31, !2663, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !239, line: 671, size: 8512, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !3404, !3405, !3406, !3407, !3413, !3414, !3415, !3416, !3417, !3501, !3502, !3503, !3504, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3624, !3625, !3626, !3627, !3628, !3629, !3644, !3645, !3646, !3647, !3648, !3654, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3671, !3842, !3843, !3844, !3845, !4115, !4116, !4117}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2870, file: !239, line: 678, baseType: !106, size: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2870, file: !239, line: 684, baseType: !106, size: 128, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2870, file: !239, line: 685, baseType: !106, size: 128, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2870, file: !239, line: 689, baseType: !412, size: 192, align: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2870, file: !239, line: 690, baseType: !420, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2870, file: !239, line: 696, baseType: !106, size: 128, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2870, file: !239, line: 698, baseType: !770, size: 128, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2870, file: !239, line: 699, baseType: !106, size: 128, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2870, file: !239, line: 700, baseType: !31, size: 32, offset: 1024)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2870, file: !239, line: 703, baseType: !31, size: 32, offset: 1056)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2870, file: !239, line: 705, baseType: !31, size: 32, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2870, file: !239, line: 707, baseType: !17, size: 32, offset: 1120)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2870, file: !239, line: 708, baseType: !2869, size: 64, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2870, file: !239, line: 714, baseType: !2886, size: 64, offset: 1216)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !239, line: 302, size: 2432, elements: !2888)
!2888 = !{!2889, !2890, !2891, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3314, !3315, !3316, !3317, !3318, !3322, !3323, !3327, !3331, !3332, !3336, !3340, !3341, !3342, !3346, !3350, !3354, !3355, !3356, !3360, !3361, !3365, !3369, !3370, !3390, !3394, !3395, !3396, !3400}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2887, file: !239, line: 303, baseType: !106, size: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2887, file: !239, line: 305, baseType: !1477, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2887, file: !239, line: 306, baseType: !2892, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !192, line: 705, size: 5824, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2900, !2901, !2954, !3024, !3025, !3026, !3027, !3028, !3035, !3127, !3140, !3150, !3154, !3156, !3157, !3158, !3162, !3169, !3170, !3173, !3176, !3180, !3183, !3184, !3185, !3186, !3187, !3188, !3218, !3219, !3220, !3223, !3226, !3235, !3236, !3237, !3238, !3239, !3240}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2893, file: !192, line: 706, baseType: !1490, size: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2893, file: !192, line: 707, baseType: !2892, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2893, file: !192, line: 709, baseType: !2898, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !192, line: 37, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2893, file: !192, line: 711, baseType: !26, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2893, file: !192, line: 712, baseType: !2902, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !192, line: 89, size: 384, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2914, !2919, !2923}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2904, file: !192, line: 90, baseType: !26, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2904, file: !192, line: 91, baseType: !1570, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2904, file: !192, line: 92, baseType: !2909, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!31, !2912, !1526}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2904, file: !192, line: 93, baseType: !2915, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!345, !2912, !2918, !1065, !1066}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2904, file: !192, line: 95, baseType: !2920, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2892}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2904, file: !192, line: 97, baseType: !2924, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !199, line: 286, size: 1472, elements: !2927)
!2927 = !{!2928, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2926, file: !199, line: 287, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!31, !2892}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2926, file: !199, line: 288, baseType: !2920, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2926, file: !199, line: 289, baseType: !2929, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2926, file: !199, line: 290, baseType: !2929, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2926, file: !199, line: 291, baseType: !2929, size: 64, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2926, file: !199, line: 292, baseType: !2929, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2926, file: !199, line: 293, baseType: !2929, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2926, file: !199, line: 294, baseType: !2929, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2926, file: !199, line: 295, baseType: !2929, size: 64, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2926, file: !199, line: 296, baseType: !2929, size: 64, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2926, file: !199, line: 297, baseType: !2929, size: 64, offset: 640)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2926, file: !199, line: 298, baseType: !2929, size: 64, offset: 704)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2926, file: !199, line: 299, baseType: !2929, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2926, file: !199, line: 300, baseType: !2929, size: 64, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2926, file: !199, line: 301, baseType: !2929, size: 64, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2926, file: !199, line: 302, baseType: !2929, size: 64, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2926, file: !199, line: 303, baseType: !2929, size: 64, offset: 1024)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2926, file: !199, line: 304, baseType: !2929, size: 64, offset: 1088)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2926, file: !199, line: 305, baseType: !2929, size: 64, offset: 1152)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2926, file: !199, line: 306, baseType: !2929, size: 64, offset: 1216)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2926, file: !199, line: 307, baseType: !2929, size: 64, offset: 1280)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2926, file: !199, line: 308, baseType: !2929, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2926, file: !199, line: 309, baseType: !2929, size: 64, offset: 1408)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2893, file: !192, line: 714, baseType: !2955, size: 64, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2958, line: 80, size: 1344, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3023}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2957, file: !2958, line: 81, baseType: !26, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2957, file: !2958, line: 82, baseType: !26, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2957, file: !2958, line: 83, baseType: !1570, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2957, file: !2958, line: 84, baseType: !1570, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2957, file: !2958, line: 85, baseType: !1570, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2957, file: !2958, line: 87, baseType: !2966, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!31, !2892, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !186, line: 96, size: 1152, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2982, !2986, !2987, !2988, !2989, !2990, !2998, !2999, !3000, !3001, !3002, !3003}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2970, file: !186, line: 97, baseType: !26, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2970, file: !186, line: 98, baseType: !2955, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2970, file: !186, line: 100, baseType: !1477, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2970, file: !186, line: 101, baseType: !26, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2970, file: !186, line: 103, baseType: !875, size: 8, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2970, file: !186, line: 104, baseType: !185, size: 32, offset: 288)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2970, file: !186, line: 106, baseType: !2979, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !186, line: 106, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2970, file: !186, line: 107, baseType: !2983, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !186, line: 107, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2970, file: !186, line: 109, baseType: !2929, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2970, file: !186, line: 110, baseType: !2920, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2970, file: !186, line: 111, baseType: !2929, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2970, file: !186, line: 112, baseType: !2920, size: 64, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2970, file: !186, line: 113, baseType: !2991, size: 64, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!31, !2892, !2994}
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !199, line: 60, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !199, line: 58, size: 32, elements: !2996)
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2995, file: !199, line: 59, baseType: !31, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2970, file: !186, line: 114, baseType: !2929, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2970, file: !186, line: 115, baseType: !1570, size: 64, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2970, file: !186, line: 116, baseType: !1570, size: 64, offset: 896)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2970, file: !186, line: 118, baseType: !2924, size: 64, offset: 960)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2970, file: !186, line: 119, baseType: !2920, size: 64, offset: 1024)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2970, file: !186, line: 121, baseType: !3004, size: 64, offset: 1088)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !186, line: 121, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2957, file: !2958, line: 88, baseType: !2909, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2957, file: !2958, line: 89, baseType: !2929, size: 64, offset: 448)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2957, file: !2958, line: 90, baseType: !2920, size: 64, offset: 512)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2957, file: !2958, line: 91, baseType: !2920, size: 64, offset: 576)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2957, file: !2958, line: 92, baseType: !2920, size: 64, offset: 640)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2957, file: !2958, line: 94, baseType: !2929, size: 64, offset: 704)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2957, file: !2958, line: 95, baseType: !2929, size: 64, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2957, file: !2958, line: 97, baseType: !2991, size: 64, offset: 832)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2957, file: !2958, line: 98, baseType: !2929, size: 64, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2957, file: !2958, line: 100, baseType: !2929, size: 64, offset: 960)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2957, file: !2958, line: 102, baseType: !2929, size: 64, offset: 1024)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2957, file: !2958, line: 103, baseType: !2920, size: 64, offset: 1088)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2957, file: !2958, line: 105, baseType: !2924, size: 64, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2957, file: !2958, line: 107, baseType: !3020, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3022)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2958, line: 107, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2957, file: !2958, line: 109, baseType: !875, size: 8, offset: 1280)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2893, file: !192, line: 715, baseType: !2969, size: 64, offset: 832)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2893, file: !192, line: 717, baseType: !29, size: 64, offset: 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2893, file: !192, line: 719, baseType: !29, size: 64, offset: 960)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2893, file: !192, line: 721, baseType: !718, size: 256, offset: 1024)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2893, file: !192, line: 725, baseType: !3029, size: 448, offset: 1280)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !192, line: 517, size: 448, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3029, file: !192, line: 518, baseType: !106, size: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3029, file: !192, line: 519, baseType: !106, size: 128, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3029, file: !192, line: 520, baseType: !106, size: 128, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3029, file: !192, line: 521, baseType: !191, size: 32, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2893, file: !192, line: 726, baseType: !3036, size: 2496, offset: 1728)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !199, line: 663, size: 2496, elements: !3037)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3120, !3124}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3036, file: !199, line: 664, baseType: !2994, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3036, file: !199, line: 665, baseType: !17, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3036, file: !199, line: 666, baseType: !17, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3036, file: !199, line: 667, baseType: !875, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3036, file: !199, line: 668, baseType: !875, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3036, file: !199, line: 669, baseType: !875, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3036, file: !199, line: 670, baseType: !875, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3036, file: !199, line: 671, baseType: !875, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3036, file: !199, line: 672, baseType: !875, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3036, file: !199, line: 673, baseType: !875, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3036, file: !199, line: 674, baseType: !875, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3036, file: !199, line: 675, baseType: !354, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3036, file: !199, line: 676, baseType: !68, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3036, file: !199, line: 678, baseType: !106, size: 128, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3036, file: !199, line: 679, baseType: !1040, size: 256, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3036, file: !199, line: 680, baseType: !3054, size: 64, offset: 512)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3056, line: 43, size: 1536, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3055, file: !3056, line: 44, baseType: !26, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3055, file: !3056, line: 45, baseType: !31, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3055, file: !3056, line: 46, baseType: !106, size: 128, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !3056, line: 47, baseType: !68, size: 32, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3055, file: !3056, line: 48, baseType: !3063, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !199, line: 629, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3055, file: !3056, line: 49, baseType: !2583, size: 320, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3055, file: !3056, line: 50, baseType: !48, size: 64, offset: 704)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3055, file: !3056, line: 51, baseType: !493, size: 64, offset: 768)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3055, file: !3056, line: 52, baseType: !493, size: 64, offset: 832)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3055, file: !3056, line: 53, baseType: !493, size: 64, offset: 896)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3055, file: !3056, line: 54, baseType: !493, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3055, file: !3056, line: 55, baseType: !493, size: 64, offset: 1024)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3055, file: !3056, line: 56, baseType: !48, size: 64, offset: 1088)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3055, file: !3056, line: 57, baseType: !48, size: 64, offset: 1152)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3055, file: !3056, line: 58, baseType: !48, size: 64, offset: 1216)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3055, file: !3056, line: 59, baseType: !48, size: 64, offset: 1280)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3055, file: !3056, line: 60, baseType: !48, size: 64, offset: 1344)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3055, file: !3056, line: 61, baseType: !2892, size: 64, offset: 1408)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3055, file: !3056, line: 62, baseType: !875, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3055, file: !3056, line: 63, baseType: !875, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3036, file: !199, line: 681, baseType: !875, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3036, file: !199, line: 682, baseType: !875, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3036, file: !199, line: 683, baseType: !875, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3036, file: !199, line: 684, baseType: !17, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3036, file: !199, line: 685, baseType: !17, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3036, file: !199, line: 690, baseType: !485, size: 512, offset: 640)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3036, file: !199, line: 691, baseType: !420, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3036, file: !199, line: 692, baseType: !1001, size: 256, offset: 1216)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3036, file: !199, line: 693, baseType: !63, size: 192, offset: 1472)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3036, file: !199, line: 694, baseType: !3063, size: 64, offset: 1664)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3036, file: !199, line: 695, baseType: !58, size: 32, offset: 1728)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3036, file: !199, line: 696, baseType: !58, size: 32, offset: 1760)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3036, file: !199, line: 697, baseType: !17, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3036, file: !199, line: 698, baseType: !17, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3036, file: !199, line: 699, baseType: !17, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3036, file: !199, line: 700, baseType: !17, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3036, file: !199, line: 701, baseType: !17, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3036, file: !199, line: 702, baseType: !17, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3036, file: !199, line: 703, baseType: !875, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3036, file: !199, line: 704, baseType: !17, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3036, file: !199, line: 705, baseType: !17, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3036, file: !199, line: 706, baseType: !17, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3036, file: !199, line: 707, baseType: !17, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3036, file: !199, line: 708, baseType: !17, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3036, file: !199, line: 709, baseType: !17, size: 32, offset: 1824)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3036, file: !199, line: 710, baseType: !198, size: 32, offset: 1856)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3036, file: !199, line: 711, baseType: !206, size: 32, offset: 1888)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3036, file: !199, line: 712, baseType: !206, size: 32, offset: 1920)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3036, file: !199, line: 713, baseType: !31, size: 32, offset: 1952)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3036, file: !199, line: 714, baseType: !31, size: 32, offset: 1984)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3036, file: !199, line: 715, baseType: !420, size: 64, offset: 2048)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3036, file: !199, line: 716, baseType: !420, size: 64, offset: 2112)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3036, file: !199, line: 717, baseType: !420, size: 64, offset: 2176)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3036, file: !199, line: 718, baseType: !420, size: 64, offset: 2240)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3036, file: !199, line: 720, baseType: !3115, size: 64, offset: 2304)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !199, line: 632, size: 64, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3116, file: !199, line: 633, baseType: !68, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3116, file: !199, line: 634, baseType: !17, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3036, file: !199, line: 721, baseType: !3121, size: 64, offset: 2368)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !2892, !887}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3036, file: !199, line: 722, baseType: !3125, size: 64, offset: 2432)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !199, line: 722, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2893, file: !192, line: 727, baseType: !3128, size: 64, offset: 4224)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !199, line: 742, size: 1792, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3137, !3138, !3139}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3129, file: !199, line: 743, baseType: !2926, size: 1472)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3129, file: !199, line: 744, baseType: !2929, size: 64, offset: 1472)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3129, file: !199, line: 745, baseType: !3134, size: 64, offset: 1536)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !2892, !875}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3129, file: !199, line: 746, baseType: !2929, size: 64, offset: 1600)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3129, file: !199, line: 747, baseType: !2920, size: 64, offset: 1664)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3129, file: !199, line: 748, baseType: !2920, size: 64, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2893, file: !192, line: 736, baseType: !3141, size: 128, offset: 4288)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !192, line: 529, size: 128, elements: !3142)
!3142 = !{!3143, !3147}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3141, file: !192, line: 531, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3146, line: 13, flags: DIFlagFwdDecl)
!3146 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3141, file: !192, line: 532, baseType: !3148, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !192, line: 49, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2893, file: !192, line: 738, baseType: !3151, size: 64, offset: 4416)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3153)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !192, line: 738, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2893, file: !192, line: 740, baseType: !3155, size: 64, offset: 4480)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2893, file: !192, line: 741, baseType: !420, size: 64, offset: 4544)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2893, file: !192, line: 746, baseType: !420, size: 64, offset: 4608)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2893, file: !192, line: 747, baseType: !3159, size: 64, offset: 4672)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !192, line: 747, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2893, file: !192, line: 749, baseType: !3163, size: 64, offset: 4736)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !192, line: 428, size: 128, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3164, file: !192, line: 433, baseType: !17, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3164, file: !192, line: 434, baseType: !17, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3164, file: !192, line: 435, baseType: !48, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2893, file: !192, line: 751, baseType: !106, size: 128, offset: 4800)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2893, file: !192, line: 762, baseType: !3171, size: 64, offset: 4928)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !192, line: 762, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2893, file: !192, line: 770, baseType: !3174, offset: 4992)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3175, line: 5, elements: !683)
!3175 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2893, file: !192, line: 772, baseType: !3177, size: 64, offset: 4992)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3179, line: 18, flags: DIFlagFwdDecl)
!3179 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2893, file: !192, line: 773, baseType: !3181, size: 64, offset: 5056)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2958, line: 22, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2893, file: !192, line: 776, baseType: !31, size: 32, offset: 5120)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2893, file: !192, line: 778, baseType: !1317, size: 32, offset: 5152)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2893, file: !192, line: 779, baseType: !354, size: 32, offset: 5184)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2893, file: !192, line: 781, baseType: !68, size: 32, offset: 5216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2893, file: !192, line: 782, baseType: !106, size: 128, offset: 5248)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2893, file: !192, line: 784, baseType: !3189, size: 64, offset: 5376)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3192, line: 52, size: 768, elements: !3193)
!3192 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3202, !3206, !3207, !3208, !3209, !3213, !3217}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3191, file: !3192, line: 53, baseType: !26, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3191, file: !3192, line: 55, baseType: !1570, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3191, file: !3192, line: 56, baseType: !1570, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3191, file: !3192, line: 58, baseType: !2909, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3191, file: !3192, line: 59, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!345, !2912, !2918}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3191, file: !3192, line: 61, baseType: !3203, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !3189}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3191, file: !3192, line: 62, baseType: !2920, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3191, file: !3192, line: 64, baseType: !2929, size: 64, offset: 448)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3191, file: !3192, line: 66, baseType: !2153, size: 64, offset: 512)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3191, file: !3192, line: 67, baseType: !3210, size: 64, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!2170, !2912}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3191, file: !3192, line: 69, baseType: !3214, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !2912, !1065, !1066}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3191, file: !3192, line: 71, baseType: !2924, size: 64, offset: 704)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2893, file: !192, line: 785, baseType: !1570, size: 64, offset: 5440)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2893, file: !192, line: 787, baseType: !2920, size: 64, offset: 5504)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2893, file: !192, line: 788, baseType: !3221, size: 64, offset: 5568)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !192, line: 46, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2893, file: !192, line: 789, baseType: !3224, size: 64, offset: 5632)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !192, line: 48, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2893, file: !192, line: 791, baseType: !3227, size: 64, offset: 5696)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !192, line: 597, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3228, file: !192, line: 598, baseType: !213, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3228, file: !192, line: 599, baseType: !222, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3228, file: !192, line: 600, baseType: !227, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3228, file: !192, line: 601, baseType: !875, size: 8, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3228, file: !192, line: 602, baseType: !875, size: 8, offset: 104)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2893, file: !192, line: 793, baseType: !232, size: 32, offset: 5760)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2893, file: !192, line: 795, baseType: !875, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2893, file: !192, line: 796, baseType: !875, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2893, file: !192, line: 797, baseType: !875, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2893, file: !192, line: 798, baseType: !875, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2893, file: !192, line: 799, baseType: !875, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2887, file: !239, line: 307, baseType: !2892, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2887, file: !239, line: 308, baseType: !1570, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2887, file: !239, line: 309, baseType: !1570, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2887, file: !239, line: 310, baseType: !26, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2887, file: !239, line: 311, baseType: !31, size: 32, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2887, file: !239, line: 316, baseType: !31, size: 32, offset: 544)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2887, file: !239, line: 318, baseType: !2482, size: 64, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2887, file: !239, line: 319, baseType: !3249, size: 64, offset: 640)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !239, line: 977, size: 1856, elements: !3251)
!3251 = !{!3252, !3304, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3250, file: !239, line: 978, baseType: !3253, size: 896)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !239, line: 873, size: 896, elements: !3254)
!3254 = !{!3255, !3256, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3253, file: !239, line: 874, baseType: !2886, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3253, file: !239, line: 875, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !239, line: 912, size: 1792, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3258, file: !239, line: 917, baseType: !510, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3258, file: !239, line: 923, baseType: !718, size: 256, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3258, file: !239, line: 925, baseType: !106, size: 128, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3258, file: !239, line: 926, baseType: !3264, size: 128, offset: 448)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !239, line: 901, size: 128, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3264, file: !239, line: 902, baseType: !551, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3264, file: !239, line: 903, baseType: !420, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3258, file: !239, line: 927, baseType: !3264, size: 128, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3258, file: !239, line: 928, baseType: !106, size: 128, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3258, file: !239, line: 930, baseType: !31, size: 32, offset: 832)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3258, file: !239, line: 931, baseType: !31, size: 32, offset: 864)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3258, file: !239, line: 932, baseType: !31, size: 32, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3258, file: !239, line: 934, baseType: !31, size: 32, offset: 928)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3258, file: !239, line: 935, baseType: !31, size: 32, offset: 960)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3258, file: !239, line: 936, baseType: !31, size: 32, offset: 992)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3258, file: !239, line: 937, baseType: !31, size: 32, offset: 1024)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3258, file: !239, line: 939, baseType: !368, size: 32, offset: 1056)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3258, file: !239, line: 940, baseType: !360, size: 64, offset: 1088)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3258, file: !239, line: 945, baseType: !420, size: 64, offset: 1152)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3258, file: !239, line: 946, baseType: !420, size: 64, offset: 1216)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3258, file: !239, line: 947, baseType: !420, size: 64, offset: 1280)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3258, file: !239, line: 953, baseType: !3257, size: 64, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3258, file: !239, line: 954, baseType: !420, size: 64, offset: 1408)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3258, file: !239, line: 955, baseType: !420, size: 64, offset: 1472)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3258, file: !239, line: 956, baseType: !31, size: 32, offset: 1536)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3258, file: !239, line: 958, baseType: !31, size: 32, offset: 1568)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3258, file: !239, line: 960, baseType: !698, size: 128, align: 64, offset: 1600)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3258, file: !239, line: 968, baseType: !3289, size: 64, offset: 1728)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3290, line: 12, baseType: !3291)
!3290 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3290, line: 10, size: 64, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3291, file: !3290, line: 11, baseType: !711, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3253, file: !239, line: 877, baseType: !106, size: 128, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3253, file: !239, line: 879, baseType: !106, size: 128, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3253, file: !239, line: 880, baseType: !106, size: 128, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3253, file: !239, line: 883, baseType: !17, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3253, file: !239, line: 885, baseType: !17, size: 32, offset: 544)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3253, file: !239, line: 886, baseType: !17, size: 32, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3253, file: !239, line: 888, baseType: !58, size: 32, offset: 608)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3253, file: !239, line: 889, baseType: !698, size: 128, align: 64, offset: 640)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3253, file: !239, line: 891, baseType: !29, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3253, file: !239, line: 898, baseType: !31, size: 32, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3250, file: !239, line: 979, baseType: !3305, size: 64, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3250, file: !239, line: 981, baseType: !106, size: 128, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3250, file: !239, line: 982, baseType: !31, size: 32, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3250, file: !239, line: 984, baseType: !31, size: 32, offset: 1120)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3250, file: !239, line: 985, baseType: !31, size: 32, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3250, file: !239, line: 987, baseType: !510, size: 32, offset: 1184)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3250, file: !239, line: 988, baseType: !485, size: 512, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3250, file: !239, line: 989, baseType: !493, size: 64, offset: 1728)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3250, file: !239, line: 990, baseType: !17, size: 32, offset: 1792)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2887, file: !239, line: 320, baseType: !58, size: 32, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2887, file: !239, line: 321, baseType: !31, size: 32, offset: 736)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2887, file: !239, line: 322, baseType: !31, size: 32, offset: 768)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2887, file: !239, line: 325, baseType: !17, size: 32, offset: 800)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2887, file: !239, line: 331, baseType: !3319, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !2886}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2887, file: !239, line: 332, baseType: !3319, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2887, file: !239, line: 350, baseType: !3324, size: 64, offset: 960)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!31, !2869}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2887, file: !239, line: 356, baseType: !3328, size: 64, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !2869, !662}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2887, file: !239, line: 357, baseType: !3328, size: 64, offset: 1088)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2887, file: !239, line: 385, baseType: !3333, size: 64, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!31, !2869, !31}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2887, file: !239, line: 386, baseType: !3337, size: 64, offset: 1216)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !2869, !31}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2887, file: !239, line: 406, baseType: !3337, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2887, file: !239, line: 407, baseType: !3337, size: 64, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2887, file: !239, line: 415, baseType: !3343, size: 64, offset: 1408)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !2869}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2887, file: !239, line: 427, baseType: !3347, size: 64, offset: 1472)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !2886, !17}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2887, file: !239, line: 436, baseType: !3351, size: 64, offset: 1536)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!31, !2886}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2887, file: !239, line: 443, baseType: !3319, size: 64, offset: 1600)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2887, file: !239, line: 450, baseType: !3324, size: 64, offset: 1664)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2887, file: !239, line: 455, baseType: !3357, size: 64, offset: 1728)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3305, !875}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2887, file: !239, line: 461, baseType: !808, size: 64, offset: 1792)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2887, file: !239, line: 469, baseType: !3362, size: 64, offset: 1856)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3305, !3305}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2887, file: !239, line: 476, baseType: !3366, size: 64, offset: 1920)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!29, !2869, !1992, !31, !875}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2887, file: !239, line: 483, baseType: !1274, size: 64, offset: 1984)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2887, file: !239, line: 494, baseType: !3371, size: 64, offset: 2048)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!358, !2869, !3374, !48}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !239, line: 1014, size: 448, elements: !3376)
!3376 = !{!3377, !3378, !3381, !3382, !3383, !3384, !3389}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3375, file: !239, line: 1015, baseType: !2869, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3375, file: !239, line: 1016, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !239, line: 641, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3375, file: !239, line: 1017, baseType: !48, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3375, file: !239, line: 1018, baseType: !48, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3375, file: !239, line: 1019, baseType: !420, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !239, line: 1020, baseType: !3385, size: 64, offset: 320)
!3385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !239, line: 1020, size: 64, elements: !3386)
!3386 = !{!3387, !3388}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3385, file: !239, line: 1021, baseType: !29, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3385, file: !239, line: 1022, baseType: !48, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3375, file: !239, line: 1024, baseType: !31, size: 32, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2887, file: !239, line: 506, baseType: !3391, size: 64, offset: 2112)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!31, !109}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2887, file: !239, line: 520, baseType: !3343, size: 64, offset: 2176)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2887, file: !239, line: 530, baseType: !3324, size: 64, offset: 2240)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2887, file: !239, line: 537, baseType: !3397, size: 64, offset: 2304)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!875, !2886, !31}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2887, file: !239, line: 542, baseType: !3401, size: 64, offset: 2368)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!31, !2869, !420}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2870, file: !239, line: 715, baseType: !29, size: 64, offset: 1280)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2870, file: !239, line: 717, baseType: !238, size: 32, offset: 1344)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2870, file: !239, line: 718, baseType: !17, size: 32, offset: 1376)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2870, file: !239, line: 719, baseType: !3408, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3409, line: 26, baseType: !3410)
!3409 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3409, line: 24, size: 64, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3410, file: !3409, line: 25, baseType: !3289, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2870, file: !239, line: 720, baseType: !713, size: 64, offset: 1472)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2870, file: !239, line: 728, baseType: !420, size: 64, offset: 1536)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2870, file: !239, line: 729, baseType: !420, size: 64, offset: 1600)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2870, file: !239, line: 730, baseType: !420, size: 64, offset: 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2870, file: !239, line: 732, baseType: !3418, size: 1088, offset: 1728)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3419, line: 385, size: 1088, elements: !3420)
!3419 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3420 = !{!3421, !3422, !3423, !3424, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3474, !3475, !3482, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3418, file: !3419, line: 390, baseType: !355, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3418, file: !3419, line: 395, baseType: !355, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3418, file: !3419, line: 400, baseType: !304, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3419, line: 402, baseType: !3425, size: 64, offset: 128)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3419, line: 402, size: 64, elements: !3426)
!3426 = !{!3427, !3428}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3425, file: !3419, line: 403, baseType: !304, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3425, file: !3419, line: 404, baseType: !304, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3418, file: !3419, line: 407, baseType: !304, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3418, file: !3419, line: 408, baseType: !304, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3418, file: !3419, line: 410, baseType: !304, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3418, file: !3419, line: 411, baseType: !304, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3418, file: !3419, line: 412, baseType: !304, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3418, file: !3419, line: 413, baseType: !304, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3418, file: !3419, line: 414, baseType: !304, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3418, file: !3419, line: 415, baseType: !304, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3418, file: !3419, line: 416, baseType: !304, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3418, file: !3419, line: 417, baseType: !304, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3418, file: !3419, line: 418, baseType: !304, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3418, file: !3419, line: 419, baseType: !304, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3418, file: !3419, line: 420, baseType: !304, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3418, file: !3419, line: 421, baseType: !304, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3418, file: !3419, line: 422, baseType: !304, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3418, file: !3419, line: 423, baseType: !304, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3418, file: !3419, line: 424, baseType: !304, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3418, file: !3419, line: 435, baseType: !304, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3418, file: !3419, line: 436, baseType: !304, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3418, file: !3419, line: 437, baseType: !304, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3418, file: !3419, line: 439, baseType: !304, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3418, file: !3419, line: 440, baseType: !304, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3418, file: !3419, line: 442, baseType: !304, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3418, file: !3419, line: 443, baseType: !304, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3418, file: !3419, line: 444, baseType: !304, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3418, file: !3419, line: 445, baseType: !304, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3418, file: !3419, line: 446, baseType: !304, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3418, file: !3419, line: 447, baseType: !304, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3418, file: !3419, line: 448, baseType: !304, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3418, file: !3419, line: 449, baseType: !304, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3418, file: !3419, line: 450, baseType: !304, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3418, file: !3419, line: 451, baseType: !304, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3418, file: !3419, line: 452, baseType: !304, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3418, file: !3419, line: 453, baseType: !304, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3418, file: !3419, line: 454, baseType: !304, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3418, file: !3419, line: 455, baseType: !304, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3418, file: !3419, line: 456, baseType: !304, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3418, file: !3419, line: 457, baseType: !304, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3418, file: !3419, line: 458, baseType: !304, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3418, file: !3419, line: 459, baseType: !304, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3419, line: 461, baseType: !3470, size: 32, offset: 384)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3419, line: 461, size: 32, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3470, file: !3419, line: 462, baseType: !355, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3470, file: !3419, line: 463, baseType: !355, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3418, file: !3419, line: 466, baseType: !355, size: 32, offset: 416)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3419, line: 467, baseType: !3476, size: 64, offset: 448)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3419, line: 467, size: 64, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3476, file: !3419, line: 468, baseType: !304, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3476, file: !3419, line: 469, baseType: !304, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3476, file: !3419, line: 470, baseType: !304, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3476, file: !3419, line: 471, baseType: !304, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3419, line: 473, baseType: !3483, size: 64, offset: 512)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3419, line: 473, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3483, file: !3419, line: 474, baseType: !304, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3483, file: !3419, line: 475, baseType: !304, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3483, file: !3419, line: 476, baseType: !304, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3483, file: !3419, line: 477, baseType: !304, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3418, file: !3419, line: 479, baseType: !304, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3418, file: !3419, line: 485, baseType: !304, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3418, file: !3419, line: 490, baseType: !355, size: 32, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3418, file: !3419, line: 492, baseType: !888, size: 32, offset: 736)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3418, file: !3419, line: 501, baseType: !304, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3418, file: !3419, line: 506, baseType: !355, size: 32, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3418, file: !3419, line: 507, baseType: !103, size: 16, offset: 864)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3418, file: !3419, line: 508, baseType: !103, size: 16, offset: 880)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3418, file: !3419, line: 509, baseType: !355, size: 32, offset: 896)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3418, file: !3419, line: 510, baseType: !355, size: 32, offset: 928)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3418, file: !3419, line: 518, baseType: !304, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3418, file: !3419, line: 520, baseType: !304, size: 64, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2870, file: !239, line: 733, baseType: !102, size: 16, offset: 2816)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2870, file: !239, line: 734, baseType: !102, size: 16, offset: 2832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2870, file: !239, line: 735, baseType: !102, size: 16, offset: 2848)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2870, file: !239, line: 736, baseType: !3505, size: 1536, offset: 2880)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !239, line: 155, size: 1536, elements: !3506)
!3506 = !{!3507, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3591, !3592, !3593, !3594}
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3505, file: !239, line: 157, baseType: !3508, size: 768)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3505, file: !239, line: 157, size: 768, elements: !3509)
!3509 = !{!3510, !3529, !3533, !3537, !3542, !3564}
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 158, baseType: !3511, size: 768)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 158, size: 768, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3528}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3511, file: !239, line: 159, baseType: !420, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3511, file: !239, line: 160, baseType: !420, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3511, file: !239, line: 161, baseType: !48, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3511, file: !239, line: 162, baseType: !48, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3511, file: !239, line: 163, baseType: !31, size: 32, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3511, file: !239, line: 164, baseType: !31, size: 32, offset: 288)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3511, file: !239, line: 165, baseType: !31, size: 32, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3511, file: !239, line: 166, baseType: !31, size: 32, offset: 352)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3511, file: !239, line: 168, baseType: !3522, size: 192, offset: 384)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !239, line: 134, size: 192, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3522, file: !239, line: 135, baseType: !420, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3522, file: !239, line: 136, baseType: !17, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3522, file: !239, line: 137, baseType: !31, size: 32, offset: 96)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3522, file: !239, line: 138, baseType: !31, size: 32, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3511, file: !239, line: 169, baseType: !3522, size: 192, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 171, baseType: !3530, size: 512)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 171, size: 512, elements: !3531)
!3531 = !{!3532}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3530, file: !239, line: 172, baseType: !485, size: 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 174, baseType: !3534, size: 128)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 174, size: 128, elements: !3535)
!3535 = !{!3536}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3534, file: !239, line: 176, baseType: !106, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 178, baseType: !3538, size: 128)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 178, size: 128, elements: !3539)
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3538, file: !239, line: 179, baseType: !420, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3538, file: !239, line: 180, baseType: !420, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 183, baseType: !3543, size: 320)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 183, size: 320, elements: !3544)
!3544 = !{!3545, !3553}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3543, file: !239, line: 189, baseType: !3546, size: 192)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3547, line: 14, size: 192, elements: !3548)
!3547 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3548 = !{!3549, !3550, !3551, !3552}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3546, file: !3547, line: 15, baseType: !48, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3546, file: !3547, line: 16, baseType: !48, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3546, file: !3547, line: 17, baseType: !92, size: 8, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3546, file: !3547, line: 18, baseType: !92, size: 8, offset: 136)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3543, file: !239, line: 190, baseType: !3554, size: 128, offset: 192)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3555, line: 21, size: 128, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3556 = !{!3557, !3562}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3554, file: !3555, line: 22, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3555, line: 17, size: 64, elements: !3559)
!3559 = !{!3560}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3558, file: !3555, line: 18, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3554, file: !3555, line: 23, baseType: !3563, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !239, line: 193, baseType: !3565, size: 192)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3508, file: !239, line: 193, size: 192, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3565, file: !239, line: 194, baseType: !92, size: 8)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3565, file: !239, line: 195, baseType: !92, size: 8, offset: 8)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3565, file: !239, line: 196, baseType: !102, size: 16, offset: 16)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3565, file: !239, line: 197, baseType: !420, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3565, file: !239, line: 198, baseType: !420, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3505, file: !239, line: 205, baseType: !360, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3505, file: !239, line: 211, baseType: !29, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3505, file: !239, line: 214, baseType: !48, size: 64, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3505, file: !239, line: 223, baseType: !31, size: 32, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3505, file: !239, line: 229, baseType: !3408, size: 64, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3505, file: !239, line: 234, baseType: !420, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3505, file: !239, line: 236, baseType: !3579, size: 128, offset: 1152)
!3579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3505, file: !239, line: 236, size: 128, elements: !3580)
!3580 = !{!3581, !3586}
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3579, file: !239, line: 237, baseType: !3582, size: 128)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3579, file: !239, line: 237, size: 128, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3582, file: !239, line: 241, baseType: !420, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3582, file: !239, line: 249, baseType: !3408, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3579, file: !239, line: 251, baseType: !3587, size: 128)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3579, file: !239, line: 251, size: 128, elements: !3588)
!3588 = !{!3589, !3590}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3587, file: !239, line: 252, baseType: !420, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3587, file: !239, line: 253, baseType: !420, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3505, file: !239, line: 261, baseType: !420, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3505, file: !239, line: 262, baseType: !420, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3505, file: !239, line: 268, baseType: !420, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3505, file: !239, line: 269, baseType: !420, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2870, file: !239, line: 738, baseType: !3257, size: 64, offset: 4416)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2870, file: !239, line: 744, baseType: !3305, size: 64, offset: 4480)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2870, file: !239, line: 745, baseType: !711, size: 64, offset: 4544)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2870, file: !239, line: 751, baseType: !713, size: 64, offset: 4608)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2870, file: !239, line: 752, baseType: !713, size: 64, offset: 4672)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2870, file: !239, line: 757, baseType: !718, size: 256, offset: 4736)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2870, file: !239, line: 758, baseType: !106, size: 128, offset: 4992)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2870, file: !239, line: 759, baseType: !2869, size: 64, offset: 5120)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2870, file: !239, line: 761, baseType: !31, size: 32, offset: 5184)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2870, file: !239, line: 762, baseType: !31, size: 32, offset: 5216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2870, file: !239, line: 764, baseType: !106, size: 128, offset: 5248)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2870, file: !239, line: 765, baseType: !360, size: 64, offset: 5376)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2870, file: !239, line: 768, baseType: !718, size: 256, offset: 5440)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2870, file: !239, line: 769, baseType: !58, size: 32, offset: 5696)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2870, file: !239, line: 771, baseType: !3379, size: 64, offset: 5760)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2870, file: !239, line: 772, baseType: !106, size: 128, offset: 5824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2870, file: !239, line: 773, baseType: !48, size: 64, offset: 5952)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2870, file: !239, line: 774, baseType: !31, size: 32, offset: 6016)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2870, file: !239, line: 777, baseType: !63, size: 192, offset: 6080)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2870, file: !239, line: 778, baseType: !3615, size: 64, offset: 6272)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !248, line: 1083, size: 384, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3616, file: !248, line: 1084, baseType: !735, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3616, file: !248, line: 1085, baseType: !31, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3616, file: !248, line: 1086, baseType: !31, size: 32, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3616, file: !248, line: 1087, baseType: !3615, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3616, file: !248, line: 1088, baseType: !690, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3616, file: !248, line: 1089, baseType: !698, size: 128, align: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2870, file: !239, line: 781, baseType: !17, size: 32, offset: 6336)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2870, file: !239, line: 782, baseType: !17, size: 32, offset: 6368)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2870, file: !239, line: 783, baseType: !17, size: 32, offset: 6400)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2870, file: !239, line: 784, baseType: !17, size: 32, offset: 6432)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2870, file: !239, line: 785, baseType: !48, size: 64, offset: 6464)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2870, file: !239, line: 786, baseType: !3630, size: 256, offset: 6528)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3631, line: 17, size: 256, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3632 = !{!3633, !3634, !3639}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3630, file: !3631, line: 18, baseType: !377, size: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3630, file: !3631, line: 19, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3630, file: !3631, line: 20, baseType: !3640, size: 64, offset: 192)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3641, line: 16, size: 64, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3642 = !{!3643}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3640, file: !3641, line: 17, baseType: !360, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2870, file: !239, line: 787, baseType: !698, size: 128, align: 64, offset: 6784)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2870, file: !239, line: 788, baseType: !17, size: 32, offset: 6912)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2870, file: !239, line: 789, baseType: !3640, size: 64, offset: 6976)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2870, file: !239, line: 791, baseType: !58, size: 32, offset: 7040)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2870, file: !239, line: 794, baseType: !3649, size: 192, offset: 7104)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !239, line: 579, size: 192, elements: !3650)
!3650 = !{!3651, !3652, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3649, file: !239, line: 580, baseType: !106, size: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3649, file: !239, line: 581, baseType: !510, size: 32, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3649, file: !239, line: 582, baseType: !17, size: 32, offset: 160)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2870, file: !239, line: 796, baseType: !3655, size: 64, offset: 7296)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !239, line: 585, size: 128, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3656, file: !239, line: 586, baseType: !48, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3656, file: !239, line: 587, baseType: !48, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2870, file: !239, line: 797, baseType: !48, size: 64, offset: 7360)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2870, file: !239, line: 800, baseType: !2869, size: 64, offset: 7424)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2870, file: !239, line: 802, baseType: !3343, size: 64, offset: 7488)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2870, file: !239, line: 803, baseType: !698, size: 128, align: 64, offset: 7552)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2870, file: !239, line: 805, baseType: !786, size: 64, offset: 7680)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2870, file: !239, line: 806, baseType: !420, size: 64, offset: 7744)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2870, file: !239, line: 808, baseType: !713, size: 64, offset: 7808)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2870, file: !239, line: 810, baseType: !3668, size: 64, offset: 7872)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!420}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2870, file: !239, line: 811, baseType: !3672, size: 64, offset: 7936)
!3672 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !239, line: 605, baseType: !3673)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !2869, !3676, !3781}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !239, line: 1148, size: 2048, align: 512, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3688, !3689, !3690, !3695, !3696, !3703, !3724, !3746, !3756, !3774, !3775, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3677, file: !239, line: 1153, baseType: !420, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3677, file: !239, line: 1154, baseType: !420, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3677, file: !239, line: 1155, baseType: !420, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3677, file: !239, line: 1161, baseType: !420, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3677, file: !239, line: 1165, baseType: !3684, size: 64, offset: 256)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3677, file: !239, line: 1162, size: 64, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3684, file: !239, line: 1163, baseType: !354, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3684, file: !239, line: 1164, baseType: !354, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3677, file: !239, line: 1166, baseType: !420, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3677, file: !239, line: 1167, baseType: !420, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3677, file: !239, line: 1171, baseType: !3691, size: 64, offset: 448)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3677, file: !239, line: 1168, size: 64, elements: !3692)
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3691, file: !239, line: 1169, baseType: !354, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3691, file: !239, line: 1170, baseType: !354, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3677, file: !239, line: 1177, baseType: !420, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3677, file: !239, line: 1178, baseType: !3697, size: 64, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !239, line: 67, size: 64, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3698, file: !239, line: 68, baseType: !304, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3698, file: !239, line: 69, baseType: !3702, offset: 64)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, elements: !1105)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3677, file: !239, line: 1179, baseType: !3704, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !239, line: 93, size: 256, elements: !3706)
!3706 = !{!3707, !3723}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3705, file: !239, line: 94, baseType: !3708, size: 224)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !239, line: 83, size: 224, elements: !3709)
!3709 = !{!3710, !3716, !3721, !3722}
!3710 = !DIDerivedType(tag: DW_TAG_member, scope: !3708, file: !239, line: 84, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3708, file: !239, line: 84, size: 64, elements: !3712)
!3712 = !{!3713, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3711, file: !239, line: 85, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3711, file: !239, line: 86, baseType: !48, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3708, file: !239, line: 88, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !239, line: 80, baseType: !3718)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!48, !29, !2170, !48, !48}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3708, file: !239, line: 89, baseType: !29, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3708, file: !239, line: 90, baseType: !354, size: 32, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3705, file: !239, line: 95, baseType: !354, size: 32, offset: 224)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3677, file: !239, line: 1180, baseType: !3725, size: 64, offset: 704)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !239, line: 123, size: 128, elements: !3727)
!3727 = !{!3728, !3729, !3730}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3726, file: !239, line: 124, baseType: !304, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3726, file: !239, line: 125, baseType: !304, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3726, file: !239, line: 126, baseType: !3731, offset: 128)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3732, elements: !1105)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3419, line: 1415, size: 192, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3732, file: !3419, line: 1416, baseType: !304, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3732, file: !3419, line: 1417, baseType: !304, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3732, file: !3419, line: 1418, baseType: !304, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3732, file: !3419, line: 1419, baseType: !304, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3732, file: !3419, line: 1420, baseType: !304, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3732, file: !3419, line: 1421, baseType: !304, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3732, file: !3419, line: 1422, baseType: !304, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3732, file: !3419, line: 1423, baseType: !304, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3732, file: !3419, line: 1424, baseType: !304, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3732, file: !3419, line: 1425, baseType: !304, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3732, file: !3419, line: 1426, baseType: !304, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3732, file: !3419, line: 1427, baseType: !304, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3677, file: !239, line: 1181, baseType: !3747, size: 64, offset: 768)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3419, line: 1430, size: 64, elements: !3748)
!3748 = !{!3749, !3750}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3747, file: !3419, line: 1431, baseType: !304, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3747, file: !3419, line: 1433, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3747, file: !3419, line: 1433, size: 64, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3751, file: !3419, line: 1434, baseType: !355, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3751, file: !3419, line: 1435, baseType: !103, size: 16, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3751, file: !3419, line: 1436, baseType: !103, size: 16, offset: 48)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3677, file: !239, line: 1182, baseType: !3757, size: 64, offset: 832)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3419, line: 1267, size: 64, elements: !3758)
!3758 = !{!3759, !3760}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3757, file: !3419, line: 1268, baseType: !304, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3757, file: !3419, line: 1269, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3757, file: !3419, line: 1269, size: 64, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3761, file: !3419, line: 1270, baseType: !304, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3761, file: !3419, line: 1271, baseType: !304, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3761, file: !3419, line: 1272, baseType: !304, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3761, file: !3419, line: 1273, baseType: !304, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3761, file: !3419, line: 1274, baseType: !304, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3761, file: !3419, line: 1275, baseType: !304, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3761, file: !3419, line: 1276, baseType: !304, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3761, file: !3419, line: 1277, baseType: !304, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3761, file: !3419, line: 1278, baseType: !304, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3761, file: !3419, line: 1279, baseType: !304, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3761, file: !3419, line: 1280, baseType: !304, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3677, file: !239, line: 1183, baseType: !420, size: 64, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3677, file: !239, line: 1185, baseType: !3776, size: 128, offset: 960)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3777, line: 7, size: 128, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3776, file: !3777, line: 8, baseType: !304, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3776, file: !3777, line: 9, baseType: !3781, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3783, line: 103, size: 1344, elements: !3784)
!3783 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3813, !3814, !3815}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3782, file: !3783, line: 109, baseType: !48, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3782, file: !3783, line: 110, baseType: !48, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3782, file: !3783, line: 111, baseType: !48, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3782, file: !3783, line: 112, baseType: !48, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3782, file: !3783, line: 113, baseType: !48, size: 64, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3782, file: !3783, line: 114, baseType: !48, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3782, file: !3783, line: 117, baseType: !48, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3782, file: !3783, line: 118, baseType: !48, size: 64, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3782, file: !3783, line: 119, baseType: !48, size: 64, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3782, file: !3783, line: 120, baseType: !48, size: 64, offset: 576)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3782, file: !3783, line: 121, baseType: !48, size: 64, offset: 640)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3782, file: !3783, line: 122, baseType: !48, size: 64, offset: 704)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3782, file: !3783, line: 123, baseType: !48, size: 64, offset: 768)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3782, file: !3783, line: 124, baseType: !48, size: 64, offset: 832)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3782, file: !3783, line: 125, baseType: !48, size: 64, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3782, file: !3783, line: 139, baseType: !48, size: 64, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3782, file: !3783, line: 142, baseType: !48, size: 64, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !3783, line: 144, baseType: !3803, size: 64, offset: 1088)
!3803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3782, file: !3783, line: 144, size: 64, elements: !3804)
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3803, file: !3783, line: 146, baseType: !102, size: 16)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3803, file: !3783, line: 148, baseType: !420, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3803, file: !3783, line: 150, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3783, line: 59, size: 64, elements: !3809)
!3809 = !{!3810, !3811, !3812}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3808, file: !3783, line: 61, baseType: !420, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3808, file: !3783, line: 63, baseType: !420, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3808, file: !3783, line: 65, baseType: !420, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3782, file: !3783, line: 153, baseType: !48, size: 64, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3782, file: !3783, line: 154, baseType: !48, size: 64, offset: 1216)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3782, file: !3783, line: 156, baseType: !3816, size: 64, offset: 1280)
!3816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3782, file: !3783, line: 156, size: 64, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3816, file: !3783, line: 158, baseType: !102, size: 16)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3816, file: !3783, line: 160, baseType: !420, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3816, file: !3783, line: 162, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3783, line: 69, size: 64, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3821, file: !3783, line: 71, baseType: !420, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3821, file: !3783, line: 73, baseType: !420, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3821, file: !3783, line: 75, baseType: !420, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3821, file: !3783, line: 77, baseType: !420, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3821, file: !3783, line: 80, baseType: !420, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3821, file: !3783, line: 83, baseType: !420, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3821, file: !3783, line: 86, baseType: !420, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3821, file: !3783, line: 88, baseType: !420, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3821, file: !3783, line: 93, baseType: !420, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3821, file: !3783, line: 100, baseType: !420, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3677, file: !239, line: 1186, baseType: !3776, size: 128, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3677, file: !239, line: 1187, baseType: !420, size: 64, offset: 1216)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3677, file: !239, line: 1189, baseType: !420, size: 64, offset: 1280)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3677, file: !239, line: 1190, baseType: !420, size: 64, offset: 1344)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3677, file: !239, line: 1191, baseType: !420, size: 64, offset: 1408)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3677, file: !239, line: 1192, baseType: !420, size: 64, offset: 1472)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3677, file: !239, line: 1193, baseType: !420, size: 64, offset: 1536)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3677, file: !239, line: 1194, baseType: !420, size: 64, offset: 1600)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3677, file: !239, line: 1195, baseType: !420, size: 64, offset: 1664)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2870, file: !239, line: 812, baseType: !29, size: 64, offset: 8000)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2870, file: !239, line: 820, baseType: !2663, size: 64, offset: 8064)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2870, file: !239, line: 821, baseType: !2850, size: 64, offset: 8128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2870, file: !239, line: 828, baseType: !3846, size: 64, offset: 8192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !239, line: 1046, size: 1664, elements: !3848)
!3848 = !{!3849, !4107}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3847, file: !239, line: 1047, baseType: !3850, size: 1600)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3851, line: 152, size: 1600, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3852 = !{!3853, !3963, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4106}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3850, file: !3851, line: 154, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3851, line: 389, size: 7872, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3876, !3877, !3881, !3882, !3883, !3884, !3885, !3890, !3906, !3907, !3909, !3910, !3911, !3933, !3934, !3935, !3936, !3942, !3943, !3944, !3945, !3946, !3950, !3953, !3954, !3961}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3855, file: !3851, line: 391, baseType: !3850, size: 1600)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3855, file: !3851, line: 393, baseType: !48, size: 64, offset: 1600)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3855, file: !3851, line: 401, baseType: !31, size: 32, offset: 1664)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3855, file: !3851, line: 404, baseType: !31, size: 32, offset: 1696)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3855, file: !3851, line: 417, baseType: !31, size: 32, offset: 1728)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3855, file: !3851, line: 418, baseType: !31, size: 32, offset: 1760)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3855, file: !3851, line: 419, baseType: !31, size: 32, offset: 1792)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3855, file: !3851, line: 432, baseType: !31, size: 32, offset: 1824)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3855, file: !3851, line: 433, baseType: !31, size: 32, offset: 1856)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3855, file: !3851, line: 434, baseType: !31, size: 32, offset: 1888)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3855, file: !3851, line: 436, baseType: !31, size: 32, offset: 1920)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3855, file: !3851, line: 439, baseType: !17, size: 32, offset: 1952)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3855, file: !3851, line: 441, baseType: !2188, size: 64, offset: 1984)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3855, file: !3851, line: 442, baseType: !3871, size: 448, offset: 2048)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3851, line: 138, size: 448, elements: !3872)
!3872 = !{!3873, !3874, !3875}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3871, file: !3851, line: 140, baseType: !2188, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3871, file: !3851, line: 141, baseType: !48, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3871, file: !3851, line: 142, baseType: !2583, size: 320, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3855, file: !3851, line: 443, baseType: !3871, size: 448, offset: 2496)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3855, file: !3851, line: 446, baseType: !3878, offset: 2944)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3871, elements: !3879)
!3879 = !{!3880}
!3880 = !DISubrange(count: 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3855, file: !3851, line: 455, baseType: !102, size: 16, offset: 2944)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3855, file: !3851, line: 456, baseType: !102, size: 16, offset: 2960)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3855, file: !3851, line: 457, baseType: !102, size: 16, offset: 2976)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3855, file: !3851, line: 458, baseType: !102, size: 16, offset: 2992)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3855, file: !3851, line: 461, baseType: !3886, size: 896, offset: 3008)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3887, size: 896, elements: !3888)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3888 = !{!3889}
!3889 = !DISubrange(count: 14)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3855, file: !3851, line: 463, baseType: !3891, size: 64, offset: 3904)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3851, line: 537, size: 41664, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3892, file: !3851, line: 538, baseType: !2208, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3892, file: !3851, line: 541, baseType: !17, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3892, file: !3851, line: 544, baseType: !31, size: 32, offset: 96)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3892, file: !3851, line: 547, baseType: !106, size: 128, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3892, file: !3851, line: 548, baseType: !698, size: 128, align: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3892, file: !3851, line: 555, baseType: !3855, size: 7872, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3892, file: !3851, line: 558, baseType: !3854, size: 64, offset: 8256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3892, file: !3851, line: 561, baseType: !58, size: 32, offset: 8320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3892, file: !3851, line: 564, baseType: !17, size: 32, offset: 8352)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3892, file: !3851, line: 567, baseType: !2812, size: 32768, offset: 8384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3892, file: !3851, line: 570, baseType: !3905, size: 512, offset: 41152)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1533)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3855, file: !3851, line: 469, baseType: !106, size: 128, offset: 3968)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3855, file: !3851, line: 478, baseType: !3908, size: 1792, offset: 4096)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1792, elements: !3888)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3855, file: !3851, line: 487, baseType: !3854, size: 64, offset: 5888)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3855, file: !3851, line: 488, baseType: !3854, size: 64, offset: 5952)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3855, file: !3851, line: 491, baseType: !3912, size: 64, offset: 6016)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3851, line: 327, size: 896, elements: !3914)
!3914 = !{!3915, !3918, !3928, !3929, !3930, !3931, !3932}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3913, file: !3851, line: 332, baseType: !3916)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3917, line: 64, elements: !683)
!3917 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3913, file: !3851, line: 333, baseType: !3919, size: 192)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3851, line: 299, size: 192, elements: !3920)
!3920 = !{!3921}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3919, file: !3851, line: 300, baseType: !3922, size: 192)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3923, line: 17, size: 192, elements: !3924)
!3923 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3924 = !{!3925, !3926, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3922, file: !3923, line: 18, baseType: !420, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3922, file: !3923, line: 19, baseType: !420, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3922, file: !3923, line: 20, baseType: !305, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3913, file: !3851, line: 339, baseType: !3919, size: 192, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3913, file: !3851, line: 347, baseType: !3919, size: 192, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3913, file: !3851, line: 353, baseType: !3919, size: 192, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3913, file: !3851, line: 366, baseType: !3854, size: 64, offset: 768)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3913, file: !3851, line: 367, baseType: !3854, size: 64, offset: 832)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3855, file: !3851, line: 492, baseType: !106, size: 128, offset: 6080)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3855, file: !3851, line: 495, baseType: !3919, size: 192, offset: 6208)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3855, file: !3851, line: 496, baseType: !3919, size: 192, offset: 6400)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3855, file: !3851, line: 497, baseType: !3937, size: 192, offset: 6592)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !362, line: 324, size: 192, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3937, file: !362, line: 326, baseType: !420, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3937, file: !362, line: 327, baseType: !420, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3937, file: !362, line: 328, baseType: !510, size: 32, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3855, file: !3851, line: 503, baseType: !106, size: 128, offset: 6784)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3855, file: !3851, line: 504, baseType: !718, size: 256, offset: 6912)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3855, file: !3851, line: 507, baseType: !63, size: 192, offset: 7168)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3855, file: !3851, line: 510, baseType: !1001, size: 256, offset: 7360)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3855, file: !3851, line: 513, baseType: !3947, size: 64, offset: 7616)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3949, line: 214, elements: !683)
!3949 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3855, file: !3851, line: 516, baseType: !3951, offset: 7680)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3952, line: 76, elements: !683)
!3952 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3855, file: !3851, line: 519, baseType: !58, size: 32, offset: 7680)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3855, file: !3851, line: 522, baseType: !3955, size: 128, offset: 7712)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3851, line: 370, size: 128, elements: !3956)
!3956 = !{!3957, !3958, !3959, !3960}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3955, file: !3851, line: 372, baseType: !875, size: 8)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3955, file: !3851, line: 375, baseType: !31, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3955, file: !3851, line: 380, baseType: !31, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3955, file: !3851, line: 386, baseType: !31, size: 32, offset: 96)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3855, file: !3851, line: 529, baseType: !3962, offset: 7872)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3854, elements: !1105)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3850, file: !3851, line: 157, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3851, line: 669, size: 1984, elements: !3966)
!3966 = !{!3967, !3971, !3975, !3979, !3980, !3981, !3982, !3986, !3990, !3991, !3997, !4001, !4002, !4003, !4032, !4036, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4089, !4090}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3965, file: !3851, line: 670, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!3887, !3887}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3965, file: !3851, line: 671, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!31, !3887}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3965, file: !3851, line: 672, baseType: !3976, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3887}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3965, file: !3851, line: 673, baseType: !3976, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3965, file: !3851, line: 674, baseType: !3976, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3965, file: !3851, line: 675, baseType: !3976, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3965, file: !3851, line: 676, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !3887, !31}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3965, file: !3851, line: 677, baseType: !3987, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!31, !2233, !3887}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3965, file: !3851, line: 679, baseType: !3987, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3965, file: !3851, line: 682, baseType: !3992, size: 64, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!31, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3851, line: 30, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3965, file: !3851, line: 683, baseType: !3998, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !3995}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3965, file: !3851, line: 684, baseType: !3998, size: 64, offset: 704)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3965, file: !3851, line: 685, baseType: !2757, size: 64, offset: 768)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3965, file: !3851, line: 686, baseType: !4004, size: 64, offset: 832)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!31, !360, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3851, line: 209, size: 4736, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4008, file: !3851, line: 215, baseType: !3886, size: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4008, file: !3851, line: 218, baseType: !368, size: 32, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4008, file: !3851, line: 226, baseType: !4007, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4008, file: !3851, line: 229, baseType: !3854, size: 64, offset: 1024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4008, file: !3851, line: 232, baseType: !31, size: 32, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4008, file: !3851, line: 241, baseType: !106, size: 128, offset: 1152)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4008, file: !3851, line: 242, baseType: !106, size: 128, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4008, file: !3851, line: 243, baseType: !106, size: 128, offset: 1408)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4008, file: !3851, line: 246, baseType: !106, size: 128, offset: 1536)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4008, file: !3851, line: 255, baseType: !3908, size: 1792, offset: 1664)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4008, file: !3851, line: 258, baseType: !106, size: 128, offset: 3456)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4008, file: !3851, line: 259, baseType: !106, size: 128, offset: 3584)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4008, file: !3851, line: 265, baseType: !770, size: 128, offset: 3712)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4008, file: !3851, line: 271, baseType: !106, size: 128, offset: 3840)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4008, file: !3851, line: 277, baseType: !106, size: 128, offset: 3968)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4008, file: !3851, line: 278, baseType: !106, size: 128, offset: 4096)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4008, file: !3851, line: 279, baseType: !106, size: 128, offset: 4224)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4008, file: !3851, line: 288, baseType: !3854, size: 64, offset: 4352)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4008, file: !3851, line: 289, baseType: !3854, size: 64, offset: 4416)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4008, file: !3851, line: 290, baseType: !4007, size: 64, offset: 4480)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4008, file: !3851, line: 293, baseType: !875, size: 8, offset: 4544)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4008, file: !3851, line: 296, baseType: !698, size: 128, align: 64, offset: 4608)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3965, file: !3851, line: 688, baseType: !4033, size: 64, offset: 896)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !360, !4007}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3965, file: !3851, line: 689, baseType: !4037, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !360}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3965, file: !3851, line: 690, baseType: !4037, size: 64, offset: 1024)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3965, file: !3851, line: 691, baseType: !4037, size: 64, offset: 1088)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3965, file: !3851, line: 692, baseType: !3976, size: 64, offset: 1152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3965, file: !3851, line: 694, baseType: !875, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3965, file: !3851, line: 707, baseType: !875, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3965, file: !3851, line: 719, baseType: !875, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3965, file: !3851, line: 722, baseType: !31, size: 32, offset: 1248)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3965, file: !3851, line: 723, baseType: !26, size: 64, offset: 1280)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3965, file: !3851, line: 726, baseType: !26, size: 64, offset: 1344)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3965, file: !3851, line: 729, baseType: !3891, size: 64, offset: 1408)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3965, file: !3851, line: 732, baseType: !791, size: 192, offset: 1472)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3965, file: !3851, line: 738, baseType: !106, size: 128, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3965, file: !3851, line: 744, baseType: !4053, size: 64, offset: 1792)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3851, line: 580, size: 1728, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4065, !4066, !4067, !4071, !4075, !4076, !4077, !4078, !4079, !4083, !4087, !4088}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4054, file: !3851, line: 586, baseType: !3905, size: 512)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4054, file: !3851, line: 587, baseType: !48, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4054, file: !3851, line: 593, baseType: !44, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4054, file: !3851, line: 596, baseType: !17, size: 32, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4054, file: !3851, line: 604, baseType: !17, size: 32, offset: 672)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4054, file: !3851, line: 610, baseType: !3964, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4054, file: !3851, line: 611, baseType: !106, size: 128, offset: 768)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4054, file: !3851, line: 612, baseType: !4064, size: 64, offset: 896)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4054, file: !3851, line: 614, baseType: !2224, size: 64, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4054, file: !3851, line: 615, baseType: !2282, size: 64, offset: 1024)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4054, file: !3851, line: 621, baseType: !4068, size: 64, offset: 1088)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!420, !3887, !4053}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4054, file: !3851, line: 625, baseType: !4072, size: 64, offset: 1152)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!429, !3887, !4053}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4054, file: !3851, line: 628, baseType: !2263, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4054, file: !3851, line: 631, baseType: !2251, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4054, file: !3851, line: 632, baseType: !2259, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4054, file: !3851, line: 633, baseType: !2255, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4054, file: !3851, line: 640, baseType: !4080, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!31, !3887, !4053, !420}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4054, file: !3851, line: 645, baseType: !4084, size: 64, offset: 1536)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!31, !3887, !4053, !429}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4054, file: !3851, line: 654, baseType: !2290, size: 64, offset: 1600)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4054, file: !3851, line: 657, baseType: !2297, size: 64, offset: 1664)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3965, file: !3851, line: 745, baseType: !4053, size: 64, offset: 1856)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3965, file: !3851, line: 754, baseType: !17, size: 32, offset: 1920)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3850, file: !3851, line: 160, baseType: !1678, size: 128, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3850, file: !3851, line: 163, baseType: !106, size: 128, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3850, file: !3851, line: 164, baseType: !106, size: 128, offset: 384)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3850, file: !3851, line: 167, baseType: !106, size: 128, offset: 512)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3851, line: 173, baseType: !31, size: 32, offset: 640)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3850, file: !3851, line: 175, baseType: !17, size: 32, offset: 672)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3850, file: !3851, line: 183, baseType: !420, size: 64, offset: 704)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3850, file: !3851, line: 189, baseType: !58, size: 32, offset: 768)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3850, file: !3851, line: 192, baseType: !1001, size: 256, offset: 832)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3850, file: !3851, line: 193, baseType: !4101, size: 448, offset: 1088)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1002, line: 120, size: 448, elements: !4102)
!4102 = !{!4103, !4104, !4105}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4101, file: !1002, line: 121, baseType: !1001, size: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4101, file: !1002, line: 122, baseType: !698, size: 128, align: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4101, file: !1002, line: 125, baseType: !2645, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3850, file: !3851, line: 199, baseType: !3887, size: 64, offset: 1536)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3847, file: !239, line: 1048, baseType: !4108, size: 64, offset: 1600)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !239, line: 1039, size: 256, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4109, file: !239, line: 1040, baseType: !420, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4109, file: !239, line: 1041, baseType: !420, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4109, file: !239, line: 1042, baseType: !420, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4109, file: !239, line: 1043, baseType: !31, size: 32, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2870, file: !239, line: 832, baseType: !29, size: 64, offset: 8256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2870, file: !239, line: 834, baseType: !106, size: 128, offset: 8320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2870, file: !239, line: 842, baseType: !355, size: 32, offset: 8448)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1478, file: !125, line: 524, baseType: !17, size: 32, offset: 8320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1478, file: !125, line: 525, baseType: !4120, size: 64, offset: 8384)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4123, line: 28, size: 192, elements: !4124)
!4123 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4124 = !{!4125, !4126, !4127}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4122, file: !4123, line: 29, baseType: !26, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4122, file: !4123, line: 30, baseType: !26, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4122, file: !4123, line: 31, baseType: !48, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1478, file: !125, line: 526, baseType: !17, size: 32, offset: 8448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1478, file: !125, line: 533, baseType: !29, size: 64, offset: 8512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1478, file: !125, line: 534, baseType: !17, size: 32, offset: 8576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1478, file: !125, line: 535, baseType: !357, size: 64, offset: 8640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1478, file: !125, line: 536, baseType: !17, size: 32, offset: 8704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1478, file: !125, line: 539, baseType: !31, size: 32, offset: 8736)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1478, file: !125, line: 540, baseType: !2746, size: 64, offset: 8768)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1478, file: !125, line: 563, baseType: !106, size: 128, offset: 8832)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1478, file: !125, line: 565, baseType: !106, size: 128, offset: 8960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1478, file: !125, line: 568, baseType: !2757, size: 64, offset: 9088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1478, file: !125, line: 570, baseType: !58, size: 32, offset: 9152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1454, file: !248, line: 2382, baseType: !1453, size: 64, offset: 448)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1454, file: !248, line: 2383, baseType: !766, size: 64, offset: 512)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1454, file: !248, line: 2385, baseType: !4142, offset: 576)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2612, line: 206, elements: !683)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1454, file: !248, line: 2386, baseType: !4142, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1454, file: !248, line: 2387, baseType: !4142, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1454, file: !248, line: 2388, baseType: !4146, offset: 576)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, elements: !754)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1454, file: !248, line: 2390, baseType: !4142, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1454, file: !248, line: 2391, baseType: !4142, offset: 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1454, file: !248, line: 2392, baseType: !4142, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1454, file: !248, line: 2393, baseType: !4142, offset: 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1445, file: !248, line: 1197, baseType: !4152, size: 64, offset: 384)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !248, line: 2057, size: 1664, elements: !4155)
!4155 = !{!4156, !4160, !4164, !4165, !4169, !4173, !4177, !4178, !4179, !4183, !4187, !4191, !4192, !4193, !4199, !4203, !4204, !4208, !4209, !4210, !4211, !4215, !4219, !4266, !4281, !4282}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4154, file: !248, line: 2058, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!1243, !1444}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4154, file: !248, line: 2059, baseType: !4161, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !1243}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4154, file: !248, line: 2060, baseType: !4161, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4154, file: !248, line: 2062, baseType: !4166, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{null, !1243, !31}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4154, file: !248, line: 2063, baseType: !4170, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!31, !1243, !1901}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4154, file: !248, line: 2064, baseType: !4174, size: 64, offset: 320)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!31, !1243}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4154, file: !248, line: 2065, baseType: !4161, size: 64, offset: 384)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4154, file: !248, line: 2066, baseType: !1473, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4154, file: !248, line: 2067, baseType: !4180, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!31, !1444, !31}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4154, file: !248, line: 2068, baseType: !4184, size: 64, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!31, !1444, !247}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4154, file: !248, line: 2069, baseType: !4188, size: 64, offset: 640)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!31, !1444}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4154, file: !248, line: 2070, baseType: !4184, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4154, file: !248, line: 2071, baseType: !4188, size: 64, offset: 768)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4154, file: !248, line: 2072, baseType: !4194, size: 64, offset: 832)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!31, !1208, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !248, line: 62, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4154, file: !248, line: 2073, baseType: !4200, size: 64, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!31, !1444, !2482, !345}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4154, file: !248, line: 2074, baseType: !1473, size: 64, offset: 960)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4154, file: !248, line: 2076, baseType: !4205, size: 64, offset: 1024)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!31, !2233, !1208}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4154, file: !248, line: 2077, baseType: !4205, size: 64, offset: 1088)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4154, file: !248, line: 2078, baseType: !4205, size: 64, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4154, file: !248, line: 2079, baseType: !4205, size: 64, offset: 1216)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4154, file: !248, line: 2081, baseType: !4212, size: 64, offset: 1280)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!1395, !1444, !31, !345, !44, !50}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4154, file: !248, line: 2082, baseType: !4216, size: 64, offset: 1344)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!1395, !1444, !31, !26, !44, !50}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4154, file: !248, line: 2083, baseType: !4220, size: 64, offset: 1408)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!4223, !1243}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !253, line: 296, size: 1664, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4251, !4252, !4253}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4225, file: !253, line: 297, baseType: !770, size: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4225, file: !253, line: 298, baseType: !106, size: 128, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4225, file: !253, line: 299, baseType: !106, size: 128, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4225, file: !253, line: 300, baseType: !106, size: 128, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4225, file: !253, line: 301, baseType: !718, size: 256, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4225, file: !253, line: 302, baseType: !68, size: 32, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4225, file: !253, line: 303, baseType: !58, size: 32, offset: 800)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4225, file: !253, line: 304, baseType: !1444, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4225, file: !253, line: 305, baseType: !4236, size: 64, offset: 896)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !253, line: 68, size: 64, elements: !4237)
!4237 = !{!4238, !4250}
!4238 = !DIDerivedType(tag: DW_TAG_member, scope: !4236, file: !253, line: 69, baseType: !4239, size: 32)
!4239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4236, file: !253, line: 69, size: 32, elements: !4240)
!4240 = !{!4241, !4242, !4243}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4239, file: !253, line: 70, baseType: !848, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4239, file: !253, line: 71, baseType: !856, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4239, file: !253, line: 72, baseType: !4244, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4245, line: 24, baseType: !4246)
!4245 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4245, line: 22, size: 32, elements: !4247)
!4247 = !{!4248}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4246, file: !4245, line: 23, baseType: !4249, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4245, line: 20, baseType: !854)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4236, file: !253, line: 74, baseType: !252, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4225, file: !253, line: 306, baseType: !50, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4225, file: !253, line: 307, baseType: !48, size: 64, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4225, file: !253, line: 308, baseType: !4254, size: 576, offset: 1088)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !253, line: 205, size: 576, elements: !4255)
!4255 = !{!4256, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4254, file: !253, line: 206, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !253, line: 66, baseType: !52)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4254, file: !253, line: 207, baseType: !4257, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4254, file: !253, line: 208, baseType: !4257, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4254, file: !253, line: 209, baseType: !4257, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4254, file: !253, line: 210, baseType: !4257, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4254, file: !253, line: 211, baseType: !4257, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4254, file: !253, line: 212, baseType: !4257, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4254, file: !253, line: 213, baseType: !911, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4254, file: !253, line: 214, baseType: !911, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4154, file: !248, line: 2085, baseType: !4267, size: 64, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!358, !1444, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4272, line: 15, size: 256, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4273 = !{!4274, !4275, !4276, !4277, !4278}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4271, file: !4272, line: 16, baseType: !800, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4271, file: !4272, line: 19, baseType: !31, size: 32, offset: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4271, file: !4272, line: 26, baseType: !48, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4271, file: !4272, line: 33, baseType: !48, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4271, file: !4272, line: 36, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !140, line: 33, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4154, file: !248, line: 2087, baseType: !4267, size: 64, offset: 1536)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4154, file: !248, line: 2089, baseType: !1473, size: 64, offset: 1600)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1445, file: !248, line: 1198, baseType: !4284, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !253, line: 324, size: 704, elements: !4287)
!4287 = !{!4288, !4292, !4296, !4300, !4301, !4302, !4303, !4304, !4309, !4314, !4318}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4286, file: !253, line: 325, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!31, !4224}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4286, file: !253, line: 326, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!4224, !1444, !31}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4286, file: !253, line: 327, baseType: !4297, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !4224}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4286, file: !253, line: 328, baseType: !4289, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4286, file: !253, line: 329, baseType: !4289, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4286, file: !253, line: 330, baseType: !4289, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4286, file: !253, line: 331, baseType: !4180, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4286, file: !253, line: 334, baseType: !4305, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!4308, !1243}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4286, file: !253, line: 335, baseType: !4310, size: 64, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!31, !1243, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4286, file: !253, line: 337, baseType: !4315, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!31, !1243, !4308}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4286, file: !253, line: 339, baseType: !4319, size: 64, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!31, !1444, !4322}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1445, file: !248, line: 1199, baseType: !4324, size: 64, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !253, line: 430, size: 704, elements: !4327)
!4327 = !{!4328, !4332, !4333, !4337, !4338, !4339, !4354, !4377, !4381, !4382, !4405}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4326, file: !253, line: 431, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!31, !1444, !31, !31, !1364}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4326, file: !253, line: 432, baseType: !4180, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4326, file: !253, line: 433, baseType: !4334, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!31, !1444, !17}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4326, file: !253, line: 434, baseType: !4334, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4326, file: !253, line: 435, baseType: !4180, size: 64, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4326, file: !253, line: 436, baseType: !4340, size: 64, offset: 320)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!31, !1444, !31, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !253, line: 417, size: 256, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4344, file: !253, line: 418, baseType: !31, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4344, file: !253, line: 419, baseType: !17, size: 32, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4344, file: !253, line: 420, baseType: !17, size: 32, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4344, file: !253, line: 422, baseType: !17, size: 32, offset: 96)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4344, file: !253, line: 423, baseType: !17, size: 32, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4344, file: !253, line: 424, baseType: !17, size: 32, offset: 160)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4344, file: !253, line: 425, baseType: !17, size: 32, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4344, file: !253, line: 426, baseType: !17, size: 32, offset: 224)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4326, file: !253, line: 437, baseType: !4355, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!31, !1444, !4236, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !253, line: 345, size: 960, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4359, file: !253, line: 346, baseType: !31, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4359, file: !253, line: 347, baseType: !420, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4359, file: !253, line: 348, baseType: !420, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4359, file: !253, line: 349, baseType: !420, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4359, file: !253, line: 350, baseType: !420, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4359, file: !253, line: 351, baseType: !420, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4359, file: !253, line: 352, baseType: !420, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4359, file: !253, line: 353, baseType: !429, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4359, file: !253, line: 355, baseType: !429, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4359, file: !253, line: 356, baseType: !31, size: 32, offset: 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4359, file: !253, line: 357, baseType: !31, size: 32, offset: 608)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4359, file: !253, line: 358, baseType: !420, size: 64, offset: 640)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4359, file: !253, line: 359, baseType: !420, size: 64, offset: 704)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4359, file: !253, line: 360, baseType: !420, size: 64, offset: 768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4359, file: !253, line: 361, baseType: !429, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4359, file: !253, line: 362, baseType: !31, size: 32, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4326, file: !253, line: 438, baseType: !4378, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!31, !1444, !4322, !4358}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4326, file: !253, line: 440, baseType: !4355, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4326, file: !253, line: 441, baseType: !4383, size: 64, offset: 576)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!31, !1444, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !253, line: 411, size: 1408, elements: !4388)
!4388 = !{!4389, !4390}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4387, file: !253, line: 412, baseType: !17, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4387, file: !253, line: 413, baseType: !4391, size: 1344, offset: 64)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4392, size: 1344, elements: !754)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !253, line: 397, size: 448, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4404}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4392, file: !253, line: 398, baseType: !17, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4392, file: !253, line: 399, baseType: !17, size: 32, offset: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4392, file: !253, line: 401, baseType: !17, size: 32, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4392, file: !253, line: 402, baseType: !17, size: 32, offset: 96)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4392, file: !253, line: 403, baseType: !17, size: 32, offset: 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4392, file: !253, line: 404, baseType: !17, size: 32, offset: 160)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4392, file: !253, line: 405, baseType: !17, size: 32, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4392, file: !253, line: 406, baseType: !305, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4392, file: !253, line: 407, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !34, line: 132, baseType: !420)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4392, file: !253, line: 408, baseType: !4403, size: 64, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4326, file: !253, line: 442, baseType: !4334, size: 64, offset: 640)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1445, file: !248, line: 1200, baseType: !4407, size: 64, offset: 576)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4409)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !248, line: 54, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1445, file: !248, line: 1201, baseType: !48, size: 64, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1445, file: !248, line: 1202, baseType: !48, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1445, file: !248, line: 1203, baseType: !48, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1445, file: !248, line: 1204, baseType: !1208, size: 64, offset: 832)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1445, file: !248, line: 1205, baseType: !895, size: 320, offset: 896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1445, file: !248, line: 1206, baseType: !31, size: 32, offset: 1216)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1445, file: !248, line: 1207, baseType: !58, size: 32, offset: 1248)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1445, file: !248, line: 1209, baseType: !29, size: 64, offset: 1280)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1445, file: !248, line: 1211, baseType: !4419, size: 64, offset: 1344)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !248, line: 1211, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1445, file: !248, line: 1223, baseType: !4424, size: 64, offset: 1408)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1220, line: 34, size: 64, elements: !4425)
!4425 = !{!4426}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4424, file: !1220, line: 35, baseType: !1223, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1445, file: !248, line: 1224, baseType: !106, size: 128, offset: 1472)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1445, file: !248, line: 1225, baseType: !4429, size: 64, offset: 1600)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !248, line: 1225, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1445, file: !248, line: 1226, baseType: !4432, size: 64, offset: 1664)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !248, line: 1226, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1445, file: !248, line: 1227, baseType: !4435, size: 64, offset: 1728)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !248, line: 50, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1445, file: !248, line: 1228, baseType: !4438, size: 64, offset: 1792)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !248, line: 1228, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1445, file: !248, line: 1229, baseType: !770, size: 128, offset: 1856)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1445, file: !248, line: 1230, baseType: !17, size: 32, offset: 1984)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1445, file: !248, line: 1231, baseType: !4443, size: 2496, offset: 2048)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !253, line: 521, size: 2496, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4449, !4481}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4443, file: !253, line: 522, baseType: !17, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4443, file: !253, line: 523, baseType: !895, size: 320, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4443, file: !253, line: 524, baseType: !4448, size: 192, offset: 384)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 192, elements: !754)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4443, file: !253, line: 525, baseType: !4450, size: 1728, offset: 576)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4451, size: 1728, elements: !754)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !253, line: 222, size: 576, elements: !4452)
!4452 = !{!4453, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4451, file: !253, line: 223, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !253, line: 445, size: 256, elements: !4456)
!4456 = !{!4457, !4458, !4471, !4472}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4455, file: !253, line: 446, baseType: !31, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4455, file: !253, line: 447, baseType: !4459, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4461)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !253, line: 312, size: 512, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4461, file: !253, line: 313, baseType: !4180, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4461, file: !253, line: 314, baseType: !4180, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4461, file: !253, line: 315, baseType: !4180, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4461, file: !253, line: 316, baseType: !4180, size: 64, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4461, file: !253, line: 317, baseType: !4289, size: 64, offset: 256)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4461, file: !253, line: 318, baseType: !4289, size: 64, offset: 320)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4461, file: !253, line: 319, baseType: !4289, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4461, file: !253, line: 320, baseType: !4319, size: 64, offset: 448)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4455, file: !253, line: 448, baseType: !1477, size: 64, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4455, file: !253, line: 449, baseType: !4454, size: 64, offset: 192)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4451, file: !253, line: 224, baseType: !31, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4451, file: !253, line: 226, baseType: !106, size: 128, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4451, file: !253, line: 227, baseType: !48, size: 64, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4451, file: !253, line: 228, baseType: !17, size: 32, offset: 320)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4451, file: !253, line: 229, baseType: !17, size: 32, offset: 352)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4451, file: !253, line: 230, baseType: !4257, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4451, file: !253, line: 231, baseType: !4257, size: 64, offset: 448)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4451, file: !253, line: 232, baseType: !29, size: 64, offset: 512)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4443, file: !253, line: 526, baseType: !4482, size: 192, offset: 2304)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4459, size: 192, elements: !754)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1445, file: !248, line: 1233, baseType: !4484, size: 2368, offset: 4544)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !248, line: 1184, size: 2368, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4484, file: !248, line: 1185, baseType: !35, size: 16)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4484, file: !248, line: 1186, baseType: !35, size: 16, offset: 16)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4484, file: !248, line: 1187, baseType: !4489, size: 2304, offset: 64)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4490, size: 2304, elements: !754)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4491, line: 12, size: 768, elements: !4492)
!4491 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4492 = !{!4493, !4501, !4502, !4503, !4504}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4490, file: !4491, line: 13, baseType: !4494, size: 384)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4495, line: 17, size: 384, elements: !4496)
!4495 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4496 = !{!4497, !4498, !4499, !4500}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4494, file: !4495, line: 18, baseType: !31, size: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4494, file: !4495, line: 19, baseType: !31, size: 32, offset: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4494, file: !4495, line: 20, baseType: !63, size: 192, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4494, file: !4495, line: 22, baseType: !698, size: 128, align: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4490, file: !4491, line: 14, baseType: !2434, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4490, file: !4491, line: 15, baseType: !3640, size: 64, offset: 448)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4490, file: !4491, line: 16, baseType: !63, size: 192, offset: 512)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4490, file: !4491, line: 17, baseType: !58, size: 32, offset: 704)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1445, file: !248, line: 1240, baseType: !29, size: 64, offset: 6912)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1445, file: !248, line: 1243, baseType: !354, size: 32, offset: 6976)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1445, file: !248, line: 1245, baseType: !911, size: 64, offset: 7040)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1445, file: !248, line: 1246, baseType: !911, size: 64, offset: 7104)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1445, file: !248, line: 1248, baseType: !355, size: 32, offset: 7168)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1445, file: !248, line: 1249, baseType: !4511, size: 64, offset: 7232)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !248, line: 634, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1445, file: !248, line: 1252, baseType: !4514, size: 256, offset: 7296)
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4515)
!4515 = !{!4516}
!4516 = !DISubrange(count: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1445, file: !248, line: 1253, baseType: !4518, size: 128, offset: 7552)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4519, line: 21, baseType: !4520)
!4519 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4519, line: 19, size: 128, elements: !4521)
!4521 = !{!4522}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4520, file: !4519, line: 20, baseType: !4523, size: 128)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !4524)
!4524 = !{!4525}
!4525 = !DISubrange(count: 16)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1445, file: !248, line: 1255, baseType: !17, size: 32, offset: 7680)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1445, file: !248, line: 1261, baseType: !718, size: 256, offset: 7744)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1445, file: !248, line: 1267, baseType: !26, size: 64, offset: 8000)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1445, file: !248, line: 1269, baseType: !4530, size: 64, offset: 8064)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1210, line: 128, size: 1024, align: 512, elements: !4533)
!4533 = !{!4534, !4538, !4539, !4546, !4552, !4556, !4560, !4564, !4565, !4569, !4573, !4578, !4582}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4532, file: !1210, line: 129, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!31, !1208, !17}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4532, file: !1210, line: 130, baseType: !4535, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4532, file: !1210, line: 131, baseType: !4540, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!31, !4543, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4532, file: !1210, line: 132, baseType: !4547, size: 64, offset: 192)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!31, !4543, !17, !26, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4532, file: !1210, line: 134, baseType: !4553, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!31, !4543}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4532, file: !1210, line: 135, baseType: !4557, size: 64, offset: 320)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!31, !1208}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4532, file: !1210, line: 136, baseType: !4561, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !1208}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4532, file: !1210, line: 137, baseType: !4561, size: 64, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4532, file: !1210, line: 138, baseType: !4566, size: 64, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !1208, !1243}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4532, file: !1210, line: 139, baseType: !4570, size: 64, offset: 576)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!345, !1208, !345, !31}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4532, file: !1210, line: 140, baseType: !4574, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!1203, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4532, file: !1210, line: 141, baseType: !4579, size: 64, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!31, !1364, !875}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4532, file: !1210, line: 142, baseType: !4583, size: 64, offset: 768)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!1208, !1208, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1445, file: !248, line: 1271, baseType: !4589, size: 448, offset: 8128)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4272, line: 63, size: 448, elements: !4590)
!4590 = !{!4591, !4596, !4597, !4598, !4599, !4600, !4601}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4589, file: !4272, line: 64, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!48, !4595, !4270}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4589, file: !4272, line: 66, baseType: !4592, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4589, file: !4272, line: 69, baseType: !358, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4589, file: !4272, line: 70, baseType: !31, size: 32, offset: 192)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4589, file: !4272, line: 71, baseType: !17, size: 32, offset: 224)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4589, file: !4272, line: 74, baseType: !106, size: 128, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4589, file: !4272, line: 85, baseType: !4602, size: 64, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1445, file: !248, line: 1274, baseType: !711, size: 64, offset: 8576)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1445, file: !248, line: 1280, baseType: !711, size: 64, offset: 8640)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1445, file: !248, line: 1283, baseType: !31, size: 32, offset: 8704)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1445, file: !248, line: 1286, baseType: !2131, size: 32, offset: 8736)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1445, file: !248, line: 1289, baseType: !2645, size: 64, offset: 8768)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1445, file: !248, line: 1290, baseType: !766, size: 64, offset: 8832)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1445, file: !248, line: 1297, baseType: !817, size: 64, offset: 8896)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1445, file: !248, line: 1304, baseType: !4611, size: 64, offset: 8960)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4612, line: 49, size: 64, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4613 = !{!4614}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4611, file: !4612, line: 50, baseType: !4615, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4612, line: 41, size: 512, align: 512, elements: !4617)
!4617 = !{!4618, !4619, !4624}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4616, file: !4612, line: 43, baseType: !68, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4616, file: !4612, line: 45, baseType: !4620, size: 192, offset: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4612, line: 29, size: 192, elements: !4621)
!4621 = !{!4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4620, file: !4612, line: 30, baseType: !106, size: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4620, file: !4612, line: 32, baseType: !358, size: 64, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4616, file: !4612, line: 46, baseType: !358, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1445, file: !248, line: 1305, baseType: !4611, size: 64, offset: 9024)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1445, file: !248, line: 1306, baseType: !698, size: 128, align: 64, offset: 9088)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1445, file: !248, line: 1307, baseType: !1001, size: 256, offset: 9216)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1445, file: !248, line: 1309, baseType: !718, size: 256, offset: 9472)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1445, file: !248, line: 1314, baseType: !31, size: 32, offset: 9728)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1445, file: !248, line: 1317, baseType: !68, size: 32, align: 512, offset: 10240)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1445, file: !248, line: 1318, baseType: !106, size: 128, offset: 10304)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1445, file: !248, line: 1320, baseType: !68, size: 32, offset: 10432)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1445, file: !248, line: 1321, baseType: !106, size: 128, offset: 10496)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1244, file: !248, line: 656, baseType: !1594, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1244, file: !248, line: 659, baseType: !29, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1244, file: !248, line: 663, baseType: !48, size: 64, offset: 640)
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !248, line: 671, baseType: !4638, size: 32, offset: 704)
!4638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !248, line: 671, size: 32, elements: !4639)
!4639 = !{!4640, !4641}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4638, file: !248, line: 672, baseType: !2693, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4638, file: !248, line: 673, baseType: !17, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1244, file: !248, line: 675, baseType: !1317, size: 32, offset: 736)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1244, file: !248, line: 676, baseType: !50, size: 64, offset: 768)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1244, file: !248, line: 677, baseType: !1353, size: 128, offset: 832)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1244, file: !248, line: 678, baseType: !1353, size: 128, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1244, file: !248, line: 679, baseType: !1353, size: 128, offset: 1088)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1244, file: !248, line: 680, baseType: !68, size: 32, offset: 1216)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1244, file: !248, line: 681, baseType: !35, size: 16, offset: 1248)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1244, file: !248, line: 682, baseType: !92, size: 8, offset: 1264)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1244, file: !248, line: 683, baseType: !92, size: 8, offset: 1272)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1244, file: !248, line: 684, baseType: !4403, size: 64, offset: 1280)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1244, file: !248, line: 691, baseType: !48, size: 64, offset: 1344)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1244, file: !248, line: 692, baseType: !895, size: 320, offset: 1408)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1244, file: !248, line: 694, baseType: !48, size: 64, offset: 1728)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1244, file: !248, line: 695, baseType: !48, size: 64, offset: 1792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1244, file: !248, line: 697, baseType: !770, size: 128, offset: 1856)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1244, file: !248, line: 698, baseType: !106, size: 128, offset: 1984)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1244, file: !248, line: 707, baseType: !106, size: 128, offset: 2112)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1244, file: !248, line: 708, baseType: !106, size: 128, offset: 2240)
!4660 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !248, line: 709, baseType: !4661, size: 128, offset: 2368)
!4661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !248, line: 709, size: 128, elements: !4662)
!4662 = !{!4663, !4664}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4661, file: !248, line: 710, baseType: !766, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4661, file: !248, line: 711, baseType: !698, size: 128, align: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1244, file: !248, line: 713, baseType: !713, size: 64, offset: 2496)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1244, file: !248, line: 714, baseType: !713, size: 64, offset: 2560)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1244, file: !248, line: 715, baseType: !58, size: 32, offset: 2624)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1244, file: !248, line: 716, baseType: !58, size: 32, offset: 2656)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1244, file: !248, line: 717, baseType: !58, size: 32, offset: 2688)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1244, file: !248, line: 719, baseType: !58, size: 32, offset: 2720)
!4671 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !248, line: 721, baseType: !4672, size: 64, offset: 2752)
!4672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !248, line: 721, size: 64, elements: !4673)
!4673 = !{!4674, !4800}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4672, file: !248, line: 722, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4677)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !248, line: 1914, size: 2112, elements: !4678)
!4678 = !{!4679, !4680, !4684, !4688, !4692, !4693, !4694, !4700, !4713, !4717, !4721, !4722, !4726, !4727, !4731, !4736, !4737, !4741, !4745, !4751, !4752, !4756, !4757, !4763, !4767, !4768, !4773, !4777, !4781, !4785, !4789, !4790, !4796}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4677, file: !248, line: 1915, baseType: !1477, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4677, file: !248, line: 1916, baseType: !4681, size: 64, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!50, !690, !50, !31}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4677, file: !248, line: 1917, baseType: !4685, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!1395, !690, !345, !44, !49}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4677, file: !248, line: 1918, baseType: !4689, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!1395, !690, !26, !44, !49}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4677, file: !248, line: 1919, baseType: !2015, size: 64, offset: 256)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4677, file: !248, line: 1920, baseType: !2015, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4677, file: !248, line: 1921, baseType: !4695, size: 64, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!31, !2018, !4698, !17}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !248, line: 53, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4677, file: !248, line: 1923, baseType: !4701, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!31, !690, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !248, line: 1858, size: 128, elements: !4706)
!4706 = !{!4707, !4712}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4705, file: !248, line: 1859, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !248, line: 1855, baseType: !4709)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!875, !4704, !26, !31, !50, !420, !17}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4705, file: !248, line: 1860, baseType: !50, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4677, file: !248, line: 1924, baseType: !4714, size: 64, offset: 512)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!2300, !690, !2302}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4677, file: !248, line: 1925, baseType: !4718, size: 64, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!358, !690, !17, !48}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4677, file: !248, line: 1926, baseType: !4718, size: 64, offset: 640)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4677, file: !248, line: 1927, baseType: !4723, size: 64, offset: 704)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!31, !690, !1724}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4677, file: !248, line: 1928, baseType: !48, size: 64, offset: 768)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4677, file: !248, line: 1929, baseType: !4728, size: 64, offset: 832)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!31, !1243, !690}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4677, file: !248, line: 1930, baseType: !4732, size: 64, offset: 896)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!31, !690, !4735}
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !248, line: 1061, baseType: !29)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4677, file: !248, line: 1931, baseType: !4728, size: 64, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4677, file: !248, line: 1932, baseType: !4738, size: 64, offset: 1024)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!31, !690, !50, !50, !31}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4677, file: !248, line: 1933, baseType: !4742, size: 64, offset: 1088)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!31, !31, !690, !31}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4677, file: !248, line: 1934, baseType: !4746, size: 64, offset: 1152)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!31, !690, !31, !4749}
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !248, line: 1063, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4677, file: !248, line: 1935, baseType: !687, size: 64, offset: 1216)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4677, file: !248, line: 1936, baseType: !4753, size: 64, offset: 1280)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!31, !31}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4677, file: !248, line: 1937, baseType: !4746, size: 64, offset: 1344)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4677, file: !248, line: 1938, baseType: !4758, size: 64, offset: 1408)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!1395, !4761, !690, !49, !44, !17}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !362, line: 59, flags: DIFlagFwdDecl)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4677, file: !248, line: 1939, baseType: !4764, size: 64, offset: 1472)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!1395, !690, !49, !4761, !44, !17}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4677, file: !248, line: 1940, baseType: !2121, size: 64, offset: 1536)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4677, file: !248, line: 1941, baseType: !4769, size: 64, offset: 1600)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!31, !690, !31, !4772, !1992}
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4677, file: !248, line: 1942, baseType: !4774, size: 64, offset: 1664)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!358, !690, !31, !50, !50}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4677, file: !248, line: 1944, baseType: !4778, size: 64, offset: 1728)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{null, !2233, !690}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4677, file: !248, line: 1948, baseType: !4782, size: 64, offset: 1792)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!1395, !690, !50, !690, !50, !44, !17}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4677, file: !248, line: 1950, baseType: !4786, size: 64, offset: 1856)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!50, !690, !50, !690, !50, !50, !17}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4677, file: !248, line: 1953, baseType: !4738, size: 64, offset: 1920)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4677, file: !248, line: 1954, baseType: !4791, size: 64, offset: 1984)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!31, !4794, !17}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !248, line: 1911, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4677, file: !248, line: 1955, baseType: !4797, size: 64, offset: 2048)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!31, !4794, !4698, !17}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4672, file: !248, line: 723, baseType: !4161, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1244, file: !248, line: 725, baseType: !4802, size: 64, offset: 2816)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !248, line: 725, flags: DIFlagFwdDecl)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1244, file: !248, line: 726, baseType: !1595, size: 1536, align: 64, offset: 2880)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1244, file: !248, line: 727, baseType: !106, size: 128, offset: 4416)
!4806 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !248, line: 728, baseType: !4807, size: 64, offset: 4544)
!4807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !248, line: 728, size: 64, elements: !4808)
!4808 = !{!4809, !4810, !4813, !4814}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4807, file: !248, line: 729, baseType: !4761, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4807, file: !248, line: 730, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !248, line: 730, flags: DIFlagFwdDecl)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4807, file: !248, line: 731, baseType: !345, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4807, file: !248, line: 732, baseType: !17, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1244, file: !248, line: 735, baseType: !355, size: 32, offset: 4608)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1244, file: !248, line: 738, baseType: !355, size: 32, offset: 4640)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1244, file: !248, line: 739, baseType: !4511, size: 64, offset: 4672)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1244, file: !248, line: 750, baseType: !29, size: 64, offset: 4736)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1209, file: !1210, line: 91, baseType: !4820, size: 256, offset: 448)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !4515)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1209, file: !1210, line: 94, baseType: !4822, size: 64, offset: 704)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4823, line: 25, size: 64, elements: !4824)
!4823 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4824 = !{!4825}
!4825 = !DIDerivedType(tag: DW_TAG_member, scope: !4822, file: !4823, line: 26, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4822, file: !4823, line: 26, size: 64, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4826, file: !4823, line: 28, baseType: !304, size: 64, align: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, scope: !4826, file: !4823, line: 30, baseType: !4830, size: 64)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4826, file: !4823, line: 30, size: 64, elements: !4831)
!4831 = !{!4832, !4833}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4830, file: !4823, line: 31, baseType: !68, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4830, file: !4823, line: 32, baseType: !31, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1209, file: !1210, line: 95, baseType: !4530, size: 64, offset: 768)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1209, file: !1210, line: 96, baseType: !1444, size: 64, offset: 832)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1209, file: !1210, line: 97, baseType: !48, size: 64, offset: 896)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1209, file: !1210, line: 98, baseType: !29, size: 64, offset: 960)
!4838 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1210, line: 100, baseType: !4839, size: 128, offset: 1024)
!4839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 100, size: 128, elements: !4840)
!4840 = !{!4841, !4842}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4839, file: !1210, line: 101, baseType: !106, size: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4839, file: !1210, line: 102, baseType: !2311, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1209, file: !1210, line: 104, baseType: !106, size: 128, offset: 1152)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1209, file: !1210, line: 105, baseType: !106, size: 128, offset: 1280)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1209, file: !1210, line: 113, baseType: !4846, size: 128, offset: 1408)
!4846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 109, size: 128, elements: !4847)
!4847 = !{!4848, !4849, !4850}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4846, file: !1210, line: 110, baseType: !770, size: 128)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4846, file: !1210, line: 111, baseType: !1219, size: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4846, file: !1210, line: 112, baseType: !698, size: 128, align: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1204, file: !1205, line: 72, baseType: !1444, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1204, file: !1205, line: 73, baseType: !31, size: 32, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1204, file: !1205, line: 74, baseType: !1282, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1199, file: !1200, line: 10, baseType: !1208, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !691, file: !248, line: 1015, baseType: !1243, size: 64, offset: 1344)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !691, file: !248, line: 1016, baseType: !4675, size: 64, offset: 1408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !691, file: !248, line: 1018, baseType: !420, size: 64, offset: 1472)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !691, file: !248, line: 1020, baseType: !29, size: 64, offset: 1536)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !691, file: !248, line: 1023, baseType: !29, size: 64, offset: 1600)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !691, file: !248, line: 1027, baseType: !2861, size: 64, offset: 1664)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !691, file: !248, line: 1029, baseType: !1594, size: 64, offset: 1728)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !691, file: !248, line: 1030, baseType: !2131, size: 32, offset: 1792)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !691, file: !248, line: 1031, baseType: !2131, size: 32, offset: 1824)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !666, file: !140, line: 756, baseType: !48, size: 64, offset: 704)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !666, file: !140, line: 757, baseType: !48, size: 64, offset: 768)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !666, file: !140, line: 760, baseType: !48, size: 64, offset: 832)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !666, file: !140, line: 761, baseType: !48, size: 64, offset: 896)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !666, file: !140, line: 763, baseType: !48, size: 64, offset: 960)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !666, file: !140, line: 764, baseType: !4870, size: 64, offset: 1024)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1739, line: 299, baseType: !4872)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 299, size: 64, elements: !4873)
!4873 = !{!4874}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4872, file: !1739, line: 299, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1744, line: 18, baseType: !48)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !666, file: !140, line: 773, baseType: !58, size: 32, offset: 1088)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !666, file: !140, line: 785, baseType: !58, size: 32, offset: 1120)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !666, file: !140, line: 795, baseType: !4879, size: 64, offset: 1152)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !140, line: 726, size: 128, elements: !4881)
!4881 = !{!4882, !4883}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4880, file: !140, line: 727, baseType: !420, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4880, file: !140, line: 728, baseType: !31, size: 32, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !666, file: !140, line: 801, baseType: !48, size: 64, offset: 1216)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !666, file: !140, line: 804, baseType: !711, size: 64, offset: 1280)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !666, file: !140, line: 806, baseType: !31, size: 32, offset: 1344)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !666, file: !140, line: 808, baseType: !68, size: 32, offset: 1376)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !666, file: !140, line: 823, baseType: !895, size: 320, offset: 1408)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !666, file: !140, line: 825, baseType: !106, size: 128, offset: 1728)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !666, file: !140, line: 845, baseType: !31, size: 32, offset: 1856)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !666, file: !140, line: 849, baseType: !48, size: 64, offset: 1920)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !666, file: !140, line: 850, baseType: !48, size: 64, offset: 1984)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !666, file: !140, line: 852, baseType: !48, size: 64, offset: 2048)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !666, file: !140, line: 853, baseType: !48, size: 64, offset: 2112)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !666, file: !140, line: 854, baseType: !713, size: 64, offset: 2176)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !666, file: !140, line: 855, baseType: !48, size: 64, offset: 2240)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !666, file: !140, line: 856, baseType: !48, size: 64, offset: 2304)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !666, file: !140, line: 857, baseType: !48, size: 64, offset: 2368)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !666, file: !140, line: 858, baseType: !48, size: 64, offset: 2432)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !666, file: !140, line: 865, baseType: !539, size: 32, offset: 2496)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !666, file: !140, line: 867, baseType: !68, size: 32, offset: 2528)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !666, file: !140, line: 869, baseType: !48, size: 64, offset: 2560)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !666, file: !140, line: 869, baseType: !48, size: 64, offset: 2624)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !666, file: !140, line: 869, baseType: !48, size: 64, offset: 2688)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !666, file: !140, line: 869, baseType: !48, size: 64, offset: 2752)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !666, file: !140, line: 870, baseType: !48, size: 64, offset: 2816)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !666, file: !140, line: 870, baseType: !48, size: 64, offset: 2880)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !666, file: !140, line: 870, baseType: !48, size: 64, offset: 2944)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !666, file: !140, line: 871, baseType: !48, size: 64, offset: 3008)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !666, file: !140, line: 871, baseType: !48, size: 64, offset: 3072)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !666, file: !140, line: 871, baseType: !48, size: 64, offset: 3136)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !666, file: !140, line: 871, baseType: !48, size: 64, offset: 3200)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !666, file: !140, line: 873, baseType: !4914, size: 3328, offset: 3264)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3328, elements: !4915)
!4915 = !{!4916}
!4916 = !DISubrange(count: 52)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !666, file: !140, line: 875, baseType: !4918, size: 1280, offset: 6592)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 1280, elements: !775)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !666, file: !140, line: 877, baseType: !4920, size: 64, offset: 7872)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !140, line: 877, flags: DIFlagFwdDecl)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !666, file: !140, line: 880, baseType: !4923, size: 1088, offset: 7936)
!4923 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4924, line: 72, baseType: !4925)
!4924 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4924, line: 23, size: 1088, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4934, !4935, !4936, !4937, !4962, !4963, !4964}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4925, file: !4924, line: 28, baseType: !420, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4925, file: !4924, line: 38, baseType: !713, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4925, file: !4924, line: 40, baseType: !48, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4925, file: !4924, line: 43, baseType: !895, size: 320, offset: 192)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4925, file: !4924, line: 44, baseType: !4932, size: 64, offset: 512)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4924, line: 44, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4925, file: !4924, line: 48, baseType: !48, size: 64, offset: 576)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4925, file: !4924, line: 59, baseType: !718, size: 256, offset: 640)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4925, file: !4924, line: 60, baseType: !29, size: 64, offset: 896)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4925, file: !4924, line: 61, baseType: !4938, size: 64, offset: 960)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4941, line: 13, size: 1216, elements: !4942)
!4941 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4942 = !{!4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4940, file: !4941, line: 14, baseType: !29, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4940, file: !4941, line: 15, baseType: !48, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4940, file: !4941, line: 17, baseType: !48, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4940, file: !4941, line: 17, baseType: !48, size: 64, offset: 192)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4940, file: !4941, line: 18, baseType: !48, size: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4940, file: !4941, line: 18, baseType: !48, size: 64, offset: 320)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4940, file: !4941, line: 19, baseType: !2170, size: 64, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4940, file: !4941, line: 21, baseType: !358, size: 64, offset: 448)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4940, file: !4941, line: 23, baseType: !358, size: 64, offset: 512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4940, file: !4941, line: 24, baseType: !358, size: 64, offset: 576)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4940, file: !4941, line: 25, baseType: !358, size: 64, offset: 640)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4940, file: !4941, line: 26, baseType: !358, size: 64, offset: 704)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4940, file: !4941, line: 27, baseType: !358, size: 64, offset: 768)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4940, file: !4941, line: 28, baseType: !358, size: 64, offset: 832)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4940, file: !4941, line: 29, baseType: !358, size: 64, offset: 896)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4940, file: !4941, line: 30, baseType: !358, size: 64, offset: 960)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4940, file: !4941, line: 31, baseType: !358, size: 64, offset: 1024)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4940, file: !4941, line: 32, baseType: !358, size: 64, offset: 1088)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4940, file: !4941, line: 33, baseType: !358, size: 64, offset: 1152)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4925, file: !4924, line: 63, baseType: !58, size: 32, offset: 1024)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4925, file: !4924, line: 69, baseType: !102, size: 16, offset: 1056)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4925, file: !4924, line: 70, baseType: !2489, size: 16, offset: 1072)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !140, line: 882, baseType: !48, size: 64, offset: 9024)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !666, file: !140, line: 885, baseType: !68, size: 32, offset: 9088)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !666, file: !140, line: 886, baseType: !4968, size: 64, offset: 9152)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !140, line: 732, flags: DIFlagFwdDecl)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !666, file: !140, line: 901, baseType: !817, size: 64, offset: 9216)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !666, file: !140, line: 904, baseType: !690, size: 64, offset: 9280)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !666, file: !140, line: 906, baseType: !4973, size: 64, offset: 9344)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !140, line: 906, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !666, file: !140, line: 930, baseType: !58, size: 32, offset: 9408)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !666, file: !140, line: 933, baseType: !58, size: 32, offset: 9440)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !666, file: !140, line: 935, baseType: !4978, size: 64, offset: 9472)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !265, line: 103, size: 64, elements: !4979)
!4979 = !{!4980}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4978, file: !265, line: 104, baseType: !4981, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !265, line: 101, flags: DIFlagFwdDecl)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !666, file: !140, line: 940, baseType: !711, size: 64, offset: 9536)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !666, file: !140, line: 942, baseType: !1001, size: 256, offset: 9600)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !663, file: !140, line: 986, baseType: !4986, offset: 10240)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, elements: !1105)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !361, file: !362, line: 882, baseType: !662, size: 64, offset: 9792)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !361, file: !362, line: 884, baseType: !31, size: 32, offset: 9856)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !361, file: !362, line: 885, baseType: !31, size: 32, offset: 9888)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !361, file: !362, line: 886, baseType: !31, size: 32, offset: 9920)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !361, file: !362, line: 888, baseType: !31, size: 32, offset: 9952)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !361, file: !362, line: 890, baseType: !48, size: 64, offset: 9984)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !361, file: !362, line: 893, baseType: !17, size: 32, offset: 10048)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !361, file: !362, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !361, file: !362, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !361, file: !362, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !361, file: !362, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !361, file: !362, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !361, file: !362, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !361, file: !362, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !361, file: !362, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !361, file: !362, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !361, file: !362, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !361, file: !362, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !361, file: !362, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !361, file: !362, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !361, file: !362, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !361, file: !362, line: 969, baseType: !48, size: 64, offset: 10176)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !361, file: !362, line: 971, baseType: !5010, size: 448, offset: 10240)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !259, line: 25, size: 448, elements: !5011)
!5011 = !{!5012, !5013, !5018}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5010, file: !259, line: 26, baseType: !48, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5010, file: !259, line: 27, baseType: !5014, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!358, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, scope: !5010, file: !259, line: 28, baseType: !5019, size: 320, offset: 128)
!5019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5010, file: !259, line: 28, size: 320, elements: !5020)
!5020 = !{!5021, !5031, !5056}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5019, file: !259, line: 37, baseType: !5022, size: 320)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5019, file: !259, line: 30, size: 320, elements: !5023)
!5023 = !{!5024, !5026, !5027, !5028, !5029, !5030}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5022, file: !259, line: 31, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5022, file: !259, line: 32, baseType: !354, size: 32, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5022, file: !259, line: 33, baseType: !354, size: 32, offset: 96)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5022, file: !259, line: 34, baseType: !354, size: 32, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5022, file: !259, line: 35, baseType: !420, size: 64, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5022, file: !259, line: 36, baseType: !5025, size: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5019, file: !259, line: 47, baseType: !5032, size: 192)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5019, file: !259, line: 39, size: 192, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5055}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5032, file: !259, line: 40, baseType: !531, size: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5032, file: !259, line: 41, baseType: !258, size: 32, offset: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, scope: !5032, file: !259, line: 42, baseType: !5037, size: 64, offset: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5032, file: !259, line: 42, size: 64, elements: !5038)
!5038 = !{!5039, !5047}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5037, file: !259, line: 43, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5042, line: 7, size: 128, elements: !5043)
!5042 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5043 = !{!5044, !5046}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5041, file: !5042, line: 8, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !46, line: 93, baseType: !52)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5041, file: !5042, line: 9, baseType: !52, size: 64, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5037, file: !259, line: 44, baseType: !5048, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5050, line: 7, size: 64, elements: !5051)
!5050 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5051 = !{!5052, !5054}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5049, file: !5050, line: 8, baseType: !5053, size: 32)
!5053 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5050, line: 5, baseType: !887)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5049, file: !5050, line: 9, baseType: !887, size: 32, offset: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5032, file: !259, line: 46, baseType: !420, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5019, file: !259, line: 55, baseType: !5057, size: 256)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5019, file: !259, line: 49, size: 256, elements: !5058)
!5058 = !{!5059, !5067, !5068, !5069, !5070}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5057, file: !259, line: 50, baseType: !5060, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5062, line: 36, size: 64, elements: !5063)
!5062 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5063 = !{!5064, !5065, !5066}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5061, file: !5062, line: 37, baseType: !31, size: 32)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5061, file: !5062, line: 38, baseType: !923, size: 16, offset: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5061, file: !5062, line: 39, baseType: !923, size: 16, offset: 48)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5057, file: !259, line: 51, baseType: !31, size: 32, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5057, file: !259, line: 52, baseType: !31, size: 32, offset: 96)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5057, file: !259, line: 53, baseType: !48, size: 64, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5057, file: !259, line: 54, baseType: !48, size: 64, offset: 192)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !361, file: !362, line: 973, baseType: !5072, size: 32, offset: 10688)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !5073)
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !46, line: 28, baseType: !31)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !361, file: !362, line: 974, baseType: !5072, size: 32, offset: 10720)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !361, file: !362, line: 978, baseType: !48, size: 64, offset: 10752)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !361, file: !362, line: 987, baseType: !360, size: 64, offset: 10816)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !361, file: !362, line: 990, baseType: !360, size: 64, offset: 10880)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !361, file: !362, line: 995, baseType: !106, size: 128, offset: 10944)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !361, file: !362, line: 996, baseType: !106, size: 128, offset: 11072)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !361, file: !362, line: 997, baseType: !360, size: 64, offset: 11200)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !361, file: !362, line: 1005, baseType: !106, size: 128, offset: 11264)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !361, file: !362, line: 1006, baseType: !106, size: 128, offset: 11392)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !361, file: !362, line: 1009, baseType: !758, size: 64, offset: 11520)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !361, file: !362, line: 1010, baseType: !5085, size: 512, offset: 11584)
!5085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 512, elements: !775)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !361, file: !362, line: 1011, baseType: !106, size: 128, offset: 12096)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !361, file: !362, line: 1012, baseType: !106, size: 128, offset: 12224)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !361, file: !362, line: 1014, baseType: !1039, size: 64, offset: 12352)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !361, file: !362, line: 1017, baseType: !2482, size: 64, offset: 12416)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !361, file: !362, line: 1020, baseType: !2482, size: 64, offset: 12480)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !361, file: !362, line: 1023, baseType: !29, size: 64, offset: 12544)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !361, file: !362, line: 1025, baseType: !420, size: 64, offset: 12608)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !361, file: !362, line: 1026, baseType: !420, size: 64, offset: 12672)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !361, file: !362, line: 1031, baseType: !420, size: 64, offset: 12736)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !361, file: !362, line: 1032, baseType: !3937, size: 192, offset: 12800)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !361, file: !362, line: 1041, baseType: !48, size: 64, offset: 12992)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !361, file: !362, line: 1042, baseType: !48, size: 64, offset: 13056)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !361, file: !362, line: 1045, baseType: !420, size: 64, offset: 13120)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !361, file: !362, line: 1048, baseType: !420, size: 64, offset: 13184)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !361, file: !362, line: 1051, baseType: !48, size: 64, offset: 13248)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !361, file: !362, line: 1052, baseType: !48, size: 64, offset: 13312)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !361, file: !362, line: 1055, baseType: !5103, size: 640, offset: 13376)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5104, line: 132, size: 640, elements: !5105)
!5104 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5105 = !{!5106, !5112, !5113}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5103, file: !5104, line: 133, baseType: !5107, size: 576)
!5107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5108, size: 576, elements: !754)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5104, line: 117, size: 192, elements: !5109)
!5109 = !{!5110, !5111}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5108, file: !5104, line: 118, baseType: !420, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5108, file: !5104, line: 119, baseType: !545, size: 128, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5103, file: !5104, line: 134, baseType: !17, size: 32, offset: 576)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5103, file: !5104, line: 135, baseType: !17, size: 32, offset: 608)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !361, file: !362, line: 1058, baseType: !5115, size: 448, offset: 14016)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5104, line: 144, size: 448, elements: !5116)
!5116 = !{!5117, !5118, !5119}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5115, file: !5104, line: 145, baseType: !698, size: 128, align: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5115, file: !5104, line: 146, baseType: !718, size: 256, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5115, file: !5104, line: 147, baseType: !17, size: 32, offset: 384)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !361, file: !362, line: 1064, baseType: !1112, size: 64, offset: 14464)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !361, file: !362, line: 1067, baseType: !1112, size: 64, offset: 14528)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !361, file: !362, line: 1070, baseType: !1112, size: 64, offset: 14592)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !361, file: !362, line: 1074, baseType: !879, size: 64, offset: 14656)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !361, file: !362, line: 1084, baseType: !5125, size: 128, offset: 14720)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4524)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !361, file: !362, line: 1086, baseType: !5127, size: 64, offset: 14848)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !362, line: 55, flags: DIFlagFwdDecl)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !361, file: !362, line: 1089, baseType: !5130, size: 64, offset: 14912)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5131, line: 12, size: 64, elements: !5132)
!5131 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5132 = !{!5133}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5130, file: !5131, line: 13, baseType: !5134, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5131, line: 8, flags: DIFlagFwdDecl)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !361, file: !362, line: 1090, baseType: !5137, size: 128, offset: 14976)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5138, line: 13, size: 128, elements: !5139)
!5138 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5139 = !{!5140}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5137, file: !5138, line: 14, baseType: !106, size: 128)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !361, file: !362, line: 1097, baseType: !5142, size: 64, offset: 15104)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !362, line: 50, flags: DIFlagFwdDecl)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !361, file: !362, line: 1100, baseType: !5145, size: 64, offset: 15168)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !362, line: 1100, flags: DIFlagFwdDecl)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !361, file: !362, line: 1103, baseType: !5148, size: 64, offset: 15232)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !362, line: 53, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !361, file: !362, line: 1107, baseType: !5151, size: 64, offset: 15296)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5153, line: 31, size: 576, elements: !5154)
!5153 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5154 = !{!5155, !5156, !5159, !5162, !5165, !5166, !5169, !5172, !5173}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5152, file: !5153, line: 32, baseType: !368, size: 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5152, file: !5153, line: 33, baseType: !5157, size: 64, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5153, line: 9, flags: DIFlagFwdDecl)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5152, file: !5153, line: 34, baseType: !5160, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5153, line: 10, flags: DIFlagFwdDecl)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5152, file: !5153, line: 35, baseType: !5163, size: 64, offset: 192)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5153, line: 8, flags: DIFlagFwdDecl)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5152, file: !5153, line: 36, baseType: !786, size: 64, offset: 256)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5152, file: !5153, line: 37, baseType: !5167, size: 64, offset: 320)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !881, line: 34, flags: DIFlagFwdDecl)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5152, file: !5153, line: 38, baseType: !5170, size: 64, offset: 384)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5153, line: 38, flags: DIFlagFwdDecl)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5152, file: !5153, line: 39, baseType: !5170, size: 64, offset: 448)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5152, file: !5153, line: 40, baseType: !5174, size: 64, offset: 512)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5176, line: 771, size: 384, elements: !5177)
!5176 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5177 = !{!5178, !5179, !5180, !5181}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5175, file: !5176, line: 772, baseType: !863, size: 192)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5175, file: !5176, line: 773, baseType: !817, size: 64, offset: 192)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5175, file: !5176, line: 774, baseType: !1084, size: 64, offset: 256)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5175, file: !5176, line: 775, baseType: !4007, size: 64, offset: 320)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !361, file: !362, line: 1110, baseType: !5183, size: 64, offset: 15360)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5185, line: 93, size: 8768, elements: !5186)
!5185 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5186 = !{!5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5230, !5239, !5240, !5242, !5243, !5244, !5247, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5285, !5286, !5293, !5303, !5365, !5366, !5369, !5370, !5371, !5372, !5373, !5374}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5184, file: !5185, line: 94, baseType: !368, size: 32)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5184, file: !5185, line: 95, baseType: !58, size: 32, offset: 32)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5184, file: !5185, line: 96, baseType: !31, size: 32, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5184, file: !5185, line: 97, baseType: !31, size: 32, offset: 96)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5184, file: !5185, line: 98, baseType: !106, size: 128, offset: 128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5184, file: !5185, line: 100, baseType: !63, size: 192, offset: 256)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5184, file: !5185, line: 103, baseType: !360, size: 64, offset: 448)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5184, file: !5185, line: 106, baseType: !5195, size: 192, offset: 512)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5196, line: 32, size: 192, elements: !5197)
!5196 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5197 = !{!5198, !5199}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5195, file: !5196, line: 33, baseType: !106, size: 128)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5195, file: !5196, line: 34, baseType: !337, size: 64, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5184, file: !5185, line: 109, baseType: !766, size: 64, offset: 704)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5184, file: !5185, line: 112, baseType: !31, size: 32, offset: 768)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5184, file: !5185, line: 114, baseType: !31, size: 32, offset: 800)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5184, file: !5185, line: 115, baseType: !360, size: 64, offset: 832)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5184, file: !5185, line: 118, baseType: !31, size: 32, offset: 896)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5184, file: !5185, line: 119, baseType: !17, size: 32, offset: 928)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5184, file: !5185, line: 121, baseType: !5207, size: 64, offset: 960)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5185, line: 80, size: 448, elements: !5209)
!5209 = !{!5210, !5211, !5217}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5208, file: !5185, line: 81, baseType: !58, size: 32)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5208, file: !5185, line: 82, baseType: !5212, size: 128, offset: 64)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5185, line: 75, size: 128, elements: !5213)
!5213 = !{!5214, !5215}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5212, file: !5185, line: 76, baseType: !360, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5212, file: !5185, line: 77, baseType: !5216, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5208, file: !5185, line: 83, baseType: !1040, size: 256, offset: 192)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5184, file: !5185, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5184, file: !5185, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5184, file: !5185, line: 138, baseType: !17, size: 32, offset: 1056)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5184, file: !5185, line: 139, baseType: !106, size: 128, offset: 1088)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5184, file: !5185, line: 142, baseType: !485, size: 512, offset: 1216)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5184, file: !5185, line: 143, baseType: !493, size: 64, offset: 1728)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5184, file: !5185, line: 150, baseType: !5225, size: 256, offset: 1792)
!5225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5226, size: 256, elements: !2472)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5185, line: 38, size: 128, elements: !5227)
!5227 = !{!5228, !5229}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5226, file: !5185, line: 39, baseType: !420, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5226, file: !5185, line: 40, baseType: !420, size: 64, offset: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5184, file: !5185, line: 156, baseType: !5231, size: 192, offset: 2048)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5185, line: 66, size: 192, elements: !5232)
!5232 = !{!5233}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5231, file: !5185, line: 67, baseType: !5234, size: 192)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5185, line: 47, size: 192, elements: !5235)
!5235 = !{!5236, !5237, !5238}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5234, file: !5185, line: 48, baseType: !713, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5234, file: !5185, line: 49, baseType: !713, size: 64, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5234, file: !5185, line: 50, baseType: !713, size: 64, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5184, file: !5185, line: 160, baseType: !5103, size: 640, offset: 2240)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5184, file: !5185, line: 163, baseType: !5241, size: 256, offset: 2880)
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 256, elements: !775)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5184, file: !5185, line: 169, baseType: !758, size: 64, offset: 3136)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5184, file: !5185, line: 172, baseType: !31, size: 32, offset: 3200)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5184, file: !5185, line: 174, baseType: !5245, size: 64, offset: 3264)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5185, line: 174, flags: DIFlagFwdDecl)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5184, file: !5185, line: 185, baseType: !5248, size: 64, offset: 3328)
!5248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !535, line: 860, baseType: !5249)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 853, size: 64, elements: !5250)
!5250 = !{!5251, !5252}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5249, file: !535, line: 858, baseType: !1214, size: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5249, file: !535, line: 859, baseType: !68, size: 32, offset: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5184, file: !5185, line: 186, baseType: !420, size: 64, offset: 3392)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5184, file: !5185, line: 186, baseType: !420, size: 64, offset: 3456)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5184, file: !5185, line: 186, baseType: !420, size: 64, offset: 3520)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5184, file: !5185, line: 186, baseType: !420, size: 64, offset: 3584)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5184, file: !5185, line: 187, baseType: !420, size: 64, offset: 3648)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5184, file: !5185, line: 188, baseType: !420, size: 64, offset: 3712)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5184, file: !5185, line: 189, baseType: !3937, size: 192, offset: 3776)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5184, file: !5185, line: 190, baseType: !48, size: 64, offset: 3968)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5184, file: !5185, line: 190, baseType: !48, size: 64, offset: 4032)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5184, file: !5185, line: 190, baseType: !48, size: 64, offset: 4096)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5184, file: !5185, line: 190, baseType: !48, size: 64, offset: 4160)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5184, file: !5185, line: 191, baseType: !48, size: 64, offset: 4224)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5184, file: !5185, line: 191, baseType: !48, size: 64, offset: 4288)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5184, file: !5185, line: 191, baseType: !48, size: 64, offset: 4352)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5184, file: !5185, line: 191, baseType: !48, size: 64, offset: 4416)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5184, file: !5185, line: 192, baseType: !48, size: 64, offset: 4480)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5184, file: !5185, line: 192, baseType: !48, size: 64, offset: 4544)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5184, file: !5185, line: 192, baseType: !48, size: 64, offset: 4608)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5184, file: !5185, line: 192, baseType: !48, size: 64, offset: 4672)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5184, file: !5185, line: 193, baseType: !48, size: 64, offset: 4736)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5184, file: !5185, line: 193, baseType: !48, size: 64, offset: 4800)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5184, file: !5185, line: 194, baseType: !5275, size: 448, offset: 4864)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5276, line: 12, size: 448, elements: !5277)
!5276 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5277 = !{!5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5275, file: !5276, line: 15, baseType: !420, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5275, file: !5276, line: 17, baseType: !420, size: 64, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5275, file: !5276, line: 19, baseType: !420, size: 64, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5275, file: !5276, line: 21, baseType: !420, size: 64, offset: 192)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5275, file: !5276, line: 29, baseType: !420, size: 64, offset: 256)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5275, file: !5276, line: 35, baseType: !420, size: 64, offset: 320)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5275, file: !5276, line: 44, baseType: !420, size: 64, offset: 384)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5184, file: !5185, line: 202, baseType: !305, size: 64, offset: 5312)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5184, file: !5185, line: 213, baseType: !5287, size: 2048, offset: 5376)
!5287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5288, size: 2048, elements: !4524)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5289, line: 43, size: 128, elements: !5290)
!5289 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5290 = !{!5291, !5292}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5288, file: !5289, line: 44, baseType: !47, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5288, file: !5289, line: 45, baseType: !47, size: 64, offset: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5184, file: !5185, line: 216, baseType: !5294, size: 448, offset: 7424)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5185, line: 30, size: 448, elements: !5295)
!5295 = !{!5296, !5297, !5298, !5299, !5300, !5301, !5302}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5294, file: !5185, line: 31, baseType: !31, size: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5294, file: !5185, line: 32, baseType: !358, size: 64, offset: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5294, file: !5185, line: 33, baseType: !48, size: 64, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5294, file: !5185, line: 34, baseType: !420, size: 64, offset: 192)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5294, file: !5185, line: 34, baseType: !420, size: 64, offset: 256)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5294, file: !5185, line: 35, baseType: !48, size: 64, offset: 320)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5294, file: !5185, line: 35, baseType: !48, size: 64, offset: 384)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5184, file: !5185, line: 219, baseType: !5304, size: 64, offset: 7872)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5306, line: 41, size: 3456, elements: !5307)
!5306 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5305, file: !5306, line: 47, baseType: !103, size: 16)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5305, file: !5306, line: 48, baseType: !355, size: 32, offset: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5305, file: !5306, line: 54, baseType: !94, size: 8, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5305, file: !5306, line: 55, baseType: !94, size: 8, offset: 72)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5305, file: !5306, line: 73, baseType: !304, size: 64, align: 64, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5305, file: !5306, line: 74, baseType: !304, size: 64, offset: 192)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5305, file: !5306, line: 81, baseType: !304, size: 64, offset: 256)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5305, file: !5306, line: 82, baseType: !304, size: 64, offset: 320)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5305, file: !5306, line: 85, baseType: !304, size: 64, offset: 384)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5305, file: !5306, line: 86, baseType: !304, size: 64, offset: 448)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5305, file: !5306, line: 94, baseType: !304, size: 64, offset: 512)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5305, file: !5306, line: 102, baseType: !304, size: 64, offset: 576)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5305, file: !5306, line: 107, baseType: !4514, size: 256, offset: 640)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5305, file: !5306, line: 108, baseType: !94, size: 8, align: 64, offset: 896)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5305, file: !5306, line: 110, baseType: !5323, size: 24, offset: 904)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !754)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5305, file: !5306, line: 111, baseType: !355, size: 32, align: 64, offset: 960)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5305, file: !5306, line: 113, baseType: !355, size: 32, offset: 992)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5305, file: !5306, line: 114, baseType: !355, size: 32, offset: 1024)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5305, file: !5306, line: 115, baseType: !355, size: 32, offset: 1056)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5305, file: !5306, line: 117, baseType: !355, size: 32, offset: 1088)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5305, file: !5306, line: 118, baseType: !304, size: 64, align: 64, offset: 1152)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5305, file: !5306, line: 120, baseType: !304, size: 64, offset: 1216)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5305, file: !5306, line: 121, baseType: !304, size: 64, offset: 1280)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5305, file: !5306, line: 122, baseType: !304, size: 64, offset: 1344)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5305, file: !5306, line: 123, baseType: !304, size: 64, offset: 1408)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5305, file: !5306, line: 133, baseType: !304, size: 64, offset: 1472)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5305, file: !5306, line: 137, baseType: !304, size: 64, offset: 1536)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5305, file: !5306, line: 142, baseType: !304, size: 64, offset: 1600)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5305, file: !5306, line: 143, baseType: !304, size: 64, offset: 1664)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5305, file: !5306, line: 146, baseType: !304, size: 64, offset: 1728)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5305, file: !5306, line: 147, baseType: !304, size: 64, offset: 1792)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5305, file: !5306, line: 148, baseType: !304, size: 64, offset: 1856)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5305, file: !5306, line: 149, baseType: !304, size: 64, offset: 1920)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5305, file: !5306, line: 154, baseType: !304, size: 64, offset: 1984)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5305, file: !5306, line: 155, baseType: !304, size: 64, offset: 2048)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5305, file: !5306, line: 156, baseType: !304, size: 64, offset: 2112)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5305, file: !5306, line: 158, baseType: !304, size: 64, offset: 2176)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5305, file: !5306, line: 159, baseType: !304, size: 64, offset: 2240)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5305, file: !5306, line: 162, baseType: !304, size: 64, offset: 2304)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5305, file: !5306, line: 163, baseType: !304, size: 64, offset: 2368)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5305, file: !5306, line: 164, baseType: !304, size: 64, offset: 2432)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5305, file: !5306, line: 167, baseType: !304, size: 64, offset: 2496)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5305, file: !5306, line: 168, baseType: !304, size: 64, offset: 2560)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5305, file: !5306, line: 171, baseType: !304, size: 64, offset: 2624)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5305, file: !5306, line: 172, baseType: !304, size: 64, offset: 2688)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5305, file: !5306, line: 175, baseType: !304, size: 64, offset: 2752)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5305, file: !5306, line: 178, baseType: !304, size: 64, offset: 2816)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5305, file: !5306, line: 179, baseType: !304, size: 64, offset: 2880)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5305, file: !5306, line: 182, baseType: !355, size: 32, offset: 2944)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5305, file: !5306, line: 186, baseType: !304, size: 64, align: 64, offset: 3008)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5305, file: !5306, line: 194, baseType: !304, size: 64, offset: 3072)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5305, file: !5306, line: 195, baseType: !304, size: 64, offset: 3136)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5305, file: !5306, line: 199, baseType: !304, size: 64, offset: 3200)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5305, file: !5306, line: 200, baseType: !304, size: 64, offset: 3264)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5305, file: !5306, line: 203, baseType: !304, size: 64, offset: 3328)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5305, file: !5306, line: 204, baseType: !304, size: 64, offset: 3392)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5184, file: !5185, line: 222, baseType: !17, size: 32, offset: 7936)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5184, file: !5185, line: 223, baseType: !5367, size: 64, offset: 8000)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5185, line: 223, flags: DIFlagFwdDecl)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5184, file: !5185, line: 230, baseType: !875, size: 8, offset: 8064)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5184, file: !5185, line: 231, baseType: !923, size: 16, offset: 8080)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5184, file: !5185, line: 232, baseType: !923, size: 16, offset: 8096)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5184, file: !5185, line: 234, baseType: !662, size: 64, offset: 8128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5184, file: !5185, line: 237, baseType: !718, size: 256, offset: 8192)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5184, file: !5185, line: 243, baseType: !895, size: 320, offset: 8448)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !361, file: !362, line: 1111, baseType: !5376, size: 64, offset: 15424)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5185, line: 20, size: 16640, elements: !5378)
!5378 = !{!5379, !5380, !5381, !5382}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5377, file: !5185, line: 21, baseType: !68, size: 32)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5377, file: !5185, line: 22, baseType: !368, size: 32, offset: 32)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5377, file: !5185, line: 23, baseType: !63, size: 192, offset: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5377, file: !5185, line: 24, baseType: !5383, size: 16384, offset: 256)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5384, size: 16384, elements: !1533)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5196, line: 51, size: 256, elements: !5385)
!5385 = !{!5386}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5384, file: !5196, line: 52, baseType: !5387, size: 256)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5196, line: 37, size: 256, elements: !5388)
!5388 = !{!5389, !5396, !5397, !5401}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5387, file: !5196, line: 39, baseType: !5390, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5391, line: 83, baseType: !5392)
!5391 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5391, line: 82, baseType: !5394)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{null, !31}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5387, file: !5196, line: 40, baseType: !48, size: 64, offset: 64)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5387, file: !5196, line: 46, baseType: !5398, size: 64, offset: 128)
!5398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5391, line: 86, baseType: !5399)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5391, line: 85, baseType: !2758)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5387, file: !5196, line: 48, baseType: !337, size: 64, offset: 192)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !361, file: !362, line: 1112, baseType: !337, size: 64, offset: 15488)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !361, file: !362, line: 1113, baseType: !337, size: 64, offset: 15552)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !361, file: !362, line: 1115, baseType: !337, size: 64, offset: 15616)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !361, file: !362, line: 1116, baseType: !5195, size: 192, offset: 15680)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !361, file: !362, line: 1117, baseType: !48, size: 64, offset: 15872)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !361, file: !362, line: 1118, baseType: !44, size: 64, offset: 15936)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !361, file: !362, line: 1119, baseType: !17, size: 32, offset: 16000)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !361, file: !362, line: 1121, baseType: !701, size: 64, offset: 16064)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !361, file: !362, line: 1125, baseType: !5411, size: 64, offset: 16128)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !362, line: 43, flags: DIFlagFwdDecl)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !361, file: !362, line: 1127, baseType: !848, size: 32, offset: 16192)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !361, file: !362, line: 1128, baseType: !17, size: 32, offset: 16224)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !361, file: !362, line: 1130, baseType: !5416, size: 128, offset: 16256)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5417, line: 37, size: 128, elements: !5418)
!5417 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5418 = !{!5419, !5420, !5421}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5416, file: !5417, line: 38, baseType: !31, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5416, file: !5417, line: 39, baseType: !58, size: 32, offset: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5416, file: !5417, line: 40, baseType: !5422, size: 64, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5417, line: 24, flags: DIFlagFwdDecl)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !361, file: !362, line: 1131, baseType: !5425, size: 256, offset: 16384)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5426, line: 12, size: 256, elements: !5427)
!5426 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5427 = !{!5428, !5429, !5430, !5431}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5425, file: !5426, line: 13, baseType: !345, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5425, file: !5426, line: 14, baseType: !48, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5425, file: !5426, line: 15, baseType: !48, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5425, file: !5426, line: 16, baseType: !875, size: 8, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !361, file: !362, line: 1134, baseType: !420, size: 64, offset: 16640)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !361, file: !362, line: 1135, baseType: !420, size: 64, offset: 16704)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !361, file: !362, line: 1138, baseType: !68, size: 32, offset: 16768)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !361, file: !362, line: 1141, baseType: !510, size: 32, offset: 16800)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !361, file: !362, line: 1143, baseType: !5437, size: 64, offset: 16832)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !362, line: 735, size: 64, elements: !5438)
!5438 = !{!5439}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5437, file: !362, line: 736, baseType: !5440, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !361, file: !362, line: 1147, baseType: !548, size: 128, offset: 16896)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !361, file: !362, line: 1149, baseType: !360, size: 64, offset: 17024)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !361, file: !362, line: 1151, baseType: !5444, size: 64, offset: 17088)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !362, line: 1151, flags: DIFlagFwdDecl)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !361, file: !362, line: 1188, baseType: !29, size: 64, offset: 17152)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !361, file: !362, line: 1191, baseType: !5448, size: 64, offset: 17216)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !362, line: 44, flags: DIFlagFwdDecl)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !361, file: !362, line: 1194, baseType: !5451, size: 64, offset: 17280)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !362, line: 45, flags: DIFlagFwdDecl)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !361, file: !362, line: 1197, baseType: !5454, size: 64, offset: 17344)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !362, line: 61, flags: DIFlagFwdDecl)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !361, file: !362, line: 1199, baseType: !5457, size: 64, offset: 17408)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5459, line: 99, size: 128, elements: !5460)
!5459 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5460 = !{!5461, !5462, !5463}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5458, file: !5459, line: 100, baseType: !711, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5458, file: !5459, line: 101, baseType: !58, size: 32, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5458, file: !5459, line: 103, baseType: !35, size: 16, offset: 96)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !361, file: !362, line: 1202, baseType: !5465, size: 64, offset: 17472)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !362, line: 48, flags: DIFlagFwdDecl)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !361, file: !362, line: 1205, baseType: !48, size: 64, offset: 17536)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !361, file: !362, line: 1206, baseType: !5469, size: 64, offset: 17600)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5196, line: 14, baseType: !5471)
!5471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5196, line: 12, size: 384, elements: !5472)
!5472 = !{!5473}
!5473 = !DIDerivedType(tag: DW_TAG_member, scope: !5471, file: !5196, line: 13, baseType: !5474, size: 384)
!5474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5471, file: !5196, line: 13, size: 384, elements: !5475)
!5475 = !{!5476, !5477, !5478, !5479}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5474, file: !5196, line: 13, baseType: !31, size: 32)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5474, file: !5196, line: 13, baseType: !31, size: 32, offset: 32)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5474, file: !5196, line: 13, baseType: !31, size: 32, offset: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5474, file: !5196, line: 13, baseType: !5480, size: 256, offset: 128)
!5480 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5481, line: 37, size: 256, elements: !5482)
!5481 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5482 = !{!5483, !5488, !5501, !5507, !5516, !5543, !5548}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5480, file: !5481, line: 42, baseType: !5484, size: 64)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 39, size: 64, elements: !5485)
!5485 = !{!5486, !5487}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5484, file: !5481, line: 40, baseType: !5073, size: 32)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5484, file: !5481, line: 41, baseType: !854, size: 32, offset: 32)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5480, file: !5481, line: 50, baseType: !5489, size: 192)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 45, size: 192, elements: !5490)
!5490 = !{!5491, !5493, !5494, !5500}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5489, file: !5481, line: 46, baseType: !5492, size: 32)
!5492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !46, line: 95, baseType: !31)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5489, file: !5481, line: 47, baseType: !31, size: 32, offset: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5489, file: !5481, line: 48, baseType: !5495, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5481, line: 11, baseType: !5496)
!5496 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5481, line: 8, size: 64, elements: !5497)
!5497 = !{!5498, !5499}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5496, file: !5481, line: 9, baseType: !31, size: 32)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5496, file: !5481, line: 10, baseType: !29, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5489, file: !5481, line: 49, baseType: !31, size: 32, offset: 128)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5480, file: !5481, line: 57, baseType: !5502, size: 128)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 53, size: 128, elements: !5503)
!5503 = !{!5504, !5505, !5506}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5502, file: !5481, line: 54, baseType: !5073, size: 32)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5502, file: !5481, line: 55, baseType: !854, size: 32, offset: 32)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5502, file: !5481, line: 56, baseType: !5495, size: 64, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5480, file: !5481, line: 66, baseType: !5508, size: 256)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 60, size: 256, elements: !5509)
!5509 = !{!5510, !5511, !5512, !5513, !5515}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5508, file: !5481, line: 61, baseType: !5073, size: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5508, file: !5481, line: 62, baseType: !854, size: 32, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5508, file: !5481, line: 63, baseType: !31, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5508, file: !5481, line: 64, baseType: !5514, size: 64, offset: 128)
!5514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !46, line: 94, baseType: !1397)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5508, file: !5481, line: 65, baseType: !5514, size: 64, offset: 192)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5480, file: !5481, line: 105, baseType: !5517, size: 256)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 69, size: 256, elements: !5518)
!5518 = !{!5519, !5520}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5517, file: !5481, line: 70, baseType: !29, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, scope: !5517, file: !5481, line: 79, baseType: !5521, size: 192, offset: 64)
!5521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5517, file: !5481, line: 79, size: 192, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5532, !5537}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5521, file: !5481, line: 81, baseType: !31, size: 32)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5521, file: !5481, line: 86, baseType: !923, size: 16)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5521, file: !5481, line: 92, baseType: !5526, size: 192)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5521, file: !5481, line: 88, size: 192, elements: !5527)
!5527 = !{!5528, !5530, !5531}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5526, file: !5481, line: 89, baseType: !5529, size: 64)
!5529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !334)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5526, file: !5481, line: 90, baseType: !29, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5526, file: !5481, line: 91, baseType: !29, size: 64, offset: 128)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5521, file: !5481, line: 97, baseType: !5533, size: 96)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5521, file: !5481, line: 94, size: 96, elements: !5534)
!5534 = !{!5535, !5536}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5533, file: !5481, line: 95, baseType: !5529, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5533, file: !5481, line: 96, baseType: !355, size: 32, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5521, file: !5481, line: 103, baseType: !5538, size: 128)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5521, file: !5481, line: 99, size: 128, elements: !5539)
!5539 = !{!5540, !5541, !5542}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5538, file: !5481, line: 100, baseType: !48, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5538, file: !5481, line: 101, baseType: !355, size: 32, offset: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5538, file: !5481, line: 102, baseType: !355, size: 32, offset: 96)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5480, file: !5481, line: 111, baseType: !5544, size: 128)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 108, size: 128, elements: !5545)
!5545 = !{!5546, !5547}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5544, file: !5481, line: 109, baseType: !358, size: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5544, file: !5481, line: 110, baseType: !31, size: 32, offset: 64)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5480, file: !5481, line: 118, baseType: !5549, size: 128)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5480, file: !5481, line: 114, size: 128, elements: !5550)
!5550 = !{!5551, !5552, !5553}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5549, file: !5481, line: 115, baseType: !29, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5549, file: !5481, line: 116, baseType: !31, size: 32, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5549, file: !5481, line: 117, baseType: !17, size: 32, offset: 96)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !361, file: !362, line: 1208, baseType: !5275, size: 448, offset: 17664)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !361, file: !362, line: 1215, baseType: !420, size: 64, offset: 18112)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !361, file: !362, line: 1217, baseType: !420, size: 64, offset: 18176)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !361, file: !362, line: 1219, baseType: !420, size: 64, offset: 18240)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !361, file: !362, line: 1223, baseType: !5559, size: 64, offset: 18304)
!5559 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5560, line: 99, baseType: !5561)
!5560 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5560, line: 99, size: 64, elements: !5562)
!5562 = !{!5563}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5561, file: !5560, line: 99, baseType: !342, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !361, file: !362, line: 1225, baseType: !1214, size: 32, offset: 18368)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !361, file: !362, line: 1226, baseType: !31, size: 32, offset: 18400)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !361, file: !362, line: 1227, baseType: !31, size: 32, offset: 18432)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !361, file: !362, line: 1231, baseType: !4007, size: 64, offset: 18496)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !361, file: !362, line: 1233, baseType: !106, size: 128, offset: 18560)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !361, file: !362, line: 1240, baseType: !5570, size: 64, offset: 18688)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !362, line: 62, flags: DIFlagFwdDecl)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !361, file: !362, line: 1242, baseType: !5573, size: 64, offset: 18752)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5575, line: 392, size: 96, elements: !5576)
!5575 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5576 = !{!5577, !5583, !5585}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5574, file: !5575, line: 393, baseType: !5578, size: 32)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5575, line: 388, size: 32, elements: !5579)
!5579 = !{!5580}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5578, file: !5575, line: 389, baseType: !5581, size: 32)
!5581 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5582, line: 46, baseType: !354)
!5582 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5574, file: !5575, line: 394, baseType: !5584, size: 32, offset: 32)
!5584 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5582, line: 42, baseType: !887)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5574, file: !5575, line: 395, baseType: !5581, size: 32, offset: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !361, file: !362, line: 1244, baseType: !106, size: 128, offset: 18816)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !361, file: !362, line: 1245, baseType: !5588, size: 64, offset: 18944)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !362, line: 51, flags: DIFlagFwdDecl)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !361, file: !362, line: 1246, baseType: !718, size: 256, offset: 19008)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !361, file: !362, line: 1247, baseType: !17, size: 32, offset: 19264)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !361, file: !362, line: 1250, baseType: !3257, size: 64, offset: 19328)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !361, file: !362, line: 1251, baseType: !718, size: 256, offset: 19392)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !361, file: !362, line: 1252, baseType: !106, size: 128, offset: 19648)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !361, file: !362, line: 1259, baseType: !1817, size: 64, offset: 19776)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !361, file: !362, line: 1260, baseType: !923, size: 16, offset: 19840)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !361, file: !362, line: 1261, baseType: !923, size: 16, offset: 19856)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !361, file: !362, line: 1314, baseType: !5599, size: 64, offset: 19904)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5601, line: 62, size: 256, align: 256, elements: !5602)
!5601 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5602 = !{!5603, !5604, !5605, !5606, !5607, !5608, !5609}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5600, file: !5601, line: 75, baseType: !355, size: 32)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5600, file: !5601, line: 90, baseType: !355, size: 32, offset: 32)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5600, file: !5601, line: 112, baseType: !304, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5600, file: !5601, line: 132, baseType: !355, size: 32, offset: 128)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5600, file: !5601, line: 140, baseType: !355, size: 32, offset: 160)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5600, file: !5601, line: 149, baseType: !355, size: 32, offset: 192)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5600, file: !5601, line: 154, baseType: !5610, offset: 224)
!5610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1105)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !361, file: !362, line: 1315, baseType: !354, size: 32, offset: 19968)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !361, file: !362, line: 1316, baseType: !354, size: 32, offset: 20000)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !361, file: !362, line: 1321, baseType: !48, size: 64, offset: 20032)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !361, file: !362, line: 1325, baseType: !31, size: 32, offset: 20096)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !361, file: !362, line: 1326, baseType: !31, size: 32, offset: 20128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !361, file: !362, line: 1327, baseType: !31, size: 32, offset: 20160)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !361, file: !362, line: 1328, baseType: !31, size: 32, offset: 20192)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !361, file: !362, line: 1329, baseType: !698, size: 128, align: 64, offset: 20224)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !361, file: !362, line: 1332, baseType: !5620, size: 128, offset: 20352)
!5620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5621, line: 51, size: 128, elements: !5622)
!5621 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5622 = !{!5623, !5628, !5629}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5620, file: !5621, line: 60, baseType: !5624, size: 64)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5625, line: 7, size: 64, elements: !5626)
!5625 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5626 = !{!5627}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5624, file: !5625, line: 12, baseType: !613, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5620, file: !5621, line: 63, baseType: !875, size: 8, offset: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5620, file: !5621, line: 70, baseType: !875, size: 8, offset: 72)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !361, file: !362, line: 1335, baseType: !4761, size: 64, offset: 20480)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !361, file: !362, line: 1337, baseType: !5632, size: 128, offset: 20544)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5621, line: 39, size: 128, elements: !5633)
!5633 = !{!5634, !5635, !5636}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5632, file: !5621, line: 40, baseType: !1614, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5632, file: !5621, line: 42, baseType: !355, size: 32, offset: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5632, file: !5621, line: 43, baseType: !355, size: 32, offset: 96)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !361, file: !362, line: 1340, baseType: !5638, size: 64, offset: 20672)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !362, line: 69, flags: DIFlagFwdDecl)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !361, file: !362, line: 1351, baseType: !31, size: 32, offset: 20736)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !361, file: !362, line: 1352, baseType: !31, size: 32, offset: 20768)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !361, file: !362, line: 1354, baseType: !48, size: 64, offset: 20800)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !361, file: !362, line: 1364, baseType: !420, size: 64, offset: 20864)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !361, file: !362, line: 1365, baseType: !420, size: 64, offset: 20928)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !361, file: !362, line: 1412, baseType: !48, size: 64, offset: 20992)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !361, file: !362, line: 1453, baseType: !5647, size: 64, offset: 21056)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !362, line: 1453, flags: DIFlagFwdDecl)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !361, file: !362, line: 1457, baseType: !5650, size: 64, offset: 21120)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !265, line: 61, size: 576, elements: !5652)
!5652 = !{!5653, !5654, !5673, !5676, !5677, !5710, !5720}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5651, file: !265, line: 62, baseType: !264, size: 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, scope: !5651, file: !265, line: 64, baseType: !5655, size: 192, offset: 64)
!5655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5651, file: !265, line: 64, size: 192, elements: !5656)
!5656 = !{!5657, !5668}
!5657 = !DIDerivedType(tag: DW_TAG_member, scope: !5655, file: !265, line: 65, baseType: !5658, size: 192)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5655, file: !265, line: 65, size: 192, elements: !5659)
!5659 = !{!5660, !5667}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5658, file: !265, line: 66, baseType: !5661, size: 128)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5662, line: 50, size: 128, elements: !5663)
!5662 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5663 = !{!5664, !5665, !5666}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5661, file: !5662, line: 52, baseType: !48, size: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5661, file: !5662, line: 54, baseType: !17, size: 32, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5661, file: !5662, line: 55, baseType: !17, size: 32, offset: 96)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5658, file: !265, line: 67, baseType: !48, size: 64, offset: 128)
!5668 = !DIDerivedType(tag: DW_TAG_member, scope: !5655, file: !265, line: 70, baseType: !5669, size: 192)
!5669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5655, file: !265, line: 70, size: 192, elements: !5670)
!5670 = !{!5671, !5672}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5669, file: !265, line: 71, baseType: !698, size: 128, align: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5669, file: !265, line: 72, baseType: !48, size: 64, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5651, file: !265, line: 76, baseType: !5674, size: 64, offset: 256)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !265, line: 76, flags: DIFlagFwdDecl)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5651, file: !265, line: 77, baseType: !48, size: 64, offset: 320)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5651, file: !265, line: 79, baseType: !5678, size: 64, offset: 384)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5662, line: 25, size: 256, elements: !5680)
!5680 = !{!5681, !5687, !5691}
!5681 = !DIDerivedType(tag: DW_TAG_member, scope: !5679, file: !5662, line: 26, baseType: !5682, size: 128)
!5682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5679, file: !5662, line: 26, size: 128, elements: !5683)
!5683 = !{!5684, !5686}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5682, file: !5662, line: 27, baseType: !5685, size: 128)
!5685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !4524)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5682, file: !5662, line: 28, baseType: !5685, size: 128)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5679, file: !5662, line: 31, baseType: !5688, size: 64, offset: 128)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5690)
!5690 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5662, line: 23, flags: DIFlagFwdDecl)
!5691 = !DIDerivedType(tag: DW_TAG_member, scope: !5679, file: !5662, line: 33, baseType: !5692, size: 64, offset: 192)
!5692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5679, file: !5662, line: 33, size: 64, elements: !5693)
!5693 = !{!5694, !5700, !5705}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5692, file: !5662, line: 38, baseType: !5695, size: 64)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5692, file: !5662, line: 34, size: 64, elements: !5696)
!5696 = !{!5697, !5698, !5699}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5695, file: !5662, line: 35, baseType: !887, size: 32)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5695, file: !5662, line: 36, baseType: !92, size: 8, offset: 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5695, file: !5662, line: 37, baseType: !92, size: 8, offset: 40)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5692, file: !5662, line: 42, baseType: !5701, size: 16)
!5701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5692, file: !5662, line: 39, size: 16, elements: !5702)
!5702 = !{!5703, !5704}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5701, file: !5662, line: 40, baseType: !92, size: 8)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5701, file: !5662, line: 41, baseType: !92, size: 8, offset: 8)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5692, file: !5662, line: 46, baseType: !5706, size: 16)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5692, file: !5662, line: 43, size: 16, elements: !5707)
!5707 = !{!5708, !5709}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5706, file: !5662, line: 44, baseType: !92, size: 8)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5706, file: !5662, line: 45, baseType: !92, size: 8, offset: 8)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5651, file: !265, line: 81, baseType: !5711, size: 64, offset: 448)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !265, line: 85, size: 384, elements: !5713)
!5713 = !{!5714, !5715, !5716, !5717, !5718, !5719}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5712, file: !265, line: 86, baseType: !5674, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5712, file: !265, line: 87, baseType: !48, size: 64, offset: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5712, file: !265, line: 88, baseType: !48, size: 64, offset: 128)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5712, file: !265, line: 89, baseType: !48, size: 64, offset: 192)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5712, file: !265, line: 90, baseType: !875, size: 8, offset: 256)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5712, file: !265, line: 92, baseType: !5711, size: 64, offset: 320)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5651, file: !265, line: 82, baseType: !17, size: 32, offset: 512)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !361, file: !362, line: 1463, baseType: !5722, offset: 21184)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !362, line: 739, elements: !683)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !361, file: !362, line: 1470, baseType: !698, size: 128, align: 64, offset: 21184)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !361, file: !362, line: 1471, baseType: !368, size: 32, offset: 21312)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !361, file: !362, line: 1472, baseType: !31, size: 32, offset: 21344)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !361, file: !362, line: 1474, baseType: !360, size: 64, offset: 21376)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !361, file: !362, line: 1475, baseType: !2583, size: 320, offset: 21440)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !361, file: !362, line: 1478, baseType: !5729, size: 64, offset: 21760)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !362, line: 1478, flags: DIFlagFwdDecl)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !361, file: !362, line: 1482, baseType: !368, size: 32, offset: 21824)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !361, file: !362, line: 1489, baseType: !29, size: 64, offset: 21888)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !361, file: !362, line: 1504, baseType: !29, size: 64, offset: 21952)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !361, file: !362, line: 1505, baseType: !304, size: 64, offset: 22016)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !361, file: !362, line: 1506, baseType: !420, size: 64, offset: 22080)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !361, file: !362, line: 1507, baseType: !304, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !361, file: !362, line: 1508, baseType: !304, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !361, file: !362, line: 1509, baseType: !304, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !361, file: !362, line: 1510, baseType: !698, size: 128, align: 64, offset: 22208)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !361, file: !362, line: 1511, baseType: !31, size: 32, offset: 22336)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !361, file: !362, line: 1515, baseType: !5742, size: 64, offset: 22400)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !382, line: 56, size: 64, elements: !5743)
!5743 = !{!5744}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5742, file: !382, line: 57, baseType: !385, size: 64)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !361, file: !362, line: 1518, baseType: !5742, size: 64, offset: 22464)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !361, file: !362, line: 1528, baseType: !698, size: 128, align: 64, offset: 22528)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !361, file: !362, line: 1552, baseType: !5748, size: 35328, offset: 23040)
!5748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5749, line: 430, size: 35328, elements: !5750)
!5749 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5750 = !{!5751, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5778, !5779, !5780, !5781, !5782, !5783, !5786, !5787, !5788, !5789}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5748, file: !5749, line: 432, baseType: !5752, size: 192)
!5752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5753, size: 192, elements: !754)
!5753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5754, line: 16, size: 64, elements: !5755)
!5754 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5755 = !{!5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5753, file: !5754, line: 17, baseType: !102, size: 16)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5753, file: !5754, line: 18, baseType: !102, size: 16, offset: 16)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5753, file: !5754, line: 19, baseType: !102, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5753, file: !5754, line: 19, baseType: !102, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5753, file: !5754, line: 19, baseType: !102, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5753, file: !5754, line: 19, baseType: !102, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5753, file: !5754, line: 19, baseType: !102, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5753, file: !5754, line: 20, baseType: !102, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5753, file: !5754, line: 20, baseType: !102, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5753, file: !5754, line: 20, baseType: !102, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5753, file: !5754, line: 20, baseType: !102, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5753, file: !5754, line: 20, baseType: !102, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5753, file: !5754, line: 20, baseType: !102, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5748, file: !5749, line: 436, baseType: !48, size: 64, offset: 192)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5748, file: !5749, line: 440, baseType: !35, size: 16, offset: 256)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5748, file: !5749, line: 441, baseType: !35, size: 16, offset: 272)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5748, file: !5749, line: 442, baseType: !35, size: 16, offset: 288)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5748, file: !5749, line: 443, baseType: !35, size: 16, offset: 304)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5748, file: !5749, line: 447, baseType: !48, size: 64, offset: 320)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5748, file: !5749, line: 448, baseType: !48, size: 64, offset: 384)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5748, file: !5749, line: 459, baseType: !5777, size: 256, offset: 448)
!5777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2869, size: 256, elements: !775)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5748, file: !5749, line: 461, baseType: !48, size: 64, offset: 704)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5748, file: !5749, line: 463, baseType: !48, size: 64, offset: 768)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5748, file: !5749, line: 465, baseType: !48, size: 64, offset: 832)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5748, file: !5749, line: 466, baseType: !48, size: 64, offset: 896)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5748, file: !5749, line: 467, baseType: !48, size: 64, offset: 960)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5748, file: !5749, line: 473, baseType: !5784, size: 64, offset: 1024)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5749, line: 10, flags: DIFlagFwdDecl)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5748, file: !5749, line: 480, baseType: !48, size: 64, offset: 1088)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5748, file: !5749, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5748, file: !5749, line: 491, baseType: !354, size: 32, offset: 1184)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5748, file: !5749, line: 501, baseType: !5790, size: 33792, offset: 1536)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5791, line: 448, size: 33792, elements: !5792)
!5791 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5792 = !{!5793, !5794, !5795, !5903, !5904, !5910, !5911}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5790, file: !5791, line: 461, baseType: !17, size: 32)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5790, file: !5791, line: 468, baseType: !48, size: 64, offset: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5790, file: !5791, line: 476, baseType: !5796, size: 64, offset: 128)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5791, line: 356, size: 33280, align: 512, elements: !5798)
!5798 = !{!5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5797, file: !5791, line: 358, baseType: !17, size: 32)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5797, file: !5791, line: 361, baseType: !17, size: 32, offset: 32)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5797, file: !5791, line: 364, baseType: !420, size: 64, offset: 64)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5797, file: !5791, line: 367, baseType: !420, size: 64, offset: 128)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5797, file: !5791, line: 370, baseType: !420, size: 64, offset: 192)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5797, file: !5791, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5797, file: !5791, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5797, file: !5791, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5797, file: !5791, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5797, file: !5791, line: 397, baseType: !5809, size: 32768, offset: 512)
!5809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5791, line: 348, size: 32768, elements: !5810)
!5810 = !{!5811, !5826, !5863, !5888, !5901}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5809, file: !5791, line: 349, baseType: !5812, size: 896)
!5812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5791, line: 12, size: 896, elements: !5813)
!5813 = !{!5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5825}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5812, file: !5791, line: 13, baseType: !354, size: 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5812, file: !5791, line: 14, baseType: !354, size: 32, offset: 32)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5812, file: !5791, line: 15, baseType: !354, size: 32, offset: 64)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5812, file: !5791, line: 16, baseType: !354, size: 32, offset: 96)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5812, file: !5791, line: 17, baseType: !354, size: 32, offset: 128)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5812, file: !5791, line: 18, baseType: !354, size: 32, offset: 160)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5812, file: !5791, line: 19, baseType: !354, size: 32, offset: 192)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5812, file: !5791, line: 22, baseType: !5822, size: 640, offset: 224)
!5822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 640, elements: !5823)
!5823 = !{!5824}
!5824 = !DISubrange(count: 20)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5812, file: !5791, line: 25, baseType: !354, size: 32, offset: 864)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5809, file: !5791, line: 350, baseType: !5827, size: 4096, align: 128)
!5827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5791, line: 34, size: 4096, align: 128, elements: !5828)
!5828 = !{!5829, !5830, !5831, !5832, !5833, !5848, !5849, !5850, !5852, !5854, !5858}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5827, file: !5791, line: 35, baseType: !102, size: 16)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5827, file: !5791, line: 36, baseType: !102, size: 16, offset: 16)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5827, file: !5791, line: 37, baseType: !102, size: 16, offset: 32)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5827, file: !5791, line: 38, baseType: !102, size: 16, offset: 48)
!5833 = !DIDerivedType(tag: DW_TAG_member, scope: !5827, file: !5791, line: 39, baseType: !5834, size: 128, offset: 64)
!5834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5827, file: !5791, line: 39, size: 128, elements: !5835)
!5835 = !{!5836, !5841}
!5836 = !DIDerivedType(tag: DW_TAG_member, scope: !5834, file: !5791, line: 40, baseType: !5837, size: 128)
!5837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5834, file: !5791, line: 40, size: 128, elements: !5838)
!5838 = !{!5839, !5840}
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5837, file: !5791, line: 41, baseType: !420, size: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5837, file: !5791, line: 42, baseType: !420, size: 64, offset: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, scope: !5834, file: !5791, line: 44, baseType: !5842, size: 128)
!5842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5834, file: !5791, line: 44, size: 128, elements: !5843)
!5843 = !{!5844, !5845, !5846, !5847}
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5842, file: !5791, line: 45, baseType: !354, size: 32)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5842, file: !5791, line: 46, baseType: !354, size: 32, offset: 32)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5842, file: !5791, line: 47, baseType: !354, size: 32, offset: 64)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5842, file: !5791, line: 48, baseType: !354, size: 32, offset: 96)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5827, file: !5791, line: 51, baseType: !354, size: 32, offset: 192)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5827, file: !5791, line: 52, baseType: !354, size: 32, offset: 224)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5827, file: !5791, line: 55, baseType: !5851, size: 1024, offset: 256)
!5851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 1024, elements: !4515)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5827, file: !5791, line: 58, baseType: !5853, size: 2048, offset: 1280)
!5853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 2048, elements: !1533)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5827, file: !5791, line: 60, baseType: !5855, size: 384, offset: 3328)
!5855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 384, elements: !5856)
!5856 = !{!5857}
!5857 = !DISubrange(count: 12)
!5858 = !DIDerivedType(tag: DW_TAG_member, scope: !5827, file: !5791, line: 62, baseType: !5859, size: 384, offset: 3712)
!5859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5827, file: !5791, line: 62, size: 384, elements: !5860)
!5860 = !{!5861, !5862}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5859, file: !5791, line: 63, baseType: !5855, size: 384)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5859, file: !5791, line: 64, baseType: !5855, size: 384)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5809, file: !5791, line: 351, baseType: !5864, size: 1088)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5791, line: 79, size: 1088, elements: !5865)
!5865 = !{!5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5887}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5864, file: !5791, line: 80, baseType: !354, size: 32)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5864, file: !5791, line: 81, baseType: !354, size: 32, offset: 32)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5864, file: !5791, line: 82, baseType: !354, size: 32, offset: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5864, file: !5791, line: 83, baseType: !354, size: 32, offset: 96)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5864, file: !5791, line: 84, baseType: !354, size: 32, offset: 128)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5864, file: !5791, line: 85, baseType: !354, size: 32, offset: 160)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5864, file: !5791, line: 86, baseType: !354, size: 32, offset: 192)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5864, file: !5791, line: 88, baseType: !5822, size: 640, offset: 224)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5864, file: !5791, line: 89, baseType: !92, size: 8, offset: 864)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5864, file: !5791, line: 90, baseType: !92, size: 8, offset: 872)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5864, file: !5791, line: 91, baseType: !92, size: 8, offset: 880)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5864, file: !5791, line: 92, baseType: !92, size: 8, offset: 888)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5864, file: !5791, line: 93, baseType: !92, size: 8, offset: 896)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5864, file: !5791, line: 94, baseType: !92, size: 8, offset: 904)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5864, file: !5791, line: 95, baseType: !5881, size: 64, offset: 960)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5882, size: 64)
!5882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5883, line: 11, size: 128, elements: !5884)
!5883 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5884 = !{!5885, !5886}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5882, file: !5883, line: 12, baseType: !358, size: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5882, file: !5883, line: 13, baseType: !3781, size: 64, offset: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5864, file: !5791, line: 96, baseType: !354, size: 32, offset: 1024)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5809, file: !5791, line: 352, baseType: !5889, size: 4608, align: 512)
!5889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5791, line: 333, size: 4608, align: 512, elements: !5890)
!5890 = !{!5891, !5892, !5899}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5889, file: !5791, line: 334, baseType: !5827, size: 4096, align: 128)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5889, file: !5791, line: 335, baseType: !5893, size: 512, offset: 4096)
!5893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5791, line: 312, size: 512, elements: !5894)
!5894 = !{!5895, !5896, !5897}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5893, file: !5791, line: 313, baseType: !420, size: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5893, file: !5791, line: 314, baseType: !420, size: 64, offset: 64)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5893, file: !5791, line: 315, baseType: !5898, size: 384, offset: 128)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !941)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5889, file: !5791, line: 336, baseType: !5900, offset: 4608)
!5900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !1105)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5809, file: !5791, line: 353, baseType: !5902, size: 32768)
!5902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32768, elements: !2813)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5790, file: !5791, line: 484, baseType: !5796, size: 64, offset: 192)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5790, file: !5791, line: 491, baseType: !5905, size: 128, offset: 256)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5791, line: 404, size: 128, elements: !5906)
!5906 = !{!5907, !5908, !5909}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5905, file: !5791, line: 424, baseType: !420, size: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5905, file: !5791, line: 432, baseType: !17, size: 32, offset: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5905, file: !5791, line: 440, baseType: !17, size: 32, offset: 96)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5790, file: !5791, line: 498, baseType: !5905, size: 128, offset: 384)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5790, file: !5791, line: 508, baseType: !5797, size: 33280, align: 512, offset: 512)
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_sigframe", file: !5914, line: 59, size: 3520, elements: !5915)
!5914 = !DIFile(filename: "./arch/x86/include/asm/sigframe.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ad676775eb0a4298c1849e972fe6b3c")
!5915 = !{!5916, !5917, !5918}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "pretcode", scope: !5913, file: !5914, line: 60, baseType: !345, size: 64)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "uc", scope: !5913, file: !5914, line: 61, baseType: !286, size: 2432, offset: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5913, file: !5914, line: 62, baseType: !5919, size: 1024, offset: 2496)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "siginfo", file: !5481, line: 139, size: 1024, elements: !5920)
!5920 = !{!5921}
!5921 = !DIDerivedType(tag: DW_TAG_member, scope: !5919, file: !5481, line: 140, baseType: !5922, size: 1024)
!5922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5919, file: !5481, line: 140, size: 1024, elements: !5923)
!5923 = !{!5924, !5931}
!5924 = !DIDerivedType(tag: DW_TAG_member, scope: !5922, file: !5481, line: 141, baseType: !5925, size: 384)
!5925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5922, file: !5481, line: 141, size: 384, elements: !5926)
!5926 = !{!5927, !5928, !5929, !5930}
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5925, file: !5481, line: 141, baseType: !31, size: 32)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5925, file: !5481, line: 141, baseType: !31, size: 32, offset: 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5925, file: !5481, line: 141, baseType: !31, size: 32, offset: 64)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5925, file: !5481, line: 141, baseType: !5480, size: 256, offset: 128)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "_si_pad", scope: !5922, file: !5481, line: 142, baseType: !5932, size: 1024)
!5932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !4515)
!5933 = !{!0, !7}
!5934 = !{!"rsp"}
!5935 = !{i32 7, !"Dwarf Version", i32 5}
!5936 = !{i32 2, !"Debug Info Version", i32 3}
!5937 = !{i32 1, !"wchar_size", i32 2}
!5938 = !{i32 8, !"cf-protection-branch", i32 1}
!5939 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5940 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5941 = !{i32 1, !"Code Model", i32 2}
!5942 = !{i32 1, !"override-stack-alignment", i32 8}
!5943 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5944 = distinct !DISubprogram(name: "x64_setup_rt_frame", scope: !2, file: !2, line: 164, type: !5945, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5953)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!31, !5947, !3781}
!5947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5948, size: 64)
!5948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ksignal", file: !5196, line: 67, size: 704, elements: !5949)
!5949 = !{!5950, !5951, !5952}
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "ka", scope: !5948, file: !5196, line: 68, baseType: !5384, size: 256)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5948, file: !5196, line: 69, baseType: !5470, size: 384, offset: 256)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5948, file: !5196, line: 70, baseType: !31, size: 32, offset: 640)
!5953 = !{!5954, !5955, !5956, !5958, !5959, !5960, !5961, !5963, !5964, !5966, !5968, !5971, !5972, !5974, !5975, !5977, !5978, !5980, !5982, !5984, !5986, !5988, !5989}
!5954 = !DILocalVariable(name: "ksig", arg: 1, scope: !5944, file: !2, line: 164, type: !5947)
!5955 = !DILocalVariable(name: "regs", arg: 2, scope: !5944, file: !2, line: 164, type: !3781)
!5956 = !DILocalVariable(name: "set", scope: !5944, file: !2, line: 166, type: !5957)
!5957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!5958 = !DILocalVariable(name: "frame", scope: !5944, file: !2, line: 167, type: !5912)
!5959 = !DILocalVariable(name: "fp", scope: !5944, file: !2, line: 168, type: !29)
!5960 = !DILocalVariable(name: "uc_flags", scope: !5944, file: !2, line: 169, type: !48)
!5961 = !DILocalVariable(name: "__x", scope: !5962, file: !2, line: 182, type: !48)
!5962 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 182, column: 2)
!5963 = !DILocalVariable(name: "__ptr", scope: !5962, file: !2, line: 182, type: !357)
!5964 = !DILocalVariable(name: "__x", scope: !5965, file: !2, line: 183, type: !285)
!5965 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 183, column: 2)
!5966 = !DILocalVariable(name: "__ptr", scope: !5965, file: !2, line: 183, type: !5967)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!5968 = !DILocalVariable(name: "__uss", scope: !5969, file: !2, line: 184, type: !5970)
!5969 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 184, column: 2)
!5970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!5971 = !DILocalVariable(name: "t", scope: !5969, file: !2, line: 184, type: !360)
!5972 = !DILocalVariable(name: "__x", scope: !5973, file: !2, line: 184, type: !29)
!5973 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 184, column: 2)
!5974 = !DILocalVariable(name: "__ptr", scope: !5973, file: !2, line: 184, type: !1992)
!5975 = !DILocalVariable(name: "__x", scope: !5976, file: !2, line: 184, type: !31)
!5976 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 184, column: 2)
!5977 = !DILocalVariable(name: "__ptr", scope: !5976, file: !2, line: 184, type: !2482)
!5978 = !DILocalVariable(name: "__x", scope: !5979, file: !2, line: 184, type: !45)
!5979 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 184, column: 2)
!5980 = !DILocalVariable(name: "__ptr", scope: !5979, file: !2, line: 184, type: !5981)
!5981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!5982 = !DILocalVariable(name: "__x", scope: !5983, file: !2, line: 188, type: !345)
!5983 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 188, column: 2)
!5984 = !DILocalVariable(name: "__ptr", scope: !5983, file: !2, line: 188, type: !5985)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!5986 = !DILocalVariable(name: "__x", scope: !5987, file: !2, line: 190, type: !304)
!5987 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 190, column: 2)
!5988 = !DILocalVariable(name: "__ptr", scope: !5987, file: !2, line: 190, type: !346)
!5989 = !DILabel(scope: !5944, name: "Efault", file: !2, line: 238)
!5990 = !DILocation(line: 164, column: 40, scope: !5944)
!5991 = !DILocation(line: 164, column: 62, scope: !5944)
!5992 = !DILocation(line: 166, column: 2, scope: !5944)
!5993 = !DILocation(line: 166, column: 12, scope: !5944)
!5994 = !DILocation(line: 166, column: 18, scope: !5944)
!5995 = !DILocation(line: 167, column: 2, scope: !5944)
!5996 = !DILocation(line: 167, column: 29, scope: !5944)
!5997 = !DILocation(line: 168, column: 2, scope: !5944)
!5998 = !DILocation(line: 168, column: 15, scope: !5944)
!5999 = !DILocation(line: 169, column: 2, scope: !5944)
!6000 = !DILocation(line: 169, column: 16, scope: !5944)
!6001 = !DILocation(line: 172, column: 8, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 172, column: 6)
!6003 = !DILocation(line: 172, column: 14, scope: !6002)
!6004 = !DILocation(line: 172, column: 17, scope: !6002)
!6005 = !DILocation(line: 172, column: 20, scope: !6002)
!6006 = !DILocation(line: 172, column: 29, scope: !6002)
!6007 = !DILocation(line: 172, column: 6, scope: !5944)
!6008 = !DILocation(line: 173, column: 3, scope: !6002)
!6009 = !DILocation(line: 175, column: 23, scope: !5944)
!6010 = !DILocation(line: 175, column: 29, scope: !5944)
!6011 = !DILocation(line: 175, column: 10, scope: !5944)
!6012 = !DILocation(line: 175, column: 8, scope: !5944)
!6013 = !DILocation(line: 176, column: 28, scope: !5944)
!6014 = !DILocation(line: 176, column: 13, scope: !5944)
!6015 = !DILocation(line: 176, column: 11, scope: !5944)
!6016 = !DILocation(line: 178, column: 7, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 178, column: 6)
!6018 = !DILocation(line: 178, column: 6, scope: !5944)
!6019 = !DILocation(line: 179, column: 3, scope: !6017)
!6020 = !DILocation(line: 182, column: 2, scope: !5944)
!6021 = !DILocation(line: 182, column: 2, scope: !5962)
!6022 = !{i64 2155714383, i64 2155714399, i64 2155714588, i64 2155714632, i64 2155714655, i64 2155714688, i64 2155714719, i64 2155714758}
!6023 = !DILocation(line: 182, column: 2, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 182, column: 2)
!6025 = !DILocation(line: 183, column: 2, scope: !5944)
!6026 = !DILocation(line: 183, column: 2, scope: !5965)
!6027 = !{i64 2155717530, i64 2155717546, i64 2155717735, i64 2155717779, i64 2155717802, i64 2155717835, i64 2155717866, i64 2155717905}
!6028 = !DILocation(line: 183, column: 2, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 183, column: 2)
!6030 = !DILocation(line: 184, column: 2, scope: !5944)
!6031 = !DILocation(line: 184, column: 2, scope: !5969)
!6032 = !DILocation(line: 184, column: 2, scope: !5973)
!6033 = !{i64 2155721058, i64 2155721074, i64 2155721263, i64 2155721307, i64 2155721330, i64 2155721363, i64 2155721394, i64 2155721433}
!6034 = !DILocation(line: 184, column: 2, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !5973, file: !2, line: 184, column: 2)
!6036 = !DILocation(line: 184, column: 2, scope: !5976)
!6037 = !{i64 2155723651, i64 2155723667, i64 2155723856, i64 2155723900, i64 2155723923, i64 2155723956, i64 2155723987, i64 2155724026}
!6038 = !DILocation(line: 184, column: 2, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 184, column: 2)
!6040 = !DILocation(line: 184, column: 2, scope: !5979)
!6041 = !{i64 2155727361, i64 2155727377, i64 2155727566, i64 2155727610, i64 2155727633, i64 2155727666, i64 2155727697, i64 2155727736}
!6042 = !DILocation(line: 184, column: 2, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5979, file: !2, line: 184, column: 2)
!6044 = !DILocation(line: 188, column: 2, scope: !5944)
!6045 = !DILocation(line: 188, column: 2, scope: !5983)
!6046 = !{i64 2155730534, i64 2155730550, i64 2155730739, i64 2155730783, i64 2155730806, i64 2155730839, i64 2155730870, i64 2155730909}
!6047 = !DILocation(line: 188, column: 2, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !5983, file: !2, line: 188, column: 2)
!6049 = !DILocation(line: 189, column: 2, scope: !5944)
!6050 = !DILocation(line: 189, column: 2, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 189, column: 2)
!6052 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 189, column: 2)
!6053 = !DILocation(line: 189, column: 2, scope: !6052)
!6054 = !DILocation(line: 190, column: 2, scope: !5944)
!6055 = !DILocation(line: 190, column: 2, scope: !5987)
!6056 = !{i64 2155734200, i64 2155734216, i64 2155734405, i64 2155734449, i64 2155734472, i64 2155734505, i64 2155734536, i64 2155734575}
!6057 = !DILocation(line: 190, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 190, column: 2)
!6059 = !DILocation(line: 191, column: 2, scope: !5944)
!6060 = !DILocation(line: 193, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 193, column: 6)
!6062 = !DILocation(line: 193, column: 12, scope: !6061)
!6063 = !DILocation(line: 193, column: 15, scope: !6061)
!6064 = !DILocation(line: 193, column: 18, scope: !6061)
!6065 = !DILocation(line: 193, column: 27, scope: !6061)
!6066 = !DILocation(line: 193, column: 6, scope: !5944)
!6067 = !DILocation(line: 194, column: 29, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6069, file: !2, line: 194, column: 7)
!6069 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 193, column: 41)
!6070 = !DILocation(line: 194, column: 36, scope: !6068)
!6071 = !DILocation(line: 194, column: 43, scope: !6068)
!6072 = !DILocation(line: 194, column: 49, scope: !6068)
!6073 = !DILocation(line: 194, column: 7, scope: !6068)
!6074 = !DILocation(line: 194, column: 7, scope: !6069)
!6075 = !DILocation(line: 195, column: 4, scope: !6068)
!6076 = !DILocation(line: 196, column: 2, scope: !6069)
!6077 = !DILocation(line: 198, column: 32, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 198, column: 6)
!6079 = !DILocation(line: 198, column: 6, scope: !6078)
!6080 = !DILocation(line: 198, column: 6, scope: !5944)
!6081 = !DILocation(line: 199, column: 3, scope: !6078)
!6082 = !DILocation(line: 202, column: 13, scope: !5944)
!6083 = !DILocation(line: 202, column: 19, scope: !5944)
!6084 = !DILocation(line: 202, column: 2, scope: !5944)
!6085 = !DILocation(line: 202, column: 8, scope: !5944)
!6086 = !DILocation(line: 202, column: 11, scope: !5944)
!6087 = !DILocation(line: 204, column: 2, scope: !5944)
!6088 = !DILocation(line: 204, column: 8, scope: !5944)
!6089 = !DILocation(line: 204, column: 11, scope: !5944)
!6090 = !DILocation(line: 208, column: 29, scope: !5944)
!6091 = !DILocation(line: 208, column: 36, scope: !5944)
!6092 = !DILocation(line: 208, column: 13, scope: !5944)
!6093 = !DILocation(line: 208, column: 2, scope: !5944)
!6094 = !DILocation(line: 208, column: 8, scope: !5944)
!6095 = !DILocation(line: 208, column: 11, scope: !5944)
!6096 = !DILocation(line: 209, column: 29, scope: !5944)
!6097 = !DILocation(line: 209, column: 36, scope: !5944)
!6098 = !DILocation(line: 209, column: 13, scope: !5944)
!6099 = !DILocation(line: 209, column: 2, scope: !5944)
!6100 = !DILocation(line: 209, column: 8, scope: !5944)
!6101 = !DILocation(line: 209, column: 11, scope: !5944)
!6102 = !DILocation(line: 210, column: 29, scope: !5944)
!6103 = !DILocation(line: 210, column: 35, scope: !5944)
!6104 = !DILocation(line: 210, column: 38, scope: !5944)
!6105 = !DILocation(line: 210, column: 41, scope: !5944)
!6106 = !DILocation(line: 210, column: 13, scope: !5944)
!6107 = !DILocation(line: 210, column: 2, scope: !5944)
!6108 = !DILocation(line: 210, column: 8, scope: !5944)
!6109 = !DILocation(line: 210, column: 11, scope: !5944)
!6110 = !DILocation(line: 212, column: 28, scope: !5944)
!6111 = !DILocation(line: 212, column: 13, scope: !5944)
!6112 = !DILocation(line: 212, column: 2, scope: !5944)
!6113 = !DILocation(line: 212, column: 8, scope: !5944)
!6114 = !DILocation(line: 212, column: 11, scope: !5944)
!6115 = !DILocation(line: 231, column: 2, scope: !5944)
!6116 = !DILocation(line: 231, column: 8, scope: !5944)
!6117 = !DILocation(line: 231, column: 11, scope: !5944)
!6118 = !DILocation(line: 233, column: 6, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 233, column: 6)
!6120 = !DILocation(line: 233, column: 6, scope: !5944)
!6121 = !DILocation(line: 234, column: 18, scope: !6119)
!6122 = !DILocation(line: 234, column: 3, scope: !6119)
!6123 = !DILocation(line: 236, column: 2, scope: !5944)
!6124 = !DILocation(line: 238, column: 1, scope: !5944)
!6125 = !DILocation(line: 239, column: 2, scope: !5944)
!6126 = !DILocation(line: 240, column: 2, scope: !5944)
!6127 = !DILocation(line: 241, column: 1, scope: !5944)
!6128 = distinct !DISubprogram(name: "sigmask_to_save", scope: !5185, file: !5185, line: 563, type: !6129, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6131)
!6129 = !DISubroutineType(types: !6130)
!6130 = !{!5957}
!6131 = !{!6132}
!6132 = !DILocalVariable(name: "res", scope: !6128, file: !5185, line: 565, type: !5957)
!6133 = !DILocation(line: 565, column: 2, scope: !6128)
!6134 = !DILocation(line: 565, column: 12, scope: !6128)
!6135 = !DILocation(line: 565, column: 19, scope: !6128)
!6136 = !DILocation(line: 565, column: 28, scope: !6128)
!6137 = !DILocation(line: 566, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6128, file: !5185, line: 566, column: 6)
!6139 = !DILocation(line: 566, column: 6, scope: !6128)
!6140 = !DILocation(line: 567, column: 10, scope: !6138)
!6141 = !DILocation(line: 567, column: 19, scope: !6138)
!6142 = !DILocation(line: 567, column: 7, scope: !6138)
!6143 = !DILocation(line: 567, column: 3, scope: !6138)
!6144 = !DILocation(line: 568, column: 9, scope: !6128)
!6145 = !DILocation(line: 569, column: 1, scope: !6128)
!6146 = !DILocation(line: 568, column: 2, scope: !6128)
!6147 = !DISubprogram(name: "get_sigframe", scope: !6148, file: !6148, line: 19, type: !6149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6148 = !DIFile(filename: "./arch/x86/include/asm/sighandling.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f0ef5b9b911eeb1c272f896ffe120fb")
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!29, !5947, !3781, !44, !1992}
!6151 = distinct !DISubprogram(name: "frame_uc_flags", scope: !2, file: !2, line: 149, type: !6152, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6154)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!48, !3781}
!6154 = !{!6155, !6156}
!6155 = !DILocalVariable(name: "regs", arg: 1, scope: !6151, file: !2, line: 149, type: !3781)
!6156 = !DILocalVariable(name: "flags", scope: !6151, file: !2, line: 151, type: !48)
!6157 = !DILocation(line: 149, column: 53, scope: !6151)
!6158 = !DILocation(line: 151, column: 2, scope: !6151)
!6159 = !DILocation(line: 151, column: 16, scope: !6151)
!6160 = !DILocation(line: 153, column: 6, scope: !6151)
!6161 = !DILocation(line: 153, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6151, file: !2, line: 153, column: 6)
!6163 = !DILocation(line: 154, column: 9, scope: !6162)
!6164 = !DILocation(line: 154, column: 3, scope: !6162)
!6165 = !DILocation(line: 156, column: 9, scope: !6162)
!6166 = !DILocation(line: 158, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6151, file: !2, line: 158, column: 6)
!6168 = !DILocation(line: 158, column: 6, scope: !6151)
!6169 = !DILocation(line: 159, column: 9, scope: !6167)
!6170 = !DILocation(line: 159, column: 3, scope: !6167)
!6171 = !DILocation(line: 161, column: 9, scope: !6151)
!6172 = !DILocation(line: 162, column: 1, scope: !6151)
!6173 = !DILocation(line: 161, column: 2, scope: !6151)
!6174 = distinct !DISubprogram(name: "user_access_begin", scope: !279, file: !279, line: 519, type: !6175, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6177)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!875, !2170, !44}
!6177 = !{!6178, !6179}
!6178 = !DILocalVariable(name: "ptr", arg: 1, scope: !6174, file: !279, line: 519, type: !2170)
!6179 = !DILocalVariable(name: "len", arg: 2, scope: !6174, file: !279, line: 519, type: !44)
!6180 = !DILocation(line: 519, column: 79, scope: !6174)
!6181 = !DILocation(line: 519, column: 91, scope: !6174)
!6182 = !DILocation(line: 521, column: 6, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6174, file: !279, line: 521, column: 6)
!6184 = !DILocation(line: 521, column: 6, scope: !6174)
!6185 = !DILocation(line: 522, column: 3, scope: !6183)
!6186 = !DILocation(line: 523, column: 2, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6174, file: !279, line: 523, column: 2)
!6188 = !{i64 2151652848, i64 2151652876, i64 2151652882, i64 2151652898, i64 2151652914, i64 2151652941, i64 2151653255, i64 2151652612, i64 2151653261, i64 2151653309, i64 2151653373, i64 2151653437, i64 2151653494, i64 2151652693, i64 2151652718, i64 2151653701, i64 2151653823, i64 2151653762, i64 2151653837, i64 2151652810}
!6189 = !DILocation(line: 524, column: 2, scope: !6174)
!6190 = !DILocation(line: 525, column: 1, scope: !6174)
!6191 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6192, file: !6192, line: 76, type: !6193, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6195)
!6192 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6193 = !DISubroutineType(types: !6194)
!6194 = !{null, !29, !2170, !44, !44}
!6195 = !{!6196, !6197, !6198, !6199}
!6196 = !DILocalVariable(name: "to", arg: 1, scope: !6191, file: !6192, line: 76, type: !29)
!6197 = !DILocalVariable(name: "from", arg: 2, scope: !6191, file: !6192, line: 76, type: !2170)
!6198 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6191, file: !6192, line: 77, type: !44)
!6199 = !DILocalVariable(name: "left", arg: 4, scope: !6191, file: !6192, line: 77, type: !44)
!6200 = !DILocation(line: 76, column: 52, scope: !6191)
!6201 = !DILocation(line: 76, column: 68, scope: !6191)
!6202 = !DILocation(line: 77, column: 18, scope: !6191)
!6203 = !DILocation(line: 77, column: 34, scope: !6191)
!6204 = !DILocation(line: 79, column: 1, scope: !6191)
!6205 = distinct !DISubprogram(name: "get_current", scope: !6206, file: !6206, line: 39, type: !6207, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6209)
!6206 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!360}
!6209 = !{!6210, !6212, !6214}
!6210 = !DILocalVariable(name: "pscr_ret__", scope: !6211, file: !6206, line: 41, type: !360)
!6211 = distinct !DILexicalBlock(scope: !6205, file: !6206, line: 41, column: 9)
!6212 = !DILocalVariable(name: "__vpp_verify", scope: !6213, file: !6206, line: 41, type: !2170)
!6213 = distinct !DILexicalBlock(scope: !6211, file: !6206, line: 41, column: 9)
!6214 = !DILocalVariable(name: "pfo_val__", scope: !6215, file: !6206, line: 41, type: !420)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !6206, line: 41, column: 9)
!6216 = !DILocation(line: 41, column: 9, scope: !6211)
!6217 = !DILocation(line: 41, column: 9, scope: !6213)
!6218 = !DILocation(line: 41, column: 9, scope: !6215)
!6219 = !{i64 2148256475}
!6220 = !DILocation(line: 41, column: 9, scope: !6205)
!6221 = !DILocation(line: 41, column: 2, scope: !6205)
!6222 = distinct !DISubprogram(name: "__unsafe_setup_sigcontext", scope: !2, file: !2, line: 99, type: !6223, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6226)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!31, !6225, !29, !3781, !48}
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!6226 = !{!6227, !6228, !6229, !6230, !6231, !6233, !6234, !6236, !6237, !6239, !6240, !6242, !6243, !6245, !6246, !6248, !6249, !6251, !6252, !6254, !6255, !6257, !6258, !6260, !6261, !6263, !6264, !6266, !6267, !6269, !6270, !6272, !6273, !6275, !6276, !6278, !6279, !6281, !6282, !6284, !6285, !6287, !6288, !6290, !6291, !6293, !6295, !6297, !6298, !6300, !6301, !6303, !6304, !6306, !6307, !6309, !6310, !6312, !6313}
!6227 = !DILocalVariable(name: "sc", arg: 1, scope: !6222, file: !2, line: 99, type: !6225)
!6228 = !DILocalVariable(name: "fpstate", arg: 2, scope: !6222, file: !2, line: 99, type: !29)
!6229 = !DILocalVariable(name: "regs", arg: 3, scope: !6222, file: !2, line: 100, type: !3781)
!6230 = !DILocalVariable(name: "mask", arg: 4, scope: !6222, file: !2, line: 100, type: !48)
!6231 = !DILocalVariable(name: "__x", scope: !6232, file: !2, line: 102, type: !304)
!6232 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 102, column: 2)
!6233 = !DILocalVariable(name: "__ptr", scope: !6232, file: !2, line: 102, type: !346)
!6234 = !DILocalVariable(name: "__x", scope: !6235, file: !2, line: 103, type: !304)
!6235 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 103, column: 2)
!6236 = !DILocalVariable(name: "__ptr", scope: !6235, file: !2, line: 103, type: !346)
!6237 = !DILocalVariable(name: "__x", scope: !6238, file: !2, line: 104, type: !304)
!6238 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 104, column: 2)
!6239 = !DILocalVariable(name: "__ptr", scope: !6238, file: !2, line: 104, type: !346)
!6240 = !DILocalVariable(name: "__x", scope: !6241, file: !2, line: 105, type: !304)
!6241 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 105, column: 2)
!6242 = !DILocalVariable(name: "__ptr", scope: !6241, file: !2, line: 105, type: !346)
!6243 = !DILocalVariable(name: "__x", scope: !6244, file: !2, line: 106, type: !304)
!6244 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 106, column: 2)
!6245 = !DILocalVariable(name: "__ptr", scope: !6244, file: !2, line: 106, type: !346)
!6246 = !DILocalVariable(name: "__x", scope: !6247, file: !2, line: 107, type: !304)
!6247 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 107, column: 2)
!6248 = !DILocalVariable(name: "__ptr", scope: !6247, file: !2, line: 107, type: !346)
!6249 = !DILocalVariable(name: "__x", scope: !6250, file: !2, line: 108, type: !304)
!6250 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 108, column: 2)
!6251 = !DILocalVariable(name: "__ptr", scope: !6250, file: !2, line: 108, type: !346)
!6252 = !DILocalVariable(name: "__x", scope: !6253, file: !2, line: 109, type: !304)
!6253 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 109, column: 2)
!6254 = !DILocalVariable(name: "__ptr", scope: !6253, file: !2, line: 109, type: !346)
!6255 = !DILocalVariable(name: "__x", scope: !6256, file: !2, line: 110, type: !304)
!6256 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 110, column: 2)
!6257 = !DILocalVariable(name: "__ptr", scope: !6256, file: !2, line: 110, type: !346)
!6258 = !DILocalVariable(name: "__x", scope: !6259, file: !2, line: 111, type: !304)
!6259 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 111, column: 2)
!6260 = !DILocalVariable(name: "__ptr", scope: !6259, file: !2, line: 111, type: !346)
!6261 = !DILocalVariable(name: "__x", scope: !6262, file: !2, line: 112, type: !304)
!6262 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 112, column: 2)
!6263 = !DILocalVariable(name: "__ptr", scope: !6262, file: !2, line: 112, type: !346)
!6264 = !DILocalVariable(name: "__x", scope: !6265, file: !2, line: 113, type: !304)
!6265 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 113, column: 2)
!6266 = !DILocalVariable(name: "__ptr", scope: !6265, file: !2, line: 113, type: !346)
!6267 = !DILocalVariable(name: "__x", scope: !6268, file: !2, line: 114, type: !304)
!6268 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 114, column: 2)
!6269 = !DILocalVariable(name: "__ptr", scope: !6268, file: !2, line: 114, type: !346)
!6270 = !DILocalVariable(name: "__x", scope: !6271, file: !2, line: 115, type: !304)
!6271 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 115, column: 2)
!6272 = !DILocalVariable(name: "__ptr", scope: !6271, file: !2, line: 115, type: !346)
!6273 = !DILocalVariable(name: "__x", scope: !6274, file: !2, line: 116, type: !304)
!6274 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 116, column: 2)
!6275 = !DILocalVariable(name: "__ptr", scope: !6274, file: !2, line: 116, type: !346)
!6276 = !DILocalVariable(name: "__x", scope: !6277, file: !2, line: 117, type: !304)
!6277 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 117, column: 2)
!6278 = !DILocalVariable(name: "__ptr", scope: !6277, file: !2, line: 117, type: !346)
!6279 = !DILocalVariable(name: "__x", scope: !6280, file: !2, line: 119, type: !304)
!6280 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 119, column: 2)
!6281 = !DILocalVariable(name: "__ptr", scope: !6280, file: !2, line: 119, type: !346)
!6282 = !DILocalVariable(name: "__x", scope: !6283, file: !2, line: 120, type: !304)
!6283 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 120, column: 2)
!6284 = !DILocalVariable(name: "__ptr", scope: !6283, file: !2, line: 120, type: !346)
!6285 = !DILocalVariable(name: "__x", scope: !6286, file: !2, line: 121, type: !304)
!6286 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 121, column: 2)
!6287 = !DILocalVariable(name: "__ptr", scope: !6286, file: !2, line: 121, type: !346)
!6288 = !DILocalVariable(name: "__x", scope: !6289, file: !2, line: 122, type: !304)
!6289 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 122, column: 2)
!6290 = !DILocalVariable(name: "__ptr", scope: !6289, file: !2, line: 122, type: !346)
!6291 = !DILocalVariable(name: "__x", scope: !6292, file: !2, line: 123, type: !103)
!6292 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 123, column: 2)
!6293 = !DILocalVariable(name: "__ptr", scope: !6292, file: !2, line: 123, type: !6294)
!6294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!6295 = !DILocalVariable(name: "__x", scope: !6296, file: !2, line: 124, type: !103)
!6296 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 124, column: 2)
!6297 = !DILocalVariable(name: "__ptr", scope: !6296, file: !2, line: 124, type: !6294)
!6298 = !DILocalVariable(name: "__x", scope: !6299, file: !2, line: 125, type: !103)
!6299 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 125, column: 2)
!6300 = !DILocalVariable(name: "__ptr", scope: !6299, file: !2, line: 125, type: !6294)
!6301 = !DILocalVariable(name: "__x", scope: !6302, file: !2, line: 126, type: !103)
!6302 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 126, column: 2)
!6303 = !DILocalVariable(name: "__ptr", scope: !6302, file: !2, line: 126, type: !6294)
!6304 = !DILocalVariable(name: "__x", scope: !6305, file: !2, line: 128, type: !48)
!6305 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 128, column: 2)
!6306 = !DILocalVariable(name: "__ptr", scope: !6305, file: !2, line: 128, type: !357)
!6307 = !DILocalVariable(name: "__x", scope: !6308, file: !2, line: 131, type: !304)
!6308 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 131, column: 2)
!6309 = !DILocalVariable(name: "__ptr", scope: !6308, file: !2, line: 131, type: !346)
!6310 = !DILocalVariable(name: "__x", scope: !6311, file: !2, line: 132, type: !304)
!6311 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 132, column: 2)
!6312 = !DILocalVariable(name: "__ptr", scope: !6311, file: !2, line: 132, type: !346)
!6313 = !DILabel(scope: !6222, name: "Efault", file: !2, line: 134)
!6314 = !DILocation(line: 99, column: 53, scope: !6222)
!6315 = !DILocation(line: 99, column: 70, scope: !6222)
!6316 = !DILocation(line: 100, column: 24, scope: !6222)
!6317 = !DILocation(line: 100, column: 44, scope: !6222)
!6318 = !DILocation(line: 102, column: 2, scope: !6222)
!6319 = !DILocation(line: 102, column: 2, scope: !6232)
!6320 = !{i64 2155621382, i64 2155621398, i64 2155621587, i64 2155621631, i64 2155621654, i64 2155621687, i64 2155621718, i64 2155621757}
!6321 = !DILocation(line: 102, column: 2, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6232, file: !2, line: 102, column: 2)
!6323 = !DILocation(line: 103, column: 2, scope: !6222)
!6324 = !DILocation(line: 103, column: 2, scope: !6235)
!6325 = !{i64 2155624444, i64 2155624460, i64 2155624649, i64 2155624693, i64 2155624716, i64 2155624749, i64 2155624780, i64 2155624819}
!6326 = !DILocation(line: 103, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6235, file: !2, line: 103, column: 2)
!6328 = !DILocation(line: 104, column: 2, scope: !6222)
!6329 = !DILocation(line: 104, column: 2, scope: !6238)
!6330 = !{i64 2155627506, i64 2155627522, i64 2155627711, i64 2155627755, i64 2155627778, i64 2155627811, i64 2155627842, i64 2155627881}
!6331 = !DILocation(line: 104, column: 2, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6238, file: !2, line: 104, column: 2)
!6333 = !DILocation(line: 105, column: 2, scope: !6222)
!6334 = !DILocation(line: 105, column: 2, scope: !6241)
!6335 = !{i64 2155630568, i64 2155630584, i64 2155630773, i64 2155630817, i64 2155630840, i64 2155630873, i64 2155630904, i64 2155630943}
!6336 = !DILocation(line: 105, column: 2, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 105, column: 2)
!6338 = !DILocation(line: 106, column: 2, scope: !6222)
!6339 = !DILocation(line: 106, column: 2, scope: !6244)
!6340 = !{i64 2155633630, i64 2155633646, i64 2155633835, i64 2155633879, i64 2155633902, i64 2155633935, i64 2155633966, i64 2155634005}
!6341 = !DILocation(line: 106, column: 2, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 106, column: 2)
!6343 = !DILocation(line: 107, column: 2, scope: !6222)
!6344 = !DILocation(line: 107, column: 2, scope: !6247)
!6345 = !{i64 2155636692, i64 2155636708, i64 2155636897, i64 2155636941, i64 2155636964, i64 2155636997, i64 2155637028, i64 2155637067}
!6346 = !DILocation(line: 107, column: 2, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 107, column: 2)
!6348 = !DILocation(line: 108, column: 2, scope: !6222)
!6349 = !DILocation(line: 108, column: 2, scope: !6250)
!6350 = !{i64 2155639754, i64 2155639770, i64 2155639959, i64 2155640003, i64 2155640026, i64 2155640059, i64 2155640090, i64 2155640129}
!6351 = !DILocation(line: 108, column: 2, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6250, file: !2, line: 108, column: 2)
!6353 = !DILocation(line: 109, column: 2, scope: !6222)
!6354 = !DILocation(line: 109, column: 2, scope: !6253)
!6355 = !{i64 2155642816, i64 2155642832, i64 2155643021, i64 2155643065, i64 2155643088, i64 2155643121, i64 2155643152, i64 2155643191}
!6356 = !DILocation(line: 109, column: 2, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 109, column: 2)
!6358 = !DILocation(line: 110, column: 2, scope: !6222)
!6359 = !DILocation(line: 110, column: 2, scope: !6256)
!6360 = !{i64 2155645878, i64 2155645894, i64 2155646083, i64 2155646127, i64 2155646150, i64 2155646183, i64 2155646214, i64 2155646253}
!6361 = !DILocation(line: 110, column: 2, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 110, column: 2)
!6363 = !DILocation(line: 111, column: 2, scope: !6222)
!6364 = !DILocation(line: 111, column: 2, scope: !6259)
!6365 = !{i64 2155648940, i64 2155648956, i64 2155649145, i64 2155649189, i64 2155649212, i64 2155649245, i64 2155649276, i64 2155649315}
!6366 = !DILocation(line: 111, column: 2, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 111, column: 2)
!6368 = !DILocation(line: 112, column: 2, scope: !6222)
!6369 = !DILocation(line: 112, column: 2, scope: !6262)
!6370 = !{i64 2155652013, i64 2155652029, i64 2155652218, i64 2155652262, i64 2155652285, i64 2155652318, i64 2155652349, i64 2155652388}
!6371 = !DILocation(line: 112, column: 2, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 112, column: 2)
!6373 = !DILocation(line: 113, column: 2, scope: !6222)
!6374 = !DILocation(line: 113, column: 2, scope: !6265)
!6375 = !{i64 2155655086, i64 2155655102, i64 2155655291, i64 2155655335, i64 2155655358, i64 2155655391, i64 2155655422, i64 2155655461}
!6376 = !DILocation(line: 113, column: 2, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6265, file: !2, line: 113, column: 2)
!6378 = !DILocation(line: 114, column: 2, scope: !6222)
!6379 = !DILocation(line: 114, column: 2, scope: !6268)
!6380 = !{i64 2155658159, i64 2155658175, i64 2155658364, i64 2155658408, i64 2155658431, i64 2155658464, i64 2155658495, i64 2155658534}
!6381 = !DILocation(line: 114, column: 2, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6268, file: !2, line: 114, column: 2)
!6383 = !DILocation(line: 115, column: 2, scope: !6222)
!6384 = !DILocation(line: 115, column: 2, scope: !6271)
!6385 = !{i64 2155665293, i64 2155665309, i64 2155665498, i64 2155665542, i64 2155665565, i64 2155665598, i64 2155665629, i64 2155665668}
!6386 = !DILocation(line: 115, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6271, file: !2, line: 115, column: 2)
!6388 = !DILocation(line: 116, column: 2, scope: !6222)
!6389 = !DILocation(line: 116, column: 2, scope: !6274)
!6390 = !{i64 2155668366, i64 2155668382, i64 2155668571, i64 2155668615, i64 2155668638, i64 2155668671, i64 2155668702, i64 2155668741}
!6391 = !DILocation(line: 116, column: 2, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6274, file: !2, line: 116, column: 2)
!6393 = !DILocation(line: 117, column: 2, scope: !6222)
!6394 = !DILocation(line: 117, column: 2, scope: !6277)
!6395 = !{i64 2155671439, i64 2155671455, i64 2155671644, i64 2155671688, i64 2155671711, i64 2155671744, i64 2155671775, i64 2155671814}
!6396 = !DILocation(line: 117, column: 2, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6277, file: !2, line: 117, column: 2)
!6398 = !DILocation(line: 119, column: 2, scope: !6222)
!6399 = !DILocation(line: 119, column: 2, scope: !6280)
!6400 = !{i64 2155674595, i64 2155674611, i64 2155674800, i64 2155674844, i64 2155674867, i64 2155674900, i64 2155674931, i64 2155674970}
!6401 = !DILocation(line: 119, column: 2, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 119, column: 2)
!6403 = !DILocation(line: 120, column: 2, scope: !6222)
!6404 = !DILocation(line: 120, column: 2, scope: !6283)
!6405 = !{i64 2155677730, i64 2155677746, i64 2155677935, i64 2155677979, i64 2155678002, i64 2155678035, i64 2155678066, i64 2155678105}
!6406 = !DILocation(line: 120, column: 2, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6283, file: !2, line: 120, column: 2)
!6408 = !DILocation(line: 121, column: 2, scope: !6222)
!6409 = !DILocation(line: 121, column: 2, scope: !6286)
!6410 = !{i64 2155680792, i64 2155680808, i64 2155680997, i64 2155681041, i64 2155681064, i64 2155681097, i64 2155681128, i64 2155681167}
!6411 = !DILocation(line: 121, column: 2, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6286, file: !2, line: 121, column: 2)
!6413 = !DILocation(line: 122, column: 2, scope: !6222)
!6414 = !DILocation(line: 122, column: 2, scope: !6289)
!6415 = !{i64 2155683887, i64 2155683903, i64 2155684092, i64 2155684136, i64 2155684159, i64 2155684192, i64 2155684223, i64 2155684262}
!6416 = !DILocation(line: 122, column: 2, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 122, column: 2)
!6418 = !DILocation(line: 123, column: 2, scope: !6222)
!6419 = !DILocation(line: 123, column: 2, scope: !6292)
!6420 = !{i64 2155685880, i64 2155685896, i64 2155686085, i64 2155686129, i64 2155686152, i64 2155686185, i64 2155686216, i64 2155686255}
!6421 = !DILocation(line: 123, column: 2, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6292, file: !2, line: 123, column: 2)
!6423 = !DILocation(line: 124, column: 2, scope: !6222)
!6424 = !DILocation(line: 124, column: 2, scope: !6296)
!6425 = !{i64 2155688928, i64 2155688944, i64 2155689133, i64 2155689177, i64 2155689200, i64 2155689233, i64 2155689264, i64 2155689303}
!6426 = !DILocation(line: 124, column: 2, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6296, file: !2, line: 124, column: 2)
!6428 = !DILocation(line: 125, column: 2, scope: !6222)
!6429 = !DILocation(line: 125, column: 2, scope: !6299)
!6430 = !{i64 2155691976, i64 2155691992, i64 2155692181, i64 2155692225, i64 2155692248, i64 2155692281, i64 2155692312, i64 2155692351}
!6431 = !DILocation(line: 125, column: 2, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6299, file: !2, line: 125, column: 2)
!6433 = !DILocation(line: 126, column: 2, scope: !6222)
!6434 = !DILocation(line: 126, column: 2, scope: !6302)
!6435 = !{i64 2155695038, i64 2155695054, i64 2155695243, i64 2155695287, i64 2155695310, i64 2155695343, i64 2155695374, i64 2155695413}
!6436 = !DILocation(line: 126, column: 2, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 126, column: 2)
!6438 = !DILocation(line: 128, column: 2, scope: !6222)
!6439 = !DILocation(line: 128, column: 2, scope: !6305)
!6440 = !{i64 2155699447, i64 2155699463, i64 2155699652, i64 2155699696, i64 2155699719, i64 2155699752, i64 2155699783, i64 2155699822}
!6441 = !DILocation(line: 128, column: 2, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6305, file: !2, line: 128, column: 2)
!6443 = !DILocation(line: 131, column: 2, scope: !6222)
!6444 = !DILocation(line: 131, column: 2, scope: !6308)
!6445 = !{i64 2155702546, i64 2155702562, i64 2155702751, i64 2155702795, i64 2155702818, i64 2155702851, i64 2155702882, i64 2155702921}
!6446 = !DILocation(line: 131, column: 2, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 131, column: 2)
!6448 = !DILocation(line: 132, column: 2, scope: !6222)
!6449 = !DILocation(line: 132, column: 2, scope: !6311)
!6450 = !{i64 2155705667, i64 2155705683, i64 2155705872, i64 2155705916, i64 2155705939, i64 2155705972, i64 2155706003, i64 2155706042}
!6451 = !DILocation(line: 132, column: 2, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6311, file: !2, line: 132, column: 2)
!6453 = !DILocation(line: 133, column: 2, scope: !6222)
!6454 = !DILocation(line: 134, column: 1, scope: !6222)
!6455 = !DILocation(line: 135, column: 2, scope: !6222)
!6456 = !DILocation(line: 136, column: 1, scope: !6222)
!6457 = distinct !DISubprogram(name: "clac", scope: !6458, file: !6458, line: 30, type: !2758, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6458 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!6459 = !DILocation(line: 33, column: 2, scope: !6457)
!6460 = !{i64 2151084074, i64 2151084102, i64 2151084108, i64 2151084124, i64 2151084140, i64 2151084167, i64 2151084481, i64 2151083824, i64 2151084487, i64 2151084535, i64 2151084599, i64 2151084663, i64 2151084720, i64 2151083905, i64 2151083930, i64 2151084927, i64 2151085063, i64 2151084988, i64 2151085077, i64 2151084022}
!6461 = !DILocation(line: 34, column: 1, scope: !6457)
!6462 = !DISubprogram(name: "copy_siginfo_to_user", scope: !810, file: !810, line: 35, type: !6463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6463 = !DISubroutineType(types: !6464)
!6464 = !{!31, !6465, !6467}
!6465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6466, size: 64)
!6466 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !5481, line: 144, baseType: !5919)
!6467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6468, size: 64)
!6468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5470)
!6469 = distinct !DISubprogram(name: "setup_signal_shadow_stack", scope: !6470, file: !6470, line: 33, type: !6471, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6473)
!6470 = !DIFile(filename: "./arch/x86/include/asm/shstk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2df96aea4faccd2912c4c1361f912faa")
!6471 = !DISubroutineType(types: !6472)
!6472 = !{!31, !5947}
!6473 = !{!6474}
!6474 = !DILocalVariable(name: "ksig", arg: 1, scope: !6469, file: !6470, line: 33, type: !5947)
!6475 = !DILocation(line: 33, column: 61, scope: !6469)
!6476 = !DILocation(line: 33, column: 69, scope: !6469)
!6477 = distinct !DISubprogram(name: "force_valid_ss", scope: !2, file: !2, line: 28, type: !6478, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6480)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{null, !3781}
!6480 = !{!6481, !6482}
!6481 = !DILocalVariable(name: "regs", arg: 1, scope: !6477, file: !2, line: 28, type: !3781)
!6482 = !DILocalVariable(name: "ar", scope: !6477, file: !2, line: 30, type: !354)
!6483 = !DILocation(line: 28, column: 44, scope: !6477)
!6484 = !DILocation(line: 30, column: 2, scope: !6477)
!6485 = !DILocation(line: 30, column: 6, scope: !6477)
!6486 = !DILocation(line: 36, column: 31, scope: !6477)
!6487 = !DILocation(line: 36, column: 37, scope: !6477)
!6488 = !DILocation(line: 31, column: 2, scope: !6477)
!6489 = !{i64 737, i64 760, i64 780, i64 831}
!6490 = !DILocation(line: 44, column: 5, scope: !6477)
!6491 = !DILocation(line: 45, column: 6, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6477, file: !2, line: 45, column: 6)
!6493 = !DILocation(line: 45, column: 9, scope: !6492)
!6494 = !DILocation(line: 45, column: 53, scope: !6492)
!6495 = !DILocation(line: 46, column: 6, scope: !6492)
!6496 = !DILocation(line: 46, column: 9, scope: !6492)
!6497 = !DILocation(line: 45, column: 6, scope: !6477)
!6498 = !DILocation(line: 47, column: 3, scope: !6492)
!6499 = !DILocation(line: 47, column: 9, scope: !6492)
!6500 = !DILocation(line: 47, column: 12, scope: !6492)
!6501 = !DILocation(line: 48, column: 1, scope: !6477)
!6502 = distinct !DISubprogram(name: "__do_sys_rt_sigreturn", scope: !2, file: !2, line: 246, type: !6503, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6507)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!358, !6505}
!6505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6506, size: 64)
!6506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!6507 = !{!6508, !6509, !6510, !6512, !6513, !6514, !6515, !6518, !6519, !6521, !6524, !6525, !6527}
!6508 = !DILocalVariable(name: "__unused", arg: 1, scope: !6502, file: !2, line: 246, type: !6505)
!6509 = !DILocalVariable(name: "regs", scope: !6502, file: !2, line: 248, type: !3781)
!6510 = !DILocalVariable(name: "__ptr", scope: !6511, file: !2, line: 248, type: !48)
!6511 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 248, column: 25)
!6512 = !DILocalVariable(name: "frame", scope: !6502, file: !2, line: 249, type: !5912)
!6513 = !DILocalVariable(name: "set", scope: !6502, file: !2, line: 250, type: !337)
!6514 = !DILocalVariable(name: "uc_flags", scope: !6502, file: !2, line: 251, type: !48)
!6515 = !DILocalVariable(name: "__ret_gu", scope: !6516, file: !2, line: 256, type: !31)
!6516 = distinct !DILexicalBlock(scope: !6517, file: !2, line: 256, column: 6)
!6517 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 256, column: 6)
!6518 = !DILocalVariable(name: "__val_gu", scope: !6516, file: !2, line: 256, type: !48)
!6519 = !DILocalVariable(name: "__tmp", scope: !6520, file: !2, line: 256, type: !420)
!6520 = distinct !DILexicalBlock(scope: !6516, file: !2, line: 256, column: 6)
!6521 = !DILocalVariable(name: "__ret_gu", scope: !6522, file: !2, line: 258, type: !31)
!6522 = distinct !DILexicalBlock(scope: !6523, file: !2, line: 258, column: 6)
!6523 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 258, column: 6)
!6524 = !DILocalVariable(name: "__val_gu", scope: !6522, file: !2, line: 258, type: !48)
!6525 = !DILocalVariable(name: "__tmp", scope: !6526, file: !2, line: 258, type: !420)
!6526 = distinct !DILexicalBlock(scope: !6522, file: !2, line: 258, column: 6)
!6527 = !DILabel(scope: !6502, name: "badframe", file: !2, line: 274)
!6528 = !DILocation(line: 246, column: 1, scope: !6502)
!6529 = !DILocation(line: 248, column: 2, scope: !6502)
!6530 = !DILocation(line: 248, column: 18, scope: !6502)
!6531 = !DILocation(line: 248, column: 25, scope: !6511)
!6532 = !DILocation(line: 248, column: 25, scope: !6502)
!6533 = !DILocation(line: 249, column: 2, scope: !6502)
!6534 = !DILocation(line: 249, column: 29, scope: !6502)
!6535 = !DILocation(line: 250, column: 2, scope: !6502)
!6536 = !DILocation(line: 250, column: 11, scope: !6502)
!6537 = !DILocation(line: 251, column: 2, scope: !6502)
!6538 = !DILocation(line: 251, column: 16, scope: !6502)
!6539 = !DILocation(line: 253, column: 40, scope: !6502)
!6540 = !DILocation(line: 253, column: 46, scope: !6502)
!6541 = !DILocation(line: 253, column: 49, scope: !6502)
!6542 = !DILocation(line: 253, column: 10, scope: !6502)
!6543 = !DILocation(line: 253, column: 8, scope: !6502)
!6544 = !DILocation(line: 254, column: 7, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 254, column: 6)
!6546 = !DILocation(line: 254, column: 6, scope: !6502)
!6547 = !DILocation(line: 255, column: 3, scope: !6545)
!6548 = !DILocation(line: 256, column: 6, scope: !6516)
!6549 = !{i64 2155737041}
!6550 = !DILocation(line: 256, column: 6, scope: !6520)
!6551 = !DILocation(line: 256, column: 6, scope: !6517)
!6552 = !DILocation(line: 256, column: 6, scope: !6502)
!6553 = !DILocation(line: 257, column: 3, scope: !6517)
!6554 = !DILocation(line: 258, column: 6, scope: !6522)
!6555 = !{i64 2155739545}
!6556 = !DILocation(line: 258, column: 6, scope: !6526)
!6557 = !DILocation(line: 258, column: 6, scope: !6523)
!6558 = !DILocation(line: 258, column: 6, scope: !6502)
!6559 = !DILocation(line: 259, column: 3, scope: !6523)
!6560 = !DILocation(line: 261, column: 2, scope: !6502)
!6561 = !DILocation(line: 263, column: 24, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 263, column: 6)
!6563 = !DILocation(line: 263, column: 31, scope: !6562)
!6564 = !DILocation(line: 263, column: 34, scope: !6562)
!6565 = !DILocation(line: 263, column: 6, scope: !6562)
!6566 = !DILocation(line: 263, column: 6, scope: !6502)
!6567 = !DILocation(line: 264, column: 3, scope: !6562)
!6568 = !DILocation(line: 266, column: 26, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 266, column: 6)
!6570 = !DILocation(line: 266, column: 33, scope: !6569)
!6571 = !DILocation(line: 266, column: 40, scope: !6569)
!6572 = !DILocation(line: 266, column: 43, scope: !6569)
!6573 = !DILocation(line: 266, column: 56, scope: !6569)
!6574 = !DILocation(line: 266, column: 7, scope: !6569)
!6575 = !DILocation(line: 266, column: 6, scope: !6502)
!6576 = !DILocation(line: 267, column: 3, scope: !6569)
!6577 = !DILocation(line: 269, column: 6, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6502, file: !2, line: 269, column: 6)
!6579 = !DILocation(line: 269, column: 6, scope: !6502)
!6580 = !DILocation(line: 270, column: 3, scope: !6578)
!6581 = !DILocation(line: 272, column: 9, scope: !6502)
!6582 = !DILocation(line: 272, column: 15, scope: !6502)
!6583 = !DILocation(line: 272, column: 2, scope: !6502)
!6584 = !DILocation(line: 274, column: 1, scope: !6502)
!6585 = !DILocation(line: 275, column: 15, scope: !6502)
!6586 = !DILocation(line: 275, column: 21, scope: !6502)
!6587 = !DILocation(line: 275, column: 2, scope: !6502)
!6588 = !DILocation(line: 276, column: 2, scope: !6502)
!6589 = !DILocation(line: 277, column: 1, scope: !6502)
!6590 = distinct !DISubprogram(name: "sigaction_compat_abi", scope: !2, file: !2, line: 392, type: !6591, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6594)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{null, !6593, !6593}
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!6594 = !{!6595, !6596}
!6595 = !DILocalVariable(name: "act", arg: 1, scope: !6590, file: !2, line: 392, type: !6593)
!6596 = !DILocalVariable(name: "oact", arg: 2, scope: !6590, file: !2, line: 392, type: !6593)
!6597 = !DILocation(line: 392, column: 47, scope: !6590)
!6598 = !DILocation(line: 392, column: 72, scope: !6590)
!6599 = !DILocation(line: 394, column: 7, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6590, file: !2, line: 394, column: 6)
!6601 = !DILocation(line: 394, column: 6, scope: !6590)
!6602 = !DILocation(line: 395, column: 3, scope: !6600)
!6603 = !DILocation(line: 397, column: 6, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6590, file: !2, line: 397, column: 6)
!6605 = !DILocation(line: 397, column: 6, scope: !6590)
!6606 = !DILocation(line: 398, column: 3, scope: !6604)
!6607 = !DILocation(line: 398, column: 8, scope: !6604)
!6608 = !DILocation(line: 398, column: 11, scope: !6604)
!6609 = !DILocation(line: 398, column: 20, scope: !6604)
!6610 = !DILocation(line: 399, column: 6, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6590, file: !2, line: 399, column: 6)
!6612 = !DILocation(line: 399, column: 6, scope: !6590)
!6613 = !DILocation(line: 400, column: 3, scope: !6611)
!6614 = !DILocation(line: 400, column: 8, scope: !6611)
!6615 = !DILocation(line: 400, column: 11, scope: !6611)
!6616 = !DILocation(line: 400, column: 20, scope: !6611)
!6617 = !DILocation(line: 401, column: 1, scope: !6590)
!6618 = distinct !DISubprogram(name: "in_x32_syscall", scope: !6619, file: !6619, line: 83, type: !2160, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6619 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!6620 = !DILocation(line: 89, column: 2, scope: !6618)
!6621 = distinct !DISubprogram(name: "test_restore_sigmask", scope: !5185, file: !5185, line: 530, type: !2160, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6622 = !DILocation(line: 532, column: 9, scope: !6621)
!6623 = !DILocation(line: 532, column: 18, scope: !6621)
!6624 = !DILocation(line: 532, column: 2, scope: !6621)
!6625 = distinct !DISubprogram(name: "arch_test_bit", scope: !6626, file: !6626, line: 237, type: !6627, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6632)
!6626 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6627 = !DISubroutineType(types: !6628)
!6628 = !{!875, !48, !6629}
!6629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6630, size: 64)
!6630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6631)
!6631 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!6632 = !{!6633, !6634}
!6633 = !DILocalVariable(name: "nr", arg: 1, scope: !6625, file: !6626, line: 237, type: !48)
!6634 = !DILocalVariable(name: "addr", arg: 2, scope: !6625, file: !6626, line: 237, type: !6629)
!6635 = !DILocation(line: 237, column: 29, scope: !6625)
!6636 = !DILocation(line: 237, column: 63, scope: !6625)
!6637 = !DILocation(line: 239, column: 30, scope: !6625)
!6638 = !DILocation(line: 239, column: 9, scope: !6625)
!6639 = !DILocation(line: 239, column: 54, scope: !6625)
!6640 = !DILocation(line: 239, column: 58, scope: !6625)
!6641 = !DILocation(line: 239, column: 36, scope: !6625)
!6642 = !DILocation(line: 240, column: 26, scope: !6625)
!6643 = !DILocation(line: 240, column: 30, scope: !6625)
!6644 = !DILocation(line: 240, column: 8, scope: !6625)
!6645 = !DILocation(line: 239, column: 2, scope: !6625)
!6646 = distinct !DISubprogram(name: "user_64bit_mode", scope: !3783, file: !3783, line: 227, type: !6647, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6649)
!6647 = !DISubroutineType(types: !6648)
!6648 = !{!875, !3781}
!6649 = !{!6650}
!6650 = !DILocalVariable(name: "regs", arg: 1, scope: !6646, file: !3783, line: 227, type: !3781)
!6651 = !DILocation(line: 227, column: 52, scope: !6646)
!6652 = !DILocation(line: 235, column: 9, scope: !6646)
!6653 = !DILocation(line: 235, column: 15, scope: !6646)
!6654 = !DILocation(line: 235, column: 18, scope: !6646)
!6655 = !DILocation(line: 235, column: 2, scope: !6646)
!6656 = distinct !DISubprogram(name: "constant_test_bit", scope: !6626, file: !6626, line: 204, type: !6657, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6659)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!875, !358, !6629}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "nr", arg: 1, scope: !6656, file: !6626, line: 204, type: !358)
!6661 = !DILocalVariable(name: "addr", arg: 2, scope: !6656, file: !6626, line: 204, type: !6629)
!6662 = !DILocation(line: 204, column: 52, scope: !6656)
!6663 = !DILocation(line: 204, column: 86, scope: !6656)
!6664 = !DILocation(line: 206, column: 19, scope: !6656)
!6665 = !DILocation(line: 206, column: 22, scope: !6656)
!6666 = !DILocation(line: 206, column: 15, scope: !6656)
!6667 = !DILocation(line: 207, column: 4, scope: !6656)
!6668 = !DILocation(line: 207, column: 9, scope: !6656)
!6669 = !DILocation(line: 207, column: 12, scope: !6656)
!6670 = !DILocation(line: 206, column: 44, scope: !6656)
!6671 = !DILocation(line: 207, column: 37, scope: !6656)
!6672 = !DILocation(line: 206, column: 2, scope: !6656)
!6673 = distinct !DISubprogram(name: "variable_test_bit", scope: !6626, file: !6626, line: 224, type: !6657, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6674)
!6674 = !{!6675, !6676, !6677}
!6675 = !DILocalVariable(name: "nr", arg: 1, scope: !6673, file: !6626, line: 224, type: !358)
!6676 = !DILocalVariable(name: "addr", arg: 2, scope: !6673, file: !6626, line: 224, type: !6629)
!6677 = !DILocalVariable(name: "oldbit", scope: !6673, file: !6626, line: 226, type: !875)
!6678 = !DILocation(line: 224, column: 52, scope: !6673)
!6679 = !DILocation(line: 224, column: 86, scope: !6673)
!6680 = !DILocation(line: 226, column: 2, scope: !6673)
!6681 = !DILocation(line: 226, column: 7, scope: !6673)
!6682 = !DILocation(line: 231, column: 33, scope: !6673)
!6683 = !DILocation(line: 231, column: 46, scope: !6673)
!6684 = !DILocation(line: 228, column: 2, scope: !6673)
!6685 = !{i64 2147813170, i64 2147813244}
!6686 = !DILocation(line: 233, column: 9, scope: !6673)
!6687 = !{i8 0, i8 2}
!6688 = !DILocation(line: 234, column: 1, scope: !6673)
!6689 = !DILocation(line: 233, column: 2, scope: !6673)
!6690 = distinct !DISubprogram(name: "__access_ok", scope: !6691, file: !6691, line: 85, type: !6692, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6694)
!6691 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6692 = !DISubroutineType(types: !6693)
!6693 = !{!875, !2170, !48}
!6694 = !{!6695, !6696, !6697}
!6695 = !DILocalVariable(name: "ptr", arg: 1, scope: !6690, file: !6691, line: 85, type: !2170)
!6696 = !DILocalVariable(name: "size", arg: 2, scope: !6690, file: !6691, line: 85, type: !48)
!6697 = !DILocalVariable(name: "sum", scope: !6698, file: !6691, line: 90, type: !48)
!6698 = distinct !DILexicalBlock(scope: !6699, file: !6691, line: 89, column: 9)
!6699 = distinct !DILexicalBlock(scope: !6690, file: !6691, line: 87, column: 6)
!6700 = !DILocation(line: 85, column: 51, scope: !6690)
!6701 = !DILocation(line: 85, column: 70, scope: !6690)
!6702 = !DILocation(line: 87, column: 27, scope: !6699)
!6703 = !DILocation(line: 87, column: 32, scope: !6699)
!6704 = !DILocation(line: 87, column: 6, scope: !6699)
!6705 = !DILocation(line: 87, column: 46, scope: !6699)
!6706 = !DILocation(line: 87, column: 49, scope: !6699)
!6707 = !DILocation(line: 87, column: 54, scope: !6699)
!6708 = !DILocation(line: 87, column: 6, scope: !6690)
!6709 = !DILocation(line: 88, column: 10, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6699, file: !6691, line: 87, column: 68)
!6711 = !DILocation(line: 88, column: 3, scope: !6710)
!6712 = !DILocation(line: 90, column: 3, scope: !6698)
!6713 = !DILocation(line: 90, column: 17, scope: !6698)
!6714 = !DILocation(line: 90, column: 23, scope: !6698)
!6715 = !DILocation(line: 90, column: 45, scope: !6698)
!6716 = !DILocation(line: 90, column: 30, scope: !6698)
!6717 = !DILocation(line: 90, column: 28, scope: !6698)
!6718 = !DILocation(line: 91, column: 10, scope: !6698)
!6719 = !DILocation(line: 91, column: 34, scope: !6698)
!6720 = !DILocation(line: 91, column: 37, scope: !6698)
!6721 = !DILocation(line: 91, column: 59, scope: !6698)
!6722 = !DILocation(line: 91, column: 44, scope: !6698)
!6723 = !DILocation(line: 91, column: 41, scope: !6698)
!6724 = !DILocation(line: 0, scope: !6698)
!6725 = !DILocation(line: 91, column: 3, scope: !6698)
!6726 = !DILocation(line: 92, column: 2, scope: !6699)
!6727 = !DILocation(line: 93, column: 1, scope: !6690)
!6728 = distinct !DISubprogram(name: "stac", scope: !6458, file: !6458, line: 36, type: !2758, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6729 = !DILocation(line: 39, column: 2, scope: !6728)
!6730 = !{i64 2151085741, i64 2151085769, i64 2151085775, i64 2151085791, i64 2151085807, i64 2151085834, i64 2151086148, i64 2151085491, i64 2151086154, i64 2151086202, i64 2151086266, i64 2151086330, i64 2151086387, i64 2151085572, i64 2151085597, i64 2151086594, i64 2151086730, i64 2151086655, i64 2151086744, i64 2151085689}
!6731 = !DILocation(line: 40, column: 1, scope: !6728)
!6732 = distinct !DISubprogram(name: "task_stack_page", scope: !6733, file: !6733, line: 20, type: !6734, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6738)
!6733 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!29, !6736}
!6736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6737, size: 64)
!6737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!6738 = !{!6739}
!6739 = !DILocalVariable(name: "task", arg: 1, scope: !6732, file: !6733, line: 20, type: !6736)
!6740 = !DILocation(line: 20, column: 72, scope: !6732)
!6741 = !DILocation(line: 22, column: 9, scope: !6732)
!6742 = !DILocation(line: 22, column: 15, scope: !6732)
!6743 = !DILocation(line: 22, column: 2, scope: !6732)
!6744 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6192, file: !6192, line: 70, type: !6745, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6747)
!6745 = !DISubroutineType(types: !6746)
!6746 = !{null, !2170, !44}
!6747 = !{!6748, !6749}
!6748 = !DILocalVariable(name: "address", arg: 1, scope: !6744, file: !6192, line: 70, type: !2170)
!6749 = !DILocalVariable(name: "size", arg: 2, scope: !6744, file: !6192, line: 70, type: !44)
!6750 = !DILocation(line: 70, column: 54, scope: !6744)
!6751 = !DILocation(line: 70, column: 70, scope: !6744)
!6752 = !DILocation(line: 72, column: 1, scope: !6744)
!6753 = !DISubprogram(name: "set_current_blocked", scope: !810, file: !810, line: 288, type: !6754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6754 = !DISubroutineType(types: !6755)
!6755 = !{null, !5957}
!6756 = !DISubprogram(name: "restore_altstack", scope: !810, file: !810, line: 456, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!31, !6759}
!6759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6760, size: 64)
!6760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!6761 = distinct !DISubprogram(name: "restore_sigcontext", scope: !2, file: !2, line: 50, type: !6762, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6764)
!6762 = !DISubroutineType(types: !6763)
!6763 = !{!875, !3781, !6225, !48}
!6764 = !{!6765, !6766, !6767, !6768}
!6765 = !DILocalVariable(name: "regs", arg: 1, scope: !6761, file: !2, line: 50, type: !3781)
!6766 = !DILocalVariable(name: "usc", arg: 2, scope: !6761, file: !2, line: 51, type: !6225)
!6767 = !DILocalVariable(name: "uc_flags", arg: 3, scope: !6761, file: !2, line: 52, type: !48)
!6768 = !DILocalVariable(name: "sc", scope: !6761, file: !2, line: 54, type: !300)
!6769 = !DILocation(line: 50, column: 48, scope: !6761)
!6770 = !DILocation(line: 51, column: 37, scope: !6761)
!6771 = !DILocation(line: 52, column: 25, scope: !6761)
!6772 = !DILocation(line: 54, column: 2, scope: !6761)
!6773 = !DILocation(line: 54, column: 20, scope: !6761)
!6774 = !DILocation(line: 57, column: 2, scope: !6761)
!6775 = !DILocation(line: 57, column: 11, scope: !6761)
!6776 = !DILocation(line: 57, column: 25, scope: !6761)
!6777 = !DILocation(line: 57, column: 28, scope: !6761)
!6778 = !DILocation(line: 59, column: 26, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6761, file: !2, line: 59, column: 6)
!6780 = !DILocation(line: 59, column: 6, scope: !6779)
!6781 = !DILocation(line: 59, column: 6, scope: !6761)
!6782 = !DILocation(line: 60, column: 3, scope: !6779)
!6783 = !DILocation(line: 62, column: 16, scope: !6761)
!6784 = !DILocation(line: 62, column: 2, scope: !6761)
!6785 = !DILocation(line: 62, column: 8, scope: !6761)
!6786 = !DILocation(line: 62, column: 11, scope: !6761)
!6787 = !DILocation(line: 63, column: 16, scope: !6761)
!6788 = !DILocation(line: 63, column: 2, scope: !6761)
!6789 = !DILocation(line: 63, column: 8, scope: !6761)
!6790 = !DILocation(line: 63, column: 11, scope: !6761)
!6791 = !DILocation(line: 64, column: 16, scope: !6761)
!6792 = !DILocation(line: 64, column: 2, scope: !6761)
!6793 = !DILocation(line: 64, column: 8, scope: !6761)
!6794 = !DILocation(line: 64, column: 11, scope: !6761)
!6795 = !DILocation(line: 65, column: 16, scope: !6761)
!6796 = !DILocation(line: 65, column: 2, scope: !6761)
!6797 = !DILocation(line: 65, column: 8, scope: !6761)
!6798 = !DILocation(line: 65, column: 11, scope: !6761)
!6799 = !DILocation(line: 66, column: 16, scope: !6761)
!6800 = !DILocation(line: 66, column: 2, scope: !6761)
!6801 = !DILocation(line: 66, column: 8, scope: !6761)
!6802 = !DILocation(line: 66, column: 11, scope: !6761)
!6803 = !DILocation(line: 67, column: 16, scope: !6761)
!6804 = !DILocation(line: 67, column: 2, scope: !6761)
!6805 = !DILocation(line: 67, column: 8, scope: !6761)
!6806 = !DILocation(line: 67, column: 11, scope: !6761)
!6807 = !DILocation(line: 68, column: 16, scope: !6761)
!6808 = !DILocation(line: 68, column: 2, scope: !6761)
!6809 = !DILocation(line: 68, column: 8, scope: !6761)
!6810 = !DILocation(line: 68, column: 11, scope: !6761)
!6811 = !DILocation(line: 69, column: 16, scope: !6761)
!6812 = !DILocation(line: 69, column: 2, scope: !6761)
!6813 = !DILocation(line: 69, column: 8, scope: !6761)
!6814 = !DILocation(line: 69, column: 11, scope: !6761)
!6815 = !DILocation(line: 70, column: 16, scope: !6761)
!6816 = !DILocation(line: 70, column: 2, scope: !6761)
!6817 = !DILocation(line: 70, column: 8, scope: !6761)
!6818 = !DILocation(line: 70, column: 11, scope: !6761)
!6819 = !DILocation(line: 71, column: 16, scope: !6761)
!6820 = !DILocation(line: 71, column: 2, scope: !6761)
!6821 = !DILocation(line: 71, column: 8, scope: !6761)
!6822 = !DILocation(line: 71, column: 11, scope: !6761)
!6823 = !DILocation(line: 72, column: 16, scope: !6761)
!6824 = !DILocation(line: 72, column: 2, scope: !6761)
!6825 = !DILocation(line: 72, column: 8, scope: !6761)
!6826 = !DILocation(line: 72, column: 11, scope: !6761)
!6827 = !DILocation(line: 73, column: 17, scope: !6761)
!6828 = !DILocation(line: 73, column: 2, scope: !6761)
!6829 = !DILocation(line: 73, column: 8, scope: !6761)
!6830 = !DILocation(line: 73, column: 12, scope: !6761)
!6831 = !DILocation(line: 74, column: 17, scope: !6761)
!6832 = !DILocation(line: 74, column: 2, scope: !6761)
!6833 = !DILocation(line: 74, column: 8, scope: !6761)
!6834 = !DILocation(line: 74, column: 12, scope: !6761)
!6835 = !DILocation(line: 75, column: 17, scope: !6761)
!6836 = !DILocation(line: 75, column: 2, scope: !6761)
!6837 = !DILocation(line: 75, column: 8, scope: !6761)
!6838 = !DILocation(line: 75, column: 12, scope: !6761)
!6839 = !DILocation(line: 76, column: 17, scope: !6761)
!6840 = !DILocation(line: 76, column: 2, scope: !6761)
!6841 = !DILocation(line: 76, column: 8, scope: !6761)
!6842 = !DILocation(line: 76, column: 12, scope: !6761)
!6843 = !DILocation(line: 77, column: 17, scope: !6761)
!6844 = !DILocation(line: 77, column: 2, scope: !6761)
!6845 = !DILocation(line: 77, column: 8, scope: !6761)
!6846 = !DILocation(line: 77, column: 12, scope: !6761)
!6847 = !DILocation(line: 78, column: 17, scope: !6761)
!6848 = !DILocation(line: 78, column: 2, scope: !6761)
!6849 = !DILocation(line: 78, column: 8, scope: !6761)
!6850 = !DILocation(line: 78, column: 12, scope: !6761)
!6851 = !DILocation(line: 81, column: 16, scope: !6761)
!6852 = !DILocation(line: 81, column: 13, scope: !6761)
!6853 = !DILocation(line: 81, column: 19, scope: !6761)
!6854 = !DILocation(line: 81, column: 2, scope: !6761)
!6855 = !DILocation(line: 81, column: 8, scope: !6761)
!6856 = !DILocation(line: 81, column: 11, scope: !6761)
!6857 = !DILocation(line: 82, column: 16, scope: !6761)
!6858 = !DILocation(line: 82, column: 13, scope: !6761)
!6859 = !DILocation(line: 82, column: 19, scope: !6761)
!6860 = !DILocation(line: 82, column: 2, scope: !6761)
!6861 = !DILocation(line: 82, column: 8, scope: !6761)
!6862 = !DILocation(line: 82, column: 11, scope: !6761)
!6863 = !DILocation(line: 84, column: 17, scope: !6761)
!6864 = !DILocation(line: 84, column: 23, scope: !6761)
!6865 = !DILocation(line: 84, column: 29, scope: !6761)
!6866 = !DILocation(line: 84, column: 50, scope: !6761)
!6867 = !DILocation(line: 84, column: 56, scope: !6761)
!6868 = !DILocation(line: 84, column: 44, scope: !6761)
!6869 = !DILocation(line: 84, column: 2, scope: !6761)
!6870 = !DILocation(line: 84, column: 8, scope: !6761)
!6871 = !DILocation(line: 84, column: 14, scope: !6761)
!6872 = !DILocation(line: 86, column: 2, scope: !6761)
!6873 = !DILocation(line: 86, column: 8, scope: !6761)
!6874 = !DILocation(line: 86, column: 16, scope: !6761)
!6875 = !DILocation(line: 92, column: 6, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6761, file: !2, line: 92, column: 6)
!6877 = !DILocation(line: 0, scope: !6876)
!6878 = !DILocation(line: 92, column: 6, scope: !6761)
!6879 = !DILocation(line: 93, column: 18, scope: !6876)
!6880 = !DILocation(line: 93, column: 3, scope: !6876)
!6881 = !DILocation(line: 95, column: 44, scope: !6761)
!6882 = !DILocation(line: 95, column: 26, scope: !6761)
!6883 = !DILocation(line: 95, column: 9, scope: !6761)
!6884 = !DILocation(line: 95, column: 2, scope: !6761)
!6885 = !DILocation(line: 96, column: 1, scope: !6761)
!6886 = distinct !DISubprogram(name: "restore_signal_shadow_stack", scope: !6470, file: !6470, line: 34, type: !2454, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!6887 = !DILocation(line: 34, column: 55, scope: !6886)
!6888 = !DISubprogram(name: "signal_fault", scope: !6148, file: !6148, line: 16, type: !6889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{null, !3781, !29, !345}
!6891 = distinct !DISubprogram(name: "copy_from_user", scope: !6892, file: !6892, line: 180, type: !6893, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6895)
!6892 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6893 = !DISubroutineType(types: !6894)
!6894 = !{!48, !29, !2170, !48}
!6895 = !{!6896, !6897, !6898}
!6896 = !DILocalVariable(name: "to", arg: 1, scope: !6891, file: !6892, line: 180, type: !29)
!6897 = !DILocalVariable(name: "from", arg: 2, scope: !6891, file: !6892, line: 180, type: !2170)
!6898 = !DILocalVariable(name: "n", arg: 3, scope: !6891, file: !6892, line: 180, type: !48)
!6899 = !DILocation(line: 180, column: 22, scope: !6891)
!6900 = !DILocation(line: 180, column: 45, scope: !6891)
!6901 = !DILocation(line: 180, column: 65, scope: !6891)
!6902 = !DILocation(line: 182, column: 22, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6891, file: !6892, line: 182, column: 6)
!6904 = !DILocation(line: 182, column: 26, scope: !6903)
!6905 = !DILocation(line: 182, column: 6, scope: !6903)
!6906 = !DILocation(line: 182, column: 6, scope: !6891)
!6907 = !DILocation(line: 183, column: 23, scope: !6903)
!6908 = !DILocation(line: 183, column: 27, scope: !6903)
!6909 = !DILocation(line: 183, column: 33, scope: !6903)
!6910 = !DILocation(line: 183, column: 7, scope: !6903)
!6911 = !DILocation(line: 183, column: 5, scope: !6903)
!6912 = !DILocation(line: 183, column: 3, scope: !6903)
!6913 = !DILocation(line: 184, column: 9, scope: !6891)
!6914 = !DILocation(line: 184, column: 2, scope: !6891)
!6915 = !DISubprogram(name: "fpu__restore_sig", scope: !6916, file: !6916, line: 34, type: !6917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6916 = !DIFile(filename: "./arch/x86/include/asm/fpu/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "754864fa967f893fd03b99839091f816")
!6917 = !DISubroutineType(types: !6918)
!6918 = !{!875, !29, !31}
!6919 = distinct !DISubprogram(name: "check_copy_size", scope: !9, file: !9, line: 237, type: !6920, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6922)
!6920 = !DISubroutineType(types: !6921)
!6921 = !{!875, !2170, !44, !875}
!6922 = !{!6923, !6924, !6925, !6926, !6927, !6930}
!6923 = !DILocalVariable(name: "addr", arg: 1, scope: !6919, file: !9, line: 237, type: !2170)
!6924 = !DILocalVariable(name: "bytes", arg: 2, scope: !6919, file: !9, line: 237, type: !44)
!6925 = !DILocalVariable(name: "is_source", arg: 3, scope: !6919, file: !9, line: 237, type: !875)
!6926 = !DILocalVariable(name: "sz", scope: !6919, file: !9, line: 239, type: !31)
!6927 = !DILocalVariable(name: "__ret_warn_on", scope: !6928, file: !9, line: 249, type: !31)
!6928 = distinct !DILexicalBlock(scope: !6929, file: !9, line: 249, column: 6)
!6929 = distinct !DILexicalBlock(scope: !6919, file: !9, line: 249, column: 6)
!6930 = !DILocalVariable(name: "__flags", scope: !6931, file: !9, line: 249, type: !31)
!6931 = distinct !DILexicalBlock(scope: !6932, file: !9, line: 249, column: 6)
!6932 = distinct !DILexicalBlock(scope: !6928, file: !9, line: 249, column: 6)
!6933 = !DILocation(line: 237, column: 29, scope: !6919)
!6934 = !DILocation(line: 237, column: 42, scope: !6919)
!6935 = !DILocation(line: 237, column: 54, scope: !6919)
!6936 = !DILocation(line: 239, column: 2, scope: !6919)
!6937 = !DILocation(line: 239, column: 6, scope: !6919)
!6938 = !DILocation(line: 239, column: 33, scope: !6919)
!6939 = !DILocation(line: 239, column: 11, scope: !6919)
!6940 = !DILocation(line: 240, column: 6, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6919, file: !9, line: 240, column: 6)
!6942 = !DILocation(line: 0, scope: !6941)
!6943 = !DILocation(line: 240, column: 6, scope: !6919)
!6944 = !DILocation(line: 241, column: 29, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6946, file: !9, line: 241, column: 7)
!6946 = distinct !DILexicalBlock(scope: !6941, file: !9, line: 240, column: 39)
!6947 = !DILocation(line: 241, column: 8, scope: !6945)
!6948 = !DILocation(line: 241, column: 7, scope: !6946)
!6949 = !DILocation(line: 242, column: 18, scope: !6945)
!6950 = !DILocation(line: 242, column: 22, scope: !6945)
!6951 = !DILocation(line: 242, column: 4, scope: !6945)
!6952 = !DILocation(line: 243, column: 12, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6945, file: !9, line: 243, column: 12)
!6954 = !DILocation(line: 243, column: 12, scope: !6945)
!6955 = !DILocation(line: 244, column: 4, scope: !6953)
!6956 = !{i32 1670886}
!6957 = !DILocation(line: 246, column: 4, scope: !6953)
!6958 = !{i32 1670915}
!6959 = !DILocation(line: 247, column: 3, scope: !6946)
!6960 = !DILocation(line: 249, column: 6, scope: !6928)
!6961 = !DILocation(line: 249, column: 6, scope: !6932)
!6962 = !DILocation(line: 249, column: 6, scope: !6931)
!6963 = !DILocation(line: 249, column: 6, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6931, file: !9, line: 249, column: 6)
!6965 = !DILocation(line: 249, column: 6, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6931, file: !9, line: 249, column: 6)
!6967 = !{i64 2149633009, i64 2149633038, i64 2149633084, i64 2149633142, i64 2149633196, i64 2149633250, i64 2149633305, i64 2149633336, i64 2149633644, i64 2149633650, i64 2149633697, i64 2149633720, i64 2149633746}
!6968 = !DILocation(line: 249, column: 6, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6931, file: !9, line: 249, column: 6)
!6970 = !DILocation(line: 249, column: 6, scope: !6929)
!6971 = !DILocation(line: 249, column: 6, scope: !6919)
!6972 = !DILocation(line: 250, column: 3, scope: !6929)
!6973 = !DILocation(line: 251, column: 20, scope: !6919)
!6974 = !DILocation(line: 251, column: 26, scope: !6919)
!6975 = !DILocation(line: 251, column: 33, scope: !6919)
!6976 = !DILocation(line: 251, column: 2, scope: !6919)
!6977 = !DILocation(line: 252, column: 2, scope: !6919)
!6978 = !DILocation(line: 253, column: 1, scope: !6919)
!6979 = !DISubprogram(name: "_copy_from_user", scope: !6892, file: !6892, line: 158, type: !6893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6980 = distinct !DISubprogram(name: "copy_overflow", scope: !9, file: !9, line: 230, type: !6981, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6983)
!6981 = !DISubroutineType(types: !6982)
!6982 = !{null, !31, !48}
!6983 = !{!6984, !6985}
!6984 = !DILocalVariable(name: "size", arg: 1, scope: !6980, file: !9, line: 230, type: !31)
!6985 = !DILocalVariable(name: "count", arg: 2, scope: !6980, file: !9, line: 230, type: !48)
!6986 = !DILocation(line: 230, column: 38, scope: !6980)
!6987 = !DILocation(line: 230, column: 58, scope: !6980)
!6988 = !DILocation(line: 233, column: 19, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6980, file: !9, line: 232, column: 6)
!6990 = !DILocation(line: 233, column: 25, scope: !6989)
!6991 = !DILocation(line: 233, column: 3, scope: !6989)
!6992 = !DILocation(line: 234, column: 1, scope: !6980)
!6993 = !DISubprogram(name: "__bad_copy_from", scope: !9, file: !9, line: 224, type: !2758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6994 = !DISubprogram(name: "__bad_copy_to", scope: !9, file: !9, line: 226, type: !2758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6995 = distinct !DISubprogram(name: "check_object_size", scope: !9, file: !9, line: 218, type: !6996, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6998)
!6996 = !DISubroutineType(types: !6997)
!6997 = !{null, !2170, !48, !875}
!6998 = !{!6999, !7000, !7001}
!6999 = !DILocalVariable(name: "ptr", arg: 1, scope: !6995, file: !9, line: 218, type: !2170)
!7000 = !DILocalVariable(name: "n", arg: 2, scope: !6995, file: !9, line: 218, type: !48)
!7001 = !DILocalVariable(name: "to_user", arg: 3, scope: !6995, file: !9, line: 219, type: !875)
!7002 = !DILocation(line: 218, column: 50, scope: !6995)
!7003 = !DILocation(line: 218, column: 69, scope: !6995)
!7004 = !DILocation(line: 219, column: 15, scope: !6995)
!7005 = !DILocation(line: 220, column: 3, scope: !6995)
!7006 = !DISubprogram(name: "__copy_overflow", scope: !9, file: !9, line: 228, type: !6981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
