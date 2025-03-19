; ModuleID = 'arch/x86/kernel/signal.c'
source_filename = "arch/x86/kernel/signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init..kmod_signal__315_201_init_sigframe_size\22, \22a\22\09\09"
module asm "__initcall__kmod_signal__315_201_init_sigframe_sizeearly:\09\09\09"
module asm ".long\09__initstub__kmod_signal__315_201_init_sigframe_sizeearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon.33, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.35, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.33 = type { i32 }
%union.anon.35 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.36 }
%union.anon.36 = type { %struct.anon.37, [16 x i8] }
%struct.anon.37 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.38 }
%union.anon.38 = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.39 }
%struct.atomic_t = type { i32 }
%union.anon.39 = type { i64 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.kernel_siginfo = type { %struct.anon }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.10, i64, i64, %union.anon.11 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.23, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.26 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { i64, i64 }
%union.anon.26 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@show_unhandled_signals = external dso_local global i32, align 4
@__func__.get_sigframe = private unnamed_addr constant [13 x i8] c"get_sigframe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [41 x i8] c"\016signal: %s[%d] overflowed sigaltstack\0A\00", align 1, !dbg !8
@__UNIQUE_ID___addressable___initstub__kmod_signal__315_201_init_sigframe_sizeearly316 = internal global ptr @__initstub__kmod_signal__315_201_init_sigframe_sizeearly, section ".discard.addressable", align 8, !dbg !13
@max_frame_size = internal global i64 0, section ".data..ro_after_init", align 8, !dbg !5939
@__func__.signal_fault = private unnamed_addr constant [13 x i8] c"signal_fault\00", align 1, !dbg !5910
@.str.1 = private unnamed_addr constant [57 x i8] c"%s%s[%d] bad frame in %s frame:%p ip:%lx sp:%lx orax:%lx\00", align 1, !dbg !5912
@.str.2 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !5917
@.str.3 = private unnamed_addr constant [3 x i8] c"\010\00", align 1, !dbg !5920
@.str.4 = private unnamed_addr constant [7 x i8] c"\01c in \00", align 1, !dbg !5922
@.str.5 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !5925
@__setup_str_strict_sas_size = internal constant [16 x i8] c"strict_sas_size\00", section ".init.rodata", align 1, !dbg !5962
@__setup_strict_sas_size = internal global %struct.obs_kernel_param { ptr @__setup_str_strict_sas_size, ptr @strict_sas_size, i32 0 }, section ".init.setup", align 8, !dbg !5928
@fpu_default_state_size = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !5941
@strict_sigaltstack_size = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !5965
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.6 = private unnamed_addr constant [34 x i8] c"\016signal: max sigframe size: %lu\0A\00", align 1, !dbg !5943
@rseq_signal_deliver.__UNIQUE_ID___addressable___SCK__preempt_schedule147 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5948
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__fpu_state_size_dynamic = external dso_local global %struct.static_key_false, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_signal__315_201_init_sigframe_sizeearly316, ptr @__setup_strict_sas_size, ptr @rseq_signal_deliver.__UNIQUE_ID___addressable___SCK__preempt_schedule147], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_sigframe(ptr noundef %ksig, ptr noundef %regs, i64 noundef %frame_size, ptr noundef %fpstate) #0 align 16 !dbg !5977 {
entry:
  %retval = alloca ptr, align 8
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %frame_size.addr = alloca i64, align 8
  %fpstate.addr = alloca ptr, align 8
  %ka = alloca ptr, align 8
  %ia32_frame = alloca i32, align 4
  %nested_altstack = alloca i8, align 1
  %entering_altstack = alloca i8, align 1
  %math_size = alloca i64, align 8
  %sp3 = alloca i64, align 8
  %buf_fx = alloca i64, align 8
  %pkru = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !5981, metadata !DIExpression()), !dbg !5994
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5982, metadata !DIExpression()), !dbg !5995
  store i64 %frame_size, ptr %frame_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frame_size.addr, metadata !5983, metadata !DIExpression()), !dbg !5996
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !5984, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 8, ptr %ka) #14, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %ka, metadata !5985, metadata !DIExpression()), !dbg !5999
  %0 = load ptr, ptr %ksig.addr, align 8, !dbg !6000
  %ka1 = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 0, !dbg !6001
  store ptr %ka1, ptr %ka, align 8, !dbg !5999
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia32_frame) #14, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %ia32_frame, metadata !5987, metadata !DIExpression()), !dbg !6003
  %1 = load ptr, ptr %ksig.addr, align 8, !dbg !6004
  %call = call i32 @is_ia32_frame(ptr noundef %1) #15, !dbg !6005
  store i32 %call, ptr %ia32_frame, align 4, !dbg !6003
  call void @llvm.lifetime.start.p0(i64 1, ptr %nested_altstack) #14, !dbg !6006
  call void @llvm.dbg.declare(metadata ptr %nested_altstack, metadata !5988, metadata !DIExpression()), !dbg !6007
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6008
  %sp = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 19, !dbg !6009
  %3 = load i64, ptr %sp, align 8, !dbg !6009
  %call2 = call i32 @on_sig_stack(i64 noundef %3) #15, !dbg !6010
  %tobool = icmp ne i32 %call2, 0, !dbg !6010
  %frombool = zext i1 %tobool to i8, !dbg !6007
  store i8 %frombool, ptr %nested_altstack, align 1, !dbg !6007
  call void @llvm.lifetime.start.p0(i64 1, ptr %entering_altstack) #14, !dbg !6011
  call void @llvm.dbg.declare(metadata ptr %entering_altstack, metadata !5989, metadata !DIExpression()), !dbg !6012
  store i8 0, ptr %entering_altstack, align 1, !dbg !6012
  call void @llvm.lifetime.start.p0(i64 8, ptr %math_size) #14, !dbg !6013
  call void @llvm.dbg.declare(metadata ptr %math_size, metadata !5990, metadata !DIExpression()), !dbg !6014
  store i64 0, ptr %math_size, align 8, !dbg !6014
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp3) #14, !dbg !6015
  call void @llvm.dbg.declare(metadata ptr %sp3, metadata !5991, metadata !DIExpression()), !dbg !6016
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6017
  %sp4 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 19, !dbg !6018
  %5 = load i64, ptr %sp4, align 8, !dbg !6018
  store i64 %5, ptr %sp3, align 8, !dbg !6016
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_fx) #14, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %buf_fx, metadata !5992, metadata !DIExpression()), !dbg !6020
  store i64 0, ptr %buf_fx, align 8, !dbg !6020
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkru) #14, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %pkru, metadata !5993, metadata !DIExpression()), !dbg !6022
  %call5 = call i32 @read_pkru() #15, !dbg !6023
  store i32 %call5, ptr %pkru, align 4, !dbg !6022
  %6 = load i32, ptr %ia32_frame, align 4, !dbg !6024
  %tobool6 = icmp ne i32 %6, 0, !dbg !6024
  br i1 %tobool6, label %if.end, label %if.then, !dbg !6026

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %sp3, align 8, !dbg !6027
  %sub = sub i64 %7, 128, !dbg !6027
  store i64 %sub, ptr %sp3, align 8, !dbg !6027
  br label %if.end, !dbg !6028

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %ka, align 8, !dbg !6029
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %8, i32 0, i32 0, !dbg !6031
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6032
  %9 = load i64, ptr %sa_flags, align 8, !dbg !6032
  %and = and i64 %9, 134217728, !dbg !6033
  %tobool7 = icmp ne i64 %and, 0, !dbg !6033
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6034

if.then8:                                         ; preds = %if.end
  %10 = load i64, ptr %sp3, align 8, !dbg !6035
  %call9 = call i32 @sas_ss_flags(i64 noundef %10) #15, !dbg !6038
  %cmp = icmp eq i32 %call9, 0, !dbg !6039
  br i1 %cmp, label %if.then10, label %if.end13, !dbg !6040

if.then10:                                        ; preds = %if.then8
  %call11 = call ptr @get_current() #15, !dbg !6041
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, ptr %call11, i32 0, i32 110, !dbg !6043
  %11 = load i64, ptr %sas_ss_sp, align 64, !dbg !6043
  %call12 = call ptr @get_current() #15, !dbg !6044
  %sas_ss_size = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 111, !dbg !6045
  %12 = load i64, ptr %sas_ss_size, align 8, !dbg !6045
  %add = add i64 %11, %12, !dbg !6046
  store i64 %add, ptr %sp3, align 8, !dbg !6047
  store i8 1, ptr %entering_altstack, align 1, !dbg !6048
  br label %if.end13, !dbg !6049

if.end13:                                         ; preds = %if.then10, %if.then8
  br label %if.end31, !dbg !6050

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %ia32_frame, align 4, !dbg !6051
  %tobool14 = icmp ne i32 %13, 0, !dbg !6051
  br i1 %tobool14, label %land.lhs.true, label %if.end30, !dbg !6053

land.lhs.true:                                    ; preds = %if.else
  %14 = load i8, ptr %nested_altstack, align 1, !dbg !6054, !range !6055, !noundef !647
  %tobool15 = trunc i8 %14 to i1, !dbg !6054
  br i1 %tobool15, label %if.end30, label %land.lhs.true16, !dbg !6056

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !6057
  %16 = getelementptr inbounds %struct.pt_regs, ptr %15, i32 0, i32 20, !dbg !6058
  %17 = load i16, ptr %16, align 8, !dbg !6058
  %conv = zext i16 %17 to i32, !dbg !6057
  %cmp17 = icmp ne i32 %conv, 43, !dbg !6059
  br i1 %cmp17, label %land.lhs.true19, label %if.end30, !dbg !6060

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %18 = load ptr, ptr %ka, align 8, !dbg !6061
  %sa20 = getelementptr inbounds %struct.k_sigaction, ptr %18, i32 0, i32 0, !dbg !6062
  %sa_flags21 = getelementptr inbounds %struct.sigaction, ptr %sa20, i32 0, i32 1, !dbg !6063
  %19 = load i64, ptr %sa_flags21, align 8, !dbg !6063
  %and22 = and i64 %19, 67108864, !dbg !6064
  %tobool23 = icmp ne i64 %and22, 0, !dbg !6064
  br i1 %tobool23, label %if.end30, label %land.lhs.true24, !dbg !6065

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %20 = load ptr, ptr %ka, align 8, !dbg !6066
  %sa25 = getelementptr inbounds %struct.k_sigaction, ptr %20, i32 0, i32 0, !dbg !6067
  %sa_restorer = getelementptr inbounds %struct.sigaction, ptr %sa25, i32 0, i32 2, !dbg !6068
  %21 = load ptr, ptr %sa_restorer, align 8, !dbg !6068
  %tobool26 = icmp ne ptr %21, null, !dbg !6066
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !6069

if.then27:                                        ; preds = %land.lhs.true24
  %22 = load ptr, ptr %ka, align 8, !dbg !6070
  %sa28 = getelementptr inbounds %struct.k_sigaction, ptr %22, i32 0, i32 0, !dbg !6072
  %sa_restorer29 = getelementptr inbounds %struct.sigaction, ptr %sa28, i32 0, i32 2, !dbg !6073
  %23 = load ptr, ptr %sa_restorer29, align 8, !dbg !6073
  %24 = ptrtoint ptr %23 to i64, !dbg !6074
  store i64 %24, ptr %sp3, align 8, !dbg !6075
  store i8 1, ptr %entering_altstack, align 1, !dbg !6076
  br label %if.end30, !dbg !6077

if.end30:                                         ; preds = %if.then27, %land.lhs.true24, %land.lhs.true19, %land.lhs.true16, %land.lhs.true, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end13
  %25 = load i64, ptr %sp3, align 8, !dbg !6078
  %26 = load i32, ptr %ia32_frame, align 4, !dbg !6079
  %call32 = call i64 @fpu__alloc_mathframe(i64 noundef %25, i32 noundef %26, ptr noundef %buf_fx, ptr noundef %math_size) #15, !dbg !6080
  store i64 %call32, ptr %sp3, align 8, !dbg !6081
  %27 = load i64, ptr %sp3, align 8, !dbg !6082
  %28 = inttoptr i64 %27 to ptr, !dbg !6083
  %29 = load ptr, ptr %fpstate.addr, align 8, !dbg !6084
  store ptr %28, ptr %29, align 8, !dbg !6085
  %30 = load i64, ptr %frame_size.addr, align 8, !dbg !6086
  %31 = load i64, ptr %sp3, align 8, !dbg !6087
  %sub33 = sub i64 %31, %30, !dbg !6087
  store i64 %sub33, ptr %sp3, align 8, !dbg !6087
  %32 = load i32, ptr %ia32_frame, align 4, !dbg !6088
  %tobool34 = icmp ne i32 %32, 0, !dbg !6088
  br i1 %tobool34, label %if.then35, label %if.else39, !dbg !6090

if.then35:                                        ; preds = %if.end31
  %33 = load i64, ptr %sp3, align 8, !dbg !6091
  %add36 = add i64 %33, 4, !dbg !6092
  %and37 = and i64 %add36, -16, !dbg !6093
  %sub38 = sub i64 %and37, 4, !dbg !6094
  store i64 %sub38, ptr %sp3, align 8, !dbg !6095
  br label %if.end42, !dbg !6096

if.else39:                                        ; preds = %if.end31
  %34 = load i64, ptr %sp3, align 8, !dbg !6097
  %and40 = and i64 %34, -16, !dbg !6097
  %sub41 = sub i64 %and40, 8, !dbg !6098
  store i64 %sub41, ptr %sp3, align 8, !dbg !6099
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then35
  %35 = load i8, ptr %nested_altstack, align 1, !dbg !6100, !range !6055, !noundef !647
  %tobool43 = trunc i8 %35 to i1, !dbg !6100
  br i1 %tobool43, label %land.rhs, label %lor.lhs.false, !dbg !6100

lor.lhs.false:                                    ; preds = %if.end42
  %36 = load i8, ptr %entering_altstack, align 1, !dbg !6100, !range !6055, !noundef !647
  %tobool45 = trunc i8 %36 to i1, !dbg !6100
  br i1 %tobool45, label %land.rhs, label %land.end, !dbg !6100

land.rhs:                                         ; preds = %lor.lhs.false, %if.end42
  %37 = load i64, ptr %sp3, align 8, !dbg !6100
  %call47 = call i32 @__on_sig_stack(i64 noundef %37) #15, !dbg !6100
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6100
  %lnot = xor i1 %tobool48, true, !dbg !6100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %38 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %land.rhs ], !dbg !6102
  %lnot49 = xor i1 %38, true, !dbg !6100
  %lnot50 = xor i1 %lnot49, true, !dbg !6100
  %lnot.ext = zext i1 %lnot50 to i32, !dbg !6100
  %conv51 = sext i32 %lnot.ext to i64, !dbg !6100
  %expval = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !6100
  %tobool52 = icmp ne i64 %expval, 0, !dbg !6100
  br i1 %tobool52, label %if.then53, label %if.end64, !dbg !6103

if.then53:                                        ; preds = %land.end
  %39 = load i32, ptr @show_unhandled_signals, align 4, !dbg !6104
  %tobool54 = icmp ne i32 %39, 0, !dbg !6104
  br i1 %tobool54, label %land.lhs.true55, label %if.end63, !dbg !6107

land.lhs.true55:                                  ; preds = %if.then53
  %call56 = call i32 @__printk_ratelimit(ptr noundef @__func__.get_sigframe) #15, !dbg !6108
  %tobool57 = icmp ne i32 %call56, 0, !dbg !6108
  br i1 %tobool57, label %if.then58, label %if.end63, !dbg !6109

if.then58:                                        ; preds = %land.lhs.true55
  br label %do.body, !dbg !6110

do.body:                                          ; preds = %if.then58
  br label %do.cond, !dbg !6112

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6112

do.end:                                           ; preds = %do.cond
  %call59 = call ptr @get_current() #15, !dbg !6110
  %comm = getelementptr inbounds %struct.task_struct, ptr %call59, i32 0, i32 96, !dbg !6110
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !6110
  %call60 = call ptr @get_current() #15, !dbg !6110
  %call61 = call i32 @task_pid_nr(ptr noundef %call60) #15, !dbg !6110
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %call61) #16, !dbg !6110
  store i32 %call62, ptr %tmp, align 4, !dbg !6112
  %40 = load i32, ptr %tmp, align 4, !dbg !6110
  br label %if.end63, !dbg !6114

if.end63:                                         ; preds = %do.end, %land.lhs.true55, %if.then53
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !6115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6115

if.end64:                                         ; preds = %land.end
  %41 = load ptr, ptr %fpstate.addr, align 8, !dbg !6116
  %42 = load ptr, ptr %41, align 8, !dbg !6118
  %43 = load i64, ptr %buf_fx, align 8, !dbg !6119
  %44 = inttoptr i64 %43 to ptr, !dbg !6120
  %45 = load i64, ptr %math_size, align 8, !dbg !6121
  %conv65 = trunc i64 %45 to i32, !dbg !6121
  %46 = load i32, ptr %pkru, align 4, !dbg !6122
  %call66 = call zeroext i1 @copy_fpstate_to_sigframe(ptr noundef %42, ptr noundef %44, i32 noundef %conv65, i32 noundef %46) #15, !dbg !6123
  br i1 %call66, label %if.end68, label %if.then67, !dbg !6124

if.then67:                                        ; preds = %if.end64
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6125

if.end68:                                         ; preds = %if.end64
  %47 = load i64, ptr %sp3, align 8, !dbg !6126
  %48 = inttoptr i64 %47 to ptr, !dbg !6127
  store ptr %48, ptr %retval, align 8, !dbg !6128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6128

cleanup:                                          ; preds = %if.end68, %if.then67, %if.end63
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkru) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_fx) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp3) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 8, ptr %math_size) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 1, ptr %entering_altstack) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 1, ptr %nested_altstack) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia32_frame) #14, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 8, ptr %ka) #14, !dbg !6129
  %49 = load ptr, ptr %retval, align 8, !dbg !6129
  ret ptr %49, !dbg !6129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_ia32_frame(ptr noundef %ksig) #3 align 16 !dbg !6130 {
entry:
  %ksig.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6134, metadata !DIExpression()), !dbg !6135
  %0 = load ptr, ptr %ksig.addr, align 8, !dbg !6136
  %call = call i32 @is_ia32_compat_frame(ptr noundef %0) #15, !dbg !6137
  %tobool = icmp ne i32 %call, 0, !dbg !6138
  %lor.ext = zext i1 %tobool to i32, !dbg !6138
  ret i32 %lor.ext, !dbg !6139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @on_sig_stack(i64 noundef %sp) #3 align 16 !dbg !6140 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca i64, align 8
  store i64 %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !6144, metadata !DIExpression()), !dbg !6145
  %call = call ptr @get_current() #15, !dbg !6146
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 112, !dbg !6148
  %0 = load i32, ptr %sas_ss_flags, align 16, !dbg !6148
  %and = and i32 %0, -2147483648, !dbg !6149
  %tobool = icmp ne i32 %and, 0, !dbg !6149
  br i1 %tobool, label %if.then, label %if.end, !dbg !6150

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %sp.addr, align 8, !dbg !6152
  %call1 = call i32 @__on_sig_stack(i64 noundef %1) #15, !dbg !6153
  store i32 %call1, ptr %retval, align 4, !dbg !6154
  br label %return, !dbg !6154

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6155
  ret i32 %2, !dbg !6155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_pkru() #3 align 16 !dbg !6156 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !6160

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !6161

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6160

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6161

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !6161

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 516, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6161
  br i1 %call, label %if.then, label %if.end, !dbg !6161

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 516) #15, !dbg !6161
  br i1 %call5, label %if.then, label %if.end, !dbg !6160

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %call6 = call i32 @rdpkru() #15, !dbg !6163
  store i32 %call6, ptr %retval, align 4, !dbg !6164
  br label %return, !dbg !6164

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !6166
  ret i32 %0, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sas_ss_flags(i64 noundef %sp) #3 align 16 !dbg !6167 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca i64, align 8
  store i64 %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !6169, metadata !DIExpression()), !dbg !6170
  %call = call ptr @get_current() #15, !dbg !6171
  %sas_ss_size = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 111, !dbg !6173
  %0 = load i64, ptr %sas_ss_size, align 8, !dbg !6173
  %tobool = icmp ne i64 %0, 0, !dbg !6171
  br i1 %tobool, label %if.end, label %if.then, !dbg !6174

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6175
  br label %return, !dbg !6175

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %sp.addr, align 8, !dbg !6176
  %call1 = call i32 @on_sig_stack(i64 noundef %1) #15, !dbg !6177
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6177
  %2 = zext i1 %tobool2 to i64, !dbg !6177
  %cond = select i1 %tobool2, i32 1, i32 0, !dbg !6177
  store i32 %cond, ptr %retval, align 4, !dbg !6178
  br label %return, !dbg !6178

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6179
  ret i32 %3, !dbg !6179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6180 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6191
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6185, metadata !DIExpression()), !dbg !6191
  br label %do.body, !dbg !6191

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6187, metadata !DIExpression()), !dbg !6192
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6192
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6191
  br label %do.cond, !dbg !6192

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6192

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6189, metadata !DIExpression()), !dbg !6193
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !6193, !srcloc !6194
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6193
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6193
  %3 = inttoptr i64 %2 to ptr, !dbg !6193
  store ptr %3, ptr %tmp, align 8, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6191
  %4 = load ptr, ptr %tmp, align 8, !dbg !6193
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6191
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6191
  store ptr %5, ptr %tmp1, align 8, !dbg !6191
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6195
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6191
  ret ptr %6, !dbg !6196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6197 dso_local i64 @fpu__alloc_mathframe(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__on_sig_stack(i64 noundef %sp) #3 align 16 !dbg !6201 {
entry:
  %sp.addr = alloca i64, align 8
  store i64 %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load i64, ptr %sp.addr, align 8, !dbg !6205
  %call = call ptr @get_current() #15, !dbg !6206
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 110, !dbg !6207
  %1 = load i64, ptr %sas_ss_sp, align 64, !dbg !6207
  %cmp = icmp ugt i64 %0, %1, !dbg !6208
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6209

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %sp.addr, align 8, !dbg !6210
  %call1 = call ptr @get_current() #15, !dbg !6211
  %sas_ss_sp2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 110, !dbg !6212
  %3 = load i64, ptr %sas_ss_sp2, align 64, !dbg !6212
  %sub = sub i64 %2, %3, !dbg !6213
  %call3 = call ptr @get_current() #15, !dbg !6214
  %sas_ss_size = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 111, !dbg !6215
  %4 = load i64, ptr %sas_ss_size, align 8, !dbg !6215
  %cmp4 = icmp ule i64 %sub, %4, !dbg !6216
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !6217
  %land.ext = zext i1 %5 to i32, !dbg !6209
  ret i32 %land.ext, !dbg !6218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6219 dso_local i32 @__printk_ratelimit(ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6223 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr(ptr noundef %tsk) #3 align 16 !dbg !6226 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6232
  %pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62, !dbg !6233
  %1 = load i32, ptr %pid, align 8, !dbg !6233
  ret i32 %1, !dbg !6234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6235 dso_local zeroext i1 @copy_fpstate_to_sigframe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_signal__315_201_init_sigframe_sizeearly() #8 section ".init.text" align 16 !dbg !6238 {
entry:
  %call = call i32 @init_sigframe_size() #16, !dbg !6239
  ret i32 %call, !dbg !6239
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_sigframe_size() #8 section ".init.text" align 16 !dbg !6240 {
entry:
  %tmp = alloca i32, align 4
  %call = call i64 @fpu__get_fpstate_size() #15, !dbg !6241
  %conv = trunc i64 %call to i32, !dbg !6241
  store i32 %conv, ptr @fpu_default_state_size, align 4, !dbg !6242
  store i64 751, ptr @max_frame_size, align 8, !dbg !6243
  %0 = load i32, ptr @fpu_default_state_size, align 4, !dbg !6244
  %conv1 = zext i32 %0 to i64, !dbg !6244
  %add = add i64 %conv1, 63, !dbg !6245
  %1 = load i64, ptr @max_frame_size, align 8, !dbg !6246
  %add2 = add i64 %1, %add, !dbg !6246
  store i64 %add2, ptr @max_frame_size, align 8, !dbg !6246
  %2 = load i64, ptr @max_frame_size, align 8, !dbg !6247
  %sub = sub i64 %2, 1, !dbg !6247
  %or = or i64 %sub, 15, !dbg !6247
  %add3 = add i64 %or, 1, !dbg !6247
  store i64 %add3, ptr @max_frame_size, align 8, !dbg !6248
  br label %do.body, !dbg !6249

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6251

do.end:                                           ; preds = %do.body
  %3 = load i64, ptr @max_frame_size, align 8, !dbg !6249
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i64 noundef %3) #16, !dbg !6249
  store i32 %call4, ptr %tmp, align 4, !dbg !6251
  %4 = load i32, ptr %tmp, align 4, !dbg !6249
  ret i32 0, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @get_sigframe_size() #0 align 16 !dbg !6254 {
entry:
  %0 = load i64, ptr @max_frame_size, align 8, !dbg !6257
  ret i64 %0, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_do_signal_or_restart(ptr noundef %regs) #0 align 16 !dbg !6259 {
entry:
  %regs.addr = alloca ptr, align 8
  %ksig = alloca %struct.ksignal, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6263, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 88, ptr %ksig) #14, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %ksig, metadata !6264, metadata !DIExpression()), !dbg !6267
  %call = call zeroext i1 @get_signal(ptr noundef %ksig) #15, !dbg !6268
  br i1 %call, label %if.then, label %if.end, !dbg !6270

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6271
  call void @handle_signal(ptr noundef %ksig, ptr noundef %0) #15, !dbg !6273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6274

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current() #15, !dbg !6275
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !6277
  %call2 = call i32 @syscall_get_nr(ptr noundef %call1, ptr noundef %1) #15, !dbg !6278
  %cmp = icmp ne i32 %call2, -1, !dbg !6279
  br i1 %cmp, label %if.then3, label %if.end11, !dbg !6280

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @get_current() #15, !dbg !6281
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6283
  %call5 = call i64 @syscall_get_error(ptr noundef %call4, ptr noundef %2) #15, !dbg !6284
  switch i64 %call5, label %sw.epilog [
    i64 -514, label %sw.bb
    i64 -512, label %sw.bb
    i64 -513, label %sw.bb
    i64 -516, label %sw.bb6
  ], !dbg !6285

sw.bb:                                            ; preds = %if.then3, %if.then3, %if.then3
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6286
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 15, !dbg !6288
  %4 = load i64, ptr %orig_ax, align 8, !dbg !6288
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6289
  %ax = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 10, !dbg !6290
  store i64 %4, ptr %ax, align 8, !dbg !6291
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6292
  %ip = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 16, !dbg !6293
  %7 = load i64, ptr %ip, align 8, !dbg !6294
  %sub = sub i64 %7, 2, !dbg !6294
  store i64 %sub, ptr %ip, align 8, !dbg !6294
  br label %sw.epilog, !dbg !6295

sw.bb6:                                           ; preds = %if.then3
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6296
  %call7 = call i64 @get_nr_restart_syscall(ptr noundef %8) #15, !dbg !6297
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !6298
  %ax8 = getelementptr inbounds %struct.pt_regs, ptr %9, i32 0, i32 10, !dbg !6299
  store i64 %call7, ptr %ax8, align 8, !dbg !6300
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6301
  %ip9 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 16, !dbg !6302
  %11 = load i64, ptr %ip9, align 8, !dbg !6303
  %sub10 = sub i64 %11, 2, !dbg !6303
  store i64 %sub10, ptr %ip9, align 8, !dbg !6303
  br label %sw.epilog, !dbg !6304

sw.epilog:                                        ; preds = %if.then3, %sw.bb6, %sw.bb
  br label %if.end11, !dbg !6305

if.end11:                                         ; preds = %sw.epilog, %if.end
  call void @restore_saved_sigmask() #15, !dbg !6306
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6307
  br label %cleanup, !dbg !6307

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 88, ptr %ksig) #14, !dbg !6307
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6307

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6308 dso_local zeroext i1 @get_signal(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @handle_signal(ptr noundef %ksig, ptr noundef %regs) #0 align 16 !dbg !6312 {
entry:
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %stepping = alloca i8, align 1
  %failed = alloca i8, align 1
  %fpu = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6314, metadata !DIExpression()), !dbg !6320
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6315, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 1, ptr %stepping) #14, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %stepping, metadata !6316, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 1, ptr %failed) #14, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %failed, metadata !6317, metadata !DIExpression()), !dbg !6324
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #14, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !6318, metadata !DIExpression()), !dbg !6326
  %call = call ptr @get_current() #15, !dbg !6327
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6328
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !6329
  store ptr %fpu1, ptr %fpu, align 8, !dbg !6326
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6330
  %call2 = call i32 @v8086_mode(ptr noundef %0) #15, !dbg !6332
  %tobool = icmp ne i32 %call2, 0, !dbg !6332
  br i1 %tobool, label %if.then, label %if.end, !dbg !6333

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !6334
  call void @save_v86_state(ptr noundef %1, i32 noundef 0) #15, !dbg !6335
  br label %if.end, !dbg !6335

if.end:                                           ; preds = %if.then, %entry
  %call3 = call ptr @get_current() #15, !dbg !6336
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6338
  %call4 = call i32 @syscall_get_nr(ptr noundef %call3, ptr noundef %2) #15, !dbg !6339
  %cmp = icmp ne i32 %call4, -1, !dbg !6340
  br i1 %cmp, label %if.then5, label %if.end15, !dbg !6341

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @get_current() #15, !dbg !6342
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6344
  %call7 = call i64 @syscall_get_error(ptr noundef %call6, ptr noundef %3) #15, !dbg !6345
  switch i64 %call7, label %sw.epilog [
    i64 -516, label %sw.bb
    i64 -514, label %sw.bb
    i64 -512, label %sw.bb8
    i64 -513, label %sw.bb13
  ], !dbg !6346

sw.bb:                                            ; preds = %if.then5, %if.then5
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6347
  %ax = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 10, !dbg !6349
  store i64 -4, ptr %ax, align 8, !dbg !6350
  br label %sw.epilog, !dbg !6351

sw.bb8:                                           ; preds = %if.then5
  %5 = load ptr, ptr %ksig.addr, align 8, !dbg !6352
  %ka = getelementptr inbounds %struct.ksignal, ptr %5, i32 0, i32 0, !dbg !6354
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %ka, i32 0, i32 0, !dbg !6355
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6356
  %6 = load i64, ptr %sa_flags, align 8, !dbg !6356
  %and = and i64 %6, 268435456, !dbg !6357
  %tobool9 = icmp ne i64 %and, 0, !dbg !6357
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !6358

if.then10:                                        ; preds = %sw.bb8
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !6359
  %ax11 = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 10, !dbg !6361
  store i64 -4, ptr %ax11, align 8, !dbg !6362
  br label %sw.epilog, !dbg !6363

if.end12:                                         ; preds = %sw.bb8
  br label %sw.bb13, !dbg !6364

sw.bb13:                                          ; preds = %if.then5, %if.end12
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6365
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 15, !dbg !6366
  %9 = load i64, ptr %orig_ax, align 8, !dbg !6366
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !6367
  %ax14 = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 10, !dbg !6368
  store i64 %9, ptr %ax14, align 8, !dbg !6369
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !6370
  %ip = getelementptr inbounds %struct.pt_regs, ptr %11, i32 0, i32 16, !dbg !6371
  %12 = load i64, ptr %ip, align 8, !dbg !6372
  %sub = sub i64 %12, 2, !dbg !6372
  store i64 %sub, ptr %ip, align 8, !dbg !6372
  br label %sw.epilog, !dbg !6373

sw.epilog:                                        ; preds = %if.then5, %sw.bb13, %if.then10, %sw.bb
  br label %if.end15, !dbg !6374

if.end15:                                         ; preds = %sw.epilog, %if.end
  %call16 = call ptr @get_current() #15, !dbg !6375
  %call17 = call i32 @test_ti_thread_flag(ptr noundef %call16, i32 noundef 4) #15, !dbg !6375
  %tobool18 = icmp ne i32 %call17, 0, !dbg !6375
  %frombool = zext i1 %tobool18 to i8, !dbg !6376
  store i8 %frombool, ptr %stepping, align 1, !dbg !6376
  %13 = load i8, ptr %stepping, align 1, !dbg !6377, !range !6055, !noundef !647
  %tobool19 = trunc i8 %13 to i1, !dbg !6377
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !6379

if.then20:                                        ; preds = %if.end15
  %call21 = call ptr @get_current() #15, !dbg !6380
  call void @user_disable_single_step(ptr noundef %call21) #15, !dbg !6381
  br label %if.end22, !dbg !6381

if.end22:                                         ; preds = %if.then20, %if.end15
  %14 = load ptr, ptr %ksig.addr, align 8, !dbg !6382
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !6383
  %call23 = call i32 @setup_rt_frame(ptr noundef %14, ptr noundef %15) #15, !dbg !6384
  %cmp24 = icmp slt i32 %call23, 0, !dbg !6385
  %frombool25 = zext i1 %cmp24 to i8, !dbg !6386
  store i8 %frombool25, ptr %failed, align 1, !dbg !6386
  %16 = load i8, ptr %failed, align 1, !dbg !6387, !range !6055, !noundef !647
  %tobool26 = trunc i8 %16 to i1, !dbg !6387
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !6389

if.then27:                                        ; preds = %if.end22
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !6390
  %flags = getelementptr inbounds %struct.pt_regs, ptr %17, i32 0, i32 18, !dbg !6392
  %18 = load i64, ptr %flags, align 8, !dbg !6393
  %and28 = and i64 %18, -66817, !dbg !6393
  store i64 %and28, ptr %flags, align 8, !dbg !6393
  %19 = load ptr, ptr %fpu, align 8, !dbg !6394
  call void @fpu__clear_user_states(ptr noundef %19) #15, !dbg !6395
  br label %if.end29, !dbg !6396

if.end29:                                         ; preds = %if.then27, %if.end22
  %20 = load i8, ptr %failed, align 1, !dbg !6397, !range !6055, !noundef !647
  %tobool30 = trunc i8 %20 to i1, !dbg !6397
  %conv = zext i1 %tobool30 to i32, !dbg !6397
  %21 = load ptr, ptr %ksig.addr, align 8, !dbg !6398
  %22 = load i8, ptr %stepping, align 1, !dbg !6399, !range !6055, !noundef !647
  %tobool31 = trunc i8 %22 to i1, !dbg !6399
  %conv32 = zext i1 %tobool31 to i32, !dbg !6399
  call void @signal_setup_done(i32 noundef %conv, ptr noundef %21, i32 noundef %conv32) #15, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 1, ptr %failed) #14, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 1, ptr %stepping) #14, !dbg !6401
  ret void, !dbg !6401
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @syscall_get_nr(ptr noundef %task, ptr noundef %regs) #3 align 16 !dbg !6402 {
entry:
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6407, metadata !DIExpression()), !dbg !6409
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6411
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 15, !dbg !6412
  %1 = load i64, ptr %orig_ax, align 8, !dbg !6412
  %conv = trunc i64 %1 to i32, !dbg !6411
  ret i32 %conv, !dbg !6413
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @syscall_get_error(ptr noundef %task, ptr noundef %regs) #3 align 16 !dbg !6414 {
entry:
  %task.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %error = alloca i64, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6418, metadata !DIExpression()), !dbg !6421
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6419, metadata !DIExpression()), !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #14, !dbg !6423
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6420, metadata !DIExpression()), !dbg !6424
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6425
  %ax = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 10, !dbg !6426
  %1 = load i64, ptr %ax, align 8, !dbg !6426
  store i64 %1, ptr %error, align 8, !dbg !6424
  %2 = load ptr, ptr %task.addr, align 8, !dbg !6427
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 0, !dbg !6429
  %status = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 2, !dbg !6430
  %3 = load i32, ptr %status, align 16, !dbg !6430
  %and = and i32 %3, 6, !dbg !6431
  %tobool = icmp ne i32 %and, 0, !dbg !6431
  br i1 %tobool, label %if.then, label %if.end, !dbg !6432

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %error, align 8, !dbg !6433
  %conv = trunc i64 %4 to i32, !dbg !6434
  %conv1 = sext i32 %conv to i64, !dbg !6435
  store i64 %conv1, ptr %error, align 8, !dbg !6436
  br label %if.end, !dbg !6437

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %error, align 8, !dbg !6438
  %6 = inttoptr i64 %5 to ptr, !dbg !6438
  %7 = ptrtoint ptr %6 to i64, !dbg !6438
  %cmp = icmp uge i64 %7, -4095, !dbg !6438
  %lnot = xor i1 %cmp, true, !dbg !6438
  %lnot3 = xor i1 %lnot, true, !dbg !6438
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6438
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6438
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !6438
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6438
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !6438

cond.true:                                        ; preds = %if.end
  %8 = load i64, ptr %error, align 8, !dbg !6439
  br label %cond.end, !dbg !6438

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !6438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ 0, %cond.false ], !dbg !6438
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #14, !dbg !6440
  ret i64 %cond, !dbg !6441
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_nr_restart_syscall(ptr noundef %regs) #3 align 16 !dbg !6442 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  %call = call ptr @get_current() #15, !dbg !6450
  %restart_block = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 61, !dbg !6452
  %arch_data = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 0, !dbg !6453
  %0 = load i64, ptr %arch_data, align 64, !dbg !6453
  %and = and i64 %0, 2, !dbg !6454
  %tobool = icmp ne i64 %and, 0, !dbg !6454
  br i1 %tobool, label %if.then, label %if.end, !dbg !6455

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6456
  br label %return, !dbg !6456

if.end:                                           ; preds = %entry
  store i64 219, ptr %retval, align 8, !dbg !6457
  br label %return, !dbg !6457

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !6458
  ret i64 %1, !dbg !6458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @restore_saved_sigmask() #3 align 16 !dbg !6459 {
entry:
  %call = call zeroext i1 @test_and_clear_restore_sigmask() #15, !dbg !6460
  br i1 %call, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  %call1 = call ptr @get_current() #15, !dbg !6463
  %saved_sigmask = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 108, !dbg !6464
  call void @__set_current_blocked(ptr noundef %saved_sigmask) #15, !dbg !6465
  br label %if.end, !dbg !6465

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @signal_fault(ptr noundef %regs, ptr noundef %frame, ptr noundef %where) #0 align 16 !dbg !6467 {
entry:
  %regs.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %where.addr = alloca ptr, align 8
  %me = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6471, metadata !DIExpression()), !dbg !6475
  store ptr %frame, ptr %frame.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !6472, metadata !DIExpression()), !dbg !6476
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !6473, metadata !DIExpression()), !dbg !6477
  call void @llvm.lifetime.start.p0(i64 8, ptr %me) #14, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %me, metadata !6474, metadata !DIExpression()), !dbg !6479
  %call = call ptr @get_current() #15, !dbg !6480
  store ptr %call, ptr %me, align 8, !dbg !6479
  %0 = load i32, ptr @show_unhandled_signals, align 4, !dbg !6481
  %tobool = icmp ne i32 %0, 0, !dbg !6481
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6483

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @__printk_ratelimit(ptr noundef @__func__.signal_fault) #15, !dbg !6484
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6484
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6485

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !6486

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6489

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6489

do.end:                                           ; preds = %do.cond
  %call3 = call ptr @get_current() #15, !dbg !6486
  %call4 = call i32 @task_pid_nr(ptr noundef %call3) #15, !dbg !6486
  %cmp = icmp sgt i32 %call4, 1, !dbg !6486
  %1 = zext i1 %cmp to i64, !dbg !6486
  %cond = select i1 %cmp, ptr @.str.2, ptr @.str.3, !dbg !6486
  %2 = load ptr, ptr %me, align 8, !dbg !6486
  %comm = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 96, !dbg !6486
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !6486
  %3 = load ptr, ptr %me, align 8, !dbg !6486
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62, !dbg !6486
  %4 = load i32, ptr %pid, align 8, !dbg !6486
  %5 = load ptr, ptr %where.addr, align 8, !dbg !6486
  %6 = load ptr, ptr %frame.addr, align 8, !dbg !6486
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !6486
  %ip = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 16, !dbg !6486
  %8 = load i64, ptr %ip, align 8, !dbg !6486
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !6486
  %sp = getelementptr inbounds %struct.pt_regs, ptr %9, i32 0, i32 19, !dbg !6486
  %10 = load i64, ptr %sp, align 8, !dbg !6486
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !6486
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %11, i32 0, i32 15, !dbg !6486
  %12 = load i64, ptr %orig_ax, align 8, !dbg !6486
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %cond, ptr noundef %arraydecay, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12) #16, !dbg !6486
  store i32 %call5, ptr %tmp, align 4, !dbg !6489
  %13 = load i32, ptr %tmp, align 4, !dbg !6486
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !6491
  %ip6 = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 16, !dbg !6492
  %15 = load i64, ptr %ip6, align 8, !dbg !6492
  call void @print_vma_addr(ptr noundef @.str.4, i64 noundef %15) #15, !dbg !6493
  br label %do.body7, !dbg !6494

do.body7:                                         ; preds = %do.end
  br label %do.cond8, !dbg !6496

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6496

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #16, !dbg !6494
  store i32 %call11, ptr %tmp10, align 4, !dbg !6496
  %16 = load i32, ptr %tmp10, align 4, !dbg !6494
  br label %if.end, !dbg !6498

if.end:                                           ; preds = %do.end9, %land.lhs.true, %entry
  call void @force_sig(i32 noundef 11) #15, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 8, ptr %me) #14, !dbg !6500
  ret void, !dbg !6500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6501 dso_local void @print_vma_addr(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local void @force_sig(i32 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @strict_sas_size(ptr noundef %arg) #8 section ".init.text" align 16 !dbg !6505 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !6509
  %call = call i32 @kstrtobool(ptr noundef %0, ptr noundef @strict_sigaltstack_size) #15, !dbg !6510
  %cmp = icmp eq i32 %call, 0, !dbg !6511
  %conv = zext i1 %cmp to i32, !dbg !6511
  ret i32 %conv, !dbg !6512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @sigaltstack_size_valid(i64 noundef %ss_size) #0 align 16 !dbg !6513 {
entry:
  %retval = alloca i1, align 1
  %ss_size.addr = alloca i64, align 8
  %fsize = alloca i64, align 8
  %mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ss_size, ptr %ss_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ss_size.addr, metadata !6517, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsize) #14, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %fsize, metadata !6518, metadata !DIExpression()), !dbg !6522
  %0 = load i64, ptr @max_frame_size, align 8, !dbg !6523
  %1 = load i32, ptr @fpu_default_state_size, align 4, !dbg !6524
  %conv = zext i32 %1 to i64, !dbg !6524
  %sub = sub i64 %0, %conv, !dbg !6525
  store i64 %sub, ptr %fsize, align 8, !dbg !6522
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6526
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6519, metadata !DIExpression()), !dbg !6527
  br label %do.body, !dbg !6528

do.body:                                          ; preds = %entry
  %call = call ptr @get_current() #15, !dbg !6529
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !6529
  %2 = load ptr, ptr %sighand, align 8, !dbg !6529
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !6529
  br label %do.cond, !dbg !6529

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6529

do.end:                                           ; preds = %do.cond
  %call1 = call zeroext i1 @fpu_state_size_dynamic() #18, !dbg !6531
  br i1 %call1, label %if.end, label %land.lhs.true, !dbg !6533

land.lhs.true:                                    ; preds = %do.end
  %3 = load i8, ptr @strict_sigaltstack_size, align 1, !dbg !6534, !range !6055, !noundef !647
  %tobool = trunc i8 %3 to i1, !dbg !6534
  br i1 %tobool, label %if.end, label %if.then, !dbg !6535

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6536

if.end:                                           ; preds = %land.lhs.true, %do.end
  %call2 = call ptr @get_current() #15, !dbg !6537
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 69, !dbg !6538
  %4 = load ptr, ptr %group_leader, align 8, !dbg !6538
  %thread = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 197, !dbg !6539
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !6540
  %perm = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 4, !dbg !6541
  %__user_state_size = getelementptr inbounds %struct.fpu_state_perm, ptr %perm, i32 0, i32 2, !dbg !6542
  %5 = load i32, ptr %__user_state_size, align 4, !dbg !6542
  %conv3 = zext i32 %5 to i64, !dbg !6537
  %6 = load i64, ptr %fsize, align 8, !dbg !6543
  %add = add i64 %6, %conv3, !dbg !6543
  store i64 %add, ptr %fsize, align 8, !dbg !6543
  %7 = load i64, ptr %ss_size.addr, align 8, !dbg !6544
  %8 = load i64, ptr %fsize, align 8, !dbg !6544
  %cmp = icmp ugt i64 %7, %8, !dbg !6544
  %lnot = xor i1 %cmp, true, !dbg !6544
  %lnot5 = xor i1 %lnot, true, !dbg !6544
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6544
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6544
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 1), !dbg !6544
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6544
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6546

if.then8:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6547

if.end9:                                          ; preds = %if.end
  %9 = load i8, ptr @strict_sigaltstack_size, align 1, !dbg !6548, !range !6055, !noundef !647
  %tobool10 = trunc i8 %9 to i1, !dbg !6548
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !6550

if.then11:                                        ; preds = %if.end9
  %10 = load i64, ptr %ss_size.addr, align 8, !dbg !6551
  %11 = load i64, ptr %fsize, align 8, !dbg !6552
  %cmp12 = icmp ugt i64 %10, %11, !dbg !6553
  store i1 %cmp12, ptr %retval, align 1, !dbg !6554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6554

if.end14:                                         ; preds = %if.end9
  %call15 = call ptr @get_current() #15, !dbg !6555
  %group_leader16 = getelementptr inbounds %struct.task_struct, ptr %call15, i32 0, i32 69, !dbg !6556
  %12 = load ptr, ptr %group_leader16, align 8, !dbg !6556
  %thread17 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 197, !dbg !6557
  %fpu18 = getelementptr inbounds %struct.thread_struct, ptr %thread17, i32 0, i32 19, !dbg !6558
  %perm19 = getelementptr inbounds %struct.fpu, ptr %fpu18, i32 0, i32 4, !dbg !6559
  %__state_perm = getelementptr inbounds %struct.fpu_state_perm, ptr %perm19, i32 0, i32 0, !dbg !6560
  %13 = load i64, ptr %__state_perm, align 32, !dbg !6560
  store i64 %13, ptr %mask, align 8, !dbg !6561
  %14 = load i64, ptr %mask, align 8, !dbg !6562
  %and = and i64 %14, 262144, !dbg !6564
  %tobool20 = icmp ne i64 %and, 0, !dbg !6564
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !6565

if.then21:                                        ; preds = %if.end14
  %15 = load i64, ptr %ss_size.addr, align 8, !dbg !6566
  %16 = load i64, ptr %fsize, align 8, !dbg !6567
  %cmp22 = icmp ugt i64 %15, %16, !dbg !6568
  store i1 %cmp22, ptr %retval, align 1, !dbg !6569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6569

if.end24:                                         ; preds = %if.end14
  store i1 true, ptr %retval, align 1, !dbg !6570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6570

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsize) #14, !dbg !6571
  %17 = load i1, ptr %retval, align 1, !dbg !6571
  ret i1 %17, !dbg !6571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal zeroext i1 @fpu_state_size_dynamic() #9 align 16 !dbg !6572 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6575, metadata !DIExpression()), !dbg !6577
  %call = call zeroext i1 @arch_static_branch(ptr noundef @__fpu_state_size_dynamic, i1 noundef zeroext false) #15, !dbg !6578
  %frombool = zext i1 %call to i8, !dbg !6578
  store i8 %frombool, ptr %branch, align 1, !dbg !6578
  %0 = load i8, ptr %branch, align 1, !dbg !6577, !range !6055, !noundef !647
  %tobool = trunc i8 %0 to i1, !dbg !6577
  %lnot = xor i1 %tobool, true, !dbg !6577
  %lnot1 = xor i1 %lnot, true, !dbg !6577
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6577
  %conv = sext i32 %lnot.ext to i64, !dbg !6577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6577
  store i64 %expval, ptr %tmp, align 8, !dbg !6581
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !6582
  %1 = load i64, ptr %tmp, align 8, !dbg !6577
  %tobool2 = icmp ne i64 %1, 0, !dbg !6582
  ret i1 %tobool2, !dbg !6583
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_ia32_compat_frame(ptr noundef %ksig) #3 align 16 !dbg !6584 {
entry:
  %ksig.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  %0 = load ptr, ptr %ksig.addr, align 8, !dbg !6588
  %ka = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 0, !dbg !6589
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %ka, i32 0, i32 0, !dbg !6590
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6591
  %1 = load i64, ptr %sa_flags, align 8, !dbg !6591
  %and = and i64 %1, 33554432, !dbg !6592
  %tobool = icmp ne i64 %and, 0, !dbg !6593
  %land.ext = zext i1 %tobool to i32, !dbg !6593
  ret i32 %land.ext, !dbg !6594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6604, metadata !DIExpression()), !dbg !6606
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6607
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6608
  br i1 %1, label %cond.true, label %cond.false, !dbg !6608

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6609
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6610
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6611
  %conv = zext i1 %call to i32, !dbg !6611
  br label %cond.end, !dbg !6608

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6612
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6613
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !6614
  %conv2 = zext i1 %call1 to i32, !dbg !6614
  br label %cond.end, !dbg !6608

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6608
  %tobool = icmp ne i32 %cond, 0, !dbg !6608
  ret i1 %tobool, !dbg !6615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !6616 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6621, metadata !DIExpression()), !dbg !6624
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6625
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6626
  %conv = zext i16 %1 to i32, !dbg !6626
  %and = and i32 %conv, 7, !dbg !6627
  %shl = shl i32 1, %and, !dbg !6628
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6629
  %conv1 = zext i16 %2 to i32, !dbg !6629
  %shr = ashr i32 %conv1, 3, !dbg !6630
  %idxprom = sext i32 %shr to i64, !dbg !6631
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6631
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6632, !srcloc !6633

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6632

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6622), !dbg !6634
  store i1 true, ptr %retval, align 1, !dbg !6635
  br label %return, !dbg !6635

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6623), !dbg !6636
  store i1 false, ptr %retval, align 1, !dbg !6637
  br label %return, !dbg !6637

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6638
  ret i1 %3, !dbg !6638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdpkru() #3 align 16 !dbg !6639 {
entry:
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %pkru = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !6645
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !6642, metadata !DIExpression()), !dbg !6646
  store i32 0, ptr %ecx, align 4, !dbg !6646
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !6643, metadata !DIExpression()), !dbg !6648
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkru) #14, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %pkru, metadata !6644, metadata !DIExpression()), !dbg !6649
  %0 = load i32, ptr %ecx, align 4, !dbg !6650
  %1 = call { i32, i32 } asm sideeffect ".byte 0x0f,0x01,0xee\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !6651, !srcloc !6652
  %asmresult = extractvalue { i32, i32 } %1, 0, !dbg !6651
  %asmresult1 = extractvalue { i32, i32 } %1, 1, !dbg !6651
  store i32 %asmresult, ptr %pkru, align 4, !dbg !6651
  store i32 %asmresult1, ptr %edx, align 4, !dbg !6651
  %2 = load i32, ptr %pkru, align 4, !dbg !6653
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkru) #14, !dbg !6654
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !6654
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !6654
  ret i32 %2, !dbg !6655
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6656 {
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
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6673 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !6680
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6677, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6682
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6683
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !6684, !srcloc !6685
  %3 = icmp ult i8 %2, 2, !dbg !6684
  call void @llvm.assume(i1 %3), !dbg !6684
  store i8 %2, ptr %oldbit, align 1, !dbg !6684
  %4 = load i8, ptr %oldbit, align 1, !dbg !6686, !range !6055, !noundef !647
  %tobool = trunc i8 %4 to i1, !dbg !6686
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !6687
  ret i1 %tobool, !dbg !6688
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6689 dso_local i64 @fpu__get_fpstate_size() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v8086_mode(ptr noundef %regs) #4 align 16 !dbg !6690 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6694, metadata !DIExpression()), !dbg !6695
  ret i32 0, !dbg !6696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_v86_state(ptr noundef %a, i32 noundef %b) #3 align 16 !dbg !6697 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6701, metadata !DIExpression()), !dbg !6703
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !6702, metadata !DIExpression()), !dbg !6704
  ret void, !dbg !6705
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #3 align 16 !dbg !6706 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6712, metadata !DIExpression()), !dbg !6714
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6715
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6715
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6715

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6715
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6715
  %3 = ptrtoint ptr %flags to i64, !dbg !6715
  %cmp = icmp ne i64 %3, 0, !dbg !6715
  %conv = zext i1 %cmp to i32, !dbg !6715
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6715
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6715

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6715
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6715
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6715
  %cmp3 = icmp ne i64 %6, 0, !dbg !6715
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6715

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6715
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6715
  %8 = load i64, ptr %flags6, align 8, !dbg !6715
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6715
  br i1 %9, label %cond.true, label %cond.false, !dbg !6715

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6715
  %conv7 = sext i32 %10 to i64, !dbg !6715
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6715
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6715
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !6715
  %conv9 = zext i1 %call to i32, !dbg !6715
  br label %cond.end, !dbg !6715

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6715
  %conv10 = sext i32 %12 to i64, !dbg !6715
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6715
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6715
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !6715
  %conv13 = zext i1 %call12 to i32, !dbg !6715
  br label %cond.end, !dbg !6715

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6715
  ret i32 %cond, !dbg !6716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6717 dso_local void @user_disable_single_step(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_rt_frame(ptr noundef %ksig, ptr noundef %regs) #0 align 16 !dbg !6719 {
entry:
  %retval = alloca i32, align 4
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6723, metadata !DIExpression()), !dbg !6725
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6724, metadata !DIExpression()), !dbg !6726
  %0 = load ptr, ptr %ksig.addr, align 8, !dbg !6727
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !6728
  call void @rseq_signal_deliver(ptr noundef %0, ptr noundef %1) #15, !dbg !6729
  %2 = load ptr, ptr %ksig.addr, align 8, !dbg !6730
  %call = call i32 @is_ia32_frame(ptr noundef %2) #15, !dbg !6732
  %tobool = icmp ne i32 %call, 0, !dbg !6732
  br i1 %tobool, label %if.then, label %if.else5, !dbg !6733

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ksig.addr, align 8, !dbg !6734
  %ka = getelementptr inbounds %struct.ksignal, ptr %3, i32 0, i32 0, !dbg !6737
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %ka, i32 0, i32 0, !dbg !6738
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !6739
  %4 = load i64, ptr %sa_flags, align 8, !dbg !6739
  %and = and i64 %4, 4, !dbg !6740
  %tobool1 = icmp ne i64 %and, 0, !dbg !6740
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !6741

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %ksig.addr, align 8, !dbg !6742
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6743
  %call3 = call i32 @ia32_setup_rt_frame(ptr noundef %5, ptr noundef %6) #15, !dbg !6744
  store i32 %call3, ptr %retval, align 4, !dbg !6745
  br label %return, !dbg !6745

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %ksig.addr, align 8, !dbg !6746
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6747
  %call4 = call i32 @ia32_setup_frame(ptr noundef %7, ptr noundef %8) #15, !dbg !6748
  store i32 %call4, ptr %retval, align 4, !dbg !6749
  br label %return, !dbg !6749

if.else5:                                         ; preds = %entry
  %9 = load ptr, ptr %ksig.addr, align 8, !dbg !6750
  %call6 = call i32 @is_x32_frame(ptr noundef %9) #15, !dbg !6752
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6752
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !6753

if.then8:                                         ; preds = %if.else5
  %10 = load ptr, ptr %ksig.addr, align 8, !dbg !6754
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !6756
  %call9 = call i32 @x32_setup_rt_frame(ptr noundef %10, ptr noundef %11) #15, !dbg !6757
  store i32 %call9, ptr %retval, align 4, !dbg !6758
  br label %return, !dbg !6758

if.else10:                                        ; preds = %if.else5
  %12 = load ptr, ptr %ksig.addr, align 8, !dbg !6759
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !6761
  %call11 = call i32 @x64_setup_rt_frame(ptr noundef %12, ptr noundef %13) #15, !dbg !6762
  store i32 %call11, ptr %retval, align 4, !dbg !6763
  br label %return, !dbg !6763

return:                                           ; preds = %if.else10, %if.then8, %if.else, %if.then2
  %14 = load i32, ptr %retval, align 4, !dbg !6764
  ret i32 %14, !dbg !6764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6765 dso_local void @fpu__clear_user_states(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6768 dso_local void @signal_setup_done(i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6771 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6774, metadata !DIExpression()), !dbg !6779
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6775, metadata !DIExpression()), !dbg !6780
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6781
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6776, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6783
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6784
  %div = udiv i64 %1, 64, !dbg !6784
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6785
  store ptr %add.ptr, ptr %p, align 8, !dbg !6782
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6777, metadata !DIExpression()), !dbg !6787
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6788
  %rem = urem i64 %2, 64, !dbg !6788
  %shl = shl i64 1, %rem, !dbg !6788
  store i64 %shl, ptr %mask, align 8, !dbg !6787
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6778, metadata !DIExpression()), !dbg !6790
  %3 = load ptr, ptr %p, align 8, !dbg !6791
  %4 = load i64, ptr %3, align 8, !dbg !6792
  store i64 %4, ptr %val, align 8, !dbg !6790
  %5 = load i64, ptr %val, align 8, !dbg !6793
  %6 = load i64, ptr %mask, align 8, !dbg !6794
  %and = and i64 %5, %6, !dbg !6795
  %tobool = icmp ne i64 %and, 0, !dbg !6796
  %lnot = xor i1 %tobool, true, !dbg !6796
  %lnot1 = xor i1 %lnot, true, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6798
  ret i1 %lnot1, !dbg !6799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6800 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6803, metadata !DIExpression()), !dbg !6805
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6804, metadata !DIExpression()), !dbg !6806
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6807
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6808
  %div = udiv i64 %1, 64, !dbg !6808
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6809
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6810
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6811
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6812
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6813
  ret i1 %call, !dbg !6814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6815 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6823, metadata !DIExpression()), !dbg !6825
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6824, metadata !DIExpression()), !dbg !6826
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6827
  %1 = load i64, ptr %size.addr, align 8, !dbg !6828
  %conv = trunc i64 %1 to i32, !dbg !6828
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !6829
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6830
  %3 = load i64, ptr %size.addr, align 8, !dbg !6830
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !6830
  ret void, !dbg !6831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6832 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6837, metadata !DIExpression()), !dbg !6839
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6838, metadata !DIExpression()), !dbg !6840
  ret i1 true, !dbg !6841
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6842 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6847, metadata !DIExpression()), !dbg !6850
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6848, metadata !DIExpression()), !dbg !6851
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6849, metadata !DIExpression()), !dbg !6852
  ret void, !dbg !6853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rseq_signal_deliver(ptr noundef %ksig, ptr noundef %regs) #3 align 16 !dbg !5950 {
entry:
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !5960, metadata !DIExpression()), !dbg !6854
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5961, metadata !DIExpression()), !dbg !6855
  br label %do.body, !dbg !6856

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6857
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6857, !srcloc !6859
  br label %do.end, !dbg !6857

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #15, !dbg !6860
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 160, !dbg !6860
  call void @___set_bit(i64 noundef 1, ptr noundef %rseq_event_mask) #15, !dbg !6860
  br label %do.body1, !dbg !6861

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6862, !srcloc !6864
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6865
  %lnot = xor i1 %call2, true, !dbg !6865
  %lnot3 = xor i1 %lnot, true, !dbg !6865
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6865
  %conv = sext i32 %lnot.ext to i64, !dbg !6865
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6865
  %tobool = icmp ne i64 %expval, 0, !dbg !6865
  br i1 %tobool, label %if.then, label %if.end, !dbg !6862

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !6865

do.body4:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !5967), !dbg !6867
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !6867, !srcloc !6869
  call void @llvm.write_register.i64(metadata !5967, i64 %1), !dbg !6867
  br label %do.end5, !dbg !6867

do.end5:                                          ; preds = %do.body4
  br label %if.end, !dbg !6867

if.end:                                           ; preds = %do.end5, %do.body1
  br label %do.end6, !dbg !6862

do.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %ksig.addr, align 8, !dbg !6870
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6871
  call void @rseq_handle_notify_resume(ptr noundef %2, ptr noundef %3) #15, !dbg !6872
  ret void, !dbg !6873
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6874 dso_local i32 @ia32_setup_rt_frame(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6876 dso_local i32 @ia32_setup_frame(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_x32_frame(ptr noundef %ksig) #3 align 16 !dbg !6877 {
entry:
  %ksig.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  ret i32 0, !dbg !6881
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6882 dso_local i32 @x32_setup_rt_frame(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local i32 @x64_setup_rt_frame(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !6884 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6887, metadata !DIExpression()), !dbg !6894
  br label %do.body, !dbg !6895

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6888, metadata !DIExpression()), !dbg !6896
  %0 = load i32, ptr %val.addr, align 4, !dbg !6896
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6896
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6896

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6896
  %cmp = icmp eq i32 %2, 1, !dbg !6896
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6896

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6896
  %cmp1 = icmp eq i32 %3, -1, !dbg !6896
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6896

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6896
  br label %cond.end, !dbg !6896

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6896

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6896
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6896
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6897
  %cmp2 = icmp eq i32 %5, 1, !dbg !6897
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6896

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6898, !srcloc !6900
  br label %if.end8, !dbg !6897

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6901
  %cmp3 = icmp eq i32 %6, -1, !dbg !6901
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6897

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6902, !srcloc !6904
  br label %if.end, !dbg !6901

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6901

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6890, metadata !DIExpression()), !dbg !6905
  %7 = load i32, ptr %val.addr, align 4, !dbg !6905
  %conv = sext i32 %7 to i64, !dbg !6905
  %and = and i64 %conv, 4294967295, !dbg !6905
  %conv7 = trunc i64 %and to i32, !dbg !6905
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6905
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6905
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6905, !srcloc !6906
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !6901
  br label %do.cond, !dbg !6905

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6905

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !6895
  br label %do.end10, !dbg !6896

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6908 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6913, metadata !DIExpression()), !dbg !6915
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6914, metadata !DIExpression()), !dbg !6916
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6917
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6918
  %div = udiv i64 %1, 64, !dbg !6918
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6919
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6920
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6921
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6922
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6923
  ret void, !dbg !6924
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !6925 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !6929
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6927, metadata !DIExpression()), !dbg !6929
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.37, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !6929, !srcloc !6930
  %1 = icmp ult i8 %0, 2, !dbg !6929
  call void @llvm.assume(i1 %1), !dbg !6929
  store i8 %0, ptr %c, align 1, !dbg !6929
  %2 = load i8, ptr %c, align 1, !dbg !6929, !range !6055, !noundef !647
  %tobool = trunc i8 %2 to i1, !dbg !6929
  %frombool = zext i1 %tobool to i8, !dbg !6929
  store i8 %frombool, ptr %tmp, align 1, !dbg !6929
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !6931
  %3 = load i8, ptr %tmp, align 1, !dbg !6929, !range !6055, !noundef !647
  %tobool1 = trunc i8 %3 to i1, !dbg !6929
  ret i1 %tobool1, !dbg !6932
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rseq_handle_notify_resume(ptr noundef %ksig, ptr noundef %regs) #3 align 16 !dbg !6933 {
entry:
  %ksig.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %ksig, ptr %ksig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksig.addr, metadata !6935, metadata !DIExpression()), !dbg !6937
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6936, metadata !DIExpression()), !dbg !6938
  %call = call ptr @get_current() #15, !dbg !6939
  %rseq = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 157, !dbg !6941
  %0 = load ptr, ptr %rseq, align 8, !dbg !6941
  %tobool = icmp ne ptr %0, null, !dbg !6939
  br i1 %tobool, label %if.then, label %if.end, !dbg !6942

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ksig.addr, align 8, !dbg !6943
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6944
  call void @__rseq_handle_notify_resume(ptr noundef %1, ptr noundef %2) #15, !dbg !6945
  br label %if.end, !dbg !6945

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6946
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6947 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6949, metadata !DIExpression()), !dbg !6951
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6950, metadata !DIExpression()), !dbg !6952
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6953
  %1 = load i64, ptr %size.addr, align 8, !dbg !6954
  %conv = trunc i64 %1 to i32, !dbg !6954
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6955
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6956
  %3 = load i64, ptr %size.addr, align 8, !dbg !6956
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #15, !dbg !6956
  ret void, !dbg !6957
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6958 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6960, metadata !DIExpression()), !dbg !6962
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6964
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6965
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !6966, !srcloc !6967
  ret void, !dbg !6968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6969 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6971, metadata !DIExpression()), !dbg !6973
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  ret i1 true, !dbg !6975
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6976 dso_local void @__rseq_handle_notify_resume(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_restore_sigmask() #3 align 16 !dbg !6977 {
entry:
  %retval = alloca i1, align 1
  %call = call ptr @get_current() #15, !dbg !6978
  %restore_sigmask = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !6980
  %bf.load = load i16, ptr %restore_sigmask, align 16, !dbg !6980
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !6980
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6980
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6980
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6978
  br i1 %tobool, label %if.end, label %if.then, !dbg !6981

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6982
  br label %return, !dbg !6982

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current() #15, !dbg !6983
  %restore_sigmask2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 59, !dbg !6984
  %bf.load3 = load i16, ptr %restore_sigmask2, align 16, !dbg !6985
  %bf.clear4 = and i16 %bf.load3, -9, !dbg !6985
  %bf.set = or i16 %bf.clear4, 0, !dbg !6985
  store i16 %bf.set, ptr %restore_sigmask2, align 16, !dbg !6985
  store i1 true, ptr %retval, align 1, !dbg !6986
  br label %return, !dbg !6986

return:                                           ; preds = %if.end, %if.then
  %0 = load i1, ptr %retval, align 1, !dbg !6987
  ret i1 %0, !dbg !6987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6988 dso_local void @__set_current_blocked(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6993 dso_local i32 @kstrtobool(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !6997 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7003, metadata !DIExpression()), !dbg !7006
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7004, metadata !DIExpression()), !dbg !7007
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7008
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7009, !range !6055, !noundef !647
  %tobool = trunc i8 %1 to i1, !dbg !7009
  %conv = zext i1 %tobool to i32, !dbg !7009
  %or = or i32 2, %conv, !dbg !7010
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !7011, !srcloc !7012

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7013
  br label %return, !dbg !7013

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7005), !dbg !7014
  store i1 true, ptr %retval, align 1, !dbg !7015
  br label %return, !dbg !7015

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7016
  ret i1 %2, !dbg !7016
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind memory(none) }
attributes #18 = { noredzone nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!15}
!llvm.named.register.rsp = !{!5967}
!llvm.module.flags = !{!5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975}
!llvm.ident = !{!5976}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/signal.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62c16e30b4e90a2239d8b88263b134a8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7}
!7 = !DISubrange(count: 13)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 328, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 41)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_signal__315_201_init_sigframe_sizeearly316", scope: !15, file: !2, line: 201, type: !35, isLocal: true, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.signal.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/signal\22 -D KBUILD_BASENAME=\22signal\22 -D KBUILD_MODNAME=\22signal\22 -D __KBUILD_MODNAME=kmod_signal -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/signal.ll arch/x86/kernel/signal.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !306, globals: !5909, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17, !23, !28, !122, !130, !137, !145, !161, !168, !174, !185, !191, !197, !204, !212, !219, !228, !233, !238, !244, !253, !258, !264, !270, !277, !300}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !19, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !30, file: !29, line: 147, baseType: !19, size: 32, elements: !119)
!29 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !29, line: 135, size: 512, elements: !31)
!31 = !{!32, !34, !36, !38, !42, !43, !59, !117, !118}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !30, file: !29, line: 136, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !29, line: 137, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !30, file: !29, line: 138, baseType: !37, size: 32, offset: 128)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !30, file: !29, line: 139, baseType: !39, size: 16, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !29, line: 150, baseType: !28, size: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !30, file: !29, line: 151, baseType: !44, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !29, line: 64, baseType: !46)
!46 = !DISubroutineType(types: !47)
!47 = !{!37, !48, !37, !35, !49, !55}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !52, line: 72, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !52, line: 16, baseType: !54)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !40, line: 52, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !52, line: 88, baseType: !58)
!58 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !30, file: !29, line: 152, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !29, line: 117, size: 256, elements: !62)
!62 = !{!63, !68}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !61, file: !29, line: 118, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 174, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 172, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !65, file: !40, line: 173, baseType: !37, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !61, file: !29, line: 119, baseType: !69, size: 192, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !70, line: 41, baseType: !71)
!70 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !70, line: 37, size: 192, elements: !72)
!72 = !{!73, !111}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !71, file: !70, line: 38, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !75, line: 29, baseType: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !75, line: 17, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 18, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 18, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !79, file: !75, line: 19, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !83, line: 14, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !82, file: !83, line: 15, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !87, line: 44, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !87, line: 14, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !87, line: 15, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !87, line: 15, size: 32, elements: !92)
!92 = !{!93, !94, !104}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !91, file: !87, line: 16, baseType: !64, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 24, baseType: !95, size: 16)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 24, size: 16, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !95, file: !87, line: 25, baseType: !98, size: 8)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !95, file: !87, line: 26, baseType: !98, size: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 28, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 28, size: 32, elements: !106)
!106 = !{!107, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !105, file: !87, line: 29, baseType: !108, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !41)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !105, file: !87, line: 30, baseType: !108, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !71, file: !70, line: 39, baseType: !112, size: 128, offset: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !40, line: 191, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !40, line: 191, baseType: !115, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !30, file: !29, line: 153, baseType: !35, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !30, file: !29, line: 154, baseType: !35, size: 64, offset: 448)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !123, line: 9, baseType: !19, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!126 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!127 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!128 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!129 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !131, line: 312, baseType: !19, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!132 = !{!133, !134, !135, !136}
!133 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!134 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!135 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!136 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !138, line: 68, baseType: !19, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!141 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!142 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!143 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !146, line: 1325, baseType: !19, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!148 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!149 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!150 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!151 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!152 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!153 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!154 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!155 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!156 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!157 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!158 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!159 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!160 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !162, line: 15, baseType: !19, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!166 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!167 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !169, line: 26, baseType: !19, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!172 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!173 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !175, line: 253, baseType: !19, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184}
!177 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!178 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!179 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!180 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!181 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!182 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!183 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!184 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !175, line: 158, baseType: !19, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190}
!187 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!188 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!189 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!190 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !192, line: 45, baseType: !19, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!195 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!196 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !198, line: 487, baseType: !19, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!199 = !{!200, !201, !202, !203}
!200 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!201 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!202 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!203 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !205, line: 620, baseType: !19, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!208 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!209 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!210 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!211 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !205, line: 597, baseType: !37, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!215 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!216 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!217 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!218 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !198, line: 547, baseType: !19, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!222 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!223 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!224 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!225 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!226 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!227 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !198, line: 564, baseType: !19, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !198, line: 577, baseType: !19, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !198, line: 503, baseType: !19, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!242 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !245, line: 593, baseType: !37, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!246 = !{!247, !248, !249, !250, !251, !252}
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!248 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !254, line: 2052, baseType: !19, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!257 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !259, line: 54, baseType: !19, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "USRQUOTA", value: 0)
!262 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!263 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !265, line: 16, baseType: !19, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!266 = !{!267, !268, !269}
!267 = !DIEnumerator(name: "TT_NONE", value: 0)
!268 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!269 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !271, line: 51, baseType: !19, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!274 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!275 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!276 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xfeature", file: !278, line: 102, baseType: !19, size: 32, elements: !279)
!278 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!280 = !DIEnumerator(name: "XFEATURE_FP", value: 0)
!281 = !DIEnumerator(name: "XFEATURE_SSE", value: 1)
!282 = !DIEnumerator(name: "XFEATURE_YMM", value: 2)
!283 = !DIEnumerator(name: "XFEATURE_BNDREGS", value: 3)
!284 = !DIEnumerator(name: "XFEATURE_BNDCSR", value: 4)
!285 = !DIEnumerator(name: "XFEATURE_OPMASK", value: 5)
!286 = !DIEnumerator(name: "XFEATURE_ZMM_Hi256", value: 6)
!287 = !DIEnumerator(name: "XFEATURE_Hi16_ZMM", value: 7)
!288 = !DIEnumerator(name: "XFEATURE_PT_UNIMPLEMENTED_SO_FAR", value: 8)
!289 = !DIEnumerator(name: "XFEATURE_PKRU", value: 9)
!290 = !DIEnumerator(name: "XFEATURE_PASID", value: 10)
!291 = !DIEnumerator(name: "XFEATURE_CET_USER", value: 11)
!292 = !DIEnumerator(name: "XFEATURE_CET_KERNEL_UNUSED", value: 12)
!293 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_13", value: 13)
!294 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_14", value: 14)
!295 = !DIEnumerator(name: "XFEATURE_LBR", value: 15)
!296 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_16", value: 16)
!297 = !DIEnumerator(name: "XFEATURE_XTILE_CFG", value: 17)
!298 = !DIEnumerator(name: "XFEATURE_XTILE_DATA", value: 18)
!299 = !DIEnumerator(name: "XFEATURE_MAX", value: 19)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rseq_event_mask_bits", file: !301, line: 2336, baseType: !19, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "RSEQ_EVENT_PREEMPT_BIT", value: 0)
!304 = !DIEnumerator(name: "RSEQ_EVENT_SIGNAL_BIT", value: 1)
!305 = !DIEnumerator(name: "RSEQ_EVENT_MIGRATE_BIT", value: 2)
!306 = !{!54, !35, !37, !307, !33, !308, !309, !5891, !5904, !5905, !5906, !319, !5907, !1064}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !301, line: 746, size: 58368, elements: !311)
!311 = !{!312, !322, !323, !324, !330, !331, !332, !333, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !416, !427, !528, !532, !535, !566, !567, !568, !569, !580, !582, !583, !584, !585, !586, !587, !598, !599, !602, !603, !604, !605, !606, !607, !608, !609, !616, !617, !624, !625, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !5037, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5080, !5086, !5087, !5088, !5089, !5090, !5092, !5095, !5102, !5107, !5110, !5113, !5116, !5148, !5346, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5384, !5385, !5386, !5395, !5403, !5404, !5405, !5406, !5407, !5412, !5413, !5414, !5417, !5418, !5421, !5424, !5427, !5435, !5438, !5439, !5525, !5526, !5527, !5528, !5529, !5535, !5536, !5537, !5538, !5539, !5540, !5543, !5557, !5558, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5601, !5602, !5608, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5620, !5692, !5694, !5695, !5696, !5697, !5698, !5699, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5716, !5717, !5718}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !310, file: !301, line: 752, baseType: !313, size: 192)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !314, line: 56, size: 192, elements: !315)
!314 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!315 = !{!316, !317, !318, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !314, line: 57, baseType: !54, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !313, file: !314, line: 58, baseType: !54, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !313, file: !314, line: 59, baseType: !319, size: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !19)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !313, file: !314, line: 61, baseType: !319, size: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !310, file: !301, line: 754, baseType: !19, size: 32, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !310, file: !301, line: 767, baseType: !35, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !310, file: !301, line: 768, baseType: !325, size: 32, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !326, line: 113, baseType: !327)
!326 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !326, line: 111, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !327, file: !326, line: 112, baseType: !64, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !301, line: 770, baseType: !19, size: 32, offset: 352)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !310, file: !301, line: 771, baseType: !19, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !310, file: !301, line: 774, baseType: !37, size: 32, offset: 416)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !310, file: !301, line: 775, baseType: !334, size: 128, offset: 448)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !335, line: 58, size: 128, elements: !336)
!335 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!336 = !{!337, !343, !348, !349}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !334, file: !335, line: 59, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !339, line: 60, size: 64, elements: !340)
!339 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !339, line: 61, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !335, line: 60, baseType: !344, size: 32, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !335, line: 60, size: 32, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !344, file: !335, line: 61, baseType: !19, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !344, file: !335, line: 62, baseType: !64, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !334, file: !335, line: 65, baseType: !108, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !334, file: !335, line: 65, baseType: !108, size: 16, offset: 112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !310, file: !301, line: 776, baseType: !19, size: 32, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !310, file: !301, line: 777, baseType: !54, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !310, file: !301, line: 778, baseType: !309, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !310, file: !301, line: 787, baseType: !37, size: 32, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !310, file: !301, line: 788, baseType: !37, size: 32, offset: 800)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !310, file: !301, line: 790, baseType: !37, size: 32, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !310, file: !301, line: 792, baseType: !37, size: 32, offset: 864)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !310, file: !301, line: 793, baseType: !37, size: 32, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !310, file: !301, line: 794, baseType: !37, size: 32, offset: 928)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !310, file: !301, line: 795, baseType: !19, size: 32, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !310, file: !301, line: 797, baseType: !361, size: 2048, offset: 1024)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !301, line: 551, size: 2048, elements: !362)
!362 = !{!363, !368, !376, !380, !381, !382, !383, !384, !385, !386, !387, !390, !391, !392, !393, !395, !398, !399, !400}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !361, file: !301, line: 553, baseType: !364, size: 128)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !301, line: 411, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !364, file: !301, line: 412, baseType: !54, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !364, file: !301, line: 413, baseType: !319, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !361, file: !301, line: 554, baseType: !369, size: 192, align: 64, offset: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !370, line: 5, size: 192, align: 64, elements: !371)
!370 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!371 = !{!372, !373, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !369, file: !370, line: 6, baseType: !54, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !369, file: !370, line: 7, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !369, file: !370, line: 8, baseType: !374, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !361, file: !301, line: 555, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !379)
!379 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !361, file: !301, line: 556, baseType: !377, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !361, file: !301, line: 558, baseType: !112, size: 128, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !361, file: !301, line: 559, baseType: !19, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !361, file: !301, line: 561, baseType: !377, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !361, file: !301, line: 562, baseType: !377, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !361, file: !301, line: 563, baseType: !377, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !361, file: !301, line: 564, baseType: !377, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !361, file: !301, line: 565, baseType: !388, size: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !58)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !361, file: !301, line: 566, baseType: !377, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !361, file: !301, line: 568, baseType: !377, size: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !361, file: !301, line: 571, baseType: !37, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !361, file: !301, line: 572, baseType: !394, size: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !361, file: !301, line: 574, baseType: !396, size: 64, offset: 1216)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !301, line: 49, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !361, file: !301, line: 576, baseType: !396, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !361, file: !301, line: 578, baseType: !54, size: 64, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !361, file: !301, line: 588, baseType: !401, size: 512, align: 512, offset: 1536)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !301, line: 497, size: 512, align: 512, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !401, file: !301, line: 498, baseType: !377, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !401, file: !301, line: 499, baseType: !377, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !401, file: !301, line: 500, baseType: !377, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !401, file: !301, line: 501, baseType: !319, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !401, file: !301, line: 502, baseType: !319, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !401, file: !301, line: 503, baseType: !54, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !401, file: !301, line: 504, baseType: !54, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !401, file: !301, line: 505, baseType: !54, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !401, file: !301, line: 506, baseType: !412, size: 64, align: 64, offset: 448)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !301, line: 445, size: 64, align: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !412, file: !301, line: 446, baseType: !19, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !412, file: !301, line: 447, baseType: !19, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !310, file: !301, line: 798, baseType: !417, size: 384, offset: 3072)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !301, line: 592, size: 384, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !417, file: !301, line: 593, baseType: !112, size: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !417, file: !301, line: 594, baseType: !54, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !417, file: !301, line: 595, baseType: !54, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !417, file: !301, line: 596, baseType: !19, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !417, file: !301, line: 597, baseType: !41, size: 16, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !417, file: !301, line: 598, baseType: !41, size: 16, offset: 304)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !417, file: !301, line: 600, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !310, file: !301, line: 799, baseType: !428, size: 1792, offset: 3456)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !301, line: 610, size: 1792, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !525, !526}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !428, file: !301, line: 611, baseType: !369, size: 192, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !428, file: !301, line: 618, baseType: !377, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !428, file: !301, line: 619, baseType: !377, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !428, file: !301, line: 620, baseType: !377, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !428, file: !301, line: 621, baseType: !377, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !428, file: !301, line: 622, baseType: !377, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !428, file: !301, line: 629, baseType: !388, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !428, file: !301, line: 630, baseType: !377, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !301, line: 631, baseType: !19, size: 32, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !428, file: !301, line: 653, baseType: !19, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !428, file: !301, line: 654, baseType: !19, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !428, file: !301, line: 655, baseType: !19, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !428, file: !301, line: 656, baseType: !19, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !428, file: !301, line: 662, baseType: !444, size: 512, offset: 704)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !445)
!445 = !{!446, !454, !455, !460, !521, !522, !523, !524}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !24, line: 119, baseType: !447, size: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !448, line: 9, size: 256, elements: !449)
!448 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !448, line: 10, baseType: !369, size: 192, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !447, file: !448, line: 11, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !453, line: 29, baseType: !388)
!453 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !444, file: !24, line: 120, baseType: !452, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !444, file: !24, line: 121, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!23, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !444, file: !24, line: 122, baseType: !461, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !463)
!463 = !{!464, !490, !491, !494, !504, !505, !516, !520}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !462, file: !24, line: 160, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !467)
!467 = !{!468, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !24, line: 216, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !83, line: 23, baseType: !82)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !466, file: !24, line: 217, baseType: !19, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !466, file: !24, line: 218, baseType: !19, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !466, file: !24, line: 219, baseType: !19, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !466, file: !24, line: 220, baseType: !19, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !466, file: !24, line: 221, baseType: !19, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !466, file: !24, line: 222, baseType: !19, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !466, file: !24, line: 223, baseType: !19, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !466, file: !24, line: 224, baseType: !19, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !466, file: !24, line: 226, baseType: !19, size: 32, offset: 160)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !466, file: !24, line: 227, baseType: !41, size: 16, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !466, file: !24, line: 228, baseType: !41, size: 16, offset: 208)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !466, file: !24, line: 229, baseType: !19, size: 32, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !466, file: !24, line: 235, baseType: !452, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !466, file: !24, line: 236, baseType: !459, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !466, file: !24, line: 237, baseType: !452, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !466, file: !24, line: 238, baseType: !459, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !466, file: !24, line: 239, baseType: !487, size: 4096, align: 512, offset: 512)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 4096, align: 512, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 8)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !462, file: !24, line: 161, baseType: !19, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !462, file: !24, line: 162, baseType: !492, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !40, line: 32, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !52, line: 96, baseType: !37)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !462, file: !24, line: 163, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !496, line: 274, baseType: !497)
!496 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !496, line: 274, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !497, file: !496, line: 274, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !496, line: 69, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !496, line: 64, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !501, file: !496, line: 65, baseType: !19, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !462, file: !24, line: 164, baseType: !459, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !462, file: !24, line: 165, baseType: !506, size: 128, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !448, line: 14, size: 128, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !506, file: !448, line: 15, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !370, line: 26, size: 128, elements: !510)
!510 = !{!511, !515}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !509, file: !370, line: 27, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !370, line: 12, size: 64, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !512, file: !370, line: 13, baseType: !374, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !509, file: !370, line: 28, baseType: !374, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !462, file: !24, line: 166, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!452}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !462, file: !24, line: 167, baseType: !452, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !444, file: !24, line: 123, baseType: !98, size: 8, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !444, file: !24, line: 124, baseType: !98, size: 8, offset: 456)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !444, file: !24, line: 125, baseType: !98, size: 8, offset: 464)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !444, file: !24, line: 126, baseType: !98, size: 8, offset: 472)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !428, file: !301, line: 671, baseType: !444, size: 512, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !428, file: !301, line: 679, baseType: !527, size: 64, offset: 1728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !310, file: !301, line: 800, baseType: !529, size: 64, offset: 5248)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !301, line: 800, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !310, file: !301, line: 809, baseType: !533, size: 64, offset: 5312)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !301, line: 70, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !310, file: !301, line: 825, baseType: !536, size: 2048, align: 512, offset: 5632)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !301, line: 509, size: 2048, align: 512, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !536, file: !301, line: 511, baseType: !377, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !536, file: !301, line: 512, baseType: !377, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !536, file: !301, line: 513, baseType: !377, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !536, file: !301, line: 514, baseType: !377, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !536, file: !301, line: 515, baseType: !377, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !536, file: !301, line: 516, baseType: !377, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !536, file: !301, line: 518, baseType: !377, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !536, file: !301, line: 519, baseType: !377, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !536, file: !301, line: 520, baseType: !388, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !536, file: !301, line: 522, baseType: !377, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !536, file: !301, line: 523, baseType: !377, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !536, file: !301, line: 524, baseType: !388, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !536, file: !301, line: 526, baseType: !388, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !536, file: !301, line: 527, baseType: !377, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !536, file: !301, line: 529, baseType: !377, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !536, file: !301, line: 530, baseType: !377, size: 64, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !536, file: !301, line: 531, baseType: !377, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !536, file: !301, line: 532, baseType: !377, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !536, file: !301, line: 533, baseType: !377, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !536, file: !301, line: 535, baseType: !377, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !536, file: !301, line: 536, baseType: !377, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !536, file: !301, line: 537, baseType: !377, size: 64, offset: 1344)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !536, file: !301, line: 538, baseType: !377, size: 64, offset: 1408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !536, file: !301, line: 539, baseType: !377, size: 64, offset: 1472)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !536, file: !301, line: 540, baseType: !377, size: 64, offset: 1536)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !536, file: !301, line: 541, baseType: !377, size: 64, offset: 1600)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !536, file: !301, line: 542, baseType: !377, size: 64, offset: 1664)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !536, file: !301, line: 543, baseType: !377, size: 64, offset: 1728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !310, file: !301, line: 833, baseType: !19, size: 32, offset: 7680)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !310, file: !301, line: 836, baseType: !19, size: 32, offset: 7712)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !310, file: !301, line: 837, baseType: !37, size: 32, offset: 7744)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !310, file: !301, line: 838, baseType: !570, size: 64, offset: 7808)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !573, line: 19, baseType: !574)
!573 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !573, line: 19, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !574, file: !573, line: 19, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 1)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !310, file: !301, line: 839, baseType: !581, size: 64, offset: 7872)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !310, file: !301, line: 840, baseType: !572, size: 64, offset: 7936)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !310, file: !301, line: 841, baseType: !35, size: 64, offset: 8000)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !310, file: !301, line: 843, baseType: !41, size: 16, offset: 8064)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !310, file: !301, line: 845, baseType: !41, size: 16, offset: 8080)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !310, file: !301, line: 848, baseType: !37, size: 32, offset: 8096)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !310, file: !301, line: 849, baseType: !588, size: 32, offset: 8128)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !301, line: 718, size: 32, elements: !589)
!589 = !{!590, !597}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !588, file: !301, line: 724, baseType: !591, size: 32)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !301, line: 719, size: 32, elements: !592)
!592 = !{!593, !594, !595, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !591, file: !301, line: 720, baseType: !98, size: 8)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !591, file: !301, line: 721, baseType: !98, size: 8, offset: 8)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !591, file: !301, line: 722, baseType: !98, size: 8, offset: 16)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !591, file: !301, line: 723, baseType: !98, size: 8, offset: 24)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !588, file: !301, line: 725, baseType: !319, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !310, file: !301, line: 850, baseType: !112, size: 128, offset: 8192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !310, file: !301, line: 851, baseType: !600, size: 64, offset: 8320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !301, line: 60, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !310, file: !301, line: 855, baseType: !54, size: 64, offset: 8384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !310, file: !301, line: 856, baseType: !98, size: 8, offset: 8448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !310, file: !301, line: 857, baseType: !98, size: 8, offset: 8456)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !310, file: !301, line: 858, baseType: !37, size: 32, offset: 8480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !310, file: !301, line: 859, baseType: !112, size: 128, offset: 8512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !310, file: !301, line: 860, baseType: !37, size: 32, offset: 8640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !310, file: !301, line: 861, baseType: !112, size: 128, offset: 8704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !310, file: !301, line: 873, baseType: !610, size: 256, offset: 8832)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !301, line: 376, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !610, file: !301, line: 381, baseType: !54, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !610, file: !301, line: 384, baseType: !379, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !610, file: !301, line: 389, baseType: !379, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !610, file: !301, line: 392, baseType: !379, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !310, file: !301, line: 875, baseType: !112, size: 128, offset: 9088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !310, file: !301, line: 877, baseType: !618, size: 320, offset: 9216)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !619, line: 86, size: 320, elements: !620)
!619 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !618, file: !619, line: 87, baseType: !37, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !618, file: !619, line: 88, baseType: !112, size: 128, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !618, file: !619, line: 89, baseType: !112, size: 128, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !310, file: !301, line: 878, baseType: !369, size: 192, align: 64, offset: 9536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !310, file: !301, line: 881, baseType: !626, size: 64, offset: 9728)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !146, line: 733, size: 10240, elements: !628)
!628 = !{!629, !4951}
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !146, line: 734, baseType: !630, size: 10240)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !146, line: 734, size: 10240, elements: !631)
!631 = !{!632, !636, !650, !4830, !4831, !4832, !4833, !4834, !4835, !4842, !4843, !4844, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4883, !4885, !4888, !4931, !4932, !4933, !4936, !4937, !4938, !4941, !4942, !4943, !4949, !4950}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !146, line: 739, baseType: !633, size: 512, align: 512)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !146, line: 739, size: 512, align: 512, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !633, file: !146, line: 747, baseType: !64, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !630, file: !146, line: 750, baseType: !637, size: 128, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !638, line: 218, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!639 = !{!640, !648, !649}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !638, line: 219, baseType: !641, size: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 219, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !641, file: !638, line: 220, baseType: !74, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !641, file: !638, line: 221, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !638, line: 197, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 197, elements: !647)
!647 = !{}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !637, file: !638, line: 223, baseType: !19, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !637, file: !638, line: 224, baseType: !35, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !630, file: !146, line: 752, baseType: !651, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!54, !654, !54, !54, !54, !54}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !254, line: 994, size: 1856, align: 64, elements: !656)
!656 = !{!657, !671, !672, !674, !681, !693, !694, !695, !1077, !1155, !1164, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !254, line: 995, baseType: !658, size: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !254, line: 995, size: 128, elements: !659)
!659 = !{!660, !661, !670}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !658, file: !254, line: 996, baseType: !338, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !658, file: !254, line: 997, baseType: !662, size: 128, align: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 232, size: 128, align: 64, elements: !663)
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !40, line: 233, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !662, file: !40, line: 234, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !665}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !658, file: !254, line: 998, baseType: !19, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !655, file: !254, line: 1005, baseType: !74, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !655, file: !254, line: 1006, baseType: !673, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !40, line: 156, baseType: !19)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !655, file: !254, line: 1007, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !676, line: 13, baseType: !677)
!676 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !40, line: 181, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 179, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !678, file: !40, line: 180, baseType: !388, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !655, file: !254, line: 1008, baseType: !682, size: 256, offset: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !683, line: 66, size: 256, elements: !684)
!683 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!684 = !{!685, !686, !687, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !683, line: 67, baseType: !675, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !682, file: !683, line: 68, baseType: !469, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !682, file: !683, line: 70, baseType: !688, size: 32, offset: 96)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !689, line: 15, size: 32, elements: !690)
!689 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !688, file: !689, line: 20, baseType: !64, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !682, file: !683, line: 72, baseType: !112, size: 128, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !655, file: !254, line: 1009, baseType: !56, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !655, file: !254, line: 1010, baseType: !19, size: 32, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !655, file: !254, line: 1011, baseType: !696, size: 256, offset: 640)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !254, line: 948, size: 256, elements: !697)
!697 = !{!698, !721, !1073, !1074, !1075, !1076}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !696, file: !254, line: 949, baseType: !699, size: 64)
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
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !709, file: !705, line: 15, baseType: !64, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 16, baseType: !713, size: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 16, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !713, file: !705, line: 18, baseType: !98, size: 8)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !713, file: !705, line: 19, baseType: !717, size: 24, offset: 8)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 3)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !705, line: 26, baseType: !86, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !696, file: !254, line: 950, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !123, line: 59, size: 768, elements: !724)
!724 = !{!725, !726, !727, !728, !741, !742, !743, !744}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !723, file: !123, line: 61, baseType: !325, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !723, file: !123, line: 62, baseType: !19, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !123, line: 63, baseType: !74, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !723, file: !123, line: 65, baseType: !729, size: 256, offset: 128)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !739)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !40, line: 194, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !730, file: !40, line: 195, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !40, line: 198, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !40, line: 199, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !40, line: 199, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !{!740}
!740 = !DISubrange(count: 4)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !723, file: !123, line: 66, baseType: !730, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !723, file: !123, line: 68, baseType: !69, size: 192, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !723, file: !123, line: 69, baseType: !662, size: 128, align: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !723, file: !123, line: 70, baseType: !745, offset: 768)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, elements: !1071)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !123, line: 54, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !746, file: !123, line: 55, baseType: !37, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !746, file: !123, line: 56, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !752, line: 26, size: 1152, elements: !753)
!752 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!753 = !{!754, !768, !769, !770, !771, !775, !776, !777, !780, !1067, !1068, !1069, !1070}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !751, file: !752, line: 27, baseType: !755, size: 192)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !756, line: 19, size: 192, elements: !757)
!756 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!757 = !{!758, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !755, file: !756, line: 20, baseType: !759, size: 128)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !760, line: 296, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!761 = !{!762, !763, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !759, file: !760, line: 297, baseType: !74, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !759, file: !760, line: 299, baseType: !764, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !19)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !759, file: !760, line: 300, baseType: !35, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !755, file: !756, line: 21, baseType: !19, size: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !755, file: !756, line: 22, baseType: !19, size: 32, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !751, file: !752, line: 28, baseType: !662, size: 128, align: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !751, file: !752, line: 29, baseType: !19, size: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !751, file: !752, line: 30, baseType: !309, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !751, file: !752, line: 31, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !774, line: 11, flags: DIFlagFwdDecl)
!774 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !751, file: !752, line: 32, baseType: !19, size: 32, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !751, file: !752, line: 33, baseType: !750, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !751, file: !752, line: 35, baseType: !778, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !752, line: 17, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !751, file: !752, line: 37, baseType: !781, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !783, line: 68, size: 4800, elements: !784)
!783 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!784 = !{!785, !807, !808, !809, !810, !811, !819, !826, !837, !838, !841, !842, !964, !965, !977, !1047, !1048, !1062, !1065}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !782, file: !783, line: 69, baseType: !786, size: 576)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !783, line: 23, size: 576, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !786, file: !783, line: 24, baseType: !319, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !783, line: 25, baseType: !790, size: 512, offset: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !783, line: 25, size: 512, elements: !791)
!791 = !{!792, !801}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !790, file: !783, line: 26, baseType: !793, size: 480)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 480, elements: !799)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !783, line: 17, size: 96, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !794, file: !783, line: 18, baseType: !319, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !794, file: !783, line: 19, baseType: !319, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !783, line: 20, baseType: !319, size: 32, offset: 64)
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
!810 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !782, file: !783, line: 73, baseType: !37, size: 32, offset: 1792)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 74, baseType: !812, size: 32, offset: 1824)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !813, line: 23, baseType: !814)
!813 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 21, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !813, line: 22, baseType: !817, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !40, line: 37, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !52, line: 49, baseType: !19)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !782, file: !783, line: 75, baseType: !820, size: 32, offset: 1856)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !813, line: 28, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 26, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !821, file: !813, line: 27, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !40, line: 38, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !52, line: 50, baseType: !19)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !782, file: !783, line: 76, baseType: !827, size: 192, offset: 1920)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !828, line: 9, size: 192, elements: !829)
!828 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!829 = !{!830, !831, !835, !836}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !827, file: !828, line: 10, baseType: !675, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !827, file: !828, line: 11, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !828, line: 7, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !827, file: !828, line: 12, baseType: !19, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !827, file: !828, line: 13, baseType: !325, size: 32, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !783, line: 77, baseType: !54, size: 64, offset: 2112)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !782, file: !783, line: 80, baseType: !839, size: 8, offset: 2176)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !840)
!840 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !782, file: !783, line: 88, baseType: !112, size: 128, offset: 2240)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !782, file: !783, line: 89, baseType: !843, size: 64, offset: 2368)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !845, line: 195, size: 1728, elements: !846)
!845 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!846 = !{!847, !848, !853, !858, !867, !870, !871, !878, !879, !880, !881, !884, !885, !886, !888, !889, !928, !949}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !844, file: !845, line: 196, baseType: !325, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !844, file: !845, line: 197, baseType: !849, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !845, line: 28, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !40, line: 104, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !37)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 198, baseType: !854, size: 192, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 198, size: 192, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !854, file: !845, line: 199, baseType: !112, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !854, file: !845, line: 200, baseType: !369, size: 192, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !844, file: !845, line: 205, baseType: !859, size: 320, offset: 256)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !860, line: 48, size: 320, elements: !861)
!860 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!861 = !{!862, !863, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !860, line: 49, baseType: !675, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !859, file: !860, line: 55, baseType: !675, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !859, file: !860, line: 57, baseType: !688, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !859, file: !860, line: 59, baseType: !469, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !859, file: !860, line: 60, baseType: !112, size: 128, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !844, file: !845, line: 206, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !845, line: 206, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !844, file: !845, line: 207, baseType: !35, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 208, baseType: !872, size: 64, offset: 704)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 208, size: 64, elements: !873)
!873 = !{!874, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !872, file: !845, line: 209, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !876, line: 8, baseType: !389)
!876 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !872, file: !845, line: 210, baseType: !875, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !844, file: !845, line: 212, baseType: !875, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !844, file: !845, line: 213, baseType: !812, size: 32, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !844, file: !845, line: 214, baseType: !820, size: 32, offset: 864)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !844, file: !845, line: 215, baseType: !882, size: 32, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !845, line: 31, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 110, baseType: !319)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !844, file: !845, line: 216, baseType: !41, size: 16, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !844, file: !845, line: 217, baseType: !41, size: 16, offset: 944)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !844, file: !845, line: 221, baseType: !887, size: 16, offset: 960)
!887 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 228, baseType: !54, size: 64, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 245, baseType: !890, size: 320, offset: 1088)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 245, size: 320, elements: !891)
!891 = !{!892, !919}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !890, file: !845, line: 246, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !845, line: 114, size: 320, elements: !894)
!894 = !{!895, !896, !908, !911, !918}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !893, file: !845, line: 116, baseType: !54, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !845, line: 117, baseType: !897, size: 64, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !845, line: 117, size: 64, elements: !898)
!898 = !{!899, !907}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !845, line: 118, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !845, line: 118, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !900, file: !845, line: 120, baseType: !108, size: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !900, file: !845, line: 121, baseType: !904, size: 48, offset: 16)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 48, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 6)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !897, file: !845, line: 127, baseType: !54, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !845, line: 129, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !845, line: 102, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !893, file: !845, line: 130, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !845, line: 108, size: 192, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !913, file: !845, line: 109, baseType: !662, size: 128, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !913, file: !845, line: 110, baseType: !325, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !913, file: !845, line: 111, baseType: !839, size: 8, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !845, line: 131, baseType: !33, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !845, line: 247, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !845, line: 247, size: 320, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !920, file: !845, line: 248, baseType: !54, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !920, file: !845, line: 249, baseType: !54, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !845, line: 250, baseType: !909, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !920, file: !845, line: 251, baseType: !912, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !920, file: !845, line: 252, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 260, baseType: !929, size: 256, offset: 1408)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 260, size: 256, elements: !930)
!930 = !{!931, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !929, file: !845, line: 261, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !845, line: 134, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !932, file: !845, line: 135, baseType: !35, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !932, file: !845, line: 136, baseType: !936, size: 256)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !739)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !845, line: 262, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !845, line: 262, size: 256, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !938, file: !845, line: 264, baseType: !112, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !938, file: !845, line: 265, baseType: !942, size: 128, offset: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !943, line: 22, size: 128, elements: !944)
!943 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!944 = !{!945, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !942, file: !943, line: 23, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !943, line: 23, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !942, file: !943, line: 24, baseType: !54, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !844, file: !845, line: 280, baseType: !950, size: 64, offset: 1664)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !845, line: 176, size: 192, elements: !952)
!952 = !{!953, !962, !963}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !951, file: !845, line: 177, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !845, line: 171, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!37, !843, !958, !960, !843}
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
!970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !966, file: !967, line: 100, baseType: !112, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !966, file: !967, line: 101, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !967, line: 21, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !782, file: !783, line: 99, baseType: !978, size: 768, offset: 3008)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !29, line: 199, size: 768, elements: !979)
!979 = !{!980, !985}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !978, file: !29, line: 200, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!37, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !978, file: !29, line: 201, baseType: !986, size: 704, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !29, line: 193, size: 704, elements: !987)
!987 = !{!988, !1046}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !986, file: !29, line: 195, baseType: !989, size: 640)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !29, line: 173, size: 640, elements: !990)
!990 = !{!991, !1003, !1015, !1016, !1036, !1037, !1039, !1045}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !29, line: 174, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !29, line: 174, size: 192, elements: !993)
!993 = !{!994, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !29, line: 175, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !29, line: 175, size: 192, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !995, file: !29, line: 176, baseType: !48, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !995, file: !29, line: 177, baseType: !37, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !995, file: !29, line: 178, baseType: !37, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !995, file: !29, line: 179, baseType: !37, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !995, file: !29, line: 180, baseType: !37, size: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !992, file: !29, line: 182, baseType: !662, size: 128, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !989, file: !29, line: 184, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1006, line: 26, size: 256, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1005, file: !1006, line: 27, baseType: !19, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1005, file: !1006, line: 28, baseType: !1010, size: 192, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1011, line: 43, size: 192, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !1011, line: 44, baseType: !469, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1010, file: !1011, line: 45, baseType: !112, size: 128, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !989, file: !29, line: 185, baseType: !48, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !989, file: !29, line: 186, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !29, line: 204, size: 960, elements: !1019)
!1019 = !{!1020, !1021, !1025, !1032}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1018, file: !29, line: 205, baseType: !978, size: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1018, file: !29, line: 206, baseType: !1022, size: 64, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!984, !1017}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1018, file: !29, line: 207, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1018, file: !29, line: 209, baseType: !1033, size: 64, offset: 896)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!37, !1029, !48}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !989, file: !29, line: 187, baseType: !984, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !989, file: !29, line: 188, baseType: !1038, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !989, file: !29, line: 189, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !29, line: 157, size: 256, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1041, file: !29, line: 158, baseType: !369, size: 192, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1041, file: !29, line: 159, baseType: !1029, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !989, file: !29, line: 190, baseType: !730, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !986, file: !29, line: 196, baseType: !512, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !782, file: !783, line: 100, baseType: !1029, size: 64, offset: 3776)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !782, file: !783, line: 102, baseType: !1049, size: 64, offset: 3840)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !783, line: 107, size: 1152, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1060}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !783, line: 108, baseType: !734, size: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1050, file: !783, line: 109, baseType: !781, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1050, file: !783, line: 110, baseType: !812, size: 32, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1050, file: !783, line: 111, baseType: !64, size: 32, offset: 224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1050, file: !783, line: 112, baseType: !1057, size: 640, offset: 256)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 640, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 10)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1050, file: !783, line: 113, baseType: !1061, size: 256, offset: 896)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !739)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !782, file: !783, line: 103, baseType: !1063, size: 640, offset: 3904)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 640, elements: !1058)
!1064 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !782, file: !783, line: 104, baseType: !1066, size: 256, offset: 4544)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !739)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !751, file: !752, line: 38, baseType: !1049, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !751, file: !752, line: 39, baseType: !37, size: 32, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !752, line: 40, baseType: !827, size: 192, offset: 896)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !751, file: !752, line: 42, baseType: !37, size: 32, offset: 1088)
!1071 = !{!1072}
!1072 = !DISubrange(count: -1)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !696, file: !254, line: 951, baseType: !122, size: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !696, file: !254, line: 952, baseType: !812, size: 32, offset: 160)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !696, file: !254, line: 952, baseType: !812, size: 32, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !696, file: !254, line: 953, baseType: !37, size: 32, offset: 224)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !655, file: !254, line: 1012, baseType: !1078, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1081, line: 110, size: 1472, elements: !1082)
!1081 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1140, !1141, !1142, !1150}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1080, file: !1081, line: 111, baseType: !675, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1080, file: !1081, line: 112, baseType: !812, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1080, file: !1081, line: 113, baseType: !820, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1080, file: !1081, line: 114, baseType: !812, size: 32, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1080, file: !1081, line: 115, baseType: !820, size: 32, offset: 160)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1080, file: !1081, line: 116, baseType: !812, size: 32, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1080, file: !1081, line: 117, baseType: !820, size: 32, offset: 224)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1080, file: !1081, line: 118, baseType: !812, size: 32, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1080, file: !1081, line: 119, baseType: !820, size: 32, offset: 288)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1080, file: !1081, line: 120, baseType: !19, size: 32, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1080, file: !1081, line: 121, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1095, line: 24, baseType: !1096)
!1095 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 24, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1096, file: !1095, line: 24, baseType: !377, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1080, file: !1081, line: 122, baseType: !1094, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1080, file: !1081, line: 123, baseType: !1094, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1080, file: !1081, line: 124, baseType: !1094, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1080, file: !1081, line: 125, baseType: !1094, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1080, file: !1081, line: 127, baseType: !102, size: 8, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1080, file: !1081, line: 129, baseType: !843, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1080, file: !1081, line: 130, baseType: !843, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1080, file: !1081, line: 131, baseType: !843, size: 64, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1080, file: !1081, line: 132, baseType: !843, size: 64, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1080, file: !1081, line: 135, baseType: !35, size: 64, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1080, file: !1081, line: 137, baseType: !1110, size: 64, offset: 1088)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1112, line: 14, size: 1088, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1113 = !{!1114, !1115, !1124, !1125, !1126, !1127, !1128, !1129}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1111, file: !1112, line: 15, baseType: !325, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1111, file: !1112, line: 17, baseType: !1116, size: 320, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1117, line: 22, size: 320, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1117, line: 23, baseType: !469, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1116, file: !1117, line: 24, baseType: !388, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1116, file: !1117, line: 26, baseType: !112, size: 128, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1116, file: !1117, line: 28, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1111, file: !1112, line: 19, baseType: !54, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1111, file: !1112, line: 20, baseType: !675, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1111, file: !1112, line: 23, baseType: !734, size: 128, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1111, file: !1112, line: 24, baseType: !812, size: 32, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1111, file: !1112, line: 29, baseType: !675, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1111, file: !1112, line: 36, baseType: !1130, size: 320, offset: 768)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1131, line: 15, size: 320, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1130, file: !1131, line: 16, baseType: !469, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1130, file: !1131, line: 18, baseType: !37, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1130, file: !1131, line: 19, baseType: !37, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1130, file: !1131, line: 20, baseType: !37, size: 32, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1130, file: !1131, line: 21, baseType: !37, size: 32, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1130, file: !1131, line: 22, baseType: !54, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !1131, line: 23, baseType: !54, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1080, file: !1081, line: 138, baseType: !781, size: 64, offset: 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1080, file: !1081, line: 139, baseType: !1049, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1080, file: !1081, line: 140, baseType: !1143, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1081, line: 25, size: 64, elements: !1145)
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1144, file: !1081, line: 26, baseType: !64, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1144, file: !1081, line: 27, baseType: !37, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1144, file: !1081, line: 28, baseType: !1149, offset: 64)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, elements: !1071)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1081, line: 142, baseType: !1151, size: 128, offset: 1344)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !1081, line: 142, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1151, file: !1081, line: 143, baseType: !37, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1151, file: !1081, line: 144, baseType: !662, size: 128, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !655, file: !254, line: 1013, baseType: !1156, size: 256, offset: 960)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !254, line: 970, size: 256, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1156, file: !254, line: 971, baseType: !54, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1156, file: !254, line: 972, baseType: !19, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1156, file: !254, line: 973, baseType: !19, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1156, file: !254, line: 974, baseType: !19, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1156, file: !254, line: 975, baseType: !19, size: 32, offset: 160)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1156, file: !254, line: 976, baseType: !56, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !655, file: !254, line: 1014, baseType: !1165, size: 128, offset: 1216)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1166, line: 8, size: 128, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1167 = !{!1168, !4820}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1165, file: !1166, line: 9, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1171, line: 70, size: 256, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1172 = !{!1173, !4817, !4818, !4819}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1170, file: !1171, line: 71, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1176, line: 82, size: 1536, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1177 = !{!1178, !1179, !1184, !1192, !1193, !1208, !4785, !4787, !4800, !4801, !4802, !4803, !4804, !4809, !4810, !4811}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1175, file: !1176, line: 84, baseType: !19, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1175, file: !1176, line: 85, baseType: !1180, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !496, line: 275, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !496, line: 275, size: 32, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1181, file: !496, line: 275, baseType: !500, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1175, file: !1176, line: 86, baseType: !1185, size: 128, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1186, line: 38, size: 128, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1187 = !{!1188, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1185, file: !1186, line: 39, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1185, file: !1186, line: 39, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1175, file: !1176, line: 87, baseType: !1174, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1175, file: !1176, line: 88, baseType: !1194, size: 128, offset: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1176, line: 49, size: 128, elements: !1195)
!1195 = !{!1196, !1205}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1176, line: 50, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1176, line: 50, size: 64, elements: !1198)
!1198 = !{!1199, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1176, line: 51, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1176, line: 51, size: 64, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1200, file: !1176, line: 52, baseType: !319, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1200, file: !1176, line: 52, baseType: !319, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1197, file: !1176, line: 54, baseType: !377, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1194, file: !1176, line: 56, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1175, file: !1176, line: 89, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !254, line: 641, size: 4800, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1221, !1222, !1409, !4600, !4601, !4602, !4603, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4767, !4770, !4771, !4772, !4781, !4782, !4783, !4784}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1210, file: !254, line: 642, baseType: !39, size: 16)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1210, file: !254, line: 643, baseType: !41, size: 16, offset: 16)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1210, file: !254, line: 644, baseType: !812, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1210, file: !254, line: 645, baseType: !112, size: 128, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1210, file: !254, line: 646, baseType: !820, size: 32, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1210, file: !254, line: 647, baseType: !19, size: 32, offset: 224)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1210, file: !254, line: 650, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !254, line: 607, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1210, file: !254, line: 651, baseType: !1219, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1210, file: !254, line: 654, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !254, line: 1966, size: 2048, align: 512, elements: !1226)
!1226 = !{!1227, !1231, !1244, !1250, !1254, !1258, !1262, !1266, !1270, !1274, !1278, !1279, !1285, !1289, !1326, !1357, !1364, !1370, !1374, !1378, !1382, !1386, !1390, !1396, !1400}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1225, file: !254, line: 1967, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1174, !1209, !1174, !19}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1225, file: !254, line: 1968, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!33, !1174, !1209, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1237, line: 10, size: 128, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1238 = !{!1239, !1243}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1236, file: !1237, line: 11, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !35}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1236, file: !1237, line: 12, baseType: !35, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1225, file: !254, line: 1969, baseType: !1245, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!37, !1248, !1209, !37}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1095, line: 42, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1225, file: !254, line: 1970, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1219, !1209, !37, !839}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1225, file: !254, line: 1972, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!37, !1174, !927, !37}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1225, file: !254, line: 1974, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!37, !1248, !1209, !1174, !39, !839}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1225, file: !254, line: 1976, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!37, !1174, !1209, !1174}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1225, file: !254, line: 1977, baseType: !1267, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!37, !1209, !1174}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1225, file: !254, line: 1978, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!37, !1248, !1209, !1174, !33}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1225, file: !254, line: 1980, baseType: !1275, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!37, !1248, !1209, !1174, !39}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1225, file: !254, line: 1982, baseType: !1267, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1225, file: !254, line: 1983, baseType: !1280, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!37, !1248, !1209, !1174, !39, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !40, line: 21, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !40, line: 18, baseType: !319)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1225, file: !254, line: 1985, baseType: !1286, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!37, !1248, !1209, !1174, !1209, !1174, !19}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1225, file: !254, line: 1987, baseType: !1290, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!37, !1248, !1174, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !254, line: 226, size: 640, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1308, !1317, !1318, !1323, !1324, !1325}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1294, file: !254, line: 227, baseType: !19, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1294, file: !254, line: 228, baseType: !39, size: 16, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !254, line: 241, baseType: !1299, size: 32, offset: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !254, line: 241, size: 32, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1299, file: !254, line: 242, baseType: !812, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1299, file: !254, line: 243, baseType: !1303, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1304, line: 16, baseType: !1305)
!1304 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 14, size: 32, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1305, file: !1304, line: 15, baseType: !817, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !254, line: 245, baseType: !1309, size: 32, offset: 96)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !254, line: 245, size: 32, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1309, file: !254, line: 246, baseType: !820, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1309, file: !254, line: 247, baseType: !1313, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1304, line: 20, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 18, size: 32, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1314, file: !1304, line: 19, baseType: !824, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1294, file: !254, line: 249, baseType: !56, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1294, file: !254, line: 250, baseType: !1319, size: 128, offset: 192)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !876, line: 13, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1319, file: !876, line: 14, baseType: !875, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1319, file: !876, line: 15, baseType: !1064, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1294, file: !254, line: 251, baseType: !1319, size: 128, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1294, file: !254, line: 252, baseType: !1319, size: 128, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1294, file: !254, line: 259, baseType: !654, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1225, file: !254, line: 1988, baseType: !1327, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!37, !1248, !1330, !1332, !319, !19}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1334, line: 22, size: 1280, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1333, file: !1334, line: 23, baseType: !319, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1333, file: !1334, line: 24, baseType: !39, size: 16, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1333, file: !1334, line: 25, baseType: !19, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1333, file: !1334, line: 26, baseType: !883, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1333, file: !1334, line: 27, baseType: !377, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1333, file: !1334, line: 28, baseType: !377, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1333, file: !1334, line: 41, baseType: !377, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1333, file: !1334, line: 42, baseType: !1283, size: 32, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1333, file: !1334, line: 43, baseType: !1283, size: 32, offset: 352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1333, file: !1334, line: 44, baseType: !812, size: 32, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1333, file: !1334, line: 45, baseType: !820, size: 32, offset: 416)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1333, file: !1334, line: 46, baseType: !56, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1333, file: !1334, line: 47, baseType: !1319, size: 128, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1333, file: !1334, line: 48, baseType: !1319, size: 128, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1333, file: !1334, line: 49, baseType: !1319, size: 128, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1333, file: !1334, line: 50, baseType: !1319, size: 128, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1333, file: !1334, line: 51, baseType: !377, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1333, file: !1334, line: 52, baseType: !377, size: 64, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1333, file: !1334, line: 53, baseType: !319, size: 32, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1333, file: !1334, line: 54, baseType: !319, size: 32, offset: 1184)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1333, file: !1334, line: 55, baseType: !377, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1225, file: !254, line: 1990, baseType: !1358, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1361, !1174, !927, !50}
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 66, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !52, line: 73, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !52, line: 15, baseType: !1064)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1225, file: !254, line: 1991, baseType: !1365, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!37, !1209, !1368, !377, !377}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !254, line: 55, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1225, file: !254, line: 1993, baseType: !1371, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!37, !1209, !37}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1225, file: !254, line: 1994, baseType: !1375, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!37, !1209, !1174, !654, !19, !39}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1225, file: !254, line: 1997, baseType: !1379, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!37, !1248, !1209, !654, !39}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1225, file: !254, line: 1999, baseType: !1383, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1219, !1248, !1174, !37}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1225, file: !254, line: 2001, baseType: !1387, size: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!37, !1248, !1174, !1219, !37}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1225, file: !254, line: 2003, baseType: !1391, size: 64, offset: 1408)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!37, !1248, !1174, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !254, line: 76, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1225, file: !254, line: 2005, baseType: !1397, size: 64, offset: 1472)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!37, !1174, !1394}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1225, file: !254, line: 2006, baseType: !1401, size: 64, offset: 1536)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !1209}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !254, line: 3192, size: 192, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1405, file: !254, line: 3193, baseType: !759, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1405, file: !254, line: 3194, baseType: !319, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1210, file: !254, line: 655, baseType: !1410, size: 64, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !254, line: 1190, size: 10752, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !4117, !4249, !4289, !4372, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4389, !4393, !4394, !4397, !4400, !4403, !4406, !4407, !4408, !4449, !4471, !4472, !4473, !4474, !4475, !4476, !4479, !4483, !4492, !4493, !4494, !4495, !4554, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1411, file: !254, line: 1191, baseType: !112, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1411, file: !254, line: 1192, baseType: !1283, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1411, file: !254, line: 1193, baseType: !102, size: 8, offset: 160)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1411, file: !254, line: 1194, baseType: !54, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1411, file: !254, line: 1195, baseType: !56, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1411, file: !254, line: 1196, baseType: !1419, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !254, line: 2366, size: 576, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1430, !1434, !1438, !1442, !4105, !4106, !4107, !4109, !4110, !4111, !4113, !4114, !4115, !4116}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1420, file: !254, line: 2367, baseType: !33, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1420, file: !254, line: 2368, baseType: !37, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1420, file: !254, line: 2376, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!37, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1171, line: 21, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1420, file: !254, line: 2377, baseType: !1431, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !254, line: 75, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1420, file: !254, line: 2378, baseType: !1435, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1174, !1419, !37, !33, !35}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1420, file: !254, line: 2380, baseType: !1439, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1410}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1420, file: !254, line: 2381, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !131, line: 402, size: 9216, align: 512, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1452, !2312, !2338, !2339, !2340, !2341, !2345, !2348, !2349, !2350, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2418, !2422, !2442, !2462, !2463, !2464, !2465, !2474, !2497, !2498, !2501, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2515, !2516, !2615, !2623, !2624, !2625, !2627, !4084, !4085, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !131, line: 403, baseType: !130, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1444, file: !131, line: 406, baseType: !112, size: 128, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !131, line: 409, baseType: !1449, size: 448, offset: 192)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 448, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 56)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1444, file: !131, line: 417, baseType: !1453, size: 768, offset: 640)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !131, line: 45, size: 768, elements: !1454)
!1454 = !{!1455, !2306, !2307, !2308, !2311}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1453, file: !131, line: 46, baseType: !1456, size: 512)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1457, line: 64, size: 512, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1458 = !{!1459, !1460, !1461, !1463, !1507, !2153, !2296, !2301, !2302, !2303, !2304, !2305}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1456, file: !1457, line: 65, baseType: !33, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1456, file: !1457, line: 66, baseType: !112, size: 128, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1456, file: !1457, line: 67, baseType: !1462, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1456, file: !1457, line: 68, baseType: !1464, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1457, line: 168, size: 768, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1465, file: !1457, line: 169, baseType: !112, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1465, file: !1457, line: 170, baseType: !74, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1465, file: !1457, line: 171, baseType: !1456, size: 512, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1465, file: !1457, line: 172, baseType: !1471, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1457, line: 133, size: 192, elements: !1474)
!1474 = !{!1475, !1482, !1487}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1473, file: !1457, line: 134, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!37, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1473, file: !1457, line: 135, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!33, !1480}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1473, file: !1457, line: 136, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!37, !1480, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1457, line: 125, size: 20736, elements: !1494)
!1494 = !{!1495, !1497, !1501, !1502, !1506}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1493, file: !1457, line: 126, baseType: !1496, size: 192)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 192, elements: !718)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1493, file: !1457, line: 127, baseType: !1498, size: 4096, offset: 192)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 4096, elements: !1499)
!1499 = !{!1500}
!1500 = !DISubrange(count: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1493, file: !1457, line: 128, baseType: !37, size: 32, offset: 4288)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1493, file: !1457, line: 129, baseType: !1503, size: 16384, offset: 4320)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16384, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 2048)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1493, file: !1457, line: 130, baseType: !37, size: 32, offset: 20704)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1456, file: !1457, line: 69, baseType: !1508, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1457, line: 116, size: 384, elements: !1511)
!1511 = !{!1512, !1516, !1535, !2115, !2145, !2149}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1510, file: !1457, line: 117, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1462}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1510, file: !1457, line: 118, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1520, line: 254, size: 128, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1521 = !{!1522, !1531}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1519, file: !1520, line: 255, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1361, !1462, !1526, !927}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1520, line: 30, size: 128, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1527, file: !1520, line: 31, baseType: !33, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1527, file: !1520, line: 32, baseType: !39, size: 16, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1519, file: !1520, line: 256, baseType: !1532, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1361, !1462, !1526, !33, !50}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1510, file: !1457, line: 119, baseType: !1536, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1520, line: 84, size: 320, elements: !1540)
!1540 = !{!1541, !1542, !1546, !2111, !2113}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1539, file: !1520, line: 85, baseType: !33, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1539, file: !1520, line: 86, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!39, !1462, !1526, !37}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1539, file: !1520, line: 88, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!39, !1462, !1550, !37}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1520, line: 175, size: 512, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !2102, !2106, !2107}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1551, file: !1520, line: 176, baseType: !1527, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1551, file: !1520, line: 177, baseType: !50, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1551, file: !1520, line: 178, baseType: !35, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1551, file: !1520, line: 179, baseType: !1557, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !254, line: 472, size: 1536, align: 64, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !2094, !2095, !2096, !2099, !2100, !2101}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1561, file: !254, line: 473, baseType: !1209, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1561, file: !254, line: 474, baseType: !759, size: 128, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1561, file: !254, line: 475, baseType: !859, size: 320, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1561, file: !254, line: 476, baseType: !764, size: 32, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1561, file: !254, line: 477, baseType: !64, size: 32, offset: 544)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1561, file: !254, line: 482, baseType: !509, size: 128, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1561, file: !254, line: 483, baseType: !54, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1561, file: !254, line: 484, baseType: !54, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1561, file: !254, line: 485, baseType: !1572, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !254, line: 404, size: 1280, elements: !1575)
!1575 = !{!1576, !1869, !1939, !1943, !1947, !1953, !1959, !1963, !1968, !1972, !1976, !1980, !2058, !2062, !2066, !2070, !2075, !2079, !2086, !2090}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1574, file: !254, line: 405, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!37, !1580, !1867}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !146, line: 74, size: 512, align: 128, elements: !1582)
!1582 = !{!1583, !1584, !1861, !1866}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !146, line: 75, baseType: !54, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !146, line: 83, baseType: !1585, size: 320, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !146, line: 83, size: 320, elements: !1586)
!1586 = !{!1587, !1608, !1622, !1626, !1860}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !146, line: 84, baseType: !1588, size: 320)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !146, line: 84, size: 320, elements: !1589)
!1589 = !{!1590, !1601, !1602, !1607}
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !146, line: 90, baseType: !1591, size: 128)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !146, line: 90, size: 128, elements: !1592)
!1592 = !{!1593, !1594, !1599, !1600}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1591, file: !146, line: 91, baseType: !112, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !146, line: 94, baseType: !1595, size: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !146, line: 94, size: 128, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1595, file: !146, line: 96, baseType: !35, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1595, file: !146, line: 98, baseType: !19, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1591, file: !146, line: 102, baseType: !112, size: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1591, file: !146, line: 103, baseType: !112, size: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1588, file: !146, line: 106, baseType: !1560, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !146, line: 107, baseType: !1603, size: 64, offset: 192)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !146, line: 107, size: 64, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1603, file: !146, line: 108, baseType: !54, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1603, file: !146, line: 109, baseType: !54, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1588, file: !146, line: 117, baseType: !54, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !146, line: 119, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !146, line: 119, size: 320, elements: !1610)
!1610 = !{!1611, !1612, !1615, !1616, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1609, file: !146, line: 124, baseType: !54, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1609, file: !146, line: 125, baseType: !1613, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !146, line: 125, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1609, file: !146, line: 126, baseType: !54, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1609, file: !146, line: 127, baseType: !54, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !146, line: 128, baseType: !1618, size: 64, offset: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !146, line: 128, size: 64, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1618, file: !146, line: 133, baseType: !54, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1618, file: !146, line: 138, baseType: !675, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !146, line: 141, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !146, line: 141, size: 64, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1623, file: !146, line: 142, baseType: !54, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !146, line: 144, baseType: !1627, size: 128)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !146, line: 144, size: 128, elements: !1628)
!1628 = !{!1629, !1859}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1627, file: !146, line: 146, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !138, line: 126, size: 1216, elements: !1632)
!1632 = !{!1633, !1643, !1664, !1665, !1666, !1667, !1668, !1841, !1842, !1843}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1631, file: !138, line: 127, baseType: !1634, size: 384)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !138, line: 21, size: 384, elements: !1635)
!1635 = !{!1636, !1637, !1639, !1640, !1641, !1642}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1634, file: !138, line: 22, baseType: !54, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1634, file: !138, line: 23, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1634, file: !138, line: 24, baseType: !1638, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1634, file: !138, line: 25, baseType: !54, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1634, file: !138, line: 26, baseType: !54, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1634, file: !138, line: 27, baseType: !54, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1631, file: !138, line: 128, baseType: !1644, size: 128, offset: 384)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1645, line: 105, size: 128, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1644, file: !1645, line: 110, baseType: !54, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1644, file: !1645, line: 118, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1645, line: 95, size: 448, elements: !1651)
!1651 = !{!1652, !1653, !1659, !1660, !1661, !1662, !1663}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1650, file: !1645, line: 96, baseType: !675, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1650, file: !1645, line: 97, baseType: !1654, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1645, line: 60, baseType: !1656)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1650, file: !1645, line: 98, baseType: !1654, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1650, file: !1645, line: 99, baseType: !839, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1650, file: !1645, line: 100, baseType: !839, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1650, file: !1645, line: 101, baseType: !662, size: 128, align: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1650, file: !1645, line: 102, baseType: !1658, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1631, file: !138, line: 129, baseType: !1005, size: 256, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1631, file: !138, line: 130, baseType: !137, size: 32, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !138, line: 131, baseType: !19, size: 32, offset: 800)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1631, file: !138, line: 132, baseType: !54, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1631, file: !138, line: 133, baseType: !1669, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !138, line: 77, size: 192, elements: !1672)
!1672 = !{!1673, !1677, !1837}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1671, file: !138, line: 83, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1580}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1671, file: !138, line: 89, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !146, line: 1184, baseType: !19)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1684, line: 512, size: 896, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1685 = !{!1686, !1804, !1805, !1812, !1819, !1829, !1830, !1831, !1833, !1835}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1684, line: 513, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1684, line: 513, size: 320, elements: !1688)
!1688 = !{!1689, !1800, !1801, !1802, !1803}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1687, file: !1684, line: 514, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !146, line: 625, size: 1344, elements: !1692)
!1692 = !{!1693, !1702, !1703, !1711, !1718, !1719, !1724, !1725, !1730, !1731, !1734, !1793, !1794, !1795, !1796, !1797, !1798}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !146, line: 628, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !146, line: 628, size: 128, elements: !1695)
!1695 = !{!1696, !1701}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !146, line: 629, baseType: !1697, size: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !146, line: 629, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1697, file: !146, line: 631, baseType: !54, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1697, file: !146, line: 632, baseType: !54, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1694, file: !146, line: 635, baseType: !662, size: 128, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1691, file: !146, line: 639, baseType: !626, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1691, file: !146, line: 640, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1705, line: 297, baseType: !1706)
!1705 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1705, line: 297, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1706, file: !1705, line: 297, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1710, line: 19, baseType: !54)
!1710 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !146, line: 646, baseType: !1712, size: 64, offset: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !146, line: 646, size: 64, elements: !1713)
!1713 = !{!1714, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1712, file: !146, line: 647, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !146, line: 542, baseType: !54)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1712, file: !146, line: 648, baseType: !1716, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1691, file: !146, line: 666, baseType: !37, size: 32, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1691, file: !146, line: 667, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !146, line: 579, size: 320, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !146, line: 580, baseType: !859, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1691, file: !146, line: 670, baseType: !839, size: 8, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1691, file: !146, line: 681, baseType: !1726, size: 256, offset: 512)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !146, line: 678, size: 256, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1726, file: !146, line: 679, baseType: !369, size: 192, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1726, file: !146, line: 680, baseType: !54, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1691, file: !146, line: 689, baseType: !112, size: 128, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1691, file: !146, line: 691, baseType: !1732, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !146, line: 691, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1691, file: !146, line: 694, baseType: !1735, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1684, line: 563, size: 1024, elements: !1738)
!1738 = !{!1739, !1743, !1744, !1748, !1752, !1756, !1757, !1761, !1765, !1769, !1770, !1771, !1775, !1779, !1785, !1789}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1737, file: !1684, line: 564, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1690}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1737, file: !1684, line: 569, baseType: !1740, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1737, file: !1684, line: 571, baseType: !1745, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!37, !1690, !54}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1737, file: !1684, line: 572, baseType: !1749, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!37, !1690}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1737, file: !1684, line: 578, baseType: !1753, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!37, !1690, !54, !54, !54}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1737, file: !1684, line: 580, baseType: !1678, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1737, file: !1684, line: 581, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1681, !1682, !19}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1737, file: !1684, line: 582, baseType: !1762, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!1681, !1682, !54, !54}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1737, file: !1684, line: 584, baseType: !1766, size: 64, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!54, !1690}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1737, file: !1684, line: 588, baseType: !1678, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1737, file: !1684, line: 591, baseType: !1678, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1737, file: !1684, line: 597, baseType: !1772, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!37, !1690, !54, !35, !37, !37}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !1684, line: 603, baseType: !1776, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!33, !1690}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1737, file: !1684, line: 613, baseType: !1780, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!37, !1690, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !301, line: 54, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1737, file: !1684, line: 625, baseType: !1786, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1783, !1690, !54}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1737, file: !1684, line: 633, baseType: !1790, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1580, !1690, !54}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1691, file: !146, line: 697, baseType: !54, size: 64, offset: 1024)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1691, file: !146, line: 699, baseType: !654, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1691, file: !146, line: 700, baseType: !35, size: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1691, file: !146, line: 711, baseType: !675, size: 64, offset: 1216)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1691, file: !146, line: 717, baseType: !1783, size: 64, offset: 1280)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1691, file: !146, line: 722, baseType: !1799, offset: 1344)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !146, line: 570, elements: !647)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1687, file: !1684, line: 515, baseType: !764, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1687, file: !1684, line: 516, baseType: !54, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1687, file: !1684, line: 517, baseType: !54, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1687, file: !1684, line: 518, baseType: !54, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !1684, line: 520, baseType: !145, size: 32, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1683, file: !1684, line: 522, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1710, line: 22, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1710, line: 22, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1808, file: !1710, line: 22, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1710, line: 15, baseType: !54)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1683, file: !1684, line: 524, baseType: !1813, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1705, line: 372, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1705, line: 372, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1815, file: !1705, line: 372, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1710, line: 16, baseType: !54)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1684, line: 527, baseType: !1820, size: 64, offset: 512)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1684, line: 527, size: 64, elements: !1821)
!1821 = !{!1822, !1828}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1820, file: !1684, line: 528, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1710, line: 21, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1710, line: 21, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1824, file: !1710, line: 21, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1710, line: 14, baseType: !54)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1820, file: !1684, line: 529, baseType: !1807, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1683, file: !1684, line: 534, baseType: !1580, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1683, file: !1684, line: 535, baseType: !1580, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1683, file: !1684, line: 541, baseType: !1832, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1683, file: !1684, line: 545, baseType: !1834, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1683, file: !1684, line: 549, baseType: !1836, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1705, line: 520, baseType: !1580)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1671, file: !138, line: 100, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!37, !1630, !54, !54, !37}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1631, file: !138, line: 134, baseType: !35, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1631, file: !138, line: 135, baseType: !37, size: 32, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !138, line: 136, baseType: !1844, size: 128, offset: 1088)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1631, file: !138, line: 136, size: 128, elements: !1845)
!1845 = !{!1846, !1852}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1844, file: !138, line: 137, baseType: !1847, size: 128)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1848, line: 6, size: 128, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1847, file: !1848, line: 7, baseType: !377, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1847, file: !1848, line: 8, baseType: !377, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !138, line: 138, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !138, line: 138, elements: !1854)
!1854 = !{!1855, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1853, file: !138, line: 138, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !138, line: 138, elements: !647)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1853, file: !138, line: 138, baseType: !1858)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, elements: !1071)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1627, file: !146, line: 147, baseType: !35, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1585, file: !146, line: 161, baseType: !662, size: 128, align: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !146, line: 164, baseType: !1862, size: 32, offset: 384)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !146, line: 164, size: 32, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1862, file: !146, line: 169, baseType: !64, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1862, file: !146, line: 177, baseType: !19, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1581, file: !146, line: 181, baseType: !64, size: 32, offset: 416)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !254, line: 309, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1574, file: !254, line: 406, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!37, !654, !1873}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !146, line: 293, size: 1536, elements: !1875)
!1875 = !{!1876, !1906, !1920}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !146, line: 295, baseType: !1877, size: 512)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !146, line: 295, size: 512, elements: !1878)
!1878 = !{!1879, !1905}
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !146, line: 296, baseType: !1880, size: 448)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !146, line: 296, size: 448, elements: !1881)
!1881 = !{!1882, !1883, !1892, !1893, !1894, !1903, !1904}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !146, line: 298, baseType: !54, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !146, line: 299, baseType: !1884, size: 128, offset: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !146, line: 299, size: 128, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1884, file: !146, line: 300, baseType: !112, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !146, line: 302, baseType: !1888, size: 128)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !146, line: 302, size: 128, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1888, file: !146, line: 303, baseType: !35, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1888, file: !146, line: 305, baseType: !19, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1880, file: !146, line: 310, baseType: !1560, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1880, file: !146, line: 311, baseType: !54, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !146, line: 312, baseType: !1895, size: 64, offset: 320)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !146, line: 312, size: 64, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1895, file: !146, line: 313, baseType: !35, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1895, file: !146, line: 314, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !146, line: 257, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 255, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1900, file: !146, line: 256, baseType: !54, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1880, file: !146, line: 316, baseType: !64, size: 32, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1880, file: !146, line: 317, baseType: !64, size: 32, offset: 416)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1877, file: !146, line: 323, baseType: !1581, size: 512, align: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !146, line: 325, baseType: !1907, size: 512, offset: 512)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !146, line: 325, size: 512, elements: !1908)
!1908 = !{!1909, !1919}
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !146, line: 326, baseType: !1910, size: 320)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !146, line: 326, size: 320, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1910, file: !146, line: 327, baseType: !54, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1910, file: !146, line: 328, baseType: !54, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1910, file: !146, line: 329, baseType: !54, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1910, file: !146, line: 331, baseType: !64, size: 32, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1910, file: !146, line: 332, baseType: !64, size: 32, offset: 224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1910, file: !146, line: 333, baseType: !64, size: 32, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1910, file: !146, line: 335, baseType: !19, size: 32, offset: 288)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1907, file: !146, line: 339, baseType: !1581, size: 512, align: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !146, line: 341, baseType: !1921, size: 512, offset: 1024)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !146, line: 341, size: 512, elements: !1922)
!1922 = !{!1923, !1932, !1938}
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !146, line: 342, baseType: !1924, size: 384)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !146, line: 342, size: 384, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1924, file: !146, line: 343, baseType: !54, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1924, file: !146, line: 344, baseType: !54, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1924, file: !146, line: 346, baseType: !35, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1924, file: !146, line: 347, baseType: !35, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1924, file: !146, line: 348, baseType: !35, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1924, file: !146, line: 349, baseType: !35, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !146, line: 352, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !146, line: 352, size: 256, elements: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1933, file: !146, line: 353, baseType: !54, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1933, file: !146, line: 354, baseType: !54, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1933, file: !146, line: 356, baseType: !112, size: 128, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1921, file: !146, line: 359, baseType: !1581, size: 512, align: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1574, file: !254, line: 409, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!37, !1560, !1867}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1574, file: !254, line: 412, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!839, !1560, !1873}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1574, file: !254, line: 414, baseType: !1948, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !254, line: 310, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1574, file: !254, line: 416, baseType: !1954, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!37, !654, !1560, !56, !19, !1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1574, file: !254, line: 419, baseType: !1960, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!37, !654, !1560, !56, !19, !19, !1580, !35}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1574, file: !254, line: 424, baseType: !1964, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1967, !1560, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !40, line: 131, baseType: !377)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1574, file: !254, line: 425, baseType: !1969, size: 64, offset: 512)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1873, !50, !50}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1574, file: !254, line: 426, baseType: !1973, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!839, !1873, !764}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1574, file: !254, line: 427, baseType: !1977, size: 64, offset: 640)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1873}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1574, file: !254, line: 428, baseType: !1981, size: 64, offset: 704)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1361, !1984, !2006}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !254, line: 373, size: 384, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1993, !1994, !1995, !1996}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1985, file: !254, line: 374, baseType: !654, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1985, file: !254, line: 375, baseType: !56, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1985, file: !254, line: 376, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1984, !1064}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1985, file: !254, line: 377, baseType: !35, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1985, file: !254, line: 378, baseType: !37, size: 32, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1985, file: !254, line: 379, baseType: !108, size: 16, offset: 288)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !254, line: 380, baseType: !1997, size: 64, offset: 320)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !254, line: 380, size: 64, elements: !1998)
!1998 = !{!1999, !2002}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1997, file: !254, line: 386, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !254, line: 386, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1997, file: !254, line: 395, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!1361, !35}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2008, line: 41, size: 320, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2020, !2053}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2007, file: !2008, line: 42, baseType: !98, size: 8)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2007, file: !2008, line: 43, baseType: !839, size: 8, offset: 8)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2007, file: !2008, line: 44, baseType: !839, size: 8, offset: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2007, file: !2008, line: 45, baseType: !839, size: 8, offset: 24)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2007, file: !2008, line: 46, baseType: !839, size: 8, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !2008, line: 47, baseType: !2016, size: 64, offset: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !2008, line: 47, size: 64, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2016, file: !2008, line: 48, baseType: !50, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2016, file: !2008, line: 49, baseType: !37, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !2008, line: 61, baseType: !2021, size: 128, offset: 128)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !2008, line: 61, size: 128, elements: !2022)
!2022 = !{!2023, !2029}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2021, file: !2008, line: 67, baseType: !2024, size: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2025, line: 17, size: 128, elements: !2026)
!2025 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2024, file: !2025, line: 19, baseType: !35, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2024, file: !2025, line: 20, baseType: !51, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !2008, line: 68, baseType: !2030, size: 128)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !2008, line: 68, size: 128, elements: !2031)
!2031 = !{!2032, !2052}
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2008, line: 69, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !2008, line: 69, size: 64, elements: !2034)
!2034 = !{!2035, !2038, !2045, !2049, !2051}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2033, file: !2008, line: 71, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2033, file: !2008, line: 72, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2008, line: 17, size: 128, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2041, file: !2008, line: 18, baseType: !35, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2041, file: !2008, line: 19, baseType: !50, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2033, file: !2008, line: 73, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2008, line: 73, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2033, file: !2008, line: 74, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2033, file: !2008, line: 75, baseType: !35, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2030, file: !2008, line: 77, baseType: !50, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !2008, line: 80, baseType: !2054, size: 64, offset: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !2008, line: 80, size: 64, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2054, file: !2008, line: 81, baseType: !54, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2054, file: !2008, line: 82, baseType: !56, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1574, file: !254, line: 433, baseType: !2059, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!37, !1560, !1873, !1873, !161}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1574, file: !254, line: 435, baseType: !2063, size: 64, offset: 832)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!37, !1873}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1574, file: !254, line: 436, baseType: !2067, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!839, !1873, !50, !50}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1574, file: !254, line: 438, baseType: !2071, size: 64, offset: 960)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !1873, !2074, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1574, file: !254, line: 439, baseType: !2076, size: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!37, !1560, !1580}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1574, file: !254, line: 442, baseType: !2080, size: 64, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!37, !2083, !654, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !254, line: 66, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1574, file: !254, line: 444, baseType: !2087, size: 64, offset: 1152)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !654}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1574, file: !254, line: 445, baseType: !2091, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!37, !1984, !2006}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !254, line: 486, baseType: !54, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1561, file: !254, line: 487, baseType: !859, size: 320, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1561, file: !254, line: 488, baseType: !2097, size: 32, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2098, line: 8, baseType: !319)
!2098 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1561, file: !254, line: 489, baseType: !74, size: 32, offset: 1312)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1561, file: !254, line: 490, baseType: !112, size: 128, offset: 1344)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1561, file: !254, line: 491, baseType: !35, size: 64, offset: 1472)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1551, file: !1520, line: 180, baseType: !2103, size: 64, offset: 320)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!1361, !654, !1462, !1550, !927, !56, !50}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1551, file: !1520, line: 182, baseType: !2103, size: 64, offset: 384)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1551, file: !1520, line: 184, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!37, !654, !1462, !1550, !1690}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1539, file: !1520, line: 90, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1539, file: !1520, line: 91, baseType: !2114, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1510, file: !1457, line: 120, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !1480}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !169, line: 39, size: 384, elements: !2122)
!2122 = !{!2123, !2124, !2128, !2132, !2140, !2144}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !169, line: 40, baseType: !168, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2121, file: !169, line: 41, baseType: !2125, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!839}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2121, file: !169, line: 42, baseType: !2129, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!35}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2121, file: !169, line: 43, baseType: !2133, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !169, line: 19, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2121, file: !169, line: 44, baseType: !2141, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2136}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2121, file: !169, line: 45, baseType: !1240, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1510, file: !1457, line: 121, baseType: !2146, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2136, !1480}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1510, file: !1457, line: 122, baseType: !2150, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !1480, !1030, !1031}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1456, file: !1457, line: 70, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2156, line: 190, size: 1152, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2288, !2289, !2290, !2291, !2292, !2295}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2155, file: !2156, line: 191, baseType: !64, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2155, file: !2156, line: 192, baseType: !64, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2155, file: !2156, line: 202, baseType: !2154, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2155, file: !2156, line: 203, baseType: !33, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2155, file: !2156, line: 205, baseType: !369, size: 192, align: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2155, file: !2156, line: 207, baseType: !2136, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2155, file: !2156, line: 208, baseType: !19, size: 32, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !2156, line: 209, baseType: !2166, size: 256, offset: 512)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !2156, line: 209, size: 256, elements: !2167)
!2167 = !{!2168, !2177, !2181}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2166, file: !2156, line: 210, baseType: !2169, size: 256)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2156, line: 153, size: 256, elements: !2170)
!2170 = !{!2171, !2172, !2173, !2176}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2169, file: !2156, line: 154, baseType: !54, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2169, file: !2156, line: 156, baseType: !512, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2169, file: !2156, line: 162, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2156, line: 162, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2169, file: !2156, line: 167, baseType: !54, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2166, file: !2156, line: 211, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2156, line: 170, size: 64, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2178, file: !2156, line: 171, baseType: !2154, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2166, file: !2156, line: 212, baseType: !2182, size: 256)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2156, line: 174, size: 256, elements: !2183)
!2183 = !{!2184, !2283, !2286, !2287}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2182, file: !2156, line: 175, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2156, line: 271, size: 768, elements: !2188)
!2188 = !{!2189, !2247, !2251, !2252, !2253, !2254, !2255, !2259, !2260, !2261, !2262, !2279}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2187, file: !2156, line: 276, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!37, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2156, line: 251, size: 1216, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2194, file: !2156, line: 253, baseType: !2154, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2194, file: !2156, line: 254, baseType: !654, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2194, file: !2156, line: 255, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2201, line: 17, size: 960, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2232, !2233, !2236}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2200, file: !2201, line: 18, baseType: !927, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2200, file: !2201, line: 19, baseType: !50, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2200, file: !2201, line: 20, baseType: !50, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2200, file: !2201, line: 21, baseType: !50, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2200, file: !2201, line: 22, baseType: !50, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2200, file: !2201, line: 23, baseType: !56, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2200, file: !2201, line: 24, baseType: !56, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2200, file: !2201, line: 25, baseType: !682, size: 256, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2200, file: !2201, line: 26, baseType: !2212, size: 64, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2201, line: 32, size: 256, elements: !2215)
!2215 = !{!2216, !2220, !2224, !2228}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2214, file: !2201, line: 33, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!35, !2199, !55}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2214, file: !2201, line: 34, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !2199, !35}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2214, file: !2201, line: 35, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!35, !2199, !35, !55}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2214, file: !2201, line: 36, baseType: !2229, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!37, !2199, !35}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2200, file: !2201, line: 27, baseType: !37, size: 32, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2200, file: !2201, line: 28, baseType: !2234, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2200, file: !2201, line: 29, baseType: !35, size: 64, offset: 896)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2194, file: !2156, line: 256, baseType: !35, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2194, file: !2156, line: 259, baseType: !682, size: 256, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2194, file: !2156, line: 260, baseType: !682, size: 256, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2194, file: !2156, line: 261, baseType: !37, size: 32, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2194, file: !2156, line: 262, baseType: !112, size: 128, offset: 832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2194, file: !2156, line: 263, baseType: !927, size: 64, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2194, file: !2156, line: 265, baseType: !50, size: 64, offset: 1024)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2194, file: !2156, line: 266, baseType: !839, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2194, file: !2156, line: 267, baseType: !839, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2194, file: !2156, line: 268, baseType: !1735, size: 64, offset: 1152)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2187, file: !2156, line: 277, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2193}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2187, file: !2156, line: 290, baseType: !2229, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2187, file: !2156, line: 292, baseType: !2217, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2187, file: !2156, line: 293, baseType: !2225, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2187, file: !2156, line: 294, baseType: !2221, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2187, file: !2156, line: 296, baseType: !2256, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!1361, !2193, !927, !50, !56}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2187, file: !2156, line: 306, baseType: !50, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2187, file: !2156, line: 313, baseType: !839, size: 8, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2187, file: !2156, line: 314, baseType: !2256, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2187, file: !2156, line: 317, baseType: !2263, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !2193, !2268}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2267, line: 59, baseType: !19)
!2267 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2270, line: 37, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2271 = !{!2272, !2278}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2269, file: !2270, line: 38, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2270, line: 31, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !654, !2277, !2268}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2269, file: !2270, line: 39, baseType: !2266, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2187, file: !2156, line: 320, baseType: !2280, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!37, !2193, !1690}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2182, file: !2156, line: 176, baseType: !2284, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2156, line: 35, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2182, file: !2156, line: 177, baseType: !56, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2182, file: !2156, line: 178, baseType: !2154, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2155, file: !2156, line: 215, baseType: !35, size: 64, offset: 768)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2155, file: !2156, line: 221, baseType: !377, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !2156, line: 223, baseType: !41, size: 16, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2155, file: !2156, line: 224, baseType: !39, size: 16, offset: 912)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2155, file: !2156, line: 225, baseType: !2293, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2156, line: 36, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2155, file: !2156, line: 227, baseType: !662, size: 128, align: 64, offset: 1024)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1456, file: !1457, line: 71, baseType: !2297, size: 32, offset: 448)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2298, line: 19, size: 32, elements: !2299)
!2298 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2299 = !{!2300}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2297, file: !2298, line: 20, baseType: !325, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1456, file: !1457, line: 73, baseType: !19, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1456, file: !1457, line: 74, baseType: !19, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1456, file: !1457, line: 75, baseType: !19, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1456, file: !1457, line: 76, baseType: !19, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1456, file: !1457, line: 77, baseType: !19, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1453, file: !131, line: 47, baseType: !1443, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1453, file: !131, line: 48, baseType: !1462, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1453, file: !131, line: 49, baseType: !2309, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !131, line: 49, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1453, file: !131, line: 50, baseType: !1004, size: 64, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1444, file: !131, line: 418, baseType: !2313, size: 64, offset: 1408)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !131, line: 53, size: 448, elements: !2315)
!2315 = !{!2316, !2317, !2322, !2326, !2330, !2334}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2314, file: !131, line: 54, baseType: !1527, size: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2314, file: !131, line: 55, baseType: !2318, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!1361, !2313, !2321, !927}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2314, file: !131, line: 57, baseType: !2323, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!1361, !2313, !2321, !33, !50}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2314, file: !131, line: 59, baseType: !2327, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !1443, !33}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2314, file: !131, line: 60, baseType: !2331, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!37, !1443}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2314, file: !131, line: 61, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !1443}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1444, file: !131, line: 419, baseType: !33, size: 64, offset: 1472)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1444, file: !131, line: 420, baseType: !33, size: 64, offset: 1536)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1444, file: !131, line: 421, baseType: !1462, size: 64, offset: 1600)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1444, file: !131, line: 424, baseType: !2342, size: 64, offset: 1664)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !131, line: 424, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1444, file: !131, line: 425, baseType: !2346, size: 64, offset: 1728)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1444, file: !131, line: 426, baseType: !19, size: 32, offset: 1792)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1444, file: !131, line: 435, baseType: !682, size: 256, offset: 1856)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1444, file: !131, line: 437, baseType: !2351, size: 64, offset: 2112)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2353, line: 69, size: 320, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2354 = !{!2355, !2356, !2357, !2374, !2376, !2380, !2381}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2352, file: !2353, line: 70, baseType: !33, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2352, file: !2353, line: 71, baseType: !1443, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2352, file: !2353, line: 72, baseType: !2358, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2353, line: 47, size: 256, elements: !2361)
!2361 = !{!2362, !2363, !2369, !2373}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !2353, line: 49, baseType: !19, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2360, file: !2353, line: 51, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!37, !33, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2360, file: !2353, line: 53, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!37, !927, !2367}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2360, file: !2353, line: 55, baseType: !1240, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2352, file: !2353, line: 73, baseType: !2375, size: 16, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2352, file: !2353, line: 74, baseType: !2377, size: 8, offset: 208)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !99, line: 16, baseType: !2378)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !101, line: 20, baseType: !2379)
!2379 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2352, file: !2353, line: 75, baseType: !98, size: 8, offset: 216)
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2352, file: !2353, line: 76, baseType: !2382, size: 64, offset: 256)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2352, file: !2353, line: 76, size: 64, elements: !2383)
!2383 = !{!2384, !2385, !2392}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2382, file: !2353, line: 77, baseType: !35, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2382, file: !2353, line: 78, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2388)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2353, line: 86, size: 128, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2388, file: !2353, line: 87, baseType: !19, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2388, file: !2353, line: 88, baseType: !927, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2382, file: !2353, line: 79, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2353, line: 92, size: 256, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2401, !2402}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2395, file: !2353, line: 94, baseType: !19, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2395, file: !2353, line: 95, baseType: !19, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2395, file: !2353, line: 96, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2395, file: !2353, line: 97, baseType: !2358, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2395, file: !2353, line: 98, baseType: !35, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1444, file: !131, line: 438, baseType: !19, size: 32, offset: 2176)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1444, file: !131, line: 441, baseType: !19, size: 32, offset: 2208)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1444, file: !131, line: 442, baseType: !2342, size: 64, offset: 2240)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1444, file: !131, line: 443, baseType: !2346, size: 64, offset: 2304)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1444, file: !131, line: 444, baseType: !839, size: 8, offset: 2368)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1444, file: !131, line: 451, baseType: !839, size: 8, offset: 2376)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1444, file: !131, line: 454, baseType: !19, size: 32, offset: 2400)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1444, file: !131, line: 455, baseType: !2411, size: 64, offset: 2432)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2413, line: 23, size: 96, elements: !2414)
!2413 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2412, file: !2413, line: 24, baseType: !37, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2412, file: !2413, line: 24, baseType: !37, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2412, file: !2413, line: 24, baseType: !37, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1444, file: !131, line: 458, baseType: !2419, size: 64, offset: 2496)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!37}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1444, file: !131, line: 460, baseType: !2423, size: 4032, align: 512, offset: 2560)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 4032, elements: !2440)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !131, line: 362, size: 576, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2424, file: !131, line: 363, baseType: !35, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2424, file: !131, line: 364, baseType: !19, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2424, file: !131, line: 367, baseType: !2429, size: 448, offset: 128)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !131, line: 319, size: 448, elements: !2430)
!2430 = !{!2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2429, file: !131, line: 320, baseType: !1443, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2429, file: !131, line: 321, baseType: !2433, size: 384, offset: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2434, line: 40, size: 384, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2433, file: !2434, line: 41, baseType: !2437, size: 384, align: 64)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, align: 64, elements: !2438)
!2438 = !{!2439}
!2439 = !DISubrange(count: 2)
!2440 = !{!2441}
!2441 = !DISubrange(count: 7)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1444, file: !131, line: 463, baseType: !2443, size: 192, offset: 6592)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2444, line: 8, size: 192, elements: !2445)
!2444 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2445 = !{!2446, !2447, !2449}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2443, file: !2444, line: 10, baseType: !19, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2443, file: !2444, line: 11, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2443, file: !2444, line: 12, baseType: !2450, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2452, line: 59, size: 48, elements: !2453)
!2452 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2453 = !{!2454, !2457, !2458, !2459, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2451, file: !2452, line: 60, baseType: !2455, size: 16)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !2456)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !887)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2451, file: !2452, line: 61, baseType: !2455, size: 16, offset: 16)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2451, file: !2452, line: 63, baseType: !19, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2451, file: !2452, line: 64, baseType: !19, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !2452, line: 65, baseType: !19, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2451, file: !2452, line: 66, baseType: !19, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1444, file: !131, line: 465, baseType: !54, size: 64, offset: 6784)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1444, file: !131, line: 469, baseType: !19, size: 32, offset: 6848)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1444, file: !131, line: 470, baseType: !112, size: 128, offset: 6912)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1444, file: !131, line: 471, baseType: !2466, size: 64, offset: 7040)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2468, line: 33, size: 96, elements: !2469)
!2468 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2467, file: !2468, line: 37, baseType: !37, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2467, file: !2468, line: 43, baseType: !37, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2467, file: !2468, line: 45, baseType: !41, size: 16, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2468, line: 47, baseType: !41, size: 16, offset: 80)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1444, file: !131, line: 476, baseType: !2475, size: 64, offset: 7104)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !131, line: 378, size: 256, elements: !2477)
!2477 = !{!2478, !2494, !2495, !2496}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2476, file: !131, line: 379, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2481, line: 204, baseType: !2482)
!2481 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2481, line: 197, size: 192, elements: !2483)
!2483 = !{!2484, !2486, !2487, !2488, !2490, !2492}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2482, file: !2481, line: 198, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2481, line: 21, baseType: !320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2482, file: !2481, line: 199, baseType: !102, size: 8, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2482, file: !2481, line: 200, baseType: !102, size: 8, offset: 40)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2482, file: !2481, line: 201, baseType: !2489, size: 16, offset: 48)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2481, line: 17, baseType: !109)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2482, file: !2481, line: 202, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2481, line: 16, baseType: !378)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2482, file: !2481, line: 203, baseType: !2493, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2481, line: 22, baseType: !378)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2476, file: !131, line: 380, baseType: !19, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2476, file: !131, line: 381, baseType: !927, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2476, file: !131, line: 382, baseType: !927, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1444, file: !131, line: 477, baseType: !2476, size: 256, offset: 7168)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1444, file: !131, line: 480, baseType: !2499, size: 64, offset: 7424)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !131, line: 480, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1444, file: !131, line: 483, baseType: !2502, size: 64, offset: 7488)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !131, line: 483, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1444, file: !131, line: 488, baseType: !927, size: 64, offset: 7552)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1444, file: !131, line: 492, baseType: !35, size: 64, offset: 7616)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1444, file: !131, line: 493, baseType: !19, size: 32, offset: 7680)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1444, file: !131, line: 495, baseType: !35, size: 64, offset: 7744)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1444, file: !131, line: 496, baseType: !19, size: 32, offset: 7808)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1444, file: !131, line: 499, baseType: !19, size: 32, offset: 7840)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1444, file: !131, line: 500, baseType: !2511, size: 64, offset: 7872)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2513, line: 45, baseType: !2514)
!2513 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1444, file: !131, line: 503, baseType: !19, size: 32, offset: 7936)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1444, file: !131, line: 504, baseType: !2517, size: 64, offset: 8000)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2520, line: 96, size: 192, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2521 = !{!2522, !2523, !2576, !2579}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2519, file: !2520, line: 97, baseType: !19, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2519, file: !2520, line: 98, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2520, line: 24, size: 3072, elements: !2526)
!2526 = !{!2527, !2529, !2530, !2531, !2532, !2545, !2546, !2547, !2548, !2560, !2561, !2562, !2573, !2574, !2575}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2525, file: !2520, line: 26, baseType: !2528, size: 128)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 128, elements: !2438)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2525, file: !2520, line: 27, baseType: !2528, size: 128, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2525, file: !2520, line: 28, baseType: !37, size: 32, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2525, file: !2520, line: 31, baseType: !74, size: 32, align: 512, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2525, file: !2520, line: 32, baseType: !2533, size: 960, offset: 576)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2534, line: 206, size: 960, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2535 = !{!2536, !2537, !2540, !2542, !2543, !2544}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2533, file: !2534, line: 207, baseType: !665, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2533, file: !2534, line: 208, baseType: !2538, size: 256, offset: 64)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2539, size: 256, elements: !739)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2533, file: !2534, line: 209, baseType: !2541, size: 256, offset: 320)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !739)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2533, file: !2534, line: 213, baseType: !1064, size: 64, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2533, file: !2534, line: 215, baseType: !1066, size: 256, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2534, line: 216, baseType: !98, size: 8, offset: 896)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2525, file: !2520, line: 33, baseType: !54, size: 64, offset: 1536)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2525, file: !2520, line: 34, baseType: !54, size: 64, offset: 1600)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2525, file: !2520, line: 35, baseType: !839, size: 8, offset: 1664)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2525, file: !2520, line: 36, baseType: !2549, size: 320, offset: 1728)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2550, line: 11, size: 320, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2551 = !{!2552, !2553, !2554, !2559}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2549, file: !2550, line: 16, baseType: !734, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2549, file: !2550, line: 17, baseType: !54, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2549, file: !2550, line: 18, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !2550, line: 19, baseType: !319, size: 32, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2525, file: !2520, line: 37, baseType: !966, size: 256, offset: 2048)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2525, file: !2520, line: 38, baseType: !662, size: 128, align: 64, offset: 2304)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2525, file: !2520, line: 39, baseType: !2563, size: 64, offset: 2432)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2520, line: 49, size: 768, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2564, file: !2520, line: 50, baseType: !74, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2564, file: !2520, line: 51, baseType: !2541, size: 256, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2564, file: !2520, line: 53, baseType: !2541, size: 256, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2564, file: !2520, line: 54, baseType: !54, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2564, file: !2520, line: 55, baseType: !2563, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2564, file: !2520, line: 56, baseType: !37, size: 32, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2564, file: !2520, line: 57, baseType: !37, size: 32, offset: 736)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2525, file: !2520, line: 40, baseType: !54, size: 64, offset: 2496)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2525, file: !2520, line: 42, baseType: !37, size: 32, offset: 2560)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2525, file: !2520, line: 43, baseType: !2518, size: 64, offset: 2624)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2519, file: !2520, line: 99, baseType: !2577, offset: 128)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2578, line: 211, elements: !647)
!2578 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2519, file: !2520, line: 100, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2520, line: 63, size: 3008, elements: !2582)
!2582 = !{!2583, !2584, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2614}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2581, file: !2520, line: 64, baseType: !2563, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2581, file: !2520, line: 65, baseType: !2585, size: 192, offset: 64)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 192, elements: !718)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2581, file: !2520, line: 67, baseType: !37, size: 32, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2581, file: !2520, line: 68, baseType: !682, size: 256, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2581, file: !2520, line: 69, baseType: !74, size: 32, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2581, file: !2520, line: 70, baseType: !682, size: 256, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2581, file: !2520, line: 71, baseType: !54, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2581, file: !2520, line: 72, baseType: !54, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2581, file: !2520, line: 73, baseType: !54, size: 64, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2581, file: !2520, line: 74, baseType: !54, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2581, file: !2520, line: 75, baseType: !54, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2581, file: !2520, line: 76, baseType: !54, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2581, file: !2520, line: 77, baseType: !54, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2581, file: !2520, line: 78, baseType: !54, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2581, file: !2520, line: 79, baseType: !839, size: 8, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2581, file: !2520, line: 80, baseType: !54, size: 64, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2581, file: !2520, line: 81, baseType: !682, size: 256, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2581, file: !2520, line: 82, baseType: !1005, size: 256, offset: 1792)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2581, file: !2520, line: 84, baseType: !64, size: 32, offset: 2048)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2581, file: !2520, line: 87, baseType: !54, size: 64, offset: 2112)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2581, file: !2520, line: 88, baseType: !54, size: 64, offset: 2176)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2581, file: !2520, line: 89, baseType: !2606, size: 704, offset: 2240)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !967, line: 111, size: 704, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2613}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2606, file: !967, line: 112, baseType: !966, size: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2606, file: !967, line: 113, baseType: !2549, size: 320, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2606, file: !967, line: 116, baseType: !2611, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !967, line: 18, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2606, file: !967, line: 117, baseType: !37, size: 32, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2581, file: !2520, line: 90, baseType: !2518, size: 64, offset: 2944)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1444, file: !131, line: 515, baseType: !2616, size: 64, offset: 8064)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2618, line: 117, size: 128, elements: !2619)
!2618 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2617, file: !2618, line: 118, baseType: !851, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2617, file: !2618, line: 119, baseType: !851, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2617, file: !2618, line: 120, baseType: !1064, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1444, file: !131, line: 516, baseType: !19, size: 32, offset: 8128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1444, file: !131, line: 519, baseType: !19, size: 32, offset: 8160)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1444, file: !131, line: 520, baseType: !2626, size: 64, offset: 8192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1444, file: !131, line: 523, baseType: !2628, size: 64, offset: 8256)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !175, line: 372, size: 1024, elements: !2631)
!2631 = !{!2632, !2633, !2673, !2733, !2814, !2815, !2818, !2823, !2824, !2825, !2826, !2828, !2831}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2630, file: !175, line: 373, baseType: !112, size: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2630, file: !175, line: 374, baseType: !2634, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !175, line: 291, size: 576, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2644, !2667, !2671, !2672}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2635, file: !175, line: 292, baseType: !33, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2635, file: !175, line: 293, baseType: !35, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2635, file: !175, line: 295, baseType: !35, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2635, file: !175, line: 297, baseType: !2641, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!37, !2629, !174, !35}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2635, file: !175, line: 299, baseType: !2645, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !175, line: 275, size: 320, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2646, file: !175, line: 276, baseType: !33, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2646, file: !175, line: 277, baseType: !2650, size: 256, offset: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2646, file: !175, line: 277, size: 256, elements: !2651)
!2651 = !{!2652, !2663}
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !175, line: 278, baseType: !2653, size: 256)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !175, line: 278, size: 256, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2660, !2661, !2662}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2653, file: !175, line: 279, baseType: !33, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2653, file: !175, line: 280, baseType: !2514, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2653, file: !175, line: 281, baseType: !2514, size: 32, offset: 96)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2653, file: !175, line: 282, baseType: !2659, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2653, file: !175, line: 283, baseType: !19, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2653, file: !175, line: 284, baseType: !2514, size: 32, offset: 160)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2653, file: !175, line: 285, baseType: !2514, size: 32, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2650, file: !175, line: 287, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!37, !2629}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2635, file: !175, line: 300, baseType: !2668, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!115, !2629}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2635, file: !175, line: 301, baseType: !112, size: 128, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2635, file: !175, line: 302, baseType: !2664, size: 64, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2630, file: !175, line: 375, baseType: !2674, size: 64, offset: 192)
!2674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2630, file: !175, line: 375, size: 64, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2674, file: !175, line: 376, baseType: !33, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2674, file: !175, line: 378, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2513, line: 32, size: 640, elements: !2680)
!2680 = !{!2681, !2682, !2694, !2718, !2719, !2720, !2721, !2722, !2726}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2679, file: !2513, line: 33, baseType: !33, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2679, file: !2513, line: 34, baseType: !2683, size: 128, offset: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2618, line: 85, size: 128, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2683, file: !2618, line: 86, baseType: !64, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2618, line: 101, baseType: !2687, size: 64, offset: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2683, file: !2618, line: 101, size: 64, elements: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2687, file: !2618, line: 102, baseType: !54, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2687, file: !2618, line: 103, baseType: !2616, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2687, file: !2618, line: 104, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2618, line: 104, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2679, file: !2513, line: 35, baseType: !2695, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2697, line: 61, size: 128, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2696, file: !2697, line: 62, baseType: !35, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2696, file: !2697, line: 63, baseType: !2701, size: 64, offset: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2696, file: !2697, line: 63, size: 64, elements: !2702)
!2702 = !{!2703, !2704, !2717}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2701, file: !2697, line: 65, baseType: !54, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2701, file: !2697, line: 66, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2707, line: 169, size: 192, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2708 = !{!2709, !2710, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2706, file: !2707, line: 170, baseType: !2705, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2706, file: !2707, line: 171, baseType: !1443, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2706, file: !2707, line: 172, baseType: !2712, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2697, line: 32, size: 64, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2713, file: !2697, line: 33, baseType: !851, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2713, file: !2697, line: 34, baseType: !851, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2701, file: !2697, line: 67, baseType: !2712, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2679, file: !2513, line: 36, baseType: !35, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2679, file: !2513, line: 37, baseType: !35, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2679, file: !2513, line: 38, baseType: !35, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2679, file: !2513, line: 39, baseType: !2419, size: 64, offset: 448)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2679, file: !2513, line: 40, baseType: !2723, size: 64, offset: 512)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2679, file: !2513, line: 41, baseType: !2727, size: 64, offset: 576)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2513, line: 26, size: 192, elements: !2729)
!2729 = !{!2730, !2731, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2728, file: !2513, line: 27, baseType: !35, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2728, file: !2513, line: 28, baseType: !35, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2728, file: !2513, line: 29, baseType: !37, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2630, file: !175, line: 380, baseType: !2734, size: 256, offset: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !175, line: 148, size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2734, file: !175, line: 149, baseType: !734, size: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2734, file: !175, line: 150, baseType: !37, size: 32, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2734, file: !175, line: 151, baseType: !2739, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !175, line: 141, size: 256, elements: !2741)
!2741 = !{!2742, !2811, !2812, !2813}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2740, file: !175, line: 142, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !175, line: 138, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!185, !2747, !37, !2810}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !175, line: 93, size: 67776, elements: !2749)
!2749 = !{!2750, !2753, !2756, !2759, !2760, !2761, !2762, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2790, !2793, !2794, !2795, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2748, file: !175, line: 94, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !175, line: 13, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2748, file: !175, line: 95, baseType: !2754, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !175, line: 15, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2748, file: !175, line: 96, baseType: !2757, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !175, line: 14, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2748, file: !175, line: 97, baseType: !35, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2748, file: !175, line: 98, baseType: !37, size: 32, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2748, file: !175, line: 99, baseType: !682, size: 256, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2748, file: !175, line: 100, baseType: !2763, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2766, line: 10, flags: DIFlagFwdDecl)
!2766 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2748, file: !175, line: 101, baseType: !54, size: 64, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2748, file: !175, line: 102, baseType: !35, size: 64, offset: 704)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2748, file: !175, line: 103, baseType: !19, size: 32, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2748, file: !175, line: 104, baseType: !927, size: 64, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2748, file: !175, line: 105, baseType: !19, size: 32, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2748, file: !175, line: 106, baseType: !1064, size: 64, offset: 960)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2748, file: !175, line: 109, baseType: !2774, size: 33088, offset: 1024)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2775, line: 14, size: 33088, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2776 = !{!2777, !2781, !2788, !2789}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2774, file: !2775, line: 15, baseType: !2778, size: 32768)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, elements: !2779)
!2779 = !{!2780}
!2780 = !DISubrange(count: 4096)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2774, file: !2775, line: 16, baseType: !2782, size: 192, offset: 32768)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2783, line: 18, size: 192, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2784 = !{!2785, !2786, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2782, file: !2783, line: 19, baseType: !927, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2782, file: !2783, line: 20, baseType: !50, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2782, file: !2783, line: 21, baseType: !50, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2774, file: !2775, line: 17, baseType: !50, size: 64, offset: 32960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2774, file: !2775, line: 18, baseType: !37, size: 32, offset: 33024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2748, file: !175, line: 111, baseType: !2791, size: 64, offset: 34112)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !573, line: 913, baseType: !2792)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 64, elements: !578)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2748, file: !175, line: 114, baseType: !839, size: 8, offset: 34176)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2748, file: !175, line: 117, baseType: !2774, size: 33088, offset: 34240)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2748, file: !175, line: 118, baseType: !2796, size: 64, offset: 67328)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !175, line: 79, size: 64, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2797, file: !175, line: 80, baseType: !41, size: 16)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2797, file: !175, line: 81, baseType: !102, size: 8, offset: 16)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2797, file: !175, line: 82, baseType: !102, size: 8, offset: 24)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2797, file: !175, line: 83, baseType: !37, size: 32, offset: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2748, file: !175, line: 119, baseType: !54, size: 64, offset: 67392)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2748, file: !175, line: 120, baseType: !37, size: 32, offset: 67456)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2748, file: !175, line: 121, baseType: !37, size: 32, offset: 67488)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2748, file: !175, line: 122, baseType: !37, size: 32, offset: 67520)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2748, file: !175, line: 123, baseType: !377, size: 64, offset: 67584)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2748, file: !175, line: 125, baseType: !56, size: 64, offset: 67648)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2748, file: !175, line: 126, baseType: !1064, size: 64, offset: 67712)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2740, file: !175, line: 143, baseType: !2743, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2740, file: !175, line: 144, baseType: !2743, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2740, file: !175, line: 145, baseType: !2743, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2630, file: !175, line: 381, baseType: !927, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2630, file: !175, line: 382, baseType: !2816, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !245, line: 821, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2630, file: !175, line: 387, baseType: !2819, size: 64, offset: 640)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2630, file: !175, line: 387, size: 64, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2819, file: !175, line: 388, baseType: !35, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2819, file: !175, line: 389, baseType: !64, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2630, file: !175, line: 391, baseType: !35, size: 64, offset: 704)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2630, file: !175, line: 394, baseType: !37, size: 32, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2630, file: !175, line: 397, baseType: !37, size: 32, offset: 800)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2630, file: !175, line: 398, baseType: !2827, size: 64, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2630, file: !175, line: 399, baseType: !2829, size: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !175, line: 399, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2630, file: !175, line: 401, baseType: !2832, size: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!37, !2629, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !245, line: 671, size: 8512, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !3370, !3371, !3372, !3373, !3379, !3380, !3381, !3382, !3383, !3467, !3468, !3469, !3470, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3590, !3591, !3592, !3593, !3594, !3595, !3610, !3611, !3612, !3613, !3614, !3620, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3637, !3808, !3809, !3810, !3811, !4081, !4082, !4083}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2836, file: !245, line: 678, baseType: !112, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2836, file: !245, line: 684, baseType: !112, size: 128, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2836, file: !245, line: 685, baseType: !112, size: 128, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2836, file: !245, line: 689, baseType: !369, size: 192, align: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2836, file: !245, line: 690, baseType: !377, size: 64, offset: 576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2836, file: !245, line: 696, baseType: !112, size: 128, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2836, file: !245, line: 698, baseType: !734, size: 128, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2836, file: !245, line: 699, baseType: !112, size: 128, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2836, file: !245, line: 700, baseType: !37, size: 32, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2836, file: !245, line: 703, baseType: !37, size: 32, offset: 1056)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2836, file: !245, line: 705, baseType: !37, size: 32, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2836, file: !245, line: 707, baseType: !19, size: 32, offset: 1120)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2836, file: !245, line: 708, baseType: !2835, size: 64, offset: 1152)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2836, file: !245, line: 714, baseType: !2852, size: 64, offset: 1216)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !245, line: 302, size: 2432, elements: !2854)
!2854 = !{!2855, !2856, !2857, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3280, !3281, !3282, !3283, !3284, !3288, !3289, !3293, !3297, !3298, !3302, !3306, !3307, !3308, !3312, !3316, !3320, !3321, !3322, !3326, !3327, !3331, !3335, !3336, !3356, !3360, !3361, !3362, !3366}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2853, file: !245, line: 303, baseType: !112, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2853, file: !245, line: 305, baseType: !1443, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2853, file: !245, line: 306, baseType: !2858, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !198, line: 705, size: 5824, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2866, !2867, !2920, !2990, !2991, !2992, !2993, !2994, !3001, !3093, !3106, !3116, !3120, !3122, !3123, !3124, !3128, !3135, !3136, !3139, !3142, !3146, !3149, !3150, !3151, !3152, !3153, !3154, !3184, !3185, !3186, !3189, !3192, !3201, !3202, !3203, !3204, !3205, !3206}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2859, file: !198, line: 706, baseType: !1456, size: 512)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2859, file: !198, line: 707, baseType: !2858, size: 64, offset: 512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2859, file: !198, line: 709, baseType: !2864, size: 64, offset: 576)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !198, line: 37, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2859, file: !198, line: 711, baseType: !33, size: 64, offset: 640)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2859, file: !198, line: 712, baseType: !2868, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !198, line: 89, size: 384, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2880, !2885, !2889}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2870, file: !198, line: 90, baseType: !33, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2870, file: !198, line: 91, baseType: !1536, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2870, file: !198, line: 92, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!37, !2878, !1492}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2870, file: !198, line: 93, baseType: !2881, size: 64, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!927, !2878, !2884, !1030, !1031}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2870, file: !198, line: 95, baseType: !2886, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2858}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2870, file: !198, line: 97, baseType: !2890, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !205, line: 286, size: 1472, elements: !2893)
!2893 = !{!2894, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2892, file: !205, line: 287, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!37, !2858}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2892, file: !205, line: 288, baseType: !2886, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2892, file: !205, line: 289, baseType: !2895, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2892, file: !205, line: 290, baseType: !2895, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2892, file: !205, line: 291, baseType: !2895, size: 64, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2892, file: !205, line: 292, baseType: !2895, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2892, file: !205, line: 293, baseType: !2895, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2892, file: !205, line: 294, baseType: !2895, size: 64, offset: 448)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2892, file: !205, line: 295, baseType: !2895, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2892, file: !205, line: 296, baseType: !2895, size: 64, offset: 576)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2892, file: !205, line: 297, baseType: !2895, size: 64, offset: 640)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2892, file: !205, line: 298, baseType: !2895, size: 64, offset: 704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2892, file: !205, line: 299, baseType: !2895, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2892, file: !205, line: 300, baseType: !2895, size: 64, offset: 832)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2892, file: !205, line: 301, baseType: !2895, size: 64, offset: 896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2892, file: !205, line: 302, baseType: !2895, size: 64, offset: 960)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2892, file: !205, line: 303, baseType: !2895, size: 64, offset: 1024)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2892, file: !205, line: 304, baseType: !2895, size: 64, offset: 1088)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2892, file: !205, line: 305, baseType: !2895, size: 64, offset: 1152)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2892, file: !205, line: 306, baseType: !2895, size: 64, offset: 1216)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2892, file: !205, line: 307, baseType: !2895, size: 64, offset: 1280)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2892, file: !205, line: 308, baseType: !2895, size: 64, offset: 1344)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2892, file: !205, line: 309, baseType: !2895, size: 64, offset: 1408)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2859, file: !198, line: 714, baseType: !2921, size: 64, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2924, line: 80, size: 1344, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2989}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2923, file: !2924, line: 81, baseType: !33, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2923, file: !2924, line: 82, baseType: !33, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2923, file: !2924, line: 83, baseType: !1536, size: 64, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2923, file: !2924, line: 84, baseType: !1536, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2923, file: !2924, line: 85, baseType: !1536, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2923, file: !2924, line: 87, baseType: !2932, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!37, !2858, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !192, line: 96, size: 1152, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2948, !2952, !2953, !2954, !2955, !2956, !2964, !2965, !2966, !2967, !2968, !2969}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2936, file: !192, line: 97, baseType: !33, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2936, file: !192, line: 98, baseType: !2921, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2936, file: !192, line: 100, baseType: !1443, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2936, file: !192, line: 101, baseType: !33, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2936, file: !192, line: 103, baseType: !839, size: 8, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2936, file: !192, line: 104, baseType: !191, size: 32, offset: 288)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2936, file: !192, line: 106, baseType: !2945, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2947)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !192, line: 106, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2936, file: !192, line: 107, baseType: !2949, size: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !192, line: 107, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2936, file: !192, line: 109, baseType: !2895, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2936, file: !192, line: 110, baseType: !2886, size: 64, offset: 512)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2936, file: !192, line: 111, baseType: !2895, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2936, file: !192, line: 112, baseType: !2886, size: 64, offset: 640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2936, file: !192, line: 113, baseType: !2957, size: 64, offset: 704)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!37, !2858, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !205, line: 60, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !205, line: 58, size: 32, elements: !2962)
!2962 = !{!2963}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2961, file: !205, line: 59, baseType: !37, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2936, file: !192, line: 114, baseType: !2895, size: 64, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2936, file: !192, line: 115, baseType: !1536, size: 64, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2936, file: !192, line: 116, baseType: !1536, size: 64, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2936, file: !192, line: 118, baseType: !2890, size: 64, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2936, file: !192, line: 119, baseType: !2886, size: 64, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2936, file: !192, line: 121, baseType: !2970, size: 64, offset: 1088)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !192, line: 121, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2923, file: !2924, line: 88, baseType: !2875, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2923, file: !2924, line: 89, baseType: !2895, size: 64, offset: 448)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2923, file: !2924, line: 90, baseType: !2886, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2923, file: !2924, line: 91, baseType: !2886, size: 64, offset: 576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2923, file: !2924, line: 92, baseType: !2886, size: 64, offset: 640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2923, file: !2924, line: 94, baseType: !2895, size: 64, offset: 704)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2923, file: !2924, line: 95, baseType: !2895, size: 64, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2923, file: !2924, line: 97, baseType: !2957, size: 64, offset: 832)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2923, file: !2924, line: 98, baseType: !2895, size: 64, offset: 896)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2923, file: !2924, line: 100, baseType: !2895, size: 64, offset: 960)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2923, file: !2924, line: 102, baseType: !2895, size: 64, offset: 1024)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2923, file: !2924, line: 103, baseType: !2886, size: 64, offset: 1088)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2923, file: !2924, line: 105, baseType: !2890, size: 64, offset: 1152)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2923, file: !2924, line: 107, baseType: !2986, size: 64, offset: 1216)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2924, line: 107, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2923, file: !2924, line: 109, baseType: !839, size: 8, offset: 1280)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2859, file: !198, line: 715, baseType: !2935, size: 64, offset: 832)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2859, file: !198, line: 717, baseType: !35, size: 64, offset: 896)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2859, file: !198, line: 719, baseType: !35, size: 64, offset: 960)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2859, file: !198, line: 721, baseType: !682, size: 256, offset: 1024)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2859, file: !198, line: 725, baseType: !2995, size: 448, offset: 1280)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !198, line: 517, size: 448, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2995, file: !198, line: 518, baseType: !112, size: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2995, file: !198, line: 519, baseType: !112, size: 128, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2995, file: !198, line: 520, baseType: !112, size: 128, offset: 256)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2995, file: !198, line: 521, baseType: !197, size: 32, offset: 384)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2859, file: !198, line: 726, baseType: !3002, size: 2496, offset: 1728)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !205, line: 663, size: 2496, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3086, !3090}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3002, file: !205, line: 664, baseType: !2960, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3002, file: !205, line: 665, baseType: !19, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3002, file: !205, line: 666, baseType: !19, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3002, file: !205, line: 667, baseType: !839, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3002, file: !205, line: 668, baseType: !839, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3002, file: !205, line: 669, baseType: !839, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3002, file: !205, line: 670, baseType: !839, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3002, file: !205, line: 671, baseType: !839, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3002, file: !205, line: 672, baseType: !839, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3002, file: !205, line: 673, baseType: !839, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3002, file: !205, line: 674, baseType: !839, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3002, file: !205, line: 675, baseType: !319, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3002, file: !205, line: 676, baseType: !74, size: 32, offset: 96)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3002, file: !205, line: 678, baseType: !112, size: 128, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3002, file: !205, line: 679, baseType: !1005, size: 256, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3002, file: !205, line: 680, baseType: !3020, size: 64, offset: 512)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3022, line: 43, size: 1536, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3021, file: !3022, line: 44, baseType: !33, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3021, file: !3022, line: 45, baseType: !37, size: 32, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3021, file: !3022, line: 46, baseType: !112, size: 128, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3021, file: !3022, line: 47, baseType: !74, size: 32, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3021, file: !3022, line: 48, baseType: !3029, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !205, line: 629, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3021, file: !3022, line: 49, baseType: !2549, size: 320, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3021, file: !3022, line: 50, baseType: !54, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3021, file: !3022, line: 51, baseType: !452, size: 64, offset: 768)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3021, file: !3022, line: 52, baseType: !452, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3021, file: !3022, line: 53, baseType: !452, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3021, file: !3022, line: 54, baseType: !452, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3021, file: !3022, line: 55, baseType: !452, size: 64, offset: 1024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3021, file: !3022, line: 56, baseType: !54, size: 64, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3021, file: !3022, line: 57, baseType: !54, size: 64, offset: 1152)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3021, file: !3022, line: 58, baseType: !54, size: 64, offset: 1216)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3021, file: !3022, line: 59, baseType: !54, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3021, file: !3022, line: 60, baseType: !54, size: 64, offset: 1344)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3021, file: !3022, line: 61, baseType: !2858, size: 64, offset: 1408)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3021, file: !3022, line: 62, baseType: !839, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3021, file: !3022, line: 63, baseType: !839, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3002, file: !205, line: 681, baseType: !839, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3002, file: !205, line: 682, baseType: !839, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3002, file: !205, line: 683, baseType: !839, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3002, file: !205, line: 684, baseType: !19, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3002, file: !205, line: 685, baseType: !19, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3002, file: !205, line: 690, baseType: !444, size: 512, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3002, file: !205, line: 691, baseType: !377, size: 64, offset: 1152)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3002, file: !205, line: 692, baseType: !966, size: 256, offset: 1216)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3002, file: !205, line: 693, baseType: !69, size: 192, offset: 1472)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3002, file: !205, line: 694, baseType: !3029, size: 64, offset: 1664)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3002, file: !205, line: 695, baseType: !64, size: 32, offset: 1728)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3002, file: !205, line: 696, baseType: !64, size: 32, offset: 1760)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3002, file: !205, line: 697, baseType: !19, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3002, file: !205, line: 698, baseType: !19, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3002, file: !205, line: 699, baseType: !19, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3002, file: !205, line: 700, baseType: !19, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3002, file: !205, line: 701, baseType: !19, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3002, file: !205, line: 702, baseType: !19, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3002, file: !205, line: 703, baseType: !839, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3002, file: !205, line: 704, baseType: !19, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3002, file: !205, line: 705, baseType: !19, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3002, file: !205, line: 706, baseType: !19, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3002, file: !205, line: 707, baseType: !19, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3002, file: !205, line: 708, baseType: !19, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3002, file: !205, line: 709, baseType: !19, size: 32, offset: 1824)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3002, file: !205, line: 710, baseType: !204, size: 32, offset: 1856)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3002, file: !205, line: 711, baseType: !212, size: 32, offset: 1888)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3002, file: !205, line: 712, baseType: !212, size: 32, offset: 1920)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3002, file: !205, line: 713, baseType: !37, size: 32, offset: 1952)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3002, file: !205, line: 714, baseType: !37, size: 32, offset: 1984)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3002, file: !205, line: 715, baseType: !377, size: 64, offset: 2048)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3002, file: !205, line: 716, baseType: !377, size: 64, offset: 2112)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3002, file: !205, line: 717, baseType: !377, size: 64, offset: 2176)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3002, file: !205, line: 718, baseType: !377, size: 64, offset: 2240)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3002, file: !205, line: 720, baseType: !3081, size: 64, offset: 2304)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !205, line: 632, size: 64, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3082, file: !205, line: 633, baseType: !74, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3082, file: !205, line: 634, baseType: !19, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3002, file: !205, line: 721, baseType: !3087, size: 64, offset: 2368)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !2858, !851}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3002, file: !205, line: 722, baseType: !3091, size: 64, offset: 2432)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !205, line: 722, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2859, file: !198, line: 727, baseType: !3094, size: 64, offset: 4224)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !205, line: 742, size: 1792, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3103, !3104, !3105}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3095, file: !205, line: 743, baseType: !2892, size: 1472)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3095, file: !205, line: 744, baseType: !2895, size: 64, offset: 1472)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3095, file: !205, line: 745, baseType: !3100, size: 64, offset: 1536)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !2858, !839}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3095, file: !205, line: 746, baseType: !2895, size: 64, offset: 1600)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3095, file: !205, line: 747, baseType: !2886, size: 64, offset: 1664)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3095, file: !205, line: 748, baseType: !2886, size: 64, offset: 1728)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2859, file: !198, line: 736, baseType: !3107, size: 128, offset: 4288)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !198, line: 529, size: 128, elements: !3108)
!3108 = !{!3109, !3113}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3107, file: !198, line: 531, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3112, line: 13, flags: DIFlagFwdDecl)
!3112 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3107, file: !198, line: 532, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !198, line: 49, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2859, file: !198, line: 738, baseType: !3117, size: 64, offset: 4416)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !198, line: 738, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2859, file: !198, line: 740, baseType: !3121, size: 64, offset: 4480)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2859, file: !198, line: 741, baseType: !377, size: 64, offset: 4544)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2859, file: !198, line: 746, baseType: !377, size: 64, offset: 4608)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2859, file: !198, line: 747, baseType: !3125, size: 64, offset: 4672)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !198, line: 747, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2859, file: !198, line: 749, baseType: !3129, size: 64, offset: 4736)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !198, line: 428, size: 128, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3130, file: !198, line: 433, baseType: !19, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3130, file: !198, line: 434, baseType: !19, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3130, file: !198, line: 435, baseType: !54, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2859, file: !198, line: 751, baseType: !112, size: 128, offset: 4800)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2859, file: !198, line: 762, baseType: !3137, size: 64, offset: 4928)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !198, line: 762, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2859, file: !198, line: 770, baseType: !3140, offset: 4992)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3141, line: 5, elements: !647)
!3141 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2859, file: !198, line: 772, baseType: !3143, size: 64, offset: 4992)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3145, line: 18, flags: DIFlagFwdDecl)
!3145 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2859, file: !198, line: 773, baseType: !3147, size: 64, offset: 5056)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2924, line: 22, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2859, file: !198, line: 776, baseType: !37, size: 32, offset: 5120)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2859, file: !198, line: 778, baseType: !1283, size: 32, offset: 5152)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2859, file: !198, line: 779, baseType: !319, size: 32, offset: 5184)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2859, file: !198, line: 781, baseType: !74, size: 32, offset: 5216)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2859, file: !198, line: 782, baseType: !112, size: 128, offset: 5248)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2859, file: !198, line: 784, baseType: !3155, size: 64, offset: 5376)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3158, line: 52, size: 768, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3168, !3172, !3173, !3174, !3175, !3179, !3183}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3157, file: !3158, line: 53, baseType: !33, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3157, file: !3158, line: 55, baseType: !1536, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3157, file: !3158, line: 56, baseType: !1536, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3157, file: !3158, line: 58, baseType: !2875, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3157, file: !3158, line: 59, baseType: !3165, size: 64, offset: 256)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!927, !2878, !2884}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3157, file: !3158, line: 61, baseType: !3169, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !3155}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3157, file: !3158, line: 62, baseType: !2886, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3157, file: !3158, line: 64, baseType: !2895, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3157, file: !3158, line: 66, baseType: !2119, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3157, file: !3158, line: 67, baseType: !3176, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!2136, !2878}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3157, file: !3158, line: 69, baseType: !3180, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !2878, !1030, !1031}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3157, file: !3158, line: 71, baseType: !2890, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2859, file: !198, line: 785, baseType: !1536, size: 64, offset: 5440)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2859, file: !198, line: 787, baseType: !2886, size: 64, offset: 5504)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2859, file: !198, line: 788, baseType: !3187, size: 64, offset: 5568)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !198, line: 46, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2859, file: !198, line: 789, baseType: !3190, size: 64, offset: 5632)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !198, line: 48, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2859, file: !198, line: 791, baseType: !3193, size: 64, offset: 5696)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !198, line: 597, size: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3194, file: !198, line: 598, baseType: !219, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3194, file: !198, line: 599, baseType: !228, size: 32, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3194, file: !198, line: 600, baseType: !233, size: 32, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3194, file: !198, line: 601, baseType: !839, size: 8, offset: 96)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3194, file: !198, line: 602, baseType: !839, size: 8, offset: 104)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2859, file: !198, line: 793, baseType: !238, size: 32, offset: 5760)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2859, file: !198, line: 795, baseType: !839, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2859, file: !198, line: 796, baseType: !839, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2859, file: !198, line: 797, baseType: !839, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2859, file: !198, line: 798, baseType: !839, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2859, file: !198, line: 799, baseType: !839, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2853, file: !245, line: 307, baseType: !2858, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2853, file: !245, line: 308, baseType: !1536, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2853, file: !245, line: 309, baseType: !1536, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2853, file: !245, line: 310, baseType: !33, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2853, file: !245, line: 311, baseType: !37, size: 32, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2853, file: !245, line: 316, baseType: !37, size: 32, offset: 544)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2853, file: !245, line: 318, baseType: !2448, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2853, file: !245, line: 319, baseType: !3215, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !245, line: 977, size: 1856, elements: !3217)
!3217 = !{!3218, !3270, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3216, file: !245, line: 978, baseType: !3219, size: 896)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !245, line: 873, size: 896, elements: !3220)
!3220 = !{!3221, !3222, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3219, file: !245, line: 874, baseType: !2852, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3219, file: !245, line: 875, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !245, line: 912, size: 1792, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3224, file: !245, line: 917, baseType: !469, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3224, file: !245, line: 923, baseType: !682, size: 256, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3224, file: !245, line: 925, baseType: !112, size: 128, offset: 320)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3224, file: !245, line: 926, baseType: !3230, size: 128, offset: 448)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !245, line: 901, size: 128, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3230, file: !245, line: 902, baseType: !512, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3230, file: !245, line: 903, baseType: !377, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3224, file: !245, line: 927, baseType: !3230, size: 128, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3224, file: !245, line: 928, baseType: !112, size: 128, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3224, file: !245, line: 930, baseType: !37, size: 32, offset: 832)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3224, file: !245, line: 931, baseType: !37, size: 32, offset: 864)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3224, file: !245, line: 932, baseType: !37, size: 32, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3224, file: !245, line: 934, baseType: !37, size: 32, offset: 928)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3224, file: !245, line: 935, baseType: !37, size: 32, offset: 960)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3224, file: !245, line: 936, baseType: !37, size: 32, offset: 992)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3224, file: !245, line: 937, baseType: !37, size: 32, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3224, file: !245, line: 939, baseType: !325, size: 32, offset: 1056)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3224, file: !245, line: 940, baseType: !309, size: 64, offset: 1088)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3224, file: !245, line: 945, baseType: !377, size: 64, offset: 1152)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3224, file: !245, line: 946, baseType: !377, size: 64, offset: 1216)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3224, file: !245, line: 947, baseType: !377, size: 64, offset: 1280)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3224, file: !245, line: 953, baseType: !3223, size: 64, offset: 1344)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3224, file: !245, line: 954, baseType: !377, size: 64, offset: 1408)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3224, file: !245, line: 955, baseType: !377, size: 64, offset: 1472)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3224, file: !245, line: 956, baseType: !37, size: 32, offset: 1536)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3224, file: !245, line: 958, baseType: !37, size: 32, offset: 1568)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3224, file: !245, line: 960, baseType: !662, size: 128, align: 64, offset: 1600)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3224, file: !245, line: 968, baseType: !3255, size: 64, offset: 1728)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3256, line: 12, baseType: !3257)
!3256 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3256, line: 10, size: 64, elements: !3258)
!3258 = !{!3259}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3257, file: !3256, line: 11, baseType: !675, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3219, file: !245, line: 877, baseType: !112, size: 128, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3219, file: !245, line: 879, baseType: !112, size: 128, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3219, file: !245, line: 880, baseType: !112, size: 128, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3219, file: !245, line: 883, baseType: !19, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3219, file: !245, line: 885, baseType: !19, size: 32, offset: 544)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3219, file: !245, line: 886, baseType: !19, size: 32, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3219, file: !245, line: 888, baseType: !64, size: 32, offset: 608)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3219, file: !245, line: 889, baseType: !662, size: 128, align: 64, offset: 640)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3219, file: !245, line: 891, baseType: !35, size: 64, offset: 768)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3219, file: !245, line: 898, baseType: !37, size: 32, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3216, file: !245, line: 979, baseType: !3271, size: 64, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3216, file: !245, line: 981, baseType: !112, size: 128, offset: 960)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3216, file: !245, line: 982, baseType: !37, size: 32, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3216, file: !245, line: 984, baseType: !37, size: 32, offset: 1120)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3216, file: !245, line: 985, baseType: !37, size: 32, offset: 1152)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3216, file: !245, line: 987, baseType: !469, size: 32, offset: 1184)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3216, file: !245, line: 988, baseType: !444, size: 512, offset: 1216)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3216, file: !245, line: 989, baseType: !452, size: 64, offset: 1728)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3216, file: !245, line: 990, baseType: !19, size: 32, offset: 1792)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2853, file: !245, line: 320, baseType: !64, size: 32, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2853, file: !245, line: 321, baseType: !37, size: 32, offset: 736)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2853, file: !245, line: 322, baseType: !37, size: 32, offset: 768)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2853, file: !245, line: 325, baseType: !19, size: 32, offset: 800)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2853, file: !245, line: 331, baseType: !3285, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !2852}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2853, file: !245, line: 332, baseType: !3285, size: 64, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2853, file: !245, line: 350, baseType: !3290, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!37, !2835}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2853, file: !245, line: 356, baseType: !3294, size: 64, offset: 1024)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !2835, !626}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2853, file: !245, line: 357, baseType: !3294, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2853, file: !245, line: 385, baseType: !3299, size: 64, offset: 1152)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!37, !2835, !37}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2853, file: !245, line: 386, baseType: !3303, size: 64, offset: 1216)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !2835, !37}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2853, file: !245, line: 406, baseType: !3303, size: 64, offset: 1280)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2853, file: !245, line: 407, baseType: !3303, size: 64, offset: 1344)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2853, file: !245, line: 415, baseType: !3309, size: 64, offset: 1408)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !2835}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2853, file: !245, line: 427, baseType: !3313, size: 64, offset: 1472)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !2852, !19}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2853, file: !245, line: 436, baseType: !3317, size: 64, offset: 1536)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!37, !2852}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2853, file: !245, line: 443, baseType: !3285, size: 64, offset: 1600)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2853, file: !245, line: 450, baseType: !3290, size: 64, offset: 1664)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2853, file: !245, line: 455, baseType: !3323, size: 64, offset: 1728)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3271, !839}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2853, file: !245, line: 461, baseType: !772, size: 64, offset: 1792)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2853, file: !245, line: 469, baseType: !3328, size: 64, offset: 1856)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3271, !3271}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2853, file: !245, line: 476, baseType: !3332, size: 64, offset: 1920)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!35, !2835, !1958, !37, !839}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2853, file: !245, line: 483, baseType: !1240, size: 64, offset: 1984)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2853, file: !245, line: 494, baseType: !3337, size: 64, offset: 2048)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!1064, !2835, !3340, !54}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !245, line: 1014, size: 448, elements: !3342)
!3342 = !{!3343, !3344, !3347, !3348, !3349, !3350, !3355}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3341, file: !245, line: 1015, baseType: !2835, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3341, file: !245, line: 1016, baseType: !3345, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !245, line: 641, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3341, file: !245, line: 1017, baseType: !54, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3341, file: !245, line: 1018, baseType: !54, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3341, file: !245, line: 1019, baseType: !377, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3341, file: !245, line: 1020, baseType: !3351, size: 64, offset: 320)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3341, file: !245, line: 1020, size: 64, elements: !3352)
!3352 = !{!3353, !3354}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3351, file: !245, line: 1021, baseType: !35, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3351, file: !245, line: 1022, baseType: !54, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3341, file: !245, line: 1024, baseType: !37, size: 32, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2853, file: !245, line: 506, baseType: !3357, size: 64, offset: 2112)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!37, !115}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2853, file: !245, line: 520, baseType: !3309, size: 64, offset: 2176)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2853, file: !245, line: 530, baseType: !3290, size: 64, offset: 2240)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2853, file: !245, line: 537, baseType: !3363, size: 64, offset: 2304)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!839, !2852, !37}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2853, file: !245, line: 542, baseType: !3367, size: 64, offset: 2368)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!37, !2835, !377}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2836, file: !245, line: 715, baseType: !35, size: 64, offset: 1280)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2836, file: !245, line: 717, baseType: !244, size: 32, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2836, file: !245, line: 718, baseType: !19, size: 32, offset: 1376)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2836, file: !245, line: 719, baseType: !3374, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3375, line: 26, baseType: !3376)
!3375 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3375, line: 24, size: 64, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3376, file: !3375, line: 25, baseType: !3255, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2836, file: !245, line: 720, baseType: !677, size: 64, offset: 1472)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2836, file: !245, line: 728, baseType: !377, size: 64, offset: 1536)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2836, file: !245, line: 729, baseType: !377, size: 64, offset: 1600)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2836, file: !245, line: 730, baseType: !377, size: 64, offset: 1664)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2836, file: !245, line: 732, baseType: !3384, size: 1088, offset: 1728)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3385, line: 385, size: 1088, elements: !3386)
!3385 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3386 = !{!3387, !3388, !3389, !3390, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3440, !3441, !3448, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3384, file: !3385, line: 390, baseType: !320, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3384, file: !3385, line: 395, baseType: !320, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3384, file: !3385, line: 400, baseType: !378, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3385, line: 402, baseType: !3391, size: 64, offset: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3385, line: 402, size: 64, elements: !3392)
!3392 = !{!3393, !3394}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3391, file: !3385, line: 403, baseType: !378, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3391, file: !3385, line: 404, baseType: !378, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3384, file: !3385, line: 407, baseType: !378, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3384, file: !3385, line: 408, baseType: !378, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3384, file: !3385, line: 410, baseType: !378, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3384, file: !3385, line: 411, baseType: !378, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3384, file: !3385, line: 412, baseType: !378, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3384, file: !3385, line: 413, baseType: !378, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3384, file: !3385, line: 414, baseType: !378, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3384, file: !3385, line: 415, baseType: !378, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3384, file: !3385, line: 416, baseType: !378, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3384, file: !3385, line: 417, baseType: !378, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3384, file: !3385, line: 418, baseType: !378, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3384, file: !3385, line: 419, baseType: !378, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3384, file: !3385, line: 420, baseType: !378, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3384, file: !3385, line: 421, baseType: !378, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3384, file: !3385, line: 422, baseType: !378, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3384, file: !3385, line: 423, baseType: !378, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3384, file: !3385, line: 424, baseType: !378, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3384, file: !3385, line: 435, baseType: !378, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3384, file: !3385, line: 436, baseType: !378, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3384, file: !3385, line: 437, baseType: !378, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3384, file: !3385, line: 439, baseType: !378, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3384, file: !3385, line: 440, baseType: !378, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3384, file: !3385, line: 442, baseType: !378, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3384, file: !3385, line: 443, baseType: !378, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3384, file: !3385, line: 444, baseType: !378, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3384, file: !3385, line: 445, baseType: !378, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3384, file: !3385, line: 446, baseType: !378, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3384, file: !3385, line: 447, baseType: !378, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3384, file: !3385, line: 448, baseType: !378, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3384, file: !3385, line: 449, baseType: !378, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3384, file: !3385, line: 450, baseType: !378, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3384, file: !3385, line: 451, baseType: !378, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3384, file: !3385, line: 452, baseType: !378, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3384, file: !3385, line: 453, baseType: !378, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3384, file: !3385, line: 454, baseType: !378, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3384, file: !3385, line: 455, baseType: !378, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3384, file: !3385, line: 456, baseType: !378, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3384, file: !3385, line: 457, baseType: !378, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3384, file: !3385, line: 458, baseType: !378, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3384, file: !3385, line: 459, baseType: !378, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3385, line: 461, baseType: !3436, size: 32, offset: 384)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3385, line: 461, size: 32, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3436, file: !3385, line: 462, baseType: !320, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3436, file: !3385, line: 463, baseType: !320, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3384, file: !3385, line: 466, baseType: !320, size: 32, offset: 416)
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3385, line: 467, baseType: !3442, size: 64, offset: 448)
!3442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3385, line: 467, size: 64, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3442, file: !3385, line: 468, baseType: !378, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3442, file: !3385, line: 469, baseType: !378, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3442, file: !3385, line: 470, baseType: !378, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3442, file: !3385, line: 471, baseType: !378, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3385, line: 473, baseType: !3449, size: 64, offset: 512)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3385, line: 473, size: 64, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3449, file: !3385, line: 474, baseType: !378, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3449, file: !3385, line: 475, baseType: !378, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3449, file: !3385, line: 476, baseType: !378, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3449, file: !3385, line: 477, baseType: !378, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3384, file: !3385, line: 479, baseType: !378, size: 64, offset: 576)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3384, file: !3385, line: 485, baseType: !378, size: 64, offset: 640)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3384, file: !3385, line: 490, baseType: !320, size: 32, offset: 704)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3384, file: !3385, line: 492, baseType: !852, size: 32, offset: 736)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3384, file: !3385, line: 501, baseType: !378, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3384, file: !3385, line: 506, baseType: !320, size: 32, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3384, file: !3385, line: 507, baseType: !109, size: 16, offset: 864)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3384, file: !3385, line: 508, baseType: !109, size: 16, offset: 880)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3384, file: !3385, line: 509, baseType: !320, size: 32, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3384, file: !3385, line: 510, baseType: !320, size: 32, offset: 928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3384, file: !3385, line: 518, baseType: !378, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3384, file: !3385, line: 520, baseType: !378, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2836, file: !245, line: 733, baseType: !108, size: 16, offset: 2816)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2836, file: !245, line: 734, baseType: !108, size: 16, offset: 2832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2836, file: !245, line: 735, baseType: !108, size: 16, offset: 2848)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2836, file: !245, line: 736, baseType: !3471, size: 1536, offset: 2880)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !245, line: 155, size: 1536, elements: !3472)
!3472 = !{!3473, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3557, !3558, !3559, !3560}
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !245, line: 157, baseType: !3474, size: 768)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3471, file: !245, line: 157, size: 768, elements: !3475)
!3475 = !{!3476, !3495, !3499, !3503, !3508, !3530}
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 158, baseType: !3477, size: 768)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 158, size: 768, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3494}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3477, file: !245, line: 159, baseType: !377, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3477, file: !245, line: 160, baseType: !377, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3477, file: !245, line: 161, baseType: !54, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3477, file: !245, line: 162, baseType: !54, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3477, file: !245, line: 163, baseType: !37, size: 32, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3477, file: !245, line: 164, baseType: !37, size: 32, offset: 288)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3477, file: !245, line: 165, baseType: !37, size: 32, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3477, file: !245, line: 166, baseType: !37, size: 32, offset: 352)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3477, file: !245, line: 168, baseType: !3488, size: 192, offset: 384)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !245, line: 134, size: 192, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3488, file: !245, line: 135, baseType: !377, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3488, file: !245, line: 136, baseType: !19, size: 32, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3488, file: !245, line: 137, baseType: !37, size: 32, offset: 96)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3488, file: !245, line: 138, baseType: !37, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3477, file: !245, line: 169, baseType: !3488, size: 192, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 171, baseType: !3496, size: 512)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 171, size: 512, elements: !3497)
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3496, file: !245, line: 172, baseType: !444, size: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 174, baseType: !3500, size: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 174, size: 128, elements: !3501)
!3501 = !{!3502}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3500, file: !245, line: 176, baseType: !112, size: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 178, baseType: !3504, size: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 178, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3504, file: !245, line: 179, baseType: !377, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3504, file: !245, line: 180, baseType: !377, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 183, baseType: !3509, size: 320)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 183, size: 320, elements: !3510)
!3510 = !{!3511, !3519}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3509, file: !245, line: 189, baseType: !3512, size: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3513, line: 14, size: 192, elements: !3514)
!3513 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3514 = !{!3515, !3516, !3517, !3518}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3512, file: !3513, line: 15, baseType: !54, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3512, file: !3513, line: 16, baseType: !54, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3512, file: !3513, line: 17, baseType: !98, size: 8, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3512, file: !3513, line: 18, baseType: !98, size: 8, offset: 136)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3509, file: !245, line: 190, baseType: !3520, size: 128, offset: 192)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3521, line: 21, size: 128, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3522 = !{!3523, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3520, file: !3521, line: 22, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3521, line: 17, size: 64, elements: !3525)
!3525 = !{!3526}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3524, file: !3521, line: 18, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3520, file: !3521, line: 23, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !245, line: 193, baseType: !3531, size: 192)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3474, file: !245, line: 193, size: 192, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3531, file: !245, line: 194, baseType: !98, size: 8)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3531, file: !245, line: 195, baseType: !98, size: 8, offset: 8)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3531, file: !245, line: 196, baseType: !108, size: 16, offset: 16)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3531, file: !245, line: 197, baseType: !377, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3531, file: !245, line: 198, baseType: !377, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3471, file: !245, line: 205, baseType: !309, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3471, file: !245, line: 211, baseType: !35, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3471, file: !245, line: 214, baseType: !54, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3471, file: !245, line: 223, baseType: !37, size: 32, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3471, file: !245, line: 229, baseType: !3374, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3471, file: !245, line: 234, baseType: !377, size: 64, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !245, line: 236, baseType: !3545, size: 128, offset: 1152)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3471, file: !245, line: 236, size: 128, elements: !3546)
!3546 = !{!3547, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3545, file: !245, line: 237, baseType: !3548, size: 128)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !245, line: 237, size: 128, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3548, file: !245, line: 241, baseType: !377, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3548, file: !245, line: 249, baseType: !3374, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3545, file: !245, line: 251, baseType: !3553, size: 128)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !245, line: 251, size: 128, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3553, file: !245, line: 252, baseType: !377, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3553, file: !245, line: 253, baseType: !377, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3471, file: !245, line: 261, baseType: !377, size: 64, offset: 1280)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3471, file: !245, line: 262, baseType: !377, size: 64, offset: 1344)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3471, file: !245, line: 268, baseType: !377, size: 64, offset: 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3471, file: !245, line: 269, baseType: !377, size: 64, offset: 1472)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2836, file: !245, line: 738, baseType: !3223, size: 64, offset: 4416)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2836, file: !245, line: 744, baseType: !3271, size: 64, offset: 4480)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2836, file: !245, line: 745, baseType: !675, size: 64, offset: 4544)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2836, file: !245, line: 751, baseType: !677, size: 64, offset: 4608)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2836, file: !245, line: 752, baseType: !677, size: 64, offset: 4672)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2836, file: !245, line: 757, baseType: !682, size: 256, offset: 4736)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2836, file: !245, line: 758, baseType: !112, size: 128, offset: 4992)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2836, file: !245, line: 759, baseType: !2835, size: 64, offset: 5120)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2836, file: !245, line: 761, baseType: !37, size: 32, offset: 5184)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2836, file: !245, line: 762, baseType: !37, size: 32, offset: 5216)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2836, file: !245, line: 764, baseType: !112, size: 128, offset: 5248)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2836, file: !245, line: 765, baseType: !309, size: 64, offset: 5376)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2836, file: !245, line: 768, baseType: !682, size: 256, offset: 5440)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2836, file: !245, line: 769, baseType: !64, size: 32, offset: 5696)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2836, file: !245, line: 771, baseType: !3345, size: 64, offset: 5760)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2836, file: !245, line: 772, baseType: !112, size: 128, offset: 5824)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2836, file: !245, line: 773, baseType: !54, size: 64, offset: 5952)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2836, file: !245, line: 774, baseType: !37, size: 32, offset: 6016)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2836, file: !245, line: 777, baseType: !69, size: 192, offset: 6080)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2836, file: !245, line: 778, baseType: !3581, size: 64, offset: 6272)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !254, line: 1083, size: 384, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3582, file: !254, line: 1084, baseType: !699, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3582, file: !254, line: 1085, baseType: !37, size: 32, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3582, file: !254, line: 1086, baseType: !37, size: 32, offset: 96)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3582, file: !254, line: 1087, baseType: !3581, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3582, file: !254, line: 1088, baseType: !654, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3582, file: !254, line: 1089, baseType: !662, size: 128, align: 64, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2836, file: !245, line: 781, baseType: !19, size: 32, offset: 6336)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2836, file: !245, line: 782, baseType: !19, size: 32, offset: 6368)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2836, file: !245, line: 783, baseType: !19, size: 32, offset: 6400)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2836, file: !245, line: 784, baseType: !19, size: 32, offset: 6432)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2836, file: !245, line: 785, baseType: !54, size: 64, offset: 6464)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2836, file: !245, line: 786, baseType: !3596, size: 256, offset: 6528)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3597, line: 17, size: 256, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3598 = !{!3599, !3600, !3605}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3596, file: !3597, line: 18, baseType: !334, size: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3596, file: !3597, line: 19, baseType: !3601, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3596, file: !3597, line: 20, baseType: !3606, size: 64, offset: 192)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3607, line: 16, size: 64, elements: !3608)
!3607 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3606, file: !3607, line: 17, baseType: !309, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2836, file: !245, line: 787, baseType: !662, size: 128, align: 64, offset: 6784)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2836, file: !245, line: 788, baseType: !19, size: 32, offset: 6912)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2836, file: !245, line: 789, baseType: !3606, size: 64, offset: 6976)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2836, file: !245, line: 791, baseType: !64, size: 32, offset: 7040)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2836, file: !245, line: 794, baseType: !3615, size: 192, offset: 7104)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !245, line: 579, size: 192, elements: !3616)
!3616 = !{!3617, !3618, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3615, file: !245, line: 580, baseType: !112, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3615, file: !245, line: 581, baseType: !469, size: 32, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3615, file: !245, line: 582, baseType: !19, size: 32, offset: 160)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2836, file: !245, line: 796, baseType: !3621, size: 64, offset: 7296)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !245, line: 585, size: 128, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3622, file: !245, line: 586, baseType: !54, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3622, file: !245, line: 587, baseType: !54, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2836, file: !245, line: 797, baseType: !54, size: 64, offset: 7360)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2836, file: !245, line: 800, baseType: !2835, size: 64, offset: 7424)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2836, file: !245, line: 802, baseType: !3309, size: 64, offset: 7488)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2836, file: !245, line: 803, baseType: !662, size: 128, align: 64, offset: 7552)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2836, file: !245, line: 805, baseType: !750, size: 64, offset: 7680)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2836, file: !245, line: 806, baseType: !377, size: 64, offset: 7744)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2836, file: !245, line: 808, baseType: !677, size: 64, offset: 7808)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2836, file: !245, line: 810, baseType: !3634, size: 64, offset: 7872)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!377}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2836, file: !245, line: 811, baseType: !3638, size: 64, offset: 7936)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !245, line: 605, baseType: !3639)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !2835, !3642, !3747}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !245, line: 1148, size: 2048, align: 512, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3654, !3655, !3656, !3661, !3662, !3669, !3690, !3712, !3722, !3740, !3741, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3643, file: !245, line: 1153, baseType: !377, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3643, file: !245, line: 1154, baseType: !377, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3643, file: !245, line: 1155, baseType: !377, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3643, file: !245, line: 1161, baseType: !377, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3643, file: !245, line: 1165, baseType: !3650, size: 64, offset: 256)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3643, file: !245, line: 1162, size: 64, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3650, file: !245, line: 1163, baseType: !319, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3650, file: !245, line: 1164, baseType: !319, size: 32, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3643, file: !245, line: 1166, baseType: !377, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3643, file: !245, line: 1167, baseType: !377, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3643, file: !245, line: 1171, baseType: !3657, size: 64, offset: 448)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3643, file: !245, line: 1168, size: 64, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3657, file: !245, line: 1169, baseType: !319, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3657, file: !245, line: 1170, baseType: !319, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3643, file: !245, line: 1177, baseType: !377, size: 64, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3643, file: !245, line: 1178, baseType: !3663, size: 64, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !245, line: 67, size: 64, elements: !3665)
!3665 = !{!3666, !3667}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3664, file: !245, line: 68, baseType: !378, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3664, file: !245, line: 69, baseType: !3668, offset: 64)
!3668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, elements: !1071)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3643, file: !245, line: 1179, baseType: !3670, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !245, line: 93, size: 256, elements: !3672)
!3672 = !{!3673, !3689}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3671, file: !245, line: 94, baseType: !3674, size: 224)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !245, line: 83, size: 224, elements: !3675)
!3675 = !{!3676, !3682, !3687, !3688}
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3674, file: !245, line: 84, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3674, file: !245, line: 84, size: 64, elements: !3678)
!3678 = !{!3679, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3677, file: !245, line: 85, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3677, file: !245, line: 86, baseType: !54, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3674, file: !245, line: 88, baseType: !3683, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !245, line: 80, baseType: !3684)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!54, !35, !2136, !54, !54}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3674, file: !245, line: 89, baseType: !35, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3674, file: !245, line: 90, baseType: !319, size: 32, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3671, file: !245, line: 95, baseType: !319, size: 32, offset: 224)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3643, file: !245, line: 1180, baseType: !3691, size: 64, offset: 704)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !245, line: 123, size: 128, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3692, file: !245, line: 124, baseType: !378, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3692, file: !245, line: 125, baseType: !378, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3692, file: !245, line: 126, baseType: !3697, offset: 128)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3698, elements: !1071)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3385, line: 1415, size: 192, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3698, file: !3385, line: 1416, baseType: !378, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3698, file: !3385, line: 1417, baseType: !378, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3698, file: !3385, line: 1418, baseType: !378, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3698, file: !3385, line: 1419, baseType: !378, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3698, file: !3385, line: 1420, baseType: !378, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3698, file: !3385, line: 1421, baseType: !378, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3698, file: !3385, line: 1422, baseType: !378, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3698, file: !3385, line: 1423, baseType: !378, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3698, file: !3385, line: 1424, baseType: !378, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3698, file: !3385, line: 1425, baseType: !378, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3698, file: !3385, line: 1426, baseType: !378, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3698, file: !3385, line: 1427, baseType: !378, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3643, file: !245, line: 1181, baseType: !3713, size: 64, offset: 768)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3385, line: 1430, size: 64, elements: !3714)
!3714 = !{!3715, !3716}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3713, file: !3385, line: 1431, baseType: !378, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !3385, line: 1433, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3385, line: 1433, size: 64, elements: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3717, file: !3385, line: 1434, baseType: !320, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3717, file: !3385, line: 1435, baseType: !109, size: 16, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3717, file: !3385, line: 1436, baseType: !109, size: 16, offset: 48)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3643, file: !245, line: 1182, baseType: !3723, size: 64, offset: 832)
!3723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3385, line: 1267, size: 64, elements: !3724)
!3724 = !{!3725, !3726}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3723, file: !3385, line: 1268, baseType: !378, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3723, file: !3385, line: 1269, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3385, line: 1269, size: 64, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3727, file: !3385, line: 1270, baseType: !378, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3727, file: !3385, line: 1271, baseType: !378, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3727, file: !3385, line: 1272, baseType: !378, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3727, file: !3385, line: 1273, baseType: !378, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3727, file: !3385, line: 1274, baseType: !378, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3727, file: !3385, line: 1275, baseType: !378, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3727, file: !3385, line: 1276, baseType: !378, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3727, file: !3385, line: 1277, baseType: !378, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3727, file: !3385, line: 1278, baseType: !378, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3727, file: !3385, line: 1279, baseType: !378, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3727, file: !3385, line: 1280, baseType: !378, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3643, file: !245, line: 1183, baseType: !377, size: 64, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3643, file: !245, line: 1185, baseType: !3742, size: 128, offset: 960)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3743, line: 7, size: 128, elements: !3744)
!3743 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3742, file: !3743, line: 8, baseType: !378, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3742, file: !3743, line: 9, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3749, line: 103, size: 1344, elements: !3750)
!3749 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3779, !3780, !3781}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3748, file: !3749, line: 109, baseType: !54, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3748, file: !3749, line: 110, baseType: !54, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3748, file: !3749, line: 111, baseType: !54, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3748, file: !3749, line: 112, baseType: !54, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3748, file: !3749, line: 113, baseType: !54, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3748, file: !3749, line: 114, baseType: !54, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3748, file: !3749, line: 117, baseType: !54, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3748, file: !3749, line: 118, baseType: !54, size: 64, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3748, file: !3749, line: 119, baseType: !54, size: 64, offset: 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3748, file: !3749, line: 120, baseType: !54, size: 64, offset: 576)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3748, file: !3749, line: 121, baseType: !54, size: 64, offset: 640)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3748, file: !3749, line: 122, baseType: !54, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3748, file: !3749, line: 123, baseType: !54, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3748, file: !3749, line: 124, baseType: !54, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3748, file: !3749, line: 125, baseType: !54, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3748, file: !3749, line: 139, baseType: !54, size: 64, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3748, file: !3749, line: 142, baseType: !54, size: 64, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !3749, line: 144, baseType: !3769, size: 64, offset: 1088)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3748, file: !3749, line: 144, size: 64, elements: !3770)
!3770 = !{!3771, !3772, !3773}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3769, file: !3749, line: 146, baseType: !108, size: 16)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3769, file: !3749, line: 148, baseType: !377, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3769, file: !3749, line: 150, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3749, line: 59, size: 64, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3774, file: !3749, line: 61, baseType: !377, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3774, file: !3749, line: 63, baseType: !377, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3774, file: !3749, line: 65, baseType: !377, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3748, file: !3749, line: 153, baseType: !54, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3748, file: !3749, line: 154, baseType: !54, size: 64, offset: 1216)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !3748, file: !3749, line: 156, baseType: !3782, size: 64, offset: 1280)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3748, file: !3749, line: 156, size: 64, elements: !3783)
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3782, file: !3749, line: 158, baseType: !108, size: 16)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3782, file: !3749, line: 160, baseType: !377, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3782, file: !3749, line: 162, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3749, line: 69, size: 64, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3787, file: !3749, line: 71, baseType: !377, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3787, file: !3749, line: 73, baseType: !377, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3787, file: !3749, line: 75, baseType: !377, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3787, file: !3749, line: 77, baseType: !377, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3787, file: !3749, line: 80, baseType: !377, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3787, file: !3749, line: 83, baseType: !377, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3787, file: !3749, line: 86, baseType: !377, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3787, file: !3749, line: 88, baseType: !377, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3787, file: !3749, line: 93, baseType: !377, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3787, file: !3749, line: 100, baseType: !377, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3643, file: !245, line: 1186, baseType: !3742, size: 128, offset: 1088)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3643, file: !245, line: 1187, baseType: !377, size: 64, offset: 1216)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3643, file: !245, line: 1189, baseType: !377, size: 64, offset: 1280)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3643, file: !245, line: 1190, baseType: !377, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3643, file: !245, line: 1191, baseType: !377, size: 64, offset: 1408)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3643, file: !245, line: 1192, baseType: !377, size: 64, offset: 1472)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3643, file: !245, line: 1193, baseType: !377, size: 64, offset: 1536)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3643, file: !245, line: 1194, baseType: !377, size: 64, offset: 1600)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3643, file: !245, line: 1195, baseType: !377, size: 64, offset: 1664)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2836, file: !245, line: 812, baseType: !35, size: 64, offset: 8000)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2836, file: !245, line: 820, baseType: !2629, size: 64, offset: 8064)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2836, file: !245, line: 821, baseType: !2816, size: 64, offset: 8128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2836, file: !245, line: 828, baseType: !3812, size: 64, offset: 8192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !245, line: 1046, size: 1664, elements: !3814)
!3814 = !{!3815, !4073}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3813, file: !245, line: 1047, baseType: !3816, size: 1600)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3817, line: 152, size: 1600, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3818 = !{!3819, !3929, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4072}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3816, file: !3817, line: 154, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3817, line: 389, size: 7872, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3842, !3843, !3847, !3848, !3849, !3850, !3851, !3856, !3872, !3873, !3875, !3876, !3877, !3899, !3900, !3901, !3902, !3908, !3909, !3910, !3911, !3912, !3916, !3919, !3920, !3927}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3821, file: !3817, line: 391, baseType: !3816, size: 1600)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3821, file: !3817, line: 393, baseType: !54, size: 64, offset: 1600)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3821, file: !3817, line: 401, baseType: !37, size: 32, offset: 1664)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3821, file: !3817, line: 404, baseType: !37, size: 32, offset: 1696)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3821, file: !3817, line: 417, baseType: !37, size: 32, offset: 1728)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3821, file: !3817, line: 418, baseType: !37, size: 32, offset: 1760)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3821, file: !3817, line: 419, baseType: !37, size: 32, offset: 1792)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3821, file: !3817, line: 432, baseType: !37, size: 32, offset: 1824)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3821, file: !3817, line: 433, baseType: !37, size: 32, offset: 1856)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3821, file: !3817, line: 434, baseType: !37, size: 32, offset: 1888)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3821, file: !3817, line: 436, baseType: !37, size: 32, offset: 1920)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3821, file: !3817, line: 439, baseType: !19, size: 32, offset: 1952)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3821, file: !3817, line: 441, baseType: !2154, size: 64, offset: 1984)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3821, file: !3817, line: 442, baseType: !3837, size: 448, offset: 2048)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3817, line: 138, size: 448, elements: !3838)
!3838 = !{!3839, !3840, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3837, file: !3817, line: 140, baseType: !2154, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3837, file: !3817, line: 141, baseType: !54, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3837, file: !3817, line: 142, baseType: !2549, size: 320, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3821, file: !3817, line: 443, baseType: !3837, size: 448, offset: 2496)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3821, file: !3817, line: 446, baseType: !3844, offset: 2944)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3837, elements: !3845)
!3845 = !{!3846}
!3846 = !DISubrange(count: 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3821, file: !3817, line: 455, baseType: !108, size: 16, offset: 2944)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3821, file: !3817, line: 456, baseType: !108, size: 16, offset: 2960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3821, file: !3817, line: 457, baseType: !108, size: 16, offset: 2976)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3821, file: !3817, line: 458, baseType: !108, size: 16, offset: 2992)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3821, file: !3817, line: 461, baseType: !3852, size: 896, offset: 3008)
!3852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3853, size: 896, elements: !3854)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3854 = !{!3855}
!3855 = !DISubrange(count: 14)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3821, file: !3817, line: 463, baseType: !3857, size: 64, offset: 3904)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3817, line: 537, size: 41664, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3858, file: !3817, line: 538, baseType: !2174, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3858, file: !3817, line: 541, baseType: !19, size: 32, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3858, file: !3817, line: 544, baseType: !37, size: 32, offset: 96)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3858, file: !3817, line: 547, baseType: !112, size: 128, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3858, file: !3817, line: 548, baseType: !662, size: 128, align: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3858, file: !3817, line: 555, baseType: !3821, size: 7872, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3858, file: !3817, line: 558, baseType: !3820, size: 64, offset: 8256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3858, file: !3817, line: 561, baseType: !64, size: 32, offset: 8320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3858, file: !3817, line: 564, baseType: !19, size: 32, offset: 8352)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3858, file: !3817, line: 567, baseType: !2778, size: 32768, offset: 8384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3858, file: !3817, line: 570, baseType: !3871, size: 512, offset: 41152)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !1499)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3821, file: !3817, line: 469, baseType: !112, size: 128, offset: 3968)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3821, file: !3817, line: 478, baseType: !3874, size: 1792, offset: 4096)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1792, elements: !3854)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3821, file: !3817, line: 487, baseType: !3820, size: 64, offset: 5888)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3821, file: !3817, line: 488, baseType: !3820, size: 64, offset: 5952)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3821, file: !3817, line: 491, baseType: !3878, size: 64, offset: 6016)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3817, line: 327, size: 896, elements: !3880)
!3880 = !{!3881, !3884, !3894, !3895, !3896, !3897, !3898}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3879, file: !3817, line: 332, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3883, line: 64, elements: !647)
!3883 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3879, file: !3817, line: 333, baseType: !3885, size: 192)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3817, line: 299, size: 192, elements: !3886)
!3886 = !{!3887}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3885, file: !3817, line: 300, baseType: !3888, size: 192)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3889, line: 17, size: 192, elements: !3890)
!3889 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3888, file: !3889, line: 18, baseType: !377, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3888, file: !3889, line: 19, baseType: !377, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3888, file: !3889, line: 20, baseType: !379, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3879, file: !3817, line: 339, baseType: !3885, size: 192, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3879, file: !3817, line: 347, baseType: !3885, size: 192, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3879, file: !3817, line: 353, baseType: !3885, size: 192, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3879, file: !3817, line: 366, baseType: !3820, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3879, file: !3817, line: 367, baseType: !3820, size: 64, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3821, file: !3817, line: 492, baseType: !112, size: 128, offset: 6080)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3821, file: !3817, line: 495, baseType: !3885, size: 192, offset: 6208)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3821, file: !3817, line: 496, baseType: !3885, size: 192, offset: 6400)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3821, file: !3817, line: 497, baseType: !3903, size: 192, offset: 6592)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !301, line: 324, size: 192, elements: !3904)
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3903, file: !301, line: 326, baseType: !377, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3903, file: !301, line: 327, baseType: !377, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3903, file: !301, line: 328, baseType: !469, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3821, file: !3817, line: 503, baseType: !112, size: 128, offset: 6784)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3821, file: !3817, line: 504, baseType: !682, size: 256, offset: 6912)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3821, file: !3817, line: 507, baseType: !69, size: 192, offset: 7168)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3821, file: !3817, line: 510, baseType: !966, size: 256, offset: 7360)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3821, file: !3817, line: 513, baseType: !3913, size: 64, offset: 7616)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3915, line: 214, elements: !647)
!3915 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3821, file: !3817, line: 516, baseType: !3917, offset: 7680)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3918, line: 76, elements: !647)
!3918 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3821, file: !3817, line: 519, baseType: !64, size: 32, offset: 7680)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3821, file: !3817, line: 522, baseType: !3921, size: 128, offset: 7712)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3817, line: 370, size: 128, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3921, file: !3817, line: 372, baseType: !839, size: 8)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3921, file: !3817, line: 375, baseType: !37, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3921, file: !3817, line: 380, baseType: !37, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3921, file: !3817, line: 386, baseType: !37, size: 32, offset: 96)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3821, file: !3817, line: 529, baseType: !3928, offset: 7872)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3820, elements: !1071)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3816, file: !3817, line: 157, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3817, line: 669, size: 1984, elements: !3932)
!3932 = !{!3933, !3937, !3941, !3945, !3946, !3947, !3948, !3952, !3956, !3957, !3963, !3967, !3968, !3969, !3998, !4002, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4055, !4056}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3931, file: !3817, line: 670, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!3853, !3853}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3931, file: !3817, line: 671, baseType: !3938, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!37, !3853}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3931, file: !3817, line: 672, baseType: !3942, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3853}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3931, file: !3817, line: 673, baseType: !3942, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3931, file: !3817, line: 674, baseType: !3942, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3931, file: !3817, line: 675, baseType: !3942, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3931, file: !3817, line: 676, baseType: !3949, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{null, !3853, !37}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3931, file: !3817, line: 677, baseType: !3953, size: 64, offset: 448)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!37, !2199, !3853}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3931, file: !3817, line: 679, baseType: !3953, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3931, file: !3817, line: 682, baseType: !3958, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!37, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3817, line: 30, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3931, file: !3817, line: 683, baseType: !3964, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3961}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3931, file: !3817, line: 684, baseType: !3964, size: 64, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3931, file: !3817, line: 685, baseType: !2723, size: 64, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3931, file: !3817, line: 686, baseType: !3970, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!37, !309, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3817, line: 209, size: 4736, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3974, file: !3817, line: 215, baseType: !3852, size: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3974, file: !3817, line: 218, baseType: !325, size: 32, offset: 896)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3974, file: !3817, line: 226, baseType: !3973, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3974, file: !3817, line: 229, baseType: !3820, size: 64, offset: 1024)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3974, file: !3817, line: 232, baseType: !37, size: 32, offset: 1088)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3974, file: !3817, line: 241, baseType: !112, size: 128, offset: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3974, file: !3817, line: 242, baseType: !112, size: 128, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3974, file: !3817, line: 243, baseType: !112, size: 128, offset: 1408)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3974, file: !3817, line: 246, baseType: !112, size: 128, offset: 1536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3974, file: !3817, line: 255, baseType: !3874, size: 1792, offset: 1664)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3974, file: !3817, line: 258, baseType: !112, size: 128, offset: 3456)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3974, file: !3817, line: 259, baseType: !112, size: 128, offset: 3584)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3974, file: !3817, line: 265, baseType: !734, size: 128, offset: 3712)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3974, file: !3817, line: 271, baseType: !112, size: 128, offset: 3840)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3974, file: !3817, line: 277, baseType: !112, size: 128, offset: 3968)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3974, file: !3817, line: 278, baseType: !112, size: 128, offset: 4096)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3974, file: !3817, line: 279, baseType: !112, size: 128, offset: 4224)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3974, file: !3817, line: 288, baseType: !3820, size: 64, offset: 4352)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3974, file: !3817, line: 289, baseType: !3820, size: 64, offset: 4416)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3974, file: !3817, line: 290, baseType: !3973, size: 64, offset: 4480)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3974, file: !3817, line: 293, baseType: !839, size: 8, offset: 4544)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3974, file: !3817, line: 296, baseType: !662, size: 128, align: 64, offset: 4608)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3931, file: !3817, line: 688, baseType: !3999, size: 64, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !309, !3973}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3931, file: !3817, line: 689, baseType: !4003, size: 64, offset: 960)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !309}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3931, file: !3817, line: 690, baseType: !4003, size: 64, offset: 1024)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3931, file: !3817, line: 691, baseType: !4003, size: 64, offset: 1088)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3931, file: !3817, line: 692, baseType: !3942, size: 64, offset: 1152)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3931, file: !3817, line: 694, baseType: !839, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3931, file: !3817, line: 707, baseType: !839, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3931, file: !3817, line: 719, baseType: !839, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3931, file: !3817, line: 722, baseType: !37, size: 32, offset: 1248)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3931, file: !3817, line: 723, baseType: !33, size: 64, offset: 1280)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3931, file: !3817, line: 726, baseType: !33, size: 64, offset: 1344)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3931, file: !3817, line: 729, baseType: !3857, size: 64, offset: 1408)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3931, file: !3817, line: 732, baseType: !755, size: 192, offset: 1472)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3931, file: !3817, line: 738, baseType: !112, size: 128, offset: 1664)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3931, file: !3817, line: 744, baseType: !4019, size: 64, offset: 1792)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3817, line: 580, size: 1728, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4031, !4032, !4033, !4037, !4041, !4042, !4043, !4044, !4045, !4049, !4053, !4054}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4020, file: !3817, line: 586, baseType: !3871, size: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4020, file: !3817, line: 587, baseType: !54, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4020, file: !3817, line: 593, baseType: !50, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4020, file: !3817, line: 596, baseType: !19, size: 32, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4020, file: !3817, line: 604, baseType: !19, size: 32, offset: 672)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4020, file: !3817, line: 610, baseType: !3930, size: 64, offset: 704)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4020, file: !3817, line: 611, baseType: !112, size: 128, offset: 768)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4020, file: !3817, line: 612, baseType: !4030, size: 64, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4020, file: !3817, line: 614, baseType: !2190, size: 64, offset: 960)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4020, file: !3817, line: 615, baseType: !2248, size: 64, offset: 1024)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4020, file: !3817, line: 621, baseType: !4034, size: 64, offset: 1088)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!377, !3853, !4019}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4020, file: !3817, line: 625, baseType: !4038, size: 64, offset: 1152)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!388, !3853, !4019}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4020, file: !3817, line: 628, baseType: !2229, size: 64, offset: 1216)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4020, file: !3817, line: 631, baseType: !2217, size: 64, offset: 1280)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4020, file: !3817, line: 632, baseType: !2225, size: 64, offset: 1344)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4020, file: !3817, line: 633, baseType: !2221, size: 64, offset: 1408)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4020, file: !3817, line: 640, baseType: !4046, size: 64, offset: 1472)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!37, !3853, !4019, !377}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4020, file: !3817, line: 645, baseType: !4050, size: 64, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!37, !3853, !4019, !388}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4020, file: !3817, line: 654, baseType: !2256, size: 64, offset: 1600)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4020, file: !3817, line: 657, baseType: !2263, size: 64, offset: 1664)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3931, file: !3817, line: 745, baseType: !4019, size: 64, offset: 1856)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3931, file: !3817, line: 754, baseType: !19, size: 32, offset: 1920)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3816, file: !3817, line: 160, baseType: !1644, size: 128, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3816, file: !3817, line: 163, baseType: !112, size: 128, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3816, file: !3817, line: 164, baseType: !112, size: 128, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3816, file: !3817, line: 167, baseType: !112, size: 128, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3816, file: !3817, line: 173, baseType: !37, size: 32, offset: 640)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3816, file: !3817, line: 175, baseType: !19, size: 32, offset: 672)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3816, file: !3817, line: 183, baseType: !377, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3816, file: !3817, line: 189, baseType: !64, size: 32, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3816, file: !3817, line: 192, baseType: !966, size: 256, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3816, file: !3817, line: 193, baseType: !4067, size: 448, offset: 1088)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !967, line: 120, size: 448, elements: !4068)
!4068 = !{!4069, !4070, !4071}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4067, file: !967, line: 121, baseType: !966, size: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4067, file: !967, line: 122, baseType: !662, size: 128, align: 64, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4067, file: !967, line: 125, baseType: !2611, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3816, file: !3817, line: 199, baseType: !3853, size: 64, offset: 1536)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3813, file: !245, line: 1048, baseType: !4074, size: 64, offset: 1600)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !245, line: 1039, size: 256, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4075, file: !245, line: 1040, baseType: !377, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4075, file: !245, line: 1041, baseType: !377, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4075, file: !245, line: 1042, baseType: !377, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4075, file: !245, line: 1043, baseType: !37, size: 32, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2836, file: !245, line: 832, baseType: !35, size: 64, offset: 8256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2836, file: !245, line: 834, baseType: !112, size: 128, offset: 8320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2836, file: !245, line: 842, baseType: !320, size: 32, offset: 8448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1444, file: !131, line: 524, baseType: !19, size: 32, offset: 8320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1444, file: !131, line: 525, baseType: !4086, size: 64, offset: 8384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4089, line: 28, size: 192, elements: !4090)
!4089 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4090 = !{!4091, !4092, !4093}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4088, file: !4089, line: 29, baseType: !33, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4088, file: !4089, line: 30, baseType: !33, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4088, file: !4089, line: 31, baseType: !54, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1444, file: !131, line: 526, baseType: !19, size: 32, offset: 8448)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1444, file: !131, line: 533, baseType: !35, size: 64, offset: 8512)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1444, file: !131, line: 534, baseType: !19, size: 32, offset: 8576)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1444, file: !131, line: 535, baseType: !307, size: 64, offset: 8640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1444, file: !131, line: 536, baseType: !19, size: 32, offset: 8704)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1444, file: !131, line: 539, baseType: !37, size: 32, offset: 8736)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1444, file: !131, line: 540, baseType: !2712, size: 64, offset: 8768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1444, file: !131, line: 563, baseType: !112, size: 128, offset: 8832)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1444, file: !131, line: 565, baseType: !112, size: 128, offset: 8960)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1444, file: !131, line: 568, baseType: !2723, size: 64, offset: 9088)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1444, file: !131, line: 570, baseType: !64, size: 32, offset: 9152)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1420, file: !254, line: 2382, baseType: !1419, size: 64, offset: 448)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1420, file: !254, line: 2383, baseType: !730, size: 64, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1420, file: !254, line: 2385, baseType: !4108, offset: 576)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2578, line: 206, elements: !647)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1420, file: !254, line: 2386, baseType: !4108, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1420, file: !254, line: 2387, baseType: !4108, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1420, file: !254, line: 2388, baseType: !4112, offset: 576)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4108, elements: !718)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1420, file: !254, line: 2390, baseType: !4108, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1420, file: !254, line: 2391, baseType: !4108, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1420, file: !254, line: 2392, baseType: !4108, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1420, file: !254, line: 2393, baseType: !4108, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1411, file: !254, line: 1197, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !254, line: 2057, size: 1664, elements: !4121)
!4121 = !{!4122, !4126, !4130, !4131, !4135, !4139, !4143, !4144, !4145, !4149, !4153, !4157, !4158, !4159, !4165, !4169, !4170, !4174, !4175, !4176, !4177, !4181, !4185, !4232, !4247, !4248}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4120, file: !254, line: 2058, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!1209, !1410}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4120, file: !254, line: 2059, baseType: !4127, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !1209}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4120, file: !254, line: 2060, baseType: !4127, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4120, file: !254, line: 2062, baseType: !4132, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !1209, !37}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4120, file: !254, line: 2063, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!37, !1209, !1867}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4120, file: !254, line: 2064, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!37, !1209}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4120, file: !254, line: 2065, baseType: !4127, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4120, file: !254, line: 2066, baseType: !1439, size: 64, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4120, file: !254, line: 2067, baseType: !4146, size: 64, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!37, !1410, !37}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4120, file: !254, line: 2068, baseType: !4150, size: 64, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!37, !1410, !253}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4120, file: !254, line: 2069, baseType: !4154, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!37, !1410}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4120, file: !254, line: 2070, baseType: !4150, size: 64, offset: 704)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4120, file: !254, line: 2071, baseType: !4154, size: 64, offset: 768)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4120, file: !254, line: 2072, baseType: !4160, size: 64, offset: 832)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!37, !1174, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !254, line: 62, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4120, file: !254, line: 2073, baseType: !4166, size: 64, offset: 896)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!37, !1410, !2448, !927}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4120, file: !254, line: 2074, baseType: !1439, size: 64, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4120, file: !254, line: 2076, baseType: !4171, size: 64, offset: 1024)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!37, !2199, !1174}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4120, file: !254, line: 2077, baseType: !4171, size: 64, offset: 1088)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4120, file: !254, line: 2078, baseType: !4171, size: 64, offset: 1152)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4120, file: !254, line: 2079, baseType: !4171, size: 64, offset: 1216)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4120, file: !254, line: 2081, baseType: !4178, size: 64, offset: 1280)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!1361, !1410, !37, !927, !50, !56}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4120, file: !254, line: 2082, baseType: !4182, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!1361, !1410, !37, !33, !50, !56}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4120, file: !254, line: 2083, baseType: !4186, size: 64, offset: 1408)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!4189, !1209}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !259, line: 296, size: 1664, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4217, !4218, !4219}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4191, file: !259, line: 297, baseType: !734, size: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4191, file: !259, line: 298, baseType: !112, size: 128, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4191, file: !259, line: 299, baseType: !112, size: 128, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4191, file: !259, line: 300, baseType: !112, size: 128, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4191, file: !259, line: 301, baseType: !682, size: 256, offset: 512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4191, file: !259, line: 302, baseType: !74, size: 32, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4191, file: !259, line: 303, baseType: !64, size: 32, offset: 800)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4191, file: !259, line: 304, baseType: !1410, size: 64, offset: 832)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4191, file: !259, line: 305, baseType: !4202, size: 64, offset: 896)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !259, line: 68, size: 64, elements: !4203)
!4203 = !{!4204, !4216}
!4204 = !DIDerivedType(tag: DW_TAG_member, scope: !4202, file: !259, line: 69, baseType: !4205, size: 32)
!4205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4202, file: !259, line: 69, size: 32, elements: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4205, file: !259, line: 70, baseType: !812, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4205, file: !259, line: 71, baseType: !820, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4205, file: !259, line: 72, baseType: !4210, size: 32)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4211, line: 24, baseType: !4212)
!4211 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4211, line: 22, size: 32, elements: !4213)
!4213 = !{!4214}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4212, file: !4211, line: 23, baseType: !4215, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4211, line: 20, baseType: !818)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4202, file: !259, line: 74, baseType: !258, size: 32, offset: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4191, file: !259, line: 306, baseType: !56, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4191, file: !259, line: 307, baseType: !54, size: 64, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4191, file: !259, line: 308, baseType: !4220, size: 576, offset: 1088)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !259, line: 205, size: 576, elements: !4221)
!4221 = !{!4222, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4220, file: !259, line: 206, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !259, line: 66, baseType: !58)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4220, file: !259, line: 207, baseType: !4223, size: 64, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4220, file: !259, line: 208, baseType: !4223, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4220, file: !259, line: 209, baseType: !4223, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4220, file: !259, line: 210, baseType: !4223, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4220, file: !259, line: 211, baseType: !4223, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4220, file: !259, line: 212, baseType: !4223, size: 64, offset: 384)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4220, file: !259, line: 213, baseType: !875, size: 64, offset: 448)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4220, file: !259, line: 214, baseType: !875, size: 64, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4120, file: !254, line: 2085, baseType: !4233, size: 64, offset: 1472)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!1064, !1410, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4238, line: 15, size: 256, elements: !4239)
!4238 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4239 = !{!4240, !4241, !4242, !4243, !4244}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4237, file: !4238, line: 16, baseType: !764, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4237, file: !4238, line: 19, baseType: !37, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4237, file: !4238, line: 26, baseType: !54, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4237, file: !4238, line: 33, baseType: !54, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4237, file: !4238, line: 36, baseType: !4245, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !146, line: 33, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4120, file: !254, line: 2087, baseType: !4233, size: 64, offset: 1536)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4120, file: !254, line: 2089, baseType: !1439, size: 64, offset: 1600)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1411, file: !254, line: 1198, baseType: !4250, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !259, line: 324, size: 704, elements: !4253)
!4253 = !{!4254, !4258, !4262, !4266, !4267, !4268, !4269, !4270, !4275, !4280, !4284}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4252, file: !259, line: 325, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!37, !4190}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4252, file: !259, line: 326, baseType: !4259, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4190, !1410, !37}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4252, file: !259, line: 327, baseType: !4263, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !4190}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4252, file: !259, line: 328, baseType: !4255, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4252, file: !259, line: 329, baseType: !4255, size: 64, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4252, file: !259, line: 330, baseType: !4255, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4252, file: !259, line: 331, baseType: !4146, size: 64, offset: 384)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4252, file: !259, line: 334, baseType: !4271, size: 64, offset: 448)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4274, !1209}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4252, file: !259, line: 335, baseType: !4276, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!37, !1209, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4252, file: !259, line: 337, baseType: !4281, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!37, !1209, !4274}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4252, file: !259, line: 339, baseType: !4285, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!37, !1410, !4288}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1411, file: !254, line: 1199, baseType: !4290, size: 64, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4292)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !259, line: 430, size: 704, elements: !4293)
!4293 = !{!4294, !4298, !4299, !4303, !4304, !4305, !4320, !4343, !4347, !4348, !4371}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4292, file: !259, line: 431, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!37, !1410, !37, !37, !1330}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4292, file: !259, line: 432, baseType: !4146, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4292, file: !259, line: 433, baseType: !4300, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!37, !1410, !19}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4292, file: !259, line: 434, baseType: !4300, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4292, file: !259, line: 435, baseType: !4146, size: 64, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4292, file: !259, line: 436, baseType: !4306, size: 64, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!37, !1410, !37, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !259, line: 417, size: 256, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4310, file: !259, line: 418, baseType: !37, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4310, file: !259, line: 419, baseType: !19, size: 32, offset: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4310, file: !259, line: 420, baseType: !19, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4310, file: !259, line: 422, baseType: !19, size: 32, offset: 96)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4310, file: !259, line: 423, baseType: !19, size: 32, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4310, file: !259, line: 424, baseType: !19, size: 32, offset: 160)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4310, file: !259, line: 425, baseType: !19, size: 32, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4310, file: !259, line: 426, baseType: !19, size: 32, offset: 224)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4292, file: !259, line: 437, baseType: !4321, size: 64, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!37, !1410, !4202, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !259, line: 345, size: 960, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4325, file: !259, line: 346, baseType: !37, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4325, file: !259, line: 347, baseType: !377, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4325, file: !259, line: 348, baseType: !377, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4325, file: !259, line: 349, baseType: !377, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4325, file: !259, line: 350, baseType: !377, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4325, file: !259, line: 351, baseType: !377, size: 64, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4325, file: !259, line: 352, baseType: !377, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4325, file: !259, line: 353, baseType: !388, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4325, file: !259, line: 355, baseType: !388, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4325, file: !259, line: 356, baseType: !37, size: 32, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4325, file: !259, line: 357, baseType: !37, size: 32, offset: 608)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4325, file: !259, line: 358, baseType: !377, size: 64, offset: 640)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4325, file: !259, line: 359, baseType: !377, size: 64, offset: 704)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4325, file: !259, line: 360, baseType: !377, size: 64, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4325, file: !259, line: 361, baseType: !388, size: 64, offset: 832)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4325, file: !259, line: 362, baseType: !37, size: 32, offset: 896)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4292, file: !259, line: 438, baseType: !4344, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!37, !1410, !4288, !4324}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4292, file: !259, line: 440, baseType: !4321, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4292, file: !259, line: 441, baseType: !4349, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!37, !1410, !4352}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !259, line: 411, size: 1408, elements: !4354)
!4354 = !{!4355, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4353, file: !259, line: 412, baseType: !19, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4353, file: !259, line: 413, baseType: !4357, size: 1344, offset: 64)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4358, size: 1344, elements: !718)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !259, line: 397, size: 448, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4370}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4358, file: !259, line: 398, baseType: !19, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4358, file: !259, line: 399, baseType: !19, size: 32, offset: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4358, file: !259, line: 401, baseType: !19, size: 32, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4358, file: !259, line: 402, baseType: !19, size: 32, offset: 96)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4358, file: !259, line: 403, baseType: !19, size: 32, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4358, file: !259, line: 404, baseType: !19, size: 32, offset: 160)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4358, file: !259, line: 405, baseType: !19, size: 32, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4358, file: !259, line: 406, baseType: !379, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4358, file: !259, line: 407, baseType: !4369, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !40, line: 132, baseType: !377)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4358, file: !259, line: 408, baseType: !4369, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4292, file: !259, line: 442, baseType: !4300, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1411, file: !254, line: 1200, baseType: !4373, size: 64, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !254, line: 54, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1411, file: !254, line: 1201, baseType: !54, size: 64, offset: 640)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1411, file: !254, line: 1202, baseType: !54, size: 64, offset: 704)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1411, file: !254, line: 1203, baseType: !54, size: 64, offset: 768)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1411, file: !254, line: 1204, baseType: !1174, size: 64, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1411, file: !254, line: 1205, baseType: !859, size: 320, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1411, file: !254, line: 1206, baseType: !37, size: 32, offset: 1216)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1411, file: !254, line: 1207, baseType: !64, size: 32, offset: 1248)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1411, file: !254, line: 1209, baseType: !35, size: 64, offset: 1280)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1411, file: !254, line: 1211, baseType: !4385, size: 64, offset: 1344)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4388)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !254, line: 1211, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1411, file: !254, line: 1223, baseType: !4390, size: 64, offset: 1408)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1186, line: 34, size: 64, elements: !4391)
!4391 = !{!4392}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4390, file: !1186, line: 35, baseType: !1189, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1411, file: !254, line: 1224, baseType: !112, size: 128, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1411, file: !254, line: 1225, baseType: !4395, size: 64, offset: 1600)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !254, line: 1225, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1411, file: !254, line: 1226, baseType: !4398, size: 64, offset: 1664)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !254, line: 1226, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1411, file: !254, line: 1227, baseType: !4401, size: 64, offset: 1728)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !254, line: 50, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1411, file: !254, line: 1228, baseType: !4404, size: 64, offset: 1792)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !254, line: 1228, flags: DIFlagFwdDecl)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1411, file: !254, line: 1229, baseType: !734, size: 128, offset: 1856)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1411, file: !254, line: 1230, baseType: !19, size: 32, offset: 1984)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1411, file: !254, line: 1231, baseType: !4409, size: 2496, offset: 2048)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !259, line: 521, size: 2496, elements: !4410)
!4410 = !{!4411, !4412, !4413, !4415, !4447}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4409, file: !259, line: 522, baseType: !19, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4409, file: !259, line: 523, baseType: !859, size: 320, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4409, file: !259, line: 524, baseType: !4414, size: 192, offset: 384)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 192, elements: !718)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4409, file: !259, line: 525, baseType: !4416, size: 1728, offset: 576)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4417, size: 1728, elements: !718)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !259, line: 222, size: 576, elements: !4418)
!4418 = !{!4419, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4417, file: !259, line: 223, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !259, line: 445, size: 256, elements: !4422)
!4422 = !{!4423, !4424, !4437, !4438}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4421, file: !259, line: 446, baseType: !37, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4421, file: !259, line: 447, baseType: !4425, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !259, line: 312, size: 512, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4427, file: !259, line: 313, baseType: !4146, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4427, file: !259, line: 314, baseType: !4146, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4427, file: !259, line: 315, baseType: !4146, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4427, file: !259, line: 316, baseType: !4146, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4427, file: !259, line: 317, baseType: !4255, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4427, file: !259, line: 318, baseType: !4255, size: 64, offset: 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4427, file: !259, line: 319, baseType: !4255, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4427, file: !259, line: 320, baseType: !4285, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4421, file: !259, line: 448, baseType: !1443, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4421, file: !259, line: 449, baseType: !4420, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4417, file: !259, line: 224, baseType: !37, size: 32, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4417, file: !259, line: 226, baseType: !112, size: 128, offset: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4417, file: !259, line: 227, baseType: !54, size: 64, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4417, file: !259, line: 228, baseType: !19, size: 32, offset: 320)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4417, file: !259, line: 229, baseType: !19, size: 32, offset: 352)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4417, file: !259, line: 230, baseType: !4223, size: 64, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4417, file: !259, line: 231, baseType: !4223, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4417, file: !259, line: 232, baseType: !35, size: 64, offset: 512)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4409, file: !259, line: 526, baseType: !4448, size: 192, offset: 2304)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4425, size: 192, elements: !718)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1411, file: !254, line: 1233, baseType: !4450, size: 2368, offset: 4544)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !254, line: 1184, size: 2368, elements: !4451)
!4451 = !{!4452, !4453, !4454}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4450, file: !254, line: 1185, baseType: !41, size: 16)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4450, file: !254, line: 1186, baseType: !41, size: 16, offset: 16)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4450, file: !254, line: 1187, baseType: !4455, size: 2304, offset: 64)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4456, size: 2304, elements: !718)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4457, line: 12, size: 768, elements: !4458)
!4457 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4458 = !{!4459, !4467, !4468, !4469, !4470}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4456, file: !4457, line: 13, baseType: !4460, size: 384)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4461, line: 17, size: 384, elements: !4462)
!4461 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4460, file: !4461, line: 18, baseType: !37, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4460, file: !4461, line: 19, baseType: !37, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4460, file: !4461, line: 20, baseType: !69, size: 192, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4460, file: !4461, line: 22, baseType: !662, size: 128, align: 64, offset: 256)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4456, file: !4457, line: 14, baseType: !2400, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4456, file: !4457, line: 15, baseType: !3606, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4456, file: !4457, line: 16, baseType: !69, size: 192, offset: 512)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4456, file: !4457, line: 17, baseType: !64, size: 32, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1411, file: !254, line: 1240, baseType: !35, size: 64, offset: 6912)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1411, file: !254, line: 1243, baseType: !319, size: 32, offset: 6976)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1411, file: !254, line: 1245, baseType: !875, size: 64, offset: 7040)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1411, file: !254, line: 1246, baseType: !875, size: 64, offset: 7104)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1411, file: !254, line: 1248, baseType: !320, size: 32, offset: 7168)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1411, file: !254, line: 1249, baseType: !4477, size: 64, offset: 7232)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !254, line: 634, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1411, file: !254, line: 1252, baseType: !4480, size: 256, offset: 7296)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !4481)
!4481 = !{!4482}
!4482 = !DISubrange(count: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1411, file: !254, line: 1253, baseType: !4484, size: 128, offset: 7552)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4485, line: 21, baseType: !4486)
!4485 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4485, line: 19, size: 128, elements: !4487)
!4487 = !{!4488}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4486, file: !4485, line: 20, baseType: !4489, size: 128)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !4490)
!4490 = !{!4491}
!4491 = !DISubrange(count: 16)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1411, file: !254, line: 1255, baseType: !19, size: 32, offset: 7680)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1411, file: !254, line: 1261, baseType: !682, size: 256, offset: 7744)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1411, file: !254, line: 1267, baseType: !33, size: 64, offset: 8000)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1411, file: !254, line: 1269, baseType: !4496, size: 64, offset: 8064)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1176, line: 128, size: 1024, align: 512, elements: !4499)
!4499 = !{!4500, !4504, !4505, !4512, !4518, !4522, !4526, !4530, !4531, !4535, !4539, !4544, !4548}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4498, file: !1176, line: 129, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!37, !1174, !19}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4498, file: !1176, line: 130, baseType: !4501, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4498, file: !1176, line: 131, baseType: !4506, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!37, !4509, !4511}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4498, file: !1176, line: 132, baseType: !4513, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!37, !4509, !19, !33, !4516}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4498, file: !1176, line: 134, baseType: !4519, size: 64, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!37, !4509}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4498, file: !1176, line: 135, baseType: !4523, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!37, !1174}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4498, file: !1176, line: 136, baseType: !4527, size: 64, offset: 384)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{null, !1174}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4498, file: !1176, line: 137, baseType: !4527, size: 64, offset: 448)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4498, file: !1176, line: 138, baseType: !4532, size: 64, offset: 512)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{null, !1174, !1209}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4498, file: !1176, line: 139, baseType: !4536, size: 64, offset: 576)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!927, !1174, !927, !37}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4498, file: !1176, line: 140, baseType: !4540, size: 64, offset: 640)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!1169, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4498, file: !1176, line: 141, baseType: !4545, size: 64, offset: 704)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!37, !1330, !839}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4498, file: !1176, line: 142, baseType: !4549, size: 64, offset: 768)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!1174, !1174, !4552}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1411, file: !254, line: 1271, baseType: !4555, size: 448, offset: 8128)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4238, line: 63, size: 448, elements: !4556)
!4556 = !{!4557, !4562, !4563, !4564, !4565, !4566, !4567}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4555, file: !4238, line: 64, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!54, !4561, !4236}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4555, file: !4238, line: 66, baseType: !4558, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4555, file: !4238, line: 69, baseType: !1064, size: 64, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4555, file: !4238, line: 70, baseType: !37, size: 32, offset: 192)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4555, file: !4238, line: 71, baseType: !19, size: 32, offset: 224)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4555, file: !4238, line: 74, baseType: !112, size: 128, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4555, file: !4238, line: 85, baseType: !4568, size: 64, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1411, file: !254, line: 1274, baseType: !675, size: 64, offset: 8576)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1411, file: !254, line: 1280, baseType: !675, size: 64, offset: 8640)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1411, file: !254, line: 1283, baseType: !37, size: 32, offset: 8704)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1411, file: !254, line: 1286, baseType: !2097, size: 32, offset: 8736)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1411, file: !254, line: 1289, baseType: !2611, size: 64, offset: 8768)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1411, file: !254, line: 1290, baseType: !730, size: 64, offset: 8832)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1411, file: !254, line: 1297, baseType: !781, size: 64, offset: 8896)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1411, file: !254, line: 1304, baseType: !4577, size: 64, offset: 8960)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4578, line: 49, size: 64, elements: !4579)
!4578 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4579 = !{!4580}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4577, file: !4578, line: 50, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4578, line: 41, size: 512, align: 512, elements: !4583)
!4583 = !{!4584, !4585, !4590}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4582, file: !4578, line: 43, baseType: !74, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4582, file: !4578, line: 45, baseType: !4586, size: 192, offset: 64)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4578, line: 29, size: 192, elements: !4587)
!4587 = !{!4588, !4589}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4586, file: !4578, line: 30, baseType: !112, size: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4586, file: !4578, line: 32, baseType: !1064, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4582, file: !4578, line: 46, baseType: !1064, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1411, file: !254, line: 1305, baseType: !4577, size: 64, offset: 9024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1411, file: !254, line: 1306, baseType: !662, size: 128, align: 64, offset: 9088)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1411, file: !254, line: 1307, baseType: !966, size: 256, offset: 9216)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1411, file: !254, line: 1309, baseType: !682, size: 256, offset: 9472)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1411, file: !254, line: 1314, baseType: !37, size: 32, offset: 9728)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1411, file: !254, line: 1317, baseType: !74, size: 32, align: 512, offset: 10240)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1411, file: !254, line: 1318, baseType: !112, size: 128, offset: 10304)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1411, file: !254, line: 1320, baseType: !74, size: 32, offset: 10432)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1411, file: !254, line: 1321, baseType: !112, size: 128, offset: 10496)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1210, file: !254, line: 656, baseType: !1560, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1210, file: !254, line: 659, baseType: !35, size: 64, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1210, file: !254, line: 663, baseType: !54, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !254, line: 671, baseType: !4604, size: 32, offset: 704)
!4604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !254, line: 671, size: 32, elements: !4605)
!4605 = !{!4606, !4607}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4604, file: !254, line: 672, baseType: !2659, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4604, file: !254, line: 673, baseType: !19, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1210, file: !254, line: 675, baseType: !1283, size: 32, offset: 736)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1210, file: !254, line: 676, baseType: !56, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1210, file: !254, line: 677, baseType: !1319, size: 128, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1210, file: !254, line: 678, baseType: !1319, size: 128, offset: 960)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1210, file: !254, line: 679, baseType: !1319, size: 128, offset: 1088)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1210, file: !254, line: 680, baseType: !74, size: 32, offset: 1216)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1210, file: !254, line: 681, baseType: !41, size: 16, offset: 1248)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1210, file: !254, line: 682, baseType: !98, size: 8, offset: 1264)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1210, file: !254, line: 683, baseType: !98, size: 8, offset: 1272)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1210, file: !254, line: 684, baseType: !4369, size: 64, offset: 1280)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1210, file: !254, line: 691, baseType: !54, size: 64, offset: 1344)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1210, file: !254, line: 692, baseType: !859, size: 320, offset: 1408)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1210, file: !254, line: 694, baseType: !54, size: 64, offset: 1728)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1210, file: !254, line: 695, baseType: !54, size: 64, offset: 1792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1210, file: !254, line: 697, baseType: !734, size: 128, offset: 1856)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1210, file: !254, line: 698, baseType: !112, size: 128, offset: 1984)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1210, file: !254, line: 707, baseType: !112, size: 128, offset: 2112)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1210, file: !254, line: 708, baseType: !112, size: 128, offset: 2240)
!4626 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !254, line: 709, baseType: !4627, size: 128, offset: 2368)
!4627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !254, line: 709, size: 128, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4627, file: !254, line: 710, baseType: !730, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4627, file: !254, line: 711, baseType: !662, size: 128, align: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1210, file: !254, line: 713, baseType: !677, size: 64, offset: 2496)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1210, file: !254, line: 714, baseType: !677, size: 64, offset: 2560)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1210, file: !254, line: 715, baseType: !64, size: 32, offset: 2624)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1210, file: !254, line: 716, baseType: !64, size: 32, offset: 2656)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1210, file: !254, line: 717, baseType: !64, size: 32, offset: 2688)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1210, file: !254, line: 719, baseType: !64, size: 32, offset: 2720)
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !254, line: 721, baseType: !4638, size: 64, offset: 2752)
!4638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !254, line: 721, size: 64, elements: !4639)
!4639 = !{!4640, !4766}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4638, file: !254, line: 722, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !254, line: 1914, size: 2112, elements: !4644)
!4644 = !{!4645, !4646, !4650, !4654, !4658, !4659, !4660, !4666, !4679, !4683, !4687, !4688, !4692, !4693, !4697, !4702, !4703, !4707, !4711, !4717, !4718, !4722, !4723, !4729, !4733, !4734, !4739, !4743, !4747, !4751, !4755, !4756, !4762}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4643, file: !254, line: 1915, baseType: !1443, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4643, file: !254, line: 1916, baseType: !4647, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!56, !654, !56, !37}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4643, file: !254, line: 1917, baseType: !4651, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!1361, !654, !927, !50, !55}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4643, file: !254, line: 1918, baseType: !4655, size: 64, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!1361, !654, !33, !50, !55}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4643, file: !254, line: 1919, baseType: !1981, size: 64, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4643, file: !254, line: 1920, baseType: !1981, size: 64, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4643, file: !254, line: 1921, baseType: !4661, size: 64, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!37, !1984, !4664, !19}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !254, line: 53, flags: DIFlagFwdDecl)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4643, file: !254, line: 1923, baseType: !4667, size: 64, offset: 448)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!37, !654, !4670}
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !254, line: 1858, size: 128, elements: !4672)
!4672 = !{!4673, !4678}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4671, file: !254, line: 1859, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !254, line: 1855, baseType: !4675)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!839, !4670, !33, !37, !56, !377, !19}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4671, file: !254, line: 1860, baseType: !56, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4643, file: !254, line: 1924, baseType: !4680, size: 64, offset: 512)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!2266, !654, !2268}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4643, file: !254, line: 1925, baseType: !4684, size: 64, offset: 576)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!1064, !654, !19, !54}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4643, file: !254, line: 1926, baseType: !4684, size: 64, offset: 640)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4643, file: !254, line: 1927, baseType: !4689, size: 64, offset: 704)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!37, !654, !1690}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4643, file: !254, line: 1928, baseType: !54, size: 64, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4643, file: !254, line: 1929, baseType: !4694, size: 64, offset: 832)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!37, !1209, !654}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4643, file: !254, line: 1930, baseType: !4698, size: 64, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!37, !654, !4701}
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !254, line: 1061, baseType: !35)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4643, file: !254, line: 1931, baseType: !4694, size: 64, offset: 960)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4643, file: !254, line: 1932, baseType: !4704, size: 64, offset: 1024)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!37, !654, !56, !56, !37}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4643, file: !254, line: 1933, baseType: !4708, size: 64, offset: 1088)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!37, !37, !654, !37}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4643, file: !254, line: 1934, baseType: !4712, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!37, !654, !37, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !254, line: 1063, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4643, file: !254, line: 1935, baseType: !651, size: 64, offset: 1216)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4643, file: !254, line: 1936, baseType: !4719, size: 64, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!37, !37}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4643, file: !254, line: 1937, baseType: !4712, size: 64, offset: 1344)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4643, file: !254, line: 1938, baseType: !4724, size: 64, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!1361, !4727, !654, !55, !50, !19}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !301, line: 59, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4643, file: !254, line: 1939, baseType: !4730, size: 64, offset: 1472)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!1361, !654, !55, !4727, !50, !19}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4643, file: !254, line: 1940, baseType: !2087, size: 64, offset: 1536)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4643, file: !254, line: 1941, baseType: !4735, size: 64, offset: 1600)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!37, !654, !37, !4738, !1958}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4643, file: !254, line: 1942, baseType: !4740, size: 64, offset: 1664)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!1064, !654, !37, !56, !56}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4643, file: !254, line: 1944, baseType: !4744, size: 64, offset: 1728)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !2199, !654}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4643, file: !254, line: 1948, baseType: !4748, size: 64, offset: 1792)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!1361, !654, !56, !654, !56, !50, !19}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4643, file: !254, line: 1950, baseType: !4752, size: 64, offset: 1856)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!56, !654, !56, !654, !56, !56, !19}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4643, file: !254, line: 1953, baseType: !4704, size: 64, offset: 1920)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4643, file: !254, line: 1954, baseType: !4757, size: 64, offset: 1984)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!37, !4760, !19}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !254, line: 1911, flags: DIFlagFwdDecl)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4643, file: !254, line: 1955, baseType: !4763, size: 64, offset: 2048)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!37, !4760, !4664, !19}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4638, file: !254, line: 723, baseType: !4127, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1210, file: !254, line: 725, baseType: !4768, size: 64, offset: 2816)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !254, line: 725, flags: DIFlagFwdDecl)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1210, file: !254, line: 726, baseType: !1561, size: 1536, align: 64, offset: 2880)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1210, file: !254, line: 727, baseType: !112, size: 128, offset: 4416)
!4772 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !254, line: 728, baseType: !4773, size: 64, offset: 4544)
!4773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !254, line: 728, size: 64, elements: !4774)
!4774 = !{!4775, !4776, !4779, !4780}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4773, file: !254, line: 729, baseType: !4727, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4773, file: !254, line: 730, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !254, line: 730, flags: DIFlagFwdDecl)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4773, file: !254, line: 731, baseType: !927, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4773, file: !254, line: 732, baseType: !19, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1210, file: !254, line: 735, baseType: !320, size: 32, offset: 4608)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1210, file: !254, line: 738, baseType: !320, size: 32, offset: 4640)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1210, file: !254, line: 739, baseType: !4477, size: 64, offset: 4672)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1210, file: !254, line: 750, baseType: !35, size: 64, offset: 4736)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1175, file: !1176, line: 91, baseType: !4786, size: 256, offset: 448)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !4481)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1175, file: !1176, line: 94, baseType: !4788, size: 64, offset: 704)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4789, line: 25, size: 64, elements: !4790)
!4789 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4790 = !{!4791}
!4791 = !DIDerivedType(tag: DW_TAG_member, scope: !4788, file: !4789, line: 26, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4788, file: !4789, line: 26, size: 64, elements: !4793)
!4793 = !{!4794, !4795}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4792, file: !4789, line: 28, baseType: !378, size: 64, align: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !4792, file: !4789, line: 30, baseType: !4796, size: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4792, file: !4789, line: 30, size: 64, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4796, file: !4789, line: 31, baseType: !74, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4796, file: !4789, line: 32, baseType: !37, size: 32, offset: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1175, file: !1176, line: 95, baseType: !4496, size: 64, offset: 768)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1175, file: !1176, line: 96, baseType: !1410, size: 64, offset: 832)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1175, file: !1176, line: 97, baseType: !54, size: 64, offset: 896)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1175, file: !1176, line: 98, baseType: !35, size: 64, offset: 960)
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1176, line: 100, baseType: !4805, size: 128, offset: 1024)
!4805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1176, line: 100, size: 128, elements: !4806)
!4806 = !{!4807, !4808}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4805, file: !1176, line: 101, baseType: !112, size: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4805, file: !1176, line: 102, baseType: !2277, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1175, file: !1176, line: 104, baseType: !112, size: 128, offset: 1152)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1175, file: !1176, line: 105, baseType: !112, size: 128, offset: 1280)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1175, file: !1176, line: 113, baseType: !4812, size: 128, offset: 1408)
!4812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1176, line: 109, size: 128, elements: !4813)
!4813 = !{!4814, !4815, !4816}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4812, file: !1176, line: 110, baseType: !734, size: 128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4812, file: !1176, line: 111, baseType: !1185, size: 128)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4812, file: !1176, line: 112, baseType: !662, size: 128, align: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1170, file: !1171, line: 72, baseType: !1410, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1170, file: !1171, line: 73, baseType: !37, size: 32, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1170, file: !1171, line: 74, baseType: !1248, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1165, file: !1166, line: 10, baseType: !1174, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !655, file: !254, line: 1015, baseType: !1209, size: 64, offset: 1344)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !655, file: !254, line: 1016, baseType: !4641, size: 64, offset: 1408)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !655, file: !254, line: 1018, baseType: !377, size: 64, offset: 1472)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !655, file: !254, line: 1020, baseType: !35, size: 64, offset: 1536)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !655, file: !254, line: 1023, baseType: !35, size: 64, offset: 1600)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !655, file: !254, line: 1027, baseType: !2827, size: 64, offset: 1664)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !655, file: !254, line: 1029, baseType: !1560, size: 64, offset: 1728)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !655, file: !254, line: 1030, baseType: !2097, size: 32, offset: 1792)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !655, file: !254, line: 1031, baseType: !2097, size: 32, offset: 1824)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !630, file: !146, line: 756, baseType: !54, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !630, file: !146, line: 757, baseType: !54, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !630, file: !146, line: 760, baseType: !54, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !630, file: !146, line: 761, baseType: !54, size: 64, offset: 896)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !630, file: !146, line: 763, baseType: !54, size: 64, offset: 960)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !630, file: !146, line: 764, baseType: !4836, size: 64, offset: 1024)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1705, line: 299, baseType: !4838)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1705, line: 299, size: 64, elements: !4839)
!4839 = !{!4840}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4838, file: !1705, line: 299, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1710, line: 18, baseType: !54)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !630, file: !146, line: 773, baseType: !64, size: 32, offset: 1088)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !630, file: !146, line: 785, baseType: !64, size: 32, offset: 1120)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !630, file: !146, line: 795, baseType: !4845, size: 64, offset: 1152)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !146, line: 726, size: 128, elements: !4847)
!4847 = !{!4848, !4849}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4846, file: !146, line: 727, baseType: !377, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4846, file: !146, line: 728, baseType: !37, size: 32, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !630, file: !146, line: 801, baseType: !54, size: 64, offset: 1216)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !630, file: !146, line: 804, baseType: !675, size: 64, offset: 1280)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !630, file: !146, line: 806, baseType: !37, size: 32, offset: 1344)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !630, file: !146, line: 808, baseType: !74, size: 32, offset: 1376)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !630, file: !146, line: 823, baseType: !859, size: 320, offset: 1408)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !630, file: !146, line: 825, baseType: !112, size: 128, offset: 1728)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !630, file: !146, line: 845, baseType: !37, size: 32, offset: 1856)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !630, file: !146, line: 849, baseType: !54, size: 64, offset: 1920)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !630, file: !146, line: 850, baseType: !54, size: 64, offset: 1984)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !630, file: !146, line: 852, baseType: !54, size: 64, offset: 2048)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !630, file: !146, line: 853, baseType: !54, size: 64, offset: 2112)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !630, file: !146, line: 854, baseType: !677, size: 64, offset: 2176)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !630, file: !146, line: 855, baseType: !54, size: 64, offset: 2240)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !630, file: !146, line: 856, baseType: !54, size: 64, offset: 2304)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !630, file: !146, line: 857, baseType: !54, size: 64, offset: 2368)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !630, file: !146, line: 858, baseType: !54, size: 64, offset: 2432)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !630, file: !146, line: 865, baseType: !500, size: 32, offset: 2496)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !630, file: !146, line: 867, baseType: !74, size: 32, offset: 2528)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !630, file: !146, line: 869, baseType: !54, size: 64, offset: 2560)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !630, file: !146, line: 869, baseType: !54, size: 64, offset: 2624)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !630, file: !146, line: 869, baseType: !54, size: 64, offset: 2688)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !630, file: !146, line: 869, baseType: !54, size: 64, offset: 2752)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !630, file: !146, line: 870, baseType: !54, size: 64, offset: 2816)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !630, file: !146, line: 870, baseType: !54, size: 64, offset: 2880)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !630, file: !146, line: 870, baseType: !54, size: 64, offset: 2944)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !630, file: !146, line: 871, baseType: !54, size: 64, offset: 3008)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !630, file: !146, line: 871, baseType: !54, size: 64, offset: 3072)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !630, file: !146, line: 871, baseType: !54, size: 64, offset: 3136)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !630, file: !146, line: 871, baseType: !54, size: 64, offset: 3200)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !630, file: !146, line: 873, baseType: !4880, size: 3328, offset: 3264)
!4880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 3328, elements: !4881)
!4881 = !{!4882}
!4882 = !DISubrange(count: 52)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !630, file: !146, line: 875, baseType: !4884, size: 1280, offset: 6592)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 1280, elements: !739)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !630, file: !146, line: 877, baseType: !4886, size: 64, offset: 7872)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !146, line: 877, flags: DIFlagFwdDecl)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !630, file: !146, line: 880, baseType: !4889, size: 1088, offset: 7936)
!4889 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4890, line: 72, baseType: !4891)
!4890 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4890, line: 23, size: 1088, elements: !4892)
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4900, !4901, !4902, !4903, !4928, !4929, !4930}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4891, file: !4890, line: 28, baseType: !377, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4891, file: !4890, line: 38, baseType: !677, size: 64, offset: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4891, file: !4890, line: 40, baseType: !54, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4891, file: !4890, line: 43, baseType: !859, size: 320, offset: 192)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4891, file: !4890, line: 44, baseType: !4898, size: 64, offset: 512)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4890, line: 44, flags: DIFlagFwdDecl)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4891, file: !4890, line: 48, baseType: !54, size: 64, offset: 576)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4891, file: !4890, line: 59, baseType: !682, size: 256, offset: 640)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4891, file: !4890, line: 60, baseType: !35, size: 64, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4891, file: !4890, line: 61, baseType: !4904, size: 64, offset: 960)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4906)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4907, line: 13, size: 1216, elements: !4908)
!4907 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4908 = !{!4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4906, file: !4907, line: 14, baseType: !35, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4906, file: !4907, line: 15, baseType: !54, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4906, file: !4907, line: 17, baseType: !54, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4906, file: !4907, line: 17, baseType: !54, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4906, file: !4907, line: 18, baseType: !54, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4906, file: !4907, line: 18, baseType: !54, size: 64, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4906, file: !4907, line: 19, baseType: !2136, size: 64, offset: 384)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4906, file: !4907, line: 21, baseType: !1064, size: 64, offset: 448)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4906, file: !4907, line: 23, baseType: !1064, size: 64, offset: 512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4906, file: !4907, line: 24, baseType: !1064, size: 64, offset: 576)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4906, file: !4907, line: 25, baseType: !1064, size: 64, offset: 640)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4906, file: !4907, line: 26, baseType: !1064, size: 64, offset: 704)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4906, file: !4907, line: 27, baseType: !1064, size: 64, offset: 768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4906, file: !4907, line: 28, baseType: !1064, size: 64, offset: 832)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4906, file: !4907, line: 29, baseType: !1064, size: 64, offset: 896)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4906, file: !4907, line: 30, baseType: !1064, size: 64, offset: 960)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4906, file: !4907, line: 31, baseType: !1064, size: 64, offset: 1024)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4906, file: !4907, line: 32, baseType: !1064, size: 64, offset: 1088)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4906, file: !4907, line: 33, baseType: !1064, size: 64, offset: 1152)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4891, file: !4890, line: 63, baseType: !64, size: 32, offset: 1024)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4891, file: !4890, line: 69, baseType: !108, size: 16, offset: 1056)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4891, file: !4890, line: 70, baseType: !2455, size: 16, offset: 1072)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !146, line: 882, baseType: !54, size: 64, offset: 9024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !630, file: !146, line: 885, baseType: !74, size: 32, offset: 9088)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !630, file: !146, line: 886, baseType: !4934, size: 64, offset: 9152)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !146, line: 732, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !630, file: !146, line: 901, baseType: !781, size: 64, offset: 9216)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !630, file: !146, line: 904, baseType: !654, size: 64, offset: 9280)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !630, file: !146, line: 906, baseType: !4939, size: 64, offset: 9344)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !146, line: 906, flags: DIFlagFwdDecl)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !630, file: !146, line: 930, baseType: !64, size: 32, offset: 9408)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !630, file: !146, line: 933, baseType: !64, size: 32, offset: 9440)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !630, file: !146, line: 935, baseType: !4944, size: 64, offset: 9472)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !271, line: 103, size: 64, elements: !4945)
!4945 = !{!4946}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4944, file: !271, line: 104, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !271, line: 101, flags: DIFlagFwdDecl)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !630, file: !146, line: 940, baseType: !675, size: 64, offset: 9536)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !630, file: !146, line: 942, baseType: !966, size: 256, offset: 9600)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !627, file: !146, line: 986, baseType: !4952, offset: 10240)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !1071)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !310, file: !301, line: 882, baseType: !626, size: 64, offset: 9792)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !310, file: !301, line: 884, baseType: !37, size: 32, offset: 9856)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !310, file: !301, line: 885, baseType: !37, size: 32, offset: 9888)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !310, file: !301, line: 886, baseType: !37, size: 32, offset: 9920)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !310, file: !301, line: 888, baseType: !37, size: 32, offset: 9952)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !310, file: !301, line: 890, baseType: !54, size: 64, offset: 9984)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !310, file: !301, line: 893, baseType: !19, size: 32, offset: 10048)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !310, file: !301, line: 896, baseType: !19, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !310, file: !301, line: 897, baseType: !19, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !310, file: !301, line: 898, baseType: !19, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !310, file: !301, line: 899, baseType: !19, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !310, file: !301, line: 919, baseType: !19, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !310, file: !301, line: 922, baseType: !19, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !310, file: !301, line: 923, baseType: !19, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !310, file: !301, line: 925, baseType: !19, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !310, file: !301, line: 939, baseType: !19, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !310, file: !301, line: 941, baseType: !19, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !310, file: !301, line: 944, baseType: !19, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !310, file: !301, line: 956, baseType: !19, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !310, file: !301, line: 962, baseType: !19, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !310, file: !301, line: 966, baseType: !19, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !310, file: !301, line: 969, baseType: !54, size: 64, offset: 10176)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !310, file: !301, line: 971, baseType: !4976, size: 448, offset: 10240)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !265, line: 25, size: 448, elements: !4977)
!4977 = !{!4978, !4979, !4984}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4976, file: !265, line: 26, baseType: !54, size: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4976, file: !265, line: 27, baseType: !4980, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!1064, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, scope: !4976, file: !265, line: 28, baseType: !4985, size: 320, offset: 128)
!4985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4976, file: !265, line: 28, size: 320, elements: !4986)
!4986 = !{!4987, !4997, !5022}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4985, file: !265, line: 37, baseType: !4988, size: 320)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4985, file: !265, line: 30, size: 320, elements: !4989)
!4989 = !{!4990, !4992, !4993, !4994, !4995, !4996}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4988, file: !265, line: 31, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4988, file: !265, line: 32, baseType: !319, size: 32, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4988, file: !265, line: 33, baseType: !319, size: 32, offset: 96)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4988, file: !265, line: 34, baseType: !319, size: 32, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4988, file: !265, line: 35, baseType: !377, size: 64, offset: 192)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4988, file: !265, line: 36, baseType: !4991, size: 64, offset: 256)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4985, file: !265, line: 47, baseType: !4998, size: 192)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4985, file: !265, line: 39, size: 192, elements: !4999)
!4999 = !{!5000, !5001, !5002, !5021}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4998, file: !265, line: 40, baseType: !492, size: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4998, file: !265, line: 41, baseType: !264, size: 32, offset: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, scope: !4998, file: !265, line: 42, baseType: !5003, size: 64, offset: 64)
!5003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4998, file: !265, line: 42, size: 64, elements: !5004)
!5004 = !{!5005, !5013}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5003, file: !265, line: 43, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5008, line: 7, size: 128, elements: !5009)
!5008 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5009 = !{!5010, !5012}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5007, file: !5008, line: 8, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !52, line: 93, baseType: !58)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5007, file: !5008, line: 9, baseType: !58, size: 64, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5003, file: !265, line: 44, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5016, line: 7, size: 64, elements: !5017)
!5016 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5017 = !{!5018, !5020}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5015, file: !5016, line: 8, baseType: !5019, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5016, line: 5, baseType: !851)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5015, file: !5016, line: 9, baseType: !851, size: 32, offset: 32)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4998, file: !265, line: 46, baseType: !377, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4985, file: !265, line: 55, baseType: !5023, size: 256)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4985, file: !265, line: 49, size: 256, elements: !5024)
!5024 = !{!5025, !5033, !5034, !5035, !5036}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5023, file: !265, line: 50, baseType: !5026, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5028, line: 36, size: 64, elements: !5029)
!5028 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5029 = !{!5030, !5031, !5032}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5027, file: !5028, line: 37, baseType: !37, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5027, file: !5028, line: 38, baseType: !887, size: 16, offset: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5027, file: !5028, line: 39, baseType: !887, size: 16, offset: 48)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5023, file: !265, line: 51, baseType: !37, size: 32, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5023, file: !265, line: 52, baseType: !37, size: 32, offset: 96)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5023, file: !265, line: 53, baseType: !54, size: 64, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5023, file: !265, line: 54, baseType: !54, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !310, file: !301, line: 973, baseType: !5038, size: 32, offset: 10688)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !40, line: 27, baseType: !5039)
!5039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !52, line: 28, baseType: !37)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !310, file: !301, line: 974, baseType: !5038, size: 32, offset: 10720)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !310, file: !301, line: 978, baseType: !54, size: 64, offset: 10752)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !310, file: !301, line: 987, baseType: !309, size: 64, offset: 10816)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !310, file: !301, line: 990, baseType: !309, size: 64, offset: 10880)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !310, file: !301, line: 995, baseType: !112, size: 128, offset: 10944)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !310, file: !301, line: 996, baseType: !112, size: 128, offset: 11072)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !310, file: !301, line: 997, baseType: !309, size: 64, offset: 11200)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !310, file: !301, line: 1005, baseType: !112, size: 128, offset: 11264)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !310, file: !301, line: 1006, baseType: !112, size: 128, offset: 11392)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !310, file: !301, line: 1009, baseType: !722, size: 64, offset: 11520)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !310, file: !301, line: 1010, baseType: !5051, size: 512, offset: 11584)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 512, elements: !739)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !310, file: !301, line: 1011, baseType: !112, size: 128, offset: 12096)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !310, file: !301, line: 1012, baseType: !112, size: 128, offset: 12224)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !310, file: !301, line: 1014, baseType: !1004, size: 64, offset: 12352)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !310, file: !301, line: 1017, baseType: !2448, size: 64, offset: 12416)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !310, file: !301, line: 1020, baseType: !2448, size: 64, offset: 12480)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !310, file: !301, line: 1023, baseType: !35, size: 64, offset: 12544)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !310, file: !301, line: 1025, baseType: !377, size: 64, offset: 12608)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !310, file: !301, line: 1026, baseType: !377, size: 64, offset: 12672)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !310, file: !301, line: 1031, baseType: !377, size: 64, offset: 12736)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !310, file: !301, line: 1032, baseType: !3903, size: 192, offset: 12800)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !310, file: !301, line: 1041, baseType: !54, size: 64, offset: 12992)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !310, file: !301, line: 1042, baseType: !54, size: 64, offset: 13056)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !310, file: !301, line: 1045, baseType: !377, size: 64, offset: 13120)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !310, file: !301, line: 1048, baseType: !377, size: 64, offset: 13184)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !310, file: !301, line: 1051, baseType: !54, size: 64, offset: 13248)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !310, file: !301, line: 1052, baseType: !54, size: 64, offset: 13312)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !310, file: !301, line: 1055, baseType: !5069, size: 640, offset: 13376)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5070, line: 132, size: 640, elements: !5071)
!5070 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5071 = !{!5072, !5078, !5079}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5069, file: !5070, line: 133, baseType: !5073, size: 576)
!5073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5074, size: 576, elements: !718)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5070, line: 117, size: 192, elements: !5075)
!5075 = !{!5076, !5077}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5074, file: !5070, line: 118, baseType: !377, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5074, file: !5070, line: 119, baseType: !506, size: 128, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5069, file: !5070, line: 134, baseType: !19, size: 32, offset: 576)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5069, file: !5070, line: 135, baseType: !19, size: 32, offset: 608)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !310, file: !301, line: 1058, baseType: !5081, size: 448, offset: 14016)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5070, line: 144, size: 448, elements: !5082)
!5082 = !{!5083, !5084, !5085}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5081, file: !5070, line: 145, baseType: !662, size: 128, align: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5081, file: !5070, line: 146, baseType: !682, size: 256, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5081, file: !5070, line: 147, baseType: !19, size: 32, offset: 384)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !310, file: !301, line: 1064, baseType: !1078, size: 64, offset: 14464)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !310, file: !301, line: 1067, baseType: !1078, size: 64, offset: 14528)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !310, file: !301, line: 1070, baseType: !1078, size: 64, offset: 14592)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !310, file: !301, line: 1074, baseType: !843, size: 64, offset: 14656)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !310, file: !301, line: 1084, baseType: !5091, size: 128, offset: 14720)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !4490)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !310, file: !301, line: 1086, baseType: !5093, size: 64, offset: 14848)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !301, line: 55, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !310, file: !301, line: 1089, baseType: !5096, size: 64, offset: 14912)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5097, line: 12, size: 64, elements: !5098)
!5097 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5098 = !{!5099}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5096, file: !5097, line: 13, baseType: !5100, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5097, line: 8, flags: DIFlagFwdDecl)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !310, file: !301, line: 1090, baseType: !5103, size: 128, offset: 14976)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5104, line: 13, size: 128, elements: !5105)
!5104 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5105 = !{!5106}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5103, file: !5104, line: 14, baseType: !112, size: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !310, file: !301, line: 1097, baseType: !5108, size: 64, offset: 15104)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !301, line: 50, flags: DIFlagFwdDecl)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !310, file: !301, line: 1100, baseType: !5111, size: 64, offset: 15168)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !301, line: 1100, flags: DIFlagFwdDecl)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !310, file: !301, line: 1103, baseType: !5114, size: 64, offset: 15232)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !301, line: 53, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !310, file: !301, line: 1107, baseType: !5117, size: 64, offset: 15296)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5119, line: 31, size: 576, elements: !5120)
!5119 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5120 = !{!5121, !5122, !5125, !5128, !5131, !5132, !5135, !5138, !5139}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5118, file: !5119, line: 32, baseType: !325, size: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5118, file: !5119, line: 33, baseType: !5123, size: 64, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5119, line: 9, flags: DIFlagFwdDecl)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5118, file: !5119, line: 34, baseType: !5126, size: 64, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5119, line: 10, flags: DIFlagFwdDecl)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5118, file: !5119, line: 35, baseType: !5129, size: 64, offset: 192)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5119, line: 8, flags: DIFlagFwdDecl)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5118, file: !5119, line: 36, baseType: !750, size: 64, offset: 256)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5118, file: !5119, line: 37, baseType: !5133, size: 64, offset: 320)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !845, line: 34, flags: DIFlagFwdDecl)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5118, file: !5119, line: 38, baseType: !5136, size: 64, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5119, line: 38, flags: DIFlagFwdDecl)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5118, file: !5119, line: 39, baseType: !5136, size: 64, offset: 448)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5118, file: !5119, line: 40, baseType: !5140, size: 64, offset: 512)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5142, line: 771, size: 384, elements: !5143)
!5142 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5143 = !{!5144, !5145, !5146, !5147}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5141, file: !5142, line: 772, baseType: !827, size: 192)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5141, file: !5142, line: 773, baseType: !781, size: 64, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5141, file: !5142, line: 774, baseType: !1049, size: 64, offset: 256)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5141, file: !5142, line: 775, baseType: !3973, size: 64, offset: 320)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !310, file: !301, line: 1110, baseType: !5149, size: 64, offset: 15360)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5151, line: 93, size: 8768, elements: !5152)
!5151 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5201, !5210, !5211, !5213, !5214, !5215, !5218, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5256, !5257, !5264, !5274, !5336, !5337, !5340, !5341, !5342, !5343, !5344, !5345}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5150, file: !5151, line: 94, baseType: !325, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5150, file: !5151, line: 95, baseType: !64, size: 32, offset: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5150, file: !5151, line: 96, baseType: !37, size: 32, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5150, file: !5151, line: 97, baseType: !37, size: 32, offset: 96)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5150, file: !5151, line: 98, baseType: !112, size: 128, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5150, file: !5151, line: 100, baseType: !69, size: 192, offset: 256)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5150, file: !5151, line: 103, baseType: !309, size: 64, offset: 448)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5150, file: !5151, line: 106, baseType: !5161, size: 192, offset: 512)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5162, line: 32, size: 192, elements: !5163)
!5162 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5163 = !{!5164, !5165}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5161, file: !5162, line: 33, baseType: !112, size: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5161, file: !5162, line: 34, baseType: !5166, size: 64, offset: 128)
!5166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5167, line: 25, baseType: !5168)
!5167 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5167, line: 23, size: 64, elements: !5169)
!5169 = !{!5170}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5168, file: !5167, line: 24, baseType: !577, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5150, file: !5151, line: 109, baseType: !730, size: 64, offset: 704)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5150, file: !5151, line: 112, baseType: !37, size: 32, offset: 768)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5150, file: !5151, line: 114, baseType: !37, size: 32, offset: 800)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5150, file: !5151, line: 115, baseType: !309, size: 64, offset: 832)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5150, file: !5151, line: 118, baseType: !37, size: 32, offset: 896)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5150, file: !5151, line: 119, baseType: !19, size: 32, offset: 928)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5150, file: !5151, line: 121, baseType: !5178, size: 64, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5151, line: 80, size: 448, elements: !5180)
!5180 = !{!5181, !5182, !5188}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5179, file: !5151, line: 81, baseType: !64, size: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5179, file: !5151, line: 82, baseType: !5183, size: 128, offset: 64)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5151, line: 75, size: 128, elements: !5184)
!5184 = !{!5185, !5186}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5183, file: !5151, line: 76, baseType: !309, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5183, file: !5151, line: 77, baseType: !5187, size: 64, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5179, file: !5151, line: 83, baseType: !1005, size: 256, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5150, file: !5151, line: 132, baseType: !19, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5150, file: !5151, line: 133, baseType: !19, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5150, file: !5151, line: 138, baseType: !19, size: 32, offset: 1056)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5150, file: !5151, line: 139, baseType: !112, size: 128, offset: 1088)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5150, file: !5151, line: 142, baseType: !444, size: 512, offset: 1216)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5150, file: !5151, line: 143, baseType: !452, size: 64, offset: 1728)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5150, file: !5151, line: 150, baseType: !5196, size: 256, offset: 1792)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5197, size: 256, elements: !2438)
!5197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5151, line: 38, size: 128, elements: !5198)
!5198 = !{!5199, !5200}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5197, file: !5151, line: 39, baseType: !377, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5197, file: !5151, line: 40, baseType: !377, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5150, file: !5151, line: 156, baseType: !5202, size: 192, offset: 2048)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5151, line: 66, size: 192, elements: !5203)
!5203 = !{!5204}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5202, file: !5151, line: 67, baseType: !5205, size: 192)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5151, line: 47, size: 192, elements: !5206)
!5206 = !{!5207, !5208, !5209}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5205, file: !5151, line: 48, baseType: !677, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5205, file: !5151, line: 49, baseType: !677, size: 64, offset: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5205, file: !5151, line: 50, baseType: !677, size: 64, offset: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5150, file: !5151, line: 160, baseType: !5069, size: 640, offset: 2240)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5150, file: !5151, line: 163, baseType: !5212, size: 256, offset: 2880)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 256, elements: !739)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5150, file: !5151, line: 169, baseType: !722, size: 64, offset: 3136)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5150, file: !5151, line: 172, baseType: !37, size: 32, offset: 3200)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5150, file: !5151, line: 174, baseType: !5216, size: 64, offset: 3264)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5151, line: 174, flags: DIFlagFwdDecl)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5150, file: !5151, line: 185, baseType: !5219, size: 64, offset: 3328)
!5219 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !496, line: 860, baseType: !5220)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 853, size: 64, elements: !5221)
!5221 = !{!5222, !5223}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5220, file: !496, line: 858, baseType: !1180, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5220, file: !496, line: 859, baseType: !74, size: 32, offset: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5150, file: !5151, line: 186, baseType: !377, size: 64, offset: 3392)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5150, file: !5151, line: 186, baseType: !377, size: 64, offset: 3456)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5150, file: !5151, line: 186, baseType: !377, size: 64, offset: 3520)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5150, file: !5151, line: 186, baseType: !377, size: 64, offset: 3584)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5150, file: !5151, line: 187, baseType: !377, size: 64, offset: 3648)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5150, file: !5151, line: 188, baseType: !377, size: 64, offset: 3712)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5150, file: !5151, line: 189, baseType: !3903, size: 192, offset: 3776)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5150, file: !5151, line: 190, baseType: !54, size: 64, offset: 3968)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5150, file: !5151, line: 190, baseType: !54, size: 64, offset: 4032)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5150, file: !5151, line: 190, baseType: !54, size: 64, offset: 4096)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5150, file: !5151, line: 190, baseType: !54, size: 64, offset: 4160)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5150, file: !5151, line: 191, baseType: !54, size: 64, offset: 4224)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5150, file: !5151, line: 191, baseType: !54, size: 64, offset: 4288)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5150, file: !5151, line: 191, baseType: !54, size: 64, offset: 4352)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5150, file: !5151, line: 191, baseType: !54, size: 64, offset: 4416)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5150, file: !5151, line: 192, baseType: !54, size: 64, offset: 4480)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5150, file: !5151, line: 192, baseType: !54, size: 64, offset: 4544)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5150, file: !5151, line: 192, baseType: !54, size: 64, offset: 4608)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5150, file: !5151, line: 192, baseType: !54, size: 64, offset: 4672)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5150, file: !5151, line: 193, baseType: !54, size: 64, offset: 4736)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5150, file: !5151, line: 193, baseType: !54, size: 64, offset: 4800)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5150, file: !5151, line: 194, baseType: !5246, size: 448, offset: 4864)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5247, line: 12, size: 448, elements: !5248)
!5247 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5248 = !{!5249, !5250, !5251, !5252, !5253, !5254, !5255}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5246, file: !5247, line: 15, baseType: !377, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5246, file: !5247, line: 17, baseType: !377, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5246, file: !5247, line: 19, baseType: !377, size: 64, offset: 128)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5246, file: !5247, line: 21, baseType: !377, size: 64, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5246, file: !5247, line: 29, baseType: !377, size: 64, offset: 256)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5246, file: !5247, line: 35, baseType: !377, size: 64, offset: 320)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5246, file: !5247, line: 44, baseType: !377, size: 64, offset: 384)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5150, file: !5151, line: 202, baseType: !379, size: 64, offset: 5312)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5150, file: !5151, line: 213, baseType: !5258, size: 2048, offset: 5376)
!5258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5259, size: 2048, elements: !4490)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5260, line: 43, size: 128, elements: !5261)
!5260 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5261 = !{!5262, !5263}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5259, file: !5260, line: 44, baseType: !53, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5259, file: !5260, line: 45, baseType: !53, size: 64, offset: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5150, file: !5151, line: 216, baseType: !5265, size: 448, offset: 7424)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5151, line: 30, size: 448, elements: !5266)
!5266 = !{!5267, !5268, !5269, !5270, !5271, !5272, !5273}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5265, file: !5151, line: 31, baseType: !37, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5265, file: !5151, line: 32, baseType: !1064, size: 64, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5265, file: !5151, line: 33, baseType: !54, size: 64, offset: 128)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5265, file: !5151, line: 34, baseType: !377, size: 64, offset: 192)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5265, file: !5151, line: 34, baseType: !377, size: 64, offset: 256)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5265, file: !5151, line: 35, baseType: !54, size: 64, offset: 320)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5265, file: !5151, line: 35, baseType: !54, size: 64, offset: 384)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5150, file: !5151, line: 219, baseType: !5275, size: 64, offset: 7872)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5277, line: 41, size: 3456, elements: !5278)
!5277 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5278 = !{!5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5276, file: !5277, line: 47, baseType: !109, size: 16)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5276, file: !5277, line: 48, baseType: !320, size: 32, offset: 32)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5276, file: !5277, line: 54, baseType: !100, size: 8, offset: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5276, file: !5277, line: 55, baseType: !100, size: 8, offset: 72)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5276, file: !5277, line: 73, baseType: !378, size: 64, align: 64, offset: 128)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5276, file: !5277, line: 74, baseType: !378, size: 64, offset: 192)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5276, file: !5277, line: 81, baseType: !378, size: 64, offset: 256)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5276, file: !5277, line: 82, baseType: !378, size: 64, offset: 320)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5276, file: !5277, line: 85, baseType: !378, size: 64, offset: 384)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5276, file: !5277, line: 86, baseType: !378, size: 64, offset: 448)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5276, file: !5277, line: 94, baseType: !378, size: 64, offset: 512)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5276, file: !5277, line: 102, baseType: !378, size: 64, offset: 576)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5276, file: !5277, line: 107, baseType: !4480, size: 256, offset: 640)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5276, file: !5277, line: 108, baseType: !100, size: 8, align: 64, offset: 896)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5276, file: !5277, line: 110, baseType: !5294, size: 24, offset: 904)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, elements: !718)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5276, file: !5277, line: 111, baseType: !320, size: 32, align: 64, offset: 960)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5276, file: !5277, line: 113, baseType: !320, size: 32, offset: 992)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5276, file: !5277, line: 114, baseType: !320, size: 32, offset: 1024)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5276, file: !5277, line: 115, baseType: !320, size: 32, offset: 1056)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5276, file: !5277, line: 117, baseType: !320, size: 32, offset: 1088)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5276, file: !5277, line: 118, baseType: !378, size: 64, align: 64, offset: 1152)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5276, file: !5277, line: 120, baseType: !378, size: 64, offset: 1216)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5276, file: !5277, line: 121, baseType: !378, size: 64, offset: 1280)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5276, file: !5277, line: 122, baseType: !378, size: 64, offset: 1344)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5276, file: !5277, line: 123, baseType: !378, size: 64, offset: 1408)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5276, file: !5277, line: 133, baseType: !378, size: 64, offset: 1472)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5276, file: !5277, line: 137, baseType: !378, size: 64, offset: 1536)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5276, file: !5277, line: 142, baseType: !378, size: 64, offset: 1600)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5276, file: !5277, line: 143, baseType: !378, size: 64, offset: 1664)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5276, file: !5277, line: 146, baseType: !378, size: 64, offset: 1728)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5276, file: !5277, line: 147, baseType: !378, size: 64, offset: 1792)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5276, file: !5277, line: 148, baseType: !378, size: 64, offset: 1856)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5276, file: !5277, line: 149, baseType: !378, size: 64, offset: 1920)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5276, file: !5277, line: 154, baseType: !378, size: 64, offset: 1984)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5276, file: !5277, line: 155, baseType: !378, size: 64, offset: 2048)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5276, file: !5277, line: 156, baseType: !378, size: 64, offset: 2112)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5276, file: !5277, line: 158, baseType: !378, size: 64, offset: 2176)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5276, file: !5277, line: 159, baseType: !378, size: 64, offset: 2240)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5276, file: !5277, line: 162, baseType: !378, size: 64, offset: 2304)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5276, file: !5277, line: 163, baseType: !378, size: 64, offset: 2368)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5276, file: !5277, line: 164, baseType: !378, size: 64, offset: 2432)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5276, file: !5277, line: 167, baseType: !378, size: 64, offset: 2496)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5276, file: !5277, line: 168, baseType: !378, size: 64, offset: 2560)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5276, file: !5277, line: 171, baseType: !378, size: 64, offset: 2624)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5276, file: !5277, line: 172, baseType: !378, size: 64, offset: 2688)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5276, file: !5277, line: 175, baseType: !378, size: 64, offset: 2752)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5276, file: !5277, line: 178, baseType: !378, size: 64, offset: 2816)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5276, file: !5277, line: 179, baseType: !378, size: 64, offset: 2880)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5276, file: !5277, line: 182, baseType: !320, size: 32, offset: 2944)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5276, file: !5277, line: 186, baseType: !378, size: 64, align: 64, offset: 3008)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5276, file: !5277, line: 194, baseType: !378, size: 64, offset: 3072)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5276, file: !5277, line: 195, baseType: !378, size: 64, offset: 3136)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5276, file: !5277, line: 199, baseType: !378, size: 64, offset: 3200)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5276, file: !5277, line: 200, baseType: !378, size: 64, offset: 3264)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5276, file: !5277, line: 203, baseType: !378, size: 64, offset: 3328)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5276, file: !5277, line: 204, baseType: !378, size: 64, offset: 3392)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5150, file: !5151, line: 222, baseType: !19, size: 32, offset: 7936)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5150, file: !5151, line: 223, baseType: !5338, size: 64, offset: 8000)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5151, line: 223, flags: DIFlagFwdDecl)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5150, file: !5151, line: 230, baseType: !839, size: 8, offset: 8064)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5150, file: !5151, line: 231, baseType: !887, size: 16, offset: 8080)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5150, file: !5151, line: 232, baseType: !887, size: 16, offset: 8096)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5150, file: !5151, line: 234, baseType: !626, size: 64, offset: 8128)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5150, file: !5151, line: 237, baseType: !682, size: 256, offset: 8192)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5150, file: !5151, line: 243, baseType: !859, size: 320, offset: 8448)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !310, file: !301, line: 1111, baseType: !5347, size: 64, offset: 15424)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5151, line: 20, size: 16640, elements: !5349)
!5349 = !{!5350, !5351, !5352, !5353}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5348, file: !5151, line: 21, baseType: !74, size: 32)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5348, file: !5151, line: 22, baseType: !325, size: 32, offset: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5348, file: !5151, line: 23, baseType: !69, size: 192, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5348, file: !5151, line: 24, baseType: !5354, size: 16384, offset: 256)
!5354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5355, size: 16384, elements: !1499)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5162, line: 51, size: 256, elements: !5356)
!5356 = !{!5357}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5355, file: !5162, line: 52, baseType: !5358, size: 256)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5162, line: 37, size: 256, elements: !5359)
!5359 = !{!5360, !5367, !5368, !5372}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5358, file: !5162, line: 39, baseType: !5361, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5362, line: 83, baseType: !5363)
!5362 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5362, line: 82, baseType: !5365)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{null, !37}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5358, file: !5162, line: 40, baseType: !54, size: 64, offset: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5358, file: !5162, line: 46, baseType: !5369, size: 64, offset: 128)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5362, line: 86, baseType: !5370)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5362, line: 85, baseType: !2724)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5358, file: !5162, line: 48, baseType: !5166, size: 64, offset: 192)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !310, file: !301, line: 1112, baseType: !5166, size: 64, offset: 15488)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !310, file: !301, line: 1113, baseType: !5166, size: 64, offset: 15552)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !310, file: !301, line: 1115, baseType: !5166, size: 64, offset: 15616)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !310, file: !301, line: 1116, baseType: !5161, size: 192, offset: 15680)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !310, file: !301, line: 1117, baseType: !54, size: 64, offset: 15872)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !310, file: !301, line: 1118, baseType: !50, size: 64, offset: 15936)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !310, file: !301, line: 1119, baseType: !19, size: 32, offset: 16000)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !310, file: !301, line: 1121, baseType: !665, size: 64, offset: 16064)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !310, file: !301, line: 1125, baseType: !5382, size: 64, offset: 16128)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !301, line: 43, flags: DIFlagFwdDecl)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !310, file: !301, line: 1127, baseType: !812, size: 32, offset: 16192)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !310, file: !301, line: 1128, baseType: !19, size: 32, offset: 16224)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !310, file: !301, line: 1130, baseType: !5387, size: 128, offset: 16256)
!5387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5388, line: 37, size: 128, elements: !5389)
!5388 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5389 = !{!5390, !5391, !5392}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5387, file: !5388, line: 38, baseType: !37, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5387, file: !5388, line: 39, baseType: !64, size: 32, offset: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5387, file: !5388, line: 40, baseType: !5393, size: 64, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5388, line: 24, flags: DIFlagFwdDecl)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !310, file: !301, line: 1131, baseType: !5396, size: 256, offset: 16384)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5397, line: 12, size: 256, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5398 = !{!5399, !5400, !5401, !5402}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5396, file: !5397, line: 13, baseType: !927, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5396, file: !5397, line: 14, baseType: !54, size: 64, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5396, file: !5397, line: 15, baseType: !54, size: 64, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5396, file: !5397, line: 16, baseType: !839, size: 8, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !310, file: !301, line: 1134, baseType: !377, size: 64, offset: 16640)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !310, file: !301, line: 1135, baseType: !377, size: 64, offset: 16704)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !310, file: !301, line: 1138, baseType: !74, size: 32, offset: 16768)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !310, file: !301, line: 1141, baseType: !469, size: 32, offset: 16800)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !310, file: !301, line: 1143, baseType: !5408, size: 64, offset: 16832)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !301, line: 735, size: 64, elements: !5409)
!5409 = !{!5410}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5408, file: !301, line: 736, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !310, file: !301, line: 1147, baseType: !509, size: 128, offset: 16896)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !310, file: !301, line: 1149, baseType: !309, size: 64, offset: 17024)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !310, file: !301, line: 1151, baseType: !5415, size: 64, offset: 17088)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !301, line: 1151, flags: DIFlagFwdDecl)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !310, file: !301, line: 1188, baseType: !35, size: 64, offset: 17152)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !310, file: !301, line: 1191, baseType: !5419, size: 64, offset: 17216)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !301, line: 44, flags: DIFlagFwdDecl)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !310, file: !301, line: 1194, baseType: !5422, size: 64, offset: 17280)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !301, line: 45, flags: DIFlagFwdDecl)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !310, file: !301, line: 1197, baseType: !5425, size: 64, offset: 17344)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !301, line: 61, flags: DIFlagFwdDecl)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !310, file: !301, line: 1199, baseType: !5428, size: 64, offset: 17408)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5430, line: 99, size: 128, elements: !5431)
!5430 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5431 = !{!5432, !5433, !5434}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5429, file: !5430, line: 100, baseType: !675, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5429, file: !5430, line: 101, baseType: !64, size: 32, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5429, file: !5430, line: 103, baseType: !41, size: 16, offset: 96)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !310, file: !301, line: 1202, baseType: !5436, size: 64, offset: 17472)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !301, line: 48, flags: DIFlagFwdDecl)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !310, file: !301, line: 1205, baseType: !54, size: 64, offset: 17536)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !310, file: !301, line: 1206, baseType: !5440, size: 64, offset: 17600)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5162, line: 14, baseType: !5442)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5162, line: 12, size: 384, elements: !5443)
!5443 = !{!5444}
!5444 = !DIDerivedType(tag: DW_TAG_member, scope: !5442, file: !5162, line: 13, baseType: !5445, size: 384)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5442, file: !5162, line: 13, size: 384, elements: !5446)
!5446 = !{!5447, !5448, !5449, !5450}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5445, file: !5162, line: 13, baseType: !37, size: 32)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5445, file: !5162, line: 13, baseType: !37, size: 32, offset: 32)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5445, file: !5162, line: 13, baseType: !37, size: 32, offset: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5445, file: !5162, line: 13, baseType: !5451, size: 256, offset: 128)
!5451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5452, line: 37, size: 256, elements: !5453)
!5452 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5453 = !{!5454, !5459, !5472, !5478, !5487, !5514, !5519}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5451, file: !5452, line: 42, baseType: !5455, size: 64)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 39, size: 64, elements: !5456)
!5456 = !{!5457, !5458}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5455, file: !5452, line: 40, baseType: !5039, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5455, file: !5452, line: 41, baseType: !818, size: 32, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5451, file: !5452, line: 50, baseType: !5460, size: 192)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 45, size: 192, elements: !5461)
!5461 = !{!5462, !5464, !5465, !5471}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5460, file: !5452, line: 46, baseType: !5463, size: 32)
!5463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !52, line: 95, baseType: !37)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5460, file: !5452, line: 47, baseType: !37, size: 32, offset: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5460, file: !5452, line: 48, baseType: !5466, size: 64, offset: 64)
!5466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5452, line: 11, baseType: !5467)
!5467 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5452, line: 8, size: 64, elements: !5468)
!5468 = !{!5469, !5470}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5467, file: !5452, line: 9, baseType: !37, size: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5467, file: !5452, line: 10, baseType: !35, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5460, file: !5452, line: 49, baseType: !37, size: 32, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5451, file: !5452, line: 57, baseType: !5473, size: 128)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 53, size: 128, elements: !5474)
!5474 = !{!5475, !5476, !5477}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5473, file: !5452, line: 54, baseType: !5039, size: 32)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5473, file: !5452, line: 55, baseType: !818, size: 32, offset: 32)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5473, file: !5452, line: 56, baseType: !5466, size: 64, offset: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5451, file: !5452, line: 66, baseType: !5479, size: 256)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 60, size: 256, elements: !5480)
!5480 = !{!5481, !5482, !5483, !5484, !5486}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5479, file: !5452, line: 61, baseType: !5039, size: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5479, file: !5452, line: 62, baseType: !818, size: 32, offset: 32)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5479, file: !5452, line: 63, baseType: !37, size: 32, offset: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5479, file: !5452, line: 64, baseType: !5485, size: 64, offset: 128)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !52, line: 94, baseType: !1363)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5479, file: !5452, line: 65, baseType: !5485, size: 64, offset: 192)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5451, file: !5452, line: 105, baseType: !5488, size: 256)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 69, size: 256, elements: !5489)
!5489 = !{!5490, !5491}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5488, file: !5452, line: 70, baseType: !35, size: 64)
!5491 = !DIDerivedType(tag: DW_TAG_member, scope: !5488, file: !5452, line: 79, baseType: !5492, size: 192, offset: 64)
!5492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5488, file: !5452, line: 79, size: 192, elements: !5493)
!5493 = !{!5494, !5495, !5496, !5503, !5508}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5492, file: !5452, line: 81, baseType: !37, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5492, file: !5452, line: 86, baseType: !887, size: 16)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5492, file: !5452, line: 92, baseType: !5497, size: 192)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5492, file: !5452, line: 88, size: 192, elements: !5498)
!5498 = !{!5499, !5501, !5502}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5497, file: !5452, line: 89, baseType: !5500, size: 64)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !488)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5497, file: !5452, line: 90, baseType: !35, size: 64, offset: 64)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5497, file: !5452, line: 91, baseType: !35, size: 64, offset: 128)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5492, file: !5452, line: 97, baseType: !5504, size: 96)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5492, file: !5452, line: 94, size: 96, elements: !5505)
!5505 = !{!5506, !5507}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5504, file: !5452, line: 95, baseType: !5500, size: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5504, file: !5452, line: 96, baseType: !320, size: 32, offset: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5492, file: !5452, line: 103, baseType: !5509, size: 128)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5492, file: !5452, line: 99, size: 128, elements: !5510)
!5510 = !{!5511, !5512, !5513}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5509, file: !5452, line: 100, baseType: !54, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5509, file: !5452, line: 101, baseType: !320, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5509, file: !5452, line: 102, baseType: !320, size: 32, offset: 96)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5451, file: !5452, line: 111, baseType: !5515, size: 128)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 108, size: 128, elements: !5516)
!5516 = !{!5517, !5518}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5515, file: !5452, line: 109, baseType: !1064, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5515, file: !5452, line: 110, baseType: !37, size: 32, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5451, file: !5452, line: 118, baseType: !5520, size: 128)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5451, file: !5452, line: 114, size: 128, elements: !5521)
!5521 = !{!5522, !5523, !5524}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5520, file: !5452, line: 115, baseType: !35, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5520, file: !5452, line: 116, baseType: !37, size: 32, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5520, file: !5452, line: 117, baseType: !19, size: 32, offset: 96)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !310, file: !301, line: 1208, baseType: !5246, size: 448, offset: 17664)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !310, file: !301, line: 1215, baseType: !377, size: 64, offset: 18112)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !310, file: !301, line: 1217, baseType: !377, size: 64, offset: 18176)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !310, file: !301, line: 1219, baseType: !377, size: 64, offset: 18240)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !310, file: !301, line: 1223, baseType: !5530, size: 64, offset: 18304)
!5530 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5531, line: 99, baseType: !5532)
!5531 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5531, line: 99, size: 64, elements: !5533)
!5533 = !{!5534}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5532, file: !5531, line: 99, baseType: !577, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !310, file: !301, line: 1225, baseType: !1180, size: 32, offset: 18368)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !310, file: !301, line: 1226, baseType: !37, size: 32, offset: 18400)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !310, file: !301, line: 1227, baseType: !37, size: 32, offset: 18432)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !310, file: !301, line: 1231, baseType: !3973, size: 64, offset: 18496)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !310, file: !301, line: 1233, baseType: !112, size: 128, offset: 18560)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !310, file: !301, line: 1240, baseType: !5541, size: 64, offset: 18688)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !301, line: 62, flags: DIFlagFwdDecl)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !310, file: !301, line: 1242, baseType: !5544, size: 64, offset: 18752)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5546, line: 392, size: 96, elements: !5547)
!5546 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5547 = !{!5548, !5554, !5556}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5545, file: !5546, line: 393, baseType: !5549, size: 32)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5546, line: 388, size: 32, elements: !5550)
!5550 = !{!5551}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5549, file: !5546, line: 389, baseType: !5552, size: 32)
!5552 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5553, line: 46, baseType: !319)
!5553 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5545, file: !5546, line: 394, baseType: !5555, size: 32, offset: 32)
!5555 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5553, line: 42, baseType: !851)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5545, file: !5546, line: 395, baseType: !5552, size: 32, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !310, file: !301, line: 1244, baseType: !112, size: 128, offset: 18816)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !310, file: !301, line: 1245, baseType: !5559, size: 64, offset: 18944)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !301, line: 51, flags: DIFlagFwdDecl)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !310, file: !301, line: 1246, baseType: !682, size: 256, offset: 19008)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !310, file: !301, line: 1247, baseType: !19, size: 32, offset: 19264)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !310, file: !301, line: 1250, baseType: !3223, size: 64, offset: 19328)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !310, file: !301, line: 1251, baseType: !682, size: 256, offset: 19392)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !310, file: !301, line: 1252, baseType: !112, size: 128, offset: 19648)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !310, file: !301, line: 1259, baseType: !1783, size: 64, offset: 19776)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !310, file: !301, line: 1260, baseType: !887, size: 16, offset: 19840)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !310, file: !301, line: 1261, baseType: !887, size: 16, offset: 19856)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !310, file: !301, line: 1314, baseType: !5570, size: 64, offset: 19904)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5572, line: 62, size: 256, align: 256, elements: !5573)
!5572 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5573 = !{!5574, !5575, !5576, !5577, !5578, !5579, !5580}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5571, file: !5572, line: 75, baseType: !320, size: 32)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5571, file: !5572, line: 90, baseType: !320, size: 32, offset: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5571, file: !5572, line: 112, baseType: !378, size: 64, offset: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5571, file: !5572, line: 132, baseType: !320, size: 32, offset: 128)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5571, file: !5572, line: 140, baseType: !320, size: 32, offset: 160)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5571, file: !5572, line: 149, baseType: !320, size: 32, offset: 192)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5571, file: !5572, line: 154, baseType: !5581, offset: 224)
!5581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !1071)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !310, file: !301, line: 1315, baseType: !319, size: 32, offset: 19968)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !310, file: !301, line: 1316, baseType: !319, size: 32, offset: 20000)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !310, file: !301, line: 1321, baseType: !54, size: 64, offset: 20032)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !310, file: !301, line: 1325, baseType: !37, size: 32, offset: 20096)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !310, file: !301, line: 1326, baseType: !37, size: 32, offset: 20128)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !310, file: !301, line: 1327, baseType: !37, size: 32, offset: 20160)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !310, file: !301, line: 1328, baseType: !37, size: 32, offset: 20192)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !310, file: !301, line: 1329, baseType: !662, size: 128, align: 64, offset: 20224)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !310, file: !301, line: 1332, baseType: !5591, size: 128, offset: 20352)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5592, line: 51, size: 128, elements: !5593)
!5592 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5593 = !{!5594, !5599, !5600}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5591, file: !5592, line: 60, baseType: !5595, size: 64)
!5595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5596, line: 7, size: 64, elements: !5597)
!5596 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5597 = !{!5598}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5595, file: !5596, line: 12, baseType: !574, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5591, file: !5592, line: 63, baseType: !839, size: 8, offset: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5591, file: !5592, line: 70, baseType: !839, size: 8, offset: 72)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !310, file: !301, line: 1335, baseType: !4727, size: 64, offset: 20480)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !310, file: !301, line: 1337, baseType: !5603, size: 128, offset: 20544)
!5603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5592, line: 39, size: 128, elements: !5604)
!5604 = !{!5605, !5606, !5607}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5603, file: !5592, line: 40, baseType: !1580, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5603, file: !5592, line: 42, baseType: !320, size: 32, offset: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5603, file: !5592, line: 43, baseType: !320, size: 32, offset: 96)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !310, file: !301, line: 1340, baseType: !5609, size: 64, offset: 20672)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !301, line: 69, flags: DIFlagFwdDecl)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !310, file: !301, line: 1351, baseType: !37, size: 32, offset: 20736)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !310, file: !301, line: 1352, baseType: !37, size: 32, offset: 20768)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !310, file: !301, line: 1354, baseType: !54, size: 64, offset: 20800)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !310, file: !301, line: 1364, baseType: !377, size: 64, offset: 20864)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !310, file: !301, line: 1365, baseType: !377, size: 64, offset: 20928)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !310, file: !301, line: 1412, baseType: !54, size: 64, offset: 20992)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !310, file: !301, line: 1453, baseType: !5618, size: 64, offset: 21056)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !301, line: 1453, flags: DIFlagFwdDecl)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !310, file: !301, line: 1457, baseType: !5621, size: 64, offset: 21120)
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !271, line: 61, size: 576, elements: !5623)
!5623 = !{!5624, !5625, !5644, !5647, !5648, !5681, !5691}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5622, file: !271, line: 62, baseType: !270, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, scope: !5622, file: !271, line: 64, baseType: !5626, size: 192, offset: 64)
!5626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5622, file: !271, line: 64, size: 192, elements: !5627)
!5627 = !{!5628, !5639}
!5628 = !DIDerivedType(tag: DW_TAG_member, scope: !5626, file: !271, line: 65, baseType: !5629, size: 192)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5626, file: !271, line: 65, size: 192, elements: !5630)
!5630 = !{!5631, !5638}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5629, file: !271, line: 66, baseType: !5632, size: 128)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5633, line: 50, size: 128, elements: !5634)
!5633 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5634 = !{!5635, !5636, !5637}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5632, file: !5633, line: 52, baseType: !54, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5632, file: !5633, line: 54, baseType: !19, size: 32, offset: 64)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5632, file: !5633, line: 55, baseType: !19, size: 32, offset: 96)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5629, file: !271, line: 67, baseType: !54, size: 64, offset: 128)
!5639 = !DIDerivedType(tag: DW_TAG_member, scope: !5626, file: !271, line: 70, baseType: !5640, size: 192)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5626, file: !271, line: 70, size: 192, elements: !5641)
!5641 = !{!5642, !5643}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5640, file: !271, line: 71, baseType: !662, size: 128, align: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5640, file: !271, line: 72, baseType: !54, size: 64, offset: 128)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5622, file: !271, line: 76, baseType: !5645, size: 64, offset: 256)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !271, line: 76, flags: DIFlagFwdDecl)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5622, file: !271, line: 77, baseType: !54, size: 64, offset: 320)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5622, file: !271, line: 79, baseType: !5649, size: 64, offset: 384)
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5633, line: 25, size: 256, elements: !5651)
!5651 = !{!5652, !5658, !5662}
!5652 = !DIDerivedType(tag: DW_TAG_member, scope: !5650, file: !5633, line: 26, baseType: !5653, size: 128)
!5653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5650, file: !5633, line: 26, size: 128, elements: !5654)
!5654 = !{!5655, !5657}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5653, file: !5633, line: 27, baseType: !5656, size: 128)
!5656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !4490)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5653, file: !5633, line: 28, baseType: !5656, size: 128)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5650, file: !5633, line: 31, baseType: !5659, size: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5661)
!5661 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5633, line: 23, flags: DIFlagFwdDecl)
!5662 = !DIDerivedType(tag: DW_TAG_member, scope: !5650, file: !5633, line: 33, baseType: !5663, size: 64, offset: 192)
!5663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5650, file: !5633, line: 33, size: 64, elements: !5664)
!5664 = !{!5665, !5671, !5676}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5663, file: !5633, line: 38, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !5633, line: 34, size: 64, elements: !5667)
!5667 = !{!5668, !5669, !5670}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5666, file: !5633, line: 35, baseType: !851, size: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5666, file: !5633, line: 36, baseType: !98, size: 8, offset: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5666, file: !5633, line: 37, baseType: !98, size: 8, offset: 40)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5663, file: !5633, line: 42, baseType: !5672, size: 16)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !5633, line: 39, size: 16, elements: !5673)
!5673 = !{!5674, !5675}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5672, file: !5633, line: 40, baseType: !98, size: 8)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5672, file: !5633, line: 41, baseType: !98, size: 8, offset: 8)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5663, file: !5633, line: 46, baseType: !5677, size: 16)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !5633, line: 43, size: 16, elements: !5678)
!5678 = !{!5679, !5680}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5677, file: !5633, line: 44, baseType: !98, size: 8)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5677, file: !5633, line: 45, baseType: !98, size: 8, offset: 8)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5622, file: !271, line: 81, baseType: !5682, size: 64, offset: 448)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !271, line: 85, size: 384, elements: !5684)
!5684 = !{!5685, !5686, !5687, !5688, !5689, !5690}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5683, file: !271, line: 86, baseType: !5645, size: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5683, file: !271, line: 87, baseType: !54, size: 64, offset: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5683, file: !271, line: 88, baseType: !54, size: 64, offset: 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5683, file: !271, line: 89, baseType: !54, size: 64, offset: 192)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5683, file: !271, line: 90, baseType: !839, size: 8, offset: 256)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5683, file: !271, line: 92, baseType: !5682, size: 64, offset: 320)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5622, file: !271, line: 82, baseType: !19, size: 32, offset: 512)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !310, file: !301, line: 1463, baseType: !5693, offset: 21184)
!5693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !301, line: 739, elements: !647)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !310, file: !301, line: 1470, baseType: !662, size: 128, align: 64, offset: 21184)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !310, file: !301, line: 1471, baseType: !325, size: 32, offset: 21312)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !310, file: !301, line: 1472, baseType: !37, size: 32, offset: 21344)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !310, file: !301, line: 1474, baseType: !309, size: 64, offset: 21376)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !310, file: !301, line: 1475, baseType: !2549, size: 320, offset: 21440)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !310, file: !301, line: 1478, baseType: !5700, size: 64, offset: 21760)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !301, line: 1478, flags: DIFlagFwdDecl)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !310, file: !301, line: 1482, baseType: !325, size: 32, offset: 21824)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !310, file: !301, line: 1489, baseType: !35, size: 64, offset: 21888)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !310, file: !301, line: 1504, baseType: !35, size: 64, offset: 21952)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !310, file: !301, line: 1505, baseType: !378, size: 64, offset: 22016)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !310, file: !301, line: 1506, baseType: !377, size: 64, offset: 22080)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !310, file: !301, line: 1507, baseType: !378, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !310, file: !301, line: 1508, baseType: !378, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !310, file: !301, line: 1509, baseType: !378, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !310, file: !301, line: 1510, baseType: !662, size: 128, align: 64, offset: 22208)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !310, file: !301, line: 1511, baseType: !37, size: 32, offset: 22336)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !310, file: !301, line: 1515, baseType: !5713, size: 64, offset: 22400)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !339, line: 56, size: 64, elements: !5714)
!5714 = !{!5715}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5713, file: !339, line: 57, baseType: !342, size: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !310, file: !301, line: 1518, baseType: !5713, size: 64, offset: 22464)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !310, file: !301, line: 1528, baseType: !662, size: 128, align: 64, offset: 22528)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !310, file: !301, line: 1552, baseType: !5719, size: 35328, offset: 23040)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5720, line: 430, size: 35328, elements: !5721)
!5720 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5721 = !{!5722, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5749, !5750, !5751, !5752, !5753, !5754, !5766, !5767, !5768, !5769}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5719, file: !5720, line: 432, baseType: !5723, size: 192)
!5723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5724, size: 192, elements: !718)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5725, line: 16, size: 64, elements: !5726)
!5725 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5726 = !{!5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739}
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5724, file: !5725, line: 17, baseType: !108, size: 16)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5724, file: !5725, line: 18, baseType: !108, size: 16, offset: 16)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5724, file: !5725, line: 19, baseType: !108, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5724, file: !5725, line: 19, baseType: !108, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5724, file: !5725, line: 19, baseType: !108, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5724, file: !5725, line: 19, baseType: !108, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5724, file: !5725, line: 19, baseType: !108, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5724, file: !5725, line: 20, baseType: !108, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5724, file: !5725, line: 20, baseType: !108, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5724, file: !5725, line: 20, baseType: !108, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5724, file: !5725, line: 20, baseType: !108, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5724, file: !5725, line: 20, baseType: !108, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5724, file: !5725, line: 20, baseType: !108, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5719, file: !5720, line: 436, baseType: !54, size: 64, offset: 192)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5719, file: !5720, line: 440, baseType: !41, size: 16, offset: 256)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5719, file: !5720, line: 441, baseType: !41, size: 16, offset: 272)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5719, file: !5720, line: 442, baseType: !41, size: 16, offset: 288)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5719, file: !5720, line: 443, baseType: !41, size: 16, offset: 304)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5719, file: !5720, line: 447, baseType: !54, size: 64, offset: 320)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5719, file: !5720, line: 448, baseType: !54, size: 64, offset: 384)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5719, file: !5720, line: 459, baseType: !5748, size: 256, offset: 448)
!5748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 256, elements: !739)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5719, file: !5720, line: 461, baseType: !54, size: 64, offset: 704)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5719, file: !5720, line: 463, baseType: !54, size: 64, offset: 768)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5719, file: !5720, line: 465, baseType: !54, size: 64, offset: 832)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5719, file: !5720, line: 466, baseType: !54, size: 64, offset: 896)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5719, file: !5720, line: 467, baseType: !54, size: 64, offset: 960)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5719, file: !5720, line: 473, baseType: !5755, size: 64, offset: 1024)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5757, line: 8, size: 65664, elements: !5758)
!5757 = !DIFile(filename: "./arch/x86/include/asm/io_bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36640faa64453937c301d851a5713796")
!5758 = !{!5759, !5760, !5761, !5762}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5756, file: !5757, line: 9, baseType: !377, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5756, file: !5757, line: 10, baseType: !325, size: 32, offset: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5756, file: !5757, line: 12, baseType: !19, size: 32, offset: 96)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !5756, file: !5757, line: 13, baseType: !5763, size: 65536, offset: 128)
!5763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 65536, elements: !5764)
!5764 = !{!5765}
!5765 = !DISubrange(count: 1024)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5719, file: !5720, line: 480, baseType: !54, size: 64, offset: 1088)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5719, file: !5720, line: 482, baseType: !19, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5719, file: !5720, line: 491, baseType: !319, size: 32, offset: 1184)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5719, file: !5720, line: 501, baseType: !5770, size: 33792, offset: 1536)
!5770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !278, line: 448, size: 33792, elements: !5771)
!5771 = !{!5772, !5773, !5774, !5882, !5883, !5889, !5890}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5770, file: !278, line: 461, baseType: !19, size: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5770, file: !278, line: 468, baseType: !54, size: 64, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5770, file: !278, line: 476, baseType: !5775, size: 64, offset: 128)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !278, line: 356, size: 33280, align: 512, elements: !5777)
!5777 = !{!5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5776, file: !278, line: 358, baseType: !19, size: 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5776, file: !278, line: 361, baseType: !19, size: 32, offset: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5776, file: !278, line: 364, baseType: !377, size: 64, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5776, file: !278, line: 367, baseType: !377, size: 64, offset: 128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5776, file: !278, line: 370, baseType: !377, size: 64, offset: 192)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5776, file: !278, line: 373, baseType: !19, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5776, file: !278, line: 376, baseType: !19, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5776, file: !278, line: 391, baseType: !19, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5776, file: !278, line: 394, baseType: !19, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5776, file: !278, line: 397, baseType: !5788, size: 32768, offset: 512)
!5788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !278, line: 348, size: 32768, elements: !5789)
!5789 = !{!5790, !5805, !5842, !5867, !5880}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5788, file: !278, line: 349, baseType: !5791, size: 896)
!5791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !278, line: 12, size: 896, elements: !5792)
!5792 = !{!5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5804}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5791, file: !278, line: 13, baseType: !319, size: 32)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5791, file: !278, line: 14, baseType: !319, size: 32, offset: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5791, file: !278, line: 15, baseType: !319, size: 32, offset: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5791, file: !278, line: 16, baseType: !319, size: 32, offset: 96)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5791, file: !278, line: 17, baseType: !319, size: 32, offset: 128)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5791, file: !278, line: 18, baseType: !319, size: 32, offset: 160)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5791, file: !278, line: 19, baseType: !319, size: 32, offset: 192)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5791, file: !278, line: 22, baseType: !5801, size: 640, offset: 224)
!5801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 640, elements: !5802)
!5802 = !{!5803}
!5803 = !DISubrange(count: 20)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5791, file: !278, line: 25, baseType: !319, size: 32, offset: 864)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5788, file: !278, line: 350, baseType: !5806, size: 4096, align: 128)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !278, line: 34, size: 4096, align: 128, elements: !5807)
!5807 = !{!5808, !5809, !5810, !5811, !5812, !5827, !5828, !5829, !5831, !5833, !5837}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5806, file: !278, line: 35, baseType: !108, size: 16)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5806, file: !278, line: 36, baseType: !108, size: 16, offset: 16)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5806, file: !278, line: 37, baseType: !108, size: 16, offset: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5806, file: !278, line: 38, baseType: !108, size: 16, offset: 48)
!5812 = !DIDerivedType(tag: DW_TAG_member, scope: !5806, file: !278, line: 39, baseType: !5813, size: 128, offset: 64)
!5813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5806, file: !278, line: 39, size: 128, elements: !5814)
!5814 = !{!5815, !5820}
!5815 = !DIDerivedType(tag: DW_TAG_member, scope: !5813, file: !278, line: 40, baseType: !5816, size: 128)
!5816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5813, file: !278, line: 40, size: 128, elements: !5817)
!5817 = !{!5818, !5819}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5816, file: !278, line: 41, baseType: !377, size: 64)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5816, file: !278, line: 42, baseType: !377, size: 64, offset: 64)
!5820 = !DIDerivedType(tag: DW_TAG_member, scope: !5813, file: !278, line: 44, baseType: !5821, size: 128)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5813, file: !278, line: 44, size: 128, elements: !5822)
!5822 = !{!5823, !5824, !5825, !5826}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5821, file: !278, line: 45, baseType: !319, size: 32)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5821, file: !278, line: 46, baseType: !319, size: 32, offset: 32)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5821, file: !278, line: 47, baseType: !319, size: 32, offset: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5821, file: !278, line: 48, baseType: !319, size: 32, offset: 96)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5806, file: !278, line: 51, baseType: !319, size: 32, offset: 192)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5806, file: !278, line: 52, baseType: !319, size: 32, offset: 224)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5806, file: !278, line: 55, baseType: !5830, size: 1024, offset: 256)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 1024, elements: !4481)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5806, file: !278, line: 58, baseType: !5832, size: 2048, offset: 1280)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2048, elements: !1499)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5806, file: !278, line: 60, baseType: !5834, size: 384, offset: 3328)
!5834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !5835)
!5835 = !{!5836}
!5836 = !DISubrange(count: 12)
!5837 = !DIDerivedType(tag: DW_TAG_member, scope: !5806, file: !278, line: 62, baseType: !5838, size: 384, offset: 3712)
!5838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5806, file: !278, line: 62, size: 384, elements: !5839)
!5839 = !{!5840, !5841}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5838, file: !278, line: 63, baseType: !5834, size: 384)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5838, file: !278, line: 64, baseType: !5834, size: 384)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5788, file: !278, line: 351, baseType: !5843, size: 1088)
!5843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !278, line: 79, size: 1088, elements: !5844)
!5844 = !{!5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5866}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5843, file: !278, line: 80, baseType: !319, size: 32)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5843, file: !278, line: 81, baseType: !319, size: 32, offset: 32)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5843, file: !278, line: 82, baseType: !319, size: 32, offset: 64)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5843, file: !278, line: 83, baseType: !319, size: 32, offset: 96)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5843, file: !278, line: 84, baseType: !319, size: 32, offset: 128)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5843, file: !278, line: 85, baseType: !319, size: 32, offset: 160)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5843, file: !278, line: 86, baseType: !319, size: 32, offset: 192)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5843, file: !278, line: 88, baseType: !5801, size: 640, offset: 224)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5843, file: !278, line: 89, baseType: !98, size: 8, offset: 864)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5843, file: !278, line: 90, baseType: !98, size: 8, offset: 872)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5843, file: !278, line: 91, baseType: !98, size: 8, offset: 880)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5843, file: !278, line: 92, baseType: !98, size: 8, offset: 888)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5843, file: !278, line: 93, baseType: !98, size: 8, offset: 896)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5843, file: !278, line: 94, baseType: !98, size: 8, offset: 904)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5843, file: !278, line: 95, baseType: !5860, size: 64, offset: 960)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5862, line: 11, size: 128, elements: !5863)
!5862 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5863 = !{!5864, !5865}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5861, file: !5862, line: 12, baseType: !1064, size: 64)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5861, file: !5862, line: 13, baseType: !3747, size: 64, offset: 64)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5843, file: !278, line: 96, baseType: !319, size: 32, offset: 1024)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5788, file: !278, line: 352, baseType: !5868, size: 4608, align: 512)
!5868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !278, line: 333, size: 4608, align: 512, elements: !5869)
!5869 = !{!5870, !5871, !5878}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5868, file: !278, line: 334, baseType: !5806, size: 4096, align: 128)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5868, file: !278, line: 335, baseType: !5872, size: 512, offset: 4096)
!5872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !278, line: 312, size: 512, elements: !5873)
!5873 = !{!5874, !5875, !5876}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5872, file: !278, line: 313, baseType: !377, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5872, file: !278, line: 314, baseType: !377, size: 64, offset: 64)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5872, file: !278, line: 315, baseType: !5877, size: 384, offset: 128)
!5877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 384, elements: !905)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5868, file: !278, line: 336, baseType: !5879, offset: 4608)
!5879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1071)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5788, file: !278, line: 353, baseType: !5881, size: 32768)
!5881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !2779)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5770, file: !278, line: 484, baseType: !5775, size: 64, offset: 192)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5770, file: !278, line: 491, baseType: !5884, size: 128, offset: 256)
!5884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !278, line: 404, size: 128, elements: !5885)
!5885 = !{!5886, !5887, !5888}
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5884, file: !278, line: 424, baseType: !377, size: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5884, file: !278, line: 432, baseType: !19, size: 32, offset: 64)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5884, file: !278, line: 440, baseType: !19, size: 32, offset: 96)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5770, file: !278, line: 498, baseType: !5884, size: 128, offset: 384)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5770, file: !278, line: 508, baseType: !5776, size: 33280, align: 512, offset: 512)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_vm86_regs", file: !5893, line: 17, size: 1472, elements: !5894)
!5893 = !DIFile(filename: "./arch/x86/include/asm/vm86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "100380b440163c1804bcaac821be6c4c")
!5894 = !{!5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !5892, file: !5893, line: 21, baseType: !3748, size: 1344)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5892, file: !5893, line: 25, baseType: !41, size: 16, offset: 1344)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "__esh", scope: !5892, file: !5893, line: 25, baseType: !41, size: 16, offset: 1360)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5892, file: !5893, line: 26, baseType: !41, size: 16, offset: 1376)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "__dsh", scope: !5892, file: !5893, line: 26, baseType: !41, size: 16, offset: 1392)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !5892, file: !5893, line: 27, baseType: !41, size: 16, offset: 1408)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "__fsh", scope: !5892, file: !5893, line: 27, baseType: !41, size: 16, offset: 1424)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !5892, file: !5893, line: 28, baseType: !41, size: 16, offset: 1440)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "__gsh", scope: !5892, file: !5893, line: 28, baseType: !41, size: 16, offset: 1456)
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!5905 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !40, line: 42, baseType: !54)
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1064)
!5909 = !{!0, !8, !13, !5910, !5912, !5917, !5920, !5922, !5925, !5928, !5939, !5941, !5943, !5948, !5962, !5965}
!5910 = !DIGlobalVariableExpression(var: !5911, expr: !DIExpression())
!5911 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !3, isLocal: true, isDefinition: true)
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !5914, isLocal: true, isDefinition: true)
!5914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 456, elements: !5915)
!5915 = !{!5916}
!5916 = !DISubrange(count: 57)
!5917 = !DIGlobalVariableExpression(var: !5918, expr: !DIExpression())
!5918 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !5919, isLocal: true, isDefinition: true)
!5919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !718)
!5920 = !DIGlobalVariableExpression(var: !5921, expr: !DIExpression())
!5921 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !5919, isLocal: true, isDefinition: true)
!5922 = !DIGlobalVariableExpression(var: !5923, expr: !DIExpression())
!5923 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !5924, isLocal: true, isDefinition: true)
!5924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 56, elements: !2440)
!5925 = !DIGlobalVariableExpression(var: !5926, expr: !DIExpression())
!5926 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !5927, isLocal: true, isDefinition: true)
!5927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !739)
!5928 = !DIGlobalVariableExpression(var: !5929, expr: !DIExpression())
!5929 = distinct !DIGlobalVariable(name: "__setup_strict_sas_size", scope: !15, file: !2, line: 369, type: !5930, isLocal: true, isDefinition: true, align: 64)
!5930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !5931, line: 324, size: 192, elements: !5932)
!5931 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5932 = !{!5933, !5934, !5938}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5930, file: !5931, line: 325, baseType: !33, size: 64)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !5930, file: !5931, line: 326, baseType: !5935, size: 64, offset: 64)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!37, !927}
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !5930, file: !5931, line: 327, baseType: !37, size: 32, offset: 128)
!5939 = !DIGlobalVariableExpression(var: !5940, expr: !DIExpression())
!5940 = distinct !DIGlobalVariable(name: "max_frame_size", scope: !15, file: !2, line: 184, type: !54, isLocal: true, isDefinition: true)
!5941 = !DIGlobalVariableExpression(var: !5942, expr: !DIExpression())
!5942 = distinct !DIGlobalVariable(name: "fpu_default_state_size", scope: !15, file: !2, line: 185, type: !19, isLocal: true, isDefinition: true)
!5943 = !DIGlobalVariableExpression(var: !5944, expr: !DIExpression())
!5944 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !5945, isLocal: true, isDefinition: true)
!5945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 272, elements: !5946)
!5946 = !{!5947}
!5947 = !DISubrange(count: 34)
!5948 = !DIGlobalVariableExpression(var: !5949, expr: !DIExpression())
!5949 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule147", scope: !5950, file: !301, line: 2368, type: !35, isLocal: true, isDefinition: true)
!5950 = distinct !DISubprogram(name: "rseq_signal_deliver", scope: !301, file: !301, line: 2363, type: !5951, scopeLine: 2365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5959)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{null, !5953, !3747}
!5953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5954, size: 64)
!5954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ksignal", file: !5162, line: 67, size: 704, elements: !5955)
!5955 = !{!5956, !5957, !5958}
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "ka", scope: !5954, file: !5162, line: 68, baseType: !5355, size: 256)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5954, file: !5162, line: 69, baseType: !5441, size: 384, offset: 256)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5954, file: !5162, line: 70, baseType: !37, size: 32, offset: 640)
!5959 = !{!5960, !5961}
!5960 = !DILocalVariable(name: "ksig", arg: 1, scope: !5950, file: !301, line: 2363, type: !5953)
!5961 = !DILocalVariable(name: "regs", arg: 2, scope: !5950, file: !301, line: 2364, type: !3747)
!5962 = !DIGlobalVariableExpression(var: !5963, expr: !DIExpression())
!5963 = distinct !DIGlobalVariable(name: "__setup_str_strict_sas_size", scope: !15, file: !2, line: 369, type: !5964, isLocal: true, isDefinition: true, align: 8)
!5964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4490)
!5965 = !DIGlobalVariableExpression(var: !5966, expr: !DIExpression())
!5966 = distinct !DIGlobalVariable(name: "strict_sigaltstack_size", scope: !15, file: !2, line: 362, type: !839, isLocal: true, isDefinition: true)
!5967 = !{!"rsp"}
!5968 = !{i32 7, !"Dwarf Version", i32 5}
!5969 = !{i32 2, !"Debug Info Version", i32 3}
!5970 = !{i32 1, !"wchar_size", i32 2}
!5971 = !{i32 8, !"cf-protection-branch", i32 1}
!5972 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5973 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5974 = !{i32 1, !"Code Model", i32 2}
!5975 = !{i32 1, !"override-stack-alignment", i32 8}
!5976 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5977 = distinct !DISubprogram(name: "get_sigframe", scope: !2, file: !2, line: 75, type: !5978, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !5980)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!35, !5953, !3747, !50, !1958}
!5980 = !{!5981, !5982, !5983, !5984, !5985, !5987, !5988, !5989, !5990, !5991, !5992, !5993}
!5981 = !DILocalVariable(name: "ksig", arg: 1, scope: !5977, file: !2, line: 75, type: !5953)
!5982 = !DILocalVariable(name: "regs", arg: 2, scope: !5977, file: !2, line: 75, type: !3747)
!5983 = !DILocalVariable(name: "frame_size", arg: 3, scope: !5977, file: !2, line: 75, type: !50)
!5984 = !DILocalVariable(name: "fpstate", arg: 4, scope: !5977, file: !2, line: 76, type: !1958)
!5985 = !DILocalVariable(name: "ka", scope: !5977, file: !2, line: 78, type: !5986)
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5987 = !DILocalVariable(name: "ia32_frame", scope: !5977, file: !2, line: 79, type: !37)
!5988 = !DILocalVariable(name: "nested_altstack", scope: !5977, file: !2, line: 81, type: !839)
!5989 = !DILocalVariable(name: "entering_altstack", scope: !5977, file: !2, line: 82, type: !839)
!5990 = !DILocalVariable(name: "math_size", scope: !5977, file: !2, line: 83, type: !54)
!5991 = !DILocalVariable(name: "sp", scope: !5977, file: !2, line: 84, type: !54)
!5992 = !DILocalVariable(name: "buf_fx", scope: !5977, file: !2, line: 85, type: !54)
!5993 = !DILocalVariable(name: "pkru", scope: !5977, file: !2, line: 86, type: !319)
!5994 = !DILocation(line: 75, column: 30, scope: !5977)
!5995 = !DILocation(line: 75, column: 52, scope: !5977)
!5996 = !DILocation(line: 75, column: 65, scope: !5977)
!5997 = !DILocation(line: 76, column: 21, scope: !5977)
!5998 = !DILocation(line: 78, column: 2, scope: !5977)
!5999 = !DILocation(line: 78, column: 22, scope: !5977)
!6000 = !DILocation(line: 78, column: 28, scope: !5977)
!6001 = !DILocation(line: 78, column: 34, scope: !5977)
!6002 = !DILocation(line: 79, column: 2, scope: !5977)
!6003 = !DILocation(line: 79, column: 6, scope: !5977)
!6004 = !DILocation(line: 79, column: 33, scope: !5977)
!6005 = !DILocation(line: 79, column: 19, scope: !5977)
!6006 = !DILocation(line: 81, column: 2, scope: !5977)
!6007 = !DILocation(line: 81, column: 7, scope: !5977)
!6008 = !DILocation(line: 81, column: 38, scope: !5977)
!6009 = !DILocation(line: 81, column: 44, scope: !5977)
!6010 = !DILocation(line: 81, column: 25, scope: !5977)
!6011 = !DILocation(line: 82, column: 2, scope: !5977)
!6012 = !DILocation(line: 82, column: 7, scope: !5977)
!6013 = !DILocation(line: 83, column: 2, scope: !5977)
!6014 = !DILocation(line: 83, column: 16, scope: !5977)
!6015 = !DILocation(line: 84, column: 2, scope: !5977)
!6016 = !DILocation(line: 84, column: 16, scope: !5977)
!6017 = !DILocation(line: 84, column: 21, scope: !5977)
!6018 = !DILocation(line: 84, column: 27, scope: !5977)
!6019 = !DILocation(line: 85, column: 2, scope: !5977)
!6020 = !DILocation(line: 85, column: 16, scope: !5977)
!6021 = !DILocation(line: 86, column: 2, scope: !5977)
!6022 = !DILocation(line: 86, column: 6, scope: !5977)
!6023 = !DILocation(line: 86, column: 13, scope: !5977)
!6024 = !DILocation(line: 89, column: 7, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 89, column: 6)
!6026 = !DILocation(line: 89, column: 6, scope: !5977)
!6027 = !DILocation(line: 90, column: 6, scope: !6025)
!6028 = !DILocation(line: 90, column: 3, scope: !6025)
!6029 = !DILocation(line: 93, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 93, column: 6)
!6031 = !DILocation(line: 93, column: 10, scope: !6030)
!6032 = !DILocation(line: 93, column: 13, scope: !6030)
!6033 = !DILocation(line: 93, column: 22, scope: !6030)
!6034 = !DILocation(line: 93, column: 6, scope: !5977)
!6035 = !DILocation(line: 99, column: 20, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 99, column: 7)
!6037 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 93, column: 36)
!6038 = !DILocation(line: 99, column: 7, scope: !6036)
!6039 = !DILocation(line: 99, column: 24, scope: !6036)
!6040 = !DILocation(line: 99, column: 7, scope: !6037)
!6041 = !DILocation(line: 100, column: 9, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6036, file: !2, line: 99, column: 30)
!6043 = !DILocation(line: 100, column: 18, scope: !6042)
!6044 = !DILocation(line: 100, column: 30, scope: !6042)
!6045 = !DILocation(line: 100, column: 39, scope: !6042)
!6046 = !DILocation(line: 100, column: 28, scope: !6042)
!6047 = !DILocation(line: 100, column: 7, scope: !6042)
!6048 = !DILocation(line: 101, column: 22, scope: !6042)
!6049 = !DILocation(line: 102, column: 3, scope: !6042)
!6050 = !DILocation(line: 103, column: 2, scope: !6037)
!6051 = !DILocation(line: 103, column: 13, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 103, column: 13)
!6053 = !DILocation(line: 103, column: 24, scope: !6052)
!6054 = !DILocation(line: 104, column: 7, scope: !6052)
!6055 = !{i8 0, i8 2}
!6056 = !DILocation(line: 104, column: 23, scope: !6052)
!6057 = !DILocation(line: 105, column: 6, scope: !6052)
!6058 = !DILocation(line: 105, column: 12, scope: !6052)
!6059 = !DILocation(line: 105, column: 15, scope: !6052)
!6060 = !DILocation(line: 105, column: 28, scope: !6052)
!6061 = !DILocation(line: 106, column: 8, scope: !6052)
!6062 = !DILocation(line: 106, column: 12, scope: !6052)
!6063 = !DILocation(line: 106, column: 15, scope: !6052)
!6064 = !DILocation(line: 106, column: 24, scope: !6052)
!6065 = !DILocation(line: 106, column: 39, scope: !6052)
!6066 = !DILocation(line: 107, column: 6, scope: !6052)
!6067 = !DILocation(line: 107, column: 10, scope: !6052)
!6068 = !DILocation(line: 107, column: 13, scope: !6052)
!6069 = !DILocation(line: 103, column: 13, scope: !6030)
!6070 = !DILocation(line: 109, column: 24, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 107, column: 26)
!6072 = !DILocation(line: 109, column: 28, scope: !6071)
!6073 = !DILocation(line: 109, column: 31, scope: !6071)
!6074 = !DILocation(line: 109, column: 8, scope: !6071)
!6075 = !DILocation(line: 109, column: 6, scope: !6071)
!6076 = !DILocation(line: 110, column: 21, scope: !6071)
!6077 = !DILocation(line: 111, column: 2, scope: !6071)
!6078 = !DILocation(line: 113, column: 28, scope: !5977)
!6079 = !DILocation(line: 113, column: 32, scope: !5977)
!6080 = !DILocation(line: 113, column: 7, scope: !5977)
!6081 = !DILocation(line: 113, column: 5, scope: !5977)
!6082 = !DILocation(line: 114, column: 28, scope: !5977)
!6083 = !DILocation(line: 114, column: 13, scope: !5977)
!6084 = !DILocation(line: 114, column: 3, scope: !5977)
!6085 = !DILocation(line: 114, column: 11, scope: !5977)
!6086 = !DILocation(line: 116, column: 8, scope: !5977)
!6087 = !DILocation(line: 116, column: 5, scope: !5977)
!6088 = !DILocation(line: 118, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 118, column: 6)
!6090 = !DILocation(line: 118, column: 6, scope: !5977)
!6091 = !DILocation(line: 123, column: 10, scope: !6089)
!6092 = !DILocation(line: 123, column: 13, scope: !6089)
!6093 = !DILocation(line: 123, column: 18, scope: !6089)
!6094 = !DILocation(line: 123, column: 38, scope: !6089)
!6095 = !DILocation(line: 123, column: 6, scope: !6089)
!6096 = !DILocation(line: 123, column: 3, scope: !6089)
!6097 = !DILocation(line: 125, column: 8, scope: !6089)
!6098 = !DILocation(line: 125, column: 40, scope: !6089)
!6099 = !DILocation(line: 125, column: 6, scope: !6089)
!6100 = !DILocation(line: 131, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 131, column: 6)
!6102 = !DILocation(line: 0, scope: !6101)
!6103 = !DILocation(line: 131, column: 6, scope: !5977)
!6104 = !DILocation(line: 134, column: 7, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !2, line: 134, column: 7)
!6106 = distinct !DILexicalBlock(scope: !6101, file: !2, line: 132, column: 30)
!6107 = !DILocation(line: 134, column: 30, scope: !6105)
!6108 = !DILocation(line: 134, column: 33, scope: !6105)
!6109 = !DILocation(line: 134, column: 7, scope: !6106)
!6110 = !DILocation(line: 135, column: 4, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6105, file: !2, line: 135, column: 4)
!6112 = !DILocation(line: 135, column: 4, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6111, file: !2, line: 135, column: 4)
!6114 = !DILocation(line: 135, column: 4, scope: !6105)
!6115 = !DILocation(line: 138, column: 3, scope: !6106)
!6116 = !DILocation(line: 142, column: 33, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 142, column: 6)
!6118 = !DILocation(line: 142, column: 32, scope: !6117)
!6119 = !DILocation(line: 142, column: 57, scope: !6117)
!6120 = !DILocation(line: 142, column: 42, scope: !6117)
!6121 = !DILocation(line: 142, column: 65, scope: !6117)
!6122 = !DILocation(line: 142, column: 76, scope: !6117)
!6123 = !DILocation(line: 142, column: 7, scope: !6117)
!6124 = !DILocation(line: 142, column: 6, scope: !5977)
!6125 = !DILocation(line: 143, column: 3, scope: !6117)
!6126 = !DILocation(line: 145, column: 24, scope: !5977)
!6127 = !DILocation(line: 145, column: 9, scope: !5977)
!6128 = !DILocation(line: 145, column: 2, scope: !5977)
!6129 = !DILocation(line: 146, column: 1, scope: !5977)
!6130 = distinct !DISubprogram(name: "is_ia32_frame", scope: !2, file: !2, line: 51, type: !6131, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6133)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!37, !5953}
!6133 = !{!6134}
!6134 = !DILocalVariable(name: "ksig", arg: 1, scope: !6130, file: !2, line: 51, type: !5953)
!6135 = !DILocation(line: 51, column: 49, scope: !6130)
!6136 = !DILocation(line: 53, column: 59, scope: !6130)
!6137 = !DILocation(line: 53, column: 38, scope: !6130)
!6138 = !DILocation(line: 53, column: 35, scope: !6130)
!6139 = !DILocation(line: 53, column: 2, scope: !6130)
!6140 = distinct !DISubprogram(name: "on_sig_stack", scope: !5151, file: !5151, line: 594, type: !6141, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6143)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!37, !54}
!6143 = !{!6144}
!6144 = !DILocalVariable(name: "sp", arg: 1, scope: !6140, file: !5151, line: 594, type: !54)
!6145 = !DILocation(line: 594, column: 46, scope: !6140)
!6146 = !DILocation(line: 605, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6140, file: !5151, line: 605, column: 6)
!6148 = !DILocation(line: 605, column: 15, scope: !6147)
!6149 = !DILocation(line: 605, column: 28, scope: !6147)
!6150 = !DILocation(line: 605, column: 6, scope: !6140)
!6151 = !DILocation(line: 606, column: 3, scope: !6147)
!6152 = !DILocation(line: 608, column: 24, scope: !6140)
!6153 = !DILocation(line: 608, column: 9, scope: !6140)
!6154 = !DILocation(line: 608, column: 2, scope: !6140)
!6155 = !DILocation(line: 609, column: 1, scope: !6140)
!6156 = distinct !DISubprogram(name: "read_pkru", scope: !6157, file: !6157, line: 35, type: !6158, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6157 = !DIFile(filename: "./arch/x86/include/asm/pkru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2bd5557a297a9216b707ab767181409")
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!319}
!6160 = !DILocation(line: 37, column: 6, scope: !6156)
!6161 = !DILocation(line: 37, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6156, file: !6157, line: 37, column: 6)
!6163 = !DILocation(line: 38, column: 10, scope: !6162)
!6164 = !DILocation(line: 38, column: 3, scope: !6162)
!6165 = !DILocation(line: 39, column: 2, scope: !6156)
!6166 = !DILocation(line: 40, column: 1, scope: !6156)
!6167 = distinct !DISubprogram(name: "sas_ss_flags", scope: !5151, file: !5151, line: 611, type: !6141, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6168)
!6168 = !{!6169}
!6169 = !DILocalVariable(name: "sp", arg: 1, scope: !6167, file: !5151, line: 611, type: !54)
!6170 = !DILocation(line: 611, column: 46, scope: !6167)
!6171 = !DILocation(line: 613, column: 7, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6167, file: !5151, line: 613, column: 6)
!6173 = !DILocation(line: 613, column: 16, scope: !6172)
!6174 = !DILocation(line: 613, column: 6, scope: !6167)
!6175 = !DILocation(line: 614, column: 3, scope: !6172)
!6176 = !DILocation(line: 616, column: 22, scope: !6167)
!6177 = !DILocation(line: 616, column: 9, scope: !6167)
!6178 = !DILocation(line: 616, column: 2, scope: !6167)
!6179 = !DILocation(line: 617, column: 1, scope: !6167)
!6180 = distinct !DISubprogram(name: "get_current", scope: !6181, file: !6181, line: 39, type: !6182, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6184)
!6181 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!309}
!6184 = !{!6185, !6187, !6189}
!6185 = !DILocalVariable(name: "pscr_ret__", scope: !6186, file: !6181, line: 41, type: !309)
!6186 = distinct !DILexicalBlock(scope: !6180, file: !6181, line: 41, column: 9)
!6187 = !DILocalVariable(name: "__vpp_verify", scope: !6188, file: !6181, line: 41, type: !2136)
!6188 = distinct !DILexicalBlock(scope: !6186, file: !6181, line: 41, column: 9)
!6189 = !DILocalVariable(name: "pfo_val__", scope: !6190, file: !6181, line: 41, type: !377)
!6190 = distinct !DILexicalBlock(scope: !6186, file: !6181, line: 41, column: 9)
!6191 = !DILocation(line: 41, column: 9, scope: !6186)
!6192 = !DILocation(line: 41, column: 9, scope: !6188)
!6193 = !DILocation(line: 41, column: 9, scope: !6190)
!6194 = !{i64 2148200607}
!6195 = !DILocation(line: 41, column: 9, scope: !6180)
!6196 = !DILocation(line: 41, column: 2, scope: !6180)
!6197 = !DISubprogram(name: "fpu__alloc_mathframe", scope: !6198, file: !6198, line: 27, type: !6199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6198 = !DIFile(filename: "./arch/x86/include/asm/fpu/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "754864fa967f893fd03b99839091f816")
!6199 = !DISubroutineType(types: !6200)
!6200 = !{!54, !54, !37, !307, !307}
!6201 = distinct !DISubprogram(name: "__on_sig_stack", scope: !5151, file: !5151, line: 580, type: !6141, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6202)
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "sp", arg: 1, scope: !6201, file: !5151, line: 580, type: !54)
!6204 = !DILocation(line: 580, column: 48, scope: !6201)
!6205 = !DILocation(line: 586, column: 9, scope: !6201)
!6206 = !DILocation(line: 586, column: 14, scope: !6201)
!6207 = !DILocation(line: 586, column: 23, scope: !6201)
!6208 = !DILocation(line: 586, column: 12, scope: !6201)
!6209 = !DILocation(line: 586, column: 33, scope: !6201)
!6210 = !DILocation(line: 587, column: 3, scope: !6201)
!6211 = !DILocation(line: 587, column: 8, scope: !6201)
!6212 = !DILocation(line: 587, column: 17, scope: !6201)
!6213 = !DILocation(line: 587, column: 6, scope: !6201)
!6214 = !DILocation(line: 587, column: 30, scope: !6201)
!6215 = !DILocation(line: 587, column: 39, scope: !6201)
!6216 = !DILocation(line: 587, column: 27, scope: !6201)
!6217 = !DILocation(line: 0, scope: !6201)
!6218 = !DILocation(line: 586, column: 2, scope: !6201)
!6219 = !DISubprogram(name: "__printk_ratelimit", scope: !6220, file: !6220, line: 175, type: !6221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6220 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!37, !33}
!6223 = !DISubprogram(name: "_printk", scope: !6220, file: !6220, line: 153, type: !6224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!37, !33, null}
!6226 = distinct !DISubprogram(name: "task_pid_nr", scope: !301, file: !301, line: 1580, type: !6227, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6229)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{!5038, !309}
!6229 = !{!6230}
!6230 = !DILocalVariable(name: "tsk", arg: 1, scope: !6226, file: !301, line: 1580, type: !309)
!6231 = !DILocation(line: 1580, column: 53, scope: !6226)
!6232 = !DILocation(line: 1582, column: 9, scope: !6226)
!6233 = !DILocation(line: 1582, column: 14, scope: !6226)
!6234 = !DILocation(line: 1582, column: 2, scope: !6226)
!6235 = !DISubprogram(name: "copy_fpstate_to_sigframe", scope: !6198, file: !6198, line: 32, type: !6236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!839, !35, !35, !37, !319}
!6238 = distinct !DISubprogram(name: "__initstub__kmod_signal__315_201_init_sigframe_sizeearly", scope: !2, file: !2, line: 201, type: !2420, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6239 = !DILocation(line: 201, column: 1, scope: !6238)
!6240 = distinct !DISubprogram(name: "init_sigframe_size", scope: !2, file: !2, line: 187, type: !2420, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6241 = !DILocation(line: 189, column: 27, scope: !6240)
!6242 = !DILocation(line: 189, column: 25, scope: !6240)
!6243 = !DILocation(line: 191, column: 17, scope: !6240)
!6244 = !DILocation(line: 193, column: 20, scope: !6240)
!6245 = !DILocation(line: 193, column: 43, scope: !6240)
!6246 = !DILocation(line: 193, column: 17, scope: !6240)
!6247 = !DILocation(line: 196, column: 19, scope: !6240)
!6248 = !DILocation(line: 196, column: 17, scope: !6240)
!6249 = !DILocation(line: 198, column: 2, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6240, file: !2, line: 198, column: 2)
!6251 = !DILocation(line: 198, column: 2, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6250, file: !2, line: 198, column: 2)
!6253 = !DILocation(line: 199, column: 2, scope: !6240)
!6254 = distinct !DISubprogram(name: "get_sigframe_size", scope: !2, file: !2, line: 203, type: !6255, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!54}
!6257 = !DILocation(line: 205, column: 9, scope: !6254)
!6258 = !DILocation(line: 205, column: 2, scope: !6254)
!6259 = distinct !DISubprogram(name: "arch_do_signal_or_restart", scope: !2, file: !2, line: 306, type: !6260, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{null, !3747}
!6262 = !{!6263, !6264}
!6263 = !DILocalVariable(name: "regs", arg: 1, scope: !6259, file: !2, line: 306, type: !3747)
!6264 = !DILocalVariable(name: "ksig", scope: !6259, file: !2, line: 308, type: !5954)
!6265 = !DILocation(line: 306, column: 48, scope: !6259)
!6266 = !DILocation(line: 308, column: 2, scope: !6259)
!6267 = !DILocation(line: 308, column: 17, scope: !6259)
!6268 = !DILocation(line: 310, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 310, column: 6)
!6270 = !DILocation(line: 310, column: 6, scope: !6259)
!6271 = !DILocation(line: 312, column: 24, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6269, file: !2, line: 310, column: 25)
!6273 = !DILocation(line: 312, column: 3, scope: !6272)
!6274 = !DILocation(line: 313, column: 3, scope: !6272)
!6275 = !DILocation(line: 317, column: 21, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 317, column: 6)
!6277 = !DILocation(line: 317, column: 30, scope: !6276)
!6278 = !DILocation(line: 317, column: 6, scope: !6276)
!6279 = !DILocation(line: 317, column: 36, scope: !6276)
!6280 = !DILocation(line: 317, column: 6, scope: !6259)
!6281 = !DILocation(line: 319, column: 29, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6276, file: !2, line: 317, column: 43)
!6283 = !DILocation(line: 319, column: 38, scope: !6282)
!6284 = !DILocation(line: 319, column: 11, scope: !6282)
!6285 = !DILocation(line: 319, column: 3, scope: !6282)
!6286 = !DILocation(line: 323, column: 15, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 319, column: 45)
!6288 = !DILocation(line: 323, column: 21, scope: !6287)
!6289 = !DILocation(line: 323, column: 4, scope: !6287)
!6290 = !DILocation(line: 323, column: 10, scope: !6287)
!6291 = !DILocation(line: 323, column: 13, scope: !6287)
!6292 = !DILocation(line: 324, column: 4, scope: !6287)
!6293 = !DILocation(line: 324, column: 10, scope: !6287)
!6294 = !DILocation(line: 324, column: 13, scope: !6287)
!6295 = !DILocation(line: 325, column: 4, scope: !6287)
!6296 = !DILocation(line: 328, column: 38, scope: !6287)
!6297 = !DILocation(line: 328, column: 15, scope: !6287)
!6298 = !DILocation(line: 328, column: 4, scope: !6287)
!6299 = !DILocation(line: 328, column: 10, scope: !6287)
!6300 = !DILocation(line: 328, column: 13, scope: !6287)
!6301 = !DILocation(line: 329, column: 4, scope: !6287)
!6302 = !DILocation(line: 329, column: 10, scope: !6287)
!6303 = !DILocation(line: 329, column: 13, scope: !6287)
!6304 = !DILocation(line: 330, column: 4, scope: !6287)
!6305 = !DILocation(line: 332, column: 2, scope: !6282)
!6306 = !DILocation(line: 338, column: 2, scope: !6259)
!6307 = !DILocation(line: 339, column: 1, scope: !6259)
!6308 = !DISubprogram(name: "get_signal", scope: !6309, file: !6309, line: 292, type: !6310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6309 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!839, !5953}
!6312 = distinct !DISubprogram(name: "handle_signal", scope: !2, file: !2, line: 228, type: !5951, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6313)
!6313 = !{!6314, !6315, !6316, !6317, !6318}
!6314 = !DILocalVariable(name: "ksig", arg: 1, scope: !6312, file: !2, line: 228, type: !5953)
!6315 = !DILocalVariable(name: "regs", arg: 2, scope: !6312, file: !2, line: 228, type: !3747)
!6316 = !DILocalVariable(name: "stepping", scope: !6312, file: !2, line: 230, type: !839)
!6317 = !DILocalVariable(name: "failed", scope: !6312, file: !2, line: 230, type: !839)
!6318 = !DILocalVariable(name: "fpu", scope: !6312, file: !2, line: 231, type: !6319)
!6319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!6320 = !DILocation(line: 228, column: 31, scope: !6312)
!6321 = !DILocation(line: 228, column: 53, scope: !6312)
!6322 = !DILocation(line: 230, column: 2, scope: !6312)
!6323 = !DILocation(line: 230, column: 7, scope: !6312)
!6324 = !DILocation(line: 230, column: 17, scope: !6312)
!6325 = !DILocation(line: 231, column: 2, scope: !6312)
!6326 = !DILocation(line: 231, column: 14, scope: !6312)
!6327 = !DILocation(line: 231, column: 21, scope: !6312)
!6328 = !DILocation(line: 231, column: 30, scope: !6312)
!6329 = !DILocation(line: 231, column: 37, scope: !6312)
!6330 = !DILocation(line: 233, column: 17, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6312, file: !2, line: 233, column: 6)
!6332 = !DILocation(line: 233, column: 6, scope: !6331)
!6333 = !DILocation(line: 233, column: 6, scope: !6312)
!6334 = !DILocation(line: 234, column: 46, scope: !6331)
!6335 = !DILocation(line: 234, column: 3, scope: !6331)
!6336 = !DILocation(line: 237, column: 21, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6312, file: !2, line: 237, column: 6)
!6338 = !DILocation(line: 237, column: 30, scope: !6337)
!6339 = !DILocation(line: 237, column: 6, scope: !6337)
!6340 = !DILocation(line: 237, column: 36, scope: !6337)
!6341 = !DILocation(line: 237, column: 6, scope: !6312)
!6342 = !DILocation(line: 239, column: 29, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6337, file: !2, line: 237, column: 43)
!6344 = !DILocation(line: 239, column: 38, scope: !6343)
!6345 = !DILocation(line: 239, column: 11, scope: !6343)
!6346 = !DILocation(line: 239, column: 3, scope: !6343)
!6347 = !DILocation(line: 242, column: 4, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 239, column: 45)
!6349 = !DILocation(line: 242, column: 10, scope: !6348)
!6350 = !DILocation(line: 242, column: 13, scope: !6348)
!6351 = !DILocation(line: 243, column: 4, scope: !6348)
!6352 = !DILocation(line: 246, column: 10, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 246, column: 8)
!6354 = !DILocation(line: 246, column: 16, scope: !6353)
!6355 = !DILocation(line: 246, column: 19, scope: !6353)
!6356 = !DILocation(line: 246, column: 22, scope: !6353)
!6357 = !DILocation(line: 246, column: 31, scope: !6353)
!6358 = !DILocation(line: 246, column: 8, scope: !6348)
!6359 = !DILocation(line: 247, column: 5, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6353, file: !2, line: 246, column: 46)
!6361 = !DILocation(line: 247, column: 11, scope: !6360)
!6362 = !DILocation(line: 247, column: 14, scope: !6360)
!6363 = !DILocation(line: 248, column: 5, scope: !6360)
!6364 = !DILocation(line: 246, column: 43, scope: !6353)
!6365 = !DILocation(line: 252, column: 15, scope: !6348)
!6366 = !DILocation(line: 252, column: 21, scope: !6348)
!6367 = !DILocation(line: 252, column: 4, scope: !6348)
!6368 = !DILocation(line: 252, column: 10, scope: !6348)
!6369 = !DILocation(line: 252, column: 13, scope: !6348)
!6370 = !DILocation(line: 253, column: 4, scope: !6348)
!6371 = !DILocation(line: 253, column: 10, scope: !6348)
!6372 = !DILocation(line: 253, column: 13, scope: !6348)
!6373 = !DILocation(line: 254, column: 4, scope: !6348)
!6374 = !DILocation(line: 256, column: 2, scope: !6343)
!6375 = !DILocation(line: 263, column: 13, scope: !6312)
!6376 = !DILocation(line: 263, column: 11, scope: !6312)
!6377 = !DILocation(line: 264, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6312, file: !2, line: 264, column: 6)
!6379 = !DILocation(line: 264, column: 6, scope: !6312)
!6380 = !DILocation(line: 265, column: 28, scope: !6378)
!6381 = !DILocation(line: 265, column: 3, scope: !6378)
!6382 = !DILocation(line: 267, column: 27, scope: !6312)
!6383 = !DILocation(line: 267, column: 33, scope: !6312)
!6384 = !DILocation(line: 267, column: 12, scope: !6312)
!6385 = !DILocation(line: 267, column: 39, scope: !6312)
!6386 = !DILocation(line: 267, column: 9, scope: !6312)
!6387 = !DILocation(line: 268, column: 7, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6312, file: !2, line: 268, column: 6)
!6389 = !DILocation(line: 268, column: 6, scope: !6312)
!6390 = !DILocation(line: 279, column: 3, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6388, file: !2, line: 268, column: 15)
!6392 = !DILocation(line: 279, column: 9, scope: !6391)
!6393 = !DILocation(line: 279, column: 15, scope: !6391)
!6394 = !DILocation(line: 283, column: 26, scope: !6391)
!6395 = !DILocation(line: 283, column: 3, scope: !6391)
!6396 = !DILocation(line: 284, column: 2, scope: !6391)
!6397 = !DILocation(line: 285, column: 20, scope: !6312)
!6398 = !DILocation(line: 285, column: 28, scope: !6312)
!6399 = !DILocation(line: 285, column: 34, scope: !6312)
!6400 = !DILocation(line: 285, column: 2, scope: !6312)
!6401 = !DILocation(line: 286, column: 1, scope: !6312)
!6402 = distinct !DISubprogram(name: "syscall_get_nr", scope: !6403, file: !6403, line: 36, type: !6404, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6406)
!6403 = !DIFile(filename: "./arch/x86/include/asm/syscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "757a8fbb630f22ac4219812d1d4dd322")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!37, !309, !3747}
!6406 = !{!6407, !6408}
!6407 = !DILocalVariable(name: "task", arg: 1, scope: !6402, file: !6403, line: 36, type: !309)
!6408 = !DILocalVariable(name: "regs", arg: 2, scope: !6402, file: !6403, line: 36, type: !3747)
!6409 = !DILocation(line: 36, column: 54, scope: !6402)
!6410 = !DILocation(line: 36, column: 76, scope: !6402)
!6411 = !DILocation(line: 38, column: 9, scope: !6402)
!6412 = !DILocation(line: 38, column: 15, scope: !6402)
!6413 = !DILocation(line: 38, column: 2, scope: !6402)
!6414 = distinct !DISubprogram(name: "syscall_get_error", scope: !6403, file: !6403, line: 47, type: !6415, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6417)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{!1064, !309, !3747}
!6417 = !{!6418, !6419, !6420}
!6418 = !DILocalVariable(name: "task", arg: 1, scope: !6414, file: !6403, line: 47, type: !309)
!6419 = !DILocalVariable(name: "regs", arg: 2, scope: !6414, file: !6403, line: 48, type: !3747)
!6420 = !DILocalVariable(name: "error", scope: !6414, file: !6403, line: 50, type: !54)
!6421 = !DILocation(line: 47, column: 58, scope: !6414)
!6422 = !DILocation(line: 48, column: 26, scope: !6414)
!6423 = !DILocation(line: 50, column: 2, scope: !6414)
!6424 = !DILocation(line: 50, column: 16, scope: !6414)
!6425 = !DILocation(line: 50, column: 24, scope: !6414)
!6426 = !DILocation(line: 50, column: 30, scope: !6414)
!6427 = !DILocation(line: 56, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6414, file: !6403, line: 56, column: 6)
!6429 = !DILocation(line: 56, column: 12, scope: !6428)
!6430 = !DILocation(line: 56, column: 24, scope: !6428)
!6431 = !DILocation(line: 56, column: 31, scope: !6428)
!6432 = !DILocation(line: 56, column: 6, scope: !6414)
!6433 = !DILocation(line: 61, column: 24, scope: !6428)
!6434 = !DILocation(line: 61, column: 18, scope: !6428)
!6435 = !DILocation(line: 61, column: 11, scope: !6428)
!6436 = !DILocation(line: 61, column: 9, scope: !6428)
!6437 = !DILocation(line: 61, column: 3, scope: !6428)
!6438 = !DILocation(line: 63, column: 9, scope: !6414)
!6439 = !DILocation(line: 63, column: 31, scope: !6414)
!6440 = !DILocation(line: 64, column: 1, scope: !6414)
!6441 = !DILocation(line: 63, column: 2, scope: !6414)
!6442 = distinct !DISubprogram(name: "get_nr_restart_syscall", scope: !2, file: !2, line: 288, type: !6443, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6447)
!6443 = !DISubroutineType(types: !6444)
!6444 = !{!54, !6445}
!6445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6446, size: 64)
!6446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!6447 = !{!6448}
!6448 = !DILocalVariable(name: "regs", arg: 1, scope: !6442, file: !2, line: 288, type: !6445)
!6449 = !DILocation(line: 288, column: 74, scope: !6442)
!6450 = !DILocation(line: 291, column: 6, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6442, file: !2, line: 291, column: 6)
!6452 = !DILocation(line: 291, column: 15, scope: !6451)
!6453 = !DILocation(line: 291, column: 29, scope: !6451)
!6454 = !DILocation(line: 291, column: 39, scope: !6451)
!6455 = !DILocation(line: 291, column: 6, scope: !6442)
!6456 = !DILocation(line: 292, column: 3, scope: !6451)
!6457 = !DILocation(line: 297, column: 2, scope: !6442)
!6458 = !DILocation(line: 299, column: 1, scope: !6442)
!6459 = distinct !DISubprogram(name: "restore_saved_sigmask", scope: !5151, file: !5151, line: 547, type: !2724, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6460 = !DILocation(line: 549, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6459, file: !5151, line: 549, column: 6)
!6462 = !DILocation(line: 549, column: 6, scope: !6459)
!6463 = !DILocation(line: 550, column: 26, scope: !6461)
!6464 = !DILocation(line: 550, column: 35, scope: !6461)
!6465 = !DILocation(line: 550, column: 3, scope: !6461)
!6466 = !DILocation(line: 551, column: 1, scope: !6459)
!6467 = distinct !DISubprogram(name: "signal_fault", scope: !2, file: !2, line: 341, type: !6468, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6470)
!6468 = !DISubroutineType(types: !6469)
!6469 = !{null, !3747, !35, !927}
!6470 = !{!6471, !6472, !6473, !6474}
!6471 = !DILocalVariable(name: "regs", arg: 1, scope: !6467, file: !2, line: 341, type: !3747)
!6472 = !DILocalVariable(name: "frame", arg: 2, scope: !6467, file: !2, line: 341, type: !35)
!6473 = !DILocalVariable(name: "where", arg: 3, scope: !6467, file: !2, line: 341, type: !927)
!6474 = !DILocalVariable(name: "me", scope: !6467, file: !2, line: 343, type: !309)
!6475 = !DILocation(line: 341, column: 35, scope: !6467)
!6476 = !DILocation(line: 341, column: 54, scope: !6467)
!6477 = !DILocation(line: 341, column: 67, scope: !6467)
!6478 = !DILocation(line: 343, column: 2, scope: !6467)
!6479 = !DILocation(line: 343, column: 22, scope: !6467)
!6480 = !DILocation(line: 343, column: 27, scope: !6467)
!6481 = !DILocation(line: 345, column: 6, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6467, file: !2, line: 345, column: 6)
!6483 = !DILocation(line: 345, column: 29, scope: !6482)
!6484 = !DILocation(line: 345, column: 32, scope: !6482)
!6485 = !DILocation(line: 345, column: 6, scope: !6467)
!6486 = !DILocation(line: 346, column: 3, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6488, file: !2, line: 346, column: 3)
!6488 = distinct !DILexicalBlock(scope: !6482, file: !2, line: 345, column: 52)
!6489 = !DILocation(line: 346, column: 3, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6487, file: !2, line: 346, column: 3)
!6491 = !DILocation(line: 351, column: 36, scope: !6488)
!6492 = !DILocation(line: 351, column: 42, scope: !6488)
!6493 = !DILocation(line: 351, column: 3, scope: !6488)
!6494 = !DILocation(line: 352, column: 3, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6488, file: !2, line: 352, column: 3)
!6496 = !DILocation(line: 352, column: 3, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6495, file: !2, line: 352, column: 3)
!6498 = !DILocation(line: 353, column: 2, scope: !6488)
!6499 = !DILocation(line: 355, column: 2, scope: !6467)
!6500 = !DILocation(line: 356, column: 1, scope: !6467)
!6501 = !DISubprogram(name: "print_vma_addr", scope: !1684, file: !1684, line: 3756, type: !6502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = !DISubroutineType(types: !6503)
!6503 = !{null, !927, !54}
!6504 = !DISubprogram(name: "force_sig", scope: !5151, file: !5151, line: 345, type: !5365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = distinct !DISubprogram(name: "strict_sas_size", scope: !2, file: !2, line: 365, type: !5936, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6506)
!6506 = !{!6507}
!6507 = !DILocalVariable(name: "arg", arg: 1, scope: !6505, file: !2, line: 365, type: !927)
!6508 = !DILocation(line: 365, column: 41, scope: !6505)
!6509 = !DILocation(line: 367, column: 20, scope: !6505)
!6510 = !DILocation(line: 367, column: 9, scope: !6505)
!6511 = !DILocation(line: 367, column: 51, scope: !6505)
!6512 = !DILocation(line: 367, column: 2, scope: !6505)
!6513 = distinct !DISubprogram(name: "sigaltstack_size_valid", scope: !2, file: !2, line: 389, type: !6514, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6516)
!6514 = !DISubroutineType(types: !6515)
!6515 = !{!839, !50}
!6516 = !{!6517, !6518, !6519}
!6517 = !DILocalVariable(name: "ss_size", arg: 1, scope: !6513, file: !2, line: 389, type: !50)
!6518 = !DILocalVariable(name: "fsize", scope: !6513, file: !2, line: 391, type: !54)
!6519 = !DILocalVariable(name: "mask", scope: !6513, file: !2, line: 392, type: !377)
!6520 = !DILocation(line: 389, column: 36, scope: !6513)
!6521 = !DILocation(line: 391, column: 2, scope: !6513)
!6522 = !DILocation(line: 391, column: 16, scope: !6513)
!6523 = !DILocation(line: 391, column: 24, scope: !6513)
!6524 = !DILocation(line: 391, column: 41, scope: !6513)
!6525 = !DILocation(line: 391, column: 39, scope: !6513)
!6526 = !DILocation(line: 392, column: 2, scope: !6513)
!6527 = !DILocation(line: 392, column: 6, scope: !6513)
!6528 = !DILocation(line: 394, column: 2, scope: !6513)
!6529 = !DILocation(line: 394, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 394, column: 2)
!6531 = !DILocation(line: 396, column: 7, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 396, column: 6)
!6533 = !DILocation(line: 396, column: 32, scope: !6532)
!6534 = !DILocation(line: 396, column: 36, scope: !6532)
!6535 = !DILocation(line: 396, column: 6, scope: !6513)
!6536 = !DILocation(line: 397, column: 3, scope: !6532)
!6537 = !DILocation(line: 399, column: 11, scope: !6513)
!6538 = !DILocation(line: 399, column: 20, scope: !6513)
!6539 = !DILocation(line: 399, column: 34, scope: !6513)
!6540 = !DILocation(line: 399, column: 41, scope: !6513)
!6541 = !DILocation(line: 399, column: 45, scope: !6513)
!6542 = !DILocation(line: 399, column: 50, scope: !6513)
!6543 = !DILocation(line: 399, column: 8, scope: !6513)
!6544 = !DILocation(line: 400, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 400, column: 6)
!6546 = !DILocation(line: 400, column: 6, scope: !6513)
!6547 = !DILocation(line: 401, column: 3, scope: !6545)
!6548 = !DILocation(line: 403, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 403, column: 6)
!6550 = !DILocation(line: 403, column: 6, scope: !6513)
!6551 = !DILocation(line: 404, column: 10, scope: !6549)
!6552 = !DILocation(line: 404, column: 20, scope: !6549)
!6553 = !DILocation(line: 404, column: 18, scope: !6549)
!6554 = !DILocation(line: 404, column: 3, scope: !6549)
!6555 = !DILocation(line: 406, column: 9, scope: !6513)
!6556 = !DILocation(line: 406, column: 18, scope: !6513)
!6557 = !DILocation(line: 406, column: 32, scope: !6513)
!6558 = !DILocation(line: 406, column: 39, scope: !6513)
!6559 = !DILocation(line: 406, column: 43, scope: !6513)
!6560 = !DILocation(line: 406, column: 48, scope: !6513)
!6561 = !DILocation(line: 406, column: 7, scope: !6513)
!6562 = !DILocation(line: 407, column: 6, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6513, file: !2, line: 407, column: 6)
!6564 = !DILocation(line: 407, column: 11, scope: !6563)
!6565 = !DILocation(line: 407, column: 6, scope: !6513)
!6566 = !DILocation(line: 408, column: 10, scope: !6563)
!6567 = !DILocation(line: 408, column: 20, scope: !6563)
!6568 = !DILocation(line: 408, column: 18, scope: !6563)
!6569 = !DILocation(line: 408, column: 3, scope: !6563)
!6570 = !DILocation(line: 410, column: 2, scope: !6513)
!6571 = !DILocation(line: 411, column: 1, scope: !6513)
!6572 = distinct !DISubprogram(name: "fpu_state_size_dynamic", scope: !6573, file: !6573, line: 123, type: !2126, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6574)
!6573 = !DIFile(filename: "./arch/x86/include/asm/fpu/xstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e36e4fe3e49ced604a87bdcedf9e5ac")
!6574 = !{!6575}
!6575 = !DILocalVariable(name: "branch", scope: !6576, file: !6573, line: 125, type: !839)
!6576 = distinct !DILexicalBlock(scope: !6572, file: !6573, line: 125, column: 9)
!6577 = !DILocation(line: 125, column: 9, scope: !6576)
!6578 = !DILocation(line: 125, column: 9, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6580, file: !6573, line: 125, column: 9)
!6580 = distinct !DILexicalBlock(scope: !6576, file: !6573, line: 125, column: 9)
!6581 = !DILocation(line: 125, column: 9, scope: !6580)
!6582 = !DILocation(line: 125, column: 9, scope: !6572)
!6583 = !DILocation(line: 125, column: 2, scope: !6572)
!6584 = distinct !DISubprogram(name: "is_ia32_compat_frame", scope: !2, file: !2, line: 45, type: !6131, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6585)
!6585 = !{!6586}
!6586 = !DILocalVariable(name: "ksig", arg: 1, scope: !6584, file: !2, line: 45, type: !5953)
!6587 = !DILocation(line: 45, column: 56, scope: !6584)
!6588 = !DILocation(line: 48, column: 3, scope: !6584)
!6589 = !DILocation(line: 48, column: 9, scope: !6584)
!6590 = !DILocation(line: 48, column: 12, scope: !6584)
!6591 = !DILocation(line: 48, column: 15, scope: !6584)
!6592 = !DILocation(line: 48, column: 24, scope: !6584)
!6593 = !DILocation(line: 47, column: 43, scope: !6584)
!6594 = !DILocation(line: 47, column: 2, scope: !6584)
!6595 = distinct !DISubprogram(name: "arch_test_bit", scope: !6596, file: !6596, line: 237, type: !6597, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6602)
!6596 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!839, !54, !6599}
!6599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6600, size: 64)
!6600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6601)
!6601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!6602 = !{!6603, !6604}
!6603 = !DILocalVariable(name: "nr", arg: 1, scope: !6595, file: !6596, line: 237, type: !54)
!6604 = !DILocalVariable(name: "addr", arg: 2, scope: !6595, file: !6596, line: 237, type: !6599)
!6605 = !DILocation(line: 237, column: 29, scope: !6595)
!6606 = !DILocation(line: 237, column: 63, scope: !6595)
!6607 = !DILocation(line: 239, column: 30, scope: !6595)
!6608 = !DILocation(line: 239, column: 9, scope: !6595)
!6609 = !DILocation(line: 239, column: 54, scope: !6595)
!6610 = !DILocation(line: 239, column: 58, scope: !6595)
!6611 = !DILocation(line: 239, column: 36, scope: !6595)
!6612 = !DILocation(line: 240, column: 26, scope: !6595)
!6613 = !DILocation(line: 240, column: 30, scope: !6595)
!6614 = !DILocation(line: 240, column: 8, scope: !6595)
!6615 = !DILocation(line: 239, column: 2, scope: !6595)
!6616 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6617, file: !6617, line: 173, type: !6618, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6620)
!6617 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6618 = !DISubroutineType(types: !6619)
!6619 = !{!839, !108}
!6620 = !{!6621, !6622, !6623}
!6621 = !DILocalVariable(name: "bit", arg: 1, scope: !6616, file: !6617, line: 173, type: !108)
!6622 = !DILabel(scope: !6616, name: "t_yes", file: !6617, line: 187)
!6623 = !DILabel(scope: !6616, name: "t_no", file: !6617, line: 189)
!6624 = !DILocation(line: 173, column: 49, scope: !6616)
!6625 = !DILocation(line: 183, column: 24, scope: !6616)
!6626 = !DILocation(line: 184, column: 30, scope: !6616)
!6627 = !DILocation(line: 184, column: 34, scope: !6616)
!6628 = !DILocation(line: 184, column: 26, scope: !6616)
!6629 = !DILocation(line: 185, column: 70, scope: !6616)
!6630 = !DILocation(line: 185, column: 74, scope: !6616)
!6631 = !DILocation(line: 185, column: 25, scope: !6616)
!6632 = !DILocation(line: 175, column: 2, scope: !6616)
!6633 = !{i64 2149576423, i64 2149576456, i64 2149576462, i64 2149576478, i64 2149576497, i64 2149576528, i64 2149577481, i64 2149576070, i64 2149577487, i64 2149577535, i64 2149577599, i64 2149577663, i64 2149577720, i64 2149577927, i64 2149577975, i64 2149578039, i64 2149578103, i64 2149578160, i64 2149576188, i64 2149576213, i64 2149578370, i64 2149578498, i64 2149578431, i64 2149578512, i64 2149578526, i64 2149578642, i64 2149578587, i64 2149578656, i64 2149576347, i64 1703168, i64 1703208, i64 1703217, i64 1703267, i64 1703288, i64 1703308}
!6634 = !DILocation(line: 187, column: 1, scope: !6616)
!6635 = !DILocation(line: 188, column: 2, scope: !6616)
!6636 = !DILocation(line: 189, column: 1, scope: !6616)
!6637 = !DILocation(line: 190, column: 2, scope: !6616)
!6638 = !DILocation(line: 191, column: 1, scope: !6616)
!6639 = distinct !DISubprogram(name: "rdpkru", scope: !6640, file: !6640, line: 80, type: !6158, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6641)
!6640 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!6641 = !{!6642, !6643, !6644}
!6642 = !DILocalVariable(name: "ecx", scope: !6639, file: !6640, line: 82, type: !319)
!6643 = !DILocalVariable(name: "edx", scope: !6639, file: !6640, line: 83, type: !319)
!6644 = !DILocalVariable(name: "pkru", scope: !6639, file: !6640, line: 83, type: !319)
!6645 = !DILocation(line: 82, column: 2, scope: !6639)
!6646 = !DILocation(line: 82, column: 6, scope: !6639)
!6647 = !DILocation(line: 83, column: 2, scope: !6639)
!6648 = !DILocation(line: 83, column: 6, scope: !6639)
!6649 = !DILocation(line: 83, column: 11, scope: !6639)
!6650 = !DILocation(line: 91, column: 15, scope: !6639)
!6651 = !DILocation(line: 89, column: 2, scope: !6639)
!6652 = !{i64 2030407, i64 2030430}
!6653 = !DILocation(line: 92, column: 9, scope: !6639)
!6654 = !DILocation(line: 93, column: 1, scope: !6639)
!6655 = !DILocation(line: 92, column: 2, scope: !6639)
!6656 = distinct !DISubprogram(name: "constant_test_bit", scope: !6596, file: !6596, line: 204, type: !6657, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6659)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!839, !1064, !6599}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "nr", arg: 1, scope: !6656, file: !6596, line: 204, type: !1064)
!6661 = !DILocalVariable(name: "addr", arg: 2, scope: !6656, file: !6596, line: 204, type: !6599)
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
!6673 = distinct !DISubprogram(name: "variable_test_bit", scope: !6596, file: !6596, line: 224, type: !6657, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6674)
!6674 = !{!6675, !6676, !6677}
!6675 = !DILocalVariable(name: "nr", arg: 1, scope: !6673, file: !6596, line: 224, type: !1064)
!6676 = !DILocalVariable(name: "addr", arg: 2, scope: !6673, file: !6596, line: 224, type: !6599)
!6677 = !DILocalVariable(name: "oldbit", scope: !6673, file: !6596, line: 226, type: !839)
!6678 = !DILocation(line: 224, column: 52, scope: !6673)
!6679 = !DILocation(line: 224, column: 86, scope: !6673)
!6680 = !DILocation(line: 226, column: 2, scope: !6673)
!6681 = !DILocation(line: 226, column: 7, scope: !6673)
!6682 = !DILocation(line: 231, column: 33, scope: !6673)
!6683 = !DILocation(line: 231, column: 46, scope: !6673)
!6684 = !DILocation(line: 228, column: 2, scope: !6673)
!6685 = !{i64 2147908415, i64 2147908489}
!6686 = !DILocation(line: 233, column: 9, scope: !6673)
!6687 = !DILocation(line: 234, column: 1, scope: !6673)
!6688 = !DILocation(line: 233, column: 2, scope: !6673)
!6689 = !DISubprogram(name: "fpu__get_fpstate_size", scope: !6198, file: !6198, line: 30, type: !6255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6690 = distinct !DISubprogram(name: "v8086_mode", scope: !3749, file: !3749, line: 218, type: !6691, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6693)
!6691 = !DISubroutineType(types: !6692)
!6692 = !{!37, !3747}
!6693 = !{!6694}
!6694 = !DILocalVariable(name: "regs", arg: 1, scope: !6690, file: !3749, line: 218, type: !3747)
!6695 = !DILocation(line: 218, column: 55, scope: !6690)
!6696 = !DILocation(line: 223, column: 2, scope: !6690)
!6697 = distinct !DISubprogram(name: "save_v86_state", scope: !5893, file: !5893, line: 85, type: !6698, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6700)
!6698 = !DISubroutineType(types: !6699)
!6699 = !{null, !5891, !37}
!6700 = !{!6701, !6702}
!6701 = !DILocalVariable(name: "a", arg: 1, scope: !6697, file: !5893, line: 85, type: !5891)
!6702 = !DILocalVariable(name: "b", arg: 2, scope: !6697, file: !5893, line: 85, type: !37)
!6703 = !DILocation(line: 85, column: 60, scope: !6697)
!6704 = !DILocation(line: 85, column: 67, scope: !6697)
!6705 = !DILocation(line: 85, column: 72, scope: !6697)
!6706 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6707, file: !6707, line: 116, type: !6708, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6710)
!6707 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6708 = !DISubroutineType(types: !6709)
!6709 = !{!37, !5904, !37}
!6710 = !{!6711, !6712}
!6711 = !DILocalVariable(name: "ti", arg: 1, scope: !6706, file: !6707, line: 116, type: !5904)
!6712 = !DILocalVariable(name: "flag", arg: 2, scope: !6706, file: !6707, line: 116, type: !37)
!6713 = !DILocation(line: 116, column: 59, scope: !6706)
!6714 = !DILocation(line: 116, column: 67, scope: !6706)
!6715 = !DILocation(line: 118, column: 9, scope: !6706)
!6716 = !DILocation(line: 118, column: 2, scope: !6706)
!6717 = !DISubprogram(name: "user_disable_single_step", scope: !6718, file: !6718, line: 306, type: !4004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6718 = !DIFile(filename: "./include/linux/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2c607984366a17bb2bcdc39b38f3eca")
!6719 = distinct !DISubprogram(name: "setup_rt_frame", scope: !2, file: !2, line: 209, type: !6720, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6722)
!6720 = !DISubroutineType(types: !6721)
!6721 = !{!37, !5953, !3747}
!6722 = !{!6723, !6724}
!6723 = !DILocalVariable(name: "ksig", arg: 1, scope: !6719, file: !2, line: 209, type: !5953)
!6724 = !DILocalVariable(name: "regs", arg: 2, scope: !6719, file: !2, line: 209, type: !3747)
!6725 = !DILocation(line: 209, column: 32, scope: !6719)
!6726 = !DILocation(line: 209, column: 54, scope: !6719)
!6727 = !DILocation(line: 212, column: 22, scope: !6719)
!6728 = !DILocation(line: 212, column: 28, scope: !6719)
!6729 = !DILocation(line: 212, column: 2, scope: !6719)
!6730 = !DILocation(line: 215, column: 20, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6719, file: !2, line: 215, column: 6)
!6732 = !DILocation(line: 215, column: 6, scope: !6731)
!6733 = !DILocation(line: 215, column: 6, scope: !6719)
!6734 = !DILocation(line: 216, column: 7, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !2, line: 216, column: 7)
!6736 = distinct !DILexicalBlock(scope: !6731, file: !2, line: 215, column: 27)
!6737 = !DILocation(line: 216, column: 13, scope: !6735)
!6738 = !DILocation(line: 216, column: 16, scope: !6735)
!6739 = !DILocation(line: 216, column: 19, scope: !6735)
!6740 = !DILocation(line: 216, column: 28, scope: !6735)
!6741 = !DILocation(line: 216, column: 7, scope: !6736)
!6742 = !DILocation(line: 217, column: 31, scope: !6735)
!6743 = !DILocation(line: 217, column: 37, scope: !6735)
!6744 = !DILocation(line: 217, column: 11, scope: !6735)
!6745 = !DILocation(line: 217, column: 4, scope: !6735)
!6746 = !DILocation(line: 219, column: 28, scope: !6735)
!6747 = !DILocation(line: 219, column: 34, scope: !6735)
!6748 = !DILocation(line: 219, column: 11, scope: !6735)
!6749 = !DILocation(line: 219, column: 4, scope: !6735)
!6750 = !DILocation(line: 220, column: 26, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6731, file: !2, line: 220, column: 13)
!6752 = !DILocation(line: 220, column: 13, scope: !6751)
!6753 = !DILocation(line: 220, column: 13, scope: !6731)
!6754 = !DILocation(line: 221, column: 29, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6751, file: !2, line: 220, column: 33)
!6756 = !DILocation(line: 221, column: 35, scope: !6755)
!6757 = !DILocation(line: 221, column: 10, scope: !6755)
!6758 = !DILocation(line: 221, column: 3, scope: !6755)
!6759 = !DILocation(line: 223, column: 29, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6751, file: !2, line: 222, column: 9)
!6761 = !DILocation(line: 223, column: 35, scope: !6760)
!6762 = !DILocation(line: 223, column: 10, scope: !6760)
!6763 = !DILocation(line: 223, column: 3, scope: !6760)
!6764 = !DILocation(line: 225, column: 1, scope: !6719)
!6765 = !DISubprogram(name: "fpu__clear_user_states", scope: !6198, file: !6198, line: 33, type: !6766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6766 = !DISubroutineType(types: !6767)
!6767 = !{null, !6319}
!6768 = !DISubprogram(name: "signal_setup_done", scope: !6309, file: !6309, line: 293, type: !6769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{null, !37, !5953, !37}
!6771 = distinct !DISubprogram(name: "const_test_bit", scope: !6772, file: !6772, line: 166, type: !6597, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6773)
!6772 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6773 = !{!6774, !6775, !6776, !6777, !6778}
!6774 = !DILocalVariable(name: "nr", arg: 1, scope: !6771, file: !6772, line: 166, type: !54)
!6775 = !DILocalVariable(name: "addr", arg: 2, scope: !6771, file: !6772, line: 166, type: !6599)
!6776 = !DILocalVariable(name: "p", scope: !6771, file: !6772, line: 168, type: !5906)
!6777 = !DILocalVariable(name: "mask", scope: !6771, file: !6772, line: 169, type: !54)
!6778 = !DILocalVariable(name: "val", scope: !6771, file: !6772, line: 170, type: !54)
!6779 = !DILocation(line: 166, column: 30, scope: !6771)
!6780 = !DILocation(line: 166, column: 64, scope: !6771)
!6781 = !DILocation(line: 168, column: 2, scope: !6771)
!6782 = !DILocation(line: 168, column: 23, scope: !6771)
!6783 = !DILocation(line: 168, column: 50, scope: !6771)
!6784 = !DILocation(line: 168, column: 57, scope: !6771)
!6785 = !DILocation(line: 168, column: 55, scope: !6771)
!6786 = !DILocation(line: 169, column: 2, scope: !6771)
!6787 = !DILocation(line: 169, column: 16, scope: !6771)
!6788 = !DILocation(line: 169, column: 23, scope: !6771)
!6789 = !DILocation(line: 170, column: 2, scope: !6771)
!6790 = !DILocation(line: 170, column: 16, scope: !6771)
!6791 = !DILocation(line: 170, column: 23, scope: !6771)
!6792 = !DILocation(line: 170, column: 22, scope: !6771)
!6793 = !DILocation(line: 172, column: 12, scope: !6771)
!6794 = !DILocation(line: 172, column: 18, scope: !6771)
!6795 = !DILocation(line: 172, column: 16, scope: !6771)
!6796 = !DILocation(line: 172, column: 10, scope: !6771)
!6797 = !DILocation(line: 172, column: 9, scope: !6771)
!6798 = !DILocation(line: 173, column: 1, scope: !6771)
!6799 = !DILocation(line: 172, column: 2, scope: !6771)
!6800 = distinct !DISubprogram(name: "_test_bit", scope: !6801, file: !6801, line: 139, type: !6597, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6802)
!6801 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6802 = !{!6803, !6804}
!6803 = !DILocalVariable(name: "nr", arg: 1, scope: !6800, file: !6801, line: 139, type: !54)
!6804 = !DILocalVariable(name: "addr", arg: 2, scope: !6800, file: !6801, line: 139, type: !6599)
!6805 = !DILocation(line: 139, column: 25, scope: !6800)
!6806 = !DILocation(line: 139, column: 59, scope: !6800)
!6807 = !DILocation(line: 141, column: 25, scope: !6800)
!6808 = !DILocation(line: 141, column: 32, scope: !6800)
!6809 = !DILocation(line: 141, column: 30, scope: !6800)
!6810 = !DILocation(line: 141, column: 2, scope: !6800)
!6811 = !DILocation(line: 142, column: 23, scope: !6800)
!6812 = !DILocation(line: 142, column: 27, scope: !6800)
!6813 = !DILocation(line: 142, column: 9, scope: !6800)
!6814 = !DILocation(line: 142, column: 2, scope: !6800)
!6815 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6816, file: !6816, line: 66, type: !6817, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6822)
!6816 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6817 = !DISubroutineType(types: !6818)
!6818 = !{null, !6819, !50}
!6819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6820, size: 64)
!6820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6821)
!6821 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6822 = !{!6823, !6824}
!6823 = !DILocalVariable(name: "v", arg: 1, scope: !6815, file: !6816, line: 66, type: !6819)
!6824 = !DILocalVariable(name: "size", arg: 2, scope: !6815, file: !6816, line: 66, type: !50)
!6825 = !DILocation(line: 66, column: 73, scope: !6815)
!6826 = !DILocation(line: 66, column: 83, scope: !6815)
!6827 = !DILocation(line: 68, column: 19, scope: !6815)
!6828 = !DILocation(line: 68, column: 22, scope: !6815)
!6829 = !DILocation(line: 68, column: 2, scope: !6815)
!6830 = !DILocation(line: 69, column: 2, scope: !6815)
!6831 = !DILocation(line: 70, column: 1, scope: !6815)
!6832 = distinct !DISubprogram(name: "kasan_check_read", scope: !6833, file: !6833, line: 40, type: !6834, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6836)
!6833 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6834 = !DISubroutineType(types: !6835)
!6835 = !{!839, !6819, !19}
!6836 = !{!6837, !6838}
!6837 = !DILocalVariable(name: "p", arg: 1, scope: !6832, file: !6833, line: 40, type: !6819)
!6838 = !DILocalVariable(name: "size", arg: 2, scope: !6832, file: !6833, line: 40, type: !19)
!6839 = !DILocation(line: 40, column: 58, scope: !6832)
!6840 = !DILocation(line: 40, column: 74, scope: !6832)
!6841 = !DILocation(line: 42, column: 2, scope: !6832)
!6842 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6843, file: !6843, line: 229, type: !6844, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6846)
!6843 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6844 = !DISubroutineType(types: !6845)
!6845 = !{null, !6819, !50, !37}
!6846 = !{!6847, !6848, !6849}
!6847 = !DILocalVariable(name: "ptr", arg: 1, scope: !6842, file: !6843, line: 229, type: !6819)
!6848 = !DILocalVariable(name: "size", arg: 2, scope: !6842, file: !6843, line: 229, type: !50)
!6849 = !DILocalVariable(name: "type", arg: 3, scope: !6842, file: !6843, line: 230, type: !37)
!6850 = !DILocation(line: 229, column: 60, scope: !6842)
!6851 = !DILocation(line: 229, column: 72, scope: !6842)
!6852 = !DILocation(line: 230, column: 15, scope: !6842)
!6853 = !DILocation(line: 230, column: 23, scope: !6842)
!6854 = !DILocation(line: 2363, column: 56, scope: !5950)
!6855 = !DILocation(line: 2364, column: 28, scope: !5950)
!6856 = !DILocation(line: 2366, column: 2, scope: !5950)
!6857 = !DILocation(line: 2366, column: 2, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !5950, file: !301, line: 2366, column: 2)
!6859 = !{i64 2150785807}
!6860 = !DILocation(line: 2367, column: 2, scope: !5950)
!6861 = !DILocation(line: 2368, column: 2, scope: !5950)
!6862 = !DILocation(line: 2368, column: 2, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !5950, file: !301, line: 2368, column: 2)
!6864 = !{i64 2150786616}
!6865 = !DILocation(line: 2368, column: 2, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6863, file: !301, line: 2368, column: 2)
!6867 = !DILocation(line: 2368, column: 2, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6866, file: !301, line: 2368, column: 2)
!6869 = !{i64 2150786798}
!6870 = !DILocation(line: 2369, column: 28, scope: !5950)
!6871 = !DILocation(line: 2369, column: 34, scope: !5950)
!6872 = !DILocation(line: 2369, column: 2, scope: !5950)
!6873 = !DILocation(line: 2370, column: 1, scope: !5950)
!6874 = !DISubprogram(name: "ia32_setup_rt_frame", scope: !6875, file: !6875, line: 23, type: !6720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6875 = !DIFile(filename: "./arch/x86/include/asm/sighandling.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f0ef5b9b911eeb1c272f896ffe120fb")
!6876 = !DISubprogram(name: "ia32_setup_frame", scope: !6875, file: !6875, line: 22, type: !6720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6877 = distinct !DISubprogram(name: "is_x32_frame", scope: !2, file: !2, line: 56, type: !6131, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6878)
!6878 = !{!6879}
!6879 = !DILocalVariable(name: "ksig", arg: 1, scope: !6877, file: !2, line: 56, type: !5953)
!6880 = !DILocation(line: 56, column: 48, scope: !6877)
!6881 = !DILocation(line: 58, column: 2, scope: !6877)
!6882 = !DISubprogram(name: "x32_setup_rt_frame", scope: !6875, file: !6875, line: 25, type: !6720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6883 = !DISubprogram(name: "x64_setup_rt_frame", scope: !6875, file: !6875, line: 24, type: !6720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6885, file: !6885, line: 78, type: !5365, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6886)
!6885 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6886 = !{!6887, !6888, !6890}
!6887 = !DILocalVariable(name: "val", arg: 1, scope: !6884, file: !6885, line: 78, type: !37)
!6888 = !DILocalVariable(name: "pao_ID__", scope: !6889, file: !6885, line: 80, type: !2514)
!6889 = distinct !DILexicalBlock(scope: !6884, file: !6885, line: 80, column: 2)
!6890 = !DILocalVariable(name: "pto_val__", scope: !6891, file: !6885, line: 80, type: !319)
!6891 = distinct !DILexicalBlock(scope: !6892, file: !6885, line: 80, column: 2)
!6892 = distinct !DILexicalBlock(scope: !6893, file: !6885, line: 80, column: 2)
!6893 = distinct !DILexicalBlock(scope: !6889, file: !6885, line: 80, column: 2)
!6894 = !DILocation(line: 78, column: 53, scope: !6884)
!6895 = !DILocation(line: 80, column: 2, scope: !6884)
!6896 = !DILocation(line: 80, column: 2, scope: !6889)
!6897 = !DILocation(line: 80, column: 2, scope: !6893)
!6898 = !DILocation(line: 80, column: 2, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6893, file: !6885, line: 80, column: 2)
!6900 = !{i64 2149597512}
!6901 = !DILocation(line: 80, column: 2, scope: !6892)
!6902 = !DILocation(line: 80, column: 2, scope: !6903)
!6903 = distinct !DILexicalBlock(scope: !6892, file: !6885, line: 80, column: 2)
!6904 = !{i64 2149597807}
!6905 = !DILocation(line: 80, column: 2, scope: !6891)
!6906 = !{i64 2149598512}
!6907 = !DILocation(line: 81, column: 1, scope: !6884)
!6908 = distinct !DISubprogram(name: "___set_bit", scope: !6801, file: !6801, line: 26, type: !6909, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6912)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{null, !54, !6911}
!6911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6601, size: 64)
!6912 = !{!6913, !6914}
!6913 = !DILocalVariable(name: "nr", arg: 1, scope: !6908, file: !6801, line: 26, type: !54)
!6914 = !DILocalVariable(name: "addr", arg: 2, scope: !6908, file: !6801, line: 26, type: !6911)
!6915 = !DILocation(line: 26, column: 26, scope: !6908)
!6916 = !DILocation(line: 26, column: 54, scope: !6908)
!6917 = !DILocation(line: 28, column: 19, scope: !6908)
!6918 = !DILocation(line: 28, column: 26, scope: !6908)
!6919 = !DILocation(line: 28, column: 24, scope: !6908)
!6920 = !DILocation(line: 28, column: 2, scope: !6908)
!6921 = !DILocation(line: 29, column: 17, scope: !6908)
!6922 = !DILocation(line: 29, column: 21, scope: !6908)
!6923 = !DILocation(line: 29, column: 2, scope: !6908)
!6924 = !DILocation(line: 30, column: 1, scope: !6908)
!6925 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6885, file: !6885, line: 93, type: !2126, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6926)
!6926 = !{!6927}
!6927 = !DILocalVariable(name: "c", scope: !6928, file: !6885, line: 95, type: !839)
!6928 = distinct !DILexicalBlock(scope: !6925, file: !6885, line: 95, column: 9)
!6929 = !DILocation(line: 95, column: 9, scope: !6928)
!6930 = !{i64 2149601868, i64 2149601961}
!6931 = !DILocation(line: 95, column: 9, scope: !6925)
!6932 = !DILocation(line: 95, column: 2, scope: !6925)
!6933 = distinct !DISubprogram(name: "rseq_handle_notify_resume", scope: !301, file: !301, line: 2356, type: !5951, scopeLine: 2358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6934)
!6934 = !{!6935, !6936}
!6935 = !DILocalVariable(name: "ksig", arg: 1, scope: !6933, file: !301, line: 2356, type: !5953)
!6936 = !DILocalVariable(name: "regs", arg: 2, scope: !6933, file: !301, line: 2357, type: !3747)
!6937 = !DILocation(line: 2356, column: 62, scope: !6933)
!6938 = !DILocation(line: 2357, column: 27, scope: !6933)
!6939 = !DILocation(line: 2359, column: 6, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6933, file: !301, line: 2359, column: 6)
!6941 = !DILocation(line: 2359, column: 15, scope: !6940)
!6942 = !DILocation(line: 2359, column: 6, scope: !6933)
!6943 = !DILocation(line: 2360, column: 31, scope: !6940)
!6944 = !DILocation(line: 2360, column: 37, scope: !6940)
!6945 = !DILocation(line: 2360, column: 3, scope: !6940)
!6946 = !DILocation(line: 2361, column: 1, scope: !6933)
!6947 = distinct !DISubprogram(name: "instrument_write", scope: !6816, file: !6816, line: 38, type: !6817, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6948)
!6948 = !{!6949, !6950}
!6949 = !DILocalVariable(name: "v", arg: 1, scope: !6947, file: !6816, line: 38, type: !6819)
!6950 = !DILocalVariable(name: "size", arg: 2, scope: !6947, file: !6816, line: 38, type: !50)
!6951 = !DILocation(line: 38, column: 67, scope: !6947)
!6952 = !DILocation(line: 38, column: 77, scope: !6947)
!6953 = !DILocation(line: 40, column: 20, scope: !6947)
!6954 = !DILocation(line: 40, column: 23, scope: !6947)
!6955 = !DILocation(line: 40, column: 2, scope: !6947)
!6956 = !DILocation(line: 41, column: 2, scope: !6947)
!6957 = !DILocation(line: 42, column: 1, scope: !6947)
!6958 = distinct !DISubprogram(name: "arch___set_bit", scope: !6596, file: !6596, line: 66, type: !6909, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6959)
!6959 = !{!6960, !6961}
!6960 = !DILocalVariable(name: "nr", arg: 1, scope: !6958, file: !6596, line: 66, type: !54)
!6961 = !DILocalVariable(name: "addr", arg: 2, scope: !6958, file: !6596, line: 66, type: !6911)
!6962 = !DILocation(line: 66, column: 30, scope: !6958)
!6963 = !DILocation(line: 66, column: 58, scope: !6958)
!6964 = !DILocation(line: 68, column: 44, scope: !6958)
!6965 = !DILocation(line: 68, column: 56, scope: !6958)
!6966 = !DILocation(line: 68, column: 2, scope: !6958)
!6967 = !{i64 2147895729}
!6968 = !DILocation(line: 69, column: 1, scope: !6958)
!6969 = distinct !DISubprogram(name: "kasan_check_write", scope: !6833, file: !6833, line: 44, type: !6834, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !6970)
!6970 = !{!6971, !6972}
!6971 = !DILocalVariable(name: "p", arg: 1, scope: !6969, file: !6833, line: 44, type: !6819)
!6972 = !DILocalVariable(name: "size", arg: 2, scope: !6969, file: !6833, line: 44, type: !19)
!6973 = !DILocation(line: 44, column: 59, scope: !6969)
!6974 = !DILocation(line: 44, column: 75, scope: !6969)
!6975 = !DILocation(line: 46, column: 2, scope: !6969)
!6976 = !DISubprogram(name: "__rseq_handle_notify_resume", scope: !301, file: !301, line: 2354, type: !5951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6977 = distinct !DISubprogram(name: "test_and_clear_restore_sigmask", scope: !5151, file: !5151, line: 538, type: !2126, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15)
!6978 = !DILocation(line: 540, column: 7, scope: !6979)
!6979 = distinct !DILexicalBlock(scope: !6977, file: !5151, line: 540, column: 6)
!6980 = !DILocation(line: 540, column: 16, scope: !6979)
!6981 = !DILocation(line: 540, column: 6, scope: !6977)
!6982 = !DILocation(line: 541, column: 3, scope: !6979)
!6983 = !DILocation(line: 542, column: 2, scope: !6977)
!6984 = !DILocation(line: 542, column: 11, scope: !6977)
!6985 = !DILocation(line: 542, column: 27, scope: !6977)
!6986 = !DILocation(line: 543, column: 2, scope: !6977)
!6987 = !DILocation(line: 544, column: 1, scope: !6977)
!6988 = !DISubprogram(name: "__set_current_blocked", scope: !6309, file: !6309, line: 289, type: !6989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6989 = !DISubroutineType(types: !6990)
!6990 = !{null, !6991}
!6991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6992, size: 64)
!6992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5166)
!6993 = !DISubprogram(name: "kstrtobool", scope: !6994, file: !6994, line: 98, type: !6995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6994 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6995 = !DISubroutineType(types: !6996)
!6996 = !{!37, !33, !2074}
!6997 = distinct !DISubprogram(name: "arch_static_branch", scope: !6998, file: !6998, line: 25, type: !6999, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !7002)
!6998 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6999 = !DISubroutineType(types: !7000)
!7000 = !{!839, !7001, !839}
!7001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!7002 = !{!7003, !7004, !7005}
!7003 = !DILocalVariable(name: "key", arg: 1, scope: !6997, file: !6998, line: 25, type: !7001)
!7004 = !DILocalVariable(name: "branch", arg: 2, scope: !6997, file: !6998, line: 25, type: !839)
!7005 = !DILabel(scope: !6997, name: "l_yes", file: !6998, line: 33)
!7006 = !DILocation(line: 25, column: 67, scope: !6997)
!7007 = !DILocation(line: 25, column: 77, scope: !6997)
!7008 = !DILocation(line: 30, column: 13, scope: !6997)
!7009 = !DILocation(line: 30, column: 28, scope: !6997)
!7010 = !DILocation(line: 30, column: 26, scope: !6997)
!7011 = !DILocation(line: 27, column: 2, scope: !6997)
!7012 = !{i64 1489609, i64 1489653, i64 2148974336, i64 2148974357, i64 2148974383, i64 2148974416, i64 2148974450, i64 2148974474}
!7013 = !DILocation(line: 32, column: 2, scope: !6997)
!7014 = !DILocation(line: 33, column: 1, scope: !6997)
!7015 = !DILocation(line: 34, column: 2, scope: !6997)
!7016 = !DILocation(line: 35, column: 1, scope: !6997)
