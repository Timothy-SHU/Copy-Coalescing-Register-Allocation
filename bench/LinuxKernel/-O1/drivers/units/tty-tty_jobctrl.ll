; ModuleID = 'drivers/tty/tty_jobctrl.c'
source_filename = "drivers/tty/tty_jobctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_check_change: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_check_change ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_current_tty: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad get_current_tty ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_get_pgrp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_get_pgrp ; .previous"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
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
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.file = type { %union.anon.20, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [0 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.tty_driver = type { %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [37 x i8] c"\014%s %s: sig=%d, tty->pgrp == NULL!\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_tty_check_change287 = internal global ptr @tty_check_change, section ".discard.addressable", align 8, !dbg !7
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__UNIQUE_ID___addressable_get_current_tty288 = internal global ptr @get_current_tty, section ".discard.addressable", align 8, !dbg !4995
@__UNIQUE_ID___addressable_tty_get_pgrp297 = internal global ptr @tty_get_pgrp, section ".discard.addressable", align 8, !dbg !4997
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_tty_check_change287, ptr @__UNIQUE_ID___addressable_get_current_tty288, ptr @__UNIQUE_ID___addressable_tty_get_pgrp297], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__tty_check_change(ptr noundef %tty, i32 noundef %sig) #0 align 16 !dbg !5009 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %sig.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %pgrp = alloca ptr, align 8
  %tty_pgrp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5011, metadata !DIExpression()), !dbg !5022
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !5012, metadata !DIExpression()), !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5024
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5013, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #11, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !5014, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %tty_pgrp, metadata !5015, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5016, metadata !DIExpression()), !dbg !5030
  store i32 0, ptr %ret, align 4, !dbg !5030
  %call = call ptr @get_current() #12, !dbg !5031
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5033
  %0 = load ptr, ptr %signal, align 64, !dbg !5033
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 26, !dbg !5034
  %1 = load ptr, ptr %tty1, align 8, !dbg !5034
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5035
  %cmp = icmp ne ptr %1, %2, !dbg !5036
  br i1 %cmp, label %if.then, label %if.end, !dbg !5037

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5038

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #12, !dbg !5039
  %call2 = call ptr @get_current() #12, !dbg !5040
  %call3 = call ptr @task_pgrp(ptr noundef %call2) #12, !dbg !5041
  store ptr %call3, ptr %pgrp, align 8, !dbg !5042
  br label %do.body, !dbg !5043

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5044

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5017, metadata !DIExpression()), !dbg !5045
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5021, metadata !DIExpression()), !dbg !5045
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !5045
  %conv = zext i1 %cmp5 to i32, !dbg !5045
  store i32 1, ptr %tmp, align 4, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5046
  %3 = load i32, ptr %tmp, align 4, !dbg !5045
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5046
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 21, !dbg !5046
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !5046
  %call6 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !5046
  %call7 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call6) #12, !dbg !5046
  store i64 %call7, ptr %flags, align 8, !dbg !5046
  br label %do.cond, !dbg !5046

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5046

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !5044

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !5044

do.end9:                                          ; preds = %do.cond8
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5047
  %ctrl10 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 21, !dbg !5048
  %pgrp11 = getelementptr inbounds %struct.anon.17, ptr %ctrl10, i32 0, i32 0, !dbg !5049
  %6 = load ptr, ptr %pgrp11, align 8, !dbg !5049
  store ptr %6, ptr %tty_pgrp, align 8, !dbg !5050
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5051
  %ctrl12 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !5052
  %lock13 = getelementptr inbounds %struct.anon.17, ptr %ctrl12, i32 0, i32 2, !dbg !5053
  %8 = load i64, ptr %flags, align 8, !dbg !5054
  call void @spin_unlock_irqrestore(ptr noundef %lock13, i64 noundef %8) #12, !dbg !5055
  %9 = load ptr, ptr %tty_pgrp, align 8, !dbg !5056
  %tobool = icmp ne ptr %9, null, !dbg !5056
  br i1 %tobool, label %land.lhs.true, label %if.end32, !dbg !5058

land.lhs.true:                                    ; preds = %do.end9
  %10 = load ptr, ptr %pgrp, align 8, !dbg !5059
  %11 = load ptr, ptr %tty_pgrp, align 8, !dbg !5060
  %cmp14 = icmp ne ptr %10, %11, !dbg !5061
  br i1 %cmp14, label %if.then16, label %if.end32, !dbg !5062

if.then16:                                        ; preds = %land.lhs.true
  %12 = load i32, ptr %sig.addr, align 4, !dbg !5063
  %call17 = call i32 @is_ignored(i32 noundef %12) #12, !dbg !5066
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5066
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5067

if.then19:                                        ; preds = %if.then16
  %13 = load i32, ptr %sig.addr, align 4, !dbg !5068
  %cmp20 = icmp eq i32 %13, 21, !dbg !5071
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5072

if.then22:                                        ; preds = %if.then19
  store i32 -5, ptr %ret, align 4, !dbg !5073
  br label %if.end23, !dbg !5074

if.end23:                                         ; preds = %if.then22, %if.then19
  br label %if.end31, !dbg !5075

if.else:                                          ; preds = %if.then16
  %call24 = call i32 @is_current_pgrp_orphaned() #12, !dbg !5076
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5076
  br i1 %tobool25, label %if.then26, label %if.else27, !dbg !5078

if.then26:                                        ; preds = %if.else
  store i32 -5, ptr %ret, align 4, !dbg !5079
  br label %if.end30, !dbg !5080

if.else27:                                        ; preds = %if.else
  %14 = load ptr, ptr %pgrp, align 8, !dbg !5081
  %15 = load i32, ptr %sig.addr, align 4, !dbg !5083
  %call28 = call i32 @kill_pgrp(ptr noundef %14, i32 noundef %15, i32 noundef 1) #12, !dbg !5084
  %call29 = call ptr @get_current() #12, !dbg !5085
  call void @set_ti_thread_flag(ptr noundef %call29, i32 noundef 2) #12, !dbg !5085
  store i32 -512, ptr %ret, align 4, !dbg !5086
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end23
  br label %if.end32, !dbg !5087

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %do.end9
  call void @rcu_read_unlock() #12, !dbg !5088
  %16 = load ptr, ptr %tty_pgrp, align 8, !dbg !5089
  %tobool33 = icmp ne ptr %16, null, !dbg !5089
  br i1 %tobool33, label %if.end42, label %if.then34, !dbg !5091

if.then34:                                        ; preds = %if.end32
  br label %do.body35, !dbg !5092

do.body35:                                        ; preds = %if.then34
  br label %do.cond36, !dbg !5094

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5094

do.end37:                                         ; preds = %do.cond36
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5092
  %call39 = call ptr @tty_driver_name(ptr noundef %17) #12, !dbg !5092
  %18 = load ptr, ptr %tty.addr, align 8, !dbg !5092
  %call40 = call ptr @tty_name(ptr noundef %18) #12, !dbg !5092
  %19 = load i32, ptr %sig.addr, align 4, !dbg !5092
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %call39, ptr noundef %call40, i32 noundef %19) #13, !dbg !5092
  store i32 %call41, ptr %tmp38, align 4, !dbg !5094
  %20 = load i32, ptr %tmp38, align 4, !dbg !5092
  br label %if.end42, !dbg !5096

if.end42:                                         ; preds = %do.end37, %if.end32
  %21 = load i32, ptr %ret, align 4, !dbg !5097
  store i32 %21, ptr %retval, align 4, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

cleanup:                                          ; preds = %if.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #11, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5099
  %22 = load i32, ptr %retval, align 4, !dbg !5099
  ret i32 %22, !dbg !5099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5100 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !5111
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5105, metadata !DIExpression()), !dbg !5111
  br label %do.body, !dbg !5111

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5107, metadata !DIExpression()), !dbg !5112
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5112
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5111
  br label %do.cond, !dbg !5112

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5112

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5109, metadata !DIExpression()), !dbg !5113
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !5113, !srcloc !5114
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5113
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5113
  %3 = inttoptr i64 %2 to ptr, !dbg !5113
  store ptr %3, ptr %tmp, align 8, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !5111
  %4 = load ptr, ptr %tmp, align 8, !dbg !5113
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5111
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5111
  store ptr %5, ptr %tmp1, align 8, !dbg !5111
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !5115
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5111
  ret ptr %6, !dbg !5116
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !5117 {
entry:
  call void @__rcu_read_lock() #12, !dbg !5119
  br label %do.body, !dbg !5120

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5121

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5123

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5124

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_pgrp(ptr noundef %task) #4 align 16 !dbg !5127 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5133
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !5134
  %1 = load ptr, ptr %signal, align 64, !dbg !5134
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !5135
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 2, !dbg !5133
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !5133
  ret ptr %2, !dbg !5136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5137 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !5142 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5149
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5150
  ret ptr %1, !dbg !5151
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !5152 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5156, metadata !DIExpression()), !dbg !5162
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5157, metadata !DIExpression()), !dbg !5163
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5158, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5161, metadata !DIExpression()), !dbg !5165
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5165
  %conv = zext i1 %cmp to i32, !dbg !5165
  store i32 1, ptr %tmp, align 4, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5166
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5166
  %0 = load i32, ptr %tmp, align 4, !dbg !5165
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5166
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5166
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5166
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !5166
  br label %do.end, !dbg !5166

do.end:                                           ; preds = %do.body
  ret void, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_ignored(i32 noundef %sig) #0 align 16 !dbg !5168 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  %call = call ptr @get_current() #12, !dbg !5172
  %blocked = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 106, !dbg !5173
  %0 = load i32, ptr %sig.addr, align 4, !dbg !5174
  %call1 = call i32 @sigismember(ptr noundef %blocked, i32 noundef %0) #12, !dbg !5175
  %tobool = icmp ne i32 %call1, 0, !dbg !5175
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5176

lor.rhs:                                          ; preds = %entry
  %call2 = call ptr @get_current() #12, !dbg !5177
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 105, !dbg !5178
  %1 = load ptr, ptr %sighand, align 8, !dbg !5178
  %action = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 3, !dbg !5179
  %2 = load i32, ptr %sig.addr, align 4, !dbg !5180
  %sub = sub i32 %2, 1, !dbg !5181
  %idxprom = sext i32 %sub to i64, !dbg !5177
  %arrayidx = getelementptr [64 x %struct.k_sigaction], ptr %action, i64 0, i64 %idxprom, !dbg !5177
  %sa = getelementptr inbounds %struct.k_sigaction, ptr %arrayidx, i32 0, i32 0, !dbg !5182
  %sa_handler = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 0, !dbg !5183
  %3 = load ptr, ptr %sa_handler, align 8, !dbg !5183
  %cmp = icmp eq ptr %3, inttoptr (i64 1 to ptr), !dbg !5184
  br label %lor.end, !dbg !5176

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5176
  ret i32 %lor.ext, !dbg !5185
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5186 dso_local i32 @is_current_pgrp_orphaned() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5187 dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !5190 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5195, metadata !DIExpression()), !dbg !5197
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5196, metadata !DIExpression()), !dbg !5198
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5199
  %conv = sext i32 %0 to i64, !dbg !5199
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5200
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !5201
  call void @set_bit(i64 noundef %conv, ptr noundef %flags) #12, !dbg !5202
  ret void, !dbg !5203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !5204 {
entry:
  br label %do.body, !dbg !5205

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5206

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #12, !dbg !5208
  br label %do.body1, !dbg !5209

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5210

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5212
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5213 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5217 dso_local ptr @tty_driver_name(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5222 dso_local ptr @tty_name(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_check_change(ptr noundef %tty) #0 align 16 !dbg !5223 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5227
  %call = call i32 @__tty_check_change(ptr noundef %0, i32 noundef 22) #12, !dbg !5228
  ret i32 %call, !dbg !5229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @proc_clear_tty(ptr noundef %p) #0 align 16 !dbg !5230 {
entry:
  %p.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %tty = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5234, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5235, metadata !DIExpression()), !dbg !5244
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #11, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !5236, metadata !DIExpression()), !dbg !5246
  br label %do.body, !dbg !5247

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5248

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5237, metadata !DIExpression()), !dbg !5249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5241, metadata !DIExpression()), !dbg !5249
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5249
  %conv = zext i1 %cmp to i32, !dbg !5249
  store i32 1, ptr %tmp, align 4, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5250
  %0 = load i32, ptr %tmp, align 4, !dbg !5249
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5250
  %sighand = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 105, !dbg !5250
  %2 = load ptr, ptr %sighand, align 8, !dbg !5250
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !5250
  %call = call ptr @spinlock_check(ptr noundef %siglock) #12, !dbg !5250
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !5250
  store i64 %call2, ptr %flags, align 8, !dbg !5250
  br label %do.cond, !dbg !5250

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5250

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5248

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5248

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5251
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 104, !dbg !5252
  %4 = load ptr, ptr %signal, align 64, !dbg !5252
  %tty5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 26, !dbg !5253
  %5 = load ptr, ptr %tty5, align 8, !dbg !5253
  store ptr %5, ptr %tty, align 8, !dbg !5254
  %6 = load ptr, ptr %p.addr, align 8, !dbg !5255
  %signal6 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 104, !dbg !5256
  %7 = load ptr, ptr %signal6, align 64, !dbg !5256
  %tty7 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 26, !dbg !5257
  store ptr null, ptr %tty7, align 8, !dbg !5258
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5259
  %sighand8 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 105, !dbg !5260
  %9 = load ptr, ptr %sighand8, align 8, !dbg !5260
  %siglock9 = getelementptr inbounds %struct.sighand_struct, ptr %9, i32 0, i32 0, !dbg !5261
  %10 = load i64, ptr %flags, align 8, !dbg !5262
  call void @spin_unlock_irqrestore(ptr noundef %siglock9, i64 noundef %10) #12, !dbg !5263
  %11 = load ptr, ptr %tty, align 8, !dbg !5264
  call void @tty_kref_put(ptr noundef %11) #12, !dbg !5265
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #11, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5266
  ret void, !dbg !5266
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local void @tty_kref_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_open_proc_set_tty(ptr noundef %filp, ptr noundef %tty) #0 align 16 !dbg !5268 {
entry:
  %filp.addr = alloca ptr, align 8
  %tty.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5272, metadata !DIExpression()), !dbg !5274
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5273, metadata !DIExpression()), !dbg !5275
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #12, !dbg !5276
  %call = call ptr @get_current() #12, !dbg !5277
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !5278
  %0 = load ptr, ptr %sighand, align 8, !dbg !5278
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 0, !dbg !5279
  call void @spin_lock_irq(ptr noundef %siglock) #12, !dbg !5280
  %call1 = call ptr @get_current() #12, !dbg !5281
  %signal = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 104, !dbg !5283
  %1 = load ptr, ptr %signal, align 64, !dbg !5283
  %leader = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 25, !dbg !5284
  %2 = load i32, ptr %leader, align 8, !dbg !5284
  %tobool = icmp ne i32 %2, 0, !dbg !5281
  br i1 %tobool, label %land.lhs.true, label %if.end9, !dbg !5285

land.lhs.true:                                    ; preds = %entry
  %call2 = call ptr @get_current() #12, !dbg !5286
  %signal3 = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 104, !dbg !5287
  %3 = load ptr, ptr %signal3, align 64, !dbg !5287
  %tty4 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 26, !dbg !5288
  %4 = load ptr, ptr %tty4, align 8, !dbg !5288
  %tobool5 = icmp ne ptr %4, null, !dbg !5286
  br i1 %tobool5, label %if.end9, label %land.lhs.true6, !dbg !5289

land.lhs.true6:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5290
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 21, !dbg !5291
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 1, !dbg !5292
  %6 = load ptr, ptr %session, align 8, !dbg !5292
  %cmp = icmp eq ptr %6, null, !dbg !5293
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5294

if.then:                                          ; preds = %land.lhs.true6
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5295
  %f_mode = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2, !dbg !5298
  %8 = load i32, ptr %f_mode, align 4, !dbg !5298
  %and = and i32 %8, 1, !dbg !5299
  %tobool7 = icmp ne i32 %and, 0, !dbg !5299
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5300

if.then8:                                         ; preds = %if.then
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5301
  call void @__proc_set_tty(ptr noundef %9) #12, !dbg !5302
  br label %if.end, !dbg !5302

if.end:                                           ; preds = %if.then8, %if.then
  br label %if.end9, !dbg !5303

if.end9:                                          ; preds = %if.end, %land.lhs.true6, %land.lhs.true, %entry
  %call10 = call ptr @get_current() #12, !dbg !5304
  %sighand11 = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 105, !dbg !5305
  %10 = load ptr, ptr %sighand11, align 8, !dbg !5305
  %siglock12 = getelementptr inbounds %struct.sighand_struct, ptr %10, i32 0, i32 0, !dbg !5306
  call void @spin_unlock_irq(ptr noundef %siglock12) #12, !dbg !5307
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #12, !dbg !5308
  ret void, !dbg !5309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5310 dso_local void @_raw_read_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !5315 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5321
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5321
  call void @_raw_spin_lock_irq(ptr noundef %1) #12, !dbg !5321
  ret void, !dbg !5322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__proc_set_tty(ptr noundef %tty) #0 align 16 !dbg !5323 {
entry:
  %tty.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5325, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5326, metadata !DIExpression()), !dbg !5334
  br label %do.body, !dbg !5335

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5336

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5327, metadata !DIExpression()), !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5331, metadata !DIExpression()), !dbg !5337
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5337
  %conv = zext i1 %cmp to i32, !dbg !5337
  store i32 1, ptr %tmp, align 4, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5338
  %0 = load i32, ptr %tmp, align 4, !dbg !5337
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5338
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 21, !dbg !5338
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !5338
  %call = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !5338
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !5338
  store i64 %call2, ptr %flags, align 8, !dbg !5338
  br label %do.cond, !dbg !5338

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5338

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5336

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5336

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5339
  %ctrl5 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 21, !dbg !5340
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl5, i32 0, i32 1, !dbg !5341
  %3 = load ptr, ptr %session, align 8, !dbg !5341
  call void @put_pid(ptr noundef %3) #12, !dbg !5342
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5343
  %ctrl6 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 21, !dbg !5344
  %pgrp = getelementptr inbounds %struct.anon.17, ptr %ctrl6, i32 0, i32 0, !dbg !5345
  %5 = load ptr, ptr %pgrp, align 8, !dbg !5345
  call void @put_pid(ptr noundef %5) #12, !dbg !5346
  %call7 = call ptr @get_current() #12, !dbg !5347
  %call8 = call ptr @task_pgrp(ptr noundef %call7) #12, !dbg !5348
  %call9 = call ptr @get_pid(ptr noundef %call8) #12, !dbg !5349
  %6 = load ptr, ptr %tty.addr, align 8, !dbg !5350
  %ctrl10 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 21, !dbg !5351
  %pgrp11 = getelementptr inbounds %struct.anon.17, ptr %ctrl10, i32 0, i32 0, !dbg !5352
  store ptr %call9, ptr %pgrp11, align 8, !dbg !5353
  %call12 = call ptr @get_current() #12, !dbg !5354
  %call13 = call ptr @task_session(ptr noundef %call12) #12, !dbg !5355
  %call14 = call ptr @get_pid(ptr noundef %call13) #12, !dbg !5356
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5357
  %ctrl15 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !5358
  %session16 = getelementptr inbounds %struct.anon.17, ptr %ctrl15, i32 0, i32 1, !dbg !5359
  store ptr %call14, ptr %session16, align 8, !dbg !5360
  %8 = load ptr, ptr %tty.addr, align 8, !dbg !5361
  %ctrl17 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 21, !dbg !5362
  %lock18 = getelementptr inbounds %struct.anon.17, ptr %ctrl17, i32 0, i32 2, !dbg !5363
  %9 = load i64, ptr %flags, align 8, !dbg !5364
  call void @spin_unlock_irqrestore(ptr noundef %lock18, i64 noundef %9) #12, !dbg !5365
  %call19 = call ptr @get_current() #12, !dbg !5366
  %signal = getelementptr inbounds %struct.task_struct, ptr %call19, i32 0, i32 104, !dbg !5368
  %10 = load ptr, ptr %signal, align 64, !dbg !5368
  %tty20 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 26, !dbg !5369
  %11 = load ptr, ptr %tty20, align 8, !dbg !5369
  %tobool = icmp ne ptr %11, null, !dbg !5366
  br i1 %tobool, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %do.end4
  store i32 0, ptr %tmp21, align 4, !dbg !5371
  %12 = load i32, ptr %tmp21, align 4, !dbg !5375
  %call22 = call ptr @get_current() #12, !dbg !5376
  %signal23 = getelementptr inbounds %struct.task_struct, ptr %call22, i32 0, i32 104, !dbg !5377
  %13 = load ptr, ptr %signal23, align 64, !dbg !5377
  %tty24 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 26, !dbg !5378
  %14 = load ptr, ptr %tty24, align 8, !dbg !5378
  call void @tty_kref_put(ptr noundef %14) #12, !dbg !5379
  br label %if.end, !dbg !5380

if.end:                                           ; preds = %if.then, %do.end4
  %call25 = call ptr @get_current() #12, !dbg !5381
  %signal26 = getelementptr inbounds %struct.task_struct, ptr %call25, i32 0, i32 104, !dbg !5382
  %15 = load ptr, ptr %signal26, align 64, !dbg !5382
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 24, !dbg !5383
  %16 = load ptr, ptr %tty_old_pgrp, align 8, !dbg !5383
  call void @put_pid(ptr noundef %16) #12, !dbg !5384
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !5385
  %call27 = call ptr @tty_kref_get(ptr noundef %17) #12, !dbg !5386
  %call28 = call ptr @get_current() #12, !dbg !5387
  %signal29 = getelementptr inbounds %struct.task_struct, ptr %call28, i32 0, i32 104, !dbg !5388
  %18 = load ptr, ptr %signal29, align 64, !dbg !5388
  %tty30 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 26, !dbg !5389
  store ptr %call27, ptr %tty30, align 8, !dbg !5390
  %call31 = call ptr @get_current() #12, !dbg !5391
  %signal32 = getelementptr inbounds %struct.task_struct, ptr %call31, i32 0, i32 104, !dbg !5392
  %19 = load ptr, ptr %signal32, align 64, !dbg !5392
  %tty_old_pgrp33 = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 24, !dbg !5393
  store ptr null, ptr %tty_old_pgrp33, align 8, !dbg !5394
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5395
  ret void, !dbg !5395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !5396 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5400
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5400
  call void @_raw_spin_unlock_irq(ptr noundef %1) #12, !dbg !5400
  ret void, !dbg !5401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5402 dso_local void @_raw_read_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_current_tty() #0 align 16 !dbg !5403 {
entry:
  %tty = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #11, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !5407, metadata !DIExpression()), !dbg !5415
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5408, metadata !DIExpression()), !dbg !5417
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5419

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5409, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5413, metadata !DIExpression()), !dbg !5420
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5420
  %conv = zext i1 %cmp to i32, !dbg !5420
  store i32 1, ptr %tmp, align 4, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5421
  %0 = load i32, ptr %tmp, align 4, !dbg !5420
  %call = call ptr @get_current() #12, !dbg !5421
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !5421
  %1 = load ptr, ptr %sighand, align 8, !dbg !5421
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 0, !dbg !5421
  %call2 = call ptr @spinlock_check(ptr noundef %siglock) #12, !dbg !5421
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #12, !dbg !5421
  store i64 %call3, ptr %flags, align 8, !dbg !5421
  br label %do.cond, !dbg !5421

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5419

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5419

do.end5:                                          ; preds = %do.cond4
  %call6 = call ptr @get_current() #12, !dbg !5422
  %signal = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 104, !dbg !5423
  %2 = load ptr, ptr %signal, align 64, !dbg !5423
  %tty7 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 26, !dbg !5424
  %3 = load ptr, ptr %tty7, align 8, !dbg !5424
  %call8 = call ptr @tty_kref_get(ptr noundef %3) #12, !dbg !5425
  store ptr %call8, ptr %tty, align 8, !dbg !5426
  %call9 = call ptr @get_current() #12, !dbg !5427
  %sighand10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 105, !dbg !5428
  %4 = load ptr, ptr %sighand10, align 8, !dbg !5428
  %siglock11 = getelementptr inbounds %struct.sighand_struct, ptr %4, i32 0, i32 0, !dbg !5429
  %5 = load i64, ptr %flags, align 8, !dbg !5430
  call void @spin_unlock_irqrestore(ptr noundef %siglock11, i64 noundef %5) #12, !dbg !5431
  %6 = load ptr, ptr %tty, align 8, !dbg !5432
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5433
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #11, !dbg !5433
  ret ptr %6, !dbg !5434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_kref_get(ptr noundef %tty) #4 align 16 !dbg !5435 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5441
  %tobool = icmp ne ptr %0, null, !dbg !5441
  br i1 %tobool, label %if.then, label %if.end, !dbg !5443

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5444
  %kref = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 0, !dbg !5445
  call void @kref_get(ptr noundef %kref) #12, !dbg !5446
  br label %if.end, !dbg !5446

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5447
  ret ptr %2, !dbg !5448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @session_clear_tty(ptr noundef %session) #0 align 16 !dbg !5449 {
entry:
  %session.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu289 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %____ptr6 = alloca ptr, align 8
  %__UNIQUE_ID_rcu291 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %session, ptr %session.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %session.addr, metadata !5453, metadata !DIExpression()), !dbg !5471
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5472
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5454, metadata !DIExpression()), !dbg !5473
  br label %do.body, !dbg !5474

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %session.addr, align 8, !dbg !5475
  %cmp = icmp ne ptr %0, null, !dbg !5475
  br i1 %cmp, label %if.then, label %if.end, !dbg !5476

if.then:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5455, metadata !DIExpression()), !dbg !5477
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #11, !dbg !5478
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu289, metadata !5460, metadata !DIExpression()), !dbg !5478
  br label %do.body1, !dbg !5479

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !5481

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5481

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %session.addr, align 8, !dbg !5479
  %tasks = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 3, !dbg !5479
  %arrayidx = getelementptr [4 x %struct.hlist_head], ptr %tasks, i64 0, i64 3, !dbg !5479
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !5479
  %2 = load volatile ptr, ptr %first, align 8, !dbg !5479
  store ptr %2, ptr %tmp, align 8, !dbg !5481
  %3 = load ptr, ptr %tmp, align 8, !dbg !5479
  store ptr %3, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !5478
  %4 = load ptr, ptr %__UNIQUE_ID_rcu289, align 8, !dbg !5478
  store ptr %4, ptr %tmp2, align 8, !dbg !5478
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu289) #11, !dbg !5477
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5478
  store ptr %5, ptr %____ptr, align 8, !dbg !5477
  %6 = load ptr, ptr %____ptr, align 8, !dbg !5477
  %tobool = icmp ne ptr %6, null, !dbg !5477
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5477

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5483
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5462, metadata !DIExpression()), !dbg !5483
  %7 = load ptr, ptr %____ptr, align 8, !dbg !5483
  store ptr %7, ptr %__mptr, align 8, !dbg !5483
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5483
  %add.ptr = getelementptr i8, ptr %8, i64 -1496, !dbg !5483
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5477
  %9 = load ptr, ptr %tmp4, align 8, !dbg !5483
  br label %cond.end, !dbg !5477

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5477

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !5477
  store ptr %cond, ptr %tmp3, align 8, !dbg !5477
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !5484
  %10 = load ptr, ptr %tmp3, align 8, !dbg !5477
  store ptr %10, ptr %p, align 8, !dbg !5484
  br label %for.cond, !dbg !5484

for.cond:                                         ; preds = %cond.end20, %cond.end
  %11 = load ptr, ptr %p, align 8, !dbg !5485
  %tobool5 = icmp ne ptr %11, null, !dbg !5484
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5484

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p, align 8, !dbg !5486
  call void @proc_clear_tty(ptr noundef %12) #12, !dbg !5489
  br label %for.inc, !dbg !5490

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr6) #11, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %____ptr6, metadata !5464, metadata !DIExpression()), !dbg !5491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #11, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu291, metadata !5467, metadata !DIExpression()), !dbg !5492
  br label %do.body7, !dbg !5493

do.body7:                                         ; preds = %for.inc
  br label %do.cond8, !dbg !5495

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5495

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %p, align 8, !dbg !5493
  %pid_links = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 73, !dbg !5493
  %arrayidx11 = getelementptr [4 x %struct.hlist_node], ptr %pid_links, i64 0, i64 3, !dbg !5493
  %next = getelementptr inbounds %struct.hlist_node, ptr %arrayidx11, i32 0, i32 0, !dbg !5493
  %14 = load volatile ptr, ptr %next, align 8, !dbg !5493
  store ptr %14, ptr %tmp10, align 8, !dbg !5495
  %15 = load ptr, ptr %tmp10, align 8, !dbg !5493
  store ptr %15, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !5492
  %16 = load ptr, ptr %__UNIQUE_ID_rcu291, align 8, !dbg !5492
  store ptr %16, ptr %tmp12, align 8, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu291) #11, !dbg !5491
  %17 = load ptr, ptr %tmp12, align 8, !dbg !5492
  store ptr %17, ptr %____ptr6, align 8, !dbg !5491
  %18 = load ptr, ptr %____ptr6, align 8, !dbg !5491
  %tobool14 = icmp ne ptr %18, null, !dbg !5491
  br i1 %tobool14, label %cond.true15, label %cond.false19, !dbg !5491

cond.true15:                                      ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #11, !dbg !5497
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !5469, metadata !DIExpression()), !dbg !5497
  %19 = load ptr, ptr %____ptr6, align 8, !dbg !5497
  store ptr %19, ptr %__mptr16, align 8, !dbg !5497
  %20 = load ptr, ptr %__mptr16, align 8, !dbg !5497
  %add.ptr18 = getelementptr i8, ptr %20, i64 -1496, !dbg !5497
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #11, !dbg !5491
  %21 = load ptr, ptr %tmp17, align 8, !dbg !5497
  br label %cond.end20, !dbg !5491

cond.false19:                                     ; preds = %do.end9
  br label %cond.end20, !dbg !5491

cond.end20:                                       ; preds = %cond.false19, %cond.true15
  %cond21 = phi ptr [ %21, %cond.true15 ], [ null, %cond.false19 ], !dbg !5491
  store ptr %cond21, ptr %tmp13, align 8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr6) #11, !dbg !5485
  %22 = load ptr, ptr %tmp13, align 8, !dbg !5491
  store ptr %22, ptr %p, align 8, !dbg !5485
  br label %for.cond, !dbg !5485, !llvm.loop !5498

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !5499

if.end:                                           ; preds = %for.end, %do.body
  br label %do.cond22, !dbg !5502

do.cond22:                                        ; preds = %if.end
  br label %do.end23, !dbg !5502

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5503
  ret void, !dbg !5503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_signal_session_leader(ptr noundef %tty, i32 noundef %exit_session) #0 align 16 !dbg !5504 {
entry:
  %tty.addr = alloca ptr, align 8
  %exit_session.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %refs = alloca i32, align 4
  %tty_pgrp = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu293 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %____ptr42 = alloca ptr, align 8
  %__UNIQUE_ID_rcu295 = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  %tmp49 = alloca ptr, align 8
  %__mptr52 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5506, metadata !DIExpression()), !dbg !5529
  store i32 %exit_session, ptr %exit_session.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %exit_session.addr, metadata !5507, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5508, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 4, ptr %refs) #11, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %refs, metadata !5509, metadata !DIExpression()), !dbg !5534
  store i32 0, ptr %refs, align 4, !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %tty_pgrp, metadata !5510, metadata !DIExpression()), !dbg !5536
  store ptr null, ptr %tty_pgrp, align 8, !dbg !5536
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #12, !dbg !5537
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5538
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 21, !dbg !5539
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 1, !dbg !5540
  %1 = load ptr, ptr %session, align 8, !dbg !5540
  %tobool = icmp ne ptr %1, null, !dbg !5538
  br i1 %tobool, label %if.then, label %if.end61, !dbg !5541

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5542

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5543
  %ctrl1 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 21, !dbg !5543
  %session2 = getelementptr inbounds %struct.anon.17, ptr %ctrl1, i32 0, i32 1, !dbg !5543
  %3 = load ptr, ptr %session2, align 8, !dbg !5543
  %cmp = icmp ne ptr %3, null, !dbg !5543
  br i1 %cmp, label %if.then3, label %if.end58, !dbg !5544

if.then3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #11, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5511, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #11, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu293, metadata !5518, metadata !DIExpression()), !dbg !5546
  br label %do.body4, !dbg !5547

do.body4:                                         ; preds = %if.then3
  br label %do.cond, !dbg !5549

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5549

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5547
  %ctrl5 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 21, !dbg !5547
  %session6 = getelementptr inbounds %struct.anon.17, ptr %ctrl5, i32 0, i32 1, !dbg !5547
  %5 = load ptr, ptr %session6, align 8, !dbg !5547
  %tasks = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 3, !dbg !5547
  %arrayidx = getelementptr [4 x %struct.hlist_head], ptr %tasks, i64 0, i64 3, !dbg !5547
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !5547
  %6 = load volatile ptr, ptr %first, align 8, !dbg !5547
  store ptr %6, ptr %tmp, align 8, !dbg !5549
  %7 = load ptr, ptr %tmp, align 8, !dbg !5547
  store ptr %7, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !5546
  %8 = load ptr, ptr %__UNIQUE_ID_rcu293, align 8, !dbg !5546
  store ptr %8, ptr %tmp7, align 8, !dbg !5546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu293) #11, !dbg !5545
  %9 = load ptr, ptr %tmp7, align 8, !dbg !5546
  store ptr %9, ptr %____ptr, align 8, !dbg !5545
  %10 = load ptr, ptr %____ptr, align 8, !dbg !5545
  %tobool9 = icmp ne ptr %10, null, !dbg !5545
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !5545

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5520, metadata !DIExpression()), !dbg !5551
  %11 = load ptr, ptr %____ptr, align 8, !dbg !5551
  store ptr %11, ptr %__mptr, align 8, !dbg !5551
  %12 = load ptr, ptr %__mptr, align 8, !dbg !5551
  %add.ptr = getelementptr i8, ptr %12, i64 -1496, !dbg !5551
  store ptr %add.ptr, ptr %tmp10, align 8, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5545
  %13 = load ptr, ptr %tmp10, align 8, !dbg !5551
  br label %cond.end, !dbg !5545

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5545

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ null, %cond.false ], !dbg !5545
  store ptr %cond, ptr %tmp8, align 8, !dbg !5545
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #11, !dbg !5552
  %14 = load ptr, ptr %tmp8, align 8, !dbg !5545
  store ptr %14, ptr %p, align 8, !dbg !5552
  br label %for.cond, !dbg !5552

for.cond:                                         ; preds = %cond.end56, %cond.end
  %15 = load ptr, ptr %p, align 8, !dbg !5553
  %tobool11 = icmp ne ptr %15, null, !dbg !5552
  br i1 %tobool11, label %for.body, label %for.end, !dbg !5552

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %p, align 8, !dbg !5554
  %sighand = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 105, !dbg !5557
  %17 = load ptr, ptr %sighand, align 8, !dbg !5557
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %17, i32 0, i32 0, !dbg !5558
  call void @spin_lock_irq(ptr noundef %siglock) #12, !dbg !5559
  %18 = load ptr, ptr %p, align 8, !dbg !5560
  %signal = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 104, !dbg !5562
  %19 = load ptr, ptr %signal, align 64, !dbg !5562
  %tty12 = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 26, !dbg !5563
  %20 = load ptr, ptr %tty12, align 8, !dbg !5563
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !5564
  %cmp13 = icmp eq ptr %20, %21, !dbg !5565
  br i1 %cmp13, label %if.then14, label %if.end, !dbg !5566

if.then14:                                        ; preds = %for.body
  %22 = load ptr, ptr %p, align 8, !dbg !5567
  %signal15 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 104, !dbg !5569
  %23 = load ptr, ptr %signal15, align 64, !dbg !5569
  %tty16 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 26, !dbg !5570
  store ptr null, ptr %tty16, align 8, !dbg !5571
  %24 = load i32, ptr %refs, align 4, !dbg !5572
  %inc = add i32 %24, 1, !dbg !5572
  store i32 %inc, ptr %refs, align 4, !dbg !5572
  br label %if.end, !dbg !5573

if.end:                                           ; preds = %if.then14, %for.body
  %25 = load ptr, ptr %p, align 8, !dbg !5574
  %signal17 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 104, !dbg !5576
  %26 = load ptr, ptr %signal17, align 64, !dbg !5576
  %leader = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 25, !dbg !5577
  %27 = load i32, ptr %leader, align 8, !dbg !5577
  %tobool18 = icmp ne i32 %27, 0, !dbg !5574
  br i1 %tobool18, label %if.end22, label %if.then19, !dbg !5578

if.then19:                                        ; preds = %if.end
  %28 = load ptr, ptr %p, align 8, !dbg !5579
  %sighand20 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 105, !dbg !5581
  %29 = load ptr, ptr %sighand20, align 8, !dbg !5581
  %siglock21 = getelementptr inbounds %struct.sighand_struct, ptr %29, i32 0, i32 0, !dbg !5582
  call void @spin_unlock_irq(ptr noundef %siglock21) #12, !dbg !5583
  br label %for.inc, !dbg !5584

if.end22:                                         ; preds = %if.end
  %30 = load ptr, ptr %p, align 8, !dbg !5585
  %call = call i32 @send_signal_locked(i32 noundef 1, ptr noundef inttoptr (i64 1 to ptr), ptr noundef %30, i32 noundef 1) #12, !dbg !5586
  %31 = load ptr, ptr %p, align 8, !dbg !5587
  %call23 = call i32 @send_signal_locked(i32 noundef 18, ptr noundef inttoptr (i64 1 to ptr), ptr noundef %31, i32 noundef 1) #12, !dbg !5588
  %32 = load ptr, ptr %p, align 8, !dbg !5589
  %signal24 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 104, !dbg !5590
  %33 = load ptr, ptr %signal24, align 64, !dbg !5590
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %33, i32 0, i32 24, !dbg !5591
  %34 = load ptr, ptr %tty_old_pgrp, align 8, !dbg !5591
  call void @put_pid(ptr noundef %34) #12, !dbg !5592
  %35 = load ptr, ptr %tty.addr, align 8, !dbg !5593
  %ctrl25 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 21, !dbg !5594
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl25, i32 0, i32 2, !dbg !5595
  call void @spin_lock(ptr noundef %lock) #12, !dbg !5596
  %36 = load ptr, ptr %tty.addr, align 8, !dbg !5597
  %ctrl26 = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 21, !dbg !5598
  %pgrp = getelementptr inbounds %struct.anon.17, ptr %ctrl26, i32 0, i32 0, !dbg !5599
  %37 = load ptr, ptr %pgrp, align 8, !dbg !5599
  %call27 = call ptr @get_pid(ptr noundef %37) #12, !dbg !5600
  store ptr %call27, ptr %tty_pgrp, align 8, !dbg !5601
  %38 = load ptr, ptr %tty.addr, align 8, !dbg !5602
  %ctrl28 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 21, !dbg !5604
  %pgrp29 = getelementptr inbounds %struct.anon.17, ptr %ctrl28, i32 0, i32 0, !dbg !5605
  %39 = load ptr, ptr %pgrp29, align 8, !dbg !5605
  %tobool30 = icmp ne ptr %39, null, !dbg !5602
  br i1 %tobool30, label %if.then31, label %if.end37, !dbg !5606

if.then31:                                        ; preds = %if.end22
  %40 = load ptr, ptr %tty.addr, align 8, !dbg !5607
  %ctrl32 = getelementptr inbounds %struct.tty_struct, ptr %40, i32 0, i32 21, !dbg !5608
  %pgrp33 = getelementptr inbounds %struct.anon.17, ptr %ctrl32, i32 0, i32 0, !dbg !5609
  %41 = load ptr, ptr %pgrp33, align 8, !dbg !5609
  %call34 = call ptr @get_pid(ptr noundef %41) #12, !dbg !5610
  %42 = load ptr, ptr %p, align 8, !dbg !5611
  %signal35 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 104, !dbg !5612
  %43 = load ptr, ptr %signal35, align 64, !dbg !5612
  %tty_old_pgrp36 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 24, !dbg !5613
  store ptr %call34, ptr %tty_old_pgrp36, align 8, !dbg !5614
  br label %if.end37, !dbg !5611

if.end37:                                         ; preds = %if.then31, %if.end22
  %44 = load ptr, ptr %tty.addr, align 8, !dbg !5615
  %ctrl38 = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 21, !dbg !5616
  %lock39 = getelementptr inbounds %struct.anon.17, ptr %ctrl38, i32 0, i32 2, !dbg !5617
  call void @spin_unlock(ptr noundef %lock39) #12, !dbg !5618
  %45 = load ptr, ptr %p, align 8, !dbg !5619
  %sighand40 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 105, !dbg !5620
  %46 = load ptr, ptr %sighand40, align 8, !dbg !5620
  %siglock41 = getelementptr inbounds %struct.sighand_struct, ptr %46, i32 0, i32 0, !dbg !5621
  call void @spin_unlock_irq(ptr noundef %siglock41) #12, !dbg !5622
  br label %for.inc, !dbg !5623

for.inc:                                          ; preds = %if.end37, %if.then19
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr42) #11, !dbg !5624
  call void @llvm.dbg.declare(metadata ptr %____ptr42, metadata !5522, metadata !DIExpression()), !dbg !5624
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #11, !dbg !5625
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu295, metadata !5525, metadata !DIExpression()), !dbg !5625
  br label %do.body43, !dbg !5626

do.body43:                                        ; preds = %for.inc
  br label %do.cond44, !dbg !5628

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5628

do.end45:                                         ; preds = %do.cond44
  %47 = load ptr, ptr %p, align 8, !dbg !5626
  %pid_links = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 73, !dbg !5626
  %arrayidx47 = getelementptr [4 x %struct.hlist_node], ptr %pid_links, i64 0, i64 3, !dbg !5626
  %next = getelementptr inbounds %struct.hlist_node, ptr %arrayidx47, i32 0, i32 0, !dbg !5626
  %48 = load volatile ptr, ptr %next, align 8, !dbg !5626
  store ptr %48, ptr %tmp46, align 8, !dbg !5628
  %49 = load ptr, ptr %tmp46, align 8, !dbg !5626
  store ptr %49, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !5625
  %50 = load ptr, ptr %__UNIQUE_ID_rcu295, align 8, !dbg !5625
  store ptr %50, ptr %tmp48, align 8, !dbg !5625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu295) #11, !dbg !5624
  %51 = load ptr, ptr %tmp48, align 8, !dbg !5625
  store ptr %51, ptr %____ptr42, align 8, !dbg !5624
  %52 = load ptr, ptr %____ptr42, align 8, !dbg !5624
  %tobool50 = icmp ne ptr %52, null, !dbg !5624
  br i1 %tobool50, label %cond.true51, label %cond.false55, !dbg !5624

cond.true51:                                      ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr52) #11, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %__mptr52, metadata !5527, metadata !DIExpression()), !dbg !5630
  %53 = load ptr, ptr %____ptr42, align 8, !dbg !5630
  store ptr %53, ptr %__mptr52, align 8, !dbg !5630
  %54 = load ptr, ptr %__mptr52, align 8, !dbg !5630
  %add.ptr54 = getelementptr i8, ptr %54, i64 -1496, !dbg !5630
  store ptr %add.ptr54, ptr %tmp53, align 8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr52) #11, !dbg !5624
  %55 = load ptr, ptr %tmp53, align 8, !dbg !5630
  br label %cond.end56, !dbg !5624

cond.false55:                                     ; preds = %do.end45
  br label %cond.end56, !dbg !5624

cond.end56:                                       ; preds = %cond.false55, %cond.true51
  %cond57 = phi ptr [ %55, %cond.true51 ], [ null, %cond.false55 ], !dbg !5624
  store ptr %cond57, ptr %tmp49, align 8, !dbg !5624
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr42) #11, !dbg !5553
  %56 = load ptr, ptr %tmp49, align 8, !dbg !5624
  store ptr %56, ptr %p, align 8, !dbg !5553
  br label %for.cond, !dbg !5553, !llvm.loop !5631

for.end:                                          ; preds = %for.cond
  br label %if.end58, !dbg !5632

if.end58:                                         ; preds = %for.end, %do.body
  br label %do.cond59, !dbg !5633

do.cond59:                                        ; preds = %if.end58
  br label %do.end60, !dbg !5633

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !5634

if.end61:                                         ; preds = %do.end60, %entry
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #12, !dbg !5635
  %57 = load ptr, ptr %tty_pgrp, align 8, !dbg !5636
  %tobool62 = icmp ne ptr %57, null, !dbg !5636
  br i1 %tobool62, label %if.then63, label %if.end68, !dbg !5638

if.then63:                                        ; preds = %if.end61
  %58 = load i32, ptr %exit_session.addr, align 4, !dbg !5639
  %tobool64 = icmp ne i32 %58, 0, !dbg !5639
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !5642

if.then65:                                        ; preds = %if.then63
  %59 = load ptr, ptr %tty_pgrp, align 8, !dbg !5643
  %60 = load i32, ptr %exit_session.addr, align 4, !dbg !5644
  %call66 = call i32 @kill_pgrp(ptr noundef %59, i32 noundef 1, i32 noundef %60) #12, !dbg !5645
  br label %if.end67, !dbg !5645

if.end67:                                         ; preds = %if.then65, %if.then63
  %61 = load ptr, ptr %tty_pgrp, align 8, !dbg !5646
  call void @put_pid(ptr noundef %61) #12, !dbg !5647
  br label %if.end68, !dbg !5648

if.end68:                                         ; preds = %if.end67, %if.end61
  %62 = load i32, ptr %refs, align 4, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 4, ptr %refs) #11, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5650
  ret i32 %62, !dbg !5651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5652 dso_local i32 @send_signal_locked(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5656 dso_local void @put_pid(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !5657 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5661
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5661
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !5661
  ret void, !dbg !5662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_pid(ptr noundef %pid) #4 align 16 !dbg !5663 {
entry:
  %pid.addr = alloca ptr, align 8
  store ptr %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load ptr, ptr %pid.addr, align 8, !dbg !5669
  %tobool = icmp ne ptr %0, null, !dbg !5669
  br i1 %tobool, label %if.then, label %if.end, !dbg !5671

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pid.addr, align 8, !dbg !5672
  %count = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 0, !dbg !5673
  call void @refcount_inc(ptr noundef %count) #12, !dbg !5674
  br label %if.end, !dbg !5674

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pid.addr, align 8, !dbg !5675
  ret ptr %2, !dbg !5676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !5677 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5681
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5681
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !5681
  ret void, !dbg !5682
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disassociate_ctty(i32 noundef %on_exit) #0 align 16 !dbg !5683 {
entry:
  %on_exit.addr = alloca i32, align 4
  %tty = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tty_pgrp = alloca ptr, align 8
  %old_pgrp = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %on_exit, ptr %on_exit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on_exit.addr, metadata !5685, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty) #11, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %tty, metadata !5686, metadata !DIExpression()), !dbg !5705
  %call = call ptr @get_current() #12, !dbg !5706
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5708
  %0 = load ptr, ptr %signal, align 64, !dbg !5708
  %leader = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 25, !dbg !5709
  %1 = load i32, ptr %leader, align 8, !dbg !5709
  %tobool = icmp ne i32 %1, 0, !dbg !5706
  br i1 %tobool, label %if.end, label %if.then, !dbg !5710

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5711

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current_tty() #12, !dbg !5712
  store ptr %call1, ptr %tty, align 8, !dbg !5713
  %2 = load ptr, ptr %tty, align 8, !dbg !5714
  %tobool2 = icmp ne ptr %2, null, !dbg !5714
  br i1 %tobool2, label %if.then3, label %if.else17, !dbg !5715

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %on_exit.addr, align 4, !dbg !5716
  %tobool4 = icmp ne i32 %3, 0, !dbg !5716
  br i1 %tobool4, label %land.lhs.true, label %if.else, !dbg !5717

land.lhs.true:                                    ; preds = %if.then3
  %4 = load ptr, ptr %tty, align 8, !dbg !5718
  %driver = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 3, !dbg !5719
  %5 = load ptr, ptr %driver, align 8, !dbg !5719
  %type = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 9, !dbg !5720
  %6 = load i16, ptr %type, align 8, !dbg !5720
  %conv = sext i16 %6 to i32, !dbg !5718
  %cmp = icmp ne i32 %conv, 4, !dbg !5721
  br i1 %cmp, label %if.then6, label %if.else, !dbg !5722

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %tty, align 8, !dbg !5723
  call void @tty_vhangup_session(ptr noundef %7) #12, !dbg !5725
  br label %if.end16, !dbg !5726

if.else:                                          ; preds = %land.lhs.true, %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %tty_pgrp, metadata !5687, metadata !DIExpression()), !dbg !5728
  %8 = load ptr, ptr %tty, align 8, !dbg !5729
  %call7 = call ptr @tty_get_pgrp(ptr noundef %8) #12, !dbg !5730
  store ptr %call7, ptr %tty_pgrp, align 8, !dbg !5728
  %9 = load ptr, ptr %tty_pgrp, align 8, !dbg !5731
  %tobool8 = icmp ne ptr %9, null, !dbg !5731
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !5733

if.then9:                                         ; preds = %if.else
  %10 = load ptr, ptr %tty_pgrp, align 8, !dbg !5734
  %11 = load i32, ptr %on_exit.addr, align 4, !dbg !5736
  %call10 = call i32 @kill_pgrp(ptr noundef %10, i32 noundef 1, i32 noundef %11) #12, !dbg !5737
  %12 = load i32, ptr %on_exit.addr, align 4, !dbg !5738
  %tobool11 = icmp ne i32 %12, 0, !dbg !5738
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !5740

if.then12:                                        ; preds = %if.then9
  %13 = load ptr, ptr %tty_pgrp, align 8, !dbg !5741
  %14 = load i32, ptr %on_exit.addr, align 4, !dbg !5742
  %call13 = call i32 @kill_pgrp(ptr noundef %13, i32 noundef 18, i32 noundef %14) #12, !dbg !5743
  br label %if.end14, !dbg !5743

if.end14:                                         ; preds = %if.then12, %if.then9
  %15 = load ptr, ptr %tty_pgrp, align 8, !dbg !5744
  call void @put_pid(ptr noundef %15) #12, !dbg !5745
  br label %if.end15, !dbg !5746

if.end15:                                         ; preds = %if.end14, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty_pgrp) #11, !dbg !5747
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  %16 = load ptr, ptr %tty, align 8, !dbg !5748
  call void @tty_kref_put(ptr noundef %16) #12, !dbg !5749
  br label %if.end35, !dbg !5750

if.else17:                                        ; preds = %if.end
  %17 = load i32, ptr %on_exit.addr, align 4, !dbg !5751
  %tobool18 = icmp ne i32 %17, 0, !dbg !5751
  br i1 %tobool18, label %if.then19, label %if.end34, !dbg !5752

if.then19:                                        ; preds = %if.else17
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_pgrp) #11, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %old_pgrp, metadata !5692, metadata !DIExpression()), !dbg !5754
  %call20 = call ptr @get_current() #12, !dbg !5755
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call20, i32 0, i32 105, !dbg !5756
  %18 = load ptr, ptr %sighand, align 8, !dbg !5756
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %18, i32 0, i32 0, !dbg !5757
  call void @spin_lock_irq(ptr noundef %siglock) #12, !dbg !5758
  %call21 = call ptr @get_current() #12, !dbg !5759
  %signal22 = getelementptr inbounds %struct.task_struct, ptr %call21, i32 0, i32 104, !dbg !5760
  %19 = load ptr, ptr %signal22, align 64, !dbg !5760
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 24, !dbg !5761
  %20 = load ptr, ptr %tty_old_pgrp, align 8, !dbg !5761
  store ptr %20, ptr %old_pgrp, align 8, !dbg !5762
  %call23 = call ptr @get_current() #12, !dbg !5763
  %signal24 = getelementptr inbounds %struct.task_struct, ptr %call23, i32 0, i32 104, !dbg !5764
  %21 = load ptr, ptr %signal24, align 64, !dbg !5764
  %tty_old_pgrp25 = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 24, !dbg !5765
  store ptr null, ptr %tty_old_pgrp25, align 8, !dbg !5766
  %call26 = call ptr @get_current() #12, !dbg !5767
  %sighand27 = getelementptr inbounds %struct.task_struct, ptr %call26, i32 0, i32 105, !dbg !5768
  %22 = load ptr, ptr %sighand27, align 8, !dbg !5768
  %siglock28 = getelementptr inbounds %struct.sighand_struct, ptr %22, i32 0, i32 0, !dbg !5769
  call void @spin_unlock_irq(ptr noundef %siglock28) #12, !dbg !5770
  %23 = load ptr, ptr %old_pgrp, align 8, !dbg !5771
  %tobool29 = icmp ne ptr %23, null, !dbg !5771
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !5773

if.then30:                                        ; preds = %if.then19
  %24 = load ptr, ptr %old_pgrp, align 8, !dbg !5774
  %25 = load i32, ptr %on_exit.addr, align 4, !dbg !5776
  %call31 = call i32 @kill_pgrp(ptr noundef %24, i32 noundef 1, i32 noundef %25) #12, !dbg !5777
  %26 = load ptr, ptr %old_pgrp, align 8, !dbg !5778
  %27 = load i32, ptr %on_exit.addr, align 4, !dbg !5779
  %call32 = call i32 @kill_pgrp(ptr noundef %26, i32 noundef 18, i32 noundef %27) #12, !dbg !5780
  %28 = load ptr, ptr %old_pgrp, align 8, !dbg !5781
  call void @put_pid(ptr noundef %28) #12, !dbg !5782
  br label %if.end33, !dbg !5783

if.end33:                                         ; preds = %if.then30, %if.then19
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_pgrp) #11, !dbg !5784
  br label %cleanup

if.end34:                                         ; preds = %if.else17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  %call36 = call ptr @get_current_tty() #12, !dbg !5785
  store ptr %call36, ptr %tty, align 8, !dbg !5786
  %29 = load ptr, ptr %tty, align 8, !dbg !5787
  %tobool37 = icmp ne ptr %29, null, !dbg !5787
  br i1 %tobool37, label %if.then38, label %if.end54, !dbg !5788

if.then38:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5695, metadata !DIExpression()), !dbg !5790
  %30 = load ptr, ptr %tty, align 8, !dbg !5791
  call void @tty_lock(ptr noundef %30) #12, !dbg !5792
  br label %do.body, !dbg !5793

do.body:                                          ; preds = %if.then38
  br label %do.body39, !dbg !5794

do.body39:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5698, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5702, metadata !DIExpression()), !dbg !5795
  %cmp40 = icmp eq ptr %__dummy, %__dummy2, !dbg !5795
  %conv41 = zext i1 %cmp40 to i32, !dbg !5795
  store i32 1, ptr %tmp, align 4, !dbg !5795
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5796
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5796
  %31 = load i32, ptr %tmp, align 4, !dbg !5795
  %32 = load ptr, ptr %tty, align 8, !dbg !5796
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 21, !dbg !5796
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !5796
  %call42 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !5796
  %call43 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call42) #12, !dbg !5796
  store i64 %call43, ptr %flags, align 8, !dbg !5796
  br label %do.cond, !dbg !5796

do.cond:                                          ; preds = %do.body39
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %do.cond
  br label %do.cond44, !dbg !5794

do.cond44:                                        ; preds = %do.end
  br label %do.end45, !dbg !5794

do.end45:                                         ; preds = %do.cond44
  %33 = load ptr, ptr %tty, align 8, !dbg !5797
  %ctrl46 = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 21, !dbg !5798
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl46, i32 0, i32 1, !dbg !5799
  %34 = load ptr, ptr %session, align 8, !dbg !5799
  call void @put_pid(ptr noundef %34) #12, !dbg !5800
  %35 = load ptr, ptr %tty, align 8, !dbg !5801
  %ctrl47 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 21, !dbg !5802
  %pgrp = getelementptr inbounds %struct.anon.17, ptr %ctrl47, i32 0, i32 0, !dbg !5803
  %36 = load ptr, ptr %pgrp, align 8, !dbg !5803
  call void @put_pid(ptr noundef %36) #12, !dbg !5804
  %37 = load ptr, ptr %tty, align 8, !dbg !5805
  %ctrl48 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 21, !dbg !5806
  %session49 = getelementptr inbounds %struct.anon.17, ptr %ctrl48, i32 0, i32 1, !dbg !5807
  store ptr null, ptr %session49, align 8, !dbg !5808
  %38 = load ptr, ptr %tty, align 8, !dbg !5809
  %ctrl50 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 21, !dbg !5810
  %pgrp51 = getelementptr inbounds %struct.anon.17, ptr %ctrl50, i32 0, i32 0, !dbg !5811
  store ptr null, ptr %pgrp51, align 8, !dbg !5812
  %39 = load ptr, ptr %tty, align 8, !dbg !5813
  %ctrl52 = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 21, !dbg !5814
  %lock53 = getelementptr inbounds %struct.anon.17, ptr %ctrl52, i32 0, i32 2, !dbg !5815
  %40 = load i64, ptr %flags, align 8, !dbg !5816
  call void @spin_unlock_irqrestore(ptr noundef %lock53, i64 noundef %40) #12, !dbg !5817
  %41 = load ptr, ptr %tty, align 8, !dbg !5818
  call void @tty_unlock(ptr noundef %41) #12, !dbg !5819
  %42 = load ptr, ptr %tty, align 8, !dbg !5820
  call void @tty_kref_put(ptr noundef %42) #12, !dbg !5821
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5822
  br label %if.end54, !dbg !5823

if.end54:                                         ; preds = %do.end45, %if.end35
  %call55 = call ptr @get_current() #12, !dbg !5824
  %sighand56 = getelementptr inbounds %struct.task_struct, ptr %call55, i32 0, i32 105, !dbg !5825
  %43 = load ptr, ptr %sighand56, align 8, !dbg !5825
  %siglock57 = getelementptr inbounds %struct.sighand_struct, ptr %43, i32 0, i32 0, !dbg !5826
  call void @spin_lock_irq(ptr noundef %siglock57) #12, !dbg !5827
  %call58 = call ptr @get_current() #12, !dbg !5828
  %signal59 = getelementptr inbounds %struct.task_struct, ptr %call58, i32 0, i32 104, !dbg !5829
  %44 = load ptr, ptr %signal59, align 64, !dbg !5829
  %tty_old_pgrp60 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 24, !dbg !5830
  %45 = load ptr, ptr %tty_old_pgrp60, align 8, !dbg !5830
  call void @put_pid(ptr noundef %45) #12, !dbg !5831
  %call61 = call ptr @get_current() #12, !dbg !5832
  %signal62 = getelementptr inbounds %struct.task_struct, ptr %call61, i32 0, i32 104, !dbg !5833
  %46 = load ptr, ptr %signal62, align 64, !dbg !5833
  %tty_old_pgrp63 = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 24, !dbg !5834
  store ptr null, ptr %tty_old_pgrp63, align 8, !dbg !5835
  %call64 = call ptr @get_current() #12, !dbg !5836
  %sighand65 = getelementptr inbounds %struct.task_struct, ptr %call64, i32 0, i32 105, !dbg !5837
  %47 = load ptr, ptr %sighand65, align 8, !dbg !5837
  %siglock66 = getelementptr inbounds %struct.sighand_struct, ptr %47, i32 0, i32 0, !dbg !5838
  call void @spin_unlock_irq(ptr noundef %siglock66) #12, !dbg !5839
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #12, !dbg !5840
  %call67 = call ptr @get_current() #12, !dbg !5841
  %call68 = call ptr @task_session(ptr noundef %call67) #12, !dbg !5842
  call void @session_clear_tty(ptr noundef %call68) #12, !dbg !5843
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #12, !dbg !5844
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5845
  br label %cleanup, !dbg !5845

cleanup:                                          ; preds = %if.end54, %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tty) #11, !dbg !5845
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5845

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5846 dso_local void @tty_vhangup_session(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tty_get_pgrp(ptr noundef %tty) #0 align 16 !dbg !5848 {
entry:
  %tty.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %pgrp = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5852, metadata !DIExpression()), !dbg !5860
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5861
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5853, metadata !DIExpression()), !dbg !5862
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #11, !dbg !5863
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !5854, metadata !DIExpression()), !dbg !5864
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5866

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5855, metadata !DIExpression()), !dbg !5867
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5859, metadata !DIExpression()), !dbg !5867
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5867
  %conv = zext i1 %cmp to i32, !dbg !5867
  store i32 1, ptr %tmp, align 4, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5868
  %0 = load i32, ptr %tmp, align 4, !dbg !5867
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5868
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 21, !dbg !5868
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !5868
  %call = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !5868
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !5868
  store i64 %call2, ptr %flags, align 8, !dbg !5868
  br label %do.cond, !dbg !5868

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5868

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5866

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5866

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tty.addr, align 8, !dbg !5869
  %ctrl5 = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 21, !dbg !5870
  %pgrp6 = getelementptr inbounds %struct.anon.17, ptr %ctrl5, i32 0, i32 0, !dbg !5871
  %3 = load ptr, ptr %pgrp6, align 8, !dbg !5871
  %call7 = call ptr @get_pid(ptr noundef %3) #12, !dbg !5872
  store ptr %call7, ptr %pgrp, align 8, !dbg !5873
  %4 = load ptr, ptr %tty.addr, align 8, !dbg !5874
  %ctrl8 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 21, !dbg !5875
  %lock9 = getelementptr inbounds %struct.anon.17, ptr %ctrl8, i32 0, i32 2, !dbg !5876
  %5 = load i64, ptr %flags, align 8, !dbg !5877
  call void @spin_unlock_irqrestore(ptr noundef %lock9, i64 noundef %5) #12, !dbg !5878
  %6 = load ptr, ptr %pgrp, align 8, !dbg !5879
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #11, !dbg !5880
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5880
  ret ptr %6, !dbg !5881
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5882 dso_local void @tty_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5883 dso_local void @tty_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_session(ptr noundef %task) #4 align 16 !dbg !5884 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5888
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !5889
  %1 = load ptr, ptr %signal, align 64, !dbg !5889
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !5890
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 3, !dbg !5888
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !5888
  ret ptr %2, !dbg !5891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @no_tty() #0 align 16 !dbg !5892 {
entry:
  %tsk = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #11, !dbg !5895
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !5894, metadata !DIExpression()), !dbg !5896
  %call = call ptr @get_current() #12, !dbg !5897
  store ptr %call, ptr %tsk, align 8, !dbg !5896
  call void @disassociate_ctty(i32 noundef 0) #12, !dbg !5898
  %0 = load ptr, ptr %tsk, align 8, !dbg !5899
  call void @proc_clear_tty(ptr noundef %0) #12, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #11, !dbg !5901
  ret void, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @tty_jobctrl_ioctl(ptr noundef %tty, ptr noundef %real_tty, ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5902 {
entry:
  %retval = alloca i64, align 8
  %tty.addr = alloca ptr, align 8
  %real_tty.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5906, metadata !DIExpression()), !dbg !5912
  store ptr %real_tty, ptr %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_tty.addr, metadata !5907, metadata !DIExpression()), !dbg !5913
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5908, metadata !DIExpression()), !dbg !5914
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5909, metadata !DIExpression()), !dbg !5915
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5910, metadata !DIExpression()), !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5917
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5911, metadata !DIExpression()), !dbg !5918
  %0 = load i64, ptr %arg.addr, align 8, !dbg !5919
  %1 = inttoptr i64 %0 to ptr, !dbg !5920
  store ptr %1, ptr %p, align 8, !dbg !5918
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5921
  switch i32 %2, label %sw.epilog [
    i32 21538, label %sw.bb
    i32 21518, label %sw.bb2
    i32 21519, label %sw.bb5
    i32 21520, label %sw.bb8
    i32 21545, label %sw.bb11
  ], !dbg !5922

sw.bb:                                            ; preds = %entry
  %call = call ptr @get_current() #12, !dbg !5923
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5926
  %3 = load ptr, ptr %signal, align 64, !dbg !5926
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 26, !dbg !5927
  %4 = load ptr, ptr %tty1, align 8, !dbg !5927
  %5 = load ptr, ptr %tty.addr, align 8, !dbg !5928
  %cmp = icmp ne ptr %4, %5, !dbg !5929
  br i1 %cmp, label %if.then, label %if.end, !dbg !5930

if.then:                                          ; preds = %sw.bb
  store i64 -25, ptr %retval, align 8, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

if.end:                                           ; preds = %sw.bb
  call void @no_tty() #12, !dbg !5932
  store i64 0, ptr %retval, align 8, !dbg !5933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %real_tty.addr, align 8, !dbg !5934
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5935
  %8 = load i64, ptr %arg.addr, align 8, !dbg !5936
  %conv = trunc i64 %8 to i32, !dbg !5936
  %call3 = call i32 @tiocsctty(ptr noundef %6, ptr noundef %7, i32 noundef %conv) #12, !dbg !5937
  %conv4 = sext i32 %call3 to i64, !dbg !5937
  store i64 %conv4, ptr %retval, align 8, !dbg !5938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5938

sw.bb5:                                           ; preds = %entry
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5939
  %10 = load ptr, ptr %real_tty.addr, align 8, !dbg !5940
  %11 = load ptr, ptr %p, align 8, !dbg !5941
  %call6 = call i32 @tiocgpgrp(ptr noundef %9, ptr noundef %10, ptr noundef %11) #12, !dbg !5942
  %conv7 = sext i32 %call6 to i64, !dbg !5942
  store i64 %conv7, ptr %retval, align 8, !dbg !5943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5943

sw.bb8:                                           ; preds = %entry
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !5944
  %13 = load ptr, ptr %real_tty.addr, align 8, !dbg !5945
  %14 = load ptr, ptr %p, align 8, !dbg !5946
  %call9 = call i32 @tiocspgrp(ptr noundef %12, ptr noundef %13, ptr noundef %14) #12, !dbg !5947
  %conv10 = sext i32 %call9 to i64, !dbg !5947
  store i64 %conv10, ptr %retval, align 8, !dbg !5948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5948

sw.bb11:                                          ; preds = %entry
  %15 = load ptr, ptr %tty.addr, align 8, !dbg !5949
  %16 = load ptr, ptr %real_tty.addr, align 8, !dbg !5950
  %17 = load ptr, ptr %p, align 8, !dbg !5951
  %call12 = call i32 @tiocgsid(ptr noundef %15, ptr noundef %16, ptr noundef %17) #12, !dbg !5952
  %conv13 = sext i32 %call12 to i64, !dbg !5952
  store i64 %conv13, ptr %retval, align 8, !dbg !5953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5953

sw.epilog:                                        ; preds = %entry
  store i64 -515, ptr %retval, align 8, !dbg !5954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5954

cleanup:                                          ; preds = %sw.epilog, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5955
  %18 = load i64, ptr %retval, align 8, !dbg !5955
  ret i64 %18, !dbg !5955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tiocsctty(ptr noundef %tty, ptr noundef %file, i32 noundef %arg) #0 align 16 !dbg !5956 {
entry:
  %tty.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %arg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5960, metadata !DIExpression()), !dbg !5965
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5961, metadata !DIExpression()), !dbg !5966
  store i32 %arg, ptr %arg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5962, metadata !DIExpression()), !dbg !5967
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5968
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5963, metadata !DIExpression()), !dbg !5969
  store i32 0, ptr %ret, align 4, !dbg !5969
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5970
  call void @tty_lock(ptr noundef %0) #12, !dbg !5971
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #12, !dbg !5972
  %call = call ptr @get_current() #12, !dbg !5973
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !5975
  %1 = load ptr, ptr %signal, align 64, !dbg !5975
  %leader = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 25, !dbg !5976
  %2 = load i32, ptr %leader, align 8, !dbg !5976
  %tobool = icmp ne i32 %2, 0, !dbg !5973
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5977

land.lhs.true:                                    ; preds = %entry
  %call1 = call ptr @get_current() #12, !dbg !5978
  %call2 = call ptr @task_session(ptr noundef %call1) #12, !dbg !5979
  %3 = load ptr, ptr %tty.addr, align 8, !dbg !5980
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 21, !dbg !5981
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 1, !dbg !5982
  %4 = load ptr, ptr %session, align 8, !dbg !5982
  %cmp = icmp eq ptr %call2, %4, !dbg !5983
  br i1 %cmp, label %if.then, label %if.end, !dbg !5984

if.then:                                          ; preds = %land.lhs.true
  br label %unlock, !dbg !5985

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call ptr @get_current() #12, !dbg !5986
  %signal4 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 104, !dbg !5988
  %5 = load ptr, ptr %signal4, align 64, !dbg !5988
  %leader5 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 25, !dbg !5989
  %6 = load i32, ptr %leader5, align 8, !dbg !5989
  %tobool6 = icmp ne i32 %6, 0, !dbg !5986
  br i1 %tobool6, label %lor.lhs.false, label %if.then11, !dbg !5990

lor.lhs.false:                                    ; preds = %if.end
  %call7 = call ptr @get_current() #12, !dbg !5991
  %signal8 = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 104, !dbg !5992
  %7 = load ptr, ptr %signal8, align 64, !dbg !5992
  %tty9 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 26, !dbg !5993
  %8 = load ptr, ptr %tty9, align 8, !dbg !5993
  %tobool10 = icmp ne ptr %8, null, !dbg !5991
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5994

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %ret, align 4, !dbg !5995
  br label %unlock, !dbg !5997

if.end12:                                         ; preds = %lor.lhs.false
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5998
  %ctrl13 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 21, !dbg !6000
  %session14 = getelementptr inbounds %struct.anon.17, ptr %ctrl13, i32 0, i32 1, !dbg !6001
  %10 = load ptr, ptr %session14, align 8, !dbg !6001
  %tobool15 = icmp ne ptr %10, null, !dbg !5998
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !6002

if.then16:                                        ; preds = %if.end12
  %11 = load i32, ptr %arg.addr, align 4, !dbg !6003
  %cmp17 = icmp eq i32 %11, 1, !dbg !6006
  br i1 %cmp17, label %land.lhs.true18, label %if.else, !dbg !6007

land.lhs.true18:                                  ; preds = %if.then16
  %call19 = call zeroext i1 @capable(i32 noundef 21) #12, !dbg !6008
  br i1 %call19, label %if.then20, label %if.else, !dbg !6009

if.then20:                                        ; preds = %land.lhs.true18
  %12 = load ptr, ptr %tty.addr, align 8, !dbg !6010
  %ctrl21 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 21, !dbg !6012
  %session22 = getelementptr inbounds %struct.anon.17, ptr %ctrl21, i32 0, i32 1, !dbg !6013
  %13 = load ptr, ptr %session22, align 8, !dbg !6013
  call void @session_clear_tty(ptr noundef %13) #12, !dbg !6014
  br label %if.end23, !dbg !6015

if.else:                                          ; preds = %land.lhs.true18, %if.then16
  store i32 -1, ptr %ret, align 4, !dbg !6016
  br label %unlock, !dbg !6018

if.end23:                                         ; preds = %if.then20
  br label %if.end24, !dbg !6019

if.end24:                                         ; preds = %if.end23, %if.end12
  %14 = load ptr, ptr %file.addr, align 8, !dbg !6020
  %f_mode = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2, !dbg !6022
  %15 = load i32, ptr %f_mode, align 4, !dbg !6022
  %and = and i32 %15, 1, !dbg !6023
  %cmp25 = icmp eq i32 %and, 0, !dbg !6024
  br i1 %cmp25, label %land.lhs.true26, label %if.end29, !dbg !6025

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call zeroext i1 @capable(i32 noundef 21) #12, !dbg !6026
  br i1 %call27, label %if.end29, label %if.then28, !dbg !6027

if.then28:                                        ; preds = %land.lhs.true26
  store i32 -1, ptr %ret, align 4, !dbg !6028
  br label %unlock, !dbg !6030

if.end29:                                         ; preds = %land.lhs.true26, %if.end24
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !6031
  call void @proc_set_tty(ptr noundef %16) #12, !dbg !6032
  br label %unlock, !dbg !6032

unlock:                                           ; preds = %if.end29, %if.then28, %if.else, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !5964), !dbg !6033
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #12, !dbg !6034
  %17 = load ptr, ptr %tty.addr, align 8, !dbg !6035
  call void @tty_unlock(ptr noundef %17) #12, !dbg !6036
  %18 = load i32, ptr %ret, align 4, !dbg !6037
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6038
  ret i32 %18, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tiocgpgrp(ptr noundef %tty, ptr noundef %real_tty, ptr noundef %p) #0 align 16 !dbg !6040 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %real_tty.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pid = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp6 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6045, metadata !DIExpression()), !dbg !6057
  store ptr %real_tty, ptr %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_tty.addr, metadata !6046, metadata !DIExpression()), !dbg !6058
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6047, metadata !DIExpression()), !dbg !6059
  call void @llvm.lifetime.start.p0(i64 8, ptr %pid) #11, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !6048, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6049, metadata !DIExpression()), !dbg !6063
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6064
  %1 = load ptr, ptr %real_tty.addr, align 8, !dbg !6066
  %cmp = icmp eq ptr %0, %1, !dbg !6067
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6068

land.lhs.true:                                    ; preds = %entry
  %call = call ptr @get_current() #12, !dbg !6069
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !6070
  %2 = load ptr, ptr %signal, align 64, !dbg !6070
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 26, !dbg !6071
  %3 = load ptr, ptr %tty1, align 8, !dbg !6071
  %4 = load ptr, ptr %real_tty.addr, align 8, !dbg !6072
  %cmp2 = icmp ne ptr %3, %4, !dbg !6073
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6074

if.then:                                          ; preds = %land.lhs.true
  store i32 -25, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %real_tty.addr, align 8, !dbg !6076
  %call3 = call ptr @tty_get_pgrp(ptr noundef %5) #12, !dbg !6077
  store ptr %call3, ptr %pid, align 8, !dbg !6078
  call void @might_fault() #12, !dbg !6079
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6050, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6053, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6054, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6055, metadata !DIExpression()), !dbg !6080
  %6 = load ptr, ptr %pid, align 8, !dbg !6080
  %call4 = call i32 @pid_vnr(ptr noundef %6) #12, !dbg !6080
  store i32 %call4, ptr %__x, align 4, !dbg !6080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6080
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6056, metadata !DIExpression()), !dbg !6080
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6080
  store ptr %7, ptr %__ptr, align 8, !dbg !6080
  %8 = load ptr, ptr %__ptr, align 8, !dbg !6080
  store ptr %8, ptr %__ptr_pu, align 8, !dbg !6080
  %9 = load i32, ptr %__x, align 4, !dbg !6080
  store i32 %9, ptr %__val_pu, align 4, !dbg !6080
  %10 = call i64 @llvm.read_register.i64(metadata !4999), !dbg !6080
  %11 = load ptr, ptr %__ptr_pu, align 8, !dbg !6080
  %12 = load i32, ptr %__val_pu, align 4, !dbg !6080
  %13 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %11, i32 %12, i64 4, i64 %10) #11, !dbg !6080, !srcloc !6081
  %asmresult = extractvalue { ptr, i64 } %13, 0, !dbg !6080
  %asmresult5 = extractvalue { ptr, i64 } %13, 1, !dbg !6080
  %14 = ptrtoint ptr %asmresult to i64, !dbg !6080
  %15 = trunc i64 %14 to i32, !dbg !6080
  store i32 %15, ptr %__ret_pu, align 4, !dbg !6080
  call void @llvm.write_register.i64(metadata !4999, i64 %asmresult5), !dbg !6080
  %16 = load ptr, ptr %__ptr, align 8, !dbg !6082
  call void @kmsan_copy_to_user(ptr noundef %16, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #12, !dbg !6082
  %17 = load i32, ptr %__ret_pu, align 4, !dbg !6080
  %conv = sext i32 %17 to i64, !dbg !6080
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6080
  store i64 %expval, ptr %tmp6, align 8, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #11, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #11, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #11, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #11, !dbg !6079
  %18 = load i64, ptr %tmp6, align 8, !dbg !6080
  store i64 %18, ptr %tmp, align 8, !dbg !6079
  %19 = load i64, ptr %tmp, align 8, !dbg !6079
  %conv7 = trunc i64 %19 to i32, !dbg !6084
  store i32 %conv7, ptr %ret, align 4, !dbg !6085
  %20 = load ptr, ptr %pid, align 8, !dbg !6086
  call void @put_pid(ptr noundef %20) #12, !dbg !6087
  %21 = load i32, ptr %ret, align 4, !dbg !6088
  store i32 %21, ptr %retval, align 4, !dbg !6089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6089

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !6090
  call void @llvm.lifetime.end.p0(i64 8, ptr %pid) #11, !dbg !6090
  %22 = load i32, ptr %retval, align 4, !dbg !6090
  ret i32 %22, !dbg !6090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tiocspgrp(ptr noundef %tty, ptr noundef %real_tty, ptr noundef %p) #0 align 16 !dbg !6091 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %real_tty.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pgrp = alloca ptr, align 8
  %pgrp_nr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6093, metadata !DIExpression()), !dbg !6108
  store ptr %real_tty, ptr %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_tty.addr, metadata !6094, metadata !DIExpression()), !dbg !6109
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6095, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgrp) #11, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %pgrp, metadata !6096, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 4, ptr %pgrp_nr) #11, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %pgrp_nr, metadata !6097, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #11, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6098, metadata !DIExpression()), !dbg !6116
  %0 = load ptr, ptr %real_tty.addr, align 8, !dbg !6117
  %call = call i32 @tty_check_change(ptr noundef %0) #12, !dbg !6118
  store i32 %call, ptr %retval1, align 4, !dbg !6116
  %1 = load i32, ptr %retval1, align 4, !dbg !6119
  %cmp = icmp eq i32 %1, -5, !dbg !6121
  br i1 %cmp, label %if.then, label %if.end, !dbg !6122

if.then:                                          ; preds = %entry
  store i32 -25, ptr %retval, align 4, !dbg !6123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6123

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !dbg !6124
  %tobool = icmp ne i32 %2, 0, !dbg !6124
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6126

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %retval1, align 4, !dbg !6127
  store i32 %3, ptr %retval, align 4, !dbg !6128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6128

if.end3:                                          ; preds = %if.end
  call void @might_fault() #12, !dbg !6129
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #11, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6099, metadata !DIExpression()), !dbg !6130
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #11, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6103, metadata !DIExpression()), !dbg !6130
  %4 = call i64 @llvm.read_register.i64(metadata !4999), !dbg !6130
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6130
  %6 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %5, i64 4, i64 %4) #11, !dbg !6130, !srcloc !6131
  %asmresult = extractvalue { ptr, i32, i64 } %6, 0, !dbg !6130
  %asmresult4 = extractvalue { ptr, i32, i64 } %6, 1, !dbg !6130
  %asmresult5 = extractvalue { ptr, i32, i64 } %6, 2, !dbg !6130
  %7 = ptrtoint ptr %asmresult to i64, !dbg !6130
  %8 = trunc i64 %7 to i32, !dbg !6130
  store i32 %8, ptr %__ret_gu, align 4, !dbg !6130
  store i32 %asmresult4, ptr %__val_gu, align 4, !dbg !6130
  call void @llvm.write_register.i64(metadata !4999, i64 %asmresult5), !dbg !6130
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #11, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6104, metadata !DIExpression()), !dbg !6132
  %9 = load i32, ptr %__val_gu, align 4, !dbg !6132
  %conv = zext i32 %9 to i64, !dbg !6132
  store i64 %conv, ptr %__tmp, align 8, !dbg !6132
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #12, !dbg !6132
  %10 = load i64, ptr %__tmp, align 8, !dbg !6132
  %conv7 = trunc i64 %10 to i32, !dbg !6132
  store i32 %conv7, ptr %__val_gu, align 4, !dbg !6132
  store i32 %conv7, ptr %tmp6, align 4, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #11, !dbg !6130
  %11 = load i32, ptr %tmp6, align 4, !dbg !6132
  %12 = load i32, ptr %__val_gu, align 4, !dbg !6130
  store i32 %12, ptr %pgrp_nr, align 4, !dbg !6130
  %13 = load i32, ptr %__ret_gu, align 4, !dbg !6130
  %conv9 = sext i32 %13 to i64, !dbg !6130
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !6130
  store i64 %expval, ptr %tmp8, align 8, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #11, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #11, !dbg !6129
  %14 = load i64, ptr %tmp8, align 8, !dbg !6130
  store i64 %14, ptr %tmp, align 8, !dbg !6129
  %15 = load i64, ptr %tmp, align 8, !dbg !6129
  %tobool10 = icmp ne i64 %15, 0, !dbg !6133
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6134

if.then11:                                        ; preds = %if.end3
  store i32 -14, ptr %retval, align 4, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

if.end12:                                         ; preds = %if.end3
  %16 = load i32, ptr %pgrp_nr, align 4, !dbg !6136
  %cmp13 = icmp slt i32 %16, 0, !dbg !6138
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !6139

if.then15:                                        ; preds = %if.end12
  store i32 -22, ptr %retval, align 4, !dbg !6140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6140

if.end16:                                         ; preds = %if.end12
  %17 = load ptr, ptr %real_tty.addr, align 8, !dbg !6141
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 21, !dbg !6142
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !6143
  call void @spin_lock_irq(ptr noundef %lock) #12, !dbg !6144
  %call17 = call ptr @get_current() #12, !dbg !6145
  %signal = getelementptr inbounds %struct.task_struct, ptr %call17, i32 0, i32 104, !dbg !6147
  %18 = load ptr, ptr %signal, align 64, !dbg !6147
  %tty18 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 26, !dbg !6148
  %19 = load ptr, ptr %tty18, align 8, !dbg !6148
  %tobool19 = icmp ne ptr %19, null, !dbg !6145
  br i1 %tobool19, label %lor.lhs.false, label %if.then31, !dbg !6149

lor.lhs.false:                                    ; preds = %if.end16
  %call20 = call ptr @get_current() #12, !dbg !6150
  %signal21 = getelementptr inbounds %struct.task_struct, ptr %call20, i32 0, i32 104, !dbg !6151
  %20 = load ptr, ptr %signal21, align 64, !dbg !6151
  %tty22 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 26, !dbg !6152
  %21 = load ptr, ptr %tty22, align 8, !dbg !6152
  %22 = load ptr, ptr %real_tty.addr, align 8, !dbg !6153
  %cmp23 = icmp ne ptr %21, %22, !dbg !6154
  br i1 %cmp23, label %if.then31, label %lor.lhs.false25, !dbg !6155

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %23 = load ptr, ptr %real_tty.addr, align 8, !dbg !6156
  %ctrl26 = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 21, !dbg !6157
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl26, i32 0, i32 1, !dbg !6158
  %24 = load ptr, ptr %session, align 8, !dbg !6158
  %call27 = call ptr @get_current() #12, !dbg !6159
  %call28 = call ptr @task_session(ptr noundef %call27) #12, !dbg !6160
  %cmp29 = icmp ne ptr %24, %call28, !dbg !6161
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6162

if.then31:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %if.end16
  store i32 -25, ptr %retval1, align 4, !dbg !6163
  br label %out_unlock_ctrl, !dbg !6165

if.end32:                                         ; preds = %lor.lhs.false25
  call void @rcu_read_lock() #12, !dbg !6166
  %25 = load i32, ptr %pgrp_nr, align 4, !dbg !6167
  %call33 = call ptr @find_vpid(i32 noundef %25) #12, !dbg !6168
  store ptr %call33, ptr %pgrp, align 8, !dbg !6169
  store i32 -3, ptr %retval1, align 4, !dbg !6170
  %26 = load ptr, ptr %pgrp, align 8, !dbg !6171
  %tobool34 = icmp ne ptr %26, null, !dbg !6171
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !6173

if.then35:                                        ; preds = %if.end32
  br label %out_unlock, !dbg !6174

if.end36:                                         ; preds = %if.end32
  store i32 -1, ptr %retval1, align 4, !dbg !6175
  %27 = load ptr, ptr %pgrp, align 8, !dbg !6176
  %call37 = call ptr @session_of_pgrp(ptr noundef %27) #12, !dbg !6178
  %call38 = call ptr @get_current() #12, !dbg !6179
  %call39 = call ptr @task_session(ptr noundef %call38) #12, !dbg !6180
  %cmp40 = icmp ne ptr %call37, %call39, !dbg !6181
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !6182

if.then42:                                        ; preds = %if.end36
  br label %out_unlock, !dbg !6183

if.end43:                                         ; preds = %if.end36
  store i32 0, ptr %retval1, align 4, !dbg !6184
  %28 = load ptr, ptr %real_tty.addr, align 8, !dbg !6185
  %ctrl44 = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 21, !dbg !6186
  %pgrp45 = getelementptr inbounds %struct.anon.17, ptr %ctrl44, i32 0, i32 0, !dbg !6187
  %29 = load ptr, ptr %pgrp45, align 8, !dbg !6187
  call void @put_pid(ptr noundef %29) #12, !dbg !6188
  %30 = load ptr, ptr %pgrp, align 8, !dbg !6189
  %call46 = call ptr @get_pid(ptr noundef %30) #12, !dbg !6190
  %31 = load ptr, ptr %real_tty.addr, align 8, !dbg !6191
  %ctrl47 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 21, !dbg !6192
  %pgrp48 = getelementptr inbounds %struct.anon.17, ptr %ctrl47, i32 0, i32 0, !dbg !6193
  store ptr %call46, ptr %pgrp48, align 8, !dbg !6194
  br label %out_unlock, !dbg !6191

out_unlock:                                       ; preds = %if.end43, %if.then42, %if.then35
  call void @llvm.dbg.label(metadata !6106), !dbg !6195
  call void @rcu_read_unlock() #12, !dbg !6196
  br label %out_unlock_ctrl, !dbg !6196

out_unlock_ctrl:                                  ; preds = %out_unlock, %if.then31
  call void @llvm.dbg.label(metadata !6107), !dbg !6197
  %32 = load ptr, ptr %real_tty.addr, align 8, !dbg !6198
  %ctrl49 = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 21, !dbg !6199
  %lock50 = getelementptr inbounds %struct.anon.17, ptr %ctrl49, i32 0, i32 2, !dbg !6200
  call void @spin_unlock_irq(ptr noundef %lock50) #12, !dbg !6201
  %33 = load i32, ptr %retval1, align 4, !dbg !6202
  store i32 %33, ptr %retval, align 4, !dbg !6203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6203

cleanup:                                          ; preds = %out_unlock_ctrl, %if.then15, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #11, !dbg !6204
  call void @llvm.lifetime.end.p0(i64 4, ptr %pgrp_nr) #11, !dbg !6204
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgrp) #11, !dbg !6204
  %34 = load i32, ptr %retval, align 4, !dbg !6204
  ret i32 %34, !dbg !6204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tiocgsid(ptr noundef %tty, ptr noundef %real_tty, ptr noundef %p) #0 align 16 !dbg !6205 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %real_tty.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %sid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp17 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp19 = alloca i64, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6207, metadata !DIExpression()), !dbg !6225
  store ptr %real_tty, ptr %real_tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_tty.addr, metadata !6208, metadata !DIExpression()), !dbg !6226
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6209, metadata !DIExpression()), !dbg !6227
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !6228
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6210, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 4, ptr %sid) #11, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %sid, metadata !6211, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6232
  %1 = load ptr, ptr %real_tty.addr, align 8, !dbg !6234
  %cmp = icmp eq ptr %0, %1, !dbg !6235
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6236

land.lhs.true:                                    ; preds = %entry
  %call = call ptr @get_current() #12, !dbg !6237
  %signal = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 104, !dbg !6238
  %2 = load ptr, ptr %signal, align 64, !dbg !6238
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 26, !dbg !6239
  %3 = load ptr, ptr %tty1, align 8, !dbg !6239
  %4 = load ptr, ptr %real_tty.addr, align 8, !dbg !6240
  %cmp2 = icmp ne ptr %3, %4, !dbg !6241
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6242

if.then:                                          ; preds = %land.lhs.true
  store i32 -25, ptr %retval, align 4, !dbg !6243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6243

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !6244

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !6245

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6212, metadata !DIExpression()), !dbg !6246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6216, metadata !DIExpression()), !dbg !6246
  %cmp4 = icmp eq ptr %__dummy, %__dummy2, !dbg !6246
  %conv = zext i1 %cmp4 to i32, !dbg !6246
  store i32 1, ptr %tmp, align 4, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !6247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !6247
  %5 = load i32, ptr %tmp, align 4, !dbg !6246
  %6 = load ptr, ptr %real_tty.addr, align 8, !dbg !6247
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 21, !dbg !6247
  %lock = getelementptr inbounds %struct.anon.17, ptr %ctrl, i32 0, i32 2, !dbg !6247
  %call5 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !6247
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call5) #12, !dbg !6247
  store i64 %call6, ptr %flags, align 8, !dbg !6247
  br label %do.cond, !dbg !6247

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6247

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !6245

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !6245

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %real_tty.addr, align 8, !dbg !6248
  %ctrl9 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 21, !dbg !6250
  %session = getelementptr inbounds %struct.anon.17, ptr %ctrl9, i32 0, i32 1, !dbg !6251
  %8 = load ptr, ptr %session, align 8, !dbg !6251
  %tobool = icmp ne ptr %8, null, !dbg !6248
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !6252

if.then10:                                        ; preds = %do.end8
  br label %err, !dbg !6253

if.end11:                                         ; preds = %do.end8
  %9 = load ptr, ptr %real_tty.addr, align 8, !dbg !6254
  %ctrl12 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 21, !dbg !6255
  %session13 = getelementptr inbounds %struct.anon.17, ptr %ctrl12, i32 0, i32 1, !dbg !6256
  %10 = load ptr, ptr %session13, align 8, !dbg !6256
  %call14 = call i32 @pid_vnr(ptr noundef %10) #12, !dbg !6257
  store i32 %call14, ptr %sid, align 4, !dbg !6258
  %11 = load ptr, ptr %real_tty.addr, align 8, !dbg !6259
  %ctrl15 = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 21, !dbg !6260
  %lock16 = getelementptr inbounds %struct.anon.17, ptr %ctrl15, i32 0, i32 2, !dbg !6261
  %12 = load i64, ptr %flags, align 8, !dbg !6262
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %12) #12, !dbg !6263
  call void @might_fault() #12, !dbg !6264
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #11, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6217, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #11, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6220, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #11, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6221, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #11, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6222, metadata !DIExpression()), !dbg !6265
  %13 = load i32, ptr %sid, align 4, !dbg !6265
  store i32 %13, ptr %__x, align 4, !dbg !6265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6223, metadata !DIExpression()), !dbg !6265
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6265
  store ptr %14, ptr %__ptr, align 8, !dbg !6265
  %15 = load ptr, ptr %__ptr, align 8, !dbg !6265
  store ptr %15, ptr %__ptr_pu, align 8, !dbg !6265
  %16 = load i32, ptr %__x, align 4, !dbg !6265
  store i32 %16, ptr %__val_pu, align 4, !dbg !6265
  %17 = call i64 @llvm.read_register.i64(metadata !4999), !dbg !6265
  %18 = load ptr, ptr %__ptr_pu, align 8, !dbg !6265
  %19 = load i32, ptr %__val_pu, align 4, !dbg !6265
  %20 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %18, i32 %19, i64 4, i64 %17) #11, !dbg !6265, !srcloc !6266
  %asmresult = extractvalue { ptr, i64 } %20, 0, !dbg !6265
  %asmresult18 = extractvalue { ptr, i64 } %20, 1, !dbg !6265
  %21 = ptrtoint ptr %asmresult to i64, !dbg !6265
  %22 = trunc i64 %21 to i32, !dbg !6265
  store i32 %22, ptr %__ret_pu, align 4, !dbg !6265
  call void @llvm.write_register.i64(metadata !4999, i64 %asmresult18), !dbg !6265
  %23 = load ptr, ptr %__ptr, align 8, !dbg !6267
  call void @kmsan_copy_to_user(ptr noundef %23, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #12, !dbg !6267
  %24 = load i32, ptr %__ret_pu, align 4, !dbg !6265
  %conv20 = sext i32 %24 to i64, !dbg !6265
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !6265
  store i64 %expval, ptr %tmp19, align 8, !dbg !6265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #11, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #11, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #11, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #11, !dbg !6264
  %25 = load i64, ptr %tmp19, align 8, !dbg !6265
  store i64 %25, ptr %tmp17, align 8, !dbg !6264
  %26 = load i64, ptr %tmp17, align 8, !dbg !6264
  %conv21 = trunc i64 %26 to i32, !dbg !6269
  store i32 %conv21, ptr %retval, align 4, !dbg !6270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6270

err:                                              ; preds = %if.then10
  call void @llvm.dbg.label(metadata !6224), !dbg !6271
  %27 = load ptr, ptr %real_tty.addr, align 8, !dbg !6272
  %ctrl22 = getelementptr inbounds %struct.tty_struct, ptr %27, i32 0, i32 21, !dbg !6273
  %lock23 = getelementptr inbounds %struct.anon.17, ptr %ctrl22, i32 0, i32 2, !dbg !6274
  %28 = load i64, ptr %flags, align 8, !dbg !6275
  call void @spin_unlock_irqrestore(ptr noundef %lock23, i64 noundef %28) #12, !dbg !6276
  store i32 -25, ptr %retval, align 4, !dbg !6277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6277

cleanup:                                          ; preds = %err, %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sid) #11, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !6278
  %29 = load i32, ptr %retval, align 4, !dbg !6278
  ret i32 %29, !dbg !6278
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6279 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6280 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sigismember(ptr noundef %set, i32 noundef %_sig) #4 align 16 !dbg !6283 {
entry:
  %set.addr = alloca ptr, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6288, metadata !DIExpression()), !dbg !6291
  store i32 %_sig, ptr %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_sig.addr, metadata !6289, metadata !DIExpression()), !dbg !6292
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #11, !dbg !6293
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !6290, metadata !DIExpression()), !dbg !6294
  %0 = load i32, ptr %_sig.addr, align 4, !dbg !6295
  %sub = sub i32 %0, 1, !dbg !6296
  %conv = sext i32 %sub to i64, !dbg !6295
  store i64 %conv, ptr %sig, align 8, !dbg !6294
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6297
  %sig1 = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6299
  %arrayidx = getelementptr [1 x i64], ptr %sig1, i64 0, i64 0, !dbg !6297
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6297
  %3 = load i64, ptr %sig, align 8, !dbg !6300
  %shr = lshr i64 %2, %3, !dbg !6301
  %and = and i64 1, %shr, !dbg !6302
  %conv2 = trunc i64 %and to i32, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #11, !dbg !6304
  ret i32 %conv2, !dbg !6305
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6306 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6313, metadata !DIExpression()), !dbg !6315
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6314, metadata !DIExpression()), !dbg !6316
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6317
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6318
  %div = sdiv i64 %1, 64, !dbg !6318
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6319
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !6320
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6321
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6322
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !6323
  ret void, !dbg !6324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6325 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6334, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6337
  %1 = load i64, ptr %size.addr, align 8, !dbg !6338
  %conv = trunc i64 %1 to i32, !dbg !6338
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6339
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6340
  %3 = load i64, ptr %size.addr, align 8, !dbg !6340
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !6340
  ret void, !dbg !6341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6342 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6349
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6351
  br i1 %1, label %if.then, label %if.else, !dbg !6352

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6353
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6353
  %shr = ashr i64 %3, 3, !dbg !6353
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6353
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6355
  %and = and i64 %4, 7, !dbg !6355
  %sh_prom = trunc i64 %and to i32, !dbg !6355
  %shl = shl i32 1, %sh_prom, !dbg !6355
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !6356, !srcloc !6357
  br label %if.end, !dbg !6358

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6359
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6361
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !6362, !srcloc !6363
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6365 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6371, metadata !DIExpression()), !dbg !6373
  ret i1 true, !dbg !6374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6375 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6380, metadata !DIExpression()), !dbg !6383
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6381, metadata !DIExpression()), !dbg !6384
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6382, metadata !DIExpression()), !dbg !6385
  ret void, !dbg !6386
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6387 dso_local void @__rcu_read_unlock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6388 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6391 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #4 align 16 !dbg !6392 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6397, metadata !DIExpression()), !dbg !6398
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6399
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6400
  call void @refcount_inc(ptr noundef %refcount) #12, !dbg !6401
  ret void, !dbg !6402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !6403 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6410
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #12, !dbg !6411
  ret void, !dbg !6412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6413 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6417, metadata !DIExpression()), !dbg !6419
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6418, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6421
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6422
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !6423
  ret void, !dbg !6424
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6425 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6429, metadata !DIExpression()), !dbg !6433
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6430, metadata !DIExpression()), !dbg !6434
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6431, metadata !DIExpression()), !dbg !6435
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6432, metadata !DIExpression()), !dbg !6437
  %0 = load i32, ptr %i.addr, align 4, !dbg !6438
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6439
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6440
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #12, !dbg !6441
  store i32 %call, ptr %old, align 4, !dbg !6437
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6442
  %tobool = icmp ne ptr %2, null, !dbg !6442
  br i1 %tobool, label %if.then, label %if.end, !dbg !6444

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6445
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6446
  store i32 %3, ptr %4, align 4, !dbg !6447
  br label %if.end, !dbg !6448

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6449
  %tobool1 = icmp ne i32 %5, 0, !dbg !6449
  %lnot = xor i1 %tobool1, true, !dbg !6449
  %lnot2 = xor i1 %lnot, true, !dbg !6449
  %lnot3 = xor i1 %lnot2, true, !dbg !6449
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6449
  %conv = sext i32 %lnot.ext to i64, !dbg !6449
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6449
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6449
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6451

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6452
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #12, !dbg !6453
  br label %if.end18, !dbg !6453

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6454
  %cmp = icmp slt i32 %7, 0, !dbg !6454
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6454

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6454
  %9 = load i32, ptr %i.addr, align 4, !dbg !6454
  %add = add i32 %8, %9, !dbg !6454
  %cmp7 = icmp slt i32 %add, 0, !dbg !6454
  br label %lor.end, !dbg !6454

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6454
  %lnot11 = xor i1 %lnot9, true, !dbg !6454
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6454
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6454
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6454
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6454
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6456

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6457
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #12, !dbg !6458
  br label %if.end17, !dbg !6458

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !6459
  ret void, !dbg !6459
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6460 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6466, metadata !DIExpression()), !dbg !6468
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6470
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !6471
  %1 = load i32, ptr %i.addr, align 4, !dbg !6472
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6473
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #12, !dbg !6474
  ret i32 %call, !dbg !6475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6476 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6479 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6481, metadata !DIExpression()), !dbg !6483
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6485
  %1 = load i64, ptr %size.addr, align 8, !dbg !6486
  %conv = trunc i64 %1 to i32, !dbg !6486
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !6487
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6488
  %3 = load i64, ptr %size.addr, align 8, !dbg !6488
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !6488
  ret void, !dbg !6489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6490 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6493, metadata !DIExpression()), !dbg !6495
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6494, metadata !DIExpression()), !dbg !6496
  %0 = load i32, ptr %i.addr, align 4, !dbg !6497
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6498
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #12, !dbg !6499
  ret i32 %call, !dbg !6500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6501 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6504, metadata !DIExpression()), !dbg !6508
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6505, metadata !DIExpression()), !dbg !6509
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6506, metadata !DIExpression()), !dbg !6510
  %0 = load i32, ptr %i.addr, align 4, !dbg !6510
  store i32 %0, ptr %__ret, align 4, !dbg !6510
  %1 = load i32, ptr %__ret, align 4, !dbg !6510
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6510
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6510
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !6510, !srcloc !6511
  store i32 %3, ptr %__ret, align 4, !dbg !6510
  %4 = load i32, ptr %__ret, align 4, !dbg !6510
  store i32 %4, ptr %tmp, align 4, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !6512
  %5 = load i32, ptr %tmp, align 4, !dbg !6510
  ret i32 %5, !dbg !6513
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6514 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6515 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6516 dso_local zeroext i1 @capable(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_set_tty(ptr noundef %tty) #0 align 16 !dbg !6519 {
entry:
  %tty.addr = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6521, metadata !DIExpression()), !dbg !6522
  %call = call ptr @get_current() #12, !dbg !6523
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 105, !dbg !6524
  %0 = load ptr, ptr %sighand, align 8, !dbg !6524
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 0, !dbg !6525
  call void @spin_lock_irq(ptr noundef %siglock) #12, !dbg !6526
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !6527
  call void @__proc_set_tty(ptr noundef %1) #12, !dbg !6528
  %call1 = call ptr @get_current() #12, !dbg !6529
  %sighand2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 105, !dbg !6530
  %2 = load ptr, ptr %sighand2, align 8, !dbg !6530
  %siglock3 = getelementptr inbounds %struct.sighand_struct, ptr %2, i32 0, i32 0, !dbg !6531
  call void @spin_unlock_irq(ptr noundef %siglock3) #12, !dbg !6532
  ret void, !dbg !6533
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !6534 {
entry:
  ret void, !dbg !6536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local i32 @pid_vnr(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !6540 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6545, metadata !DIExpression()), !dbg !6549
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6546, metadata !DIExpression()), !dbg !6550
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6547, metadata !DIExpression()), !dbg !6551
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6548, metadata !DIExpression()), !dbg !6552
  ret void, !dbg !6553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !6554 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6558, metadata !DIExpression()), !dbg !6560
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6559, metadata !DIExpression()), !dbg !6561
  ret void, !dbg !6562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6563 dso_local ptr @find_vpid(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @session_of_pgrp(ptr noundef %pgrp) #0 align 16 !dbg !6566 {
entry:
  %pgrp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %sid = alloca ptr, align 8
  store ptr %pgrp, ptr %pgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgrp.addr, metadata !6568, metadata !DIExpression()), !dbg !6571
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6569, metadata !DIExpression()), !dbg !6573
  call void @llvm.lifetime.start.p0(i64 8, ptr %sid) #11, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %sid, metadata !6570, metadata !DIExpression()), !dbg !6575
  store ptr null, ptr %sid, align 8, !dbg !6575
  %0 = load ptr, ptr %pgrp.addr, align 8, !dbg !6576
  %call = call ptr @pid_task(ptr noundef %0, i32 noundef 2) #12, !dbg !6577
  store ptr %call, ptr %p, align 8, !dbg !6578
  %1 = load ptr, ptr %p, align 8, !dbg !6579
  %cmp = icmp eq ptr %1, null, !dbg !6581
  br i1 %cmp, label %if.then, label %if.end, !dbg !6582

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pgrp.addr, align 8, !dbg !6583
  %call1 = call ptr @pid_task(ptr noundef %2, i32 noundef 0) #12, !dbg !6584
  store ptr %call1, ptr %p, align 8, !dbg !6585
  br label %if.end, !dbg !6586

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !6587
  %cmp2 = icmp ne ptr %3, null, !dbg !6589
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !6590

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %p, align 8, !dbg !6591
  %call4 = call ptr @task_session(ptr noundef %4) #12, !dbg !6592
  store ptr %call4, ptr %sid, align 8, !dbg !6593
  br label %if.end5, !dbg !6594

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load ptr, ptr %sid, align 8, !dbg !6595
  call void @llvm.lifetime.end.p0(i64 8, ptr %sid) #11, !dbg !6596
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !6596
  ret ptr %5, !dbg !6597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6598 dso_local ptr @pid_task(ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!4999}
!llvm.module.flags = !{!5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007}
!llvm.ident = !{!5008}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/tty/tty_jobctrl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa24227106a1f1838f8d55159ab1301e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_check_change287", scope: !9, file: !2, line: 73, type: !174, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_jobctrl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_jobctrl\22 -D KBUILD_BASENAME=\22tty_jobctrl\22 -D KBUILD_MODNAME=\22tty_jobctrl\22 -D __KBUILD_MODNAME=kmod_tty_jobctrl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_jobctrl.ll drivers/tty/tty_jobctrl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !160, globals: !4994, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !32, !48, !56, !62, !67, !73, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !152}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 9, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!31 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !33, line: 1325, baseType: !13, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!36 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!37 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!38 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!39 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!40 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!41 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!42 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!43 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!44 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!45 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!46 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!47 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !49, line: 68, baseType: !13, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!55 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !57, line: 54, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "USRQUOTA", value: 0)
!60 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!61 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !63, line: 65, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!66 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !153, line: 119, baseType: !13, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!156 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!157 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!158 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!159 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!160 = !{!161, !174, !175, !177, !185, !180, !186, !4988, !4989, !166, !4409, !2359, !4990, !4992, !252, !3319}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !163, line: 56, size: 192, elements: !164)
!163 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!164 = !{!165, !167, !168, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !163, line: 57, baseType: !166, size: 64)
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !162, file: !163, line: 58, baseType: !166, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !162, file: !163, line: 59, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !170, line: 21, baseType: !171)
!170 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !172, line: 27, baseType: !13)
!172 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !162, file: !163, line: 61, baseType: !169, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !176, line: 156, baseType: !13)
!176 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !176, line: 198, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !176, line: 199, baseType: !180, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !181, file: !176, line: 199, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !188, line: 746, size: 58368, elements: !189)
!188 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!189 = !{!190, !191, !192, !193, !202, !203, !204, !205, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !297, !308, !435, !439, !442, !473, !474, !475, !476, !487, !489, !490, !491, !492, !493, !494, !505, !506, !509, !510, !511, !512, !513, !514, !515, !516, !523, !524, !531, !532, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3318, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3366, !3372, !3373, !3374, !3375, !3376, !3378, !3381, !3388, !3393, !3396, !3399, !3402, !3405, !4394, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4432, !4433, !4434, !4443, !4451, !4452, !4453, !4454, !4455, !4460, !4461, !4462, !4465, !4466, !4469, !4472, !4475, !4483, !4486, !4487, !4573, !4574, !4575, !4576, !4577, !4583, !4584, !4585, !4586, !4589, !4590, !4593, !4596, !4597, !4600, !4601, !4602, !4605, !4606, !4607, !4608, !4609, !4610, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4642, !4643, !4649, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4661, !4733, !4735, !4736, !4737, !4738, !4739, !4740, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !187, file: !188, line: 752, baseType: !162, size: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !187, file: !188, line: 754, baseType: !13, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !187, file: !188, line: 767, baseType: !174, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !187, file: !188, line: 768, baseType: !194, size: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !153, line: 113, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !153, line: 111, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !195, file: !153, line: 112, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !176, line: 174, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 172, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !199, file: !176, line: 173, baseType: !115, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !188, line: 770, baseType: !13, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !187, file: !188, line: 771, baseType: !13, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !187, file: !188, line: 774, baseType: !115, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !187, file: !188, line: 775, baseType: !206, size: 128, offset: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !207, line: 58, size: 128, elements: !208)
!207 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!208 = !{!209, !215, !220, !224}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !206, file: !207, line: 59, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !211, line: 60, size: 64, elements: !212)
!211 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !211, line: 61, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !207, line: 60, baseType: !216, size: 32, offset: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 60, size: 32, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !216, file: !207, line: 61, baseType: !13, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !216, file: !207, line: 62, baseType: !198, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !206, file: !207, line: 65, baseType: !221, size: 16, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !170, line: 19, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !172, line: 24, baseType: !223)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !206, file: !207, line: 65, baseType: !221, size: 16, offset: 112)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !187, file: !188, line: 776, baseType: !13, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !187, file: !188, line: 777, baseType: !166, size: 64, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !187, file: !188, line: 778, baseType: !186, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !187, file: !188, line: 787, baseType: !115, size: 32, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !187, file: !188, line: 788, baseType: !115, size: 32, offset: 800)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !187, file: !188, line: 790, baseType: !115, size: 32, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !187, file: !188, line: 792, baseType: !115, size: 32, offset: 864)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !187, file: !188, line: 793, baseType: !115, size: 32, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !187, file: !188, line: 794, baseType: !115, size: 32, offset: 928)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !187, file: !188, line: 795, baseType: !13, size: 32, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !187, file: !188, line: 797, baseType: !236, size: 2048, offset: 1024)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !188, line: 551, size: 2048, elements: !237)
!237 = !{!238, !243, !251, !255, !256, !262, !263, !264, !265, !266, !267, !271, !272, !273, !274, !276, !279, !280, !281}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !236, file: !188, line: 553, baseType: !239, size: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !188, line: 411, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !239, file: !188, line: 412, baseType: !166, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !239, file: !188, line: 413, baseType: !169, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !236, file: !188, line: 554, baseType: !244, size: 192, align: 64, offset: 128)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !245, line: 5, size: 192, align: 64, elements: !246)
!245 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!246 = !{!247, !248, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !244, file: !245, line: 6, baseType: !166, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !244, file: !245, line: 7, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !244, file: !245, line: 8, baseType: !249, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !236, file: !188, line: 555, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !170, line: 23, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !172, line: 31, baseType: !254)
!254 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !236, file: !188, line: 556, baseType: !252, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !236, file: !188, line: 558, baseType: !257, size: 128, offset: 448)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !176, line: 190, size: 128, elements: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !176, line: 191, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !257, file: !176, line: 191, baseType: !260, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !236, file: !188, line: 559, baseType: !13, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !236, file: !188, line: 561, baseType: !252, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !236, file: !188, line: 562, baseType: !252, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !236, file: !188, line: 563, baseType: !252, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !236, file: !188, line: 564, baseType: !252, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !236, file: !188, line: 565, baseType: !268, size: 64, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !170, line: 22, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !172, line: 30, baseType: !270)
!270 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !236, file: !188, line: 566, baseType: !252, size: 64, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !236, file: !188, line: 568, baseType: !252, size: 64, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !236, file: !188, line: 571, baseType: !115, size: 32, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !188, line: 572, baseType: !275, size: 64, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !236, file: !188, line: 574, baseType: !277, size: 64, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !188, line: 49, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !236, file: !188, line: 576, baseType: !277, size: 64, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !236, file: !188, line: 578, baseType: !166, size: 64, offset: 1344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !236, file: !188, line: 588, baseType: !282, size: 512, align: 512, offset: 1536)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !188, line: 497, size: 512, align: 512, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !282, file: !188, line: 498, baseType: !252, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !282, file: !188, line: 499, baseType: !252, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !282, file: !188, line: 500, baseType: !252, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !282, file: !188, line: 501, baseType: !169, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !282, file: !188, line: 502, baseType: !169, size: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !282, file: !188, line: 503, baseType: !166, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !282, file: !188, line: 504, baseType: !166, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !282, file: !188, line: 505, baseType: !166, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !282, file: !188, line: 506, baseType: !293, size: 64, align: 64, offset: 448)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !188, line: 445, size: 64, align: 64, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !293, file: !188, line: 446, baseType: !13, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !293, file: !188, line: 447, baseType: !13, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !187, file: !188, line: 798, baseType: !298, size: 384, offset: 3072)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !188, line: 592, size: 384, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !298, file: !188, line: 593, baseType: !257, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !298, file: !188, line: 594, baseType: !166, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !298, file: !188, line: 595, baseType: !166, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !298, file: !188, line: 596, baseType: !13, size: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !298, file: !188, line: 597, baseType: !223, size: 16, offset: 288)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !298, file: !188, line: 598, baseType: !223, size: 16, offset: 304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !298, file: !188, line: 600, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !187, file: !188, line: 799, baseType: !309, size: 1792, offset: 3456)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !188, line: 610, size: 1792, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !432, !433}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !309, file: !188, line: 611, baseType: !244, size: 192, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !309, file: !188, line: 618, baseType: !252, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !309, file: !188, line: 619, baseType: !252, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !309, file: !188, line: 620, baseType: !252, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !309, file: !188, line: 621, baseType: !252, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !309, file: !188, line: 622, baseType: !252, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !309, file: !188, line: 629, baseType: !268, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !309, file: !188, line: 630, baseType: !252, size: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !188, line: 631, baseType: !13, size: 32, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !309, file: !188, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !309, file: !188, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !309, file: !188, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !309, file: !188, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !309, file: !188, line: 662, baseType: !325, size: 512, offset: 704)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !63, line: 118, size: 512, elements: !326)
!326 = !{!327, !335, !336, !341, !428, !429, !430, !431}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !325, file: !63, line: 119, baseType: !328, size: 256)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !329, line: 9, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !329, line: 10, baseType: !244, size: 192, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !328, file: !329, line: 11, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !334, line: 29, baseType: !268)
!334 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !325, file: !63, line: 120, baseType: !333, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !325, file: !63, line: 121, baseType: !337, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!62, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !325, file: !63, line: 122, baseType: !342, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !63, line: 159, size: 512, align: 512, elements: !344)
!344 = !{!345, !396, !397, !401, !411, !412, !423, !427}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !343, file: !63, line: 160, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !63, line: 215, size: 4608, align: 512, elements: !348)
!348 = !{!349, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !63, line: 216, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !351, line: 23, baseType: !352)
!351 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !351, line: 14, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !352, file: !351, line: 15, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !356, line: 44, baseType: !357)
!356 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !356, line: 14, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !356, line: 15, baseType: !360, size: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !356, line: 15, size: 32, elements: !361)
!361 = !{!362, !363, !371}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !360, file: !356, line: 16, baseType: !198, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !356, line: 24, baseType: !364, size: 16)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !356, line: 24, size: 16, elements: !365)
!365 = !{!366, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !364, file: !356, line: 25, baseType: !367, size: 8)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !170, line: 17, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !172, line: 21, baseType: !369)
!369 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !364, file: !356, line: 26, baseType: !367, size: 8, offset: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !356, line: 28, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !356, line: 28, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !372, file: !356, line: 29, baseType: !221, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !372, file: !356, line: 30, baseType: !221, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !347, file: !63, line: 217, baseType: !13, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !347, file: !63, line: 218, baseType: !13, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !347, file: !63, line: 219, baseType: !13, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !347, file: !63, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !347, file: !63, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !347, file: !63, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !347, file: !63, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !347, file: !63, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !347, file: !63, line: 226, baseType: !13, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !347, file: !63, line: 227, baseType: !223, size: 16, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !347, file: !63, line: 228, baseType: !223, size: 16, offset: 208)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !347, file: !63, line: 229, baseType: !13, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !347, file: !63, line: 235, baseType: !333, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !347, file: !63, line: 236, baseType: !340, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !347, file: !63, line: 237, baseType: !333, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !347, file: !63, line: 238, baseType: !340, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !347, file: !63, line: 239, baseType: !393, size: 4096, align: 512, offset: 512)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 4096, align: 512, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !343, file: !63, line: 161, baseType: !13, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !343, file: !63, line: 162, baseType: !398, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !176, line: 32, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !400, line: 96, baseType: !115)
!400 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !343, file: !63, line: 163, baseType: !402, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !403, line: 274, baseType: !404)
!403 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !403, line: 274, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !404, file: !403, line: 274, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !403, line: 69, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !403, line: 64, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !403, line: 65, baseType: !13, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !343, file: !63, line: 164, baseType: !340, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !343, file: !63, line: 165, baseType: !413, size: 128, offset: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !329, line: 14, size: 128, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !413, file: !329, line: 15, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !245, line: 26, size: 128, elements: !417)
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !416, file: !245, line: 27, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !245, line: 12, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !419, file: !245, line: 13, baseType: !249, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !416, file: !245, line: 28, baseType: !249, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !343, file: !63, line: 166, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!333}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !343, file: !63, line: 167, baseType: !333, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !63, line: 123, baseType: !367, size: 8, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !325, file: !63, line: 124, baseType: !367, size: 8, offset: 456)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !325, file: !63, line: 125, baseType: !367, size: 8, offset: 464)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !325, file: !63, line: 126, baseType: !367, size: 8, offset: 472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !309, file: !188, line: 671, baseType: !325, size: 512, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !309, file: !188, line: 679, baseType: !434, size: 64, offset: 1728)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !187, file: !188, line: 800, baseType: !436, size: 64, offset: 5248)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !188, line: 800, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !187, file: !188, line: 809, baseType: !440, size: 64, offset: 5312)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !188, line: 70, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !187, file: !188, line: 825, baseType: !443, size: 2048, align: 512, offset: 5632)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !188, line: 509, size: 2048, align: 512, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !443, file: !188, line: 511, baseType: !252, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !443, file: !188, line: 512, baseType: !252, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !443, file: !188, line: 513, baseType: !252, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !443, file: !188, line: 514, baseType: !252, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !443, file: !188, line: 515, baseType: !252, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !443, file: !188, line: 516, baseType: !252, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !443, file: !188, line: 518, baseType: !252, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !443, file: !188, line: 519, baseType: !252, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !443, file: !188, line: 520, baseType: !268, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !443, file: !188, line: 522, baseType: !252, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !443, file: !188, line: 523, baseType: !252, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !443, file: !188, line: 524, baseType: !268, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !443, file: !188, line: 526, baseType: !268, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !443, file: !188, line: 527, baseType: !252, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !443, file: !188, line: 529, baseType: !252, size: 64, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !443, file: !188, line: 530, baseType: !252, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !443, file: !188, line: 531, baseType: !252, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !443, file: !188, line: 532, baseType: !252, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !443, file: !188, line: 533, baseType: !252, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !443, file: !188, line: 535, baseType: !252, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !443, file: !188, line: 536, baseType: !252, size: 64, offset: 1280)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !443, file: !188, line: 537, baseType: !252, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !443, file: !188, line: 538, baseType: !252, size: 64, offset: 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !443, file: !188, line: 539, baseType: !252, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !443, file: !188, line: 540, baseType: !252, size: 64, offset: 1536)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !443, file: !188, line: 541, baseType: !252, size: 64, offset: 1600)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !443, file: !188, line: 542, baseType: !252, size: 64, offset: 1664)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !443, file: !188, line: 543, baseType: !252, size: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !187, file: !188, line: 833, baseType: !13, size: 32, offset: 7680)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !187, file: !188, line: 836, baseType: !13, size: 32, offset: 7712)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !187, file: !188, line: 837, baseType: !115, size: 32, offset: 7744)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !187, file: !188, line: 838, baseType: !477, size: 64, offset: 7808)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !480, line: 19, baseType: !481)
!480 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !480, line: 19, size: 64, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !481, file: !480, line: 19, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 1)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !187, file: !188, line: 839, baseType: !488, size: 64, offset: 7872)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !187, file: !188, line: 840, baseType: !479, size: 64, offset: 7936)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !187, file: !188, line: 841, baseType: !174, size: 64, offset: 8000)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !187, file: !188, line: 843, baseType: !223, size: 16, offset: 8064)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !187, file: !188, line: 845, baseType: !223, size: 16, offset: 8080)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !187, file: !188, line: 848, baseType: !115, size: 32, offset: 8096)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !187, file: !188, line: 849, baseType: !495, size: 32, offset: 8128)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !188, line: 718, size: 32, elements: !496)
!496 = !{!497, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !495, file: !188, line: 724, baseType: !498, size: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !188, line: 719, size: 32, elements: !499)
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !498, file: !188, line: 720, baseType: !367, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !498, file: !188, line: 721, baseType: !367, size: 8, offset: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !498, file: !188, line: 722, baseType: !367, size: 8, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !498, file: !188, line: 723, baseType: !367, size: 8, offset: 24)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !495, file: !188, line: 725, baseType: !169, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !187, file: !188, line: 850, baseType: !257, size: 128, offset: 8192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !187, file: !188, line: 851, baseType: !507, size: 64, offset: 8320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !188, line: 60, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !187, file: !188, line: 855, baseType: !166, size: 64, offset: 8384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !187, file: !188, line: 856, baseType: !367, size: 8, offset: 8448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !187, file: !188, line: 857, baseType: !367, size: 8, offset: 8456)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !187, file: !188, line: 858, baseType: !115, size: 32, offset: 8480)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !187, file: !188, line: 859, baseType: !257, size: 128, offset: 8512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !187, file: !188, line: 860, baseType: !115, size: 32, offset: 8640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !187, file: !188, line: 861, baseType: !257, size: 128, offset: 8704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !187, file: !188, line: 873, baseType: !517, size: 256, offset: 8832)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !188, line: 376, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !517, file: !188, line: 381, baseType: !166, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !517, file: !188, line: 384, baseType: !254, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !517, file: !188, line: 389, baseType: !254, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !517, file: !188, line: 392, baseType: !254, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !187, file: !188, line: 875, baseType: !257, size: 128, offset: 9088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !187, file: !188, line: 877, baseType: !525, size: 320, offset: 9216)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !526, line: 86, size: 320, elements: !527)
!526 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !525, file: !526, line: 87, baseType: !115, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !525, file: !526, line: 88, baseType: !257, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !525, file: !526, line: 89, baseType: !257, size: 128, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !187, file: !188, line: 878, baseType: !244, size: 192, align: 64, offset: 9536)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !187, file: !188, line: 881, baseType: !533, size: 64, offset: 9728)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !33, line: 733, size: 10240, elements: !535)
!535 = !{!536, !3237}
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !33, line: 734, baseType: !537, size: 10240)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !534, file: !33, line: 734, size: 10240, elements: !538)
!538 = !{!539, !543, !565, !3116, !3117, !3118, !3119, !3120, !3121, !3128, !3129, !3130, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3169, !3171, !3174, !3217, !3218, !3219, !3222, !3223, !3224, !3227, !3228, !3229, !3235, !3236}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !33, line: 739, baseType: !540, size: 512, align: 512)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !537, file: !33, line: 739, size: 512, align: 512, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !540, file: !33, line: 747, baseType: !198, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !537, file: !33, line: 750, baseType: !544, size: 128, offset: 512)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !545, line: 218, size: 128, elements: !546)
!545 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!546 = !{!547, !563, !564}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !545, line: 219, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !545, line: 219, size: 32, elements: !549)
!549 = !{!550, !559}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !548, file: !545, line: 220, baseType: !551, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !552, line: 29, baseType: !553)
!552 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !552, line: 17, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !552, line: 18, baseType: !556, size: 32)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !552, line: 18, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !556, file: !552, line: 19, baseType: !352, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !548, file: !545, line: 221, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !545, line: 197, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 197, elements: !562)
!562 = !{}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !544, file: !545, line: 223, baseType: !13, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !544, file: !545, line: 224, baseType: !174, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !537, file: !33, line: 752, baseType: !566, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!166, !569, !166, !166, !166, !166}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !571)
!571 = !{!572, !586, !587, !588, !595, !607, !610, !611, !681, !895, !904, !3106, !3107, !3108, !3109, !3110, !3111, !3113, !3114, !3115}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !20, line: 995, baseType: !573, size: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !570, file: !20, line: 995, size: 128, elements: !574)
!574 = !{!575, !576, !585}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !573, file: !20, line: 996, baseType: !210, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !573, file: !20, line: 997, baseType: !577, size: 128, align: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !176, line: 232, size: 128, align: 64, elements: !578)
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !577, file: !176, line: 233, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !577, file: !176, line: 234, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !580}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !573, file: !20, line: 998, baseType: !13, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !570, file: !20, line: 1005, baseType: !551, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !570, file: !20, line: 1006, baseType: !175, size: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !570, file: !20, line: 1007, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !590, line: 13, baseType: !591)
!590 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !176, line: 181, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 179, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !592, file: !176, line: 180, baseType: !268, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !570, file: !20, line: 1008, baseType: !596, size: 256, offset: 256)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !597, line: 66, size: 256, elements: !598)
!597 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!598 = !{!599, !600, !601, !606}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !596, file: !597, line: 67, baseType: !589, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !596, file: !597, line: 68, baseType: !350, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !596, file: !597, line: 70, baseType: !602, size: 32, offset: 96)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !603, line: 15, size: 32, elements: !604)
!603 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !602, file: !603, line: 20, baseType: !198, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !596, file: !597, line: 72, baseType: !257, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !570, file: !20, line: 1009, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !176, line: 52, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !400, line: 88, baseType: !270)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !570, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !570, file: !20, line: 1011, baseType: !612, size: 256, offset: 640)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !613)
!613 = !{!614, !637, !670, !671, !679, !680}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !20, line: 949, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !616, line: 34, baseType: !617)
!616 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 25, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !617, file: !616, line: 26, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !621, line: 27, baseType: !622)
!621 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !621, line: 13, size: 64, elements: !623)
!623 = !{!624, !636}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !621, line: 14, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !621, line: 14, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !625, file: !621, line: 15, baseType: !198, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 16, baseType: !629, size: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 16, size: 32, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !629, file: !621, line: 18, baseType: !367, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !629, file: !621, line: 19, baseType: !633, size: 24, offset: 8)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 24, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 3)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !621, line: 26, baseType: !355, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !612, file: !20, line: 950, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 59, size: 768, elements: !640)
!640 = !{!641, !642, !643, !644, !651, !652, !659, !660}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !639, file: !25, line: 61, baseType: !194, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !639, file: !25, line: 62, baseType: !13, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !25, line: 63, baseType: !551, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !639, file: !25, line: 65, baseType: !645, size: 256, offset: 128)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 256, elements: !649)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !176, line: 194, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !646, file: !176, line: 195, baseType: !180, size: 64)
!649 = !{!650}
!650 = !DISubrange(count: 4)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !639, file: !25, line: 66, baseType: !646, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !639, file: !25, line: 68, baseType: !653, size: 192, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !654, line: 41, baseType: !655)
!654 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !654, line: 37, size: 192, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !655, file: !654, line: 38, baseType: !551, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !655, file: !654, line: 39, baseType: !257, size: 128, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !639, file: !25, line: 69, baseType: !577, size: 128, align: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !639, file: !25, line: 70, baseType: !661, offset: 768)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, elements: !668)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 54, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !662, file: !25, line: 55, baseType: !115, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !662, file: !25, line: 56, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !25, line: 56, flags: DIFlagFwdDecl)
!668 = !{!669}
!669 = !DISubrange(count: -1)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !612, file: !20, line: 951, baseType: !24, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !612, file: !20, line: 952, baseType: !672, size: 32, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !673, line: 23, baseType: !674)
!673 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !673, line: 21, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !673, line: 22, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !176, line: 37, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !400, line: 49, baseType: !13)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !612, file: !20, line: 952, baseType: !672, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !612, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !570, file: !20, line: 1012, baseType: !682, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !685, line: 110, size: 1472, elements: !686)
!685 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!686 = !{!687, !688, !689, !696, !697, !698, !699, !700, !701, !702, !703, !709, !710, !711, !712, !713, !714, !840, !841, !842, !843, !844, !875, !878, !882, !890}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !684, file: !685, line: 111, baseType: !589, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !684, file: !685, line: 112, baseType: !672, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !684, file: !685, line: 113, baseType: !690, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !673, line: 28, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !673, line: 26, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !673, line: 27, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !176, line: 38, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !400, line: 50, baseType: !13)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !684, file: !685, line: 114, baseType: !672, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !684, file: !685, line: 115, baseType: !690, size: 32, offset: 160)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !684, file: !685, line: 116, baseType: !672, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !684, file: !685, line: 117, baseType: !690, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !684, file: !685, line: 118, baseType: !672, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !684, file: !685, line: 119, baseType: !690, size: 32, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !684, file: !685, line: 120, baseType: !13, size: 32, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !684, file: !685, line: 121, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !705, line: 24, baseType: !706)
!705 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 24, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !706, file: !705, line: 24, baseType: !252, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !684, file: !685, line: 122, baseType: !704, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !684, file: !685, line: 123, baseType: !704, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !684, file: !685, line: 124, baseType: !704, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !684, file: !685, line: 125, baseType: !704, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !684, file: !685, line: 127, baseType: !369, size: 8, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !684, file: !685, line: 129, baseType: !715, size: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !717, line: 195, size: 1728, elements: !718)
!717 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!718 = !{!719, !720, !725, !730, !739, !742, !743, !750, !751, !752, !753, !756, !757, !758, !760, !761, !804, !825}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !716, file: !717, line: 196, baseType: !194, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !716, file: !717, line: 197, baseType: !721, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !717, line: 28, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !176, line: 104, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !170, line: 20, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !172, line: 26, baseType: !115)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 198, baseType: !726, size: 192, offset: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 198, size: 192, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !726, file: !717, line: 199, baseType: !257, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !726, file: !717, line: 200, baseType: !244, size: 192, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !716, file: !717, line: 205, baseType: !731, size: 320, offset: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !732, line: 48, size: 320, elements: !733)
!732 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!733 = !{!734, !735, !736, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 49, baseType: !589, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !732, line: 55, baseType: !589, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !731, file: !732, line: 57, baseType: !602, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !731, file: !732, line: 59, baseType: !350, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !731, file: !732, line: 60, baseType: !257, size: 128, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !716, file: !717, line: 206, baseType: !740, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !717, line: 206, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !716, file: !717, line: 207, baseType: !174, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 208, baseType: !744, size: 64, offset: 704)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 208, size: 64, elements: !745)
!745 = !{!746, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !744, file: !717, line: 209, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !748, line: 8, baseType: !269)
!748 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !744, file: !717, line: 210, baseType: !747, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !716, file: !717, line: 212, baseType: !747, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !716, file: !717, line: 213, baseType: !672, size: 32, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !716, file: !717, line: 214, baseType: !690, size: 32, offset: 864)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !716, file: !717, line: 215, baseType: !754, size: 32, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !717, line: 31, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !176, line: 110, baseType: !169)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !716, file: !717, line: 216, baseType: !223, size: 16, offset: 928)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !716, file: !717, line: 217, baseType: !223, size: 16, offset: 944)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !716, file: !717, line: 221, baseType: !759, size: 16, offset: 960)
!759 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !717, line: 228, baseType: !166, size: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 245, baseType: !762, size: 320, offset: 1088)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 245, size: 320, elements: !763)
!763 = !{!764, !795}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !762, file: !717, line: 246, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !717, line: 114, size: 320, elements: !766)
!766 = !{!767, !768, !780, !783, !792}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !765, file: !717, line: 116, baseType: !166, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !717, line: 117, baseType: !769, size: 64, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !717, line: 117, size: 64, elements: !770)
!770 = !{!771, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !717, line: 118, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !717, line: 118, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !772, file: !717, line: 120, baseType: !221, size: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !772, file: !717, line: 121, baseType: !776, size: 48, offset: 16)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 6)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !769, file: !717, line: 127, baseType: !166, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !717, line: 129, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !717, line: 102, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !765, file: !717, line: 130, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !717, line: 108, size: 192, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !785, file: !717, line: 109, baseType: !577, size: 128, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !785, file: !717, line: 110, baseType: !194, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !785, file: !717, line: 111, baseType: !790, size: 8, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !176, line: 35, baseType: !791)
!791 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !765, file: !717, line: 131, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !717, line: 247, baseType: !796, size: 320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !717, line: 247, size: 320, elements: !797)
!797 = !{!798, !799, !800, !801, !802}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !796, file: !717, line: 248, baseType: !166, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !796, file: !717, line: 249, baseType: !166, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !717, line: 250, baseType: !781, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !796, file: !717, line: 251, baseType: !784, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !796, file: !717, line: 252, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !717, line: 260, baseType: !805, size: 256, offset: 1408)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !717, line: 260, size: 256, elements: !806)
!806 = !{!807, !813}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !805, file: !717, line: 261, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !717, line: 134, size: 256, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !808, file: !717, line: 135, baseType: !174, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !808, file: !717, line: 136, baseType: !812, size: 256)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !649)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !717, line: 262, baseType: !814, size: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !717, line: 262, size: 256, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !814, file: !717, line: 264, baseType: !257, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !814, file: !717, line: 265, baseType: !818, size: 128, offset: 128)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !819, line: 22, size: 128, elements: !820)
!819 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!820 = !{!821, !824}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !818, file: !819, line: 23, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !819, line: 23, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !818, file: !819, line: 24, baseType: !166, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !716, file: !717, line: 280, baseType: !826, size: 64, offset: 1664)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !717, line: 176, size: 192, elements: !828)
!828 = !{!829, !838, !839}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !827, file: !717, line: 177, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !717, line: 171, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!115, !715, !834, !836, !715}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !827, file: !717, line: 178, baseType: !715, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !827, file: !717, line: 179, baseType: !781, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !684, file: !685, line: 130, baseType: !715, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !684, file: !685, line: 131, baseType: !715, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !684, file: !685, line: 132, baseType: !715, size: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !684, file: !685, line: 135, baseType: !174, size: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !684, file: !685, line: 137, baseType: !845, size: 64, offset: 1088)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !847, line: 14, size: 1088, elements: !848)
!847 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!848 = !{!849, !850, !859, !860, !861, !862, !863, !864}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !846, file: !847, line: 15, baseType: !194, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !846, file: !847, line: 17, baseType: !851, size: 320, offset: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !852, line: 22, size: 320, elements: !853)
!852 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !851, file: !852, line: 23, baseType: !350, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !851, file: !852, line: 24, baseType: !268, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !851, file: !852, line: 26, baseType: !257, size: 128, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !851, file: !852, line: 28, baseType: !858, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !846, file: !847, line: 19, baseType: !166, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !846, file: !847, line: 20, baseType: !589, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !846, file: !847, line: 23, baseType: !181, size: 128, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !847, line: 24, baseType: !672, size: 32, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !846, file: !847, line: 29, baseType: !589, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !846, file: !847, line: 36, baseType: !865, size: 320, offset: 768)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !866, line: 15, size: 320, elements: !867)
!866 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!867 = !{!868, !869, !870, !871, !872, !873, !874}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !865, file: !866, line: 16, baseType: !350, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !865, file: !866, line: 18, baseType: !115, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !865, file: !866, line: 19, baseType: !115, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !865, file: !866, line: 20, baseType: !115, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !865, file: !866, line: 21, baseType: !115, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !865, file: !866, line: 22, baseType: !166, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !866, line: 23, baseType: !166, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !684, file: !685, line: 138, baseType: !876, size: 64, offset: 1152)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !673, line: 18, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !684, file: !685, line: 139, baseType: !879, size: 64, offset: 1216)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !881, line: 16, flags: DIFlagFwdDecl)
!881 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!882 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !684, file: !685, line: 140, baseType: !883, size: 64, offset: 1280)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !685, line: 25, size: 64, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !884, file: !685, line: 26, baseType: !198, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !884, file: !685, line: 27, baseType: !115, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !884, file: !685, line: 28, baseType: !889, offset: 64)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !668)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 142, baseType: !891, size: 128, offset: 1344)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 142, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !891, file: !685, line: 143, baseType: !115, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !891, file: !685, line: 144, baseType: !577, size: 128, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !570, file: !20, line: 1013, baseType: !896, size: 256, offset: 960)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !896, file: !20, line: 971, baseType: !166, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !896, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !896, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !896, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !896, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !896, file: !20, line: 976, baseType: !608, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !570, file: !20, line: 1014, baseType: !905, size: 128, offset: 1216)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !906, line: 8, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!907 = !{!908, !3105}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !905, file: !906, line: 9, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !911, line: 70, size: 256, elements: !912)
!911 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!912 = !{!913, !3102, !3103, !3104}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !910, file: !911, line: 71, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !916, line: 82, size: 1536, elements: !917)
!916 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!917 = !{!918, !919, !924, !932, !933, !948, !3069, !3071, !3084, !3085, !3086, !3087, !3088, !3094, !3095, !3096}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !915, file: !916, line: 84, baseType: !13, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !915, file: !916, line: 85, baseType: !920, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !403, line: 275, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !403, line: 275, size: 32, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !921, file: !403, line: 275, baseType: !407, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !915, file: !916, line: 86, baseType: !925, size: 128, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !926, line: 38, size: 128, elements: !927)
!926 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!927 = !{!928, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !926, line: 39, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !925, file: !926, line: 39, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !915, file: !916, line: 87, baseType: !914, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !915, file: !916, line: 88, baseType: !934, size: 128, offset: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !916, line: 49, size: 128, elements: !935)
!935 = !{!936, !945}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !916, line: 50, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !916, line: 50, size: 64, elements: !938)
!938 = !{!939, !944}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !916, line: 51, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !916, line: 51, size: 64, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !940, file: !916, line: 52, baseType: !169, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !940, file: !916, line: 52, baseType: !169, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !937, file: !916, line: 54, baseType: !252, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !934, file: !916, line: 56, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !915, file: !916, line: 89, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !951)
!951 = !{!952, !954, !955, !956, !957, !958, !959, !962, !963, !1161, !2875, !2876, !2877, !2878, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !3043, !3046, !3047, !3048, !3065, !3066, !3067, !3068}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !950, file: !20, line: 642, baseType: !953, size: 16)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !176, line: 24, baseType: !223)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !950, file: !20, line: 643, baseType: !223, size: 16, offset: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !950, file: !20, line: 644, baseType: !672, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !950, file: !20, line: 645, baseType: !257, size: 128, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !950, file: !20, line: 646, baseType: !690, size: 32, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !950, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !950, file: !20, line: 650, baseType: !960, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !950, file: !20, line: 651, baseType: !960, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !950, file: !20, line: 654, baseType: !964, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !967)
!967 = !{!968, !972, !985, !991, !995, !999, !1003, !1007, !1011, !1015, !1019, !1020, !1026, !1030, !1068, !1099, !1109, !1115, !1119, !1123, !1127, !1131, !1135, !1141, !1145}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !966, file: !20, line: 1967, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!914, !949, !914, !13}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !966, file: !20, line: 1968, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!793, !914, !949, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !978, line: 10, size: 128, elements: !979)
!978 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!979 = !{!980, !984}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !977, file: !978, line: 11, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !174}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !977, file: !978, line: 12, baseType: !174, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !966, file: !20, line: 1969, baseType: !986, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!115, !989, !949, !115}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !705, line: 42, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !966, file: !20, line: 1970, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!960, !949, !115, !790}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !966, file: !20, line: 1972, baseType: !996, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!115, !914, !803, !115}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !966, file: !20, line: 1974, baseType: !1000, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!115, !989, !949, !914, !953, !790}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !966, file: !20, line: 1976, baseType: !1004, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!115, !914, !949, !914}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !966, file: !20, line: 1977, baseType: !1008, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!115, !949, !914}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !966, file: !20, line: 1978, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!115, !989, !949, !914, !793}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !966, file: !20, line: 1980, baseType: !1016, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!115, !989, !949, !914, !953}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !966, file: !20, line: 1982, baseType: !1008, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !966, file: !20, line: 1983, baseType: !1021, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!115, !989, !949, !914, !953, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !176, line: 21, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !176, line: 18, baseType: !169)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !966, file: !20, line: 1985, baseType: !1027, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!115, !989, !949, !914, !949, !914, !13}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !966, file: !20, line: 1987, baseType: !1031, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!115, !989, !914, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1049, !1058, !1059, !1065, !1066, !1067}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1035, file: !20, line: 227, baseType: !13, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1035, file: !20, line: 228, baseType: !953, size: 16, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !20, line: 241, baseType: !1040, size: 32, offset: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !20, line: 241, size: 32, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1040, file: !20, line: 242, baseType: !672, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1040, file: !20, line: 243, baseType: !1044, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1045, line: 16, baseType: !1046)
!1045 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 14, size: 32, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1046, file: !1045, line: 15, baseType: !677, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !20, line: 245, baseType: !1050, size: 32, offset: 96)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !20, line: 245, size: 32, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1050, file: !20, line: 246, baseType: !690, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1050, file: !20, line: 247, baseType: !1054, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1045, line: 20, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 18, size: 32, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1055, file: !1045, line: 19, baseType: !694, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1035, file: !20, line: 249, baseType: !608, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1035, file: !20, line: 250, baseType: !1060, size: 128, offset: 192)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !748, line: 13, size: 128, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1060, file: !748, line: 14, baseType: !747, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1060, file: !748, line: 15, baseType: !1064, size: 64, offset: 64)
!1064 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1035, file: !20, line: 251, baseType: !1060, size: 128, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1035, file: !20, line: 252, baseType: !1060, size: 128, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1035, file: !20, line: 259, baseType: !569, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !966, file: !20, line: 1988, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!115, !989, !1072, !1074, !169, !13}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1076, line: 22, size: 1280, elements: !1077)
!1076 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1075, file: !1076, line: 23, baseType: !169, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1075, file: !1076, line: 24, baseType: !953, size: 16, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1075, file: !1076, line: 25, baseType: !13, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1075, file: !1076, line: 26, baseType: !755, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1075, file: !1076, line: 27, baseType: !252, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1075, file: !1076, line: 28, baseType: !252, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1075, file: !1076, line: 41, baseType: !252, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1075, file: !1076, line: 42, baseType: !1024, size: 32, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1075, file: !1076, line: 43, baseType: !1024, size: 32, offset: 352)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1075, file: !1076, line: 44, baseType: !672, size: 32, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1075, file: !1076, line: 45, baseType: !690, size: 32, offset: 416)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1075, file: !1076, line: 46, baseType: !608, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1075, file: !1076, line: 47, baseType: !1060, size: 128, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1075, file: !1076, line: 48, baseType: !1060, size: 128, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1075, file: !1076, line: 49, baseType: !1060, size: 128, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1075, file: !1076, line: 50, baseType: !1060, size: 128, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1075, file: !1076, line: 51, baseType: !252, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1075, file: !1076, line: 52, baseType: !252, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1075, file: !1076, line: 53, baseType: !169, size: 32, offset: 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1075, file: !1076, line: 54, baseType: !169, size: 32, offset: 1184)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1075, file: !1076, line: 55, baseType: !252, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !966, file: !20, line: 1990, baseType: !1100, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1103, !914, !803, !1106}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !176, line: 66, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !400, line: 73, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !400, line: 15, baseType: !1064)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 61, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !400, line: 72, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !400, line: 16, baseType: !166)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !966, file: !20, line: 1991, baseType: !1110, size: 64, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!115, !949, !1113, !252, !252}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !966, file: !20, line: 1993, baseType: !1116, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!115, !949, !115}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !966, file: !20, line: 1994, baseType: !1120, size: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!115, !949, !914, !569, !13, !953}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !966, file: !20, line: 1997, baseType: !1124, size: 64, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!115, !989, !949, !569, !953}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !966, file: !20, line: 1999, baseType: !1128, size: 64, offset: 1280)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!960, !989, !914, !115}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !966, file: !20, line: 2001, baseType: !1132, size: 64, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!115, !989, !914, !960, !115}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !966, file: !20, line: 2003, baseType: !1136, size: 64, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!115, !989, !914, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !966, file: !20, line: 2005, baseType: !1142, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!115, !914, !1139}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !966, file: !20, line: 2006, baseType: !1146, size: 64, offset: 1536)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1149, !949}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !1151)
!1151 = !{!1152, !1160}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1150, file: !20, line: 3193, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1154, line: 296, size: 128, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1155 = !{!1156, !1157, !1159}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1153, file: !1154, line: 297, baseType: !551, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1153, file: !1154, line: 299, baseType: !1158, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !176, line: 154, baseType: !13)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1153, file: !1154, line: 300, baseType: !174, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1150, file: !20, line: 3194, baseType: !169, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !950, file: !20, line: 655, baseType: !1162, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !2388, !2520, !2560, !2643, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2660, !2664, !2665, !2668, !2671, !2674, !2677, !2678, !2679, !2720, !2746, !2747, !2748, !2749, !2750, !2751, !2754, !2758, !2767, !2768, !2769, !2770, !2829, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1163, file: !20, line: 1191, baseType: !257, size: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1163, file: !20, line: 1192, baseType: !1024, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1163, file: !20, line: 1193, baseType: !369, size: 8, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1163, file: !20, line: 1194, baseType: !166, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1163, file: !20, line: 1195, baseType: !608, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1163, file: !20, line: 1196, baseType: !1171, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1182, !1186, !1190, !1194, !2376, !2377, !2378, !2380, !2381, !2382, !2384, !2385, !2386, !2387}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1172, file: !20, line: 2367, baseType: !793, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1172, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1172, file: !20, line: 2376, baseType: !1177, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!115, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !911, line: 21, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1172, file: !20, line: 2377, baseType: !1183, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1172, file: !20, line: 2378, baseType: !1187, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!914, !1171, !115, !793, !174}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1172, file: !20, line: 2380, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1162}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1172, file: !20, line: 2381, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1204, !2019, !2045, !2046, !2047, !2048, !2052, !2055, !2056, !2057, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2125, !2129, !2149, !2169, !2170, !2171, !2172, !2181, !2204, !2205, !2208, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2222, !2223, !2334, !2342, !2343, !2344, !2346, !2350, !2351, !2355, !2356, !2357, !2358, !2360, !2361, !2362, !2369, !2370, !2371, !2375}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1196, file: !12, line: 403, baseType: !11, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1196, file: !12, line: 406, baseType: !257, size: 128, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1196, file: !12, line: 409, baseType: !1201, size: 448, offset: 192)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 56)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1196, file: !12, line: 417, baseType: !1205, size: 768, offset: 640)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !1206)
!1206 = !{!1207, !2012, !2013, !2014, !2017}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1205, file: !12, line: 46, baseType: !1208, size: 512)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1209, line: 64, size: 512, elements: !1210)
!1209 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1210 = !{!1211, !1212, !1213, !1215, !1259, !1867, !2002, !2007, !2008, !2009, !2010, !2011}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1208, file: !1209, line: 65, baseType: !793, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1208, file: !1209, line: 66, baseType: !257, size: 128, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1208, file: !1209, line: 67, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1208, file: !1209, line: 68, baseType: !1216, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1209, line: 168, size: 768, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1217, file: !1209, line: 169, baseType: !257, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1217, file: !1209, line: 170, baseType: !551, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1217, file: !1209, line: 171, baseType: !1208, size: 512, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1217, file: !1209, line: 172, baseType: !1223, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1209, line: 133, size: 192, elements: !1226)
!1226 = !{!1227, !1234, !1239}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1225, file: !1209, line: 134, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!115, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1225, file: !1209, line: 135, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!793, !1232}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1225, file: !1209, line: 136, baseType: !1240, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!115, !1232, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1209, line: 125, size: 20736, elements: !1246)
!1246 = !{!1247, !1249, !1253, !1254, !1258}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1245, file: !1209, line: 126, baseType: !1248, size: 192)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 192, elements: !634)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1245, file: !1209, line: 127, baseType: !1250, size: 4096, offset: 192)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 4096, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1245, file: !1209, line: 128, baseType: !115, size: 32, offset: 4288)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1245, file: !1209, line: 129, baseType: !1255, size: 16384, offset: 4320)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 2048)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1245, file: !1209, line: 130, baseType: !115, size: 32, offset: 20704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1208, file: !1209, line: 69, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1209, line: 116, size: 384, elements: !1263)
!1263 = !{!1264, !1268, !1287, !1827, !1857, !1861}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1262, file: !1209, line: 117, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1214}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1262, file: !1209, line: 118, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1272, line: 254, size: 128, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1273 = !{!1274, !1283}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1271, file: !1272, line: 255, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1103, !1214, !1278, !803}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1272, line: 30, size: 128, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1272, line: 31, baseType: !793, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1279, file: !1272, line: 32, baseType: !953, size: 16, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1271, file: !1272, line: 256, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!1103, !1214, !1278, !793, !1106}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1262, file: !1209, line: 119, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1272, line: 84, size: 320, elements: !1292)
!1292 = !{!1293, !1294, !1298, !1823, !1825}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1291, file: !1272, line: 85, baseType: !793, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1291, file: !1272, line: 86, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!953, !1214, !1278, !115}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1291, file: !1272, line: 88, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!953, !1214, !1302, !115}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1272, line: 175, size: 512, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1814, !1818, !1819}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1303, file: !1272, line: 176, baseType: !1279, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1303, file: !1272, line: 177, baseType: !1106, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1303, file: !1272, line: 178, baseType: !174, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1303, file: !1272, line: 179, baseType: !1309, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1806, !1807, !1808, !1811, !1812, !1813}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1313, file: !20, line: 473, baseType: !949, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1313, file: !20, line: 474, baseType: !1153, size: 128, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1313, file: !20, line: 475, baseType: !731, size: 320, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1313, file: !20, line: 476, baseType: !1158, size: 32, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1313, file: !20, line: 477, baseType: !198, size: 32, offset: 544)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1313, file: !20, line: 482, baseType: !416, size: 128, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1313, file: !20, line: 483, baseType: !166, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1313, file: !20, line: 484, baseType: !166, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1313, file: !20, line: 485, baseType: !1324, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !1327)
!1327 = !{!1328, !1631, !1701, !1705, !1709, !1715, !1721, !1725, !1730, !1734, !1738, !1742, !1770, !1774, !1778, !1782, !1787, !1791, !1798, !1802}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1326, file: !20, line: 405, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!115, !1332, !1629}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !33, line: 74, size: 512, align: 128, elements: !1334)
!1334 = !{!1335, !1336, !1623, !1628}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1333, file: !33, line: 75, baseType: !166, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !33, line: 83, baseType: !1337, size: 320, offset: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !33, line: 83, size: 320, elements: !1338)
!1338 = !{!1339, !1360, !1374, !1378, !1622}
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !33, line: 84, baseType: !1340, size: 320)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !33, line: 84, size: 320, elements: !1341)
!1341 = !{!1342, !1353, !1354, !1359}
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !33, line: 90, baseType: !1343, size: 128)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !33, line: 90, size: 128, elements: !1344)
!1344 = !{!1345, !1346, !1351, !1352}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1343, file: !33, line: 91, baseType: !257, size: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !33, line: 94, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !33, line: 94, size: 128, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1347, file: !33, line: 96, baseType: !174, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1347, file: !33, line: 98, baseType: !13, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1343, file: !33, line: 102, baseType: !257, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1343, file: !33, line: 103, baseType: !257, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1340, file: !33, line: 106, baseType: !1312, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !33, line: 107, baseType: !1355, size: 64, offset: 192)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !33, line: 107, size: 64, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1355, file: !33, line: 108, baseType: !166, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1355, file: !33, line: 109, baseType: !166, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1340, file: !33, line: 117, baseType: !166, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !33, line: 119, baseType: !1361, size: 320)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !33, line: 119, size: 320, elements: !1362)
!1362 = !{!1363, !1364, !1367, !1368, !1369}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1361, file: !33, line: 124, baseType: !166, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1361, file: !33, line: 125, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !33, line: 125, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1361, file: !33, line: 126, baseType: !166, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1361, file: !33, line: 127, baseType: !166, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !33, line: 128, baseType: !1370, size: 64, offset: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !33, line: 128, size: 64, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1370, file: !33, line: 133, baseType: !166, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1370, file: !33, line: 138, baseType: !589, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !33, line: 141, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !33, line: 141, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1375, file: !33, line: 142, baseType: !166, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !33, line: 144, baseType: !1379, size: 128)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !33, line: 144, size: 128, elements: !1380)
!1380 = !{!1381, !1621}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1379, file: !33, line: 146, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !49, line: 126, size: 1216, elements: !1384)
!1384 = !{!1385, !1395, !1416, !1427, !1428, !1429, !1430, !1603, !1604, !1605}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1383, file: !49, line: 127, baseType: !1386, size: 384)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !49, line: 21, size: 384, elements: !1387)
!1387 = !{!1388, !1389, !1391, !1392, !1393, !1394}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1386, file: !49, line: 22, baseType: !166, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1386, file: !49, line: 23, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1386, file: !49, line: 24, baseType: !1390, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1386, file: !49, line: 25, baseType: !166, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1386, file: !49, line: 26, baseType: !166, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1386, file: !49, line: 27, baseType: !166, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1383, file: !49, line: 128, baseType: !1396, size: 128, offset: 384)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1397, line: 105, size: 128, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1396, file: !1397, line: 110, baseType: !166, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1396, file: !1397, line: 118, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1397, line: 95, size: 448, elements: !1403)
!1403 = !{!1404, !1405, !1411, !1412, !1413, !1414, !1415}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1402, file: !1397, line: 96, baseType: !589, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1402, file: !1397, line: 97, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1397, line: 60, baseType: !1408)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1402, file: !1397, line: 98, baseType: !1406, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1402, file: !1397, line: 99, baseType: !790, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1402, file: !1397, line: 100, baseType: !790, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1402, file: !1397, line: 101, baseType: !577, size: 128, align: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1402, file: !1397, line: 102, baseType: !1410, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1383, file: !49, line: 129, baseType: !1417, size: 256, offset: 512)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1418, line: 26, size: 256, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1417, file: !1418, line: 27, baseType: !13, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1417, file: !1418, line: 28, baseType: !1422, size: 192, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1423, line: 43, size: 192, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1422, file: !1423, line: 44, baseType: !350, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1422, file: !1423, line: 45, baseType: !257, size: 128, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1383, file: !49, line: 130, baseType: !48, size: 32, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !49, line: 131, baseType: !13, size: 32, offset: 800)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1383, file: !49, line: 132, baseType: !166, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1383, file: !49, line: 133, baseType: !1431, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !49, line: 77, size: 192, elements: !1434)
!1434 = !{!1435, !1439, !1599}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1433, file: !49, line: 83, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1332}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1433, file: !49, line: 89, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !33, line: 1184, baseType: !13)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1446, line: 512, size: 896, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1447 = !{!1448, !1566, !1567, !1574, !1581, !1591, !1592, !1593, !1595, !1597}
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 513, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1445, file: !1446, line: 513, size: 320, elements: !1450)
!1450 = !{!1451, !1562, !1563, !1564, !1565}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1449, file: !1446, line: 514, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !33, line: 625, size: 1344, elements: !1454)
!1454 = !{!1455, !1464, !1465, !1473, !1480, !1481, !1486, !1487, !1492, !1493, !1496, !1555, !1556, !1557, !1558, !1559, !1560}
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !33, line: 628, baseType: !1456, size: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !33, line: 628, size: 128, elements: !1457)
!1457 = !{!1458, !1463}
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !33, line: 629, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !33, line: 629, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1459, file: !33, line: 631, baseType: !166, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1459, file: !33, line: 632, baseType: !166, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1456, file: !33, line: 635, baseType: !577, size: 128, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1453, file: !33, line: 639, baseType: !533, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1453, file: !33, line: 640, baseType: !1466, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1467, line: 297, baseType: !1468)
!1467 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1467, line: 297, size: 64, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1468, file: !1467, line: 297, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1472, line: 19, baseType: !166)
!1472 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !33, line: 646, baseType: !1474, size: 64, offset: 256)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !33, line: 646, size: 64, elements: !1475)
!1475 = !{!1476, !1479}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1474, file: !33, line: 647, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !33, line: 542, baseType: !166)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1474, file: !33, line: 648, baseType: !1478, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1453, file: !33, line: 666, baseType: !115, size: 32, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1453, file: !33, line: 667, baseType: !1482, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !33, line: 579, size: 320, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !33, line: 580, baseType: !731, size: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1453, file: !33, line: 670, baseType: !790, size: 8, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1453, file: !33, line: 681, baseType: !1488, size: 256, offset: 512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !33, line: 678, size: 256, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1488, file: !33, line: 679, baseType: !244, size: 192, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1488, file: !33, line: 680, baseType: !166, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1453, file: !33, line: 689, baseType: !257, size: 128, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1453, file: !33, line: 691, baseType: !1494, size: 64, offset: 896)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !33, line: 691, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1453, file: !33, line: 694, baseType: !1497, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1446, line: 563, size: 1024, elements: !1500)
!1500 = !{!1501, !1505, !1506, !1510, !1514, !1518, !1519, !1523, !1527, !1531, !1532, !1533, !1537, !1541, !1547, !1551}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1499, file: !1446, line: 564, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !1452}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1499, file: !1446, line: 569, baseType: !1502, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1499, file: !1446, line: 571, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!115, !1452, !166}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1499, file: !1446, line: 572, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!115, !1452}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1499, file: !1446, line: 578, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!115, !1452, !166, !166, !166}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1499, file: !1446, line: 580, baseType: !1440, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1499, file: !1446, line: 581, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1443, !1444, !13}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1499, file: !1446, line: 582, baseType: !1524, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1443, !1444, !166, !166}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1499, file: !1446, line: 584, baseType: !1528, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!166, !1452}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1499, file: !1446, line: 588, baseType: !1440, size: 64, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1499, file: !1446, line: 591, baseType: !1440, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1499, file: !1446, line: 597, baseType: !1534, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!115, !1452, !166, !174, !115, !115}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1499, file: !1446, line: 603, baseType: !1538, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!793, !1452}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1499, file: !1446, line: 613, baseType: !1542, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!115, !1452, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !188, line: 54, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1499, file: !1446, line: 625, baseType: !1548, size: 64, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1545, !1452, !166}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1499, file: !1446, line: 633, baseType: !1552, size: 64, offset: 960)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1332, !1452, !166}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1453, file: !33, line: 697, baseType: !166, size: 64, offset: 1024)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1453, file: !33, line: 699, baseType: !569, size: 64, offset: 1088)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1453, file: !33, line: 700, baseType: !174, size: 64, offset: 1152)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1453, file: !33, line: 711, baseType: !589, size: 64, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1453, file: !33, line: 717, baseType: !1545, size: 64, offset: 1280)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1453, file: !33, line: 722, baseType: !1561, offset: 1344)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !33, line: 570, elements: !562)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1449, file: !1446, line: 515, baseType: !1158, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1449, file: !1446, line: 516, baseType: !166, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1449, file: !1446, line: 517, baseType: !166, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1449, file: !1446, line: 518, baseType: !166, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !1446, line: 520, baseType: !32, size: 32, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1445, file: !1446, line: 522, baseType: !1568, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1472, line: 22, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1472, line: 22, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1570, file: !1472, line: 22, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1472, line: 15, baseType: !166)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1445, file: !1446, line: 524, baseType: !1575, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1467, line: 372, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1467, line: 372, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1577, file: !1467, line: 372, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1472, line: 16, baseType: !166)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 527, baseType: !1582, size: 64, offset: 512)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 527, size: 64, elements: !1583)
!1583 = !{!1584, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1582, file: !1446, line: 528, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1472, line: 21, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1472, line: 21, size: 64, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1586, file: !1472, line: 21, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1472, line: 14, baseType: !166)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1582, file: !1446, line: 529, baseType: !1569, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1445, file: !1446, line: 534, baseType: !1332, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1445, file: !1446, line: 535, baseType: !1332, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1445, file: !1446, line: 541, baseType: !1594, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1445, file: !1446, line: 545, baseType: !1596, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1445, file: !1446, line: 549, baseType: !1598, size: 64, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1467, line: 520, baseType: !1332)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1433, file: !49, line: 100, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!115, !1382, !166, !166, !115}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1383, file: !49, line: 134, baseType: !174, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1383, file: !49, line: 135, baseType: !115, size: 32, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !49, line: 136, baseType: !1606, size: 128, offset: 1088)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !49, line: 136, size: 128, elements: !1607)
!1607 = !{!1608, !1614}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1606, file: !49, line: 137, baseType: !1609, size: 128)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1610, line: 6, size: 128, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1609, file: !1610, line: 7, baseType: !252, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1609, file: !1610, line: 8, baseType: !252, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !49, line: 138, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !49, line: 138, elements: !1616)
!1616 = !{!1617, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1615, file: !49, line: 138, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1615, file: !49, line: 138, elements: !562)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1615, file: !49, line: 138, baseType: !1620)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1609, elements: !668)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1379, file: !33, line: 147, baseType: !174, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1337, file: !33, line: 161, baseType: !577, size: 128, align: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !33, line: 164, baseType: !1624, size: 32, offset: 384)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !33, line: 164, size: 32, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1624, file: !33, line: 169, baseType: !198, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1624, file: !33, line: 177, baseType: !13, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1333, file: !33, line: 181, baseType: !198, size: 32, offset: 416)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1326, file: !20, line: 406, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!115, !569, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !33, line: 293, size: 1536, elements: !1637)
!1637 = !{!1638, !1668, !1682}
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !33, line: 295, baseType: !1639, size: 512)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !33, line: 295, size: 512, elements: !1640)
!1640 = !{!1641, !1667}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !33, line: 296, baseType: !1642, size: 448)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !33, line: 296, size: 448, elements: !1643)
!1643 = !{!1644, !1645, !1654, !1655, !1656, !1665, !1666}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1642, file: !33, line: 298, baseType: !166, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !33, line: 299, baseType: !1646, size: 128, offset: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !33, line: 299, size: 128, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1646, file: !33, line: 300, baseType: !257, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !33, line: 302, baseType: !1650, size: 128)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1646, file: !33, line: 302, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1650, file: !33, line: 303, baseType: !174, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1650, file: !33, line: 305, baseType: !13, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1642, file: !33, line: 310, baseType: !1312, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1642, file: !33, line: 311, baseType: !166, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !33, line: 312, baseType: !1657, size: 64, offset: 320)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !33, line: 312, size: 64, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1657, file: !33, line: 313, baseType: !174, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1657, file: !33, line: 314, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !33, line: 257, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 255, size: 64, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1662, file: !33, line: 256, baseType: !166, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1642, file: !33, line: 316, baseType: !198, size: 32, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1642, file: !33, line: 317, baseType: !198, size: 32, offset: 416)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1639, file: !33, line: 323, baseType: !1333, size: 512, align: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !33, line: 325, baseType: !1669, size: 512, offset: 512)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !33, line: 325, size: 512, elements: !1670)
!1670 = !{!1671, !1681}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !33, line: 326, baseType: !1672, size: 320)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !33, line: 326, size: 320, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1672, file: !33, line: 327, baseType: !166, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1672, file: !33, line: 328, baseType: !166, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1672, file: !33, line: 329, baseType: !166, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1672, file: !33, line: 331, baseType: !198, size: 32, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1672, file: !33, line: 332, baseType: !198, size: 32, offset: 224)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1672, file: !33, line: 333, baseType: !198, size: 32, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1672, file: !33, line: 335, baseType: !13, size: 32, offset: 288)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1669, file: !33, line: 339, baseType: !1333, size: 512, align: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !33, line: 341, baseType: !1683, size: 512, offset: 1024)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !33, line: 341, size: 512, elements: !1684)
!1684 = !{!1685, !1694, !1700}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !33, line: 342, baseType: !1686, size: 384)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !33, line: 342, size: 384, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1686, file: !33, line: 343, baseType: !166, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1686, file: !33, line: 344, baseType: !166, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1686, file: !33, line: 346, baseType: !174, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1686, file: !33, line: 347, baseType: !174, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1686, file: !33, line: 348, baseType: !174, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1686, file: !33, line: 349, baseType: !174, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !33, line: 352, baseType: !1695, size: 256)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !33, line: 352, size: 256, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1695, file: !33, line: 353, baseType: !166, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1695, file: !33, line: 354, baseType: !166, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1695, file: !33, line: 356, baseType: !257, size: 128, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1683, file: !33, line: 359, baseType: !1333, size: 512, align: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1326, file: !20, line: 409, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!115, !1312, !1629}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1326, file: !20, line: 412, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!790, !1312, !1635}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1326, file: !20, line: 414, baseType: !1710, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1326, file: !20, line: 416, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!115, !569, !1312, !608, !13, !1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1326, file: !20, line: 419, baseType: !1722, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!115, !569, !1312, !608, !13, !13, !1332, !174}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1326, file: !20, line: 424, baseType: !1726, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1729, !1312, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !176, line: 131, baseType: !252)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1326, file: !20, line: 425, baseType: !1731, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1635, !1106, !1106}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1326, file: !20, line: 426, baseType: !1735, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!790, !1635, !1158}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1326, file: !20, line: 427, baseType: !1739, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1635}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1326, file: !20, line: 428, baseType: !1743, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1103, !1746, !1768}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1755, !1756, !1757, !1758}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1747, file: !20, line: 374, baseType: !569, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1747, file: !20, line: 375, baseType: !608, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1747, file: !20, line: 376, baseType: !1752, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1746, !1064}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1747, file: !20, line: 377, baseType: !174, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1747, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1747, file: !20, line: 379, baseType: !221, size: 16, offset: 288)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !20, line: 380, baseType: !1759, size: 64, offset: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !20, line: 380, size: 64, elements: !1760)
!1760 = !{!1761, !1764}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1759, file: !20, line: 386, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1759, file: !20, line: 395, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1103, !174}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1326, file: !20, line: 433, baseType: !1771, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!115, !1312, !1635, !1635, !80}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1326, file: !20, line: 435, baseType: !1775, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!115, !1635}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1326, file: !20, line: 436, baseType: !1779, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!790, !1635, !1106, !1106}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1326, file: !20, line: 438, baseType: !1783, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1635, !1786, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1326, file: !20, line: 439, baseType: !1788, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!115, !1312, !1332}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1326, file: !20, line: 442, baseType: !1792, size: 64, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!115, !1795, !569, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1326, file: !20, line: 444, baseType: !1799, size: 64, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !569}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1326, file: !20, line: 445, baseType: !1803, size: 64, offset: 1216)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!115, !1746, !1768}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !20, line: 486, baseType: !166, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1313, file: !20, line: 487, baseType: !731, size: 320, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1313, file: !20, line: 488, baseType: !1809, size: 32, offset: 1280)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1810, line: 8, baseType: !169)
!1810 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1313, file: !20, line: 489, baseType: !551, size: 32, offset: 1312)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1313, file: !20, line: 490, baseType: !257, size: 128, offset: 1344)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1313, file: !20, line: 491, baseType: !174, size: 64, offset: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1303, file: !1272, line: 180, baseType: !1815, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1103, !569, !1214, !1302, !803, !608, !1106}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1303, file: !1272, line: 182, baseType: !1815, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1303, file: !1272, line: 184, baseType: !1820, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!115, !569, !1214, !1302, !1452}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1291, file: !1272, line: 90, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1291, file: !1272, line: 91, baseType: !1826, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1262, file: !1209, line: 120, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1831, !1232}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !1834)
!1834 = !{!1835, !1836, !1840, !1844, !1852, !1856}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1833, file: !88, line: 40, baseType: !87, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1833, file: !88, line: 41, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!790}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1833, file: !88, line: 42, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!174}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1833, file: !88, line: 43, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1833, file: !88, line: 44, baseType: !1853, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1848}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1833, file: !88, line: 45, baseType: !981, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1262, file: !1209, line: 121, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1848, !1232}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1262, file: !1209, line: 122, baseType: !1862, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1232, !1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1208, file: !1209, line: 70, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1870, line: 190, size: 1152, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1994, !1995, !1996, !1997, !1998, !2001}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1869, file: !1870, line: 191, baseType: !198, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1869, file: !1870, line: 192, baseType: !198, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1869, file: !1870, line: 202, baseType: !1868, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1869, file: !1870, line: 203, baseType: !793, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1869, file: !1870, line: 205, baseType: !244, size: 192, align: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1869, file: !1870, line: 207, baseType: !1848, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1869, file: !1870, line: 208, baseType: !13, size: 32, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1870, line: 209, baseType: !1880, size: 256, offset: 512)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1869, file: !1870, line: 209, size: 256, elements: !1881)
!1881 = !{!1882, !1891, !1895}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1880, file: !1870, line: 210, baseType: !1883, size: 256)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1870, line: 153, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1883, file: !1870, line: 154, baseType: !166, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1883, file: !1870, line: 156, baseType: !419, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1883, file: !1870, line: 162, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1870, line: 162, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1883, file: !1870, line: 167, baseType: !166, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1880, file: !1870, line: 211, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1870, line: 170, size: 64, elements: !1893)
!1893 = !{!1894}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1892, file: !1870, line: 171, baseType: !1868, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1880, file: !1870, line: 212, baseType: !1896, size: 256)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1870, line: 174, size: 256, elements: !1897)
!1897 = !{!1898, !1989, !1992, !1993}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1896, file: !1870, line: 175, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1870, line: 271, size: 768, elements: !1902)
!1902 = !{!1903, !1962, !1966, !1967, !1968, !1969, !1970, !1974, !1975, !1976, !1977, !1985}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1901, file: !1870, line: 276, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!115, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1870, line: 251, size: 1216, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1908, file: !1870, line: 253, baseType: !1868, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1908, file: !1870, line: 254, baseType: !569, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1908, file: !1870, line: 255, baseType: !1913, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1915, line: 17, size: 960, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1947, !1948, !1951}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1914, file: !1915, line: 18, baseType: !803, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1914, file: !1915, line: 19, baseType: !1106, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1914, file: !1915, line: 20, baseType: !1106, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1914, file: !1915, line: 21, baseType: !1106, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1914, file: !1915, line: 22, baseType: !1106, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1914, file: !1915, line: 23, baseType: !608, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1914, file: !1915, line: 24, baseType: !608, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1914, file: !1915, line: 25, baseType: !596, size: 256, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1914, file: !1915, line: 26, baseType: !1926, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1915, line: 32, size: 256, elements: !1929)
!1929 = !{!1930, !1935, !1939, !1943}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1928, file: !1915, line: 33, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!174, !1913, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1928, file: !1915, line: 34, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1913, !174}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1928, file: !1915, line: 35, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!174, !1913, !174, !1934}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1928, file: !1915, line: 36, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!115, !1913, !174}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1914, file: !1915, line: 27, baseType: !115, size: 32, offset: 768)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1914, file: !1915, line: 28, baseType: !1949, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1914, file: !1915, line: 29, baseType: !174, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1908, file: !1870, line: 256, baseType: !174, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1908, file: !1870, line: 259, baseType: !596, size: 256, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1908, file: !1870, line: 260, baseType: !596, size: 256, offset: 512)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1908, file: !1870, line: 261, baseType: !115, size: 32, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1908, file: !1870, line: 262, baseType: !257, size: 128, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1908, file: !1870, line: 263, baseType: !803, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1908, file: !1870, line: 265, baseType: !1106, size: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1908, file: !1870, line: 266, baseType: !790, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1908, file: !1870, line: 267, baseType: !790, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1908, file: !1870, line: 268, baseType: !1497, size: 64, offset: 1152)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1901, file: !1870, line: 277, baseType: !1963, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1907}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1901, file: !1870, line: 290, baseType: !1944, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1901, file: !1870, line: 292, baseType: !1931, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1901, file: !1870, line: 293, baseType: !1940, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1901, file: !1870, line: 294, baseType: !1936, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1901, file: !1870, line: 296, baseType: !1971, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1103, !1907, !803, !1106, !608}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1901, file: !1870, line: 306, baseType: !1106, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1901, file: !1870, line: 313, baseType: !790, size: 8, offset: 512)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1901, file: !1870, line: 314, baseType: !1971, size: 64, offset: 576)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1901, file: !1870, line: 317, baseType: !1978, size: 64, offset: 640)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1981, !1907, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1982, line: 59, baseType: !13)
!1982 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !20, line: 61, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1901, file: !1870, line: 320, baseType: !1986, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!115, !1907, !1452}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1896, file: !1870, line: 176, baseType: !1990, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1870, line: 35, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1896, file: !1870, line: 177, baseType: !608, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1896, file: !1870, line: 178, baseType: !1868, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1869, file: !1870, line: 215, baseType: !174, size: 64, offset: 768)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1869, file: !1870, line: 221, baseType: !252, size: 64, offset: 832)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !1870, line: 223, baseType: !223, size: 16, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1869, file: !1870, line: 224, baseType: !953, size: 16, offset: 912)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1869, file: !1870, line: 225, baseType: !1999, size: 64, offset: 960)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1870, line: 36, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1869, file: !1870, line: 227, baseType: !577, size: 128, align: 64, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1208, file: !1209, line: 71, baseType: !2003, size: 32, offset: 448)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2004, line: 19, size: 32, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2005 = !{!2006}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2003, file: !2004, line: 20, baseType: !194, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1208, file: !1209, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1208, file: !1209, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1208, file: !1209, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1208, file: !1209, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1208, file: !1209, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1205, file: !12, line: 47, baseType: !1195, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1205, file: !12, line: 48, baseType: !1214, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1205, file: !12, line: 49, baseType: !2015, size: 64, offset: 640)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1205, file: !12, line: 50, baseType: !2018, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1196, file: !12, line: 418, baseType: !2020, size: 64, offset: 1408)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !2022)
!2022 = !{!2023, !2024, !2029, !2033, !2037, !2041}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2021, file: !12, line: 54, baseType: !1279, size: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2021, file: !12, line: 55, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1103, !2020, !2028, !803}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2021, file: !12, line: 57, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1103, !2020, !2028, !793, !1106}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2021, file: !12, line: 59, baseType: !2034, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !1195, !793}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2021, file: !12, line: 60, baseType: !2038, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!115, !1195}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2021, file: !12, line: 61, baseType: !2042, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !1195}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1196, file: !12, line: 419, baseType: !793, size: 64, offset: 1472)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1196, file: !12, line: 420, baseType: !793, size: 64, offset: 1536)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1196, file: !12, line: 421, baseType: !1214, size: 64, offset: 1600)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1196, file: !12, line: 424, baseType: !2049, size: 64, offset: 1664)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1196, file: !12, line: 425, baseType: !2053, size: 64, offset: 1728)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1196, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1196, file: !12, line: 435, baseType: !596, size: 256, offset: 1856)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1196, file: !12, line: 437, baseType: !2058, size: 64, offset: 2112)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2060, line: 69, size: 320, elements: !2061)
!2060 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2061 = !{!2062, !2063, !2064, !2081, !2083, !2087, !2088}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2059, file: !2060, line: 70, baseType: !793, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2059, file: !2060, line: 71, baseType: !1195, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2059, file: !2060, line: 72, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2060, line: 47, size: 256, elements: !2068)
!2068 = !{!2069, !2070, !2076, !2080}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !2060, line: 49, baseType: !13, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2067, file: !2060, line: 51, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!115, !793, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2067, file: !2060, line: 53, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!115, !803, !2074}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2067, file: !2060, line: 55, baseType: !981, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2059, file: !2060, line: 73, baseType: !2082, size: 16, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2059, file: !2060, line: 74, baseType: !2084, size: 8, offset: 208)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !170, line: 16, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !172, line: 20, baseType: !2086)
!2086 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2059, file: !2060, line: 75, baseType: !367, size: 8, offset: 216)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2060, line: 76, baseType: !2089, size: 64, offset: 256)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2060, line: 76, size: 64, elements: !2090)
!2090 = !{!2091, !2092, !2099}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2089, file: !2060, line: 77, baseType: !174, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2089, file: !2060, line: 78, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2060, line: 86, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2095, file: !2060, line: 87, baseType: !13, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2095, file: !2060, line: 88, baseType: !803, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2089, file: !2060, line: 79, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2060, line: 92, size: 256, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2108, !2109}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2102, file: !2060, line: 94, baseType: !13, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2102, file: !2060, line: 95, baseType: !13, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2102, file: !2060, line: 96, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2102, file: !2060, line: 97, baseType: !2065, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2102, file: !2060, line: 98, baseType: !174, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1196, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1196, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1196, file: !12, line: 442, baseType: !2049, size: 64, offset: 2240)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1196, file: !12, line: 443, baseType: !2053, size: 64, offset: 2304)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1196, file: !12, line: 444, baseType: !790, size: 8, offset: 2368)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1196, file: !12, line: 451, baseType: !790, size: 8, offset: 2376)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1196, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1196, file: !12, line: 455, baseType: !2118, size: 64, offset: 2432)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2120, line: 23, size: 96, elements: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2119, file: !2120, line: 24, baseType: !115, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2119, file: !2120, line: 24, baseType: !115, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2119, file: !2120, line: 24, baseType: !115, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1196, file: !12, line: 458, baseType: !2126, size: 64, offset: 2496)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!115}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1196, file: !12, line: 460, baseType: !2130, size: 4032, align: 512, offset: 2560)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2131, size: 4032, elements: !2147)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !2132)
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2131, file: !12, line: 363, baseType: !174, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2131, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2131, file: !12, line: 367, baseType: !2136, size: 448, offset: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2136, file: !12, line: 320, baseType: !1195, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2136, file: !12, line: 321, baseType: !2140, size: 384, offset: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2141, line: 40, size: 384, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2140, file: !2141, line: 41, baseType: !2144, size: 384, align: 64)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 384, align: 64, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 2)
!2147 = !{!2148}
!2148 = !DISubrange(count: 7)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1196, file: !12, line: 463, baseType: !2150, size: 192, offset: 6592)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2151, line: 8, size: 192, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2152 = !{!2153, !2154, !2156}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2150, file: !2151, line: 10, baseType: !13, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2150, file: !2151, line: 11, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2150, file: !2151, line: 12, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2159, line: 59, size: 48, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2160 = !{!2161, !2164, !2165, !2166, !2167, !2168}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2158, file: !2159, line: 60, baseType: !2162, size: 16)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !170, line: 18, baseType: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !172, line: 23, baseType: !759)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2158, file: !2159, line: 61, baseType: !2162, size: 16, offset: 16)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2158, file: !2159, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2158, file: !2159, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2158, file: !2159, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2158, file: !2159, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1196, file: !12, line: 465, baseType: !166, size: 64, offset: 6784)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1196, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1196, file: !12, line: 470, baseType: !257, size: 128, offset: 6912)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1196, file: !12, line: 471, baseType: !2173, size: 64, offset: 7040)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2175, line: 33, size: 96, elements: !2176)
!2175 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2176 = !{!2177, !2178, !2179, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2174, file: !2175, line: 37, baseType: !115, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2174, file: !2175, line: 43, baseType: !115, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2174, file: !2175, line: 45, baseType: !223, size: 16, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !2175, line: 47, baseType: !223, size: 16, offset: 80)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1196, file: !12, line: 476, baseType: !2182, size: 64, offset: 7104)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !2184)
!2184 = !{!2185, !2201, !2202, !2203}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2183, file: !12, line: 379, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2188, line: 204, baseType: !2189)
!2188 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2188, line: 197, size: 192, elements: !2190)
!2190 = !{!2191, !2193, !2194, !2195, !2197, !2199}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2189, file: !2188, line: 198, baseType: !2192, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2188, line: 21, baseType: !171)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2189, file: !2188, line: 199, baseType: !369, size: 8, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2189, file: !2188, line: 200, baseType: !369, size: 8, offset: 40)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2189, file: !2188, line: 201, baseType: !2196, size: 16, offset: 48)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2188, line: 17, baseType: !222)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2189, file: !2188, line: 202, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2188, line: 16, baseType: !253)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2189, file: !2188, line: 203, baseType: !2200, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2188, line: 22, baseType: !253)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2183, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2183, file: !12, line: 381, baseType: !803, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2183, file: !12, line: 382, baseType: !803, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1196, file: !12, line: 477, baseType: !2183, size: 256, offset: 7168)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1196, file: !12, line: 480, baseType: !2206, size: 64, offset: 7424)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1196, file: !12, line: 483, baseType: !2209, size: 64, offset: 7488)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1196, file: !12, line: 488, baseType: !803, size: 64, offset: 7552)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1196, file: !12, line: 492, baseType: !174, size: 64, offset: 7616)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1196, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1196, file: !12, line: 495, baseType: !174, size: 64, offset: 7744)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1196, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1196, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1196, file: !12, line: 500, baseType: !2218, size: 64, offset: 7872)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2220, line: 45, baseType: !2221)
!2220 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1196, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1196, file: !12, line: 504, baseType: !2224, size: 64, offset: 8000)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2227, line: 96, size: 192, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2228 = !{!2229, !2230, !2295, !2298}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2226, file: !2227, line: 97, baseType: !13, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2226, file: !2227, line: 98, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2227, line: 24, size: 3072, elements: !2233)
!2233 = !{!2234, !2236, !2237, !2238, !2239, !2253, !2254, !2255, !2256, !2268, !2280, !2281, !2292, !2293, !2294}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2232, file: !2227, line: 26, baseType: !2235, size: 128)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 128, elements: !2145)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2232, file: !2227, line: 27, baseType: !2235, size: 128, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2232, file: !2227, line: 28, baseType: !115, size: 32, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2232, file: !2227, line: 31, baseType: !551, size: 32, align: 512, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2232, file: !2227, line: 32, baseType: !2240, size: 960, offset: 576)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2241, line: 206, size: 960, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2242 = !{!2243, !2244, !2247, !2249, !2250, !2252}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2240, file: !2241, line: 207, baseType: !580, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2240, file: !2241, line: 208, baseType: !2245, size: 256, offset: 64)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 256, elements: !649)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2240, file: !2241, line: 209, baseType: !2248, size: 256, offset: 320)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !649)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2240, file: !2241, line: 213, baseType: !1064, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2240, file: !2241, line: 215, baseType: !2251, size: 256, offset: 640)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !649)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2241, line: 216, baseType: !367, size: 8, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2232, file: !2227, line: 33, baseType: !166, size: 64, offset: 1536)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2232, file: !2227, line: 34, baseType: !166, size: 64, offset: 1600)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2232, file: !2227, line: 35, baseType: !790, size: 8, offset: 1664)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2232, file: !2227, line: 36, baseType: !2257, size: 320, offset: 1728)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2258, line: 11, size: 320, elements: !2259)
!2258 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2259 = !{!2260, !2261, !2262, !2267}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2257, file: !2258, line: 16, baseType: !181, size: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2257, file: !2258, line: 17, baseType: !166, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2257, file: !2258, line: 18, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !2258, line: 19, baseType: !169, size: 32, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2232, file: !2227, line: 37, baseType: !2269, size: 256, offset: 2048)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2270, line: 98, size: 256, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2269, file: !2270, line: 99, baseType: !589, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2269, file: !2270, line: 100, baseType: !257, size: 128, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2269, file: !2270, line: 101, baseType: !2275, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2270, line: 21, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2232, file: !2227, line: 38, baseType: !577, size: 128, align: 64, offset: 2304)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2232, file: !2227, line: 39, baseType: !2282, size: 64, offset: 2432)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2227, line: 49, size: 768, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2283, file: !2227, line: 50, baseType: !551, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2283, file: !2227, line: 51, baseType: !2248, size: 256, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2283, file: !2227, line: 53, baseType: !2248, size: 256, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2283, file: !2227, line: 54, baseType: !166, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2283, file: !2227, line: 55, baseType: !2282, size: 64, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2283, file: !2227, line: 56, baseType: !115, size: 32, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2283, file: !2227, line: 57, baseType: !115, size: 32, offset: 736)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2232, file: !2227, line: 40, baseType: !166, size: 64, offset: 2496)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2232, file: !2227, line: 42, baseType: !115, size: 32, offset: 2560)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2232, file: !2227, line: 43, baseType: !2225, size: 64, offset: 2624)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2226, file: !2227, line: 99, baseType: !2296, offset: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2297, line: 211, elements: !562)
!2297 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2226, file: !2227, line: 100, baseType: !2299, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2227, line: 63, size: 3008, elements: !2301)
!2301 = !{!2302, !2303, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2333}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2300, file: !2227, line: 64, baseType: !2282, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2300, file: !2227, line: 65, baseType: !2304, size: 192, offset: 64)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2282, size: 192, elements: !634)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2300, file: !2227, line: 67, baseType: !115, size: 32, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2300, file: !2227, line: 68, baseType: !596, size: 256, offset: 320)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2300, file: !2227, line: 69, baseType: !551, size: 32, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2300, file: !2227, line: 70, baseType: !596, size: 256, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2300, file: !2227, line: 71, baseType: !166, size: 64, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2300, file: !2227, line: 72, baseType: !166, size: 64, offset: 960)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2300, file: !2227, line: 73, baseType: !166, size: 64, offset: 1024)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2300, file: !2227, line: 74, baseType: !166, size: 64, offset: 1088)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2300, file: !2227, line: 75, baseType: !166, size: 64, offset: 1152)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2300, file: !2227, line: 76, baseType: !166, size: 64, offset: 1216)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2300, file: !2227, line: 77, baseType: !166, size: 64, offset: 1280)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2300, file: !2227, line: 78, baseType: !166, size: 64, offset: 1344)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2300, file: !2227, line: 79, baseType: !790, size: 8, offset: 1408)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2300, file: !2227, line: 80, baseType: !166, size: 64, offset: 1472)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2300, file: !2227, line: 81, baseType: !596, size: 256, offset: 1536)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2300, file: !2227, line: 82, baseType: !1417, size: 256, offset: 1792)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2300, file: !2227, line: 84, baseType: !198, size: 32, offset: 2048)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2300, file: !2227, line: 87, baseType: !166, size: 64, offset: 2112)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2300, file: !2227, line: 88, baseType: !166, size: 64, offset: 2176)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2300, file: !2227, line: 89, baseType: !2325, size: 704, offset: 2240)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2270, line: 111, size: 704, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2332}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2325, file: !2270, line: 112, baseType: !2269, size: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2325, file: !2270, line: 113, baseType: !2257, size: 320, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2325, file: !2270, line: 116, baseType: !2330, size: 64, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2270, line: 18, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2325, file: !2270, line: 117, baseType: !115, size: 32, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2300, file: !2227, line: 90, baseType: !2225, size: 64, offset: 2944)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1196, file: !12, line: 515, baseType: !2335, size: 64, offset: 8064)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2337, line: 117, size: 128, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2336, file: !2337, line: 118, baseType: !723, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2336, file: !2337, line: 119, baseType: !723, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2336, file: !2337, line: 120, baseType: !1064, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1196, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1196, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1196, file: !12, line: 520, baseType: !2345, size: 64, offset: 8192)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1196, file: !12, line: 523, baseType: !2347, size: 64, offset: 8256)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1196, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1196, file: !12, line: 525, baseType: !2352, size: 64, offset: 8384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1196, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1196, file: !12, line: 533, baseType: !174, size: 64, offset: 8512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1196, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1196, file: !12, line: 535, baseType: !2359, size: 64, offset: 8640)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1196, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1196, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1196, file: !12, line: 540, baseType: !2363, size: 64, offset: 8768)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2365, line: 32, size: 64, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2364, file: !2365, line: 33, baseType: !723, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2364, file: !2365, line: 34, baseType: !723, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1196, file: !12, line: 563, baseType: !257, size: 128, offset: 8832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1196, file: !12, line: 565, baseType: !257, size: 128, offset: 8960)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1196, file: !12, line: 568, baseType: !2372, size: 64, offset: 9088)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1196, file: !12, line: 570, baseType: !198, size: 32, offset: 9152)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1172, file: !20, line: 2382, baseType: !1171, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1172, file: !20, line: 2383, baseType: !646, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1172, file: !20, line: 2385, baseType: !2379, offset: 576)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2297, line: 206, elements: !562)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1172, file: !20, line: 2386, baseType: !2379, offset: 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1172, file: !20, line: 2387, baseType: !2379, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1172, file: !20, line: 2388, baseType: !2383, offset: 576)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, elements: !634)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1172, file: !20, line: 2390, baseType: !2379, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1172, file: !20, line: 2391, baseType: !2379, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1172, file: !20, line: 2392, baseType: !2379, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1172, file: !20, line: 2393, baseType: !2379, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1163, file: !20, line: 1197, baseType: !2389, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !2392)
!2392 = !{!2393, !2397, !2401, !2402, !2406, !2410, !2414, !2415, !2416, !2420, !2424, !2428, !2429, !2430, !2436, !2440, !2441, !2445, !2446, !2447, !2448, !2452, !2456, !2503, !2518, !2519}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2391, file: !20, line: 2058, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!949, !1162}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2391, file: !20, line: 2059, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !949}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2391, file: !20, line: 2060, baseType: !2398, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2391, file: !20, line: 2062, baseType: !2403, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !949, !115}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2391, file: !20, line: 2063, baseType: !2407, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!115, !949, !1629}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2391, file: !20, line: 2064, baseType: !2411, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!115, !949}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2391, file: !20, line: 2065, baseType: !2398, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2391, file: !20, line: 2066, baseType: !1191, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2391, file: !20, line: 2067, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!115, !1162, !115}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2391, file: !20, line: 2068, baseType: !2421, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!115, !1162, !19}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2391, file: !20, line: 2069, baseType: !2425, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!115, !1162}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2391, file: !20, line: 2070, baseType: !2421, size: 64, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2391, file: !20, line: 2071, baseType: !2425, size: 64, offset: 768)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2391, file: !20, line: 2072, baseType: !2431, size: 64, offset: 832)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!115, !914, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2391, file: !20, line: 2073, baseType: !2437, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!115, !1162, !2155, !803}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2391, file: !20, line: 2074, baseType: !1191, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2391, file: !20, line: 2076, baseType: !2442, size: 64, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!115, !1913, !914}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2391, file: !20, line: 2077, baseType: !2442, size: 64, offset: 1088)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2391, file: !20, line: 2078, baseType: !2442, size: 64, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2391, file: !20, line: 2079, baseType: !2442, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2391, file: !20, line: 2081, baseType: !2449, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!1103, !1162, !115, !803, !1106, !608}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2391, file: !20, line: 2082, baseType: !2453, size: 64, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!1103, !1162, !115, !793, !1106, !608}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2391, file: !20, line: 2083, baseType: !2457, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2460, !949}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !57, line: 296, size: 1664, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2488, !2489, !2490}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2462, file: !57, line: 297, baseType: !181, size: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2462, file: !57, line: 298, baseType: !257, size: 128, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2462, file: !57, line: 299, baseType: !257, size: 128, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2462, file: !57, line: 300, baseType: !257, size: 128, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2462, file: !57, line: 301, baseType: !596, size: 256, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2462, file: !57, line: 302, baseType: !551, size: 32, offset: 768)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2462, file: !57, line: 303, baseType: !198, size: 32, offset: 800)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2462, file: !57, line: 304, baseType: !1162, size: 64, offset: 832)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2462, file: !57, line: 305, baseType: !2473, size: 64, offset: 896)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !57, line: 68, size: 64, elements: !2474)
!2474 = !{!2475, !2487}
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !57, line: 69, baseType: !2476, size: 32)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !57, line: 69, size: 32, elements: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2476, file: !57, line: 70, baseType: !672, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2476, file: !57, line: 71, baseType: !690, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2476, file: !57, line: 72, baseType: !2481, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2482, line: 24, baseType: !2483)
!2482 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2482, line: 22, size: 32, elements: !2484)
!2484 = !{!2485}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2483, file: !2482, line: 23, baseType: !2486, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2482, line: 20, baseType: !678)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2473, file: !57, line: 74, baseType: !56, size: 32, offset: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2462, file: !57, line: 306, baseType: !608, size: 64, offset: 960)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2462, file: !57, line: 307, baseType: !166, size: 64, offset: 1024)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2462, file: !57, line: 308, baseType: !2491, size: 576, offset: 1088)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !57, line: 205, size: 576, elements: !2492)
!2492 = !{!2493, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2491, file: !57, line: 206, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !57, line: 66, baseType: !270)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2491, file: !57, line: 207, baseType: !2494, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2491, file: !57, line: 208, baseType: !2494, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2491, file: !57, line: 209, baseType: !2494, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2491, file: !57, line: 210, baseType: !2494, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2491, file: !57, line: 211, baseType: !2494, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2491, file: !57, line: 212, baseType: !2494, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2491, file: !57, line: 213, baseType: !747, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2491, file: !57, line: 214, baseType: !747, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2391, file: !20, line: 2085, baseType: !2504, size: 64, offset: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!1064, !1162, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2509, line: 15, size: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2510 = !{!2511, !2512, !2513, !2514, !2515}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2508, file: !2509, line: 16, baseType: !1158, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2508, file: !2509, line: 19, baseType: !115, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2508, file: !2509, line: 26, baseType: !166, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2508, file: !2509, line: 33, baseType: !166, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2508, file: !2509, line: 36, baseType: !2516, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !33, line: 33, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2391, file: !20, line: 2087, baseType: !2504, size: 64, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2391, file: !20, line: 2089, baseType: !1191, size: 64, offset: 1600)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1163, file: !20, line: 1198, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !57, line: 324, size: 704, elements: !2524)
!2524 = !{!2525, !2529, !2533, !2537, !2538, !2539, !2540, !2541, !2546, !2551, !2555}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2523, file: !57, line: 325, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!115, !2461}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2523, file: !57, line: 326, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2461, !1162, !115}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2523, file: !57, line: 327, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2461}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2523, file: !57, line: 328, baseType: !2526, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2523, file: !57, line: 329, baseType: !2526, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2523, file: !57, line: 330, baseType: !2526, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2523, file: !57, line: 331, baseType: !2417, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2523, file: !57, line: 334, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!2545, !949}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2523, file: !57, line: 335, baseType: !2547, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!115, !949, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2523, file: !57, line: 337, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!115, !949, !2545}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2523, file: !57, line: 339, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!115, !1162, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1163, file: !20, line: 1199, baseType: !2561, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !57, line: 430, size: 704, elements: !2564)
!2564 = !{!2565, !2569, !2570, !2574, !2575, !2576, !2591, !2614, !2618, !2619, !2642}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2563, file: !57, line: 431, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!115, !1162, !115, !115, !1072}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2563, file: !57, line: 432, baseType: !2417, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2563, file: !57, line: 433, baseType: !2571, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!115, !1162, !13}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2563, file: !57, line: 434, baseType: !2571, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2563, file: !57, line: 435, baseType: !2417, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2563, file: !57, line: 436, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!115, !1162, !115, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !57, line: 417, size: 256, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2581, file: !57, line: 418, baseType: !115, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2581, file: !57, line: 419, baseType: !13, size: 32, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2581, file: !57, line: 420, baseType: !13, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2581, file: !57, line: 422, baseType: !13, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2581, file: !57, line: 423, baseType: !13, size: 32, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2581, file: !57, line: 424, baseType: !13, size: 32, offset: 160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2581, file: !57, line: 425, baseType: !13, size: 32, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2581, file: !57, line: 426, baseType: !13, size: 32, offset: 224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2563, file: !57, line: 437, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!115, !1162, !2473, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !57, line: 345, size: 960, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2596, file: !57, line: 346, baseType: !115, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2596, file: !57, line: 347, baseType: !252, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2596, file: !57, line: 348, baseType: !252, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2596, file: !57, line: 349, baseType: !252, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2596, file: !57, line: 350, baseType: !252, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2596, file: !57, line: 351, baseType: !252, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2596, file: !57, line: 352, baseType: !252, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2596, file: !57, line: 353, baseType: !268, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2596, file: !57, line: 355, baseType: !268, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2596, file: !57, line: 356, baseType: !115, size: 32, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2596, file: !57, line: 357, baseType: !115, size: 32, offset: 608)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2596, file: !57, line: 358, baseType: !252, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2596, file: !57, line: 359, baseType: !252, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2596, file: !57, line: 360, baseType: !252, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2596, file: !57, line: 361, baseType: !268, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2596, file: !57, line: 362, baseType: !115, size: 32, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2563, file: !57, line: 438, baseType: !2615, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!115, !1162, !2559, !2595}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2563, file: !57, line: 440, baseType: !2592, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2563, file: !57, line: 441, baseType: !2620, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!115, !1162, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !57, line: 411, size: 1408, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2624, file: !57, line: 412, baseType: !13, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2624, file: !57, line: 413, baseType: !2628, size: 1344, offset: 64)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 1344, elements: !634)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !57, line: 397, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2641}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2629, file: !57, line: 398, baseType: !13, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2629, file: !57, line: 399, baseType: !13, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2629, file: !57, line: 401, baseType: !13, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2629, file: !57, line: 402, baseType: !13, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2629, file: !57, line: 403, baseType: !13, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2629, file: !57, line: 404, baseType: !13, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2629, file: !57, line: 405, baseType: !13, size: 32, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2629, file: !57, line: 406, baseType: !254, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2629, file: !57, line: 407, baseType: !2640, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !176, line: 132, baseType: !252)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2629, file: !57, line: 408, baseType: !2640, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2563, file: !57, line: 442, baseType: !2571, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1163, file: !20, line: 1200, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1163, file: !20, line: 1201, baseType: !166, size: 64, offset: 640)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1163, file: !20, line: 1202, baseType: !166, size: 64, offset: 704)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1163, file: !20, line: 1203, baseType: !166, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1163, file: !20, line: 1204, baseType: !914, size: 64, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1163, file: !20, line: 1205, baseType: !731, size: 320, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1163, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1163, file: !20, line: 1207, baseType: !198, size: 32, offset: 1248)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1163, file: !20, line: 1209, baseType: !174, size: 64, offset: 1280)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1163, file: !20, line: 1211, baseType: !2656, size: 64, offset: 1344)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1163, file: !20, line: 1223, baseType: !2661, size: 64, offset: 1408)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !926, line: 34, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2661, file: !926, line: 35, baseType: !929, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1163, file: !20, line: 1224, baseType: !257, size: 128, offset: 1472)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1163, file: !20, line: 1225, baseType: !2666, size: 64, offset: 1600)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1163, file: !20, line: 1226, baseType: !2669, size: 64, offset: 1664)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1163, file: !20, line: 1227, baseType: !2672, size: 64, offset: 1728)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1163, file: !20, line: 1228, baseType: !2675, size: 64, offset: 1792)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1163, file: !20, line: 1229, baseType: !181, size: 128, offset: 1856)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1163, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1163, file: !20, line: 1231, baseType: !2680, size: 2496, offset: 2048)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !57, line: 521, size: 2496, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2686, !2718}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2680, file: !57, line: 522, baseType: !13, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2680, file: !57, line: 523, baseType: !731, size: 320, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2680, file: !57, line: 524, baseType: !2685, size: 192, offset: 384)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 192, elements: !634)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2680, file: !57, line: 525, baseType: !2687, size: 1728, offset: 576)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 1728, elements: !634)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !57, line: 222, size: 576, elements: !2689)
!2689 = !{!2690, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2688, file: !57, line: 223, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !57, line: 445, size: 256, elements: !2693)
!2693 = !{!2694, !2695, !2708, !2709}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2692, file: !57, line: 446, baseType: !115, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2692, file: !57, line: 447, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !57, line: 312, size: 512, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2698, file: !57, line: 313, baseType: !2417, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2698, file: !57, line: 314, baseType: !2417, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2698, file: !57, line: 315, baseType: !2417, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2698, file: !57, line: 316, baseType: !2417, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2698, file: !57, line: 317, baseType: !2526, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2698, file: !57, line: 318, baseType: !2526, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2698, file: !57, line: 319, baseType: !2526, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2698, file: !57, line: 320, baseType: !2556, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2692, file: !57, line: 448, baseType: !1195, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2692, file: !57, line: 449, baseType: !2691, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2688, file: !57, line: 224, baseType: !115, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2688, file: !57, line: 226, baseType: !257, size: 128, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2688, file: !57, line: 227, baseType: !166, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2688, file: !57, line: 228, baseType: !13, size: 32, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2688, file: !57, line: 229, baseType: !13, size: 32, offset: 352)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2688, file: !57, line: 230, baseType: !2494, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2688, file: !57, line: 231, baseType: !2494, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2688, file: !57, line: 232, baseType: !174, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2680, file: !57, line: 526, baseType: !2719, size: 192, offset: 2304)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 192, elements: !634)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1163, file: !20, line: 1233, baseType: !2721, size: 2368, offset: 4544)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !2722)
!2722 = !{!2723, !2724, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2721, file: !20, line: 1185, baseType: !223, size: 16)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2721, file: !20, line: 1186, baseType: !223, size: 16, offset: 16)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2721, file: !20, line: 1187, baseType: !2726, size: 2304, offset: 64)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2727, size: 2304, elements: !634)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2728, line: 12, size: 768, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2729 = !{!2730, !2738, !2739, !2744, !2745}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2727, file: !2728, line: 13, baseType: !2731, size: 384)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2732, line: 17, size: 384, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2731, file: !2732, line: 18, baseType: !115, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2731, file: !2732, line: 19, baseType: !115, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2731, file: !2732, line: 20, baseType: !653, size: 192, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2731, file: !2732, line: 22, baseType: !577, size: 128, align: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2727, file: !2728, line: 14, baseType: !2107, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2727, file: !2728, line: 15, baseType: !2740, size: 64, offset: 448)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2741, line: 16, size: 64, elements: !2742)
!2741 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2740, file: !2741, line: 17, baseType: !186, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2727, file: !2728, line: 16, baseType: !653, size: 192, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2727, file: !2728, line: 17, baseType: !198, size: 32, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1163, file: !20, line: 1240, baseType: !174, size: 64, offset: 6912)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1163, file: !20, line: 1243, baseType: !169, size: 32, offset: 6976)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1163, file: !20, line: 1245, baseType: !747, size: 64, offset: 7040)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1163, file: !20, line: 1246, baseType: !747, size: 64, offset: 7104)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1163, file: !20, line: 1248, baseType: !171, size: 32, offset: 7168)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1163, file: !20, line: 1249, baseType: !2752, size: 64, offset: 7232)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1163, file: !20, line: 1252, baseType: !2755, size: 256, offset: 7296)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2756)
!2756 = !{!2757}
!2757 = !DISubrange(count: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1163, file: !20, line: 1253, baseType: !2759, size: 128, offset: 7552)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2760, line: 21, baseType: !2761)
!2760 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 19, size: 128, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2761, file: !2760, line: 20, baseType: !2764, size: 128)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 128, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 16)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1163, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1163, file: !20, line: 1261, baseType: !596, size: 256, offset: 7744)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1163, file: !20, line: 1267, baseType: !793, size: 64, offset: 8000)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1163, file: !20, line: 1269, baseType: !2771, size: 64, offset: 8064)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !916, line: 128, size: 1024, align: 512, elements: !2774)
!2774 = !{!2775, !2779, !2780, !2787, !2793, !2797, !2801, !2805, !2806, !2810, !2814, !2819, !2823}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2773, file: !916, line: 129, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!115, !914, !13}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2773, file: !916, line: 130, baseType: !2776, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2773, file: !916, line: 131, baseType: !2781, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!115, !2784, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2773, file: !916, line: 132, baseType: !2788, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!115, !2784, !13, !793, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2773, file: !916, line: 134, baseType: !2794, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!115, !2784}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2773, file: !916, line: 135, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!115, !914}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2773, file: !916, line: 136, baseType: !2802, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !914}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2773, file: !916, line: 137, baseType: !2802, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2773, file: !916, line: 138, baseType: !2807, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !914, !949}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2773, file: !916, line: 139, baseType: !2811, size: 64, offset: 576)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!803, !914, !803, !115}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2773, file: !916, line: 140, baseType: !2815, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!909, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2773, file: !916, line: 141, baseType: !2820, size: 64, offset: 704)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!115, !1072, !790}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2773, file: !916, line: 142, baseType: !2824, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!914, !914, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1163, file: !20, line: 1271, baseType: !2830, size: 448, offset: 8128)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2509, line: 63, size: 448, elements: !2831)
!2831 = !{!2832, !2837, !2838, !2839, !2840, !2841, !2842}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2830, file: !2509, line: 64, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!166, !2836, !2507}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2830, file: !2509, line: 66, baseType: !2833, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2830, file: !2509, line: 69, baseType: !1064, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2830, file: !2509, line: 70, baseType: !115, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !2509, line: 71, baseType: !13, size: 32, offset: 224)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2830, file: !2509, line: 74, baseType: !257, size: 128, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2830, file: !2509, line: 85, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1163, file: !20, line: 1274, baseType: !589, size: 64, offset: 8576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1163, file: !20, line: 1280, baseType: !589, size: 64, offset: 8640)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1163, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1163, file: !20, line: 1286, baseType: !1809, size: 32, offset: 8736)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1163, file: !20, line: 1289, baseType: !2330, size: 64, offset: 8768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1163, file: !20, line: 1290, baseType: !646, size: 64, offset: 8832)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1163, file: !20, line: 1297, baseType: !876, size: 64, offset: 8896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1163, file: !20, line: 1304, baseType: !2852, size: 64, offset: 8960)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2853, line: 49, size: 64, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2852, file: !2853, line: 50, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2853, line: 41, size: 512, align: 512, elements: !2858)
!2858 = !{!2859, !2860, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2857, file: !2853, line: 43, baseType: !551, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2857, file: !2853, line: 45, baseType: !2861, size: 192, offset: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2853, line: 29, size: 192, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2861, file: !2853, line: 30, baseType: !257, size: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2861, file: !2853, line: 32, baseType: !1064, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2857, file: !2853, line: 46, baseType: !1064, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1163, file: !20, line: 1305, baseType: !2852, size: 64, offset: 9024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1163, file: !20, line: 1306, baseType: !577, size: 128, align: 64, offset: 9088)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1163, file: !20, line: 1307, baseType: !2269, size: 256, offset: 9216)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1163, file: !20, line: 1309, baseType: !596, size: 256, offset: 9472)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1163, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1163, file: !20, line: 1317, baseType: !551, size: 32, align: 512, offset: 10240)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1163, file: !20, line: 1318, baseType: !257, size: 128, offset: 10304)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1163, file: !20, line: 1320, baseType: !551, size: 32, offset: 10432)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1163, file: !20, line: 1321, baseType: !257, size: 128, offset: 10496)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !950, file: !20, line: 656, baseType: !1312, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !950, file: !20, line: 659, baseType: !174, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !950, file: !20, line: 663, baseType: !166, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !20, line: 671, baseType: !2879, size: 32, offset: 704)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !20, line: 671, size: 32, elements: !2880)
!2880 = !{!2881, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2879, file: !20, line: 672, baseType: !2882, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2879, file: !20, line: 673, baseType: !13, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !950, file: !20, line: 675, baseType: !1024, size: 32, offset: 736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !950, file: !20, line: 676, baseType: !608, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !950, file: !20, line: 677, baseType: !1060, size: 128, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !950, file: !20, line: 678, baseType: !1060, size: 128, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !950, file: !20, line: 679, baseType: !1060, size: 128, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !950, file: !20, line: 680, baseType: !551, size: 32, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !950, file: !20, line: 681, baseType: !223, size: 16, offset: 1248)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !950, file: !20, line: 682, baseType: !367, size: 8, offset: 1264)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !950, file: !20, line: 683, baseType: !367, size: 8, offset: 1272)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !950, file: !20, line: 684, baseType: !2640, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !950, file: !20, line: 691, baseType: !166, size: 64, offset: 1344)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !950, file: !20, line: 692, baseType: !731, size: 320, offset: 1408)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !950, file: !20, line: 694, baseType: !166, size: 64, offset: 1728)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !950, file: !20, line: 695, baseType: !166, size: 64, offset: 1792)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !950, file: !20, line: 697, baseType: !181, size: 128, offset: 1856)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !950, file: !20, line: 698, baseType: !257, size: 128, offset: 1984)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !950, file: !20, line: 707, baseType: !257, size: 128, offset: 2112)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !950, file: !20, line: 708, baseType: !257, size: 128, offset: 2240)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !20, line: 709, baseType: !2903, size: 128, offset: 2368)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !20, line: 709, size: 128, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2903, file: !20, line: 710, baseType: !646, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2903, file: !20, line: 711, baseType: !577, size: 128, align: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !950, file: !20, line: 713, baseType: !591, size: 64, offset: 2496)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !950, file: !20, line: 714, baseType: !591, size: 64, offset: 2560)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !950, file: !20, line: 715, baseType: !198, size: 32, offset: 2624)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !950, file: !20, line: 716, baseType: !198, size: 32, offset: 2656)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !950, file: !20, line: 717, baseType: !198, size: 32, offset: 2688)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !950, file: !20, line: 719, baseType: !198, size: 32, offset: 2720)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !20, line: 721, baseType: !2914, size: 64, offset: 2752)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !20, line: 721, size: 64, elements: !2915)
!2915 = !{!2916, !3042}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2914, file: !20, line: 722, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2920)
!2920 = !{!2921, !2922, !2926, !2930, !2934, !2935, !2936, !2942, !2955, !2959, !2963, !2964, !2968, !2969, !2973, !2978, !2979, !2983, !2987, !2993, !2994, !2998, !2999, !3005, !3009, !3010, !3015, !3019, !3023, !3027, !3031, !3032, !3038}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2919, file: !20, line: 1915, baseType: !1195, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2919, file: !20, line: 1916, baseType: !2923, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!608, !569, !608, !115}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2919, file: !20, line: 1917, baseType: !2927, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!1103, !569, !803, !1106, !1934}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2919, file: !20, line: 1918, baseType: !2931, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1103, !569, !793, !1106, !1934}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2919, file: !20, line: 1919, baseType: !1743, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2919, file: !20, line: 1920, baseType: !1743, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2919, file: !20, line: 1921, baseType: !2937, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!115, !1746, !2940, !13}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2919, file: !20, line: 1923, baseType: !2943, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!115, !569, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2948)
!2948 = !{!2949, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2947, file: !20, line: 1859, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!790, !2946, !793, !115, !608, !252, !13}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2947, file: !20, line: 1860, baseType: !608, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2919, file: !20, line: 1924, baseType: !2956, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!1981, !569, !1983}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2919, file: !20, line: 1925, baseType: !2960, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!1064, !569, !13, !166}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2919, file: !20, line: 1926, baseType: !2960, size: 64, offset: 640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2919, file: !20, line: 1927, baseType: !2965, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!115, !569, !1452}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2919, file: !20, line: 1928, baseType: !166, size: 64, offset: 768)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2919, file: !20, line: 1929, baseType: !2970, size: 64, offset: 832)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!115, !949, !569}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2919, file: !20, line: 1930, baseType: !2974, size: 64, offset: 896)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!115, !569, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !174)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2919, file: !20, line: 1931, baseType: !2970, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2919, file: !20, line: 1932, baseType: !2980, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!115, !569, !608, !608, !115}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2919, file: !20, line: 1933, baseType: !2984, size: 64, offset: 1088)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!115, !115, !569, !115}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !20, line: 1934, baseType: !2988, size: 64, offset: 1152)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!115, !569, !115, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2919, file: !20, line: 1935, baseType: !566, size: 64, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2919, file: !20, line: 1936, baseType: !2995, size: 64, offset: 1280)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!115, !115}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2919, file: !20, line: 1937, baseType: !2988, size: 64, offset: 1344)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2919, file: !20, line: 1938, baseType: !3000, size: 64, offset: 1408)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!1103, !3003, !569, !1934, !1106, !13}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !188, line: 59, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2919, file: !20, line: 1939, baseType: !3006, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!1103, !569, !1934, !3003, !1106, !13}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2919, file: !20, line: 1940, baseType: !1799, size: 64, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2919, file: !20, line: 1941, baseType: !3011, size: 64, offset: 1600)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!115, !569, !115, !3014, !1720}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2919, file: !20, line: 1942, baseType: !3016, size: 64, offset: 1664)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1064, !569, !115, !608, !608}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2919, file: !20, line: 1944, baseType: !3020, size: 64, offset: 1728)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !1913, !569}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2919, file: !20, line: 1948, baseType: !3024, size: 64, offset: 1792)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!1103, !569, !608, !569, !608, !1106, !13}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2919, file: !20, line: 1950, baseType: !3028, size: 64, offset: 1856)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!608, !569, !608, !569, !608, !608, !13}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2919, file: !20, line: 1953, baseType: !2980, size: 64, offset: 1920)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2919, file: !20, line: 1954, baseType: !3033, size: 64, offset: 1984)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!115, !3036, !13}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2919, file: !20, line: 1955, baseType: !3039, size: 64, offset: 2048)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!115, !3036, !2940, !13}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2914, file: !20, line: 723, baseType: !2398, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !950, file: !20, line: 725, baseType: !3044, size: 64, offset: 2816)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !950, file: !20, line: 726, baseType: !1313, size: 1536, align: 64, offset: 2880)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !950, file: !20, line: 727, baseType: !257, size: 128, offset: 4416)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !20, line: 728, baseType: !3049, size: 64, offset: 4544)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !20, line: 728, size: 64, elements: !3050)
!3050 = !{!3051, !3052, !3063, !3064}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3049, file: !20, line: 729, baseType: !3003, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3049, file: !20, line: 730, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3055, line: 14, size: 832, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3054, file: !3055, line: 15, baseType: !1208, size: 512)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3054, file: !3055, line: 16, baseType: !1195, size: 64, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3054, file: !3055, line: 17, baseType: !2917, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3054, file: !3055, line: 18, baseType: !257, size: 128, offset: 640)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3054, file: !3055, line: 19, baseType: !1024, size: 32, offset: 768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3054, file: !3055, line: 20, baseType: !13, size: 32, offset: 800)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3049, file: !20, line: 731, baseType: !803, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3049, file: !20, line: 732, baseType: !13, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !950, file: !20, line: 735, baseType: !171, size: 32, offset: 4608)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !950, file: !20, line: 738, baseType: !171, size: 32, offset: 4640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !950, file: !20, line: 739, baseType: !2752, size: 64, offset: 4672)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !950, file: !20, line: 750, baseType: !174, size: 64, offset: 4736)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !915, file: !916, line: 91, baseType: !3070, size: 256, offset: 448)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !2756)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !915, file: !916, line: 94, baseType: !3072, size: 64, offset: 704)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3073, line: 25, size: 64, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !3073, line: 26, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !3073, line: 26, size: 64, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3076, file: !3073, line: 28, baseType: !253, size: 64, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3073, line: 30, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !3073, line: 30, size: 64, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3080, file: !3073, line: 31, baseType: !551, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3080, file: !3073, line: 32, baseType: !115, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !915, file: !916, line: 95, baseType: !2771, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !915, file: !916, line: 96, baseType: !1162, size: 64, offset: 832)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !915, file: !916, line: 97, baseType: !166, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !915, file: !916, line: 98, baseType: !174, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !916, line: 100, baseType: !3089, size: 128, offset: 1024)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !916, line: 100, size: 128, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3089, file: !916, line: 101, baseType: !257, size: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3089, file: !916, line: 102, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !915, file: !916, line: 104, baseType: !257, size: 128, offset: 1152)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !915, file: !916, line: 105, baseType: !257, size: 128, offset: 1280)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !915, file: !916, line: 113, baseType: !3097, size: 128, offset: 1408)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !916, line: 109, size: 128, elements: !3098)
!3098 = !{!3099, !3100, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3097, file: !916, line: 110, baseType: !181, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3097, file: !916, line: 111, baseType: !925, size: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3097, file: !916, line: 112, baseType: !577, size: 128, align: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !910, file: !911, line: 72, baseType: !1162, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !910, file: !911, line: 73, baseType: !115, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !910, file: !911, line: 74, baseType: !989, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !905, file: !906, line: 10, baseType: !914, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !570, file: !20, line: 1015, baseType: !949, size: 64, offset: 1344)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !570, file: !20, line: 1016, baseType: !2917, size: 64, offset: 1408)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !570, file: !20, line: 1018, baseType: !252, size: 64, offset: 1472)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !570, file: !20, line: 1020, baseType: !174, size: 64, offset: 1536)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !570, file: !20, line: 1023, baseType: !174, size: 64, offset: 1600)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !570, file: !20, line: 1027, baseType: !3112, size: 64, offset: 1664)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !570, file: !20, line: 1029, baseType: !1312, size: 64, offset: 1728)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !570, file: !20, line: 1030, baseType: !1809, size: 32, offset: 1792)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !570, file: !20, line: 1031, baseType: !1809, size: 32, offset: 1824)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !537, file: !33, line: 756, baseType: !166, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !537, file: !33, line: 757, baseType: !166, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !537, file: !33, line: 760, baseType: !166, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !537, file: !33, line: 761, baseType: !166, size: 64, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !537, file: !33, line: 763, baseType: !166, size: 64, offset: 960)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !537, file: !33, line: 764, baseType: !3122, size: 64, offset: 1024)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1467, line: 299, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1467, line: 299, size: 64, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3124, file: !1467, line: 299, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1472, line: 18, baseType: !166)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !537, file: !33, line: 773, baseType: !198, size: 32, offset: 1088)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !537, file: !33, line: 785, baseType: !198, size: 32, offset: 1120)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !537, file: !33, line: 795, baseType: !3131, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !33, line: 726, size: 128, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3132, file: !33, line: 727, baseType: !252, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3132, file: !33, line: 728, baseType: !115, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !537, file: !33, line: 801, baseType: !166, size: 64, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !537, file: !33, line: 804, baseType: !589, size: 64, offset: 1280)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !537, file: !33, line: 806, baseType: !115, size: 32, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !537, file: !33, line: 808, baseType: !551, size: 32, offset: 1376)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !537, file: !33, line: 823, baseType: !731, size: 320, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !537, file: !33, line: 825, baseType: !257, size: 128, offset: 1728)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !537, file: !33, line: 845, baseType: !115, size: 32, offset: 1856)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !537, file: !33, line: 849, baseType: !166, size: 64, offset: 1920)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !537, file: !33, line: 850, baseType: !166, size: 64, offset: 1984)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !537, file: !33, line: 852, baseType: !166, size: 64, offset: 2048)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !537, file: !33, line: 853, baseType: !166, size: 64, offset: 2112)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !537, file: !33, line: 854, baseType: !591, size: 64, offset: 2176)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !537, file: !33, line: 855, baseType: !166, size: 64, offset: 2240)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !537, file: !33, line: 856, baseType: !166, size: 64, offset: 2304)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !537, file: !33, line: 857, baseType: !166, size: 64, offset: 2368)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !537, file: !33, line: 858, baseType: !166, size: 64, offset: 2432)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !537, file: !33, line: 865, baseType: !407, size: 32, offset: 2496)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !537, file: !33, line: 867, baseType: !551, size: 32, offset: 2528)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !537, file: !33, line: 869, baseType: !166, size: 64, offset: 2560)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !537, file: !33, line: 869, baseType: !166, size: 64, offset: 2624)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !537, file: !33, line: 869, baseType: !166, size: 64, offset: 2688)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !537, file: !33, line: 869, baseType: !166, size: 64, offset: 2752)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !537, file: !33, line: 870, baseType: !166, size: 64, offset: 2816)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !537, file: !33, line: 870, baseType: !166, size: 64, offset: 2880)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !537, file: !33, line: 870, baseType: !166, size: 64, offset: 2944)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !537, file: !33, line: 871, baseType: !166, size: 64, offset: 3008)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !537, file: !33, line: 871, baseType: !166, size: 64, offset: 3072)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !537, file: !33, line: 871, baseType: !166, size: 64, offset: 3136)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !537, file: !33, line: 871, baseType: !166, size: 64, offset: 3200)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !537, file: !33, line: 873, baseType: !3166, size: 3328, offset: 3264)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 3328, elements: !3167)
!3167 = !{!3168}
!3168 = !DISubrange(count: 52)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !537, file: !33, line: 875, baseType: !3170, size: 1280, offset: 6592)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 1280, elements: !649)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !537, file: !33, line: 877, baseType: !3172, size: 64, offset: 7872)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !33, line: 877, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !33, line: 880, baseType: !3175, size: 1088, offset: 7936)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3176, line: 72, baseType: !3177)
!3176 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3176, line: 23, size: 1088, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3186, !3187, !3188, !3189, !3214, !3215, !3216}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3177, file: !3176, line: 28, baseType: !252, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3177, file: !3176, line: 38, baseType: !591, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3177, file: !3176, line: 40, baseType: !166, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3177, file: !3176, line: 43, baseType: !731, size: 320, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3177, file: !3176, line: 44, baseType: !3184, size: 64, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3176, line: 44, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3177, file: !3176, line: 48, baseType: !166, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3177, file: !3176, line: 59, baseType: !596, size: 256, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3177, file: !3176, line: 60, baseType: !174, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3177, file: !3176, line: 61, baseType: !3190, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3193, line: 13, size: 1216, elements: !3194)
!3193 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3192, file: !3193, line: 14, baseType: !174, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3192, file: !3193, line: 15, baseType: !166, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3192, file: !3193, line: 17, baseType: !166, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3192, file: !3193, line: 17, baseType: !166, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3192, file: !3193, line: 18, baseType: !166, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3192, file: !3193, line: 18, baseType: !166, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3192, file: !3193, line: 19, baseType: !1848, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3192, file: !3193, line: 21, baseType: !1064, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3192, file: !3193, line: 23, baseType: !1064, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3192, file: !3193, line: 24, baseType: !1064, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3192, file: !3193, line: 25, baseType: !1064, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3192, file: !3193, line: 26, baseType: !1064, size: 64, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3192, file: !3193, line: 27, baseType: !1064, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3192, file: !3193, line: 28, baseType: !1064, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3192, file: !3193, line: 29, baseType: !1064, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3192, file: !3193, line: 30, baseType: !1064, size: 64, offset: 960)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3192, file: !3193, line: 31, baseType: !1064, size: 64, offset: 1024)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3192, file: !3193, line: 32, baseType: !1064, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3192, file: !3193, line: 33, baseType: !1064, size: 64, offset: 1152)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3177, file: !3176, line: 63, baseType: !198, size: 32, offset: 1024)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3177, file: !3176, line: 69, baseType: !221, size: 16, offset: 1056)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3177, file: !3176, line: 70, baseType: !2162, size: 16, offset: 1072)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !33, line: 882, baseType: !166, size: 64, offset: 9024)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !537, file: !33, line: 885, baseType: !551, size: 32, offset: 9088)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !537, file: !33, line: 886, baseType: !3220, size: 64, offset: 9152)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !33, line: 732, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !537, file: !33, line: 901, baseType: !876, size: 64, offset: 9216)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !537, file: !33, line: 904, baseType: !569, size: 64, offset: 9280)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !537, file: !33, line: 906, baseType: !3225, size: 64, offset: 9344)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !33, line: 906, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !537, file: !33, line: 930, baseType: !198, size: 32, offset: 9408)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !537, file: !33, line: 933, baseType: !198, size: 32, offset: 9440)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !537, file: !33, line: 935, baseType: !3230, size: 64, offset: 9472)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !3231)
!3231 = !{!3232}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3230, file: !74, line: 104, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !537, file: !33, line: 940, baseType: !589, size: 64, offset: 9536)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !537, file: !33, line: 942, baseType: !2269, size: 256, offset: 9600)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !534, file: !33, line: 986, baseType: !3238, offset: 10240)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !668)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !187, file: !188, line: 882, baseType: !533, size: 64, offset: 9792)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !187, file: !188, line: 884, baseType: !115, size: 32, offset: 9856)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !187, file: !188, line: 885, baseType: !115, size: 32, offset: 9888)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !187, file: !188, line: 886, baseType: !115, size: 32, offset: 9920)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !187, file: !188, line: 888, baseType: !115, size: 32, offset: 9952)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !187, file: !188, line: 890, baseType: !166, size: 64, offset: 9984)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !187, file: !188, line: 893, baseType: !13, size: 32, offset: 10048)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !187, file: !188, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !187, file: !188, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !187, file: !188, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !187, file: !188, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !187, file: !188, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !187, file: !188, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !187, file: !188, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !187, file: !188, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !187, file: !188, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !187, file: !188, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !187, file: !188, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !187, file: !188, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !187, file: !188, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !187, file: !188, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !187, file: !188, line: 969, baseType: !166, size: 64, offset: 10176)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !187, file: !188, line: 971, baseType: !3262, size: 448, offset: 10240)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !3263)
!3263 = !{!3264, !3265, !3270}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3262, file: !68, line: 26, baseType: !166, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3262, file: !68, line: 27, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!1064, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !68, line: 28, baseType: !3271, size: 320, offset: 128)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !68, line: 28, size: 320, elements: !3272)
!3272 = !{!3273, !3283, !3308}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3271, file: !68, line: 37, baseType: !3274, size: 320)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !68, line: 30, size: 320, elements: !3275)
!3275 = !{!3276, !3278, !3279, !3280, !3281, !3282}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3274, file: !68, line: 31, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3274, file: !68, line: 32, baseType: !169, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !68, line: 33, baseType: !169, size: 32, offset: 96)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3274, file: !68, line: 34, baseType: !169, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3274, file: !68, line: 35, baseType: !252, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3274, file: !68, line: 36, baseType: !3277, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3271, file: !68, line: 47, baseType: !3284, size: 192)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !68, line: 39, size: 192, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3307}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3284, file: !68, line: 40, baseType: !398, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3284, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !68, line: 42, baseType: !3289, size: 64, offset: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !68, line: 42, size: 64, elements: !3290)
!3290 = !{!3291, !3299}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3289, file: !68, line: 43, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3294, line: 7, size: 128, elements: !3295)
!3294 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3295 = !{!3296, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3293, file: !3294, line: 8, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !400, line: 93, baseType: !270)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3293, file: !3294, line: 9, baseType: !270, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3289, file: !68, line: 44, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3302, line: 7, size: 64, elements: !3303)
!3302 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3303 = !{!3304, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3301, file: !3302, line: 8, baseType: !3305, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3302, line: 5, baseType: !723)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3301, file: !3302, line: 9, baseType: !723, size: 32, offset: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3284, file: !68, line: 46, baseType: !252, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3271, file: !68, line: 55, baseType: !3309, size: 256)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3271, file: !68, line: 49, size: 256, elements: !3310)
!3310 = !{!3311, !3314, !3315, !3316, !3317}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3309, file: !68, line: 50, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3309, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3309, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3309, file: !68, line: 53, baseType: !166, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3309, file: !68, line: 54, baseType: !166, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !187, file: !188, line: 973, baseType: !3319, size: 32, offset: 10688)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !176, line: 27, baseType: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !400, line: 28, baseType: !115)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !187, file: !188, line: 974, baseType: !3319, size: 32, offset: 10720)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !187, file: !188, line: 978, baseType: !166, size: 64, offset: 10752)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !187, file: !188, line: 987, baseType: !186, size: 64, offset: 10816)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !188, line: 990, baseType: !186, size: 64, offset: 10880)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !187, file: !188, line: 995, baseType: !257, size: 128, offset: 10944)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !187, file: !188, line: 996, baseType: !257, size: 128, offset: 11072)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !187, file: !188, line: 997, baseType: !186, size: 64, offset: 11200)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !187, file: !188, line: 1005, baseType: !257, size: 128, offset: 11264)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !187, file: !188, line: 1006, baseType: !257, size: 128, offset: 11392)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !187, file: !188, line: 1009, baseType: !638, size: 64, offset: 11520)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !187, file: !188, line: 1010, baseType: !3332, size: 512, offset: 11584)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 512, elements: !649)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !187, file: !188, line: 1011, baseType: !257, size: 128, offset: 12096)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !187, file: !188, line: 1012, baseType: !257, size: 128, offset: 12224)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !187, file: !188, line: 1014, baseType: !2018, size: 64, offset: 12352)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !187, file: !188, line: 1017, baseType: !2155, size: 64, offset: 12416)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !187, file: !188, line: 1020, baseType: !2155, size: 64, offset: 12480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !187, file: !188, line: 1023, baseType: !174, size: 64, offset: 12544)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !187, file: !188, line: 1025, baseType: !252, size: 64, offset: 12608)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !187, file: !188, line: 1026, baseType: !252, size: 64, offset: 12672)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !187, file: !188, line: 1031, baseType: !252, size: 64, offset: 12736)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !187, file: !188, line: 1032, baseType: !3343, size: 192, offset: 12800)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !188, line: 324, size: 192, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3343, file: !188, line: 326, baseType: !252, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3343, file: !188, line: 327, baseType: !252, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3343, file: !188, line: 328, baseType: !350, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !187, file: !188, line: 1041, baseType: !166, size: 64, offset: 12992)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !187, file: !188, line: 1042, baseType: !166, size: 64, offset: 13056)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !187, file: !188, line: 1045, baseType: !252, size: 64, offset: 13120)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !187, file: !188, line: 1048, baseType: !252, size: 64, offset: 13184)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !187, file: !188, line: 1051, baseType: !166, size: 64, offset: 13248)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !187, file: !188, line: 1052, baseType: !166, size: 64, offset: 13312)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !187, file: !188, line: 1055, baseType: !3355, size: 640, offset: 13376)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3356, line: 132, size: 640, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3357 = !{!3358, !3364, !3365}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3355, file: !3356, line: 133, baseType: !3359, size: 576)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3360, size: 576, elements: !634)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3356, line: 117, size: 192, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3360, file: !3356, line: 118, baseType: !252, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3360, file: !3356, line: 119, baseType: !413, size: 128, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3355, file: !3356, line: 134, baseType: !13, size: 32, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3355, file: !3356, line: 135, baseType: !13, size: 32, offset: 608)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !187, file: !188, line: 1058, baseType: !3367, size: 448, offset: 14016)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3356, line: 144, size: 448, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3367, file: !3356, line: 145, baseType: !577, size: 128, align: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3367, file: !3356, line: 146, baseType: !596, size: 256, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3367, file: !3356, line: 147, baseType: !13, size: 32, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !187, file: !188, line: 1064, baseType: !682, size: 64, offset: 14464)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !187, file: !188, line: 1067, baseType: !682, size: 64, offset: 14528)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !187, file: !188, line: 1070, baseType: !682, size: 64, offset: 14592)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !187, file: !188, line: 1074, baseType: !715, size: 64, offset: 14656)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !187, file: !188, line: 1084, baseType: !3377, size: 128, offset: 14720)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2765)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !187, file: !188, line: 1086, baseType: !3379, size: 64, offset: 14848)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !188, line: 55, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !187, file: !188, line: 1089, baseType: !3382, size: 64, offset: 14912)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3383, line: 12, size: 64, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3382, file: !3383, line: 13, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3383, line: 8, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !187, file: !188, line: 1090, baseType: !3389, size: 128, offset: 14976)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3390, line: 13, size: 128, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3389, file: !3390, line: 14, baseType: !257, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !187, file: !188, line: 1097, baseType: !3394, size: 64, offset: 15104)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !188, line: 50, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !187, file: !188, line: 1100, baseType: !3397, size: 64, offset: 15168)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !188, line: 1100, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !187, file: !188, line: 1103, baseType: !3400, size: 64, offset: 15232)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !188, line: 53, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !187, file: !188, line: 1107, baseType: !3403, size: 64, offset: 15296)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !188, line: 56, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !187, file: !188, line: 1110, baseType: !3406, size: 64, offset: 15360)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3408, line: 93, size: 8768, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3457, !3466, !3467, !3469, !3470, !3471, !4325, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4363, !4364, !4371, !4381, !4384, !4385, !4388, !4389, !4390, !4391, !4392, !4393}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3407, file: !3408, line: 94, baseType: !194, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3407, file: !3408, line: 95, baseType: !198, size: 32, offset: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3407, file: !3408, line: 96, baseType: !115, size: 32, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3407, file: !3408, line: 97, baseType: !115, size: 32, offset: 96)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3407, file: !3408, line: 98, baseType: !257, size: 128, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3407, file: !3408, line: 100, baseType: !653, size: 192, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3407, file: !3408, line: 103, baseType: !186, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3407, file: !3408, line: 106, baseType: !3418, size: 192, offset: 512)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !881, line: 32, size: 192, elements: !3419)
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3418, file: !881, line: 33, baseType: !257, size: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3418, file: !881, line: 34, baseType: !3422, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3423, line: 25, baseType: !3424)
!3423 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3423, line: 23, size: 64, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3424, file: !3423, line: 24, baseType: !484, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3407, file: !3408, line: 109, baseType: !646, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3407, file: !3408, line: 112, baseType: !115, size: 32, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3407, file: !3408, line: 114, baseType: !115, size: 32, offset: 800)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3407, file: !3408, line: 115, baseType: !186, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3407, file: !3408, line: 118, baseType: !115, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3407, file: !3408, line: 119, baseType: !13, size: 32, offset: 928)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3407, file: !3408, line: 121, baseType: !3434, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3408, line: 80, size: 448, elements: !3436)
!3436 = !{!3437, !3438, !3444}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3435, file: !3408, line: 81, baseType: !198, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3435, file: !3408, line: 82, baseType: !3439, size: 128, offset: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3408, line: 75, size: 128, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3439, file: !3408, line: 76, baseType: !186, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3439, file: !3408, line: 77, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3435, file: !3408, line: 83, baseType: !1417, size: 256, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3407, file: !3408, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3407, file: !3408, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3407, file: !3408, line: 138, baseType: !13, size: 32, offset: 1056)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3407, file: !3408, line: 139, baseType: !257, size: 128, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3407, file: !3408, line: 142, baseType: !325, size: 512, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3407, file: !3408, line: 143, baseType: !333, size: 64, offset: 1728)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3407, file: !3408, line: 150, baseType: !3452, size: 256, offset: 1792)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3453, size: 256, elements: !2145)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3408, line: 38, size: 128, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3453, file: !3408, line: 39, baseType: !252, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3453, file: !3408, line: 40, baseType: !252, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3407, file: !3408, line: 156, baseType: !3458, size: 192, offset: 2048)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3408, line: 66, size: 192, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3458, file: !3408, line: 67, baseType: !3461, size: 192)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3408, line: 47, size: 192, elements: !3462)
!3462 = !{!3463, !3464, !3465}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3461, file: !3408, line: 48, baseType: !591, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3461, file: !3408, line: 49, baseType: !591, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3461, file: !3408, line: 50, baseType: !591, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3407, file: !3408, line: 160, baseType: !3355, size: 640, offset: 2240)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3407, file: !3408, line: 163, baseType: !3468, size: 256, offset: 2880)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 256, elements: !649)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3407, file: !3408, line: 169, baseType: !638, size: 64, offset: 3136)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3407, file: !3408, line: 172, baseType: !115, size: 32, offset: 3200)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3407, file: !3408, line: 174, baseType: !3472, size: 64, offset: 3264)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3474, line: 193, size: 5248, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3475 = !{!3476, !3477, !3478, !3929, !4214, !4215, !4216, !4263, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4280, !4281, !4282, !4283, !4284, !4292, !4301, !4302, !4303, !4304, !4305, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3473, file: !3474, line: 194, baseType: !2003, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3473, file: !3474, line: 195, baseType: !115, size: 32, offset: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 196, baseType: !3479, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3487, !3488, !3541, !3611, !3612, !3613, !3614, !3615, !3622, !3714, !3727, !3737, !3741, !3743, !3744, !3745, !3749, !3756, !3757, !3760, !3763, !3767, !3871, !3872, !3873, !3874, !3875, !3876, !3906, !3907, !3908, !3911, !3914, !3923, !3924, !3925, !3926, !3927, !3928}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3480, file: !100, line: 706, baseType: !1208, size: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3480, file: !100, line: 707, baseType: !3479, size: 64, offset: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3480, file: !100, line: 709, baseType: !3485, size: 64, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3480, file: !100, line: 711, baseType: !793, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3480, file: !100, line: 712, baseType: !3489, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3501, !3506, !3510}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !100, line: 90, baseType: !793, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3491, file: !100, line: 91, baseType: !1288, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3491, file: !100, line: 92, baseType: !3496, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!115, !3499, !1244}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3491, file: !100, line: 93, baseType: !3502, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!803, !3499, !3505, !1865, !1866}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3491, file: !100, line: 95, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3479}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3491, file: !100, line: 97, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !3514)
!3514 = !{!3515, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3513, file: !107, line: 287, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!115, !3479}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3513, file: !107, line: 288, baseType: !3507, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3513, file: !107, line: 289, baseType: !3516, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3513, file: !107, line: 290, baseType: !3516, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3513, file: !107, line: 291, baseType: !3516, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3513, file: !107, line: 292, baseType: !3516, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3513, file: !107, line: 293, baseType: !3516, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3513, file: !107, line: 294, baseType: !3516, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3513, file: !107, line: 295, baseType: !3516, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3513, file: !107, line: 296, baseType: !3516, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3513, file: !107, line: 297, baseType: !3516, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3513, file: !107, line: 298, baseType: !3516, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3513, file: !107, line: 299, baseType: !3516, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3513, file: !107, line: 300, baseType: !3516, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3513, file: !107, line: 301, baseType: !3516, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3513, file: !107, line: 302, baseType: !3516, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3513, file: !107, line: 303, baseType: !3516, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3513, file: !107, line: 304, baseType: !3516, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3513, file: !107, line: 305, baseType: !3516, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3513, file: !107, line: 306, baseType: !3516, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3513, file: !107, line: 307, baseType: !3516, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3513, file: !107, line: 308, baseType: !3516, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3513, file: !107, line: 309, baseType: !3516, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3480, file: !100, line: 714, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3544)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3545, line: 80, size: 1344, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3610}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3544, file: !3545, line: 81, baseType: !793, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3544, file: !3545, line: 82, baseType: !793, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3544, file: !3545, line: 83, baseType: !1288, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3544, file: !3545, line: 84, baseType: !1288, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3544, file: !3545, line: 85, baseType: !1288, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3544, file: !3545, line: 87, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!115, !3479, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3569, !3573, !3574, !3575, !3576, !3577, !3585, !3586, !3587, !3588, !3589, !3590}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !94, line: 97, baseType: !793, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3557, file: !94, line: 98, baseType: !3542, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3557, file: !94, line: 100, baseType: !1195, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3557, file: !94, line: 101, baseType: !793, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3557, file: !94, line: 103, baseType: !790, size: 8, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3557, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3557, file: !94, line: 106, baseType: !3566, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3557, file: !94, line: 107, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3557, file: !94, line: 109, baseType: !3516, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3557, file: !94, line: 110, baseType: !3507, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3557, file: !94, line: 111, baseType: !3516, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3557, file: !94, line: 112, baseType: !3507, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3557, file: !94, line: 113, baseType: !3578, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!115, !3479, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3582, file: !107, line: 59, baseType: !115, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3557, file: !94, line: 114, baseType: !3516, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3557, file: !94, line: 115, baseType: !1288, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3557, file: !94, line: 116, baseType: !1288, size: 64, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3557, file: !94, line: 118, baseType: !3511, size: 64, offset: 960)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3557, file: !94, line: 119, baseType: !3507, size: 64, offset: 1024)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3557, file: !94, line: 121, baseType: !3591, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3544, file: !3545, line: 88, baseType: !3496, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3544, file: !3545, line: 89, baseType: !3516, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3544, file: !3545, line: 90, baseType: !3507, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3544, file: !3545, line: 91, baseType: !3507, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3544, file: !3545, line: 92, baseType: !3507, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3544, file: !3545, line: 94, baseType: !3516, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3544, file: !3545, line: 95, baseType: !3516, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3544, file: !3545, line: 97, baseType: !3578, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3544, file: !3545, line: 98, baseType: !3516, size: 64, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3544, file: !3545, line: 100, baseType: !3516, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3544, file: !3545, line: 102, baseType: !3516, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3544, file: !3545, line: 103, baseType: !3507, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3544, file: !3545, line: 105, baseType: !3511, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3544, file: !3545, line: 107, baseType: !3607, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3545, line: 107, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3544, file: !3545, line: 109, baseType: !790, size: 8, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3480, file: !100, line: 715, baseType: !3556, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3480, file: !100, line: 717, baseType: !174, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3480, file: !100, line: 719, baseType: !174, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3480, file: !100, line: 721, baseType: !596, size: 256, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3480, file: !100, line: 725, baseType: !3616, size: 448, offset: 1280)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3616, file: !100, line: 518, baseType: !257, size: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3616, file: !100, line: 519, baseType: !257, size: 128, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3616, file: !100, line: 520, baseType: !257, size: 128, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3616, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3480, file: !100, line: 726, baseType: !3623, size: 2496, offset: 1728)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3707, !3711}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3623, file: !107, line: 664, baseType: !3581, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3623, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3623, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3623, file: !107, line: 667, baseType: !790, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3623, file: !107, line: 668, baseType: !790, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3623, file: !107, line: 669, baseType: !790, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3623, file: !107, line: 670, baseType: !790, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3623, file: !107, line: 671, baseType: !790, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3623, file: !107, line: 672, baseType: !790, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3623, file: !107, line: 673, baseType: !790, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3623, file: !107, line: 674, baseType: !790, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3623, file: !107, line: 675, baseType: !169, size: 32, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3623, file: !107, line: 676, baseType: !551, size: 32, offset: 96)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3623, file: !107, line: 678, baseType: !257, size: 128, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3623, file: !107, line: 679, baseType: !1417, size: 256, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3623, file: !107, line: 680, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3643, line: 43, size: 1536, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3642, file: !3643, line: 44, baseType: !793, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3642, file: !3643, line: 45, baseType: !115, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3642, file: !3643, line: 46, baseType: !257, size: 128, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !3643, line: 47, baseType: !551, size: 32, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3642, file: !3643, line: 48, baseType: !3650, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3642, file: !3643, line: 49, baseType: !2257, size: 320, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3642, file: !3643, line: 50, baseType: !166, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3642, file: !3643, line: 51, baseType: !333, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3642, file: !3643, line: 52, baseType: !333, size: 64, offset: 832)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3642, file: !3643, line: 53, baseType: !333, size: 64, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3642, file: !3643, line: 54, baseType: !333, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3642, file: !3643, line: 55, baseType: !333, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3642, file: !3643, line: 56, baseType: !166, size: 64, offset: 1088)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3642, file: !3643, line: 57, baseType: !166, size: 64, offset: 1152)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3642, file: !3643, line: 58, baseType: !166, size: 64, offset: 1216)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3642, file: !3643, line: 59, baseType: !166, size: 64, offset: 1280)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3642, file: !3643, line: 60, baseType: !166, size: 64, offset: 1344)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3642, file: !3643, line: 61, baseType: !3479, size: 64, offset: 1408)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3642, file: !3643, line: 62, baseType: !790, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3642, file: !3643, line: 63, baseType: !790, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3623, file: !107, line: 681, baseType: !790, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3623, file: !107, line: 682, baseType: !790, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3623, file: !107, line: 683, baseType: !790, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3623, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3623, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3623, file: !107, line: 690, baseType: !325, size: 512, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3623, file: !107, line: 691, baseType: !252, size: 64, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3623, file: !107, line: 692, baseType: !2269, size: 256, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3623, file: !107, line: 693, baseType: !653, size: 192, offset: 1472)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3623, file: !107, line: 694, baseType: !3650, size: 64, offset: 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3623, file: !107, line: 695, baseType: !198, size: 32, offset: 1728)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3623, file: !107, line: 696, baseType: !198, size: 32, offset: 1760)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3623, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3623, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3623, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3623, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3623, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3623, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3623, file: !107, line: 703, baseType: !790, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3623, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3623, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3623, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3623, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3623, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3623, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3623, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3623, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3623, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3623, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3623, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3623, file: !107, line: 715, baseType: !252, size: 64, offset: 2048)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3623, file: !107, line: 716, baseType: !252, size: 64, offset: 2112)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3623, file: !107, line: 717, baseType: !252, size: 64, offset: 2176)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3623, file: !107, line: 718, baseType: !252, size: 64, offset: 2240)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3623, file: !107, line: 720, baseType: !3702, size: 64, offset: 2304)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !107, line: 633, baseType: !551, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3703, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3623, file: !107, line: 721, baseType: !3708, size: 64, offset: 2368)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{null, !3479, !723}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3623, file: !107, line: 722, baseType: !3712, size: 64, offset: 2432)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3480, file: !100, line: 727, baseType: !3715, size: 64, offset: 4224)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3724, !3725, !3726}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3716, file: !107, line: 743, baseType: !3513, size: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3716, file: !107, line: 744, baseType: !3516, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3716, file: !107, line: 745, baseType: !3721, size: 64, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3479, !790}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3716, file: !107, line: 746, baseType: !3516, size: 64, offset: 1600)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3716, file: !107, line: 747, baseType: !3507, size: 64, offset: 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3716, file: !107, line: 748, baseType: !3507, size: 64, offset: 1728)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3480, file: !100, line: 736, baseType: !3728, size: 128, offset: 4288)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !3729)
!3729 = !{!3730, !3734}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3728, file: !100, line: 531, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3733, line: 13, flags: DIFlagFwdDecl)
!3733 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3728, file: !100, line: 532, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3480, file: !100, line: 738, baseType: !3738, size: 64, offset: 4416)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3480, file: !100, line: 740, baseType: !3742, size: 64, offset: 4480)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3480, file: !100, line: 741, baseType: !252, size: 64, offset: 4544)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3480, file: !100, line: 746, baseType: !252, size: 64, offset: 4608)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3480, file: !100, line: 747, baseType: !3746, size: 64, offset: 4672)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3480, file: !100, line: 749, baseType: !3750, size: 64, offset: 4736)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3751, file: !100, line: 433, baseType: !13, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3751, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3751, file: !100, line: 435, baseType: !166, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3480, file: !100, line: 751, baseType: !257, size: 128, offset: 4800)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3480, file: !100, line: 762, baseType: !3758, size: 64, offset: 4928)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3480, file: !100, line: 770, baseType: !3761, offset: 4992)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3762, line: 5, elements: !562)
!3762 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3480, file: !100, line: 772, baseType: !3764, size: 64, offset: 4992)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3766, line: 18, flags: DIFlagFwdDecl)
!3766 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3480, file: !100, line: 773, baseType: !3768, size: 64, offset: 5056)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3770, line: 41, size: 512, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3771 = !{!3772, !3773, !3867, !3868, !3869, !3870}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3769, file: !3770, line: 42, baseType: !3768, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3769, file: !3770, line: 43, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3776)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3770, line: 125, size: 1408, elements: !3777)
!3777 = !{!3778, !3782, !3786, !3792, !3796, !3797, !3802, !3806, !3810, !3814, !3818, !3819, !3823, !3827, !3831, !3842, !3843, !3844, !3845, !3855, !3859, !3863}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3776, file: !3770, line: 126, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3768, !3768}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3776, file: !3770, line: 127, baseType: !3783, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3768}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3776, file: !3770, line: 128, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!790, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3769)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3776, file: !3770, line: 129, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!1848, !3790, !3499}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3776, file: !3770, line: 131, baseType: !3787, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3776, file: !3770, line: 133, baseType: !3798, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3801, !3790}
!3801 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3770, line: 132, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3776, file: !3770, line: 134, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!790, !3790, !793}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3776, file: !3770, line: 136, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!115, !3790, !793, !13, !174, !1106}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3776, file: !3770, line: 141, baseType: !3811, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!115, !3790, !793, !2345, !1106}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3776, file: !3770, line: 144, baseType: !3815, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!793, !3790}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3776, file: !3770, line: 145, baseType: !3815, size: 64, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3776, file: !3770, line: 146, baseType: !3820, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3768, !3790}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3776, file: !3770, line: 148, baseType: !3824, size: 64, offset: 768)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3768, !3790, !3768}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3776, file: !3770, line: 151, baseType: !3828, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3768, !3790, !793}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3776, file: !3770, line: 153, baseType: !3832, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!115, !3790, !793, !793, !13, !13, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3770, line: 94, size: 640, elements: !3837)
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3770, line: 95, baseType: !3768, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3836, file: !3770, line: 96, baseType: !13, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3836, file: !3770, line: 97, baseType: !3841, size: 512, offset: 128)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 512, elements: !394)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3776, file: !3770, line: 158, baseType: !3824, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3776, file: !3770, line: 161, baseType: !3820, size: 64, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3776, file: !3770, line: 163, baseType: !3779, size: 64, offset: 1088)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3776, file: !3770, line: 164, baseType: !3846, size: 64, offset: 1152)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!115, !3790, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3770, line: 73, size: 128, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3850, file: !3770, line: 74, baseType: !13, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3770, line: 75, baseType: !13, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3850, file: !3770, line: 76, baseType: !3790, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3776, file: !3770, line: 166, baseType: !3856, size: 64, offset: 1216)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!174, !3768, !115}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3776, file: !3770, line: 167, baseType: !3860, size: 64, offset: 1280)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!115, !3790, !13}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3776, file: !3770, line: 168, baseType: !3864, size: 64, offset: 1344)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!115, !3768}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3769, file: !3770, line: 44, baseType: !3479, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3769, file: !3770, line: 45, baseType: !257, size: 128, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3769, file: !3770, line: 46, baseType: !257, size: 128, offset: 320)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !3770, line: 47, baseType: !367, size: 8, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3480, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3480, file: !100, line: 778, baseType: !1024, size: 32, offset: 5152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3480, file: !100, line: 779, baseType: !169, size: 32, offset: 5184)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3480, file: !100, line: 781, baseType: !551, size: 32, offset: 5216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3480, file: !100, line: 782, baseType: !257, size: 128, offset: 5248)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3480, file: !100, line: 784, baseType: !3877, size: 64, offset: 5376)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3880, line: 52, size: 768, elements: !3881)
!3880 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3890, !3894, !3895, !3896, !3897, !3901, !3905}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3879, file: !3880, line: 53, baseType: !793, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3879, file: !3880, line: 55, baseType: !1288, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3879, file: !3880, line: 56, baseType: !1288, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3879, file: !3880, line: 58, baseType: !3496, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3879, file: !3880, line: 59, baseType: !3887, size: 64, offset: 256)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!803, !3499, !3505}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3879, file: !3880, line: 61, baseType: !3891, size: 64, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3877}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3879, file: !3880, line: 62, baseType: !3507, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3879, file: !3880, line: 64, baseType: !3516, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3879, file: !3880, line: 66, baseType: !1831, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3879, file: !3880, line: 67, baseType: !3898, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!1848, !3499}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3879, file: !3880, line: 69, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3499, !1865, !1866}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3879, file: !3880, line: 71, baseType: !3511, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3480, file: !100, line: 785, baseType: !1288, size: 64, offset: 5440)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3480, file: !100, line: 787, baseType: !3507, size: 64, offset: 5504)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3480, file: !100, line: 788, baseType: !3909, size: 64, offset: 5568)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3480, file: !100, line: 789, baseType: !3912, size: 64, offset: 5632)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3480, file: !100, line: 791, baseType: !3915, size: 64, offset: 5696)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3916, file: !100, line: 598, baseType: !122, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3916, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3916, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3916, file: !100, line: 601, baseType: !790, size: 8, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3916, file: !100, line: 602, baseType: !790, size: 8, offset: 104)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3480, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3480, file: !100, line: 795, baseType: !790, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3480, file: !100, line: 796, baseType: !790, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3480, file: !100, line: 797, baseType: !790, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3480, file: !100, line: 798, baseType: !790, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3480, file: !100, line: 799, baseType: !790, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3473, file: !3474, line: 197, baseType: !3930, size: 64, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3932, line: 441, size: 1472, elements: !3933)
!3932 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3933 = !{!3934, !3935, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3965, !3966, !3969, !3970, !3972, !4093, !4096, !4097, !4213}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3931, file: !3932, line: 442, baseType: !2003, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3931, file: !3932, line: 443, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3931, file: !3932, line: 444, baseType: !1195, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3931, file: !3932, line: 445, baseType: !793, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3931, file: !3932, line: 446, baseType: !793, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3931, file: !3932, line: 447, baseType: !115, size: 32, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3931, file: !3932, line: 448, baseType: !115, size: 32, offset: 352)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3931, file: !3932, line: 449, baseType: !115, size: 32, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3931, file: !3932, line: 450, baseType: !13, size: 32, offset: 416)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3931, file: !3932, line: 451, baseType: !759, size: 16, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3931, file: !3932, line: 452, baseType: !759, size: 16, offset: 464)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3931, file: !3932, line: 453, baseType: !3947, size: 352, offset: 480)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3948, line: 30, size: 352, elements: !3949)
!3948 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3949 = !{!3950, !3952, !3953, !3954, !3955, !3958, !3962, !3964}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3947, file: !3948, line: 31, baseType: !3951, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3948, line: 7, baseType: !13)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3947, file: !3948, line: 32, baseType: !3951, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3947, file: !3948, line: 33, baseType: !3951, size: 32, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3947, file: !3948, line: 34, baseType: !3951, size: 32, offset: 96)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3947, file: !3948, line: 35, baseType: !3956, size: 8, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3957, line: 5, baseType: !369)
!3957 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3947, file: !3948, line: 36, baseType: !3959, size: 152, offset: 136)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3956, size: 152, elements: !3960)
!3960 = !{!3961}
!3961 = !DISubrange(count: 19)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3947, file: !3948, line: 37, baseType: !3963, size: 32, offset: 288)
!3963 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3957, line: 6, baseType: !13)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3947, file: !3948, line: 38, baseType: !3963, size: 32, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3931, file: !3932, line: 454, baseType: !166, size: 64, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3931, file: !3932, line: 455, baseType: !3967, size: 64, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3932, line: 455, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3931, file: !3932, line: 456, baseType: !3930, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3931, file: !3932, line: 461, baseType: !3971, size: 64, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3931, file: !3932, line: 462, baseType: !3973, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3976, line: 101, size: 3008, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3977 = !{!3978, !4010, !4011, !4012, !4034, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4062, !4088, !4089, !4090, !4091, !4092}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3975, file: !3976, line: 102, baseType: !3979, size: 1088)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3980, line: 35, size: 1088, elements: !3981)
!3980 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3981 = !{!3982, !3999, !4000, !4001, !4002, !4003, !4007, !4008, !4009}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3979, file: !3980, line: 36, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3980, line: 10, size: 256, elements: !3985)
!3985 = !{!3986, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3986 = !DIDerivedType(tag: DW_TAG_member, scope: !3984, file: !3980, line: 11, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3984, file: !3980, line: 11, size: 64, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3987, file: !3980, line: 12, baseType: !3983, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3987, file: !3980, line: 13, baseType: !210, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3984, file: !3980, line: 15, baseType: !13, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3984, file: !3980, line: 16, baseType: !13, size: 32, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3984, file: !3980, line: 17, baseType: !13, size: 32, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3984, file: !3980, line: 18, baseType: !13, size: 32, offset: 160)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3984, file: !3980, line: 19, baseType: !13, size: 32, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3984, file: !3980, line: 20, baseType: !790, size: 8, offset: 224)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3984, file: !3980, line: 22, baseType: !3998, align: 64, offset: 256)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, elements: !668)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3979, file: !3980, line: 37, baseType: !2269, size: 256, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3979, file: !3980, line: 38, baseType: !596, size: 256, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3979, file: !3980, line: 39, baseType: !198, size: 32, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3979, file: !3980, line: 40, baseType: !3984, size: 256, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3979, file: !3980, line: 41, baseType: !4004, size: 64, offset: 896)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !211, line: 56, size: 64, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4004, file: !211, line: 57, baseType: !214, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3979, file: !3980, line: 42, baseType: !198, size: 32, offset: 960)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3979, file: !3980, line: 43, baseType: !115, size: 32, offset: 992)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3979, file: !3980, line: 44, baseType: !3983, size: 64, offset: 1024)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3975, file: !3976, line: 103, baseType: !3472, size: 64, offset: 1088)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3975, file: !3976, line: 104, baseType: !3472, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3975, file: !3976, line: 105, baseType: !4013, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3976, line: 33, size: 320, elements: !4016)
!4016 = !{!4017, !4021, !4025, !4029, !4033}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4015, file: !3976, line: 34, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!790, !3974}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4015, file: !3976, line: 35, baseType: !4022, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3974, !790}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4015, file: !3976, line: 36, baseType: !4026, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3974}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4015, file: !3976, line: 37, baseType: !4030, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!115, !3974, !3472}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4015, file: !3976, line: 38, baseType: !4026, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3975, file: !3976, line: 106, baseType: !4035, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3976, line: 41, size: 192, elements: !4038)
!4038 = !{!4039, !4045, !4049}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4037, file: !3976, line: 42, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!1106, !3974, !4043, !4043, !1106}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4037, file: !3976, line: 44, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !3974, !4043, !4043, !1106}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4037, file: !3976, line: 46, baseType: !4026, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3975, file: !3976, line: 107, baseType: !551, size: 32, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3975, file: !3976, line: 108, baseType: !115, size: 32, offset: 1376)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3975, file: !3976, line: 109, baseType: !115, size: 32, offset: 1408)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3975, file: !3976, line: 110, baseType: !653, size: 192, offset: 1472)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3975, file: !3976, line: 111, baseType: !653, size: 192, offset: 1664)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3975, file: !3976, line: 112, baseType: !166, size: 64, offset: 1856)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3975, file: !3976, line: 113, baseType: !166, size: 64, offset: 1920)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3975, file: !3976, line: 114, baseType: !369, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3975, file: !3976, line: 115, baseType: !596, size: 256, offset: 2048)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3975, file: !3976, line: 116, baseType: !596, size: 256, offset: 2304)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3975, file: !3976, line: 117, baseType: !4061, size: 64, offset: 2560)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3975, file: !3976, line: 118, baseType: !4063, size: 192, offset: 2624)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3975, file: !3976, line: 118, size: 192, elements: !4064)
!4064 = !{!4065, !4086}
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !3976, line: 118, baseType: !4066, size: 192)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !3976, line: 118, size: 192, elements: !4067)
!4067 = !{!4068, !4077, !4078, !4079, !4084, !4085}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4066, file: !3976, line: 118, baseType: !4069, size: 192)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4070, line: 44, size: 192, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4071 = !{!4072, !4073, !4074, !4075, !4076}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4069, file: !4070, line: 45, baseType: !13, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4069, file: !4070, line: 46, baseType: !13, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4069, file: !4070, line: 47, baseType: !13, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4069, file: !4070, line: 48, baseType: !13, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4069, file: !4070, line: 49, baseType: !174, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4066, file: !3976, line: 118, baseType: !4061, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4066, file: !3976, line: 118, baseType: !946, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4066, file: !3976, line: 118, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !4082)
!4082 = !{!4083}
!4083 = !DISubrange(count: 0)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4066, file: !3976, line: 118, baseType: !4061, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4066, file: !3976, line: 118, baseType: !946, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4063, file: !3976, line: 118, baseType: !4087, offset: 192)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, elements: !4082)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3975, file: !3976, line: 119, baseType: !13, size: 32, offset: 2816)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3975, file: !3976, line: 120, baseType: !13, size: 32, offset: 2848)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3975, file: !3976, line: 121, baseType: !115, size: 32, offset: 2880)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3975, file: !3976, line: 122, baseType: !2003, size: 32, offset: 2912)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3975, file: !3976, line: 123, baseType: !174, size: 64, offset: 2944)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3931, file: !3932, line: 463, baseType: !4094, size: 64, offset: 1152)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3931, file: !3932, line: 464, baseType: !174, size: 64, offset: 1216)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3931, file: !3932, line: 470, baseType: !4098, size: 64, offset: 1280)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3932, line: 357, size: 2176, elements: !4101)
!4101 = !{!4102, !4106, !4110, !4114, !4118, !4122, !4126, !4127, !4131, !4135, !4136, !4140, !4141, !4145, !4149, !4155, !4156, !4157, !4158, !4159, !4160, !4164, !4165, !4166, !4167, !4171, !4175, !4179, !4183, !4195, !4201, !4207, !4208, !4212}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4100, file: !3932, line: 358, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!3472, !3930, !569, !115}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4100, file: !3932, line: 360, baseType: !4107, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!115, !3930, !3472}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4100, file: !3932, line: 361, baseType: !4111, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !3930, !3472}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4100, file: !3932, line: 362, baseType: !4115, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!115, !3472, !569}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4100, file: !3932, line: 363, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !3472, !569}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4100, file: !3932, line: 364, baseType: !4123, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !3472}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4100, file: !3932, line: 365, baseType: !4123, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4100, file: !3932, line: 366, baseType: !4128, size: 64, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!1103, !3472, !4043, !1106}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4100, file: !3932, line: 367, baseType: !4132, size: 64, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!115, !3472, !367}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4100, file: !3932, line: 368, baseType: !4123, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4100, file: !3932, line: 369, baseType: !4137, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!13, !3472}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4100, file: !3932, line: 370, baseType: !4137, size: 64, offset: 704)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4100, file: !3932, line: 371, baseType: !4142, size: 64, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!115, !3472, !13, !166}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4100, file: !3932, line: 373, baseType: !4146, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!1064, !3472, !13, !166}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4100, file: !3932, line: 375, baseType: !4150, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !3472, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3947)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4100, file: !3932, line: 376, baseType: !4123, size: 64, offset: 960)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4100, file: !3932, line: 377, baseType: !4123, size: 64, offset: 1024)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4100, file: !3932, line: 378, baseType: !4123, size: 64, offset: 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4100, file: !3932, line: 379, baseType: !4123, size: 64, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4100, file: !3932, line: 380, baseType: !4123, size: 64, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4100, file: !3932, line: 381, baseType: !4161, size: 64, offset: 1280)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!115, !3472, !115}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4100, file: !3932, line: 382, baseType: !4123, size: 64, offset: 1344)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4100, file: !3932, line: 383, baseType: !4161, size: 64, offset: 1408)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4100, file: !3932, line: 384, baseType: !4123, size: 64, offset: 1472)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4100, file: !3932, line: 385, baseType: !4168, size: 64, offset: 1536)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !3472, !115}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4100, file: !3932, line: 386, baseType: !4172, size: 64, offset: 1600)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !3472, !4}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4100, file: !3932, line: 387, baseType: !4176, size: 64, offset: 1664)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!115, !3472}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4100, file: !3932, line: 388, baseType: !4180, size: 64, offset: 1728)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!115, !3472, !13, !13}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4100, file: !3932, line: 390, baseType: !4184, size: 64, offset: 1792)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!115, !3472, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4189, line: 15, size: 64, elements: !4190)
!4189 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4190 = !{!4191, !4192, !4193, !4194}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4188, file: !4189, line: 16, baseType: !223, size: 16)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4188, file: !4189, line: 17, baseType: !223, size: 16, offset: 16)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4188, file: !4189, line: 18, baseType: !223, size: 16, offset: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4188, file: !4189, line: 19, baseType: !223, size: 16, offset: 48)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4100, file: !3932, line: 391, baseType: !4196, size: 64, offset: 1856)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!115, !3472, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3932, line: 16, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4100, file: !3932, line: 393, baseType: !4202, size: 64, offset: 1920)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!115, !3472, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3932, line: 17, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4100, file: !3932, line: 394, baseType: !4202, size: 64, offset: 1984)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4100, file: !3932, line: 395, baseType: !4209, size: 64, offset: 2048)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !3472, !1913}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4100, file: !3932, line: 401, baseType: !1944, size: 64, offset: 2112)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3931, file: !3932, line: 471, baseType: !257, size: 128, offset: 1344)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3473, file: !3474, line: 198, baseType: !3974, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3473, file: !3474, line: 199, baseType: !4098, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3473, file: !3474, line: 201, baseType: !4217, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4219, line: 269, size: 128, elements: !4220)
!4219 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4220 = !{!4221, !4262}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4218, file: !4219, line: 270, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4219, line: 231, size: 1152, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4235, !4239, !4240, !4241, !4242, !4246, !4247, !4251, !4252, !4256, !4260, !4261}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4223, file: !4219, line: 232, baseType: !803, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4223, file: !4219, line: 233, baseType: !115, size: 32, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4223, file: !4219, line: 238, baseType: !4176, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4223, file: !4219, line: 239, baseType: !4123, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4223, file: !4219, line: 240, baseType: !4123, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4223, file: !4219, line: 241, baseType: !4231, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!1103, !3472, !569, !4234, !1106, !1720, !166}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4223, file: !4219, line: 243, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!1103, !3472, !569, !4043, !1106}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4223, file: !4219, line: 245, baseType: !4142, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4223, file: !4219, line: 247, baseType: !4142, size: 64, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4223, file: !4219, line: 249, baseType: !4150, size: 64, offset: 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4223, file: !4219, line: 250, baseType: !4243, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!1981, !3472, !569, !1983}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4223, file: !4219, line: 252, baseType: !4123, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4223, file: !4219, line: 257, baseType: !4248, size: 64, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !3472, !4043, !4043, !1106}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4223, file: !4219, line: 259, baseType: !4123, size: 64, offset: 832)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4223, file: !4219, line: 260, baseType: !4253, size: 64, offset: 896)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !3472, !790}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4223, file: !4219, line: 261, baseType: !4257, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!1106, !3472, !4043, !4043, !1106}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4223, file: !4219, line: 263, baseType: !4248, size: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4223, file: !4219, line: 266, baseType: !1195, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4218, file: !4219, line: 271, baseType: !3472, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3473, file: !3474, line: 202, baseType: !4264, size: 384, offset: 384)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4219, line: 17, size: 384, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269, !4270}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4264, file: !4219, line: 18, baseType: !589, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4264, file: !4219, line: 19, baseType: !350, size: 32, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4264, file: !4219, line: 20, baseType: !13, size: 32, offset: 96)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4264, file: !4219, line: 21, baseType: !257, size: 128, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4264, file: !4219, line: 22, baseType: !257, size: 128, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3473, file: !3474, line: 204, baseType: !596, size: 256, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3473, file: !3474, line: 205, baseType: !596, size: 256, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3473, file: !3474, line: 206, baseType: !596, size: 256, offset: 1280)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3473, file: !3474, line: 207, baseType: !731, size: 320, offset: 1536)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3473, file: !3474, line: 208, baseType: !596, size: 256, offset: 1856)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3473, file: !3474, line: 209, baseType: !3947, size: 352, offset: 2112)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3473, file: !3474, line: 209, baseType: !3947, size: 352, offset: 2464)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 210, baseType: !4279, size: 512, offset: 2816)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1251)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !3474, line: 211, baseType: !166, size: 64, offset: 3328)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3473, file: !3474, line: 212, baseType: !115, size: 32, offset: 3392)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3473, file: !3474, line: 213, baseType: !13, size: 32, offset: 3424)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3473, file: !3474, line: 214, baseType: !4188, size: 64, offset: 3456)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3473, file: !3474, line: 221, baseType: !4285, size: 64, align: 64, offset: 3520)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !3474, line: 216, size: 64, align: 64, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4285, file: !3474, line: 217, baseType: !551, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4285, file: !3474, line: 218, baseType: !790, size: 8, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4285, file: !3474, line: 219, baseType: !790, size: 8, offset: 40)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4285, file: !3474, line: 220, baseType: !4291, offset: 64)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !4082)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3473, file: !3474, line: 230, baseType: !4293, size: 192, align: 64, offset: 3584)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !3474, line: 223, size: 192, align: 64, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4293, file: !3474, line: 224, baseType: !638, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4293, file: !3474, line: 225, baseType: !638, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4293, file: !3474, line: 226, baseType: !551, size: 32, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4293, file: !3474, line: 227, baseType: !369, size: 8, offset: 160)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4293, file: !3474, line: 228, baseType: !790, size: 8, offset: 168)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4293, file: !3474, line: 229, baseType: !4291, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3473, file: !3474, line: 232, baseType: !790, size: 8, offset: 3776)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3473, file: !3474, line: 233, baseType: !790, size: 8, offset: 3784)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3473, file: !3474, line: 234, baseType: !115, size: 32, offset: 3808)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3473, file: !3474, line: 236, baseType: !3472, size: 64, offset: 3840)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3473, file: !3474, line: 237, baseType: !4306, size: 64, offset: 3904)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !20, line: 1083, size: 384, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4307, file: !20, line: 1084, baseType: !615, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4307, file: !20, line: 1085, baseType: !115, size: 32, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4307, file: !20, line: 1086, baseType: !115, size: 32, offset: 96)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4307, file: !20, line: 1087, baseType: !4306, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4307, file: !20, line: 1088, baseType: !569, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4307, file: !20, line: 1089, baseType: !577, size: 128, align: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3473, file: !3474, line: 238, baseType: !653, size: 192, offset: 3968)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3473, file: !3474, line: 239, baseType: !653, size: 192, offset: 4160)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3473, file: !3474, line: 240, baseType: !2269, size: 256, offset: 4352)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3473, file: !3474, line: 241, baseType: !174, size: 64, offset: 4608)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3473, file: !3474, line: 242, baseType: !174, size: 64, offset: 4672)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3473, file: !3474, line: 243, baseType: !551, size: 32, offset: 4736)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3473, file: !3474, line: 244, baseType: !115, size: 32, offset: 4768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3473, file: !3474, line: 245, baseType: !4061, size: 64, offset: 4800)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3473, file: !3474, line: 247, baseType: !257, size: 128, offset: 4864)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3473, file: !3474, line: 250, baseType: !2269, size: 256, offset: 4992)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3407, file: !3408, line: 185, baseType: !4326, size: 64, offset: 3328)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !403, line: 860, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 853, size: 64, elements: !4328)
!4328 = !{!4329, !4330}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4327, file: !403, line: 858, baseType: !920, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !403, line: 859, baseType: !551, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3407, file: !3408, line: 186, baseType: !252, size: 64, offset: 3392)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3407, file: !3408, line: 186, baseType: !252, size: 64, offset: 3456)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3407, file: !3408, line: 186, baseType: !252, size: 64, offset: 3520)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3407, file: !3408, line: 186, baseType: !252, size: 64, offset: 3584)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3407, file: !3408, line: 187, baseType: !252, size: 64, offset: 3648)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3407, file: !3408, line: 188, baseType: !252, size: 64, offset: 3712)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3407, file: !3408, line: 189, baseType: !3343, size: 192, offset: 3776)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3407, file: !3408, line: 190, baseType: !166, size: 64, offset: 3968)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3407, file: !3408, line: 190, baseType: !166, size: 64, offset: 4032)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3407, file: !3408, line: 190, baseType: !166, size: 64, offset: 4096)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3407, file: !3408, line: 190, baseType: !166, size: 64, offset: 4160)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3407, file: !3408, line: 191, baseType: !166, size: 64, offset: 4224)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3407, file: !3408, line: 191, baseType: !166, size: 64, offset: 4288)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3407, file: !3408, line: 191, baseType: !166, size: 64, offset: 4352)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3407, file: !3408, line: 191, baseType: !166, size: 64, offset: 4416)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3407, file: !3408, line: 192, baseType: !166, size: 64, offset: 4480)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3407, file: !3408, line: 192, baseType: !166, size: 64, offset: 4544)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3407, file: !3408, line: 192, baseType: !166, size: 64, offset: 4608)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3407, file: !3408, line: 192, baseType: !166, size: 64, offset: 4672)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3407, file: !3408, line: 193, baseType: !166, size: 64, offset: 4736)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3407, file: !3408, line: 193, baseType: !166, size: 64, offset: 4800)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3407, file: !3408, line: 194, baseType: !4353, size: 448, offset: 4864)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4354, line: 12, size: 448, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4353, file: !4354, line: 15, baseType: !252, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4353, file: !4354, line: 17, baseType: !252, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4353, file: !4354, line: 19, baseType: !252, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4353, file: !4354, line: 21, baseType: !252, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4353, file: !4354, line: 29, baseType: !252, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4353, file: !4354, line: 35, baseType: !252, size: 64, offset: 320)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4353, file: !4354, line: 44, baseType: !252, size: 64, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3407, file: !3408, line: 202, baseType: !254, size: 64, offset: 5312)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3407, file: !3408, line: 213, baseType: !4365, size: 2048, offset: 5376)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4366, size: 2048, elements: !2765)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4367, line: 43, size: 128, elements: !4368)
!4367 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4366, file: !4367, line: 44, baseType: !1108, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4366, file: !4367, line: 45, baseType: !1108, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3407, file: !3408, line: 216, baseType: !4372, size: 448, offset: 7424)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3408, line: 30, size: 448, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4380}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4372, file: !3408, line: 31, baseType: !115, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4372, file: !3408, line: 32, baseType: !1064, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4372, file: !3408, line: 33, baseType: !166, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4372, file: !3408, line: 34, baseType: !252, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4372, file: !3408, line: 34, baseType: !252, size: 64, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4372, file: !3408, line: 35, baseType: !166, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4372, file: !3408, line: 35, baseType: !166, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3407, file: !3408, line: 219, baseType: !4382, size: 64, offset: 7872)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3408, line: 219, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3407, file: !3408, line: 222, baseType: !13, size: 32, offset: 7936)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3407, file: !3408, line: 223, baseType: !4386, size: 64, offset: 8000)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3408, line: 223, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3407, file: !3408, line: 230, baseType: !790, size: 8, offset: 8064)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3407, file: !3408, line: 231, baseType: !759, size: 16, offset: 8080)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3407, file: !3408, line: 232, baseType: !759, size: 16, offset: 8096)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3407, file: !3408, line: 234, baseType: !533, size: 64, offset: 8128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3407, file: !3408, line: 237, baseType: !596, size: 256, offset: 8192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3407, file: !3408, line: 243, baseType: !731, size: 320, offset: 8448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !187, file: !188, line: 1111, baseType: !4395, size: 64, offset: 15424)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3408, line: 20, size: 16640, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4396, file: !3408, line: 21, baseType: !551, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4396, file: !3408, line: 22, baseType: !194, size: 32, offset: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4396, file: !3408, line: 23, baseType: !653, size: 192, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4396, file: !3408, line: 24, baseType: !4402, size: 16384, offset: 256)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 16384, elements: !1251)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !881, line: 51, size: 256, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4403, file: !881, line: 52, baseType: !4406, size: 256)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !881, line: 37, size: 256, elements: !4407)
!4407 = !{!4408, !4415, !4416, !4420}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4406, file: !881, line: 39, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4410, line: 83, baseType: !4411)
!4410 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4410, line: 82, baseType: !4413)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !115}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4406, file: !881, line: 40, baseType: !166, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4406, file: !881, line: 46, baseType: !4417, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4410, line: 86, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4410, line: 85, baseType: !2373)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4406, file: !881, line: 48, baseType: !3422, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !187, file: !188, line: 1112, baseType: !3422, size: 64, offset: 15488)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !187, file: !188, line: 1113, baseType: !3422, size: 64, offset: 15552)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !187, file: !188, line: 1115, baseType: !3422, size: 64, offset: 15616)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !188, line: 1116, baseType: !3418, size: 192, offset: 15680)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !187, file: !188, line: 1117, baseType: !166, size: 64, offset: 15872)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !187, file: !188, line: 1118, baseType: !1106, size: 64, offset: 15936)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !187, file: !188, line: 1119, baseType: !13, size: 32, offset: 16000)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !187, file: !188, line: 1121, baseType: !580, size: 64, offset: 16064)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !187, file: !188, line: 1125, baseType: !4430, size: 64, offset: 16128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !188, line: 43, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !187, file: !188, line: 1127, baseType: !672, size: 32, offset: 16192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !187, file: !188, line: 1128, baseType: !13, size: 32, offset: 16224)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !187, file: !188, line: 1130, baseType: !4435, size: 128, offset: 16256)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4436, line: 37, size: 128, elements: !4437)
!4436 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4437 = !{!4438, !4439, !4440}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4435, file: !4436, line: 38, baseType: !115, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4435, file: !4436, line: 39, baseType: !198, size: 32, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4435, file: !4436, line: 40, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4436, line: 24, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !187, file: !188, line: 1131, baseType: !4444, size: 256, offset: 16384)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4445, line: 12, size: 256, elements: !4446)
!4445 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4444, file: !4445, line: 13, baseType: !803, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4444, file: !4445, line: 14, baseType: !166, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4444, file: !4445, line: 15, baseType: !166, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4444, file: !4445, line: 16, baseType: !790, size: 8, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !187, file: !188, line: 1134, baseType: !252, size: 64, offset: 16640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !187, file: !188, line: 1135, baseType: !252, size: 64, offset: 16704)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !187, file: !188, line: 1138, baseType: !551, size: 32, offset: 16768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !187, file: !188, line: 1141, baseType: !350, size: 32, offset: 16800)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !187, file: !188, line: 1143, baseType: !4456, size: 64, offset: 16832)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !188, line: 735, size: 64, elements: !4457)
!4457 = !{!4458}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4456, file: !188, line: 736, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !187, file: !188, line: 1147, baseType: !416, size: 128, offset: 16896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !187, file: !188, line: 1149, baseType: !186, size: 64, offset: 17024)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !187, file: !188, line: 1151, baseType: !4463, size: 64, offset: 17088)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !188, line: 1151, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !187, file: !188, line: 1188, baseType: !174, size: 64, offset: 17152)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !187, file: !188, line: 1191, baseType: !4467, size: 64, offset: 17216)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !188, line: 44, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !187, file: !188, line: 1194, baseType: !4470, size: 64, offset: 17280)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !188, line: 45, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !187, file: !188, line: 1197, baseType: !4473, size: 64, offset: 17344)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !188, line: 61, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !187, file: !188, line: 1199, baseType: !4476, size: 64, offset: 17408)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4478, line: 99, size: 128, elements: !4479)
!4478 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4477, file: !4478, line: 100, baseType: !589, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4477, file: !4478, line: 101, baseType: !198, size: 32, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4477, file: !4478, line: 103, baseType: !223, size: 16, offset: 96)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !187, file: !188, line: 1202, baseType: !4484, size: 64, offset: 17472)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !188, line: 48, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !187, file: !188, line: 1205, baseType: !166, size: 64, offset: 17536)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !187, file: !188, line: 1206, baseType: !4488, size: 64, offset: 17600)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !881, line: 14, baseType: !4490)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !881, line: 12, size: 384, elements: !4491)
!4491 = !{!4492}
!4492 = !DIDerivedType(tag: DW_TAG_member, scope: !4490, file: !881, line: 13, baseType: !4493, size: 384)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4490, file: !881, line: 13, size: 384, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4498}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4493, file: !881, line: 13, baseType: !115, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4493, file: !881, line: 13, baseType: !115, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4493, file: !881, line: 13, baseType: !115, size: 32, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4493, file: !881, line: 13, baseType: !4499, size: 256, offset: 128)
!4499 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4500, line: 37, size: 256, elements: !4501)
!4500 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4501 = !{!4502, !4507, !4520, !4526, !4535, !4562, !4567}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4499, file: !4500, line: 42, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 39, size: 64, elements: !4504)
!4504 = !{!4505, !4506}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4503, file: !4500, line: 40, baseType: !3320, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4503, file: !4500, line: 41, baseType: !678, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4499, file: !4500, line: 50, baseType: !4508, size: 192)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 45, size: 192, elements: !4509)
!4509 = !{!4510, !4512, !4513, !4519}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4508, file: !4500, line: 46, baseType: !4511, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !400, line: 95, baseType: !115)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4508, file: !4500, line: 47, baseType: !115, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4508, file: !4500, line: 48, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4500, line: 11, baseType: !4515)
!4515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4500, line: 8, size: 64, elements: !4516)
!4516 = !{!4517, !4518}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4515, file: !4500, line: 9, baseType: !115, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4515, file: !4500, line: 10, baseType: !174, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4508, file: !4500, line: 49, baseType: !115, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4499, file: !4500, line: 57, baseType: !4521, size: 128)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 53, size: 128, elements: !4522)
!4522 = !{!4523, !4524, !4525}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4521, file: !4500, line: 54, baseType: !3320, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4521, file: !4500, line: 55, baseType: !678, size: 32, offset: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4521, file: !4500, line: 56, baseType: !4514, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4499, file: !4500, line: 66, baseType: !4527, size: 256)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 60, size: 256, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4534}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4527, file: !4500, line: 61, baseType: !3320, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4527, file: !4500, line: 62, baseType: !678, size: 32, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4527, file: !4500, line: 63, baseType: !115, size: 32, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4527, file: !4500, line: 64, baseType: !4533, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !400, line: 94, baseType: !1105)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4527, file: !4500, line: 65, baseType: !4533, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4499, file: !4500, line: 105, baseType: !4536, size: 256)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 69, size: 256, elements: !4537)
!4537 = !{!4538, !4539}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4536, file: !4500, line: 70, baseType: !174, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !4536, file: !4500, line: 79, baseType: !4540, size: 192, offset: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4536, file: !4500, line: 79, size: 192, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4551, !4556}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4540, file: !4500, line: 81, baseType: !115, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4540, file: !4500, line: 86, baseType: !759, size: 16)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4540, file: !4500, line: 92, baseType: !4545, size: 192)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 88, size: 192, elements: !4546)
!4546 = !{!4547, !4549, !4550}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4545, file: !4500, line: 89, baseType: !4548, size: 64)
!4548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !394)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4545, file: !4500, line: 90, baseType: !174, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4545, file: !4500, line: 91, baseType: !174, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4540, file: !4500, line: 97, baseType: !4552, size: 96)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 94, size: 96, elements: !4553)
!4553 = !{!4554, !4555}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4552, file: !4500, line: 95, baseType: !4548, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4552, file: !4500, line: 96, baseType: !171, size: 32, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4540, file: !4500, line: 103, baseType: !4557, size: 128)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4540, file: !4500, line: 99, size: 128, elements: !4558)
!4558 = !{!4559, !4560, !4561}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4557, file: !4500, line: 100, baseType: !166, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4557, file: !4500, line: 101, baseType: !171, size: 32, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4557, file: !4500, line: 102, baseType: !171, size: 32, offset: 96)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4499, file: !4500, line: 111, baseType: !4563, size: 128)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 108, size: 128, elements: !4564)
!4564 = !{!4565, !4566}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4563, file: !4500, line: 109, baseType: !1064, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4563, file: !4500, line: 110, baseType: !115, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4499, file: !4500, line: 118, baseType: !4568, size: 128)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4499, file: !4500, line: 114, size: 128, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4568, file: !4500, line: 115, baseType: !174, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4568, file: !4500, line: 116, baseType: !115, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4568, file: !4500, line: 117, baseType: !13, size: 32, offset: 96)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !187, file: !188, line: 1208, baseType: !4353, size: 448, offset: 17664)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !187, file: !188, line: 1215, baseType: !252, size: 64, offset: 18112)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !187, file: !188, line: 1217, baseType: !252, size: 64, offset: 18176)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !187, file: !188, line: 1219, baseType: !252, size: 64, offset: 18240)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !187, file: !188, line: 1223, baseType: !4578, size: 64, offset: 18304)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4579, line: 99, baseType: !4580)
!4579 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4579, line: 99, size: 64, elements: !4581)
!4581 = !{!4582}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4580, file: !4579, line: 99, baseType: !484, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !187, file: !188, line: 1225, baseType: !920, size: 32, offset: 18368)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !187, file: !188, line: 1226, baseType: !115, size: 32, offset: 18400)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !187, file: !188, line: 1227, baseType: !115, size: 32, offset: 18432)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !187, file: !188, line: 1231, baseType: !4587, size: 64, offset: 18496)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !188, line: 1231, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !187, file: !188, line: 1233, baseType: !257, size: 128, offset: 18560)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !187, file: !188, line: 1240, baseType: !4591, size: 64, offset: 18688)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !188, line: 62, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !187, file: !188, line: 1242, baseType: !4594, size: 64, offset: 18752)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !188, line: 1242, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !187, file: !188, line: 1244, baseType: !257, size: 128, offset: 18816)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !187, file: !188, line: 1245, baseType: !4598, size: 64, offset: 18944)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !188, line: 51, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !187, file: !188, line: 1246, baseType: !596, size: 256, offset: 19008)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !187, file: !188, line: 1247, baseType: !13, size: 32, offset: 19264)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !187, file: !188, line: 1250, baseType: !4603, size: 64, offset: 19328)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !188, line: 57, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !187, file: !188, line: 1251, baseType: !596, size: 256, offset: 19392)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !187, file: !188, line: 1252, baseType: !257, size: 128, offset: 19648)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !187, file: !188, line: 1259, baseType: !1545, size: 64, offset: 19776)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !187, file: !188, line: 1260, baseType: !759, size: 16, offset: 19840)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !187, file: !188, line: 1261, baseType: !759, size: 16, offset: 19856)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !187, file: !188, line: 1314, baseType: !4611, size: 64, offset: 19904)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4613, line: 62, size: 256, align: 256, elements: !4614)
!4613 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4614 = !{!4615, !4616, !4617, !4618, !4619, !4620, !4621}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4612, file: !4613, line: 75, baseType: !171, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4612, file: !4613, line: 90, baseType: !171, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4612, file: !4613, line: 112, baseType: !253, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4612, file: !4613, line: 132, baseType: !171, size: 32, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4612, file: !4613, line: 140, baseType: !171, size: 32, offset: 160)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4612, file: !4613, line: 149, baseType: !171, size: 32, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4612, file: !4613, line: 154, baseType: !4622, offset: 224)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !668)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !187, file: !188, line: 1315, baseType: !169, size: 32, offset: 19968)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !187, file: !188, line: 1316, baseType: !169, size: 32, offset: 20000)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !187, file: !188, line: 1321, baseType: !166, size: 64, offset: 20032)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !187, file: !188, line: 1325, baseType: !115, size: 32, offset: 20096)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !187, file: !188, line: 1326, baseType: !115, size: 32, offset: 20128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !187, file: !188, line: 1327, baseType: !115, size: 32, offset: 20160)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !187, file: !188, line: 1328, baseType: !115, size: 32, offset: 20192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !187, file: !188, line: 1329, baseType: !577, size: 128, align: 64, offset: 20224)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !187, file: !188, line: 1332, baseType: !4632, size: 128, offset: 20352)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4633, line: 51, size: 128, elements: !4634)
!4633 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4634 = !{!4635, !4640, !4641}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4632, file: !4633, line: 60, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4637, line: 7, size: 64, elements: !4638)
!4637 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4638 = !{!4639}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4636, file: !4637, line: 12, baseType: !481, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4632, file: !4633, line: 63, baseType: !790, size: 8, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4632, file: !4633, line: 70, baseType: !790, size: 8, offset: 72)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !187, file: !188, line: 1335, baseType: !3003, size: 64, offset: 20480)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !187, file: !188, line: 1337, baseType: !4644, size: 128, offset: 20544)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4633, line: 39, size: 128, elements: !4645)
!4645 = !{!4646, !4647, !4648}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4644, file: !4633, line: 40, baseType: !1332, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4644, file: !4633, line: 42, baseType: !171, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4644, file: !4633, line: 43, baseType: !171, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !187, file: !188, line: 1340, baseType: !4650, size: 64, offset: 20672)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !188, line: 69, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !187, file: !188, line: 1351, baseType: !115, size: 32, offset: 20736)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !187, file: !188, line: 1352, baseType: !115, size: 32, offset: 20768)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !187, file: !188, line: 1354, baseType: !166, size: 64, offset: 20800)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !187, file: !188, line: 1364, baseType: !252, size: 64, offset: 20864)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !187, file: !188, line: 1365, baseType: !252, size: 64, offset: 20928)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !187, file: !188, line: 1412, baseType: !166, size: 64, offset: 20992)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !187, file: !188, line: 1453, baseType: !4659, size: 64, offset: 21056)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !188, line: 1453, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !187, file: !188, line: 1457, baseType: !4662, size: 64, offset: 21120)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !4664)
!4664 = !{!4665, !4666, !4685, !4688, !4689, !4722, !4732}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4663, file: !74, line: 62, baseType: !73, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, scope: !4663, file: !74, line: 64, baseType: !4667, size: 192, offset: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4663, file: !74, line: 64, size: 192, elements: !4668)
!4668 = !{!4669, !4680}
!4669 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !74, line: 65, baseType: !4670, size: 192)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4667, file: !74, line: 65, size: 192, elements: !4671)
!4671 = !{!4672, !4679}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4670, file: !74, line: 66, baseType: !4673, size: 128)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4674, line: 50, size: 128, elements: !4675)
!4674 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4675 = !{!4676, !4677, !4678}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4673, file: !4674, line: 52, baseType: !166, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4673, file: !4674, line: 54, baseType: !13, size: 32, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4673, file: !4674, line: 55, baseType: !13, size: 32, offset: 96)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4670, file: !74, line: 67, baseType: !166, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !74, line: 70, baseType: !4681, size: 192)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4667, file: !74, line: 70, size: 192, elements: !4682)
!4682 = !{!4683, !4684}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4681, file: !74, line: 71, baseType: !577, size: 128, align: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4681, file: !74, line: 72, baseType: !166, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4663, file: !74, line: 76, baseType: !4686, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4663, file: !74, line: 77, baseType: !166, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4663, file: !74, line: 79, baseType: !4690, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4674, line: 25, size: 256, elements: !4692)
!4692 = !{!4693, !4699, !4703}
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4691, file: !4674, line: 26, baseType: !4694, size: 128)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4691, file: !4674, line: 26, size: 128, elements: !4695)
!4695 = !{!4696, !4698}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4694, file: !4674, line: 27, baseType: !4697, size: 128)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 128, elements: !2765)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4694, file: !4674, line: 28, baseType: !4697, size: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4691, file: !4674, line: 31, baseType: !4700, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4674, line: 23, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, scope: !4691, file: !4674, line: 33, baseType: !4704, size: 64, offset: 192)
!4704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4691, file: !4674, line: 33, size: 64, elements: !4705)
!4705 = !{!4706, !4712, !4717}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4704, file: !4674, line: 38, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 34, size: 64, elements: !4708)
!4708 = !{!4709, !4710, !4711}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4707, file: !4674, line: 35, baseType: !723, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4707, file: !4674, line: 36, baseType: !367, size: 8, offset: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4707, file: !4674, line: 37, baseType: !367, size: 8, offset: 40)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4704, file: !4674, line: 42, baseType: !4713, size: 16)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 39, size: 16, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4713, file: !4674, line: 40, baseType: !367, size: 8)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4713, file: !4674, line: 41, baseType: !367, size: 8, offset: 8)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4704, file: !4674, line: 46, baseType: !4718, size: 16)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4704, file: !4674, line: 43, size: 16, elements: !4719)
!4719 = !{!4720, !4721}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4718, file: !4674, line: 44, baseType: !367, size: 8)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4718, file: !4674, line: 45, baseType: !367, size: 8, offset: 8)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4663, file: !74, line: 81, baseType: !4723, size: 64, offset: 448)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730, !4731}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4724, file: !74, line: 86, baseType: !4686, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4724, file: !74, line: 87, baseType: !166, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4724, file: !74, line: 88, baseType: !166, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4724, file: !74, line: 89, baseType: !166, size: 64, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4724, file: !74, line: 90, baseType: !790, size: 8, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4724, file: !74, line: 92, baseType: !4723, size: 64, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4663, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !187, file: !188, line: 1463, baseType: !4734, offset: 21184)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !188, line: 739, elements: !562)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !187, file: !188, line: 1470, baseType: !577, size: 128, align: 64, offset: 21184)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !187, file: !188, line: 1471, baseType: !194, size: 32, offset: 21312)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !187, file: !188, line: 1472, baseType: !115, size: 32, offset: 21344)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !187, file: !188, line: 1474, baseType: !186, size: 64, offset: 21376)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !187, file: !188, line: 1475, baseType: !2257, size: 320, offset: 21440)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !187, file: !188, line: 1478, baseType: !4741, size: 64, offset: 21760)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4743, line: 49, size: 512, elements: !4744)
!4743 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4754}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4742, file: !4743, line: 50, baseType: !4741, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4742, file: !4743, line: 51, baseType: !174, size: 64, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4742, file: !4743, line: 52, baseType: !166, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4742, file: !4743, line: 53, baseType: !166, size: 64, offset: 192)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4742, file: !4743, line: 54, baseType: !1719, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4742, file: !4743, line: 56, baseType: !13, size: 32, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4742, file: !4743, line: 58, baseType: !13, size: 32, offset: 352)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4742, file: !4743, line: 59, baseType: !4753, size: 64, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !176, line: 159, baseType: !252)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4742, file: !4743, line: 60, baseType: !1848, size: 64, offset: 448)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !187, file: !188, line: 1482, baseType: !194, size: 32, offset: 21824)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !187, file: !188, line: 1489, baseType: !174, size: 64, offset: 21888)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !187, file: !188, line: 1504, baseType: !174, size: 64, offset: 21952)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !187, file: !188, line: 1505, baseType: !253, size: 64, offset: 22016)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !187, file: !188, line: 1506, baseType: !252, size: 64, offset: 22080)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !187, file: !188, line: 1507, baseType: !253, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !187, file: !188, line: 1508, baseType: !253, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !187, file: !188, line: 1509, baseType: !253, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !187, file: !188, line: 1510, baseType: !577, size: 128, align: 64, offset: 22208)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !187, file: !188, line: 1511, baseType: !115, size: 32, offset: 22336)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !187, file: !188, line: 1515, baseType: !4004, size: 64, offset: 22400)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !187, file: !188, line: 1518, baseType: !4004, size: 64, offset: 22464)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !187, file: !188, line: 1528, baseType: !577, size: 128, align: 64, offset: 22528)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !187, file: !188, line: 1552, baseType: !4769, size: 35328, offset: 23040)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4770, line: 430, size: 35328, elements: !4771)
!4770 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4771 = !{!4772, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4801, !4802, !4803, !4804, !4805, !4806, !4809, !4810, !4811, !4812}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4769, file: !4770, line: 432, baseType: !4773, size: 192)
!4773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4774, size: 192, elements: !634)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4775, line: 16, size: 64, elements: !4776)
!4775 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4774, file: !4775, line: 17, baseType: !221, size: 16)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4774, file: !4775, line: 18, baseType: !221, size: 16, offset: 16)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4774, file: !4775, line: 19, baseType: !221, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4774, file: !4775, line: 19, baseType: !221, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4774, file: !4775, line: 19, baseType: !221, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4774, file: !4775, line: 19, baseType: !221, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4774, file: !4775, line: 19, baseType: !221, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4774, file: !4775, line: 20, baseType: !221, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4774, file: !4775, line: 20, baseType: !221, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4774, file: !4775, line: 20, baseType: !221, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4774, file: !4775, line: 20, baseType: !221, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4774, file: !4775, line: 20, baseType: !221, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4774, file: !4775, line: 20, baseType: !221, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4769, file: !4770, line: 436, baseType: !166, size: 64, offset: 192)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4769, file: !4770, line: 440, baseType: !223, size: 16, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4769, file: !4770, line: 441, baseType: !223, size: 16, offset: 272)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4769, file: !4770, line: 442, baseType: !223, size: 16, offset: 288)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4769, file: !4770, line: 443, baseType: !223, size: 16, offset: 304)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4769, file: !4770, line: 447, baseType: !166, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4769, file: !4770, line: 448, baseType: !166, size: 64, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4769, file: !4770, line: 459, baseType: !4798, size: 256, offset: 448)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4799, size: 256, elements: !649)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4770, line: 428, flags: DIFlagFwdDecl)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4769, file: !4770, line: 461, baseType: !166, size: 64, offset: 704)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4769, file: !4770, line: 463, baseType: !166, size: 64, offset: 768)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4769, file: !4770, line: 465, baseType: !166, size: 64, offset: 832)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4769, file: !4770, line: 466, baseType: !166, size: 64, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4769, file: !4770, line: 467, baseType: !166, size: 64, offset: 960)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4769, file: !4770, line: 473, baseType: !4807, size: 64, offset: 1024)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4770, line: 10, flags: DIFlagFwdDecl)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4769, file: !4770, line: 480, baseType: !166, size: 64, offset: 1088)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4769, file: !4770, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4769, file: !4770, line: 491, baseType: !169, size: 32, offset: 1184)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4769, file: !4770, line: 501, baseType: !4813, size: 33792, offset: 1536)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4814, line: 448, size: 33792, elements: !4815)
!4814 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4815 = !{!4816, !4817, !4818, !4979, !4980, !4986, !4987}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4813, file: !4814, line: 461, baseType: !13, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4813, file: !4814, line: 468, baseType: !166, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4813, file: !4814, line: 476, baseType: !4819, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4814, line: 356, size: 33280, align: 512, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4820, file: !4814, line: 358, baseType: !13, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4820, file: !4814, line: 361, baseType: !13, size: 32, offset: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4820, file: !4814, line: 364, baseType: !252, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4820, file: !4814, line: 367, baseType: !252, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4820, file: !4814, line: 370, baseType: !252, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4820, file: !4814, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4820, file: !4814, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4820, file: !4814, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4820, file: !4814, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4820, file: !4814, line: 397, baseType: !4832, size: 32768, offset: 512)
!4832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4814, line: 348, size: 32768, elements: !4833)
!4833 = !{!4834, !4849, !4886, !4963, !4975}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4832, file: !4814, line: 349, baseType: !4835, size: 896)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4814, line: 12, size: 896, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4848}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4835, file: !4814, line: 13, baseType: !169, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4835, file: !4814, line: 14, baseType: !169, size: 32, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4835, file: !4814, line: 15, baseType: !169, size: 32, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4835, file: !4814, line: 16, baseType: !169, size: 32, offset: 96)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4835, file: !4814, line: 17, baseType: !169, size: 32, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4835, file: !4814, line: 18, baseType: !169, size: 32, offset: 160)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4835, file: !4814, line: 19, baseType: !169, size: 32, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4835, file: !4814, line: 22, baseType: !4845, size: 640, offset: 224)
!4845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !4846)
!4846 = !{!4847}
!4847 = !DISubrange(count: 20)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4835, file: !4814, line: 25, baseType: !169, size: 32, offset: 864)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4832, file: !4814, line: 350, baseType: !4850, size: 4096, align: 128)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4814, line: 34, size: 4096, align: 128, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856, !4871, !4872, !4873, !4875, !4877, !4881}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4850, file: !4814, line: 35, baseType: !221, size: 16)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4850, file: !4814, line: 36, baseType: !221, size: 16, offset: 16)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4850, file: !4814, line: 37, baseType: !221, size: 16, offset: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4850, file: !4814, line: 38, baseType: !221, size: 16, offset: 48)
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !4814, line: 39, baseType: !4857, size: 128, offset: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !4814, line: 39, size: 128, elements: !4858)
!4858 = !{!4859, !4864}
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !4814, line: 40, baseType: !4860, size: 128)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !4814, line: 40, size: 128, elements: !4861)
!4861 = !{!4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4860, file: !4814, line: 41, baseType: !252, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4860, file: !4814, line: 42, baseType: !252, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !4814, line: 44, baseType: !4865, size: 128)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !4814, line: 44, size: 128, elements: !4866)
!4866 = !{!4867, !4868, !4869, !4870}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4865, file: !4814, line: 45, baseType: !169, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4865, file: !4814, line: 46, baseType: !169, size: 32, offset: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4865, file: !4814, line: 47, baseType: !169, size: 32, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4865, file: !4814, line: 48, baseType: !169, size: 32, offset: 96)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4850, file: !4814, line: 51, baseType: !169, size: 32, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4850, file: !4814, line: 52, baseType: !169, size: 32, offset: 224)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4850, file: !4814, line: 55, baseType: !4874, size: 1024, offset: 256)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 1024, elements: !2756)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4850, file: !4814, line: 58, baseType: !4876, size: 2048, offset: 1280)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 2048, elements: !1251)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4850, file: !4814, line: 60, baseType: !4878, size: 384, offset: 3328)
!4878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 384, elements: !4879)
!4879 = !{!4880}
!4880 = !DISubrange(count: 12)
!4881 = !DIDerivedType(tag: DW_TAG_member, scope: !4850, file: !4814, line: 62, baseType: !4882, size: 384, offset: 3712)
!4882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4850, file: !4814, line: 62, size: 384, elements: !4883)
!4883 = !{!4884, !4885}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4882, file: !4814, line: 63, baseType: !4878, size: 384)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4882, file: !4814, line: 64, baseType: !4878, size: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4832, file: !4814, line: 351, baseType: !4887, size: 1088)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4814, line: 79, size: 1088, elements: !4888)
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4962}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4887, file: !4814, line: 80, baseType: !169, size: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4887, file: !4814, line: 81, baseType: !169, size: 32, offset: 32)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4887, file: !4814, line: 82, baseType: !169, size: 32, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4887, file: !4814, line: 83, baseType: !169, size: 32, offset: 96)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4887, file: !4814, line: 84, baseType: !169, size: 32, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4887, file: !4814, line: 85, baseType: !169, size: 32, offset: 160)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4887, file: !4814, line: 86, baseType: !169, size: 32, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4887, file: !4814, line: 88, baseType: !4845, size: 640, offset: 224)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4887, file: !4814, line: 89, baseType: !367, size: 8, offset: 864)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4887, file: !4814, line: 90, baseType: !367, size: 8, offset: 872)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4887, file: !4814, line: 91, baseType: !367, size: 8, offset: 880)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4887, file: !4814, line: 92, baseType: !367, size: 8, offset: 888)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4887, file: !4814, line: 93, baseType: !367, size: 8, offset: 896)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4887, file: !4814, line: 94, baseType: !367, size: 8, offset: 904)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4887, file: !4814, line: 95, baseType: !4904, size: 64, offset: 960)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4906, line: 11, size: 128, elements: !4907)
!4906 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4907 = !{!4908, !4909}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4905, file: !4906, line: 12, baseType: !1064, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4905, file: !4906, line: 13, baseType: !4910, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4912, line: 103, size: 1344, elements: !4913)
!4912 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4942, !4943, !4944}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4911, file: !4912, line: 109, baseType: !166, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4911, file: !4912, line: 110, baseType: !166, size: 64, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4911, file: !4912, line: 111, baseType: !166, size: 64, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4911, file: !4912, line: 112, baseType: !166, size: 64, offset: 192)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4911, file: !4912, line: 113, baseType: !166, size: 64, offset: 256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4911, file: !4912, line: 114, baseType: !166, size: 64, offset: 320)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4911, file: !4912, line: 117, baseType: !166, size: 64, offset: 384)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4911, file: !4912, line: 118, baseType: !166, size: 64, offset: 448)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4911, file: !4912, line: 119, baseType: !166, size: 64, offset: 512)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4911, file: !4912, line: 120, baseType: !166, size: 64, offset: 576)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4911, file: !4912, line: 121, baseType: !166, size: 64, offset: 640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4911, file: !4912, line: 122, baseType: !166, size: 64, offset: 704)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4911, file: !4912, line: 123, baseType: !166, size: 64, offset: 768)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4911, file: !4912, line: 124, baseType: !166, size: 64, offset: 832)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4911, file: !4912, line: 125, baseType: !166, size: 64, offset: 896)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4911, file: !4912, line: 139, baseType: !166, size: 64, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4911, file: !4912, line: 142, baseType: !166, size: 64, offset: 1024)
!4931 = !DIDerivedType(tag: DW_TAG_member, scope: !4911, file: !4912, line: 144, baseType: !4932, size: 64, offset: 1088)
!4932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4911, file: !4912, line: 144, size: 64, elements: !4933)
!4933 = !{!4934, !4935, !4936}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4932, file: !4912, line: 146, baseType: !221, size: 16)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4932, file: !4912, line: 148, baseType: !252, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4932, file: !4912, line: 150, baseType: !4937, size: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4912, line: 59, size: 64, elements: !4938)
!4938 = !{!4939, !4940, !4941}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4937, file: !4912, line: 61, baseType: !252, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4937, file: !4912, line: 63, baseType: !252, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4937, file: !4912, line: 65, baseType: !252, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4911, file: !4912, line: 153, baseType: !166, size: 64, offset: 1152)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4911, file: !4912, line: 154, baseType: !166, size: 64, offset: 1216)
!4944 = !DIDerivedType(tag: DW_TAG_member, scope: !4911, file: !4912, line: 156, baseType: !4945, size: 64, offset: 1280)
!4945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4911, file: !4912, line: 156, size: 64, elements: !4946)
!4946 = !{!4947, !4948, !4949}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4945, file: !4912, line: 158, baseType: !221, size: 16)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4945, file: !4912, line: 160, baseType: !252, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4945, file: !4912, line: 162, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4912, line: 69, size: 64, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4950, file: !4912, line: 71, baseType: !252, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4950, file: !4912, line: 73, baseType: !252, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4950, file: !4912, line: 75, baseType: !252, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4950, file: !4912, line: 77, baseType: !252, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4950, file: !4912, line: 80, baseType: !252, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4950, file: !4912, line: 83, baseType: !252, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4950, file: !4912, line: 86, baseType: !252, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4950, file: !4912, line: 88, baseType: !252, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4950, file: !4912, line: 93, baseType: !252, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4950, file: !4912, line: 100, baseType: !252, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4887, file: !4814, line: 96, baseType: !169, size: 32, offset: 1024)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4832, file: !4814, line: 352, baseType: !4964, size: 4608, align: 512)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4814, line: 333, size: 4608, align: 512, elements: !4965)
!4965 = !{!4966, !4967, !4974}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4964, file: !4814, line: 334, baseType: !4850, size: 4096, align: 128)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4964, file: !4814, line: 335, baseType: !4968, size: 512, offset: 4096)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4814, line: 312, size: 512, elements: !4969)
!4969 = !{!4970, !4971, !4972}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4968, file: !4814, line: 313, baseType: !252, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4968, file: !4814, line: 314, baseType: !252, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4968, file: !4814, line: 315, baseType: !4973, size: 384, offset: 128)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 384, elements: !777)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4964, file: !4814, line: 336, baseType: !3998, offset: 4608)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4832, file: !4814, line: 353, baseType: !4976, size: 32768)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 32768, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 4096)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4813, file: !4814, line: 484, baseType: !4819, size: 64, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4813, file: !4814, line: 491, baseType: !4981, size: 128, offset: 256)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4814, line: 404, size: 128, elements: !4982)
!4982 = !{!4983, !4984, !4985}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4981, file: !4814, line: 424, baseType: !252, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4981, file: !4814, line: 432, baseType: !13, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4981, file: !4814, line: 440, baseType: !13, size: 32, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4813, file: !4814, line: 498, baseType: !4981, size: 128, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4813, file: !4814, line: 508, baseType: !4820, size: 33280, align: 512, offset: 512)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1064)
!4994 = !{!0, !7, !4995, !4997}
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_current_tty288", scope: !9, file: !2, line: 170, type: !174, isLocal: true, isDefinition: true)
!4997 = !DIGlobalVariableExpression(var: !4998, expr: !DIExpression())
!4998 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_get_pgrp297", scope: !9, file: !2, line: 432, type: !174, isLocal: true, isDefinition: true)
!4999 = !{!"rsp"}
!5000 = !{i32 7, !"Dwarf Version", i32 5}
!5001 = !{i32 2, !"Debug Info Version", i32 3}
!5002 = !{i32 1, !"wchar_size", i32 2}
!5003 = !{i32 8, !"cf-protection-branch", i32 1}
!5004 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5005 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5006 = !{i32 1, !"Code Model", i32 2}
!5007 = !{i32 1, !"override-stack-alignment", i32 8}
!5008 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5009 = distinct !DISubprogram(name: "__tty_check_change", scope: !2, file: !2, line: 33, type: !4162, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5010)
!5010 = !{!5011, !5012, !5013, !5014, !5015, !5016, !5017, !5021}
!5011 = !DILocalVariable(name: "tty", arg: 1, scope: !5009, file: !2, line: 33, type: !3472)
!5012 = !DILocalVariable(name: "sig", arg: 2, scope: !5009, file: !2, line: 33, type: !115)
!5013 = !DILocalVariable(name: "flags", scope: !5009, file: !2, line: 35, type: !166)
!5014 = !DILocalVariable(name: "pgrp", scope: !5009, file: !2, line: 36, type: !638)
!5015 = !DILocalVariable(name: "tty_pgrp", scope: !5009, file: !2, line: 36, type: !638)
!5016 = !DILocalVariable(name: "ret", scope: !5009, file: !2, line: 37, type: !115)
!5017 = !DILocalVariable(name: "__dummy", scope: !5018, file: !2, line: 45, type: !166)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !2, line: 45, column: 2)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !2, line: 45, column: 2)
!5020 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 45, column: 2)
!5021 = !DILocalVariable(name: "__dummy2", scope: !5018, file: !2, line: 45, type: !166)
!5022 = !DILocation(line: 33, column: 43, scope: !5009)
!5023 = !DILocation(line: 33, column: 52, scope: !5009)
!5024 = !DILocation(line: 35, column: 2, scope: !5009)
!5025 = !DILocation(line: 35, column: 16, scope: !5009)
!5026 = !DILocation(line: 36, column: 2, scope: !5009)
!5027 = !DILocation(line: 36, column: 14, scope: !5009)
!5028 = !DILocation(line: 36, column: 21, scope: !5009)
!5029 = !DILocation(line: 37, column: 2, scope: !5009)
!5030 = !DILocation(line: 37, column: 6, scope: !5009)
!5031 = !DILocation(line: 39, column: 6, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 39, column: 6)
!5033 = !DILocation(line: 39, column: 15, scope: !5032)
!5034 = !DILocation(line: 39, column: 23, scope: !5032)
!5035 = !DILocation(line: 39, column: 30, scope: !5032)
!5036 = !DILocation(line: 39, column: 27, scope: !5032)
!5037 = !DILocation(line: 39, column: 6, scope: !5009)
!5038 = !DILocation(line: 40, column: 3, scope: !5032)
!5039 = !DILocation(line: 42, column: 2, scope: !5009)
!5040 = !DILocation(line: 43, column: 19, scope: !5009)
!5041 = !DILocation(line: 43, column: 9, scope: !5009)
!5042 = !DILocation(line: 43, column: 7, scope: !5009)
!5043 = !DILocation(line: 45, column: 2, scope: !5009)
!5044 = !DILocation(line: 45, column: 2, scope: !5020)
!5045 = !DILocation(line: 45, column: 2, scope: !5018)
!5046 = !DILocation(line: 45, column: 2, scope: !5019)
!5047 = !DILocation(line: 46, column: 13, scope: !5009)
!5048 = !DILocation(line: 46, column: 18, scope: !5009)
!5049 = !DILocation(line: 46, column: 23, scope: !5009)
!5050 = !DILocation(line: 46, column: 11, scope: !5009)
!5051 = !DILocation(line: 47, column: 26, scope: !5009)
!5052 = !DILocation(line: 47, column: 31, scope: !5009)
!5053 = !DILocation(line: 47, column: 36, scope: !5009)
!5054 = !DILocation(line: 47, column: 42, scope: !5009)
!5055 = !DILocation(line: 47, column: 2, scope: !5009)
!5056 = !DILocation(line: 49, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 49, column: 6)
!5058 = !DILocation(line: 49, column: 15, scope: !5057)
!5059 = !DILocation(line: 49, column: 18, scope: !5057)
!5060 = !DILocation(line: 49, column: 26, scope: !5057)
!5061 = !DILocation(line: 49, column: 23, scope: !5057)
!5062 = !DILocation(line: 49, column: 6, scope: !5009)
!5063 = !DILocation(line: 50, column: 18, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !2, line: 50, column: 7)
!5065 = distinct !DILexicalBlock(scope: !5057, file: !2, line: 49, column: 36)
!5066 = !DILocation(line: 50, column: 7, scope: !5064)
!5067 = !DILocation(line: 50, column: 7, scope: !5065)
!5068 = !DILocation(line: 51, column: 8, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !2, line: 51, column: 8)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !2, line: 50, column: 24)
!5071 = !DILocation(line: 51, column: 12, scope: !5069)
!5072 = !DILocation(line: 51, column: 8, scope: !5070)
!5073 = !DILocation(line: 52, column: 9, scope: !5069)
!5074 = !DILocation(line: 52, column: 5, scope: !5069)
!5075 = !DILocation(line: 53, column: 3, scope: !5070)
!5076 = !DILocation(line: 53, column: 14, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5064, file: !2, line: 53, column: 14)
!5078 = !DILocation(line: 53, column: 14, scope: !5064)
!5079 = !DILocation(line: 54, column: 8, scope: !5077)
!5080 = !DILocation(line: 54, column: 4, scope: !5077)
!5081 = !DILocation(line: 56, column: 14, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5077, file: !2, line: 55, column: 8)
!5083 = !DILocation(line: 56, column: 20, scope: !5082)
!5084 = !DILocation(line: 56, column: 4, scope: !5082)
!5085 = !DILocation(line: 57, column: 4, scope: !5082)
!5086 = !DILocation(line: 58, column: 8, scope: !5082)
!5087 = !DILocation(line: 60, column: 2, scope: !5065)
!5088 = !DILocation(line: 61, column: 2, scope: !5009)
!5089 = !DILocation(line: 63, column: 7, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 63, column: 6)
!5091 = !DILocation(line: 63, column: 6, scope: !5009)
!5092 = !DILocation(line: 64, column: 3, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5090, file: !2, line: 64, column: 3)
!5094 = !DILocation(line: 64, column: 3, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5093, file: !2, line: 64, column: 3)
!5096 = !DILocation(line: 64, column: 3, scope: !5090)
!5097 = !DILocation(line: 66, column: 9, scope: !5009)
!5098 = !DILocation(line: 66, column: 2, scope: !5009)
!5099 = !DILocation(line: 67, column: 1, scope: !5009)
!5100 = distinct !DISubprogram(name: "get_current", scope: !5101, file: !5101, line: 39, type: !5102, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5104)
!5101 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!186}
!5104 = !{!5105, !5107, !5109}
!5105 = !DILocalVariable(name: "pscr_ret__", scope: !5106, file: !5101, line: 41, type: !186)
!5106 = distinct !DILexicalBlock(scope: !5100, file: !5101, line: 41, column: 9)
!5107 = !DILocalVariable(name: "__vpp_verify", scope: !5108, file: !5101, line: 41, type: !1848)
!5108 = distinct !DILexicalBlock(scope: !5106, file: !5101, line: 41, column: 9)
!5109 = !DILocalVariable(name: "pfo_val__", scope: !5110, file: !5101, line: 41, type: !252)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !5101, line: 41, column: 9)
!5111 = !DILocation(line: 41, column: 9, scope: !5106)
!5112 = !DILocation(line: 41, column: 9, scope: !5108)
!5113 = !DILocation(line: 41, column: 9, scope: !5110)
!5114 = !{i64 2148549772}
!5115 = !DILocation(line: 41, column: 9, scope: !5100)
!5116 = !DILocation(line: 41, column: 2, scope: !5100)
!5117 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5118, file: !5118, line: 782, type: !2373, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5118 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5119 = !DILocation(line: 784, column: 2, scope: !5117)
!5120 = !DILocation(line: 786, column: 2, scope: !5117)
!5121 = !DILocation(line: 786, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !5118, line: 786, column: 2)
!5123 = !DILocation(line: 787, column: 2, scope: !5117)
!5124 = !DILocation(line: 787, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5117, file: !5118, line: 787, column: 2)
!5126 = !DILocation(line: 789, column: 1, scope: !5117)
!5127 = distinct !DISubprogram(name: "task_pgrp", scope: !3408, file: !3408, line: 692, type: !5128, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!638, !186}
!5130 = !{!5131}
!5131 = !DILocalVariable(name: "task", arg: 1, scope: !5127, file: !3408, line: 692, type: !186)
!5132 = !DILocation(line: 692, column: 57, scope: !5127)
!5133 = !DILocation(line: 694, column: 9, scope: !5127)
!5134 = !DILocation(line: 694, column: 15, scope: !5127)
!5135 = !DILocation(line: 694, column: 23, scope: !5127)
!5136 = !DILocation(line: 694, column: 2, scope: !5127)
!5137 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5138, file: !5138, line: 32, type: !5139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5138 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!166, !5141}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!5142 = distinct !DISubprogram(name: "spinlock_check", scope: !5143, file: !5143, line: 324, type: !5144, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5146)
!5143 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!5141, !1596}
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "lock", arg: 1, scope: !5142, file: !5143, line: 324, type: !1596)
!5148 = !DILocation(line: 324, column: 67, scope: !5142)
!5149 = !DILocation(line: 326, column: 10, scope: !5142)
!5150 = !DILocation(line: 326, column: 16, scope: !5142)
!5151 = !DILocation(line: 326, column: 2, scope: !5142)
!5152 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5143, file: !5143, line: 404, type: !5153, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{null, !1596, !166}
!5155 = !{!5156, !5157, !5158, !5161}
!5156 = !DILocalVariable(name: "lock", arg: 1, scope: !5152, file: !5143, line: 404, type: !1596)
!5157 = !DILocalVariable(name: "flags", arg: 2, scope: !5152, file: !5143, line: 404, type: !166)
!5158 = !DILocalVariable(name: "__dummy", scope: !5159, file: !5143, line: 406, type: !166)
!5159 = distinct !DILexicalBlock(scope: !5160, file: !5143, line: 406, column: 2)
!5160 = distinct !DILexicalBlock(scope: !5152, file: !5143, line: 406, column: 2)
!5161 = !DILocalVariable(name: "__dummy2", scope: !5159, file: !5143, line: 406, type: !166)
!5162 = !DILocation(line: 404, column: 64, scope: !5152)
!5163 = !DILocation(line: 404, column: 84, scope: !5152)
!5164 = !DILocation(line: 406, column: 2, scope: !5152)
!5165 = !DILocation(line: 406, column: 2, scope: !5159)
!5166 = !DILocation(line: 406, column: 2, scope: !5160)
!5167 = !DILocation(line: 407, column: 1, scope: !5152)
!5168 = distinct !DISubprogram(name: "is_ignored", scope: !2, file: !2, line: 16, type: !2996, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5169)
!5169 = !{!5170}
!5170 = !DILocalVariable(name: "sig", arg: 1, scope: !5168, file: !2, line: 16, type: !115)
!5171 = !DILocation(line: 16, column: 27, scope: !5168)
!5172 = !DILocation(line: 18, column: 23, scope: !5168)
!5173 = !DILocation(line: 18, column: 32, scope: !5168)
!5174 = !DILocation(line: 18, column: 41, scope: !5168)
!5175 = !DILocation(line: 18, column: 10, scope: !5168)
!5176 = !DILocation(line: 18, column: 46, scope: !5168)
!5177 = !DILocation(line: 19, column: 3, scope: !5168)
!5178 = !DILocation(line: 19, column: 12, scope: !5168)
!5179 = !DILocation(line: 19, column: 21, scope: !5168)
!5180 = !DILocation(line: 19, column: 28, scope: !5168)
!5181 = !DILocation(line: 19, column: 31, scope: !5168)
!5182 = !DILocation(line: 19, column: 35, scope: !5168)
!5183 = !DILocation(line: 19, column: 38, scope: !5168)
!5184 = !DILocation(line: 19, column: 49, scope: !5168)
!5185 = !DILocation(line: 18, column: 2, scope: !5168)
!5186 = !DISubprogram(name: "is_current_pgrp_orphaned", scope: !3474, file: !3474, line: 424, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5187 = !DISubprogram(name: "kill_pgrp", scope: !3408, file: !3408, line: 341, type: !5188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!115, !638, !115, !115}
!5190 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !5191, file: !5191, line: 87, type: !5192, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5194)
!5191 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !161, !115}
!5194 = !{!5195, !5196}
!5195 = !DILocalVariable(name: "ti", arg: 1, scope: !5190, file: !5191, line: 87, type: !161)
!5196 = !DILocalVariable(name: "flag", arg: 2, scope: !5190, file: !5191, line: 87, type: !115)
!5197 = !DILocation(line: 87, column: 59, scope: !5190)
!5198 = !DILocation(line: 87, column: 67, scope: !5190)
!5199 = !DILocation(line: 89, column: 10, scope: !5190)
!5200 = !DILocation(line: 89, column: 34, scope: !5190)
!5201 = !DILocation(line: 89, column: 38, scope: !5190)
!5202 = !DILocation(line: 89, column: 2, scope: !5190)
!5203 = !DILocation(line: 90, column: 1, scope: !5190)
!5204 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5118, file: !5118, line: 813, type: !2373, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5205 = !DILocation(line: 815, column: 2, scope: !5204)
!5206 = !DILocation(line: 815, column: 2, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5204, file: !5118, line: 815, column: 2)
!5208 = !DILocation(line: 818, column: 2, scope: !5204)
!5209 = !DILocation(line: 819, column: 2, scope: !5204)
!5210 = !DILocation(line: 819, column: 2, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5204, file: !5118, line: 819, column: 2)
!5212 = !DILocation(line: 820, column: 1, scope: !5204)
!5213 = !DISubprogram(name: "_printk", scope: !5214, file: !5214, line: 153, type: !5215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5214 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!115, !793, null}
!5217 = !DISubprogram(name: "tty_driver_name", scope: !3474, file: !3474, line: 408, type: !5218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!793, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!5222 = !DISubprogram(name: "tty_name", scope: !3474, file: !3474, line: 353, type: !5218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5223 = distinct !DISubprogram(name: "tty_check_change", scope: !2, file: !2, line: 69, type: !4177, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5224)
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "tty", arg: 1, scope: !5223, file: !2, line: 69, type: !3472)
!5226 = !DILocation(line: 69, column: 41, scope: !5223)
!5227 = !DILocation(line: 71, column: 28, scope: !5223)
!5228 = !DILocation(line: 71, column: 9, scope: !5223)
!5229 = !DILocation(line: 71, column: 2, scope: !5223)
!5230 = distinct !DISubprogram(name: "proc_clear_tty", scope: !2, file: !2, line: 75, type: !5231, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !186}
!5233 = !{!5234, !5235, !5236, !5237, !5241}
!5234 = !DILocalVariable(name: "p", arg: 1, scope: !5230, file: !2, line: 75, type: !186)
!5235 = !DILocalVariable(name: "flags", scope: !5230, file: !2, line: 77, type: !166)
!5236 = !DILocalVariable(name: "tty", scope: !5230, file: !2, line: 78, type: !3472)
!5237 = !DILocalVariable(name: "__dummy", scope: !5238, file: !2, line: 80, type: !166)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !2, line: 80, column: 2)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 80, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5230, file: !2, line: 80, column: 2)
!5241 = !DILocalVariable(name: "__dummy2", scope: !5238, file: !2, line: 80, type: !166)
!5242 = !DILocation(line: 75, column: 41, scope: !5230)
!5243 = !DILocation(line: 77, column: 2, scope: !5230)
!5244 = !DILocation(line: 77, column: 16, scope: !5230)
!5245 = !DILocation(line: 78, column: 2, scope: !5230)
!5246 = !DILocation(line: 78, column: 21, scope: !5230)
!5247 = !DILocation(line: 80, column: 2, scope: !5230)
!5248 = !DILocation(line: 80, column: 2, scope: !5240)
!5249 = !DILocation(line: 80, column: 2, scope: !5238)
!5250 = !DILocation(line: 80, column: 2, scope: !5239)
!5251 = !DILocation(line: 81, column: 8, scope: !5230)
!5252 = !DILocation(line: 81, column: 11, scope: !5230)
!5253 = !DILocation(line: 81, column: 19, scope: !5230)
!5254 = !DILocation(line: 81, column: 6, scope: !5230)
!5255 = !DILocation(line: 82, column: 2, scope: !5230)
!5256 = !DILocation(line: 82, column: 5, scope: !5230)
!5257 = !DILocation(line: 82, column: 13, scope: !5230)
!5258 = !DILocation(line: 82, column: 17, scope: !5230)
!5259 = !DILocation(line: 83, column: 26, scope: !5230)
!5260 = !DILocation(line: 83, column: 29, scope: !5230)
!5261 = !DILocation(line: 83, column: 38, scope: !5230)
!5262 = !DILocation(line: 83, column: 47, scope: !5230)
!5263 = !DILocation(line: 83, column: 2, scope: !5230)
!5264 = !DILocation(line: 84, column: 15, scope: !5230)
!5265 = !DILocation(line: 84, column: 2, scope: !5230)
!5266 = !DILocation(line: 85, column: 1, scope: !5230)
!5267 = !DISubprogram(name: "tty_kref_put", scope: !3474, file: !3474, line: 344, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = distinct !DISubprogram(name: "tty_open_proc_set_tty", scope: !2, file: !2, line: 132, type: !5269, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !569, !3472}
!5271 = !{!5272, !5273}
!5272 = !DILocalVariable(name: "filp", arg: 1, scope: !5268, file: !2, line: 132, type: !569)
!5273 = !DILocalVariable(name: "tty", arg: 2, scope: !5268, file: !2, line: 132, type: !3472)
!5274 = !DILocation(line: 132, column: 41, scope: !5268)
!5275 = !DILocation(line: 132, column: 66, scope: !5268)
!5276 = !DILocation(line: 134, column: 2, scope: !5268)
!5277 = !DILocation(line: 135, column: 17, scope: !5268)
!5278 = !DILocation(line: 135, column: 26, scope: !5268)
!5279 = !DILocation(line: 135, column: 35, scope: !5268)
!5280 = !DILocation(line: 135, column: 2, scope: !5268)
!5281 = !DILocation(line: 136, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5268, file: !2, line: 136, column: 6)
!5283 = !DILocation(line: 136, column: 15, scope: !5282)
!5284 = !DILocation(line: 136, column: 23, scope: !5282)
!5285 = !DILocation(line: 136, column: 30, scope: !5282)
!5286 = !DILocation(line: 137, column: 7, scope: !5282)
!5287 = !DILocation(line: 137, column: 16, scope: !5282)
!5288 = !DILocation(line: 137, column: 24, scope: !5282)
!5289 = !DILocation(line: 137, column: 28, scope: !5282)
!5290 = !DILocation(line: 138, column: 6, scope: !5282)
!5291 = !DILocation(line: 138, column: 11, scope: !5282)
!5292 = !DILocation(line: 138, column: 16, scope: !5282)
!5293 = !DILocation(line: 138, column: 24, scope: !5282)
!5294 = !DILocation(line: 136, column: 6, scope: !5268)
!5295 = !DILocation(line: 153, column: 7, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !2, line: 153, column: 7)
!5297 = distinct !DILexicalBlock(scope: !5282, file: !2, line: 138, column: 33)
!5298 = !DILocation(line: 153, column: 13, scope: !5296)
!5299 = !DILocation(line: 153, column: 20, scope: !5296)
!5300 = !DILocation(line: 153, column: 7, scope: !5297)
!5301 = !DILocation(line: 154, column: 19, scope: !5296)
!5302 = !DILocation(line: 154, column: 4, scope: !5296)
!5303 = !DILocation(line: 155, column: 2, scope: !5297)
!5304 = !DILocation(line: 156, column: 19, scope: !5268)
!5305 = !DILocation(line: 156, column: 28, scope: !5268)
!5306 = !DILocation(line: 156, column: 37, scope: !5268)
!5307 = !DILocation(line: 156, column: 2, scope: !5268)
!5308 = !DILocation(line: 157, column: 2, scope: !5268)
!5309 = !DILocation(line: 158, column: 1, scope: !5268)
!5310 = !DISubprogram(name: "_raw_read_lock", scope: !5311, file: !5311, line: 18, type: !5312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5311 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !5314}
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!5315 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5143, file: !5143, line: 374, type: !5316, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5318)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !1596}
!5318 = !{!5319}
!5319 = !DILocalVariable(name: "lock", arg: 1, scope: !5315, file: !5143, line: 374, type: !1596)
!5320 = !DILocation(line: 374, column: 55, scope: !5315)
!5321 = !DILocation(line: 376, column: 2, scope: !5315)
!5322 = !DILocation(line: 377, column: 1, scope: !5315)
!5323 = distinct !DISubprogram(name: "__proc_set_tty", scope: !2, file: !2, line: 98, type: !4124, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5324)
!5324 = !{!5325, !5326, !5327, !5331}
!5325 = !DILocalVariable(name: "tty", arg: 1, scope: !5323, file: !2, line: 98, type: !3472)
!5326 = !DILocalVariable(name: "flags", scope: !5323, file: !2, line: 100, type: !166)
!5327 = !DILocalVariable(name: "__dummy", scope: !5328, file: !2, line: 102, type: !166)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 102, column: 2)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !2, line: 102, column: 2)
!5330 = distinct !DILexicalBlock(scope: !5323, file: !2, line: 102, column: 2)
!5331 = !DILocalVariable(name: "__dummy2", scope: !5328, file: !2, line: 102, type: !166)
!5332 = !DILocation(line: 98, column: 47, scope: !5323)
!5333 = !DILocation(line: 100, column: 2, scope: !5323)
!5334 = !DILocation(line: 100, column: 16, scope: !5323)
!5335 = !DILocation(line: 102, column: 2, scope: !5323)
!5336 = !DILocation(line: 102, column: 2, scope: !5330)
!5337 = !DILocation(line: 102, column: 2, scope: !5328)
!5338 = !DILocation(line: 102, column: 2, scope: !5329)
!5339 = !DILocation(line: 107, column: 10, scope: !5323)
!5340 = !DILocation(line: 107, column: 15, scope: !5323)
!5341 = !DILocation(line: 107, column: 20, scope: !5323)
!5342 = !DILocation(line: 107, column: 2, scope: !5323)
!5343 = !DILocation(line: 108, column: 10, scope: !5323)
!5344 = !DILocation(line: 108, column: 15, scope: !5323)
!5345 = !DILocation(line: 108, column: 20, scope: !5323)
!5346 = !DILocation(line: 108, column: 2, scope: !5323)
!5347 = !DILocation(line: 109, column: 37, scope: !5323)
!5348 = !DILocation(line: 109, column: 27, scope: !5323)
!5349 = !DILocation(line: 109, column: 19, scope: !5323)
!5350 = !DILocation(line: 109, column: 2, scope: !5323)
!5351 = !DILocation(line: 109, column: 7, scope: !5323)
!5352 = !DILocation(line: 109, column: 12, scope: !5323)
!5353 = !DILocation(line: 109, column: 17, scope: !5323)
!5354 = !DILocation(line: 110, column: 43, scope: !5323)
!5355 = !DILocation(line: 110, column: 30, scope: !5323)
!5356 = !DILocation(line: 110, column: 22, scope: !5323)
!5357 = !DILocation(line: 110, column: 2, scope: !5323)
!5358 = !DILocation(line: 110, column: 7, scope: !5323)
!5359 = !DILocation(line: 110, column: 12, scope: !5323)
!5360 = !DILocation(line: 110, column: 20, scope: !5323)
!5361 = !DILocation(line: 111, column: 26, scope: !5323)
!5362 = !DILocation(line: 111, column: 31, scope: !5323)
!5363 = !DILocation(line: 111, column: 36, scope: !5323)
!5364 = !DILocation(line: 111, column: 42, scope: !5323)
!5365 = !DILocation(line: 111, column: 2, scope: !5323)
!5366 = !DILocation(line: 112, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5323, file: !2, line: 112, column: 6)
!5368 = !DILocation(line: 112, column: 15, scope: !5367)
!5369 = !DILocation(line: 112, column: 23, scope: !5367)
!5370 = !DILocation(line: 112, column: 6, scope: !5323)
!5371 = !DILocation(line: 113, column: 3, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 113, column: 3)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !2, line: 113, column: 3)
!5374 = distinct !DILexicalBlock(scope: !5367, file: !2, line: 112, column: 28)
!5375 = !DILocation(line: 113, column: 3, scope: !5373)
!5376 = !DILocation(line: 115, column: 16, scope: !5374)
!5377 = !DILocation(line: 115, column: 25, scope: !5374)
!5378 = !DILocation(line: 115, column: 33, scope: !5374)
!5379 = !DILocation(line: 115, column: 3, scope: !5374)
!5380 = !DILocation(line: 116, column: 2, scope: !5374)
!5381 = !DILocation(line: 117, column: 10, scope: !5323)
!5382 = !DILocation(line: 117, column: 19, scope: !5323)
!5383 = !DILocation(line: 117, column: 27, scope: !5323)
!5384 = !DILocation(line: 117, column: 2, scope: !5323)
!5385 = !DILocation(line: 118, column: 38, scope: !5323)
!5386 = !DILocation(line: 118, column: 25, scope: !5323)
!5387 = !DILocation(line: 118, column: 2, scope: !5323)
!5388 = !DILocation(line: 118, column: 11, scope: !5323)
!5389 = !DILocation(line: 118, column: 19, scope: !5323)
!5390 = !DILocation(line: 118, column: 23, scope: !5323)
!5391 = !DILocation(line: 119, column: 2, scope: !5323)
!5392 = !DILocation(line: 119, column: 11, scope: !5323)
!5393 = !DILocation(line: 119, column: 19, scope: !5323)
!5394 = !DILocation(line: 119, column: 32, scope: !5323)
!5395 = !DILocation(line: 120, column: 1, scope: !5323)
!5396 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5143, file: !5143, line: 399, type: !5316, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5397)
!5397 = !{!5398}
!5398 = !DILocalVariable(name: "lock", arg: 1, scope: !5396, file: !5143, line: 399, type: !1596)
!5399 = !DILocation(line: 399, column: 57, scope: !5396)
!5400 = !DILocation(line: 401, column: 2, scope: !5396)
!5401 = !DILocation(line: 402, column: 1, scope: !5396)
!5402 = !DISubprogram(name: "_raw_read_unlock", scope: !5311, file: !5311, line: 31, type: !5312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5403 = distinct !DISubprogram(name: "get_current_tty", scope: !2, file: !2, line: 160, type: !5404, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!3472}
!5406 = !{!5407, !5408, !5409, !5413}
!5407 = !DILocalVariable(name: "tty", scope: !5403, file: !2, line: 162, type: !3472)
!5408 = !DILocalVariable(name: "flags", scope: !5403, file: !2, line: 163, type: !166)
!5409 = !DILocalVariable(name: "__dummy", scope: !5410, file: !2, line: 165, type: !166)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 165, column: 2)
!5411 = distinct !DILexicalBlock(scope: !5412, file: !2, line: 165, column: 2)
!5412 = distinct !DILexicalBlock(scope: !5403, file: !2, line: 165, column: 2)
!5413 = !DILocalVariable(name: "__dummy2", scope: !5410, file: !2, line: 165, type: !166)
!5414 = !DILocation(line: 162, column: 2, scope: !5403)
!5415 = !DILocation(line: 162, column: 21, scope: !5403)
!5416 = !DILocation(line: 163, column: 2, scope: !5403)
!5417 = !DILocation(line: 163, column: 16, scope: !5403)
!5418 = !DILocation(line: 165, column: 2, scope: !5403)
!5419 = !DILocation(line: 165, column: 2, scope: !5412)
!5420 = !DILocation(line: 165, column: 2, scope: !5410)
!5421 = !DILocation(line: 165, column: 2, scope: !5411)
!5422 = !DILocation(line: 166, column: 21, scope: !5403)
!5423 = !DILocation(line: 166, column: 30, scope: !5403)
!5424 = !DILocation(line: 166, column: 38, scope: !5403)
!5425 = !DILocation(line: 166, column: 8, scope: !5403)
!5426 = !DILocation(line: 166, column: 6, scope: !5403)
!5427 = !DILocation(line: 167, column: 26, scope: !5403)
!5428 = !DILocation(line: 167, column: 35, scope: !5403)
!5429 = !DILocation(line: 167, column: 44, scope: !5403)
!5430 = !DILocation(line: 167, column: 53, scope: !5403)
!5431 = !DILocation(line: 167, column: 2, scope: !5403)
!5432 = !DILocation(line: 168, column: 9, scope: !5403)
!5433 = !DILocation(line: 169, column: 1, scope: !5403)
!5434 = !DILocation(line: 168, column: 2, scope: !5403)
!5435 = distinct !DISubprogram(name: "tty_kref_get", scope: !3474, file: !3474, line: 401, type: !5436, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5438)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!3472, !3472}
!5438 = !{!5439}
!5439 = !DILocalVariable(name: "tty", arg: 1, scope: !5435, file: !3474, line: 401, type: !3472)
!5440 = !DILocation(line: 401, column: 66, scope: !5435)
!5441 = !DILocation(line: 403, column: 6, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5435, file: !3474, line: 403, column: 6)
!5443 = !DILocation(line: 403, column: 6, scope: !5435)
!5444 = !DILocation(line: 404, column: 13, scope: !5442)
!5445 = !DILocation(line: 404, column: 18, scope: !5442)
!5446 = !DILocation(line: 404, column: 3, scope: !5442)
!5447 = !DILocation(line: 405, column: 9, scope: !5435)
!5448 = !DILocation(line: 405, column: 2, scope: !5435)
!5449 = distinct !DISubprogram(name: "session_clear_tty", scope: !2, file: !2, line: 175, type: !5450, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5452)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !638}
!5452 = !{!5453, !5454, !5455, !5460, !5462, !5464, !5467, !5469}
!5453 = !DILocalVariable(name: "session", arg: 1, scope: !5449, file: !2, line: 175, type: !638)
!5454 = !DILocalVariable(name: "p", scope: !5449, file: !2, line: 177, type: !186)
!5455 = !DILocalVariable(name: "____ptr", scope: !5456, file: !2, line: 179, type: !180)
!5456 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 179, column: 2)
!5457 = distinct !DILexicalBlock(scope: !5458, file: !2, line: 179, column: 2)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !2, line: 179, column: 2)
!5459 = distinct !DILexicalBlock(scope: !5449, file: !2, line: 179, column: 2)
!5460 = !DILocalVariable(name: "__UNIQUE_ID_rcu289", scope: !5461, file: !2, line: 179, type: !180)
!5461 = distinct !DILexicalBlock(scope: !5456, file: !2, line: 179, column: 2)
!5462 = !DILocalVariable(name: "__mptr", scope: !5463, file: !2, line: 179, type: !174)
!5463 = distinct !DILexicalBlock(scope: !5456, file: !2, line: 179, column: 2)
!5464 = !DILocalVariable(name: "____ptr", scope: !5465, file: !2, line: 179, type: !180)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 179, column: 2)
!5466 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 179, column: 2)
!5467 = !DILocalVariable(name: "__UNIQUE_ID_rcu291", scope: !5468, file: !2, line: 179, type: !180)
!5468 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 179, column: 2)
!5469 = !DILocalVariable(name: "__mptr", scope: !5470, file: !2, line: 179, type: !174)
!5470 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 179, column: 2)
!5471 = !DILocation(line: 175, column: 36, scope: !5449)
!5472 = !DILocation(line: 177, column: 2, scope: !5449)
!5473 = !DILocation(line: 177, column: 22, scope: !5449)
!5474 = !DILocation(line: 179, column: 2, scope: !5449)
!5475 = !DILocation(line: 179, column: 2, scope: !5458)
!5476 = !DILocation(line: 179, column: 2, scope: !5459)
!5477 = !DILocation(line: 179, column: 2, scope: !5456)
!5478 = !DILocation(line: 179, column: 2, scope: !5461)
!5479 = !DILocation(line: 179, column: 2, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5461, file: !2, line: 179, column: 2)
!5481 = !DILocation(line: 179, column: 2, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5480, file: !2, line: 179, column: 2)
!5483 = !DILocation(line: 179, column: 2, scope: !5463)
!5484 = !DILocation(line: 179, column: 2, scope: !5457)
!5485 = !DILocation(line: 179, column: 2, scope: !5466)
!5486 = !DILocation(line: 180, column: 18, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 179, column: 44)
!5488 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 179, column: 2)
!5489 = !DILocation(line: 180, column: 3, scope: !5487)
!5490 = !DILocation(line: 181, column: 4, scope: !5488)
!5491 = !DILocation(line: 179, column: 2, scope: !5465)
!5492 = !DILocation(line: 179, column: 2, scope: !5468)
!5493 = !DILocation(line: 179, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5468, file: !2, line: 179, column: 2)
!5495 = !DILocation(line: 179, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !2, line: 179, column: 2)
!5497 = !DILocation(line: 179, column: 2, scope: !5470)
!5498 = distinct !{!5498, !5484, !5499, !5500, !5501}
!5499 = !DILocation(line: 181, column: 4, scope: !5457)
!5500 = !{!"llvm.loop.mustprogress"}
!5501 = !{!"llvm.loop.unroll.disable"}
!5502 = !DILocation(line: 181, column: 4, scope: !5459)
!5503 = !DILocation(line: 182, column: 1, scope: !5449)
!5504 = distinct !DISubprogram(name: "tty_signal_session_leader", scope: !2, file: !2, line: 196, type: !4162, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5505)
!5505 = !{!5506, !5507, !5508, !5509, !5510, !5511, !5518, !5520, !5522, !5525, !5527}
!5506 = !DILocalVariable(name: "tty", arg: 1, scope: !5504, file: !2, line: 196, type: !3472)
!5507 = !DILocalVariable(name: "exit_session", arg: 2, scope: !5504, file: !2, line: 196, type: !115)
!5508 = !DILocalVariable(name: "p", scope: !5504, file: !2, line: 198, type: !186)
!5509 = !DILocalVariable(name: "refs", scope: !5504, file: !2, line: 199, type: !115)
!5510 = !DILocalVariable(name: "tty_pgrp", scope: !5504, file: !2, line: 200, type: !638)
!5511 = !DILocalVariable(name: "____ptr", scope: !5512, file: !2, line: 204, type: !180)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 204, column: 3)
!5513 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 204, column: 3)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !2, line: 204, column: 3)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !2, line: 204, column: 3)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 203, column: 25)
!5517 = distinct !DILexicalBlock(scope: !5504, file: !2, line: 203, column: 6)
!5518 = !DILocalVariable(name: "__UNIQUE_ID_rcu293", scope: !5519, file: !2, line: 204, type: !180)
!5519 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 204, column: 3)
!5520 = !DILocalVariable(name: "__mptr", scope: !5521, file: !2, line: 204, type: !174)
!5521 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 204, column: 3)
!5522 = !DILocalVariable(name: "____ptr", scope: !5523, file: !2, line: 204, type: !180)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !2, line: 204, column: 3)
!5524 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 204, column: 3)
!5525 = !DILocalVariable(name: "__UNIQUE_ID_rcu295", scope: !5526, file: !2, line: 204, type: !180)
!5526 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 204, column: 3)
!5527 = !DILocalVariable(name: "__mptr", scope: !5528, file: !2, line: 204, type: !174)
!5528 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 204, column: 3)
!5529 = !DILocation(line: 196, column: 50, scope: !5504)
!5530 = !DILocation(line: 196, column: 59, scope: !5504)
!5531 = !DILocation(line: 198, column: 2, scope: !5504)
!5532 = !DILocation(line: 198, column: 22, scope: !5504)
!5533 = !DILocation(line: 199, column: 2, scope: !5504)
!5534 = !DILocation(line: 199, column: 6, scope: !5504)
!5535 = !DILocation(line: 200, column: 2, scope: !5504)
!5536 = !DILocation(line: 200, column: 14, scope: !5504)
!5537 = !DILocation(line: 202, column: 2, scope: !5504)
!5538 = !DILocation(line: 203, column: 6, scope: !5517)
!5539 = !DILocation(line: 203, column: 11, scope: !5517)
!5540 = !DILocation(line: 203, column: 16, scope: !5517)
!5541 = !DILocation(line: 203, column: 6, scope: !5504)
!5542 = !DILocation(line: 204, column: 3, scope: !5516)
!5543 = !DILocation(line: 204, column: 3, scope: !5514)
!5544 = !DILocation(line: 204, column: 3, scope: !5515)
!5545 = !DILocation(line: 204, column: 3, scope: !5512)
!5546 = !DILocation(line: 204, column: 3, scope: !5519)
!5547 = !DILocation(line: 204, column: 3, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5519, file: !2, line: 204, column: 3)
!5549 = !DILocation(line: 204, column: 3, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5548, file: !2, line: 204, column: 3)
!5551 = !DILocation(line: 204, column: 3, scope: !5521)
!5552 = !DILocation(line: 204, column: 3, scope: !5513)
!5553 = !DILocation(line: 204, column: 3, scope: !5524)
!5554 = !DILocation(line: 205, column: 19, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !2, line: 204, column: 55)
!5556 = distinct !DILexicalBlock(scope: !5524, file: !2, line: 204, column: 3)
!5557 = !DILocation(line: 205, column: 22, scope: !5555)
!5558 = !DILocation(line: 205, column: 31, scope: !5555)
!5559 = !DILocation(line: 205, column: 4, scope: !5555)
!5560 = !DILocation(line: 206, column: 8, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 206, column: 8)
!5562 = !DILocation(line: 206, column: 11, scope: !5561)
!5563 = !DILocation(line: 206, column: 19, scope: !5561)
!5564 = !DILocation(line: 206, column: 26, scope: !5561)
!5565 = !DILocation(line: 206, column: 23, scope: !5561)
!5566 = !DILocation(line: 206, column: 8, scope: !5555)
!5567 = !DILocation(line: 207, column: 5, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5561, file: !2, line: 206, column: 31)
!5569 = !DILocation(line: 207, column: 8, scope: !5568)
!5570 = !DILocation(line: 207, column: 16, scope: !5568)
!5571 = !DILocation(line: 207, column: 20, scope: !5568)
!5572 = !DILocation(line: 212, column: 9, scope: !5568)
!5573 = !DILocation(line: 213, column: 4, scope: !5568)
!5574 = !DILocation(line: 214, column: 9, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 214, column: 8)
!5576 = !DILocation(line: 214, column: 12, scope: !5575)
!5577 = !DILocation(line: 214, column: 20, scope: !5575)
!5578 = !DILocation(line: 214, column: 8, scope: !5555)
!5579 = !DILocation(line: 215, column: 22, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 214, column: 28)
!5581 = !DILocation(line: 215, column: 25, scope: !5580)
!5582 = !DILocation(line: 215, column: 34, scope: !5580)
!5583 = !DILocation(line: 215, column: 5, scope: !5580)
!5584 = !DILocation(line: 216, column: 5, scope: !5580)
!5585 = !DILocation(line: 218, column: 46, scope: !5555)
!5586 = !DILocation(line: 218, column: 4, scope: !5555)
!5587 = !DILocation(line: 219, column: 47, scope: !5555)
!5588 = !DILocation(line: 219, column: 4, scope: !5555)
!5589 = !DILocation(line: 220, column: 12, scope: !5555)
!5590 = !DILocation(line: 220, column: 15, scope: !5555)
!5591 = !DILocation(line: 220, column: 23, scope: !5555)
!5592 = !DILocation(line: 220, column: 4, scope: !5555)
!5593 = !DILocation(line: 221, column: 15, scope: !5555)
!5594 = !DILocation(line: 221, column: 20, scope: !5555)
!5595 = !DILocation(line: 221, column: 25, scope: !5555)
!5596 = !DILocation(line: 221, column: 4, scope: !5555)
!5597 = !DILocation(line: 222, column: 23, scope: !5555)
!5598 = !DILocation(line: 222, column: 28, scope: !5555)
!5599 = !DILocation(line: 222, column: 33, scope: !5555)
!5600 = !DILocation(line: 222, column: 15, scope: !5555)
!5601 = !DILocation(line: 222, column: 13, scope: !5555)
!5602 = !DILocation(line: 223, column: 8, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 223, column: 8)
!5604 = !DILocation(line: 223, column: 13, scope: !5603)
!5605 = !DILocation(line: 223, column: 18, scope: !5603)
!5606 = !DILocation(line: 223, column: 8, scope: !5555)
!5607 = !DILocation(line: 225, column: 14, scope: !5603)
!5608 = !DILocation(line: 225, column: 19, scope: !5603)
!5609 = !DILocation(line: 225, column: 24, scope: !5603)
!5610 = !DILocation(line: 225, column: 6, scope: !5603)
!5611 = !DILocation(line: 224, column: 5, scope: !5603)
!5612 = !DILocation(line: 224, column: 8, scope: !5603)
!5613 = !DILocation(line: 224, column: 16, scope: !5603)
!5614 = !DILocation(line: 224, column: 29, scope: !5603)
!5615 = !DILocation(line: 226, column: 17, scope: !5555)
!5616 = !DILocation(line: 226, column: 22, scope: !5555)
!5617 = !DILocation(line: 226, column: 27, scope: !5555)
!5618 = !DILocation(line: 226, column: 4, scope: !5555)
!5619 = !DILocation(line: 227, column: 21, scope: !5555)
!5620 = !DILocation(line: 227, column: 24, scope: !5555)
!5621 = !DILocation(line: 227, column: 33, scope: !5555)
!5622 = !DILocation(line: 227, column: 4, scope: !5555)
!5623 = !DILocation(line: 228, column: 5, scope: !5556)
!5624 = !DILocation(line: 204, column: 3, scope: !5523)
!5625 = !DILocation(line: 204, column: 3, scope: !5526)
!5626 = !DILocation(line: 204, column: 3, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 204, column: 3)
!5628 = !DILocation(line: 204, column: 3, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5627, file: !2, line: 204, column: 3)
!5630 = !DILocation(line: 204, column: 3, scope: !5528)
!5631 = distinct !{!5631, !5552, !5632, !5500, !5501}
!5632 = !DILocation(line: 228, column: 5, scope: !5513)
!5633 = !DILocation(line: 228, column: 5, scope: !5515)
!5634 = !DILocation(line: 229, column: 2, scope: !5516)
!5635 = !DILocation(line: 230, column: 2, scope: !5504)
!5636 = !DILocation(line: 232, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5504, file: !2, line: 232, column: 6)
!5638 = !DILocation(line: 232, column: 6, scope: !5504)
!5639 = !DILocation(line: 233, column: 7, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5641, file: !2, line: 233, column: 7)
!5641 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 232, column: 16)
!5642 = !DILocation(line: 233, column: 7, scope: !5641)
!5643 = !DILocation(line: 234, column: 14, scope: !5640)
!5644 = !DILocation(line: 234, column: 32, scope: !5640)
!5645 = !DILocation(line: 234, column: 4, scope: !5640)
!5646 = !DILocation(line: 235, column: 11, scope: !5641)
!5647 = !DILocation(line: 235, column: 3, scope: !5641)
!5648 = !DILocation(line: 236, column: 2, scope: !5641)
!5649 = !DILocation(line: 238, column: 9, scope: !5504)
!5650 = !DILocation(line: 239, column: 1, scope: !5504)
!5651 = !DILocation(line: 238, column: 2, scope: !5504)
!5652 = !DISubprogram(name: "send_signal_locked", scope: !5653, file: !5653, line: 285, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5653 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!115, !115, !4988, !186, !24}
!5656 = !DISubprogram(name: "put_pid", scope: !25, file: !25, line: 92, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5657 = distinct !DISubprogram(name: "spin_lock", scope: !5143, file: !5143, line: 349, type: !5316, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5658)
!5658 = !{!5659}
!5659 = !DILocalVariable(name: "lock", arg: 1, scope: !5657, file: !5143, line: 349, type: !1596)
!5660 = !DILocation(line: 349, column: 51, scope: !5657)
!5661 = !DILocation(line: 351, column: 2, scope: !5657)
!5662 = !DILocation(line: 352, column: 1, scope: !5657)
!5663 = distinct !DISubprogram(name: "get_pid", scope: !25, file: !25, line: 85, type: !5664, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5666)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!638, !638}
!5666 = !{!5667}
!5667 = !DILocalVariable(name: "pid", arg: 1, scope: !5663, file: !25, line: 85, type: !638)
!5668 = !DILocation(line: 85, column: 47, scope: !5663)
!5669 = !DILocation(line: 87, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5663, file: !25, line: 87, column: 6)
!5671 = !DILocation(line: 87, column: 6, scope: !5663)
!5672 = !DILocation(line: 88, column: 17, scope: !5670)
!5673 = !DILocation(line: 88, column: 22, scope: !5670)
!5674 = !DILocation(line: 88, column: 3, scope: !5670)
!5675 = !DILocation(line: 89, column: 9, scope: !5663)
!5676 = !DILocation(line: 89, column: 2, scope: !5663)
!5677 = distinct !DISubprogram(name: "spin_unlock", scope: !5143, file: !5143, line: 389, type: !5316, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5678)
!5678 = !{!5679}
!5679 = !DILocalVariable(name: "lock", arg: 1, scope: !5677, file: !5143, line: 389, type: !1596)
!5680 = !DILocation(line: 389, column: 53, scope: !5677)
!5681 = !DILocation(line: 391, column: 2, scope: !5677)
!5682 = !DILocation(line: 392, column: 1, scope: !5677)
!5683 = distinct !DISubprogram(name: "disassociate_ctty", scope: !2, file: !2, line: 265, type: !4413, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5684)
!5684 = !{!5685, !5686, !5687, !5692, !5695, !5698, !5702}
!5685 = !DILocalVariable(name: "on_exit", arg: 1, scope: !5683, file: !2, line: 265, type: !115)
!5686 = !DILocalVariable(name: "tty", scope: !5683, file: !2, line: 267, type: !3472)
!5687 = !DILocalVariable(name: "tty_pgrp", scope: !5688, file: !2, line: 277, type: !638)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !2, line: 276, column: 10)
!5689 = distinct !DILexicalBlock(scope: !5690, file: !2, line: 274, column: 7)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !2, line: 273, column: 11)
!5691 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 273, column: 6)
!5692 = !DILocalVariable(name: "old_pgrp", scope: !5693, file: !2, line: 289, type: !638)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !2, line: 288, column: 22)
!5694 = distinct !DILexicalBlock(scope: !5691, file: !2, line: 288, column: 13)
!5695 = !DILocalVariable(name: "flags", scope: !5696, file: !2, line: 305, type: !166)
!5696 = distinct !DILexicalBlock(scope: !5697, file: !2, line: 304, column: 11)
!5697 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 304, column: 6)
!5698 = !DILocalVariable(name: "__dummy", scope: !5699, file: !2, line: 308, type: !166)
!5699 = distinct !DILexicalBlock(scope: !5700, file: !2, line: 308, column: 3)
!5700 = distinct !DILexicalBlock(scope: !5701, file: !2, line: 308, column: 3)
!5701 = distinct !DILexicalBlock(scope: !5696, file: !2, line: 308, column: 3)
!5702 = !DILocalVariable(name: "__dummy2", scope: !5699, file: !2, line: 308, type: !166)
!5703 = !DILocation(line: 265, column: 28, scope: !5683)
!5704 = !DILocation(line: 267, column: 2, scope: !5683)
!5705 = !DILocation(line: 267, column: 21, scope: !5683)
!5706 = !DILocation(line: 269, column: 7, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 269, column: 6)
!5708 = !DILocation(line: 269, column: 16, scope: !5707)
!5709 = !DILocation(line: 269, column: 24, scope: !5707)
!5710 = !DILocation(line: 269, column: 6, scope: !5683)
!5711 = !DILocation(line: 270, column: 3, scope: !5707)
!5712 = !DILocation(line: 272, column: 8, scope: !5683)
!5713 = !DILocation(line: 272, column: 6, scope: !5683)
!5714 = !DILocation(line: 273, column: 6, scope: !5691)
!5715 = !DILocation(line: 273, column: 6, scope: !5683)
!5716 = !DILocation(line: 274, column: 7, scope: !5689)
!5717 = !DILocation(line: 274, column: 15, scope: !5689)
!5718 = !DILocation(line: 274, column: 18, scope: !5689)
!5719 = !DILocation(line: 274, column: 23, scope: !5689)
!5720 = !DILocation(line: 274, column: 31, scope: !5689)
!5721 = !DILocation(line: 274, column: 36, scope: !5689)
!5722 = !DILocation(line: 274, column: 7, scope: !5690)
!5723 = !DILocation(line: 275, column: 24, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5689, file: !2, line: 274, column: 60)
!5725 = !DILocation(line: 275, column: 4, scope: !5724)
!5726 = !DILocation(line: 276, column: 3, scope: !5724)
!5727 = !DILocation(line: 277, column: 4, scope: !5688)
!5728 = !DILocation(line: 277, column: 16, scope: !5688)
!5729 = !DILocation(line: 277, column: 40, scope: !5688)
!5730 = !DILocation(line: 277, column: 27, scope: !5688)
!5731 = !DILocation(line: 279, column: 8, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 279, column: 8)
!5733 = !DILocation(line: 279, column: 8, scope: !5688)
!5734 = !DILocation(line: 280, column: 15, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !2, line: 279, column: 18)
!5736 = !DILocation(line: 280, column: 33, scope: !5735)
!5737 = !DILocation(line: 280, column: 5, scope: !5735)
!5738 = !DILocation(line: 281, column: 10, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5735, file: !2, line: 281, column: 9)
!5740 = !DILocation(line: 281, column: 9, scope: !5735)
!5741 = !DILocation(line: 282, column: 16, scope: !5739)
!5742 = !DILocation(line: 282, column: 35, scope: !5739)
!5743 = !DILocation(line: 282, column: 6, scope: !5739)
!5744 = !DILocation(line: 283, column: 13, scope: !5735)
!5745 = !DILocation(line: 283, column: 5, scope: !5735)
!5746 = !DILocation(line: 284, column: 4, scope: !5735)
!5747 = !DILocation(line: 285, column: 3, scope: !5689)
!5748 = !DILocation(line: 286, column: 16, scope: !5690)
!5749 = !DILocation(line: 286, column: 3, scope: !5690)
!5750 = !DILocation(line: 288, column: 2, scope: !5690)
!5751 = !DILocation(line: 288, column: 13, scope: !5694)
!5752 = !DILocation(line: 288, column: 13, scope: !5691)
!5753 = !DILocation(line: 289, column: 3, scope: !5693)
!5754 = !DILocation(line: 289, column: 15, scope: !5693)
!5755 = !DILocation(line: 291, column: 18, scope: !5693)
!5756 = !DILocation(line: 291, column: 27, scope: !5693)
!5757 = !DILocation(line: 291, column: 36, scope: !5693)
!5758 = !DILocation(line: 291, column: 3, scope: !5693)
!5759 = !DILocation(line: 292, column: 14, scope: !5693)
!5760 = !DILocation(line: 292, column: 23, scope: !5693)
!5761 = !DILocation(line: 292, column: 31, scope: !5693)
!5762 = !DILocation(line: 292, column: 12, scope: !5693)
!5763 = !DILocation(line: 293, column: 3, scope: !5693)
!5764 = !DILocation(line: 293, column: 12, scope: !5693)
!5765 = !DILocation(line: 293, column: 20, scope: !5693)
!5766 = !DILocation(line: 293, column: 33, scope: !5693)
!5767 = !DILocation(line: 294, column: 20, scope: !5693)
!5768 = !DILocation(line: 294, column: 29, scope: !5693)
!5769 = !DILocation(line: 294, column: 38, scope: !5693)
!5770 = !DILocation(line: 294, column: 3, scope: !5693)
!5771 = !DILocation(line: 295, column: 7, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 295, column: 7)
!5773 = !DILocation(line: 295, column: 7, scope: !5693)
!5774 = !DILocation(line: 296, column: 14, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5772, file: !2, line: 295, column: 17)
!5776 = !DILocation(line: 296, column: 32, scope: !5775)
!5777 = !DILocation(line: 296, column: 4, scope: !5775)
!5778 = !DILocation(line: 297, column: 14, scope: !5775)
!5779 = !DILocation(line: 297, column: 33, scope: !5775)
!5780 = !DILocation(line: 297, column: 4, scope: !5775)
!5781 = !DILocation(line: 298, column: 12, scope: !5775)
!5782 = !DILocation(line: 298, column: 4, scope: !5775)
!5783 = !DILocation(line: 299, column: 3, scope: !5775)
!5784 = !DILocation(line: 301, column: 2, scope: !5694)
!5785 = !DILocation(line: 303, column: 8, scope: !5683)
!5786 = !DILocation(line: 303, column: 6, scope: !5683)
!5787 = !DILocation(line: 304, column: 6, scope: !5697)
!5788 = !DILocation(line: 304, column: 6, scope: !5683)
!5789 = !DILocation(line: 305, column: 3, scope: !5696)
!5790 = !DILocation(line: 305, column: 17, scope: !5696)
!5791 = !DILocation(line: 307, column: 12, scope: !5696)
!5792 = !DILocation(line: 307, column: 3, scope: !5696)
!5793 = !DILocation(line: 308, column: 3, scope: !5696)
!5794 = !DILocation(line: 308, column: 3, scope: !5701)
!5795 = !DILocation(line: 308, column: 3, scope: !5699)
!5796 = !DILocation(line: 308, column: 3, scope: !5700)
!5797 = !DILocation(line: 309, column: 11, scope: !5696)
!5798 = !DILocation(line: 309, column: 16, scope: !5696)
!5799 = !DILocation(line: 309, column: 21, scope: !5696)
!5800 = !DILocation(line: 309, column: 3, scope: !5696)
!5801 = !DILocation(line: 310, column: 11, scope: !5696)
!5802 = !DILocation(line: 310, column: 16, scope: !5696)
!5803 = !DILocation(line: 310, column: 21, scope: !5696)
!5804 = !DILocation(line: 310, column: 3, scope: !5696)
!5805 = !DILocation(line: 311, column: 3, scope: !5696)
!5806 = !DILocation(line: 311, column: 8, scope: !5696)
!5807 = !DILocation(line: 311, column: 13, scope: !5696)
!5808 = !DILocation(line: 311, column: 21, scope: !5696)
!5809 = !DILocation(line: 312, column: 3, scope: !5696)
!5810 = !DILocation(line: 312, column: 8, scope: !5696)
!5811 = !DILocation(line: 312, column: 13, scope: !5696)
!5812 = !DILocation(line: 312, column: 18, scope: !5696)
!5813 = !DILocation(line: 313, column: 27, scope: !5696)
!5814 = !DILocation(line: 313, column: 32, scope: !5696)
!5815 = !DILocation(line: 313, column: 37, scope: !5696)
!5816 = !DILocation(line: 313, column: 43, scope: !5696)
!5817 = !DILocation(line: 313, column: 3, scope: !5696)
!5818 = !DILocation(line: 314, column: 14, scope: !5696)
!5819 = !DILocation(line: 314, column: 3, scope: !5696)
!5820 = !DILocation(line: 315, column: 16, scope: !5696)
!5821 = !DILocation(line: 315, column: 3, scope: !5696)
!5822 = !DILocation(line: 316, column: 2, scope: !5697)
!5823 = !DILocation(line: 316, column: 2, scope: !5696)
!5824 = !DILocation(line: 323, column: 17, scope: !5683)
!5825 = !DILocation(line: 323, column: 26, scope: !5683)
!5826 = !DILocation(line: 323, column: 35, scope: !5683)
!5827 = !DILocation(line: 323, column: 2, scope: !5683)
!5828 = !DILocation(line: 324, column: 10, scope: !5683)
!5829 = !DILocation(line: 324, column: 19, scope: !5683)
!5830 = !DILocation(line: 324, column: 27, scope: !5683)
!5831 = !DILocation(line: 324, column: 2, scope: !5683)
!5832 = !DILocation(line: 325, column: 2, scope: !5683)
!5833 = !DILocation(line: 325, column: 11, scope: !5683)
!5834 = !DILocation(line: 325, column: 19, scope: !5683)
!5835 = !DILocation(line: 325, column: 32, scope: !5683)
!5836 = !DILocation(line: 326, column: 19, scope: !5683)
!5837 = !DILocation(line: 326, column: 28, scope: !5683)
!5838 = !DILocation(line: 326, column: 37, scope: !5683)
!5839 = !DILocation(line: 326, column: 2, scope: !5683)
!5840 = !DILocation(line: 329, column: 2, scope: !5683)
!5841 = !DILocation(line: 330, column: 33, scope: !5683)
!5842 = !DILocation(line: 330, column: 20, scope: !5683)
!5843 = !DILocation(line: 330, column: 2, scope: !5683)
!5844 = !DILocation(line: 331, column: 2, scope: !5683)
!5845 = !DILocation(line: 332, column: 1, scope: !5683)
!5846 = !DISubprogram(name: "tty_vhangup_session", scope: !5847, file: !5847, line: 67, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5847 = !DIFile(filename: "drivers/tty/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d8857947502225b017f036ab4ca6cb4")
!5848 = distinct !DISubprogram(name: "tty_get_pgrp", scope: !2, file: !2, line: 421, type: !5849, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5851)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!638, !3472}
!5851 = !{!5852, !5853, !5854, !5855, !5859}
!5852 = !DILocalVariable(name: "tty", arg: 1, scope: !5848, file: !2, line: 421, type: !3472)
!5853 = !DILocalVariable(name: "flags", scope: !5848, file: !2, line: 423, type: !166)
!5854 = !DILocalVariable(name: "pgrp", scope: !5848, file: !2, line: 424, type: !638)
!5855 = !DILocalVariable(name: "__dummy", scope: !5856, file: !2, line: 426, type: !166)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !2, line: 426, column: 2)
!5857 = distinct !DILexicalBlock(scope: !5858, file: !2, line: 426, column: 2)
!5858 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 426, column: 2)
!5859 = !DILocalVariable(name: "__dummy2", scope: !5856, file: !2, line: 426, type: !166)
!5860 = !DILocation(line: 421, column: 45, scope: !5848)
!5861 = !DILocation(line: 423, column: 2, scope: !5848)
!5862 = !DILocation(line: 423, column: 16, scope: !5848)
!5863 = !DILocation(line: 424, column: 2, scope: !5848)
!5864 = !DILocation(line: 424, column: 14, scope: !5848)
!5865 = !DILocation(line: 426, column: 2, scope: !5848)
!5866 = !DILocation(line: 426, column: 2, scope: !5858)
!5867 = !DILocation(line: 426, column: 2, scope: !5856)
!5868 = !DILocation(line: 426, column: 2, scope: !5857)
!5869 = !DILocation(line: 427, column: 17, scope: !5848)
!5870 = !DILocation(line: 427, column: 22, scope: !5848)
!5871 = !DILocation(line: 427, column: 27, scope: !5848)
!5872 = !DILocation(line: 427, column: 9, scope: !5848)
!5873 = !DILocation(line: 427, column: 7, scope: !5848)
!5874 = !DILocation(line: 428, column: 26, scope: !5848)
!5875 = !DILocation(line: 428, column: 31, scope: !5848)
!5876 = !DILocation(line: 428, column: 36, scope: !5848)
!5877 = !DILocation(line: 428, column: 42, scope: !5848)
!5878 = !DILocation(line: 428, column: 2, scope: !5848)
!5879 = !DILocation(line: 430, column: 9, scope: !5848)
!5880 = !DILocation(line: 431, column: 1, scope: !5848)
!5881 = !DILocation(line: 430, column: 2, scope: !5848)
!5882 = !DISubprogram(name: "tty_lock", scope: !3474, file: !3474, line: 511, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5883 = !DISubprogram(name: "tty_unlock", scope: !3474, file: !3474, line: 513, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5884 = distinct !DISubprogram(name: "task_session", scope: !3408, file: !3408, line: 697, type: !5128, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5885)
!5885 = !{!5886}
!5886 = !DILocalVariable(name: "task", arg: 1, scope: !5884, file: !3408, line: 697, type: !186)
!5887 = !DILocation(line: 697, column: 60, scope: !5884)
!5888 = !DILocation(line: 699, column: 9, scope: !5884)
!5889 = !DILocation(line: 699, column: 15, scope: !5884)
!5890 = !DILocation(line: 699, column: 23, scope: !5884)
!5891 = !DILocation(line: 699, column: 2, scope: !5884)
!5892 = distinct !DISubprogram(name: "no_tty", scope: !2, file: !2, line: 338, type: !2373, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5893)
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "tsk", scope: !5892, file: !2, line: 345, type: !186)
!5895 = !DILocation(line: 345, column: 2, scope: !5892)
!5896 = !DILocation(line: 345, column: 22, scope: !5892)
!5897 = !DILocation(line: 345, column: 28, scope: !5892)
!5898 = !DILocation(line: 347, column: 2, scope: !5892)
!5899 = !DILocation(line: 348, column: 17, scope: !5892)
!5900 = !DILocation(line: 348, column: 2, scope: !5892)
!5901 = !DILocation(line: 349, column: 1, scope: !5892)
!5902 = distinct !DISubprogram(name: "tty_jobctrl_ioctl", scope: !2, file: !2, line: 572, type: !5903, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5905)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!1064, !3472, !3472, !569, !13, !166}
!5905 = !{!5906, !5907, !5908, !5909, !5910, !5911}
!5906 = !DILocalVariable(name: "tty", arg: 1, scope: !5902, file: !2, line: 572, type: !3472)
!5907 = !DILocalVariable(name: "real_tty", arg: 2, scope: !5902, file: !2, line: 572, type: !3472)
!5908 = !DILocalVariable(name: "file", arg: 3, scope: !5902, file: !2, line: 573, type: !569)
!5909 = !DILocalVariable(name: "cmd", arg: 4, scope: !5902, file: !2, line: 573, type: !13)
!5910 = !DILocalVariable(name: "arg", arg: 5, scope: !5902, file: !2, line: 573, type: !166)
!5911 = !DILocalVariable(name: "p", scope: !5902, file: !2, line: 575, type: !174)
!5912 = !DILocation(line: 572, column: 43, scope: !5902)
!5913 = !DILocation(line: 572, column: 67, scope: !5902)
!5914 = !DILocation(line: 573, column: 23, scope: !5902)
!5915 = !DILocation(line: 573, column: 42, scope: !5902)
!5916 = !DILocation(line: 573, column: 61, scope: !5902)
!5917 = !DILocation(line: 575, column: 2, scope: !5902)
!5918 = !DILocation(line: 575, column: 15, scope: !5902)
!5919 = !DILocation(line: 575, column: 34, scope: !5902)
!5920 = !DILocation(line: 575, column: 19, scope: !5902)
!5921 = !DILocation(line: 577, column: 10, scope: !5902)
!5922 = !DILocation(line: 577, column: 2, scope: !5902)
!5923 = !DILocation(line: 579, column: 7, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !2, line: 579, column: 7)
!5925 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 577, column: 15)
!5926 = !DILocation(line: 579, column: 16, scope: !5924)
!5927 = !DILocation(line: 579, column: 24, scope: !5924)
!5928 = !DILocation(line: 579, column: 31, scope: !5924)
!5929 = !DILocation(line: 579, column: 28, scope: !5924)
!5930 = !DILocation(line: 579, column: 7, scope: !5925)
!5931 = !DILocation(line: 580, column: 4, scope: !5924)
!5932 = !DILocation(line: 581, column: 3, scope: !5925)
!5933 = !DILocation(line: 582, column: 3, scope: !5925)
!5934 = !DILocation(line: 584, column: 20, scope: !5925)
!5935 = !DILocation(line: 584, column: 30, scope: !5925)
!5936 = !DILocation(line: 584, column: 36, scope: !5925)
!5937 = !DILocation(line: 584, column: 10, scope: !5925)
!5938 = !DILocation(line: 584, column: 3, scope: !5925)
!5939 = !DILocation(line: 586, column: 20, scope: !5925)
!5940 = !DILocation(line: 586, column: 25, scope: !5925)
!5941 = !DILocation(line: 586, column: 35, scope: !5925)
!5942 = !DILocation(line: 586, column: 10, scope: !5925)
!5943 = !DILocation(line: 586, column: 3, scope: !5925)
!5944 = !DILocation(line: 588, column: 20, scope: !5925)
!5945 = !DILocation(line: 588, column: 25, scope: !5925)
!5946 = !DILocation(line: 588, column: 35, scope: !5925)
!5947 = !DILocation(line: 588, column: 10, scope: !5925)
!5948 = !DILocation(line: 588, column: 3, scope: !5925)
!5949 = !DILocation(line: 590, column: 19, scope: !5925)
!5950 = !DILocation(line: 590, column: 24, scope: !5925)
!5951 = !DILocation(line: 590, column: 34, scope: !5925)
!5952 = !DILocation(line: 590, column: 10, scope: !5925)
!5953 = !DILocation(line: 590, column: 3, scope: !5925)
!5954 = !DILocation(line: 592, column: 2, scope: !5902)
!5955 = !DILocation(line: 593, column: 1, scope: !5902)
!5956 = distinct !DISubprogram(name: "tiocsctty", scope: !2, file: !2, line: 365, type: !5957, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5959)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!115, !3472, !569, !115}
!5959 = !{!5960, !5961, !5962, !5963, !5964}
!5960 = !DILocalVariable(name: "tty", arg: 1, scope: !5956, file: !2, line: 365, type: !3472)
!5961 = !DILocalVariable(name: "file", arg: 2, scope: !5956, file: !2, line: 365, type: !569)
!5962 = !DILocalVariable(name: "arg", arg: 3, scope: !5956, file: !2, line: 365, type: !115)
!5963 = !DILocalVariable(name: "ret", scope: !5956, file: !2, line: 367, type: !115)
!5964 = !DILabel(scope: !5956, name: "unlock", file: !2, line: 408)
!5965 = !DILocation(line: 365, column: 41, scope: !5956)
!5966 = !DILocation(line: 365, column: 59, scope: !5956)
!5967 = !DILocation(line: 365, column: 69, scope: !5956)
!5968 = !DILocation(line: 367, column: 2, scope: !5956)
!5969 = !DILocation(line: 367, column: 6, scope: !5956)
!5970 = !DILocation(line: 369, column: 11, scope: !5956)
!5971 = !DILocation(line: 369, column: 2, scope: !5956)
!5972 = !DILocation(line: 370, column: 2, scope: !5956)
!5973 = !DILocation(line: 372, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 372, column: 6)
!5975 = !DILocation(line: 372, column: 15, scope: !5974)
!5976 = !DILocation(line: 372, column: 23, scope: !5974)
!5977 = !DILocation(line: 372, column: 30, scope: !5974)
!5978 = !DILocation(line: 373, column: 17, scope: !5974)
!5979 = !DILocation(line: 373, column: 4, scope: !5974)
!5980 = !DILocation(line: 373, column: 29, scope: !5974)
!5981 = !DILocation(line: 373, column: 34, scope: !5974)
!5982 = !DILocation(line: 373, column: 39, scope: !5974)
!5983 = !DILocation(line: 373, column: 26, scope: !5974)
!5984 = !DILocation(line: 372, column: 6, scope: !5956)
!5985 = !DILocation(line: 374, column: 3, scope: !5974)
!5986 = !DILocation(line: 380, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 380, column: 6)
!5988 = !DILocation(line: 380, column: 16, scope: !5987)
!5989 = !DILocation(line: 380, column: 24, scope: !5987)
!5990 = !DILocation(line: 380, column: 31, scope: !5987)
!5991 = !DILocation(line: 380, column: 34, scope: !5987)
!5992 = !DILocation(line: 380, column: 43, scope: !5987)
!5993 = !DILocation(line: 380, column: 51, scope: !5987)
!5994 = !DILocation(line: 380, column: 6, scope: !5956)
!5995 = !DILocation(line: 381, column: 7, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 380, column: 56)
!5997 = !DILocation(line: 382, column: 3, scope: !5996)
!5998 = !DILocation(line: 385, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 385, column: 6)
!6000 = !DILocation(line: 385, column: 11, scope: !5999)
!6001 = !DILocation(line: 385, column: 16, scope: !5999)
!6002 = !DILocation(line: 385, column: 6, scope: !5956)
!6003 = !DILocation(line: 390, column: 7, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6005, file: !2, line: 390, column: 7)
!6005 = distinct !DILexicalBlock(scope: !5999, file: !2, line: 385, column: 25)
!6006 = !DILocation(line: 390, column: 11, scope: !6004)
!6007 = !DILocation(line: 390, column: 16, scope: !6004)
!6008 = !DILocation(line: 390, column: 19, scope: !6004)
!6009 = !DILocation(line: 390, column: 7, scope: !6005)
!6010 = !DILocation(line: 394, column: 22, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6004, file: !2, line: 390, column: 43)
!6012 = !DILocation(line: 394, column: 27, scope: !6011)
!6013 = !DILocation(line: 394, column: 32, scope: !6011)
!6014 = !DILocation(line: 394, column: 4, scope: !6011)
!6015 = !DILocation(line: 395, column: 3, scope: !6011)
!6016 = !DILocation(line: 396, column: 8, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6004, file: !2, line: 395, column: 10)
!6018 = !DILocation(line: 397, column: 4, scope: !6017)
!6019 = !DILocation(line: 399, column: 2, scope: !6005)
!6020 = !DILocation(line: 402, column: 7, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 402, column: 6)
!6022 = !DILocation(line: 402, column: 13, scope: !6021)
!6023 = !DILocation(line: 402, column: 20, scope: !6021)
!6024 = !DILocation(line: 402, column: 34, scope: !6021)
!6025 = !DILocation(line: 402, column: 39, scope: !6021)
!6026 = !DILocation(line: 402, column: 43, scope: !6021)
!6027 = !DILocation(line: 402, column: 6, scope: !5956)
!6028 = !DILocation(line: 403, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6021, file: !2, line: 402, column: 67)
!6030 = !DILocation(line: 404, column: 3, scope: !6029)
!6031 = !DILocation(line: 407, column: 15, scope: !5956)
!6032 = !DILocation(line: 407, column: 2, scope: !5956)
!6033 = !DILocation(line: 408, column: 1, scope: !5956)
!6034 = !DILocation(line: 409, column: 2, scope: !5956)
!6035 = !DILocation(line: 410, column: 13, scope: !5956)
!6036 = !DILocation(line: 410, column: 2, scope: !5956)
!6037 = !DILocation(line: 411, column: 9, scope: !5956)
!6038 = !DILocation(line: 412, column: 1, scope: !5956)
!6039 = !DILocation(line: 411, column: 2, scope: !5956)
!6040 = distinct !DISubprogram(name: "tiocgpgrp", scope: !2, file: !2, line: 466, type: !6041, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6044)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!115, !3472, !3472, !6043}
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!6044 = !{!6045, !6046, !6047, !6048, !6049, !6050, !6053, !6054, !6055, !6056}
!6045 = !DILocalVariable(name: "tty", arg: 1, scope: !6040, file: !2, line: 466, type: !3472)
!6046 = !DILocalVariable(name: "real_tty", arg: 2, scope: !6040, file: !2, line: 466, type: !3472)
!6047 = !DILocalVariable(name: "p", arg: 3, scope: !6040, file: !2, line: 466, type: !6043)
!6048 = !DILocalVariable(name: "pid", scope: !6040, file: !2, line: 468, type: !638)
!6049 = !DILocalVariable(name: "ret", scope: !6040, file: !2, line: 469, type: !115)
!6050 = !DILocalVariable(name: "__ret_pu", scope: !6051, file: !2, line: 477, type: !115)
!6051 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 477, column: 9)
!6052 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 477, column: 9)
!6053 = !DILocalVariable(name: "__ptr_pu", scope: !6051, file: !2, line: 477, type: !174)
!6054 = !DILocalVariable(name: "__val_pu", scope: !6051, file: !2, line: 477, type: !3319)
!6055 = !DILocalVariable(name: "__x", scope: !6051, file: !2, line: 477, type: !3319)
!6056 = !DILocalVariable(name: "__ptr", scope: !6051, file: !2, line: 477, type: !6043)
!6057 = !DILocation(line: 466, column: 41, scope: !6040)
!6058 = !DILocation(line: 466, column: 65, scope: !6040)
!6059 = !DILocation(line: 466, column: 89, scope: !6040)
!6060 = !DILocation(line: 468, column: 2, scope: !6040)
!6061 = !DILocation(line: 468, column: 14, scope: !6040)
!6062 = !DILocation(line: 469, column: 2, scope: !6040)
!6063 = !DILocation(line: 469, column: 6, scope: !6040)
!6064 = !DILocation(line: 474, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 474, column: 6)
!6066 = !DILocation(line: 474, column: 13, scope: !6065)
!6067 = !DILocation(line: 474, column: 10, scope: !6065)
!6068 = !DILocation(line: 474, column: 22, scope: !6065)
!6069 = !DILocation(line: 474, column: 25, scope: !6065)
!6070 = !DILocation(line: 474, column: 34, scope: !6065)
!6071 = !DILocation(line: 474, column: 42, scope: !6065)
!6072 = !DILocation(line: 474, column: 49, scope: !6065)
!6073 = !DILocation(line: 474, column: 46, scope: !6065)
!6074 = !DILocation(line: 474, column: 6, scope: !6040)
!6075 = !DILocation(line: 475, column: 3, scope: !6065)
!6076 = !DILocation(line: 476, column: 21, scope: !6040)
!6077 = !DILocation(line: 476, column: 8, scope: !6040)
!6078 = !DILocation(line: 476, column: 6, scope: !6040)
!6079 = !DILocation(line: 477, column: 9, scope: !6052)
!6080 = !DILocation(line: 477, column: 9, scope: !6051)
!6081 = !{i64 2154704290}
!6082 = !DILocation(line: 477, column: 9, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 477, column: 9)
!6084 = !DILocation(line: 477, column: 9, scope: !6040)
!6085 = !DILocation(line: 477, column: 6, scope: !6040)
!6086 = !DILocation(line: 478, column: 10, scope: !6040)
!6087 = !DILocation(line: 478, column: 2, scope: !6040)
!6088 = !DILocation(line: 479, column: 9, scope: !6040)
!6089 = !DILocation(line: 479, column: 2, scope: !6040)
!6090 = !DILocation(line: 480, column: 1, scope: !6040)
!6091 = distinct !DISubprogram(name: "tiocspgrp", scope: !2, file: !2, line: 493, type: !6041, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6092)
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098, !6099, !6103, !6104, !6106, !6107}
!6093 = !DILocalVariable(name: "tty", arg: 1, scope: !6091, file: !2, line: 493, type: !3472)
!6094 = !DILocalVariable(name: "real_tty", arg: 2, scope: !6091, file: !2, line: 493, type: !3472)
!6095 = !DILocalVariable(name: "p", arg: 3, scope: !6091, file: !2, line: 493, type: !6043)
!6096 = !DILocalVariable(name: "pgrp", scope: !6091, file: !2, line: 495, type: !638)
!6097 = !DILocalVariable(name: "pgrp_nr", scope: !6091, file: !2, line: 496, type: !3319)
!6098 = !DILocalVariable(name: "retval", scope: !6091, file: !2, line: 497, type: !115)
!6099 = !DILocalVariable(name: "__ret_gu", scope: !6100, file: !2, line: 504, type: !115)
!6100 = distinct !DILexicalBlock(scope: !6101, file: !2, line: 504, column: 6)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !2, line: 504, column: 6)
!6102 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 504, column: 6)
!6103 = !DILocalVariable(name: "__val_gu", scope: !6100, file: !2, line: 504, type: !13)
!6104 = !DILocalVariable(name: "__tmp", scope: !6105, file: !2, line: 504, type: !252)
!6105 = distinct !DILexicalBlock(scope: !6100, file: !2, line: 504, column: 6)
!6106 = !DILabel(scope: !6091, name: "out_unlock", file: !2, line: 527)
!6107 = !DILabel(scope: !6091, name: "out_unlock_ctrl", file: !2, line: 529)
!6108 = !DILocation(line: 493, column: 41, scope: !6091)
!6109 = !DILocation(line: 493, column: 65, scope: !6091)
!6110 = !DILocation(line: 493, column: 89, scope: !6091)
!6111 = !DILocation(line: 495, column: 2, scope: !6091)
!6112 = !DILocation(line: 495, column: 14, scope: !6091)
!6113 = !DILocation(line: 496, column: 2, scope: !6091)
!6114 = !DILocation(line: 496, column: 8, scope: !6091)
!6115 = !DILocation(line: 497, column: 2, scope: !6091)
!6116 = !DILocation(line: 497, column: 6, scope: !6091)
!6117 = !DILocation(line: 497, column: 32, scope: !6091)
!6118 = !DILocation(line: 497, column: 15, scope: !6091)
!6119 = !DILocation(line: 499, column: 6, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 499, column: 6)
!6121 = !DILocation(line: 499, column: 13, scope: !6120)
!6122 = !DILocation(line: 499, column: 6, scope: !6091)
!6123 = !DILocation(line: 500, column: 3, scope: !6120)
!6124 = !DILocation(line: 501, column: 6, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 501, column: 6)
!6126 = !DILocation(line: 501, column: 6, scope: !6091)
!6127 = !DILocation(line: 502, column: 10, scope: !6125)
!6128 = !DILocation(line: 502, column: 3, scope: !6125)
!6129 = !DILocation(line: 504, column: 6, scope: !6101)
!6130 = !DILocation(line: 504, column: 6, scope: !6100)
!6131 = !{i64 2154705146}
!6132 = !DILocation(line: 504, column: 6, scope: !6105)
!6133 = !DILocation(line: 504, column: 6, scope: !6102)
!6134 = !DILocation(line: 504, column: 6, scope: !6091)
!6135 = !DILocation(line: 505, column: 3, scope: !6102)
!6136 = !DILocation(line: 506, column: 6, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 506, column: 6)
!6138 = !DILocation(line: 506, column: 14, scope: !6137)
!6139 = !DILocation(line: 506, column: 6, scope: !6091)
!6140 = !DILocation(line: 507, column: 3, scope: !6137)
!6141 = !DILocation(line: 509, column: 17, scope: !6091)
!6142 = !DILocation(line: 509, column: 27, scope: !6091)
!6143 = !DILocation(line: 509, column: 32, scope: !6091)
!6144 = !DILocation(line: 509, column: 2, scope: !6091)
!6145 = !DILocation(line: 510, column: 7, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 510, column: 6)
!6147 = !DILocation(line: 510, column: 16, scope: !6146)
!6148 = !DILocation(line: 510, column: 24, scope: !6146)
!6149 = !DILocation(line: 510, column: 28, scope: !6146)
!6150 = !DILocation(line: 511, column: 7, scope: !6146)
!6151 = !DILocation(line: 511, column: 16, scope: !6146)
!6152 = !DILocation(line: 511, column: 24, scope: !6146)
!6153 = !DILocation(line: 511, column: 31, scope: !6146)
!6154 = !DILocation(line: 511, column: 28, scope: !6146)
!6155 = !DILocation(line: 511, column: 41, scope: !6146)
!6156 = !DILocation(line: 512, column: 7, scope: !6146)
!6157 = !DILocation(line: 512, column: 17, scope: !6146)
!6158 = !DILocation(line: 512, column: 22, scope: !6146)
!6159 = !DILocation(line: 512, column: 46, scope: !6146)
!6160 = !DILocation(line: 512, column: 33, scope: !6146)
!6161 = !DILocation(line: 512, column: 30, scope: !6146)
!6162 = !DILocation(line: 510, column: 6, scope: !6091)
!6163 = !DILocation(line: 513, column: 10, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6146, file: !2, line: 512, column: 57)
!6165 = !DILocation(line: 514, column: 3, scope: !6164)
!6166 = !DILocation(line: 516, column: 2, scope: !6091)
!6167 = !DILocation(line: 517, column: 19, scope: !6091)
!6168 = !DILocation(line: 517, column: 9, scope: !6091)
!6169 = !DILocation(line: 517, column: 7, scope: !6091)
!6170 = !DILocation(line: 518, column: 9, scope: !6091)
!6171 = !DILocation(line: 519, column: 7, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 519, column: 6)
!6173 = !DILocation(line: 519, column: 6, scope: !6091)
!6174 = !DILocation(line: 520, column: 3, scope: !6172)
!6175 = !DILocation(line: 521, column: 9, scope: !6091)
!6176 = !DILocation(line: 522, column: 22, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6091, file: !2, line: 522, column: 6)
!6178 = !DILocation(line: 522, column: 6, scope: !6177)
!6179 = !DILocation(line: 522, column: 44, scope: !6177)
!6180 = !DILocation(line: 522, column: 31, scope: !6177)
!6181 = !DILocation(line: 522, column: 28, scope: !6177)
!6182 = !DILocation(line: 522, column: 6, scope: !6091)
!6183 = !DILocation(line: 523, column: 3, scope: !6177)
!6184 = !DILocation(line: 524, column: 9, scope: !6091)
!6185 = !DILocation(line: 525, column: 10, scope: !6091)
!6186 = !DILocation(line: 525, column: 20, scope: !6091)
!6187 = !DILocation(line: 525, column: 25, scope: !6091)
!6188 = !DILocation(line: 525, column: 2, scope: !6091)
!6189 = !DILocation(line: 526, column: 32, scope: !6091)
!6190 = !DILocation(line: 526, column: 24, scope: !6091)
!6191 = !DILocation(line: 526, column: 2, scope: !6091)
!6192 = !DILocation(line: 526, column: 12, scope: !6091)
!6193 = !DILocation(line: 526, column: 17, scope: !6091)
!6194 = !DILocation(line: 526, column: 22, scope: !6091)
!6195 = !DILocation(line: 527, column: 1, scope: !6091)
!6196 = !DILocation(line: 528, column: 2, scope: !6091)
!6197 = !DILocation(line: 529, column: 1, scope: !6091)
!6198 = !DILocation(line: 530, column: 19, scope: !6091)
!6199 = !DILocation(line: 530, column: 29, scope: !6091)
!6200 = !DILocation(line: 530, column: 34, scope: !6091)
!6201 = !DILocation(line: 530, column: 2, scope: !6091)
!6202 = !DILocation(line: 531, column: 9, scope: !6091)
!6203 = !DILocation(line: 531, column: 2, scope: !6091)
!6204 = !DILocation(line: 532, column: 1, scope: !6091)
!6205 = distinct !DISubprogram(name: "tiocgsid", scope: !2, file: !2, line: 543, type: !6041, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6206)
!6206 = !{!6207, !6208, !6209, !6210, !6211, !6212, !6216, !6217, !6220, !6221, !6222, !6223, !6224}
!6207 = !DILocalVariable(name: "tty", arg: 1, scope: !6205, file: !2, line: 543, type: !3472)
!6208 = !DILocalVariable(name: "real_tty", arg: 2, scope: !6205, file: !2, line: 543, type: !3472)
!6209 = !DILocalVariable(name: "p", arg: 3, scope: !6205, file: !2, line: 543, type: !6043)
!6210 = !DILocalVariable(name: "flags", scope: !6205, file: !2, line: 545, type: !166)
!6211 = !DILocalVariable(name: "sid", scope: !6205, file: !2, line: 546, type: !3319)
!6212 = !DILocalVariable(name: "__dummy", scope: !6213, file: !2, line: 555, type: !166)
!6213 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 555, column: 2)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 555, column: 2)
!6215 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 555, column: 2)
!6216 = !DILocalVariable(name: "__dummy2", scope: !6213, file: !2, line: 555, type: !166)
!6217 = !DILocalVariable(name: "__ret_pu", scope: !6218, file: !2, line: 561, type: !115)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !2, line: 561, column: 9)
!6219 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 561, column: 9)
!6220 = !DILocalVariable(name: "__ptr_pu", scope: !6218, file: !2, line: 561, type: !174)
!6221 = !DILocalVariable(name: "__val_pu", scope: !6218, file: !2, line: 561, type: !3319)
!6222 = !DILocalVariable(name: "__x", scope: !6218, file: !2, line: 561, type: !3319)
!6223 = !DILocalVariable(name: "__ptr", scope: !6218, file: !2, line: 561, type: !6043)
!6224 = !DILabel(scope: !6205, name: "err", file: !2, line: 563)
!6225 = !DILocation(line: 543, column: 40, scope: !6205)
!6226 = !DILocation(line: 543, column: 64, scope: !6205)
!6227 = !DILocation(line: 543, column: 88, scope: !6205)
!6228 = !DILocation(line: 545, column: 2, scope: !6205)
!6229 = !DILocation(line: 545, column: 16, scope: !6205)
!6230 = !DILocation(line: 546, column: 2, scope: !6205)
!6231 = !DILocation(line: 546, column: 8, scope: !6205)
!6232 = !DILocation(line: 552, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 552, column: 6)
!6234 = !DILocation(line: 552, column: 13, scope: !6233)
!6235 = !DILocation(line: 552, column: 10, scope: !6233)
!6236 = !DILocation(line: 552, column: 22, scope: !6233)
!6237 = !DILocation(line: 552, column: 25, scope: !6233)
!6238 = !DILocation(line: 552, column: 34, scope: !6233)
!6239 = !DILocation(line: 552, column: 42, scope: !6233)
!6240 = !DILocation(line: 552, column: 49, scope: !6233)
!6241 = !DILocation(line: 552, column: 46, scope: !6233)
!6242 = !DILocation(line: 552, column: 6, scope: !6205)
!6243 = !DILocation(line: 553, column: 3, scope: !6233)
!6244 = !DILocation(line: 555, column: 2, scope: !6205)
!6245 = !DILocation(line: 555, column: 2, scope: !6215)
!6246 = !DILocation(line: 555, column: 2, scope: !6213)
!6247 = !DILocation(line: 555, column: 2, scope: !6214)
!6248 = !DILocation(line: 556, column: 7, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 556, column: 6)
!6250 = !DILocation(line: 556, column: 17, scope: !6249)
!6251 = !DILocation(line: 556, column: 22, scope: !6249)
!6252 = !DILocation(line: 556, column: 6, scope: !6205)
!6253 = !DILocation(line: 557, column: 3, scope: !6249)
!6254 = !DILocation(line: 558, column: 16, scope: !6205)
!6255 = !DILocation(line: 558, column: 26, scope: !6205)
!6256 = !DILocation(line: 558, column: 31, scope: !6205)
!6257 = !DILocation(line: 558, column: 8, scope: !6205)
!6258 = !DILocation(line: 558, column: 6, scope: !6205)
!6259 = !DILocation(line: 559, column: 26, scope: !6205)
!6260 = !DILocation(line: 559, column: 36, scope: !6205)
!6261 = !DILocation(line: 559, column: 41, scope: !6205)
!6262 = !DILocation(line: 559, column: 47, scope: !6205)
!6263 = !DILocation(line: 559, column: 2, scope: !6205)
!6264 = !DILocation(line: 561, column: 9, scope: !6219)
!6265 = !DILocation(line: 561, column: 9, scope: !6218)
!6266 = !{i64 2154707612}
!6267 = !DILocation(line: 561, column: 9, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 561, column: 9)
!6269 = !DILocation(line: 561, column: 9, scope: !6205)
!6270 = !DILocation(line: 561, column: 2, scope: !6205)
!6271 = !DILocation(line: 563, column: 1, scope: !6205)
!6272 = !DILocation(line: 564, column: 26, scope: !6205)
!6273 = !DILocation(line: 564, column: 36, scope: !6205)
!6274 = !DILocation(line: 564, column: 41, scope: !6205)
!6275 = !DILocation(line: 564, column: 47, scope: !6205)
!6276 = !DILocation(line: 564, column: 2, scope: !6205)
!6277 = !DILocation(line: 565, column: 2, scope: !6205)
!6278 = !DILocation(line: 566, column: 1, scope: !6205)
!6279 = !DISubprogram(name: "__rcu_read_lock", scope: !5118, file: !5118, line: 74, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6280 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5138, file: !5138, line: 43, type: !6281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{null, !5141, !166}
!6283 = distinct !DISubprogram(name: "sigismember", scope: !5653, file: !5653, line: 82, type: !6284, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6287)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!115, !6286, !115}
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!6287 = !{!6288, !6289, !6290}
!6288 = !DILocalVariable(name: "set", arg: 1, scope: !6283, file: !5653, line: 82, type: !6286)
!6289 = !DILocalVariable(name: "_sig", arg: 2, scope: !6283, file: !5653, line: 82, type: !115)
!6290 = !DILocalVariable(name: "sig", scope: !6283, file: !5653, line: 84, type: !166)
!6291 = !DILocation(line: 82, column: 41, scope: !6283)
!6292 = !DILocation(line: 82, column: 50, scope: !6283)
!6293 = !DILocation(line: 84, column: 2, scope: !6283)
!6294 = !DILocation(line: 84, column: 16, scope: !6283)
!6295 = !DILocation(line: 84, column: 22, scope: !6283)
!6296 = !DILocation(line: 84, column: 27, scope: !6283)
!6297 = !DILocation(line: 86, column: 15, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6283, file: !5653, line: 85, column: 6)
!6299 = !DILocation(line: 86, column: 20, scope: !6298)
!6300 = !DILocation(line: 86, column: 30, scope: !6298)
!6301 = !DILocation(line: 86, column: 27, scope: !6298)
!6302 = !DILocation(line: 86, column: 12, scope: !6298)
!6303 = !DILocation(line: 86, column: 10, scope: !6298)
!6304 = !DILocation(line: 89, column: 1, scope: !6283)
!6305 = !DILocation(line: 86, column: 3, scope: !6298)
!6306 = distinct !DISubprogram(name: "set_bit", scope: !6307, file: !6307, line: 26, type: !6308, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6312)
!6307 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6308 = !DISubroutineType(types: !6309)
!6309 = !{null, !1064, !6310}
!6310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6311, size: 64)
!6311 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!6312 = !{!6313, !6314}
!6313 = !DILocalVariable(name: "nr", arg: 1, scope: !6306, file: !6307, line: 26, type: !1064)
!6314 = !DILocalVariable(name: "addr", arg: 2, scope: !6306, file: !6307, line: 26, type: !6310)
!6315 = !DILocation(line: 26, column: 42, scope: !6306)
!6316 = !DILocation(line: 26, column: 70, scope: !6306)
!6317 = !DILocation(line: 28, column: 26, scope: !6306)
!6318 = !DILocation(line: 28, column: 33, scope: !6306)
!6319 = !DILocation(line: 28, column: 31, scope: !6306)
!6320 = !DILocation(line: 28, column: 2, scope: !6306)
!6321 = !DILocation(line: 29, column: 15, scope: !6306)
!6322 = !DILocation(line: 29, column: 19, scope: !6306)
!6323 = !DILocation(line: 29, column: 2, scope: !6306)
!6324 = !DILocation(line: 30, column: 1, scope: !6306)
!6325 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6326, file: !6326, line: 80, type: !6327, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6332)
!6326 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6327 = !DISubroutineType(types: !6328)
!6328 = !{null, !6329, !1106}
!6329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6330, size: 64)
!6330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6331)
!6331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6332 = !{!6333, !6334}
!6333 = !DILocalVariable(name: "v", arg: 1, scope: !6325, file: !6326, line: 80, type: !6329)
!6334 = !DILocalVariable(name: "size", arg: 2, scope: !6325, file: !6326, line: 80, type: !1106)
!6335 = !DILocation(line: 80, column: 74, scope: !6325)
!6336 = !DILocation(line: 80, column: 84, scope: !6325)
!6337 = !DILocation(line: 82, column: 20, scope: !6325)
!6338 = !DILocation(line: 82, column: 23, scope: !6325)
!6339 = !DILocation(line: 82, column: 2, scope: !6325)
!6340 = !DILocation(line: 83, column: 2, scope: !6325)
!6341 = !DILocation(line: 84, column: 1, scope: !6325)
!6342 = distinct !DISubprogram(name: "arch_set_bit", scope: !6343, file: !6343, line: 52, type: !6308, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6344)
!6343 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "nr", arg: 1, scope: !6342, file: !6343, line: 52, type: !1064)
!6346 = !DILocalVariable(name: "addr", arg: 2, scope: !6342, file: !6343, line: 52, type: !6310)
!6347 = !DILocation(line: 52, column: 19, scope: !6342)
!6348 = !DILocation(line: 52, column: 47, scope: !6342)
!6349 = !DILocation(line: 54, column: 27, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6342, file: !6343, line: 54, column: 6)
!6351 = !DILocation(line: 54, column: 6, scope: !6350)
!6352 = !DILocation(line: 54, column: 6, scope: !6342)
!6353 = !DILocation(line: 56, column: 6, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6350, file: !6343, line: 54, column: 32)
!6355 = !DILocation(line: 57, column: 12, scope: !6354)
!6356 = !DILocation(line: 55, column: 3, scope: !6354)
!6357 = !{i64 2148387822, i64 2148387861, i64 2148387882, i64 2148387919, i64 2148387942, i64 2148387812}
!6358 = !DILocation(line: 59, column: 2, scope: !6354)
!6359 = !DILocation(line: 61, column: 8, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6350, file: !6343, line: 59, column: 9)
!6361 = !DILocation(line: 61, column: 32, scope: !6360)
!6362 = !DILocation(line: 60, column: 3, scope: !6360)
!6363 = !{i64 2148388107, i64 2148388146, i64 2148388167, i64 2148388204, i64 2148388227, i64 2148388097}
!6364 = !DILocation(line: 63, column: 1, scope: !6342)
!6365 = distinct !DISubprogram(name: "kasan_check_write", scope: !6366, file: !6366, line: 44, type: !6367, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6369)
!6366 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!790, !6329, !13}
!6369 = !{!6370, !6371}
!6370 = !DILocalVariable(name: "p", arg: 1, scope: !6365, file: !6366, line: 44, type: !6329)
!6371 = !DILocalVariable(name: "size", arg: 2, scope: !6365, file: !6366, line: 44, type: !13)
!6372 = !DILocation(line: 44, column: 59, scope: !6365)
!6373 = !DILocation(line: 44, column: 75, scope: !6365)
!6374 = !DILocation(line: 46, column: 2, scope: !6365)
!6375 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6376, file: !6376, line: 229, type: !6377, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6379)
!6376 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6377 = !DISubroutineType(types: !6378)
!6378 = !{null, !6329, !1106, !115}
!6379 = !{!6380, !6381, !6382}
!6380 = !DILocalVariable(name: "ptr", arg: 1, scope: !6375, file: !6376, line: 229, type: !6329)
!6381 = !DILocalVariable(name: "size", arg: 2, scope: !6375, file: !6376, line: 229, type: !1106)
!6382 = !DILocalVariable(name: "type", arg: 3, scope: !6375, file: !6376, line: 230, type: !115)
!6383 = !DILocation(line: 229, column: 60, scope: !6375)
!6384 = !DILocation(line: 229, column: 72, scope: !6375)
!6385 = !DILocation(line: 230, column: 15, scope: !6375)
!6386 = !DILocation(line: 230, column: 23, scope: !6375)
!6387 = !DISubprogram(name: "__rcu_read_unlock", scope: !5118, file: !5118, line: 75, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6388 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5138, file: !5138, line: 29, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6389 = !DISubroutineType(types: !6390)
!6390 = !{null, !5141}
!6391 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5138, file: !5138, line: 41, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6392 = distinct !DISubprogram(name: "kref_get", scope: !2004, file: !2004, line: 43, type: !6393, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6396)
!6393 = !DISubroutineType(types: !6394)
!6394 = !{null, !6395}
!6395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!6396 = !{!6397}
!6397 = !DILocalVariable(name: "kref", arg: 1, scope: !6392, file: !2004, line: 43, type: !6395)
!6398 = !DILocation(line: 43, column: 42, scope: !6392)
!6399 = !DILocation(line: 45, column: 16, scope: !6392)
!6400 = !DILocation(line: 45, column: 22, scope: !6392)
!6401 = !DILocation(line: 45, column: 2, scope: !6392)
!6402 = !DILocation(line: 46, column: 1, scope: !6392)
!6403 = distinct !DISubprogram(name: "refcount_inc", scope: !153, file: !153, line: 265, type: !6404, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6407)
!6404 = !DISubroutineType(types: !6405)
!6405 = !{null, !6406}
!6406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!6407 = !{!6408}
!6408 = !DILocalVariable(name: "r", arg: 1, scope: !6403, file: !153, line: 265, type: !6406)
!6409 = !DILocation(line: 265, column: 45, scope: !6403)
!6410 = !DILocation(line: 267, column: 17, scope: !6403)
!6411 = !DILocation(line: 267, column: 2, scope: !6403)
!6412 = !DILocation(line: 268, column: 1, scope: !6403)
!6413 = distinct !DISubprogram(name: "__refcount_inc", scope: !153, file: !153, line: 248, type: !6414, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6416)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{null, !6406, !2155}
!6416 = !{!6417, !6418}
!6417 = !DILocalVariable(name: "r", arg: 1, scope: !6413, file: !153, line: 248, type: !6406)
!6418 = !DILocalVariable(name: "oldp", arg: 2, scope: !6413, file: !153, line: 248, type: !2155)
!6419 = !DILocation(line: 248, column: 47, scope: !6413)
!6420 = !DILocation(line: 248, column: 55, scope: !6413)
!6421 = !DILocation(line: 250, column: 20, scope: !6413)
!6422 = !DILocation(line: 250, column: 23, scope: !6413)
!6423 = !DILocation(line: 250, column: 2, scope: !6413)
!6424 = !DILocation(line: 251, column: 1, scope: !6413)
!6425 = distinct !DISubprogram(name: "__refcount_add", scope: !153, file: !153, line: 191, type: !6426, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6428)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{null, !115, !6406, !2155}
!6428 = !{!6429, !6430, !6431, !6432}
!6429 = !DILocalVariable(name: "i", arg: 1, scope: !6425, file: !153, line: 191, type: !115)
!6430 = !DILocalVariable(name: "r", arg: 2, scope: !6425, file: !153, line: 191, type: !6406)
!6431 = !DILocalVariable(name: "oldp", arg: 3, scope: !6425, file: !153, line: 191, type: !2155)
!6432 = !DILocalVariable(name: "old", scope: !6425, file: !153, line: 193, type: !115)
!6433 = !DILocation(line: 191, column: 39, scope: !6425)
!6434 = !DILocation(line: 191, column: 54, scope: !6425)
!6435 = !DILocation(line: 191, column: 62, scope: !6425)
!6436 = !DILocation(line: 193, column: 2, scope: !6425)
!6437 = !DILocation(line: 193, column: 6, scope: !6425)
!6438 = !DILocation(line: 193, column: 37, scope: !6425)
!6439 = !DILocation(line: 193, column: 41, scope: !6425)
!6440 = !DILocation(line: 193, column: 44, scope: !6425)
!6441 = !DILocation(line: 193, column: 12, scope: !6425)
!6442 = !DILocation(line: 195, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6425, file: !153, line: 195, column: 6)
!6444 = !DILocation(line: 195, column: 6, scope: !6425)
!6445 = !DILocation(line: 196, column: 11, scope: !6443)
!6446 = !DILocation(line: 196, column: 4, scope: !6443)
!6447 = !DILocation(line: 196, column: 9, scope: !6443)
!6448 = !DILocation(line: 196, column: 3, scope: !6443)
!6449 = !DILocation(line: 198, column: 6, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6425, file: !153, line: 198, column: 6)
!6451 = !DILocation(line: 198, column: 6, scope: !6425)
!6452 = !DILocation(line: 199, column: 26, scope: !6450)
!6453 = !DILocation(line: 199, column: 3, scope: !6450)
!6454 = !DILocation(line: 200, column: 11, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6450, file: !153, line: 200, column: 11)
!6456 = !DILocation(line: 200, column: 11, scope: !6450)
!6457 = !DILocation(line: 201, column: 26, scope: !6455)
!6458 = !DILocation(line: 201, column: 3, scope: !6455)
!6459 = !DILocation(line: 202, column: 1, scope: !6425)
!6460 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6461, file: !6461, line: 250, type: !6462, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6465)
!6461 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6462 = !DISubroutineType(types: !6463)
!6463 = !{!115, !115, !6464}
!6464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!6465 = !{!6466, !6467}
!6466 = !DILocalVariable(name: "i", arg: 1, scope: !6460, file: !6461, line: 250, type: !115)
!6467 = !DILocalVariable(name: "v", arg: 2, scope: !6460, file: !6461, line: 250, type: !6464)
!6468 = !DILocation(line: 250, column: 30, scope: !6460)
!6469 = !DILocation(line: 250, column: 43, scope: !6460)
!6470 = !DILocation(line: 252, column: 31, scope: !6460)
!6471 = !DILocation(line: 252, column: 2, scope: !6460)
!6472 = !DILocation(line: 253, column: 38, scope: !6460)
!6473 = !DILocation(line: 253, column: 41, scope: !6460)
!6474 = !DILocation(line: 253, column: 9, scope: !6460)
!6475 = !DILocation(line: 253, column: 2, scope: !6460)
!6476 = !DISubprogram(name: "refcount_warn_saturate", scope: !153, file: !153, line: 127, type: !6477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{null, !6406, !152}
!6479 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6326, file: !6326, line: 94, type: !6327, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6480)
!6480 = !{!6481, !6482}
!6481 = !DILocalVariable(name: "v", arg: 1, scope: !6479, file: !6326, line: 94, type: !6329)
!6482 = !DILocalVariable(name: "size", arg: 2, scope: !6479, file: !6326, line: 94, type: !1106)
!6483 = !DILocation(line: 94, column: 79, scope: !6479)
!6484 = !DILocation(line: 94, column: 89, scope: !6479)
!6485 = !DILocation(line: 96, column: 20, scope: !6479)
!6486 = !DILocation(line: 96, column: 23, scope: !6479)
!6487 = !DILocation(line: 96, column: 2, scope: !6479)
!6488 = !DILocation(line: 97, column: 2, scope: !6479)
!6489 = !DILocation(line: 98, column: 1, scope: !6479)
!6490 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6491, file: !6491, line: 731, type: !6462, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6492)
!6491 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6492 = !{!6493, !6494}
!6493 = !DILocalVariable(name: "i", arg: 1, scope: !6490, file: !6491, line: 731, type: !115)
!6494 = !DILocalVariable(name: "v", arg: 2, scope: !6490, file: !6491, line: 731, type: !6464)
!6495 = !DILocation(line: 731, column: 34, scope: !6490)
!6496 = !DILocation(line: 731, column: 47, scope: !6490)
!6497 = !DILocation(line: 736, column: 31, scope: !6490)
!6498 = !DILocation(line: 736, column: 34, scope: !6490)
!6499 = !DILocation(line: 736, column: 9, scope: !6490)
!6500 = !DILocation(line: 736, column: 2, scope: !6490)
!6501 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6502, file: !6502, line: 95, type: !6462, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6503)
!6502 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6503 = !{!6504, !6505, !6506}
!6504 = !DILocalVariable(name: "i", arg: 1, scope: !6501, file: !6502, line: 95, type: !115)
!6505 = !DILocalVariable(name: "v", arg: 2, scope: !6501, file: !6502, line: 95, type: !6464)
!6506 = !DILocalVariable(name: "__ret", scope: !6507, file: !6502, line: 97, type: !115)
!6507 = distinct !DILexicalBlock(scope: !6501, file: !6502, line: 97, column: 9)
!6508 = !DILocation(line: 95, column: 54, scope: !6501)
!6509 = !DILocation(line: 95, column: 67, scope: !6501)
!6510 = !DILocation(line: 97, column: 9, scope: !6507)
!6511 = !{i64 2148800765, i64 2148800804, i64 2148800825, i64 2148800862, i64 2148800885, i64 2148800894}
!6512 = !DILocation(line: 97, column: 9, scope: !6501)
!6513 = !DILocation(line: 97, column: 2, scope: !6501)
!6514 = !DISubprogram(name: "_raw_spin_lock", scope: !5138, file: !5138, line: 22, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6515 = !DISubprogram(name: "_raw_spin_unlock", scope: !5138, file: !5138, line: 39, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6516 = !DISubprogram(name: "capable", scope: !705, file: !705, line: 148, type: !6517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{!790, !115}
!6519 = distinct !DISubprogram(name: "proc_set_tty", scope: !2, file: !2, line: 122, type: !4124, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6520)
!6520 = !{!6521}
!6521 = !DILocalVariable(name: "tty", arg: 1, scope: !6519, file: !2, line: 122, type: !3472)
!6522 = !DILocation(line: 122, column: 45, scope: !6519)
!6523 = !DILocation(line: 124, column: 17, scope: !6519)
!6524 = !DILocation(line: 124, column: 26, scope: !6519)
!6525 = !DILocation(line: 124, column: 35, scope: !6519)
!6526 = !DILocation(line: 124, column: 2, scope: !6519)
!6527 = !DILocation(line: 125, column: 17, scope: !6519)
!6528 = !DILocation(line: 125, column: 2, scope: !6519)
!6529 = !DILocation(line: 126, column: 19, scope: !6519)
!6530 = !DILocation(line: 126, column: 28, scope: !6519)
!6531 = !DILocation(line: 126, column: 37, scope: !6519)
!6532 = !DILocation(line: 126, column: 2, scope: !6519)
!6533 = !DILocation(line: 127, column: 1, scope: !6519)
!6534 = distinct !DISubprogram(name: "might_fault", scope: !6535, file: !6535, line: 202, type: !2373, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6535 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6536 = !DILocation(line: 202, column: 40, scope: !6534)
!6537 = !DISubprogram(name: "pid_vnr", scope: !25, file: !25, line: 191, type: !6538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!3319, !638}
!6540 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6541, file: !6541, line: 76, type: !6542, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6544)
!6541 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6542 = !DISubroutineType(types: !6543)
!6543 = !{null, !174, !1848, !1106, !1106}
!6544 = !{!6545, !6546, !6547, !6548}
!6545 = !DILocalVariable(name: "to", arg: 1, scope: !6540, file: !6541, line: 76, type: !174)
!6546 = !DILocalVariable(name: "from", arg: 2, scope: !6540, file: !6541, line: 76, type: !1848)
!6547 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6540, file: !6541, line: 77, type: !1106)
!6548 = !DILocalVariable(name: "left", arg: 4, scope: !6540, file: !6541, line: 77, type: !1106)
!6549 = !DILocation(line: 76, column: 52, scope: !6540)
!6550 = !DILocation(line: 76, column: 68, scope: !6540)
!6551 = !DILocation(line: 77, column: 18, scope: !6540)
!6552 = !DILocation(line: 77, column: 34, scope: !6540)
!6553 = !DILocation(line: 79, column: 1, scope: !6540)
!6554 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6541, file: !6541, line: 70, type: !6555, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6557)
!6555 = !DISubroutineType(types: !6556)
!6556 = !{null, !1848, !1106}
!6557 = !{!6558, !6559}
!6558 = !DILocalVariable(name: "address", arg: 1, scope: !6554, file: !6541, line: 70, type: !1848)
!6559 = !DILocalVariable(name: "size", arg: 2, scope: !6554, file: !6541, line: 70, type: !1106)
!6560 = !DILocation(line: 70, column: 54, scope: !6554)
!6561 = !DILocation(line: 70, column: 70, scope: !6554)
!6562 = !DILocation(line: 72, column: 1, scope: !6554)
!6563 = !DISubprogram(name: "find_vpid", scope: !25, file: !25, line: 129, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!638, !115}
!6566 = distinct !DISubprogram(name: "session_of_pgrp", scope: !2, file: !2, line: 441, type: !5664, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6567)
!6567 = !{!6568, !6569, !6570}
!6568 = !DILocalVariable(name: "pgrp", arg: 1, scope: !6566, file: !2, line: 441, type: !638)
!6569 = !DILocalVariable(name: "p", scope: !6566, file: !2, line: 443, type: !186)
!6570 = !DILocalVariable(name: "sid", scope: !6566, file: !2, line: 444, type: !638)
!6571 = !DILocation(line: 441, column: 48, scope: !6566)
!6572 = !DILocation(line: 443, column: 2, scope: !6566)
!6573 = !DILocation(line: 443, column: 22, scope: !6566)
!6574 = !DILocation(line: 444, column: 2, scope: !6566)
!6575 = !DILocation(line: 444, column: 14, scope: !6566)
!6576 = !DILocation(line: 446, column: 15, scope: !6566)
!6577 = !DILocation(line: 446, column: 6, scope: !6566)
!6578 = !DILocation(line: 446, column: 4, scope: !6566)
!6579 = !DILocation(line: 447, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6566, file: !2, line: 447, column: 6)
!6581 = !DILocation(line: 447, column: 8, scope: !6580)
!6582 = !DILocation(line: 447, column: 6, scope: !6566)
!6583 = !DILocation(line: 448, column: 16, scope: !6580)
!6584 = !DILocation(line: 448, column: 7, scope: !6580)
!6585 = !DILocation(line: 448, column: 5, scope: !6580)
!6586 = !DILocation(line: 448, column: 3, scope: !6580)
!6587 = !DILocation(line: 449, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6566, file: !2, line: 449, column: 6)
!6589 = !DILocation(line: 449, column: 8, scope: !6588)
!6590 = !DILocation(line: 449, column: 6, scope: !6566)
!6591 = !DILocation(line: 450, column: 22, scope: !6588)
!6592 = !DILocation(line: 450, column: 9, scope: !6588)
!6593 = !DILocation(line: 450, column: 7, scope: !6588)
!6594 = !DILocation(line: 450, column: 3, scope: !6588)
!6595 = !DILocation(line: 452, column: 9, scope: !6566)
!6596 = !DILocation(line: 453, column: 1, scope: !6566)
!6597 = !DILocation(line: 452, column: 2, scope: !6566)
!6598 = !DISubprogram(name: "pid_task", scope: !25, file: !25, line: 93, type: !6599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{!186, !638, !24}
