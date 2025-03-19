; ModuleID = 'kernel/power/process.c'
source_filename = "kernel/power/process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%struct.atomic_t = type { i32 }
%union.anon.13 = type { i64 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
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
%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.24 }
%union.anon.24 = type { i64 }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }

@freeze_timeout_msecs = hidden global i32 20000, section ".data..read_mostly", align 4, !dbg !0
@pm_freezing = external dso_local global i8, align 1
@freezer_active = external dso_local global %struct.static_key_false, align 8
@.str = private unnamed_addr constant [23 x i8] c"kernel/power/process.c\00", align 1, !dbg !6237
@pm_nosig_freezing = external dso_local global i8, align 1
@thaw_processes.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 8, !dbg !6247
@.str.1 = private unnamed_addr constant [15 x i8] c"thaw_processes\00", align 1, !dbg !6242
@.str.2 = private unnamed_addr constant [24 x i8] c"\016Restarting tasks ... \00", align 1, !dbg !6275
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@.str.3 = private unnamed_addr constant [9 x i8] c"\01cdone.\0A\00", align 1, !dbg !6280
@thaw_processes.___tp_str.4 = internal global ptr @.str.1, section "__tracepoint_str", align 8, !dbg !6285
@.str.5 = private unnamed_addr constant [33 x i8] c"\016Restarting kernel threads ... \00", align 1, !dbg !6287
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.6 = private unnamed_addr constant [21 x i8] c"user space processes\00", align 1, !dbg !6292
@.str.7 = private unnamed_addr constant [26 x i8] c"remaining freezable tasks\00", align 1, !dbg !6297
@.str.8 = private unnamed_addr constant [15 x i8] c"\016Freezing %s\0A\00", align 1, !dbg !6302
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [83 x i8] c"\013Freezing %s %s after %d.%03d seconds (%d tasks refusing to freeze, wq_busy=%d):\0A\00", align 1, !dbg !6304
@.str.10 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1, !dbg !6309
@.str.11 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !6311
@pm_debug_messages_on = external dso_local global i8, align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\016Freezing %s completed (elapsed %d.%03d seconds)\0A\00", align 1, !dbg !6314
@.str.13 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !6319
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"include/trace/events/power.h\00", align 1, !dbg !6324
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433 = internal global ptr @__SCK__tp_func_suspend_resume, section ".discard.addressable", align 8, !dbg !6330
@__SCK__tp_func_suspend_resume = external dso_local global %struct.static_call_key, align 8
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6360
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @thaw_processes.___tp_str, ptr @thaw_processes.___tp_str.4, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @freeze_processes() #0 align 16 !dbg !6372 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6374, metadata !DIExpression()), !dbg !6376
  %call = call i32 @__usermodehelper_disable(i32 noundef 1) #13, !dbg !6377
  store i32 %call, ptr %error, align 4, !dbg !6378
  %0 = load i32, ptr %error, align 4, !dbg !6379
  %tobool = icmp ne i32 %0, 0, !dbg !6379
  br i1 %tobool, label %if.then, label %if.end, !dbg !6381

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %error, align 4, !dbg !6382
  store i32 %1, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

if.end:                                           ; preds = %entry
  %call1 = call ptr @get_current() #13, !dbg !6384
  %flags = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 4, !dbg !6385
  %2 = load i32, ptr %flags, align 4, !dbg !6386
  %or = or i32 %2, -2147483648, !dbg !6386
  store i32 %or, ptr %flags, align 4, !dbg !6386
  %3 = load i8, ptr @pm_freezing, align 1, !dbg !6387, !range !6389, !noundef !663
  %tobool2 = trunc i8 %3 to i1, !dbg !6387
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6390

if.then3:                                         ; preds = %if.end
  %call4 = call zeroext i1 @static_key_slow_inc(ptr noundef @freezer_active) #13, !dbg !6391
  br label %if.end5, !dbg !6391

if.end5:                                          ; preds = %if.then3, %if.end
  call void @pm_wakeup_clear(i32 noundef 0) #13, !dbg !6392
  store i8 1, ptr @pm_freezing, align 1, !dbg !6393
  %call6 = call i32 @try_to_freeze_tasks(i1 noundef zeroext true) #13, !dbg !6394
  store i32 %call6, ptr %error, align 4, !dbg !6395
  %4 = load i32, ptr %error, align 4, !dbg !6396
  %tobool7 = icmp ne i32 %4, 0, !dbg !6396
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6398

if.then8:                                         ; preds = %if.end5
  call void @__usermodehelper_set_disable_depth(i32 noundef 2) #13, !dbg !6399
  br label %if.end9, !dbg !6399

if.end9:                                          ; preds = %if.then8, %if.end5
  br label %do.body, !dbg !6400

do.body:                                          ; preds = %if.end9
  %call10 = call i32 @preempt_count() #13, !dbg !6401
  %cmp = icmp ne i32 %call10, 0, !dbg !6401
  %lnot = xor i1 %cmp, true, !dbg !6401
  %lnot11 = xor i1 %lnot, true, !dbg !6401
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !6401
  %conv = sext i32 %lnot.ext to i64, !dbg !6401
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6401
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6401
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !6404

if.then13:                                        ; preds = %do.body
  br label %do.body14, !dbg !6401

do.body14:                                        ; preds = %if.then13
  br label %do.body15, !dbg !6405

do.body15:                                        ; preds = %do.body14
  br label %do.cond, !dbg !6407

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !6407

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !6405

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 141, i32 0, i64 12) #12, !dbg !6409, !srcloc !6411
  br label %do.cond17, !dbg !6409

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6409

do.end18:                                         ; preds = %do.cond17
  unreachable, !dbg !6405

do.cond19:                                        ; No predecessors!
  br label %do.end20, !dbg !6405

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !6405

if.end21:                                         ; preds = %do.end20, %do.body
  br label %do.cond22, !dbg !6404

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !6404

do.end23:                                         ; preds = %do.cond22
  %5 = load i32, ptr %error, align 4, !dbg !6412
  %tobool24 = icmp ne i32 %5, 0, !dbg !6412
  br i1 %tobool24, label %if.end28, label %land.lhs.true, !dbg !6414

land.lhs.true:                                    ; preds = %do.end23
  %6 = load i32, ptr @freeze_timeout_msecs, align 4, !dbg !6415
  %call25 = call i64 @msecs_to_jiffies(i32 noundef %6) #13, !dbg !6416
  %call26 = call zeroext i1 @oom_killer_disable(i64 noundef %call25) #13, !dbg !6417
  br i1 %call26, label %if.end28, label %if.then27, !dbg !6418

if.then27:                                        ; preds = %land.lhs.true
  store i32 -16, ptr %error, align 4, !dbg !6419
  br label %if.end28, !dbg !6420

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %do.end23
  %7 = load i32, ptr %error, align 4, !dbg !6421
  %tobool29 = icmp ne i32 %7, 0, !dbg !6421
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6423

if.then30:                                        ; preds = %if.end28
  call void @thaw_processes() #13, !dbg !6424
  br label %if.end31, !dbg !6424

if.end31:                                         ; preds = %if.then30, %if.end28
  %8 = load i32, ptr %error, align 4, !dbg !6425
  store i32 %8, ptr %retval, align 4, !dbg !6426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6426

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6427
  %9 = load i32, ptr %retval, align 4, !dbg !6427
  ret i32 %9, !dbg !6427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6428 dso_local i32 @__usermodehelper_disable(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6431 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6436, metadata !DIExpression()), !dbg !6442
  br label %do.body, !dbg !6442

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6438, metadata !DIExpression()), !dbg !6443
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6443
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6442
  br label %do.cond, !dbg !6443

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6443

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !6444
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6440, metadata !DIExpression()), !dbg !6444
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !6444, !srcloc !6445
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6444
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6444
  %3 = inttoptr i64 %2 to ptr, !dbg !6444
  store ptr %3, ptr %tmp, align 8, !dbg !6444
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !6442
  %4 = load ptr, ptr %tmp, align 8, !dbg !6444
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6442
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6442
  store ptr %5, ptr %tmp1, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6446
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6442
  ret ptr %6, !dbg !6447
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6448 dso_local zeroext i1 @static_key_slow_inc(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6452 dso_local void @pm_wakeup_clear(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_to_freeze_tasks(i1 noundef zeroext %user_only) #0 align 16 !dbg !6456 {
entry:
  %user_only.addr = alloca i8, align 1
  %what = alloca ptr, align 8
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  %end_time = alloca i64, align 8
  %todo = alloca i32, align 4
  %wq_busy = alloca i8, align 1
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %elapsed = alloca i64, align 8
  %elapsed_msecs = alloca i32, align 4
  %wakeup = alloca i8, align 1
  %sleep_usecs = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr27 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %tmp69 = alloca i32, align 4
  %__mptr89 = alloca ptr, align 8
  %tmp93 = alloca ptr, align 8
  %tmp96 = alloca ptr, align 8
  %__mptr101 = alloca ptr, align 8
  %tmp105 = alloca ptr, align 8
  %tmp109 = alloca ptr, align 8
  %__mptr128 = alloca ptr, align 8
  %tmp132 = alloca ptr, align 8
  %tmp135 = alloca ptr, align 8
  %tmp143 = alloca i32, align 4
  %frombool = zext i1 %user_only to i8
  store i8 %frombool, ptr %user_only.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %user_only.addr, metadata !6460, metadata !DIExpression()), !dbg !6498
  call void @llvm.lifetime.start.p0(i64 8, ptr %what) #12, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %what, metadata !6461, metadata !DIExpression()), !dbg !6500
  %0 = load i8, ptr %user_only.addr, align 1, !dbg !6501, !range !6389, !noundef !663
  %tobool = trunc i8 %0 to i1, !dbg !6501
  %1 = zext i1 %tobool to i64, !dbg !6501
  %cond = select i1 %tobool, ptr @.str.6, ptr @.str.7, !dbg !6501
  store ptr %cond, ptr %what, align 8, !dbg !6500
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #12, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6462, metadata !DIExpression()), !dbg !6503
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6463, metadata !DIExpression()), !dbg !6504
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_time) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %end_time, metadata !6464, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 4, ptr %todo) #12, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %todo, metadata !6465, metadata !DIExpression()), !dbg !6508
  call void @llvm.lifetime.start.p0(i64 1, ptr %wq_busy) #12, !dbg !6509
  call void @llvm.dbg.declare(metadata ptr %wq_busy, metadata !6466, metadata !DIExpression()), !dbg !6510
  store i8 0, ptr %wq_busy, align 1, !dbg !6510
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #12, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6467, metadata !DIExpression()), !dbg !6512
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #12, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6468, metadata !DIExpression()), !dbg !6513
  call void @llvm.lifetime.start.p0(i64 8, ptr %elapsed) #12, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %elapsed, metadata !6469, metadata !DIExpression()), !dbg !6514
  call void @llvm.lifetime.start.p0(i64 4, ptr %elapsed_msecs) #12, !dbg !6515
  call void @llvm.dbg.declare(metadata ptr %elapsed_msecs, metadata !6470, metadata !DIExpression()), !dbg !6516
  call void @llvm.lifetime.start.p0(i64 1, ptr %wakeup) #12, !dbg !6517
  call void @llvm.dbg.declare(metadata ptr %wakeup, metadata !6471, metadata !DIExpression()), !dbg !6518
  store i8 0, ptr %wakeup, align 1, !dbg !6518
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_usecs) #12, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %sleep_usecs, metadata !6472, metadata !DIExpression()), !dbg !6520
  store i32 1000, ptr %sleep_usecs, align 4, !dbg !6520
  br label %do.body, !dbg !6521

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6523

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6523

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %what, align 8, !dbg !6521
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %2) #15, !dbg !6521
  store i32 %call, ptr %tmp, align 4, !dbg !6523
  %3 = load i32, ptr %tmp, align 4, !dbg !6521
  %call1 = call i64 @ktime_get_boottime() #13, !dbg !6525
  store i64 %call1, ptr %start, align 8, !dbg !6526
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !6527
  %5 = load i32, ptr @freeze_timeout_msecs, align 4, !dbg !6528
  %call2 = call i64 @msecs_to_jiffies(i32 noundef %5) #13, !dbg !6529
  %add = add i64 %4, %call2, !dbg !6530
  store i64 %add, ptr %end_time, align 8, !dbg !6531
  %6 = load i8, ptr %user_only.addr, align 1, !dbg !6532, !range !6389, !noundef !663
  %tobool3 = trunc i8 %6 to i1, !dbg !6532
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6534

if.then:                                          ; preds = %do.end
  call void @freeze_workqueues_begin() #13, !dbg !6535
  br label %if.end, !dbg !6535

if.end:                                           ; preds = %if.then, %do.end
  br label %while.cond, !dbg !6536

while.cond:                                       ; preds = %if.end59, %if.end
  br label %while.body, !dbg !6536

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %todo, align 4, !dbg !6537
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #13, !dbg !6538
  store ptr @init_task, ptr %g, align 8, !dbg !6539
  br label %for.cond, !dbg !6539

for.cond:                                         ; preds = %for.end, %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6473, metadata !DIExpression()), !dbg !6540
  br label %do.body4, !dbg !6541

do.body4:                                         ; preds = %for.cond
  br label %do.cond5, !dbg !6543

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6543

do.end6:                                          ; preds = %do.cond5
  %7 = load ptr, ptr %g, align 8, !dbg !6541
  %tasks = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 46, !dbg !6541
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !6541
  %8 = load volatile ptr, ptr %next, align 16, !dbg !6541
  store ptr %8, ptr %tmp7, align 8, !dbg !6543
  %9 = load ptr, ptr %tmp7, align 8, !dbg !6541
  store ptr %9, ptr %__mptr, align 8, !dbg !6540
  %10 = load ptr, ptr %__mptr, align 8, !dbg !6540
  %add.ptr = getelementptr i8, ptr %10, i64 -1136, !dbg !6540
  store ptr %add.ptr, ptr %tmp8, align 8, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6545
  %11 = load ptr, ptr %tmp8, align 8, !dbg !6540
  store ptr %11, ptr %g, align 8, !dbg !6545
  %cmp = icmp ne ptr %11, @init_task, !dbg !6545
  br i1 %cmp, label %for.body, label %for.end36, !dbg !6539

for.body:                                         ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #12, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !6478, metadata !DIExpression()), !dbg !6546
  br label %do.body10, !dbg !6547

do.body10:                                        ; preds = %for.body
  br label %do.cond11, !dbg !6549

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6549

do.end12:                                         ; preds = %do.cond11
  %12 = load ptr, ptr %g, align 8, !dbg !6547
  %signal = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 104, !dbg !6547
  %13 = load ptr, ptr %signal, align 64, !dbg !6547
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 4, !dbg !6547
  %next14 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !6547
  %14 = load volatile ptr, ptr %next14, align 8, !dbg !6547
  store ptr %14, ptr %tmp13, align 8, !dbg !6549
  %15 = load ptr, ptr %tmp13, align 8, !dbg !6547
  store ptr %15, ptr %__mptr9, align 8, !dbg !6546
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !6546
  %add.ptr16 = getelementptr i8, ptr %16, i64 -1528, !dbg !6546
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !6546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #12, !dbg !6551
  %17 = load ptr, ptr %tmp15, align 8, !dbg !6546
  store ptr %17, ptr %p, align 8, !dbg !6551
  br label %for.cond17, !dbg !6551

for.cond17:                                       ; preds = %do.end30, %do.end12
  %18 = load ptr, ptr %p, align 8, !dbg !6552
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 75, !dbg !6552
  %19 = load ptr, ptr %g, align 8, !dbg !6552
  %signal18 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 104, !dbg !6552
  %20 = load ptr, ptr %signal18, align 64, !dbg !6552
  %thread_head19 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 4, !dbg !6552
  %cmp20 = icmp ne ptr %thread_node, %thread_head19, !dbg !6552
  br i1 %cmp20, label %for.body21, label %for.end, !dbg !6551

for.body21:                                       ; preds = %for.cond17
  %21 = load ptr, ptr %p, align 8, !dbg !6553
  %call22 = call ptr @get_current() #13, !dbg !6556
  %cmp23 = icmp eq ptr %21, %call22, !dbg !6557
  br i1 %cmp23, label %if.then25, label %lor.lhs.false, !dbg !6558

lor.lhs.false:                                    ; preds = %for.body21
  %22 = load ptr, ptr %p, align 8, !dbg !6559
  %call24 = call zeroext i1 @freeze_task(ptr noundef %22) #13, !dbg !6560
  br i1 %call24, label %if.end26, label %if.then25, !dbg !6561

if.then25:                                        ; preds = %lor.lhs.false, %for.body21
  br label %for.inc, !dbg !6562

if.end26:                                         ; preds = %lor.lhs.false
  %23 = load i32, ptr %todo, align 4, !dbg !6563
  %inc = add i32 %23, 1, !dbg !6563
  store i32 %inc, ptr %todo, align 4, !dbg !6563
  br label %for.inc, !dbg !6564

for.inc:                                          ; preds = %if.end26, %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #12, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !6481, metadata !DIExpression()), !dbg !6565
  br label %do.body28, !dbg !6566

do.body28:                                        ; preds = %for.inc
  br label %do.cond29, !dbg !6568

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6568

do.end30:                                         ; preds = %do.cond29
  %24 = load ptr, ptr %p, align 8, !dbg !6566
  %thread_node32 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 75, !dbg !6566
  %next33 = getelementptr inbounds %struct.list_head, ptr %thread_node32, i32 0, i32 0, !dbg !6566
  %25 = load volatile ptr, ptr %next33, align 8, !dbg !6566
  store ptr %25, ptr %tmp31, align 8, !dbg !6568
  %26 = load ptr, ptr %tmp31, align 8, !dbg !6566
  store ptr %26, ptr %__mptr27, align 8, !dbg !6565
  %27 = load ptr, ptr %__mptr27, align 8, !dbg !6565
  %add.ptr35 = getelementptr i8, ptr %27, i64 -1528, !dbg !6565
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !6565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #12, !dbg !6552
  %28 = load ptr, ptr %tmp34, align 8, !dbg !6565
  store ptr %28, ptr %p, align 8, !dbg !6552
  br label %for.cond17, !dbg !6552, !llvm.loop !6570

for.end:                                          ; preds = %for.cond17
  br label %for.cond, !dbg !6545, !llvm.loop !6574

for.end36:                                        ; preds = %do.end6
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #13, !dbg !6576
  %29 = load i8, ptr %user_only.addr, align 1, !dbg !6577, !range !6389, !noundef !663
  %tobool37 = trunc i8 %29 to i1, !dbg !6577
  br i1 %tobool37, label %if.end43, label %if.then38, !dbg !6579

if.then38:                                        ; preds = %for.end36
  %call39 = call zeroext i1 @freeze_workqueues_busy() #13, !dbg !6580
  %frombool40 = zext i1 %call39 to i8, !dbg !6582
  store i8 %frombool40, ptr %wq_busy, align 1, !dbg !6582
  %30 = load i8, ptr %wq_busy, align 1, !dbg !6583, !range !6389, !noundef !663
  %tobool41 = trunc i8 %30 to i1, !dbg !6583
  %conv = zext i1 %tobool41 to i32, !dbg !6583
  %31 = load i32, ptr %todo, align 4, !dbg !6584
  %add42 = add i32 %31, %conv, !dbg !6584
  store i32 %add42, ptr %todo, align 4, !dbg !6584
  br label %if.end43, !dbg !6585

if.end43:                                         ; preds = %if.then38, %for.end36
  %32 = load i32, ptr %todo, align 4, !dbg !6586
  %tobool44 = icmp ne i32 %32, 0, !dbg !6586
  br i1 %tobool44, label %lor.lhs.false45, label %if.then48, !dbg !6588

lor.lhs.false45:                                  ; preds = %if.end43
  %33 = load i64, ptr %end_time, align 8, !dbg !6589
  %34 = load volatile i64, ptr @jiffies, align 64, !dbg !6589
  %sub = sub i64 %33, %34, !dbg !6589
  %cmp46 = icmp slt i64 %sub, 0, !dbg !6589
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !6590

if.then48:                                        ; preds = %lor.lhs.false45, %if.end43
  br label %while.end, !dbg !6591

if.end49:                                         ; preds = %lor.lhs.false45
  %call50 = call zeroext i1 @pm_wakeup_pending() #13, !dbg !6592
  br i1 %call50, label %if.then51, label %if.end52, !dbg !6594

if.then51:                                        ; preds = %if.end49
  store i8 1, ptr %wakeup, align 1, !dbg !6595
  br label %while.end, !dbg !6597

if.end52:                                         ; preds = %if.end49
  %35 = load i32, ptr %sleep_usecs, align 4, !dbg !6598
  %div = sdiv i32 %35, 2, !dbg !6599
  %conv53 = sext i32 %div to i64, !dbg !6598
  %36 = load i32, ptr %sleep_usecs, align 4, !dbg !6600
  %conv54 = sext i32 %36 to i64, !dbg !6600
  call void @usleep_range(i64 noundef %conv53, i64 noundef %conv54) #13, !dbg !6601
  %37 = load i32, ptr %sleep_usecs, align 4, !dbg !6602
  %conv55 = sext i32 %37 to i64, !dbg !6602
  %cmp56 = icmp slt i64 %conv55, 8000, !dbg !6604
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !6605

if.then58:                                        ; preds = %if.end52
  %38 = load i32, ptr %sleep_usecs, align 4, !dbg !6606
  %mul = mul i32 %38, 2, !dbg !6606
  store i32 %mul, ptr %sleep_usecs, align 4, !dbg !6606
  br label %if.end59, !dbg !6607

if.end59:                                         ; preds = %if.then58, %if.end52
  br label %while.cond, !dbg !6536, !llvm.loop !6608

while.end:                                        ; preds = %if.then51, %if.then48
  %call60 = call i64 @ktime_get_boottime() #13, !dbg !6610
  store i64 %call60, ptr %end, align 8, !dbg !6611
  %39 = load i64, ptr %end, align 8, !dbg !6612
  %40 = load i64, ptr %start, align 8, !dbg !6612
  %sub61 = sub i64 %39, %40, !dbg !6612
  store i64 %sub61, ptr %elapsed, align 8, !dbg !6613
  %41 = load i64, ptr %elapsed, align 8, !dbg !6614
  %call62 = call i64 @ktime_to_ms(i64 noundef %41) #13, !dbg !6615
  %conv63 = trunc i64 %call62 to i32, !dbg !6615
  store i32 %conv63, ptr %elapsed_msecs, align 4, !dbg !6616
  %42 = load i32, ptr %todo, align 4, !dbg !6617
  %tobool64 = icmp ne i32 %42, 0, !dbg !6617
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !6618

if.then65:                                        ; preds = %while.end
  br label %do.body66, !dbg !6619

do.body66:                                        ; preds = %if.then65
  br label %do.cond67, !dbg !6621

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !6621

do.end68:                                         ; preds = %do.cond67
  %43 = load ptr, ptr %what, align 8, !dbg !6619
  %44 = load i8, ptr %wakeup, align 1, !dbg !6619, !range !6389, !noundef !663
  %tobool70 = trunc i8 %44 to i1, !dbg !6619
  %45 = zext i1 %tobool70 to i64, !dbg !6619
  %cond72 = select i1 %tobool70, ptr @.str.10, ptr @.str.11, !dbg !6619
  %46 = load i32, ptr %elapsed_msecs, align 4, !dbg !6619
  %div73 = udiv i32 %46, 1000, !dbg !6619
  %47 = load i32, ptr %elapsed_msecs, align 4, !dbg !6619
  %rem = urem i32 %47, 1000, !dbg !6619
  %48 = load i32, ptr %todo, align 4, !dbg !6619
  %49 = load i8, ptr %wq_busy, align 1, !dbg !6619, !range !6389, !noundef !663
  %tobool74 = trunc i8 %49 to i1, !dbg !6619
  %conv75 = zext i1 %tobool74 to i32, !dbg !6619
  %sub76 = sub i32 %48, %conv75, !dbg !6619
  %50 = load i8, ptr %wq_busy, align 1, !dbg !6619, !range !6389, !noundef !663
  %tobool77 = trunc i8 %50 to i1, !dbg !6619
  %conv78 = zext i1 %tobool77 to i32, !dbg !6619
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %43, ptr noundef %cond72, i32 noundef %div73, i32 noundef %rem, i32 noundef %sub76, i32 noundef %conv78) #15, !dbg !6619
  store i32 %call79, ptr %tmp69, align 4, !dbg !6621
  %51 = load i32, ptr %tmp69, align 4, !dbg !6619
  %52 = load i8, ptr %wq_busy, align 1, !dbg !6623, !range !6389, !noundef !663
  %tobool80 = trunc i8 %52 to i1, !dbg !6623
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !6625

if.then81:                                        ; preds = %do.end68
  call void @show_freezable_workqueues() #13, !dbg !6626
  br label %if.end82, !dbg !6626

if.end82:                                         ; preds = %if.then81, %do.end68
  %53 = load i8, ptr %wakeup, align 1, !dbg !6627, !range !6389, !noundef !663
  %tobool83 = trunc i8 %53 to i1, !dbg !6627
  br i1 %tobool83, label %lor.lhs.false84, label %if.then87, !dbg !6628

lor.lhs.false84:                                  ; preds = %if.end82
  %54 = load i8, ptr @pm_debug_messages_on, align 1, !dbg !6629, !range !6389, !noundef !663
  %tobool85 = trunc i8 %54 to i1, !dbg !6629
  br i1 %tobool85, label %if.then87, label %if.end139, !dbg !6630

if.then87:                                        ; preds = %lor.lhs.false84, %if.end82
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #13, !dbg !6631
  store ptr @init_task, ptr %g, align 8, !dbg !6632
  br label %for.cond88, !dbg !6632

for.cond88:                                       ; preds = %for.end137, %if.then87
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr89) #12, !dbg !6633
  call void @llvm.dbg.declare(metadata ptr %__mptr89, metadata !6484, metadata !DIExpression()), !dbg !6633
  br label %do.body90, !dbg !6634

do.body90:                                        ; preds = %for.cond88
  br label %do.cond91, !dbg !6636

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !6636

do.end92:                                         ; preds = %do.cond91
  %55 = load ptr, ptr %g, align 8, !dbg !6634
  %tasks94 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 46, !dbg !6634
  %next95 = getelementptr inbounds %struct.list_head, ptr %tasks94, i32 0, i32 0, !dbg !6634
  %56 = load volatile ptr, ptr %next95, align 16, !dbg !6634
  store ptr %56, ptr %tmp93, align 8, !dbg !6636
  %57 = load ptr, ptr %tmp93, align 8, !dbg !6634
  store ptr %57, ptr %__mptr89, align 8, !dbg !6633
  %58 = load ptr, ptr %__mptr89, align 8, !dbg !6633
  %add.ptr97 = getelementptr i8, ptr %58, i64 -1136, !dbg !6633
  store ptr %add.ptr97, ptr %tmp96, align 8, !dbg !6633
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr89) #12, !dbg !6638
  %59 = load ptr, ptr %tmp96, align 8, !dbg !6633
  store ptr %59, ptr %g, align 8, !dbg !6638
  %cmp98 = icmp ne ptr %59, @init_task, !dbg !6638
  br i1 %cmp98, label %for.body100, label %for.end138, !dbg !6632

for.body100:                                      ; preds = %do.end92
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr101) #12, !dbg !6639
  call void @llvm.dbg.declare(metadata ptr %__mptr101, metadata !6492, metadata !DIExpression()), !dbg !6639
  br label %do.body102, !dbg !6640

do.body102:                                       ; preds = %for.body100
  br label %do.cond103, !dbg !6642

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !6642

do.end104:                                        ; preds = %do.cond103
  %60 = load ptr, ptr %g, align 8, !dbg !6640
  %signal106 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 104, !dbg !6640
  %61 = load ptr, ptr %signal106, align 64, !dbg !6640
  %thread_head107 = getelementptr inbounds %struct.signal_struct, ptr %61, i32 0, i32 4, !dbg !6640
  %next108 = getelementptr inbounds %struct.list_head, ptr %thread_head107, i32 0, i32 0, !dbg !6640
  %62 = load volatile ptr, ptr %next108, align 8, !dbg !6640
  store ptr %62, ptr %tmp105, align 8, !dbg !6642
  %63 = load ptr, ptr %tmp105, align 8, !dbg !6640
  store ptr %63, ptr %__mptr101, align 8, !dbg !6639
  %64 = load ptr, ptr %__mptr101, align 8, !dbg !6639
  %add.ptr110 = getelementptr i8, ptr %64, i64 -1528, !dbg !6639
  store ptr %add.ptr110, ptr %tmp109, align 8, !dbg !6639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr101) #12, !dbg !6644
  %65 = load ptr, ptr %tmp109, align 8, !dbg !6639
  store ptr %65, ptr %p, align 8, !dbg !6644
  br label %for.cond111, !dbg !6644

for.cond111:                                      ; preds = %do.end131, %do.end104
  %66 = load ptr, ptr %p, align 8, !dbg !6645
  %thread_node112 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 75, !dbg !6645
  %67 = load ptr, ptr %g, align 8, !dbg !6645
  %signal113 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 104, !dbg !6645
  %68 = load ptr, ptr %signal113, align 64, !dbg !6645
  %thread_head114 = getelementptr inbounds %struct.signal_struct, ptr %68, i32 0, i32 4, !dbg !6645
  %cmp115 = icmp ne ptr %thread_node112, %thread_head114, !dbg !6645
  br i1 %cmp115, label %for.body117, label %for.end137, !dbg !6644

for.body117:                                      ; preds = %for.cond111
  %69 = load ptr, ptr %p, align 8, !dbg !6646
  %call118 = call ptr @get_current() #13, !dbg !6649
  %cmp119 = icmp ne ptr %69, %call118, !dbg !6650
  br i1 %cmp119, label %land.lhs.true, label %if.end126, !dbg !6651

land.lhs.true:                                    ; preds = %for.body117
  %70 = load ptr, ptr %p, align 8, !dbg !6652
  %call121 = call zeroext i1 @freezing(ptr noundef %70) #13, !dbg !6653
  br i1 %call121, label %land.lhs.true123, label %if.end126, !dbg !6654

land.lhs.true123:                                 ; preds = %land.lhs.true
  %71 = load ptr, ptr %p, align 8, !dbg !6655
  %call124 = call zeroext i1 @frozen(ptr noundef %71) #13, !dbg !6656
  br i1 %call124, label %if.end126, label %if.then125, !dbg !6657

if.then125:                                       ; preds = %land.lhs.true123
  %72 = load ptr, ptr %p, align 8, !dbg !6658
  call void @sched_show_task(ptr noundef %72) #13, !dbg !6659
  br label %if.end126, !dbg !6659

if.end126:                                        ; preds = %if.then125, %land.lhs.true123, %land.lhs.true, %for.body117
  br label %for.inc127, !dbg !6660

for.inc127:                                       ; preds = %if.end126
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr128) #12, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %__mptr128, metadata !6495, metadata !DIExpression()), !dbg !6661
  br label %do.body129, !dbg !6662

do.body129:                                       ; preds = %for.inc127
  br label %do.cond130, !dbg !6664

do.cond130:                                       ; preds = %do.body129
  br label %do.end131, !dbg !6664

do.end131:                                        ; preds = %do.cond130
  %73 = load ptr, ptr %p, align 8, !dbg !6662
  %thread_node133 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 75, !dbg !6662
  %next134 = getelementptr inbounds %struct.list_head, ptr %thread_node133, i32 0, i32 0, !dbg !6662
  %74 = load volatile ptr, ptr %next134, align 8, !dbg !6662
  store ptr %74, ptr %tmp132, align 8, !dbg !6664
  %75 = load ptr, ptr %tmp132, align 8, !dbg !6662
  store ptr %75, ptr %__mptr128, align 8, !dbg !6661
  %76 = load ptr, ptr %__mptr128, align 8, !dbg !6661
  %add.ptr136 = getelementptr i8, ptr %76, i64 -1528, !dbg !6661
  store ptr %add.ptr136, ptr %tmp135, align 8, !dbg !6661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr128) #12, !dbg !6645
  %77 = load ptr, ptr %tmp135, align 8, !dbg !6661
  store ptr %77, ptr %p, align 8, !dbg !6645
  br label %for.cond111, !dbg !6645, !llvm.loop !6666

for.end137:                                       ; preds = %for.cond111
  br label %for.cond88, !dbg !6638, !llvm.loop !6668

for.end138:                                       ; preds = %do.end92
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #13, !dbg !6670
  br label %if.end139, !dbg !6671

if.end139:                                        ; preds = %for.end138, %lor.lhs.false84
  br label %if.end147, !dbg !6672

if.else:                                          ; preds = %while.end
  br label %do.body140, !dbg !6673

do.body140:                                       ; preds = %if.else
  br label %do.cond141, !dbg !6676

do.cond141:                                       ; preds = %do.body140
  br label %do.end142, !dbg !6676

do.end142:                                        ; preds = %do.cond141
  %78 = load ptr, ptr %what, align 8, !dbg !6673
  %79 = load i32, ptr %elapsed_msecs, align 4, !dbg !6673
  %div144 = udiv i32 %79, 1000, !dbg !6673
  %80 = load i32, ptr %elapsed_msecs, align 4, !dbg !6673
  %rem145 = urem i32 %80, 1000, !dbg !6673
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %78, i32 noundef %div144, i32 noundef %rem145) #15, !dbg !6673
  store i32 %call146, ptr %tmp143, align 4, !dbg !6676
  %81 = load i32, ptr %tmp143, align 4, !dbg !6673
  br label %if.end147

if.end147:                                        ; preds = %do.end142, %if.end139
  %82 = load i32, ptr %todo, align 4, !dbg !6678
  %tobool148 = icmp ne i32 %82, 0, !dbg !6678
  %83 = zext i1 %tobool148 to i64, !dbg !6678
  %cond149 = select i1 %tobool148, i32 -16, i32 0, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_usecs) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 1, ptr %wakeup) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 4, ptr %elapsed_msecs) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %elapsed) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 1, ptr %wq_busy) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 4, ptr %todo) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_time) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #12, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %what) #12, !dbg !6679
  ret i32 %cond149, !dbg !6680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6681 dso_local void @__usermodehelper_set_disable_depth(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #4 align 16 !dbg !6684 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6687, metadata !DIExpression()), !dbg !6689
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !6689, !srcloc !6690
  store i32 %0, ptr %pfo_val__, align 4, !dbg !6689
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !6689
  %conv = zext i32 %1 to i64, !dbg !6689
  %conv1 = trunc i64 %conv to i32, !dbg !6689
  store i32 %conv1, ptr %tmp, align 4, !dbg !6689
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6691
  %2 = load i32, ptr %tmp, align 4, !dbg !6689
  %and = and i32 %2, 2147483647, !dbg !6692
  ret i32 %and, !dbg !6693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6694 dso_local zeroext i1 @oom_killer_disable(i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !6698 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6703, metadata !DIExpression()), !dbg !6704
  %0 = load i32, ptr %m.addr, align 4, !dbg !6705
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6707
  br i1 %1, label %if.then, label %if.else, !dbg !6708

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6709
  %cmp = icmp slt i32 %2, 0, !dbg !6712
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6713

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6714
  br label %return, !dbg !6714

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6715
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #13, !dbg !6716
  store i64 %call, ptr %retval, align 8, !dbg !6717
  br label %return, !dbg !6717

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6718
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #13, !dbg !6720
  store i64 %call2, ptr %retval, align 8, !dbg !6721
  br label %return, !dbg !6721

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6722
  ret i64 %5, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thaw_processes() #0 align 16 !dbg !6249 {
entry:
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  %__mptr52 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  %__ret_warn_on62 = alloca i32, align 4
  %__flags82 = alloca i32, align 4
  %tmp95 = alloca i64, align 8
  %tmp108 = alloca i32, align 4
  %tmp110 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #12, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6251, metadata !DIExpression()), !dbg !6724
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6252, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #12, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !6253, metadata !DIExpression()), !dbg !6727
  %call = call ptr @get_current() #13, !dbg !6728
  store ptr %call, ptr %curr, align 8, !dbg !6727
  %0 = load ptr, ptr @thaw_processes.___tp_str, align 8, !dbg !6729
  store ptr %0, ptr %tmp, align 8, !dbg !6729
  %1 = load ptr, ptr %tmp, align 8, !dbg !6729
  call void @trace_suspend_resume(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #13, !dbg !6731
  %2 = load i8, ptr @pm_freezing, align 1, !dbg !6732, !range !6389, !noundef !663
  %tobool = trunc i8 %2 to i1, !dbg !6732
  br i1 %tobool, label %if.then, label %if.end, !dbg !6734

if.then:                                          ; preds = %entry
  call void @static_key_slow_dec(ptr noundef @freezer_active) #13, !dbg !6735
  br label %if.end, !dbg !6735

if.end:                                           ; preds = %if.then, %entry
  store i8 0, ptr @pm_freezing, align 1, !dbg !6736
  store i8 0, ptr @pm_nosig_freezing, align 1, !dbg !6737
  call void @oom_killer_enable() #13, !dbg !6738
  br label %do.body, !dbg !6739

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6741

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6741

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #15, !dbg !6739
  store i32 %call2, ptr %tmp1, align 4, !dbg !6741
  %3 = load i32, ptr %tmp1, align 4, !dbg !6739
  call void @__usermodehelper_set_disable_depth(i32 noundef 1) #13, !dbg !6743
  call void @thaw_workqueues() #13, !dbg !6744
  call void @cpuset_wait_for_hotplug() #13, !dbg !6745
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #13, !dbg !6746
  store ptr @init_task, ptr %g, align 8, !dbg !6747
  br label %for.cond, !dbg !6747

for.cond:                                         ; preds = %for.end, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6748
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6254, metadata !DIExpression()), !dbg !6748
  br label %do.body3, !dbg !6749

do.body3:                                         ; preds = %for.cond
  br label %do.cond4, !dbg !6751

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6751

do.end5:                                          ; preds = %do.cond4
  %4 = load ptr, ptr %g, align 8, !dbg !6749
  %tasks = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 46, !dbg !6749
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !6749
  %5 = load volatile ptr, ptr %next, align 16, !dbg !6749
  store ptr %5, ptr %tmp6, align 8, !dbg !6751
  %6 = load ptr, ptr %tmp6, align 8, !dbg !6749
  store ptr %6, ptr %__mptr, align 8, !dbg !6748
  %7 = load ptr, ptr %__mptr, align 8, !dbg !6748
  %add.ptr = getelementptr i8, ptr %7, i64 -1136, !dbg !6748
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6753
  %8 = load ptr, ptr %tmp7, align 8, !dbg !6748
  store ptr %8, ptr %g, align 8, !dbg !6753
  %cmp = icmp ne ptr %8, @init_task, !dbg !6753
  br i1 %cmp, label %for.body, label %for.end61, !dbg !6747

for.body:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #12, !dbg !6754
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6258, metadata !DIExpression()), !dbg !6754
  br label %do.body9, !dbg !6755

do.body9:                                         ; preds = %for.body
  br label %do.cond10, !dbg !6757

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6757

do.end11:                                         ; preds = %do.cond10
  %9 = load ptr, ptr %g, align 8, !dbg !6755
  %signal = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 104, !dbg !6755
  %10 = load ptr, ptr %signal, align 64, !dbg !6755
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 4, !dbg !6755
  %next13 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !6755
  %11 = load volatile ptr, ptr %next13, align 8, !dbg !6755
  store ptr %11, ptr %tmp12, align 8, !dbg !6757
  %12 = load ptr, ptr %tmp12, align 8, !dbg !6755
  store ptr %12, ptr %__mptr8, align 8, !dbg !6754
  %13 = load ptr, ptr %__mptr8, align 8, !dbg !6754
  %add.ptr15 = getelementptr i8, ptr %13, i64 -1528, !dbg !6754
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !6754
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #12, !dbg !6759
  %14 = load ptr, ptr %tmp14, align 8, !dbg !6754
  store ptr %14, ptr %p, align 8, !dbg !6759
  br label %for.cond16, !dbg !6759

for.cond16:                                       ; preds = %do.end55, %do.end11
  %15 = load ptr, ptr %p, align 8, !dbg !6760
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 75, !dbg !6760
  %16 = load ptr, ptr %g, align 8, !dbg !6760
  %signal17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 104, !dbg !6760
  %17 = load ptr, ptr %signal17, align 64, !dbg !6760
  %thread_head18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 4, !dbg !6760
  %cmp19 = icmp ne ptr %thread_node, %thread_head18, !dbg !6760
  br i1 %cmp19, label %for.body20, label %for.end, !dbg !6759

for.body20:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6261, metadata !DIExpression()), !dbg !6761
  %18 = load ptr, ptr %p, align 8, !dbg !6761
  %19 = load ptr, ptr %curr, align 8, !dbg !6761
  %cmp21 = icmp ne ptr %18, %19, !dbg !6761
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !6761

land.rhs:                                         ; preds = %for.body20
  %20 = load ptr, ptr %p, align 8, !dbg !6761
  %flags = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 4, !dbg !6761
  %21 = load i32, ptr %flags, align 4, !dbg !6761
  %and = and i32 %21, -2147483648, !dbg !6761
  %tobool22 = icmp ne i32 %and, 0, !dbg !6761
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body20
  %22 = phi i1 [ false, %for.body20 ], [ %tobool22, %land.rhs ], !dbg !6762
  %lnot = xor i1 %22, true, !dbg !6761
  %lnot23 = xor i1 %lnot, true, !dbg !6761
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !6761
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6761
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !6763
  %tobool24 = icmp ne i32 %23, 0, !dbg !6763
  %lnot25 = xor i1 %tobool24, true, !dbg !6763
  %lnot27 = xor i1 %lnot25, true, !dbg !6763
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6763
  %conv = sext i32 %lnot.ext28 to i64, !dbg !6763
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6763
  %tobool29 = icmp ne i64 %expval, 0, !dbg !6763
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !6761

if.then30:                                        ; preds = %land.end
  br label %do.body31, !dbg !6763

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6265, metadata !DIExpression()), !dbg !6764
  store i32 2305, ptr %__flags, align 4, !dbg !6764
  br label %do.body32, !dbg !6764

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !6765

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6765

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !6764

do.body35:                                        ; preds = %do.end34
  %24 = load i32, ptr %__flags, align 4, !dbg !6767
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 202, i32 %24, i64 12) #12, !dbg !6767, !srcloc !6769
  br label %do.cond36, !dbg !6767

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !6767

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !6764

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !6770

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6770

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6763
  br label %do.cond41, !dbg !6764

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !6764

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !6764

if.end43:                                         ; preds = %do.end42, %land.end
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !6761
  %tobool45 = icmp ne i32 %25, 0, !dbg !6761
  %lnot46 = xor i1 %tobool45, true, !dbg !6761
  %lnot48 = xor i1 %lnot46, true, !dbg !6761
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !6761
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !6761
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !6761
  store i64 %expval51, ptr %tmp44, align 8, !dbg !6763
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6772
  %26 = load i64, ptr %tmp44, align 8, !dbg !6761
  %27 = load ptr, ptr %p, align 8, !dbg !6773
  call void @__thaw_task(ptr noundef %27) #13, !dbg !6774
  br label %for.inc, !dbg !6775

for.inc:                                          ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr52) #12, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %__mptr52, metadata !6268, metadata !DIExpression()), !dbg !6776
  br label %do.body53, !dbg !6777

do.body53:                                        ; preds = %for.inc
  br label %do.cond54, !dbg !6779

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6779

do.end55:                                         ; preds = %do.cond54
  %28 = load ptr, ptr %p, align 8, !dbg !6777
  %thread_node57 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 75, !dbg !6777
  %next58 = getelementptr inbounds %struct.list_head, ptr %thread_node57, i32 0, i32 0, !dbg !6777
  %29 = load volatile ptr, ptr %next58, align 8, !dbg !6777
  store ptr %29, ptr %tmp56, align 8, !dbg !6779
  %30 = load ptr, ptr %tmp56, align 8, !dbg !6777
  store ptr %30, ptr %__mptr52, align 8, !dbg !6776
  %31 = load ptr, ptr %__mptr52, align 8, !dbg !6776
  %add.ptr60 = getelementptr i8, ptr %31, i64 -1528, !dbg !6776
  store ptr %add.ptr60, ptr %tmp59, align 8, !dbg !6776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr52) #12, !dbg !6760
  %32 = load ptr, ptr %tmp59, align 8, !dbg !6776
  store ptr %32, ptr %p, align 8, !dbg !6760
  br label %for.cond16, !dbg !6760, !llvm.loop !6781

for.end:                                          ; preds = %for.cond16
  br label %for.cond, !dbg !6753, !llvm.loop !6783

for.end61:                                        ; preds = %do.end5
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #13, !dbg !6785
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on62) #12, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on62, metadata !6270, metadata !DIExpression()), !dbg !6786
  %33 = load ptr, ptr %curr, align 8, !dbg !6786
  %flags63 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 4, !dbg !6786
  %34 = load i32, ptr %flags63, align 4, !dbg !6786
  %and64 = and i32 %34, -2147483648, !dbg !6786
  %tobool65 = icmp ne i32 %and64, 0, !dbg !6786
  %lnot66 = xor i1 %tobool65, true, !dbg !6786
  %lnot68 = xor i1 %lnot66, true, !dbg !6786
  %lnot70 = xor i1 %lnot68, true, !dbg !6786
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !6786
  store i32 %lnot.ext71, ptr %__ret_warn_on62, align 4, !dbg !6786
  %35 = load i32, ptr %__ret_warn_on62, align 4, !dbg !6787
  %tobool72 = icmp ne i32 %35, 0, !dbg !6787
  %lnot73 = xor i1 %tobool72, true, !dbg !6787
  %lnot75 = xor i1 %lnot73, true, !dbg !6787
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !6787
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !6787
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !6787
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !6787
  br i1 %tobool79, label %if.then80, label %if.end94, !dbg !6786

if.then80:                                        ; preds = %for.end61
  br label %do.body81, !dbg !6787

do.body81:                                        ; preds = %if.then80
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags82) #12, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %__flags82, metadata !6272, metadata !DIExpression()), !dbg !6788
  store i32 2305, ptr %__flags82, align 4, !dbg !6788
  br label %do.body83, !dbg !6788

do.body83:                                        ; preds = %do.body81
  br label %do.cond84, !dbg !6789

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !6789

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !6788

do.body86:                                        ; preds = %do.end85
  %36 = load i32, ptr %__flags82, align 4, !dbg !6791
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 207, i32 %36, i64 12) #12, !dbg !6791, !srcloc !6793
  br label %do.cond87, !dbg !6791

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !6791

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !6788

do.body89:                                        ; preds = %do.end88
  br label %do.cond90, !dbg !6794

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !6794

do.end91:                                         ; preds = %do.cond90
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags82) #12, !dbg !6787
  br label %do.cond92, !dbg !6788

do.cond92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !6788

do.end93:                                         ; preds = %do.cond92
  br label %if.end94, !dbg !6788

if.end94:                                         ; preds = %do.end93, %for.end61
  %37 = load i32, ptr %__ret_warn_on62, align 4, !dbg !6786
  %tobool96 = icmp ne i32 %37, 0, !dbg !6786
  %lnot97 = xor i1 %tobool96, true, !dbg !6786
  %lnot99 = xor i1 %lnot97, true, !dbg !6786
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !6786
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !6786
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !6786
  store i64 %expval102, ptr %tmp95, align 8, !dbg !6787
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on62) #12, !dbg !6796
  %38 = load i64, ptr %tmp95, align 8, !dbg !6786
  %39 = load ptr, ptr %curr, align 8, !dbg !6797
  %flags103 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 4, !dbg !6798
  %40 = load i32, ptr %flags103, align 4, !dbg !6799
  %and104 = and i32 %40, 2147483647, !dbg !6799
  store i32 %and104, ptr %flags103, align 4, !dbg !6799
  call void @usermodehelper_enable() #13, !dbg !6800
  call void @schedule() #13, !dbg !6801
  br label %do.body105, !dbg !6802

do.body105:                                       ; preds = %if.end94
  br label %do.cond106, !dbg !6804

do.cond106:                                       ; preds = %do.body105
  br label %do.end107, !dbg !6804

do.end107:                                        ; preds = %do.cond106
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #15, !dbg !6802
  store i32 %call109, ptr %tmp108, align 4, !dbg !6804
  %41 = load i32, ptr %tmp108, align 4, !dbg !6802
  %42 = load ptr, ptr @thaw_processes.___tp_str.4, align 8, !dbg !6806
  store ptr %42, ptr %tmp110, align 8, !dbg !6806
  %43 = load ptr, ptr %tmp110, align 8, !dbg !6806
  call void @trace_suspend_resume(ptr noundef %43, i32 noundef 0, i1 noundef zeroext false) #13, !dbg !6808
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #12, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #12, !dbg !6809
  ret void, !dbg !6809
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @freeze_kernel_threads() #0 align 16 !dbg !6810 {
entry:
  %error = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #12, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6812, metadata !DIExpression()), !dbg !6814
  store i8 1, ptr @pm_nosig_freezing, align 1, !dbg !6815
  %call = call i32 @try_to_freeze_tasks(i1 noundef zeroext false) #13, !dbg !6816
  store i32 %call, ptr %error, align 4, !dbg !6817
  br label %do.body, !dbg !6818

do.body:                                          ; preds = %entry
  %call1 = call i32 @preempt_count() #13, !dbg !6819
  %cmp = icmp ne i32 %call1, 0, !dbg !6819
  %lnot = xor i1 %cmp, true, !dbg !6819
  %lnot2 = xor i1 %lnot, true, !dbg !6819
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6819
  %conv = sext i32 %lnot.ext to i64, !dbg !6819
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6819
  %tobool = icmp ne i64 %expval, 0, !dbg !6819
  br i1 %tobool, label %if.then, label %if.end, !dbg !6822

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !6819

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !6823

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !6825

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6825

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6823

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 172, i32 0, i64 12) #12, !dbg !6827, !srcloc !6829
  br label %do.cond6, !dbg !6827

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6827

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !6823

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !6823

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !6823

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !6822

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !6822

do.end11:                                         ; preds = %do.cond10
  %0 = load i32, ptr %error, align 4, !dbg !6830
  %tobool12 = icmp ne i32 %0, 0, !dbg !6830
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6832

if.then13:                                        ; preds = %do.end11
  call void @thaw_kernel_threads() #13, !dbg !6833
  br label %if.end14, !dbg !6833

if.end14:                                         ; preds = %if.then13, %do.end11
  %1 = load i32, ptr %error, align 4, !dbg !6834
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #12, !dbg !6835
  ret i32 %1, !dbg !6836
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thaw_kernel_threads() #0 align 16 !dbg !6837 {
entry:
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %tmp32 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #12, !dbg !6851
  call void @llvm.dbg.declare(metadata ptr %g, metadata !6839, metadata !DIExpression()), !dbg !6852
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6851
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6840, metadata !DIExpression()), !dbg !6853
  store i8 0, ptr @pm_nosig_freezing, align 1, !dbg !6854
  br label %do.body, !dbg !6855

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6857

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6857

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #15, !dbg !6855
  store i32 %call, ptr %tmp, align 4, !dbg !6857
  %0 = load i32, ptr %tmp, align 4, !dbg !6855
  call void @thaw_workqueues() #13, !dbg !6859
  call void @_raw_read_lock(ptr noundef @tasklist_lock) #13, !dbg !6860
  store ptr @init_task, ptr %g, align 8, !dbg !6861
  br label %for.cond, !dbg !6861

for.cond:                                         ; preds = %for.end, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6862
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6841, metadata !DIExpression()), !dbg !6862
  br label %do.body1, !dbg !6863

do.body1:                                         ; preds = %for.cond
  br label %do.cond2, !dbg !6865

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6865

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %g, align 8, !dbg !6863
  %tasks = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 46, !dbg !6863
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !6863
  %2 = load volatile ptr, ptr %next, align 16, !dbg !6863
  store ptr %2, ptr %tmp4, align 8, !dbg !6865
  %3 = load ptr, ptr %tmp4, align 8, !dbg !6863
  store ptr %3, ptr %__mptr, align 8, !dbg !6862
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6862
  %add.ptr = getelementptr i8, ptr %4, i64 -1136, !dbg !6862
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !6862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6867
  %5 = load ptr, ptr %tmp5, align 8, !dbg !6862
  store ptr %5, ptr %g, align 8, !dbg !6867
  %cmp = icmp ne ptr %5, @init_task, !dbg !6867
  br i1 %cmp, label %for.body, label %for.end28, !dbg !6861

for.body:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #12, !dbg !6868
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !6845, metadata !DIExpression()), !dbg !6868
  br label %do.body7, !dbg !6869

do.body7:                                         ; preds = %for.body
  br label %do.cond8, !dbg !6871

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6871

do.end9:                                          ; preds = %do.cond8
  %6 = load ptr, ptr %g, align 8, !dbg !6869
  %signal = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 104, !dbg !6869
  %7 = load ptr, ptr %signal, align 64, !dbg !6869
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 4, !dbg !6869
  %next11 = getelementptr inbounds %struct.list_head, ptr %thread_head, i32 0, i32 0, !dbg !6869
  %8 = load volatile ptr, ptr %next11, align 8, !dbg !6869
  store ptr %8, ptr %tmp10, align 8, !dbg !6871
  %9 = load ptr, ptr %tmp10, align 8, !dbg !6869
  store ptr %9, ptr %__mptr6, align 8, !dbg !6868
  %10 = load ptr, ptr %__mptr6, align 8, !dbg !6868
  %add.ptr13 = getelementptr i8, ptr %10, i64 -1528, !dbg !6868
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !6868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #12, !dbg !6873
  %11 = load ptr, ptr %tmp12, align 8, !dbg !6868
  store ptr %11, ptr %p, align 8, !dbg !6873
  br label %for.cond14, !dbg !6873

for.cond14:                                       ; preds = %do.end22, %do.end9
  %12 = load ptr, ptr %p, align 8, !dbg !6874
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 75, !dbg !6874
  %13 = load ptr, ptr %g, align 8, !dbg !6874
  %signal15 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 104, !dbg !6874
  %14 = load ptr, ptr %signal15, align 64, !dbg !6874
  %thread_head16 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 4, !dbg !6874
  %cmp17 = icmp ne ptr %thread_node, %thread_head16, !dbg !6874
  br i1 %cmp17, label %for.body18, label %for.end, !dbg !6873

for.body18:                                       ; preds = %for.cond14
  %15 = load ptr, ptr %p, align 8, !dbg !6875
  %flags = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4, !dbg !6878
  %16 = load i32, ptr %flags, align 4, !dbg !6878
  %and = and i32 %16, 2097152, !dbg !6879
  %tobool = icmp ne i32 %and, 0, !dbg !6879
  br i1 %tobool, label %if.then, label %if.end, !dbg !6880

if.then:                                          ; preds = %for.body18
  %17 = load ptr, ptr %p, align 8, !dbg !6881
  call void @__thaw_task(ptr noundef %17) #13, !dbg !6882
  br label %if.end, !dbg !6882

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc, !dbg !6883

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #12, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !6848, metadata !DIExpression()), !dbg !6884
  br label %do.body20, !dbg !6885

do.body20:                                        ; preds = %for.inc
  br label %do.cond21, !dbg !6887

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6887

do.end22:                                         ; preds = %do.cond21
  %18 = load ptr, ptr %p, align 8, !dbg !6885
  %thread_node24 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 75, !dbg !6885
  %next25 = getelementptr inbounds %struct.list_head, ptr %thread_node24, i32 0, i32 0, !dbg !6885
  %19 = load volatile ptr, ptr %next25, align 8, !dbg !6885
  store ptr %19, ptr %tmp23, align 8, !dbg !6887
  %20 = load ptr, ptr %tmp23, align 8, !dbg !6885
  store ptr %20, ptr %__mptr19, align 8, !dbg !6884
  %21 = load ptr, ptr %__mptr19, align 8, !dbg !6884
  %add.ptr27 = getelementptr i8, ptr %21, i64 -1528, !dbg !6884
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #12, !dbg !6874
  %22 = load ptr, ptr %tmp26, align 8, !dbg !6884
  store ptr %22, ptr %p, align 8, !dbg !6874
  br label %for.cond14, !dbg !6874, !llvm.loop !6889

for.end:                                          ; preds = %for.cond14
  br label %for.cond, !dbg !6867, !llvm.loop !6891

for.end28:                                        ; preds = %do.end3
  call void @_raw_read_unlock(ptr noundef @tasklist_lock) #13, !dbg !6893
  call void @schedule() #13, !dbg !6894
  br label %do.body29, !dbg !6895

do.body29:                                        ; preds = %for.end28
  br label %do.cond30, !dbg !6897

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6897

do.end31:                                         ; preds = %do.cond30
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #15, !dbg !6895
  store i32 %call33, ptr %tmp32, align 4, !dbg !6897
  %23 = load i32, ptr %tmp32, align 4, !dbg !6895
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6899
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #12, !dbg !6899
  ret void, !dbg !6899
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_suspend_resume(ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) #6 align 16 !dbg !6332 {
entry:
  %action.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %start.addr = alloca i8, align 1
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
  %__UNIQUE_ID_rcu431 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !6336, metadata !DIExpression()), !dbg !6900
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6337, metadata !DIExpression()), !dbg !6900
  %frombool = zext i1 %start to i8
  store i8 %frombool, ptr %start.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6338, metadata !DIExpression()), !dbg !6900
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1)) #13, !dbg !6901
  br i1 %call, label %if.then, label %if.end69, !dbg !6900

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6901

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !6902
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6339, metadata !DIExpression()), !dbg !6902
  store i32 0, ptr %__idx, align 4, !dbg !6902
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6342, metadata !DIExpression()), !dbg !6903
  br label %do.body1, !dbg !6903

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6904
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6345, metadata !DIExpression()), !dbg !6904
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6904
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6903
  br label %do.cond, !dbg !6904

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6904

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6347, metadata !DIExpression()), !dbg !6905
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !6905, !srcloc !6906
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6905
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6905
  %conv = zext i32 %2 to i64, !dbg !6905
  %conv2 = trunc i64 %conv to i32, !dbg !6905
  store i32 %conv2, ptr %tmp, align 4, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6903
  %3 = load i32, ptr %tmp, align 4, !dbg !6905
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6903
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6903
  store i32 %4, ptr %tmp3, align 4, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6907
  %5 = load i32, ptr %tmp3, align 4, !dbg !6903
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !6907
  br i1 %call4, label %if.end, label %if.then5, !dbg !6902

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6907

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6908
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6349, metadata !DIExpression()), !dbg !6908
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6908
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6909
  %tobool = icmp ne i32 %6, 0, !dbg !6909
  %lnot = xor i1 %tobool, true, !dbg !6909
  %lnot6 = xor i1 %lnot, true, !dbg !6909
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6909
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6909
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6909
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6909
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6908

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6909

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6352, metadata !DIExpression()), !dbg !6910
  store i32 2307, ptr %__flags, align 4, !dbg !6910
  br label %do.body11, !dbg !6910

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6911

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6911

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6910

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6913
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 268, i32 %7, i64 12) #12, !dbg !6913, !srcloc !6915
  br label %do.cond15, !dbg !6913

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6913

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6910

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6916

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6916

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6909
  br label %do.cond20, !dbg !6910

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6910

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6910

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6908
  %tobool24 = icmp ne i32 %8, 0, !dbg !6908
  %lnot25 = xor i1 %tobool24, true, !dbg !6908
  %lnot27 = xor i1 %lnot25, true, !dbg !6908
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6908
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6908
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6908
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6909
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6918
  %9 = load i64, ptr %tmp23, align 8, !dbg !6908
  %tobool31 = icmp ne i64 %9, 0, !dbg !6918
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6902

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6918

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6902

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !6919
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6919, !srcloc !6921
  br label %do.cond35, !dbg !6919

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6919

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6902

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !6922
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6355, metadata !DIExpression()), !dbg !6922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !6922
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6357, metadata !DIExpression()), !dbg !6922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu431) #12, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu431, metadata !6358, metadata !DIExpression()), !dbg !6923
  br label %do.body38, !dbg !6924

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6926

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6926

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 8), align 8, !dbg !6924
  store ptr %10, ptr %tmp41, align 8, !dbg !6926
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6924
  store ptr %11, ptr %__UNIQUE_ID_rcu431, align 8, !dbg !6923
  %12 = load ptr, ptr %__UNIQUE_ID_rcu431, align 8, !dbg !6923
  store ptr %12, ptr %tmp42, align 8, !dbg !6923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu431) #12, !dbg !6922
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6923
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6922
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6928
  %tobool43 = icmp ne ptr %14, null, !dbg !6928
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !6922

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6930
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6930
  %16 = load ptr, ptr %data, align 8, !dbg !6930
  store ptr %16, ptr %__data, align 8, !dbg !6930
  store ptr @__SCT__tp_func_suspend_resume, ptr %tmp45, align 8, !dbg !6932
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6932
  %18 = load ptr, ptr %__data, align 8, !dbg !6930
  %19 = load ptr, ptr %action.addr, align 8, !dbg !6930
  %20 = load i32, ptr %val.addr, align 4, !dbg !6930
  %21 = load i8, ptr %start.addr, align 1, !dbg !6930, !range !6389, !noundef !663
  %tobool46 = trunc i8 %21 to i1, !dbg !6930
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool46) #13, !dbg !6930
  br label %if.end48, !dbg !6930

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !6902
  br label %do.cond49, !dbg !6922

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !6922

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6902

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6934, !srcloc !6936
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !6937
  %lnot53 = xor i1 %call52, true, !dbg !6937
  %lnot55 = xor i1 %lnot53, true, !dbg !6937
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !6937
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !6937
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !6937
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !6937
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !6934

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !6937

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !6362), !dbg !6939
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #12, !dbg !6939, !srcloc !6941
  call void @llvm.write_register.i64(metadata !6362, i64 %23), !dbg !6939
  br label %do.cond62, !dbg !6939

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !6939

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !6939

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !6934

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !6934

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6901
  br label %cleanup, !dbg !6901

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !6901
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !6902

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !6902

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !6900

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6942 dso_local void @static_key_slow_dec(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local void @oom_killer_enable() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6946 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6950 dso_local void @thaw_workqueues() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @cpuset_wait_for_hotplug() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6953 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6958 dso_local void @__thaw_task(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6960 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usermodehelper_enable() #6 align 16 !dbg !6961 {
entry:
  call void @__usermodehelper_set_disable_depth(i32 noundef 0) #13, !dbg !6962
  ret void, !dbg !6963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6964 dso_local void @schedule() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_get_boottime() #6 align 16 !dbg !6965 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #13, !dbg !6966
  ret i64 %call, !dbg !6967
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6968 dso_local void @freeze_workqueues_begin() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6969 dso_local zeroext i1 @freeze_task(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6972 dso_local zeroext i1 @freeze_workqueues_busy() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6973 dso_local zeroext i1 @pm_wakeup_pending() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #6 align 16 !dbg !6974 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6979, metadata !DIExpression()), !dbg !6981
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6980, metadata !DIExpression()), !dbg !6982
  %0 = load i64, ptr %min.addr, align 8, !dbg !6983
  %1 = load i64, ptr %max.addr, align 8, !dbg !6984
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #13, !dbg !6985
  ret void, !dbg !6986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ms(i64 noundef %kt) #6 align 16 !dbg !6987 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !6992, metadata !DIExpression()), !dbg !6993
  %0 = load i64, ptr %kt.addr, align 8, !dbg !6994
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000000) #13, !dbg !6995
  ret i64 %call, !dbg !6996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6997 dso_local void @show_freezable_workqueues() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @freezing(ptr noundef %p) #6 align 16 !dbg !6998 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7000, metadata !DIExpression()), !dbg !7004
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !7001, metadata !DIExpression()), !dbg !7005
  %call = call zeroext i1 @arch_static_branch(ptr noundef @freezer_active, i1 noundef zeroext false) #13, !dbg !7006
  %frombool = zext i1 %call to i8, !dbg !7006
  store i8 %frombool, ptr %branch, align 1, !dbg !7006
  %0 = load i8, ptr %branch, align 1, !dbg !7005, !range !6389, !noundef !663
  %tobool = trunc i8 %0 to i1, !dbg !7005
  %lnot = xor i1 %tobool, true, !dbg !7005
  %lnot1 = xor i1 %lnot, true, !dbg !7005
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7005
  %conv = sext i32 %lnot.ext to i64, !dbg !7005
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7005
  store i64 %expval, ptr %tmp, align 8, !dbg !7009
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !7010
  %1 = load i64, ptr %tmp, align 8, !dbg !7005
  %tobool2 = icmp ne i64 %1, 0, !dbg !7010
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7011

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !7012
  %call3 = call zeroext i1 @freezing_slow_path(ptr noundef %2) #13, !dbg !7013
  store i1 %call3, ptr %retval, align 1, !dbg !7014
  br label %return, !dbg !7014

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7015
  br label %return, !dbg !7015

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !7016
  ret i1 %3, !dbg !7016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7017 dso_local zeroext i1 @frozen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7018 dso_local void @sched_show_task(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7020 dso_local i64 @ktime_get_with_offset(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7023 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #6 align 16 !dbg !7026 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !7030, metadata !DIExpression()), !dbg !7037
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !7031, metadata !DIExpression()), !dbg !7038
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7039
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7032, metadata !DIExpression()), !dbg !7039
  %0 = load i64, ptr %div.addr, align 8, !dbg !7039
  %cmp = icmp slt i64 %0, 0, !dbg !7039
  %lnot = xor i1 %cmp, true, !dbg !7039
  %lnot1 = xor i1 %lnot, true, !dbg !7039
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7039
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7039
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !7040
  %tobool = icmp ne i32 %1, 0, !dbg !7040
  %lnot2 = xor i1 %tobool, true, !dbg !7040
  %lnot4 = xor i1 %lnot2, true, !dbg !7040
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7040
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7040
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7040
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7040
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7039

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7040

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7034, metadata !DIExpression()), !dbg !7041
  store i32 2305, ptr %__flags, align 4, !dbg !7041
  br label %do.body7, !dbg !7041

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7042

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7042

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7041

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !7044
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 154, i32 %2, i64 12) #12, !dbg !7044, !srcloc !7046
  br label %do.cond9, !dbg !7044

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7044

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7041

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7047

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7047

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7040
  br label %do.cond14, !dbg !7041

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7041

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7041

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !7039
  %tobool16 = icmp ne i32 %3, 0, !dbg !7039
  %lnot17 = xor i1 %tobool16, true, !dbg !7039
  %lnot19 = xor i1 %lnot17, true, !dbg !7039
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7039
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !7039
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !7039
  store i64 %expval22, ptr %tmp, align 8, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7049
  %4 = load i64, ptr %tmp, align 8, !dbg !7039
  %5 = load i64, ptr %kt.addr, align 8, !dbg !7050
  %6 = load i64, ptr %div.addr, align 8, !dbg !7051
  %div23 = sdiv i64 %5, %6, !dbg !7052
  ret i64 %div23, !dbg !7053
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !7054 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7059, metadata !DIExpression()), !dbg !7062
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7060, metadata !DIExpression()), !dbg !7063
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7064
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7065, !range !6389, !noundef !663
  %tobool = trunc i8 %1 to i1, !dbg !7065
  %conv = zext i1 %tobool to i32, !dbg !7065
  %or = or i32 2, %conv, !dbg !7066
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !7067, !srcloc !7068

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7069
  br label %return, !dbg !7069

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7061), !dbg !7070
  store i1 true, ptr %retval, align 1, !dbg !7071
  br label %return, !dbg !7071

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7072
  ret i1 %2, !dbg !7072
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7073 dso_local zeroext i1 @freezing_slow_path(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #6 align 16 !dbg !7074 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7076, metadata !DIExpression()), !dbg !7077
  %0 = load i32, ptr %m.addr, align 4, !dbg !7078
  %conv = zext i32 %0 to i64, !dbg !7078
  %add = add i64 %conv, 1, !dbg !7079
  %sub = sub i64 %add, 1, !dbg !7080
  %div = sdiv i64 %sub, 1, !dbg !7081
  ret i64 %div, !dbg !7082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7083 dso_local i64 @__msecs_to_jiffies(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !7084 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7086, metadata !DIExpression()), !dbg !7087
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7088
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !7089
  ret i1 %call, !dbg !7090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !7091 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7095, metadata !DIExpression()), !dbg !7096
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7097
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !7098
  ret i1 %call, !dbg !7099
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !7100 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7102, metadata !DIExpression()), !dbg !7109
  br label %do.body, !dbg !7110

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !7103, metadata !DIExpression()), !dbg !7111
  %0 = load i32, ptr %val.addr, align 4, !dbg !7111
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7111
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7111

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !7111
  %cmp = icmp eq i32 %2, 1, !dbg !7111
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !7111

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !7111
  %cmp1 = icmp eq i32 %3, -1, !dbg !7111
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !7111

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !7111
  br label %cond.end, !dbg !7111

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !7111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !7111
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !7111
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !7112
  %cmp2 = icmp eq i32 %5, 1, !dbg !7112
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7111

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7113, !srcloc !7115
  br label %if.end8, !dbg !7112

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !7116
  %cmp3 = icmp eq i32 %6, -1, !dbg !7116
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !7112

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7117, !srcloc !7119
  br label %if.end, !dbg !7116

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !7116

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !7120
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !7105, metadata !DIExpression()), !dbg !7120
  %7 = load i32, ptr %val.addr, align 4, !dbg !7120
  %conv = sext i32 %7 to i64, !dbg !7120
  %and = and i64 %conv, 4294967295, !dbg !7120
  %conv7 = trunc i64 %and to i32, !dbg !7120
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !7120
  %8 = load i32, ptr %pto_val__, align 4, !dbg !7120
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7120, !srcloc !7121
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !7116
  br label %do.cond, !dbg !7120

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7120

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !7110
  br label %do.end10, !dbg !7111

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !7122
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !7123 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !7127
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7125, metadata !DIExpression()), !dbg !7127
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.23, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7127, !srcloc !7128
  %1 = icmp ult i8 %0, 2, !dbg !7127
  call void @llvm.assume(i1 %1), !dbg !7127
  store i8 %0, ptr %c, align 1, !dbg !7127
  %2 = load i8, ptr %c, align 1, !dbg !7127, !range !6389, !noundef !663
  %tobool = trunc i8 %2 to i1, !dbg !7127
  %frombool = zext i1 %tobool to i8, !dbg !7127
  store i8 %frombool, ptr %tmp, align 1, !dbg !7127
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !7129
  %3 = load i8, ptr %tmp, align 1, !dbg !7127, !range !6389, !noundef !663
  %tobool1 = trunc i8 %3 to i1, !dbg !7127
  ret i1 %tobool1, !dbg !7130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !7131 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7135, metadata !DIExpression()), !dbg !7137
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !7136, metadata !DIExpression()), !dbg !7138
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7139
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !7139
  %conv = zext i32 %call to i64, !dbg !7139
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !7139
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7139
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7139
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !7139
  ret i1 %call1, !dbg !7140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7141 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7149, metadata !DIExpression()), !dbg !7151
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7150, metadata !DIExpression()), !dbg !7152
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7153
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7154
  %div = udiv i64 %1, 64, !dbg !7154
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7155
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7156
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7157
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7158
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7159
  ret i1 %call, !dbg !7160
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !7161 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7165, metadata !DIExpression()), !dbg !7166
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7167
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !7168
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7169
  ret i32 %1, !dbg !7170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7171 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7180, metadata !DIExpression()), !dbg !7182
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7183
  %1 = load i64, ptr %size.addr, align 8, !dbg !7184
  %conv = trunc i64 %1 to i32, !dbg !7184
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !7185
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7186
  %3 = load i64, ptr %size.addr, align 8, !dbg !7186
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !7186
  ret void, !dbg !7187
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7188 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7191, metadata !DIExpression()), !dbg !7193
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7192, metadata !DIExpression()), !dbg !7194
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7195
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7196
  br i1 %1, label %cond.true, label %cond.false, !dbg !7196

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7197
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7198
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7199
  %conv = zext i1 %call to i32, !dbg !7199
  br label %cond.end, !dbg !7196

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7200
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7201
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !7202
  %conv2 = zext i1 %call1 to i32, !dbg !7202
  br label %cond.end, !dbg !7196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7196
  %tobool = icmp ne i32 %cond, 0, !dbg !7196
  ret i1 %tobool, !dbg !7203
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7204 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7209, metadata !DIExpression()), !dbg !7211
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7210, metadata !DIExpression()), !dbg !7212
  ret i1 true, !dbg !7213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7214 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7219, metadata !DIExpression()), !dbg !7222
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7220, metadata !DIExpression()), !dbg !7223
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7221, metadata !DIExpression()), !dbg !7224
  ret void, !dbg !7225
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7226 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7230, metadata !DIExpression()), !dbg !7232
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7231, metadata !DIExpression()), !dbg !7233
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7234
  %and = and i64 %0, 63, !dbg !7235
  %shl = shl i64 1, %and, !dbg !7236
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7237
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7238
  %shr = ashr i64 %2, 6, !dbg !7239
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7237
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7237
  %and1 = and i64 %shl, %3, !dbg !7240
  %cmp = icmp ne i64 %and1, 0, !dbg !7241
  ret i1 %cmp, !dbg !7242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7243 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7245, metadata !DIExpression()), !dbg !7248
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7246, metadata !DIExpression()), !dbg !7249
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !7250
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7247, metadata !DIExpression()), !dbg !7251
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7252
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7253
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !7254, !srcloc !7255
  %3 = icmp ult i8 %2, 2, !dbg !7254
  call void @llvm.assume(i1 %3), !dbg !7254
  store i8 %2, ptr %oldbit, align 1, !dbg !7254
  %4 = load i8, ptr %oldbit, align 1, !dbg !7256, !range !6389, !noundef !663
  %tobool = trunc i8 %4 to i1, !dbg !7256
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !7257
  ret i1 %tobool, !dbg !7258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !7259 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7263, metadata !DIExpression()), !dbg !7265
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7264, metadata !DIExpression()), !dbg !7266
  ret void, !dbg !7267
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(none) }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6362}
!llvm.module.flags = !{!6363, !6364, !6365, !6366, !6367, !6368, !6369, !6370}
!llvm.ident = !{!6371}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "freeze_timeout_msecs", scope: !2, file: !3, line: 26, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/power/.process.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/power/process\22 -D KBUILD_BASENAME=\22process\22 -D KBUILD_MODNAME=\22process\22 -D __KBUILD_MODNAME=kmod_process -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/power/process.ll kernel/power/process.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !320, globals: !6236, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/power/process.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d98d42f2d52a46558196411c67e3c50e")
!4 = !{!5, !12, !17, !22, !118, !126, !133, !141, !157, !162, !169, !175, !182, !190, !197, !203, !210, !214, !220, !226, !235, !240, !245, !251, !262, !268, !277, !282, !288, !300, !306, !313}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "umh_disable_depth", file: !6, line: 45, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UMH_ENABLED", value: 0)
!10 = !DIEnumerator(name: "UMH_FREEZING", value: 1)
!11 = !DIEnumerator(name: "UMH_DISABLED", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !24, file: !23, line: 147, baseType: !7, size: 32, elements: !115)
!23 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !23, line: 135, size: 512, elements: !25)
!25 = !{!26, !30, !32, !34, !38, !39, !55, !113, !114}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !24, file: !23, line: 136, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !24, file: !23, line: 137, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !24, file: !23, line: 138, baseType: !33, size: 32, offset: 128)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !24, file: !23, line: 139, baseType: !35, size: 16, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !36, line: 24, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !23, line: 150, baseType: !22, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !24, file: !23, line: 151, baseType: !40, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !23, line: 64, baseType: !42)
!42 = !DISubroutineType(types: !43)
!43 = !{!33, !44, !33, !31, !45, !51}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 61, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !48, line: 72, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !48, line: 16, baseType: !50)
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !36, line: 52, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !48, line: 88, baseType: !54)
!54 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !24, file: !23, line: 152, baseType: !56, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !23, line: 117, size: 256, elements: !58)
!58 = !{!59, !64}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !57, file: !23, line: 118, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 174, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 172, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !61, file: !36, line: 173, baseType: !33, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !57, file: !23, line: 119, baseType: !65, size: 192, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !66, line: 41, baseType: !67)
!66 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !66, line: 37, size: 192, elements: !68)
!68 = !{!69, !107}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !67, file: !66, line: 38, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !71, line: 29, baseType: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !71, line: 17, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !71, line: 18, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !71, line: 18, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !75, file: !71, line: 19, baseType: !78, size: 32)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !79, line: 14, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !78, file: !79, line: 15, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !83, line: 44, baseType: !84)
!83 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !83, line: 14, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !83, line: 15, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !83, line: 15, size: 32, elements: !88)
!88 = !{!89, !90, !100}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !83, line: 16, baseType: !60, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !83, line: 24, baseType: !91, size: 16)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !83, line: 24, size: 16, elements: !92)
!92 = !{!93, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !91, file: !83, line: 25, baseType: !94, size: 8)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !95, line: 17, baseType: !96)
!95 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !98)
!97 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !91, file: !83, line: 26, baseType: !94, size: 8, offset: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !83, line: 28, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !83, line: 28, size: 32, elements: !102)
!102 = !{!103, !106}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !101, file: !83, line: 29, baseType: !104, size: 16)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !95, line: 19, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !37)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !101, file: !83, line: 30, baseType: !104, size: 16, offset: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !67, file: !66, line: 39, baseType: !108, size: 128, offset: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 190, size: 128, elements: !109)
!109 = !{!110, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !36, line: 191, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !36, line: 191, baseType: !111, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !24, file: !23, line: 153, baseType: !31, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !24, file: !23, line: 154, baseType: !31, size: 64, offset: 448)
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!117 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !119, line: 9, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!122 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!123 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!124 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!125 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !127, line: 312, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!130 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!131 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!132 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !134, line: 68, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!135 = !{!136, !137, !138, !139, !140}
!136 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!138 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!139 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!140 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !142, line: 1325, baseType: !7, size: 32, elements: !143)
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
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !158, line: 32, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!161 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !163, line: 15, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!166 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!167 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!168 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !170, line: 45, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!173 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!174 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !176, line: 487, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!179 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!180 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!181 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !183, line: 620, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!186 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!187 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!188 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!189 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !183, line: 597, baseType: !33, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!193 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!194 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!195 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!196 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !198, line: 41, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!199 = !{!200, !201, !202}
!200 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!201 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!202 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !198, line: 99, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!206 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!207 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!208 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!209 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !198, line: 80, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!213 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !215, line: 30, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!218 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!219 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !221, line: 26, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!224 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!225 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !176, line: 547, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!229 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!230 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!231 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!232 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!233 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!234 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !176, line: 564, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!238 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !176, line: 577, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!243 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!244 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !176, line: 503, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!249 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!250 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !252, line: 253, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261}
!254 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!255 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!256 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!257 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!258 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!259 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!260 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!261 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !252, line: 158, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266, !267}
!264 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!265 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!266 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!267 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !269, line: 593, baseType: !33, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!272 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!273 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!274 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!275 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!276 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !278, line: 2052, baseType: !7, size: 32, elements: !279)
!278 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!279 = !{!280, !281}
!280 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!281 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !283, line: 54, baseType: !7, size: 32, elements: !284)
!283 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!284 = !{!285, !286, !287}
!285 = !DIEnumerator(name: "USRQUOTA", value: 0)
!286 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!287 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !289, line: 44, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299}
!291 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!292 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!293 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!294 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!295 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!296 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!297 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!298 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!299 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !301, line: 16, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "TT_NONE", value: 0)
!304 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!305 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !307, line: 51, baseType: !7, size: 32, elements: !308)
!307 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!308 = !{!309, !310, !311, !312}
!309 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!310 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!311 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!312 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tk_offsets", file: !314, line: 60, baseType: !7, size: 32, elements: !315)
!314 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!315 = !{!316, !317, !318, !319}
!316 = !DIEnumerator(name: "TK_OFFS_REAL", value: 0)
!317 = !DIEnumerator(name: "TK_OFFS_BOOT", value: 1)
!318 = !DIEnumerator(name: "TK_OFFS_TAI", value: 2)
!319 = !DIEnumerator(name: "TK_OFFS_MAX", value: 3)
!320 = !{!31, !321, !324, !6230, !50, !1080, !33, !3115, !6231, !3382, !6234, !4404, !7, !335}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !326, line: 746, size: 58368, elements: !327)
!326 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!327 = !{!328, !338, !339, !340, !346, !347, !348, !349, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !432, !443, !544, !548, !551, !582, !583, !584, !585, !596, !598, !599, !600, !601, !602, !603, !614, !615, !618, !619, !620, !621, !622, !623, !624, !625, !632, !633, !640, !641, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5412, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5455, !5461, !5462, !5463, !5464, !5465, !5467, !5470, !5477, !5482, !5485, !5488, !5491, !5523, !5721, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5759, !5760, !5761, !5770, !5778, !5779, !5780, !5781, !5782, !5787, !5788, !5789, !5792, !5793, !5796, !5799, !5804, !5811, !5814, !5815, !5901, !5902, !5903, !5904, !5905, !5911, !5912, !5913, !5914, !5915, !5916, !5919, !5922, !5923, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5966, !5967, !5973, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !6055, !6057, !6058, !6059, !6060, !6061, !6062, !6065, !6066, !6067, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6079, !6080, !6081}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !325, file: !326, line: 752, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !330, line: 56, size: 192, elements: !331)
!330 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!331 = !{!332, !333, !334, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !330, line: 57, baseType: !50, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !329, file: !330, line: 58, baseType: !50, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !329, file: !330, line: 59, baseType: !335, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !95, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !329, file: !330, line: 61, baseType: !335, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !325, file: !326, line: 754, baseType: !7, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !325, file: !326, line: 767, baseType: !31, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !325, file: !326, line: 768, baseType: !341, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !342, line: 113, baseType: !343)
!342 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !342, line: 111, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !343, file: !342, line: 112, baseType: !60, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !326, line: 770, baseType: !7, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !325, file: !326, line: 771, baseType: !7, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !325, file: !326, line: 774, baseType: !33, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !325, file: !326, line: 775, baseType: !350, size: 128, offset: 448)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !351, line: 58, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!352 = !{!353, !359, !364, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !350, file: !351, line: 59, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !355, line: 60, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 61, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !351, line: 60, baseType: !360, size: 32, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !351, line: 60, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !360, file: !351, line: 61, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !360, file: !351, line: 62, baseType: !60, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !350, file: !351, line: 65, baseType: !104, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !350, file: !351, line: 65, baseType: !104, size: 16, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !325, file: !326, line: 776, baseType: !7, size: 32, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !325, file: !326, line: 777, baseType: !50, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !325, file: !326, line: 778, baseType: !324, size: 64, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !325, file: !326, line: 787, baseType: !33, size: 32, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !325, file: !326, line: 788, baseType: !33, size: 32, offset: 800)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !325, file: !326, line: 790, baseType: !33, size: 32, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !325, file: !326, line: 792, baseType: !33, size: 32, offset: 864)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !325, file: !326, line: 793, baseType: !33, size: 32, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !325, file: !326, line: 794, baseType: !33, size: 32, offset: 928)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !325, file: !326, line: 795, baseType: !7, size: 32, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !325, file: !326, line: 797, baseType: !377, size: 2048, offset: 1024)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !326, line: 551, size: 2048, elements: !378)
!378 = !{!379, !384, !392, !396, !397, !398, !399, !400, !401, !402, !403, !406, !407, !408, !409, !411, !414, !415, !416}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !377, file: !326, line: 553, baseType: !380, size: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !326, line: 411, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !380, file: !326, line: 412, baseType: !50, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !380, file: !326, line: 413, baseType: !335, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !377, file: !326, line: 554, baseType: !385, size: 192, align: 64, offset: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !386, line: 5, size: 192, align: 64, elements: !387)
!386 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!387 = !{!388, !389, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !385, file: !386, line: 6, baseType: !50, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !385, file: !386, line: 7, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !385, file: !386, line: 8, baseType: !390, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !377, file: !326, line: 555, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !95, line: 23, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !395)
!395 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !377, file: !326, line: 556, baseType: !393, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !377, file: !326, line: 558, baseType: !108, size: 128, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !377, file: !326, line: 559, baseType: !7, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !377, file: !326, line: 561, baseType: !393, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !377, file: !326, line: 562, baseType: !393, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !377, file: !326, line: 563, baseType: !393, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !377, file: !326, line: 564, baseType: !393, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !377, file: !326, line: 565, baseType: !404, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !95, line: 22, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !97, line: 30, baseType: !54)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !377, file: !326, line: 566, baseType: !393, size: 64, offset: 960)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !377, file: !326, line: 568, baseType: !393, size: 64, offset: 1024)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !377, file: !326, line: 571, baseType: !33, size: 32, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !377, file: !326, line: 572, baseType: !410, size: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !377, file: !326, line: 574, baseType: !412, size: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !326, line: 49, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !377, file: !326, line: 576, baseType: !412, size: 64, offset: 1280)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !377, file: !326, line: 578, baseType: !50, size: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !377, file: !326, line: 588, baseType: !417, size: 512, align: 512, offset: 1536)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !326, line: 497, size: 512, align: 512, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !417, file: !326, line: 498, baseType: !393, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !417, file: !326, line: 499, baseType: !393, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !417, file: !326, line: 500, baseType: !393, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !417, file: !326, line: 501, baseType: !335, size: 32, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !417, file: !326, line: 502, baseType: !335, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !417, file: !326, line: 503, baseType: !50, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !417, file: !326, line: 504, baseType: !50, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !417, file: !326, line: 505, baseType: !50, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !417, file: !326, line: 506, baseType: !428, size: 64, align: 64, offset: 448)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !326, line: 445, size: 64, align: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !428, file: !326, line: 446, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !428, file: !326, line: 447, baseType: !7, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !325, file: !326, line: 798, baseType: !433, size: 384, offset: 3072)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !326, line: 592, size: 384, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !433, file: !326, line: 593, baseType: !108, size: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !433, file: !326, line: 594, baseType: !50, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !433, file: !326, line: 595, baseType: !50, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !433, file: !326, line: 596, baseType: !7, size: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !433, file: !326, line: 597, baseType: !37, size: 16, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !433, file: !326, line: 598, baseType: !37, size: 16, offset: 304)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !433, file: !326, line: 600, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !325, file: !326, line: 799, baseType: !444, size: 1792, offset: 3456)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !326, line: 610, size: 1792, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !541, !542}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !444, file: !326, line: 611, baseType: !385, size: 192, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !444, file: !326, line: 618, baseType: !393, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !444, file: !326, line: 619, baseType: !393, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !444, file: !326, line: 620, baseType: !393, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !444, file: !326, line: 621, baseType: !393, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !444, file: !326, line: 622, baseType: !393, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !444, file: !326, line: 629, baseType: !404, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !444, file: !326, line: 630, baseType: !393, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !326, line: 631, baseType: !7, size: 32, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !444, file: !326, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !444, file: !326, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !444, file: !326, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !444, file: !326, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !444, file: !326, line: 662, baseType: !460, size: 512, offset: 704)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !461)
!461 = !{!462, !470, !471, !476, !537, !538, !539, !540}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !18, line: 119, baseType: !463, size: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !464, line: 9, size: 256, elements: !465)
!464 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !464, line: 10, baseType: !385, size: 192, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !463, file: !464, line: 11, baseType: !468, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !469, line: 29, baseType: !404)
!469 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !460, file: !18, line: 120, baseType: !468, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !460, file: !18, line: 121, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!17, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !460, file: !18, line: 122, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !479)
!479 = !{!480, !506, !507, !510, !520, !521, !532, !536}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !478, file: !18, line: 160, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 215, size: 4608, align: 512, elements: !483)
!483 = !{!484, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !18, line: 216, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !79, line: 23, baseType: !78)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !482, file: !18, line: 217, baseType: !7, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !482, file: !18, line: 218, baseType: !7, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !482, file: !18, line: 219, baseType: !7, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !482, file: !18, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !482, file: !18, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !482, file: !18, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !482, file: !18, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !482, file: !18, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !482, file: !18, line: 226, baseType: !7, size: 32, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !482, file: !18, line: 227, baseType: !37, size: 16, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !482, file: !18, line: 228, baseType: !37, size: 16, offset: 208)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !482, file: !18, line: 229, baseType: !7, size: 32, offset: 224)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !482, file: !18, line: 235, baseType: !468, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !482, file: !18, line: 236, baseType: !475, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !482, file: !18, line: 237, baseType: !468, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !482, file: !18, line: 238, baseType: !475, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !482, file: !18, line: 239, baseType: !503, size: 4096, align: 512, offset: 512)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 4096, align: 512, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 8)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !478, file: !18, line: 161, baseType: !7, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !478, file: !18, line: 162, baseType: !508, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !36, line: 32, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !48, line: 96, baseType: !33)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !478, file: !18, line: 163, baseType: !511, size: 32, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !512, line: 274, baseType: !513)
!512 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !512, line: 274, size: 32, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !513, file: !512, line: 274, baseType: !516, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !512, line: 69, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !512, line: 64, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !517, file: !512, line: 65, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !478, file: !18, line: 164, baseType: !475, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !478, file: !18, line: 165, baseType: !522, size: 128, offset: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !464, line: 14, size: 128, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !522, file: !464, line: 15, baseType: !525, size: 128)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !386, line: 26, size: 128, elements: !526)
!526 = !{!527, !531}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !525, file: !386, line: 27, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !386, line: 12, size: 64, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !528, file: !386, line: 13, baseType: !390, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !525, file: !386, line: 28, baseType: !390, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !478, file: !18, line: 166, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!468}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !478, file: !18, line: 167, baseType: !468, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !460, file: !18, line: 123, baseType: !94, size: 8, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !460, file: !18, line: 124, baseType: !94, size: 8, offset: 456)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !460, file: !18, line: 125, baseType: !94, size: 8, offset: 464)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !460, file: !18, line: 126, baseType: !94, size: 8, offset: 472)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !444, file: !326, line: 671, baseType: !460, size: 512, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !444, file: !326, line: 679, baseType: !543, size: 64, offset: 1728)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !325, file: !326, line: 800, baseType: !545, size: 64, offset: 5248)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !326, line: 800, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !325, file: !326, line: 809, baseType: !549, size: 64, offset: 5312)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !326, line: 70, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !325, file: !326, line: 825, baseType: !552, size: 2048, align: 512, offset: 5632)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !326, line: 509, size: 2048, align: 512, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !552, file: !326, line: 511, baseType: !393, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !552, file: !326, line: 512, baseType: !393, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !552, file: !326, line: 513, baseType: !393, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !552, file: !326, line: 514, baseType: !393, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !552, file: !326, line: 515, baseType: !393, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !552, file: !326, line: 516, baseType: !393, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !552, file: !326, line: 518, baseType: !393, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !552, file: !326, line: 519, baseType: !393, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !552, file: !326, line: 520, baseType: !404, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !552, file: !326, line: 522, baseType: !393, size: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !552, file: !326, line: 523, baseType: !393, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !552, file: !326, line: 524, baseType: !404, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !552, file: !326, line: 526, baseType: !404, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !552, file: !326, line: 527, baseType: !393, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !552, file: !326, line: 529, baseType: !393, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !552, file: !326, line: 530, baseType: !393, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !552, file: !326, line: 531, baseType: !393, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !552, file: !326, line: 532, baseType: !393, size: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !552, file: !326, line: 533, baseType: !393, size: 64, offset: 1152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !552, file: !326, line: 535, baseType: !393, size: 64, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !552, file: !326, line: 536, baseType: !393, size: 64, offset: 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !552, file: !326, line: 537, baseType: !393, size: 64, offset: 1344)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !552, file: !326, line: 538, baseType: !393, size: 64, offset: 1408)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !552, file: !326, line: 539, baseType: !393, size: 64, offset: 1472)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !552, file: !326, line: 540, baseType: !393, size: 64, offset: 1536)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !552, file: !326, line: 541, baseType: !393, size: 64, offset: 1600)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !552, file: !326, line: 542, baseType: !393, size: 64, offset: 1664)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !552, file: !326, line: 543, baseType: !393, size: 64, offset: 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !325, file: !326, line: 833, baseType: !7, size: 32, offset: 7680)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !325, file: !326, line: 836, baseType: !7, size: 32, offset: 7712)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !325, file: !326, line: 837, baseType: !33, size: 32, offset: 7744)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !325, file: !326, line: 838, baseType: !586, size: 64, offset: 7808)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !589, line: 19, baseType: !590)
!589 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !589, line: 19, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !590, file: !589, line: 19, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 1)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !325, file: !326, line: 839, baseType: !597, size: 64, offset: 7872)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !325, file: !326, line: 840, baseType: !588, size: 64, offset: 7936)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !325, file: !326, line: 841, baseType: !31, size: 64, offset: 8000)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !325, file: !326, line: 843, baseType: !37, size: 16, offset: 8064)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !325, file: !326, line: 845, baseType: !37, size: 16, offset: 8080)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !325, file: !326, line: 848, baseType: !33, size: 32, offset: 8096)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !325, file: !326, line: 849, baseType: !604, size: 32, offset: 8128)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !326, line: 718, size: 32, elements: !605)
!605 = !{!606, !613}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !604, file: !326, line: 724, baseType: !607, size: 32)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !326, line: 719, size: 32, elements: !608)
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !607, file: !326, line: 720, baseType: !94, size: 8)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !607, file: !326, line: 721, baseType: !94, size: 8, offset: 8)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !607, file: !326, line: 722, baseType: !94, size: 8, offset: 16)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !607, file: !326, line: 723, baseType: !94, size: 8, offset: 24)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !604, file: !326, line: 725, baseType: !335, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !325, file: !326, line: 850, baseType: !108, size: 128, offset: 8192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !325, file: !326, line: 851, baseType: !616, size: 64, offset: 8320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !326, line: 60, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !325, file: !326, line: 855, baseType: !50, size: 64, offset: 8384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !325, file: !326, line: 856, baseType: !94, size: 8, offset: 8448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !325, file: !326, line: 857, baseType: !94, size: 8, offset: 8456)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !325, file: !326, line: 858, baseType: !33, size: 32, offset: 8480)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !325, file: !326, line: 859, baseType: !108, size: 128, offset: 8512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !325, file: !326, line: 860, baseType: !33, size: 32, offset: 8640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !325, file: !326, line: 861, baseType: !108, size: 128, offset: 8704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !325, file: !326, line: 873, baseType: !626, size: 256, offset: 8832)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !326, line: 376, size: 256, elements: !627)
!627 = !{!628, !629, !630, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !626, file: !326, line: 381, baseType: !50, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !626, file: !326, line: 384, baseType: !395, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !626, file: !326, line: 389, baseType: !395, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !626, file: !326, line: 392, baseType: !395, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !325, file: !326, line: 875, baseType: !108, size: 128, offset: 9088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !325, file: !326, line: 877, baseType: !634, size: 320, offset: 9216)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !635, line: 86, size: 320, elements: !636)
!635 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!636 = !{!637, !638, !639}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !634, file: !635, line: 87, baseType: !33, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !634, file: !635, line: 88, baseType: !108, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !634, file: !635, line: 89, baseType: !108, size: 128, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !325, file: !326, line: 878, baseType: !385, size: 192, align: 64, offset: 9536)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !325, file: !326, line: 881, baseType: !642, size: 64, offset: 9728)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !142, line: 733, size: 10240, elements: !644)
!644 = !{!645, !5326}
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !142, line: 734, baseType: !646, size: 10240)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !142, line: 734, size: 10240, elements: !647)
!647 = !{!648, !652, !666, !5184, !5185, !5186, !5187, !5188, !5189, !5196, !5197, !5198, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5237, !5238, !5241, !5306, !5307, !5308, !5311, !5312, !5313, !5316, !5317, !5318, !5324, !5325}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !142, line: 739, baseType: !649, size: 512, align: 512)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !142, line: 739, size: 512, align: 512, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !649, file: !142, line: 747, baseType: !60, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !646, file: !142, line: 750, baseType: !653, size: 128, offset: 512)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !654, line: 218, size: 128, elements: !655)
!654 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!655 = !{!656, !664, !665}
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 219, baseType: !657, size: 32)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 219, size: 32, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !657, file: !654, line: 220, baseType: !70, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !657, file: !654, line: 221, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !654, line: 197, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 197, elements: !663)
!663 = !{}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !653, file: !654, line: 223, baseType: !7, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !653, file: !654, line: 224, baseType: !31, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !646, file: !142, line: 752, baseType: !667, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!50, !670, !50, !50, !50, !50}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !278, line: 994, size: 1856, align: 64, elements: !672)
!672 = !{!673, !687, !688, !690, !697, !709, !710, !711, !1093, !1171, !1180, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183}
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !278, line: 995, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !278, line: 995, size: 128, elements: !675)
!675 = !{!676, !677, !686}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !674, file: !278, line: 996, baseType: !354, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !674, file: !278, line: 997, baseType: !678, size: 128, align: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !36, line: 232, size: 128, align: 64, elements: !679)
!679 = !{!680, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !36, line: 233, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !678, file: !36, line: 234, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !681}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !674, file: !278, line: 998, baseType: !7, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !671, file: !278, line: 1005, baseType: !70, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !671, file: !278, line: 1006, baseType: !689, size: 32, offset: 160)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !36, line: 156, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !671, file: !278, line: 1007, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !692, line: 13, baseType: !693)
!692 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !36, line: 181, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 179, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !694, file: !36, line: 180, baseType: !404, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !671, file: !278, line: 1008, baseType: !698, size: 256, offset: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !699, line: 66, size: 256, elements: !700)
!699 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!700 = !{!701, !702, !703, !708}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !698, file: !699, line: 67, baseType: !691, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !698, file: !699, line: 68, baseType: !485, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !698, file: !699, line: 70, baseType: !704, size: 32, offset: 96)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !705, line: 15, size: 32, elements: !706)
!705 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !704, file: !705, line: 20, baseType: !60, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !698, file: !699, line: 72, baseType: !108, size: 128, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !671, file: !278, line: 1009, baseType: !52, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !671, file: !278, line: 1010, baseType: !7, size: 32, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !671, file: !278, line: 1011, baseType: !712, size: 256, offset: 640)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !278, line: 948, size: 256, elements: !713)
!713 = !{!714, !737, !1089, !1090, !1091, !1092}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !278, line: 949, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !716, line: 34, baseType: !717)
!716 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 25, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !717, file: !716, line: 26, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !721, line: 27, baseType: !722)
!721 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !721, line: 13, size: 64, elements: !723)
!723 = !{!724, !736}
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !721, line: 14, baseType: !725, size: 32)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !721, line: 14, size: 32, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !725, file: !721, line: 15, baseType: !60, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !721, line: 16, baseType: !729, size: 32)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !721, line: 16, size: 32, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !729, file: !721, line: 18, baseType: !94, size: 8)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !729, file: !721, line: 19, baseType: !733, size: 24, offset: 8)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 3)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !722, file: !721, line: 26, baseType: !82, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !712, file: !278, line: 950, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !119, line: 59, size: 768, elements: !740)
!740 = !{!741, !742, !743, !744, !757, !758, !759, !760}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !739, file: !119, line: 61, baseType: !341, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !739, file: !119, line: 62, baseType: !7, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !119, line: 63, baseType: !70, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !739, file: !119, line: 65, baseType: !745, size: 256, offset: 128)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 256, elements: !755)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !36, line: 194, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !746, file: !36, line: 195, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !36, line: 198, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !36, line: 199, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !750, file: !36, line: 199, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!755 = !{!756}
!756 = !DISubrange(count: 4)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !739, file: !119, line: 66, baseType: !746, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !739, file: !119, line: 68, baseType: !65, size: 192, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !739, file: !119, line: 69, baseType: !678, size: 128, align: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !739, file: !119, line: 70, baseType: !761, offset: 768)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, elements: !1087)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !119, line: 54, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !762, file: !119, line: 55, baseType: !33, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !762, file: !119, line: 56, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !768, line: 26, size: 1152, elements: !769)
!768 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!769 = !{!770, !784, !785, !786, !787, !791, !792, !793, !796, !1083, !1084, !1085, !1086}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !767, file: !768, line: 27, baseType: !771, size: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !772, line: 19, size: 192, elements: !773)
!772 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!773 = !{!774, !782, !783}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !771, file: !772, line: 20, baseType: !775, size: 128)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !776, line: 296, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!777 = !{!778, !779, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !775, file: !776, line: 297, baseType: !70, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !775, file: !776, line: 299, baseType: !780, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 154, baseType: !7)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !775, file: !776, line: 300, baseType: !31, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !771, file: !772, line: 21, baseType: !7, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !771, file: !772, line: 22, baseType: !7, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !767, file: !768, line: 28, baseType: !678, size: 128, align: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !767, file: !768, line: 29, baseType: !7, size: 32, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !767, file: !768, line: 30, baseType: !324, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !767, file: !768, line: 31, baseType: !788, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !790, line: 325, flags: DIFlagFwdDecl)
!790 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !767, file: !768, line: 32, baseType: !7, size: 32, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !767, file: !768, line: 33, baseType: !766, size: 64, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !767, file: !768, line: 35, baseType: !794, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !768, line: 17, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !767, file: !768, line: 37, baseType: !797, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !799, line: 68, size: 4800, elements: !800)
!799 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!800 = !{!801, !823, !824, !825, !826, !827, !835, !842, !853, !854, !857, !858, !980, !981, !993, !1063, !1064, !1078, !1081}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !798, file: !799, line: 69, baseType: !802, size: 576)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !799, line: 23, size: 576, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !802, file: !799, line: 24, baseType: !335, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !799, line: 25, baseType: !806, size: 512, offset: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !799, line: 25, size: 512, elements: !807)
!807 = !{!808, !817}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !806, file: !799, line: 26, baseType: !809, size: 480)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 480, elements: !815)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !799, line: 17, size: 96, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !810, file: !799, line: 18, baseType: !335, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !810, file: !799, line: 19, baseType: !335, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !799, line: 20, baseType: !335, size: 32, offset: 64)
!815 = !{!816}
!816 = !DISubrange(count: 5)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !799, line: 27, baseType: !818, size: 128)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !806, file: !799, line: 27, size: 128, elements: !819)
!819 = !{!820, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !818, file: !799, line: 28, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !818, file: !799, line: 29, baseType: !821, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !798, file: !799, line: 70, baseType: !802, size: 576, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !798, file: !799, line: 71, baseType: !802, size: 576, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !798, file: !799, line: 72, baseType: !797, size: 64, offset: 1728)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !798, file: !799, line: 73, baseType: !33, size: 32, offset: 1792)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !798, file: !799, line: 74, baseType: !828, size: 32, offset: 1824)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !829, line: 23, baseType: !830)
!829 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !829, line: 21, size: 32, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !830, file: !829, line: 22, baseType: !833, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !36, line: 37, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !48, line: 49, baseType: !7)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !798, file: !799, line: 75, baseType: !836, size: 32, offset: 1856)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !829, line: 28, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !829, line: 26, size: 32, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !837, file: !829, line: 27, baseType: !840, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !36, line: 38, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !48, line: 50, baseType: !7)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !798, file: !799, line: 76, baseType: !843, size: 192, offset: 1920)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !844, line: 9, size: 192, elements: !845)
!844 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!845 = !{!846, !847, !851, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !843, file: !844, line: 10, baseType: !691, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !843, file: !844, line: 11, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !844, line: 7, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !843, file: !844, line: 12, baseType: !7, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !843, file: !844, line: 13, baseType: !341, size: 32, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 77, baseType: !50, size: 64, offset: 2112)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !798, file: !799, line: 80, baseType: !855, size: 8, offset: 2176)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 35, baseType: !856)
!856 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !798, file: !799, line: 88, baseType: !108, size: 128, offset: 2240)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !798, file: !799, line: 89, baseType: !859, size: 64, offset: 2368)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !861, line: 195, size: 1728, elements: !862)
!861 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!862 = !{!863, !864, !869, !874, !883, !886, !887, !894, !895, !896, !897, !900, !901, !902, !904, !905, !944, !965}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !860, file: !861, line: 196, baseType: !341, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !860, file: !861, line: 197, baseType: !865, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !861, line: 28, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !36, line: 104, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !95, line: 20, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !33)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !861, line: 198, baseType: !870, size: 192, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !861, line: 198, size: 192, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !870, file: !861, line: 199, baseType: !108, size: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !870, file: !861, line: 200, baseType: !385, size: 192, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !860, file: !861, line: 205, baseType: !875, size: 320, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !876, line: 48, size: 320, elements: !877)
!876 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!877 = !{!878, !879, !880, !881, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !875, file: !876, line: 49, baseType: !691, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !875, file: !876, line: 55, baseType: !691, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !875, file: !876, line: 57, baseType: !704, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !875, file: !876, line: 59, baseType: !485, size: 32, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !875, file: !876, line: 60, baseType: !108, size: 128, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !860, file: !861, line: 206, baseType: !884, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !861, line: 206, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !860, file: !861, line: 207, baseType: !31, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !861, line: 208, baseType: !888, size: 64, offset: 704)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !861, line: 208, size: 64, elements: !889)
!889 = !{!890, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !888, file: !861, line: 209, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !892, line: 8, baseType: !405)
!892 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !888, file: !861, line: 210, baseType: !891, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !860, file: !861, line: 212, baseType: !891, size: 64, offset: 768)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !860, file: !861, line: 213, baseType: !828, size: 32, offset: 832)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !860, file: !861, line: 214, baseType: !836, size: 32, offset: 864)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !860, file: !861, line: 215, baseType: !898, size: 32, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !861, line: 31, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 110, baseType: !335)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !860, file: !861, line: 216, baseType: !37, size: 16, offset: 928)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !860, file: !861, line: 217, baseType: !37, size: 16, offset: 944)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !860, file: !861, line: 221, baseType: !903, size: 16, offset: 960)
!903 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !861, line: 228, baseType: !50, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !861, line: 245, baseType: !906, size: 320, offset: 1088)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !861, line: 245, size: 320, elements: !907)
!907 = !{!908, !935}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !906, file: !861, line: 246, baseType: !909, size: 320)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !861, line: 114, size: 320, elements: !910)
!910 = !{!911, !912, !924, !927, !934}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !909, file: !861, line: 116, baseType: !50, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !861, line: 117, baseType: !913, size: 64, offset: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !909, file: !861, line: 117, size: 64, elements: !914)
!914 = !{!915, !923}
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !861, line: 118, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !861, line: 118, size: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !916, file: !861, line: 120, baseType: !104, size: 16)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !916, file: !861, line: 121, baseType: !920, size: 48, offset: 16)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 6)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !913, file: !861, line: 127, baseType: !50, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !909, file: !861, line: 129, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !861, line: 102, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !909, file: !861, line: 130, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !861, line: 108, size: 192, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !929, file: !861, line: 109, baseType: !678, size: 128, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !929, file: !861, line: 110, baseType: !341, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !929, file: !861, line: 111, baseType: !855, size: 8, offset: 160)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !909, file: !861, line: 131, baseType: !27, size: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !861, line: 247, baseType: !936, size: 320)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !861, line: 247, size: 320, elements: !937)
!937 = !{!938, !939, !940, !941, !942}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !936, file: !861, line: 248, baseType: !50, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !936, file: !861, line: 249, baseType: !50, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !936, file: !861, line: 250, baseType: !925, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !936, file: !861, line: 251, baseType: !928, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !936, file: !861, line: 252, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !861, line: 260, baseType: !945, size: 256, offset: 1408)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !861, line: 260, size: 256, elements: !946)
!946 = !{!947, !953}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !945, file: !861, line: 261, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !861, line: 134, size: 256, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !948, file: !861, line: 135, baseType: !31, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !948, file: !861, line: 136, baseType: !952, size: 256)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !755)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !861, line: 262, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !861, line: 262, size: 256, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !954, file: !861, line: 264, baseType: !108, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !954, file: !861, line: 265, baseType: !958, size: 128, offset: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !959, line: 22, size: 128, elements: !960)
!959 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!960 = !{!961, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !958, file: !959, line: 23, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !959, line: 23, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !958, file: !959, line: 24, baseType: !50, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !860, file: !861, line: 280, baseType: !966, size: 64, offset: 1664)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !861, line: 176, size: 192, elements: !968)
!968 = !{!969, !978, !979}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !967, file: !861, line: 177, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !861, line: 171, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!33, !859, !974, !976, !859}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !967, file: !861, line: 178, baseType: !859, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !967, file: !861, line: 179, baseType: !925, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !798, file: !799, line: 90, baseType: !875, size: 320, offset: 2432)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !798, file: !799, line: 97, baseType: !982, size: 256, offset: 2752)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !983, line: 98, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !982, file: !983, line: 99, baseType: !691, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !982, file: !983, line: 100, baseType: !108, size: 128, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !982, file: !983, line: 101, baseType: !988, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !983, line: 21, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !798, file: !799, line: 99, baseType: !994, size: 768, offset: 3008)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !23, line: 199, size: 768, elements: !995)
!995 = !{!996, !1001}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !994, file: !23, line: 200, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!33, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !994, file: !23, line: 201, baseType: !1002, size: 704, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !23, line: 193, size: 704, elements: !1003)
!1003 = !{!1004, !1062}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1002, file: !23, line: 195, baseType: !1005, size: 640)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !23, line: 173, size: 640, elements: !1006)
!1006 = !{!1007, !1019, !1031, !1032, !1052, !1053, !1055, !1061}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !23, line: 174, baseType: !1008, size: 192)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !23, line: 174, size: 192, elements: !1009)
!1009 = !{!1010, !1018}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !23, line: 175, baseType: !1011, size: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !23, line: 175, size: 192, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1011, file: !23, line: 176, baseType: !44, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1011, file: !23, line: 177, baseType: !33, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1011, file: !23, line: 178, baseType: !33, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1011, file: !23, line: 179, baseType: !33, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1011, file: !23, line: 180, baseType: !33, size: 32, offset: 160)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1008, file: !23, line: 182, baseType: !678, size: 128, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1005, file: !23, line: 184, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1022, line: 26, size: 256, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1021, file: !1022, line: 27, baseType: !7, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1021, file: !1022, line: 28, baseType: !1026, size: 192, offset: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1027, line: 43, size: 192, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1026, file: !1027, line: 44, baseType: !485, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1026, file: !1027, line: 45, baseType: !108, size: 128, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1005, file: !23, line: 185, baseType: !44, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1005, file: !23, line: 186, baseType: !1033, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !23, line: 204, size: 960, elements: !1035)
!1035 = !{!1036, !1037, !1041, !1048}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1034, file: !23, line: 205, baseType: !994, size: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1034, file: !23, line: 206, baseType: !1038, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!1000, !1033}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1034, file: !23, line: 207, baseType: !1042, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1034, file: !23, line: 209, baseType: !1049, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!33, !1045, !44}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1005, file: !23, line: 187, baseType: !1000, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1005, file: !23, line: 188, baseType: !1054, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1005, file: !23, line: 189, baseType: !1056, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !23, line: 157, size: 256, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1057, file: !23, line: 158, baseType: !385, size: 192, align: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1057, file: !23, line: 159, baseType: !1045, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1005, file: !23, line: 190, baseType: !746, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1002, file: !23, line: 196, baseType: !528, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !798, file: !799, line: 100, baseType: !1045, size: 64, offset: 3776)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !798, file: !799, line: 102, baseType: !1065, size: 64, offset: 3840)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !799, line: 107, size: 1152, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1076}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1066, file: !799, line: 108, baseType: !750, size: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1066, file: !799, line: 109, baseType: !797, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1066, file: !799, line: 110, baseType: !828, size: 32, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1066, file: !799, line: 111, baseType: !60, size: 32, offset: 224)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1066, file: !799, line: 112, baseType: !1073, size: 640, offset: 256)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 640, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 10)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1066, file: !799, line: 113, baseType: !1077, size: 256, offset: 896)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 256, elements: !755)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !798, file: !799, line: 103, baseType: !1079, size: 640, offset: 3904)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 640, elements: !1074)
!1080 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !798, file: !799, line: 104, baseType: !1082, size: 256, offset: 4544)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 256, elements: !755)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !767, file: !768, line: 38, baseType: !1065, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !767, file: !768, line: 39, baseType: !33, size: 32, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !768, line: 40, baseType: !843, size: 192, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !767, file: !768, line: 42, baseType: !33, size: 32, offset: 1088)
!1087 = !{!1088}
!1088 = !DISubrange(count: -1)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !712, file: !278, line: 951, baseType: !118, size: 32, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !712, file: !278, line: 952, baseType: !828, size: 32, offset: 160)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !712, file: !278, line: 952, baseType: !828, size: 32, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !712, file: !278, line: 953, baseType: !33, size: 32, offset: 224)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !671, file: !278, line: 1012, baseType: !1094, size: 64, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1097, line: 110, size: 1472, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1156, !1157, !1158, !1166}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1096, file: !1097, line: 111, baseType: !691, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1096, file: !1097, line: 112, baseType: !828, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1096, file: !1097, line: 113, baseType: !836, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1096, file: !1097, line: 114, baseType: !828, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1096, file: !1097, line: 115, baseType: !836, size: 32, offset: 160)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1096, file: !1097, line: 116, baseType: !828, size: 32, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1096, file: !1097, line: 117, baseType: !836, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1096, file: !1097, line: 118, baseType: !828, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1096, file: !1097, line: 119, baseType: !836, size: 32, offset: 288)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1096, file: !1097, line: 120, baseType: !7, size: 32, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1096, file: !1097, line: 121, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1111, line: 24, baseType: !1112)
!1111 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 24, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1112, file: !1111, line: 24, baseType: !393, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1096, file: !1097, line: 122, baseType: !1110, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1096, file: !1097, line: 123, baseType: !1110, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1096, file: !1097, line: 124, baseType: !1110, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1096, file: !1097, line: 125, baseType: !1110, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1096, file: !1097, line: 127, baseType: !98, size: 8, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1096, file: !1097, line: 129, baseType: !859, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1096, file: !1097, line: 130, baseType: !859, size: 64, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1096, file: !1097, line: 131, baseType: !859, size: 64, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1096, file: !1097, line: 132, baseType: !859, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1096, file: !1097, line: 135, baseType: !31, size: 64, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1096, file: !1097, line: 137, baseType: !1126, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1128, line: 14, size: 1088, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1129 = !{!1130, !1131, !1140, !1141, !1142, !1143, !1144, !1145}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1127, file: !1128, line: 15, baseType: !341, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1127, file: !1128, line: 17, baseType: !1132, size: 320, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1133, line: 22, size: 320, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1134 = !{!1135, !1136, !1137, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1133, line: 23, baseType: !485, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1132, file: !1133, line: 24, baseType: !404, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1132, file: !1133, line: 26, baseType: !108, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1132, file: !1133, line: 28, baseType: !1139, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1127, file: !1128, line: 19, baseType: !50, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1127, file: !1128, line: 20, baseType: !691, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1127, file: !1128, line: 23, baseType: !750, size: 128, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1127, file: !1128, line: 24, baseType: !828, size: 32, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1127, file: !1128, line: 29, baseType: !691, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1127, file: !1128, line: 36, baseType: !1146, size: 320, offset: 768)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1147, line: 15, size: 320, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1147, line: 16, baseType: !485, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1146, file: !1147, line: 18, baseType: !33, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1146, file: !1147, line: 19, baseType: !33, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1146, file: !1147, line: 20, baseType: !33, size: 32, offset: 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1146, file: !1147, line: 21, baseType: !33, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1146, file: !1147, line: 22, baseType: !50, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !1147, line: 23, baseType: !50, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1096, file: !1097, line: 138, baseType: !797, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1096, file: !1097, line: 139, baseType: !1065, size: 64, offset: 1216)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1096, file: !1097, line: 140, baseType: !1159, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1097, line: 25, size: 64, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1160, file: !1097, line: 26, baseType: !60, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1160, file: !1097, line: 27, baseType: !33, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1160, file: !1097, line: 28, baseType: !1165, offset: 64)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, elements: !1087)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !1097, line: 142, baseType: !1167, size: 128, offset: 1344)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !1097, line: 142, size: 128, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1167, file: !1097, line: 143, baseType: !33, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1167, file: !1097, line: 144, baseType: !678, size: 128, align: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !671, file: !278, line: 1013, baseType: !1172, size: 256, offset: 960)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !278, line: 970, size: 256, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1172, file: !278, line: 971, baseType: !50, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1172, file: !278, line: 972, baseType: !7, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1172, file: !278, line: 973, baseType: !7, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1172, file: !278, line: 974, baseType: !7, size: 32, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1172, file: !278, line: 975, baseType: !7, size: 32, offset: 160)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1172, file: !278, line: 976, baseType: !52, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !671, file: !278, line: 1014, baseType: !1181, size: 128, offset: 1216)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1182, line: 8, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1183 = !{!1184, !5174}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1181, file: !1182, line: 9, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1187, line: 70, size: 256, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1188 = !{!1189, !5171, !5172, !5173}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1186, file: !1187, line: 71, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1192, line: 82, size: 1536, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1193 = !{!1194, !1195, !1200, !1208, !1209, !1224, !5139, !5141, !5154, !5155, !5156, !5157, !5158, !5163, !5164, !5165}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1191, file: !1192, line: 84, baseType: !7, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1191, file: !1192, line: 85, baseType: !1196, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !512, line: 275, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !512, line: 275, size: 32, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1197, file: !512, line: 275, baseType: !516, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1191, file: !1192, line: 86, baseType: !1201, size: 128, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1202, line: 38, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1203 = !{!1204, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1201, file: !1202, line: 39, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1201, file: !1202, line: 39, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1191, file: !1192, line: 87, baseType: !1190, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1191, file: !1192, line: 88, baseType: !1210, size: 128, offset: 256)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1192, line: 49, size: 128, elements: !1211)
!1211 = !{!1212, !1221}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1192, line: 50, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !1192, line: 50, size: 64, elements: !1214)
!1214 = !{!1215, !1220}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1192, line: 51, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1213, file: !1192, line: 51, size: 64, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1216, file: !1192, line: 52, baseType: !335, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1216, file: !1192, line: 52, baseType: !335, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1213, file: !1192, line: 54, baseType: !393, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1210, file: !1192, line: 56, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1191, file: !1192, line: 89, baseType: !1225, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !278, line: 641, size: 4800, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1237, !1238, !1425, !4954, !4955, !4956, !4957, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !5121, !5124, !5125, !5126, !5135, !5136, !5137, !5138}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1226, file: !278, line: 642, baseType: !35, size: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1226, file: !278, line: 643, baseType: !37, size: 16, offset: 16)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1226, file: !278, line: 644, baseType: !828, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1226, file: !278, line: 645, baseType: !108, size: 128, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1226, file: !278, line: 646, baseType: !836, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1226, file: !278, line: 647, baseType: !7, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1226, file: !278, line: 650, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !278, line: 607, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1226, file: !278, line: 651, baseType: !1235, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1226, file: !278, line: 654, baseType: !1239, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !278, line: 1966, size: 2048, align: 512, elements: !1242)
!1242 = !{!1243, !1247, !1260, !1266, !1270, !1274, !1278, !1282, !1286, !1290, !1294, !1295, !1301, !1305, !1342, !1373, !1380, !1386, !1390, !1394, !1398, !1402, !1406, !1412, !1416}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1241, file: !278, line: 1967, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1190, !1225, !1190, !7}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1241, file: !278, line: 1968, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!27, !1190, !1225, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1253, line: 10, size: 128, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1254 = !{!1255, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1252, file: !1253, line: 11, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !31}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1252, file: !1253, line: 12, baseType: !31, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1241, file: !278, line: 1969, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!33, !1264, !1225, !33}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1111, line: 42, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1241, file: !278, line: 1970, baseType: !1267, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1235, !1225, !33, !855}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1241, file: !278, line: 1972, baseType: !1271, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!33, !1190, !943, !33}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1241, file: !278, line: 1974, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!33, !1264, !1225, !1190, !35, !855}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1241, file: !278, line: 1976, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!33, !1190, !1225, !1190}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1241, file: !278, line: 1977, baseType: !1283, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!33, !1225, !1190}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1241, file: !278, line: 1978, baseType: !1287, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!33, !1264, !1225, !1190, !27}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1241, file: !278, line: 1980, baseType: !1291, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!33, !1264, !1225, !1190, !35}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1241, file: !278, line: 1982, baseType: !1283, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1241, file: !278, line: 1983, baseType: !1296, size: 64, offset: 704)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!33, !1264, !1225, !1190, !35, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !36, line: 21, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !36, line: 18, baseType: !335)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1241, file: !278, line: 1985, baseType: !1302, size: 64, offset: 768)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!33, !1264, !1225, !1190, !1225, !1190, !7}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1241, file: !278, line: 1987, baseType: !1306, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!33, !1264, !1190, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !278, line: 226, size: 640, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1324, !1333, !1334, !1339, !1340, !1341}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1310, file: !278, line: 227, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1310, file: !278, line: 228, baseType: !35, size: 16, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !278, line: 241, baseType: !1315, size: 32, offset: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !278, line: 241, size: 32, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1315, file: !278, line: 242, baseType: !828, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1315, file: !278, line: 243, baseType: !1319, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1320, line: 16, baseType: !1321)
!1320 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1320, line: 14, size: 32, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1321, file: !1320, line: 15, baseType: !833, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !278, line: 245, baseType: !1325, size: 32, offset: 96)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !278, line: 245, size: 32, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1325, file: !278, line: 246, baseType: !836, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1325, file: !278, line: 247, baseType: !1329, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1320, line: 20, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1320, line: 18, size: 32, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1330, file: !1320, line: 19, baseType: !840, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1310, file: !278, line: 249, baseType: !52, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1310, file: !278, line: 250, baseType: !1335, size: 128, offset: 192)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !892, line: 13, size: 128, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1335, file: !892, line: 14, baseType: !891, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1335, file: !892, line: 15, baseType: !1080, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1310, file: !278, line: 251, baseType: !1335, size: 128, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1310, file: !278, line: 252, baseType: !1335, size: 128, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1310, file: !278, line: 259, baseType: !670, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1241, file: !278, line: 1988, baseType: !1343, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!33, !1264, !1346, !1348, !335, !7}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1350, line: 22, size: 1280, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1349, file: !1350, line: 23, baseType: !335, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1349, file: !1350, line: 24, baseType: !35, size: 16, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1349, file: !1350, line: 25, baseType: !7, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1349, file: !1350, line: 26, baseType: !899, size: 32, offset: 96)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1349, file: !1350, line: 27, baseType: !393, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1349, file: !1350, line: 28, baseType: !393, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1349, file: !1350, line: 41, baseType: !393, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1349, file: !1350, line: 42, baseType: !1299, size: 32, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1349, file: !1350, line: 43, baseType: !1299, size: 32, offset: 352)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1349, file: !1350, line: 44, baseType: !828, size: 32, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1349, file: !1350, line: 45, baseType: !836, size: 32, offset: 416)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1349, file: !1350, line: 46, baseType: !52, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1349, file: !1350, line: 47, baseType: !1335, size: 128, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1349, file: !1350, line: 48, baseType: !1335, size: 128, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1349, file: !1350, line: 49, baseType: !1335, size: 128, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1349, file: !1350, line: 50, baseType: !1335, size: 128, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1349, file: !1350, line: 51, baseType: !393, size: 64, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1349, file: !1350, line: 52, baseType: !393, size: 64, offset: 1088)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1349, file: !1350, line: 53, baseType: !335, size: 32, offset: 1152)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1349, file: !1350, line: 54, baseType: !335, size: 32, offset: 1184)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1349, file: !1350, line: 55, baseType: !393, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1241, file: !278, line: 1990, baseType: !1374, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1377, !1190, !943, !46}
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 66, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !48, line: 73, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !48, line: 15, baseType: !1080)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1241, file: !278, line: 1991, baseType: !1381, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!33, !1225, !1384, !393, !393}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !278, line: 55, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1241, file: !278, line: 1993, baseType: !1387, size: 64, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!33, !1225, !33}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1241, file: !278, line: 1994, baseType: !1391, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!33, !1225, !1190, !670, !7, !35}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1241, file: !278, line: 1997, baseType: !1395, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!33, !1264, !1225, !670, !35}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1241, file: !278, line: 1999, baseType: !1399, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1235, !1264, !1190, !33}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1241, file: !278, line: 2001, baseType: !1403, size: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!33, !1264, !1190, !1235, !33}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1241, file: !278, line: 2003, baseType: !1407, size: 64, offset: 1408)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!33, !1264, !1190, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !278, line: 76, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1241, file: !278, line: 2005, baseType: !1413, size: 64, offset: 1472)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!33, !1190, !1410}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1241, file: !278, line: 2006, baseType: !1417, size: 64, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1420, !1225}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !278, line: 3192, size: 192, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1421, file: !278, line: 3193, baseType: !775, size: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1421, file: !278, line: 3194, baseType: !335, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1226, file: !278, line: 655, baseType: !1426, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !278, line: 1190, size: 10752, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !4424, !4556, !4596, !4679, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4696, !4700, !4701, !4702, !4705, !4763, !4766, !4767, !4768, !4809, !4831, !4832, !4833, !4834, !4835, !4836, !4839, !4840, !4846, !4847, !4848, !4849, !4908, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1427, file: !278, line: 1191, baseType: !108, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1427, file: !278, line: 1192, baseType: !1299, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1427, file: !278, line: 1193, baseType: !98, size: 8, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1427, file: !278, line: 1194, baseType: !50, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1427, file: !278, line: 1195, baseType: !52, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1427, file: !278, line: 1196, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !278, line: 2366, size: 576, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1446, !1450, !1454, !1458, !4412, !4413, !4414, !4416, !4417, !4418, !4420, !4421, !4422, !4423}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1436, file: !278, line: 2367, baseType: !27, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1436, file: !278, line: 2368, baseType: !33, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1436, file: !278, line: 2376, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!33, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1187, line: 21, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1436, file: !278, line: 2377, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !278, line: 75, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1436, file: !278, line: 2378, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1190, !1435, !33, !27, !31}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1436, file: !278, line: 2380, baseType: !1455, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1426}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1436, file: !278, line: 2381, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !127, line: 402, size: 9216, align: 512, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1468, !2981, !3007, !3008, !3009, !3010, !3014, !3017, !3018, !3019, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3085, !3089, !3109, !3129, !3130, !3131, !3132, !3141, !3164, !3165, !3168, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3182, !3183, !3271, !3279, !3280, !3281, !3282, !4390, !4391, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1460, file: !127, line: 403, baseType: !126, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1460, file: !127, line: 406, baseType: !108, size: 128, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1460, file: !127, line: 409, baseType: !1465, size: 448, offset: 192)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 448, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 56)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1460, file: !127, line: 417, baseType: !1469, size: 768, offset: 640)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !127, line: 45, size: 768, elements: !1470)
!1470 = !{!1471, !2975, !2976, !2977, !2980}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1469, file: !127, line: 46, baseType: !1472, size: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1473, line: 64, size: 512, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1474 = !{!1475, !1476, !1477, !1479, !1523, !2822, !2965, !2970, !2971, !2972, !2973, !2974}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1472, file: !1473, line: 65, baseType: !27, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1472, file: !1473, line: 66, baseType: !108, size: 128, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1472, file: !1473, line: 67, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1472, file: !1473, line: 68, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1473, line: 168, size: 768, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1481, file: !1473, line: 169, baseType: !108, size: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1481, file: !1473, line: 170, baseType: !70, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1481, file: !1473, line: 171, baseType: !1472, size: 512, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1481, file: !1473, line: 172, baseType: !1487, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1473, line: 133, size: 192, elements: !1490)
!1490 = !{!1491, !1498, !1503}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1489, file: !1473, line: 134, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!33, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !1473, line: 135, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!27, !1496}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1489, file: !1473, line: 136, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!33, !1496, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1473, line: 125, size: 20736, elements: !1510)
!1510 = !{!1511, !1513, !1517, !1518, !1522}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1509, file: !1473, line: 126, baseType: !1512, size: 192)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 192, elements: !734)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1509, file: !1473, line: 127, baseType: !1514, size: 4096, offset: 192)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !943, size: 4096, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1509, file: !1473, line: 128, baseType: !33, size: 32, offset: 4288)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1509, file: !1473, line: 129, baseType: !1519, size: 16384, offset: 4320)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16384, elements: !1520)
!1520 = !{!1521}
!1521 = !DISubrange(count: 2048)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1509, file: !1473, line: 130, baseType: !33, size: 32, offset: 20704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1472, file: !1473, line: 69, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1473, line: 116, size: 384, elements: !1527)
!1527 = !{!1528, !1532, !1551, !2810, !2814, !2818}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1526, file: !1473, line: 117, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1478}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1526, file: !1473, line: 118, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1536, line: 254, size: 128, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1537 = !{!1538, !1547}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1535, file: !1536, line: 255, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1377, !1478, !1542, !943}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1536, line: 30, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1543, file: !1536, line: 31, baseType: !27, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1543, file: !1536, line: 32, baseType: !35, size: 16, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1535, file: !1536, line: 256, baseType: !1548, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1377, !1478, !1542, !27, !46}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1526, file: !1473, line: 119, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1536, line: 84, size: 320, elements: !1556)
!1556 = !{!1557, !1558, !1562, !2806, !2808}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1555, file: !1536, line: 85, baseType: !27, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1555, file: !1536, line: 86, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!35, !1478, !1542, !33}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1555, file: !1536, line: 88, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!35, !1478, !1566, !33}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1536, line: 175, size: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !2797, !2801, !2802}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1567, file: !1536, line: 176, baseType: !1543, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1567, file: !1536, line: 177, baseType: !46, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1567, file: !1536, line: 178, baseType: !31, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1567, file: !1536, line: 179, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !278, line: 472, size: 1536, align: 64, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !2789, !2790, !2791, !2794, !2795, !2796}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1577, file: !278, line: 473, baseType: !1225, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1577, file: !278, line: 474, baseType: !775, size: 128, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1577, file: !278, line: 475, baseType: !875, size: 320, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1577, file: !278, line: 476, baseType: !780, size: 32, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1577, file: !278, line: 477, baseType: !60, size: 32, offset: 544)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1577, file: !278, line: 482, baseType: !525, size: 128, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1577, file: !278, line: 483, baseType: !50, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1577, file: !278, line: 484, baseType: !50, size: 64, offset: 768)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1577, file: !278, line: 485, baseType: !1588, size: 64, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !278, line: 404, size: 1280, elements: !1591)
!1591 = !{!1592, !1903, !1973, !1977, !1981, !1998, !2004, !2008, !2013, !2017, !2021, !2025, !2069, !2073, !2077, !2081, !2086, !2090, !2781, !2785}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1590, file: !278, line: 405, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!33, !1596, !1883}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !142, line: 74, size: 512, align: 128, elements: !1598)
!1598 = !{!1599, !1600, !1877, !1882}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !142, line: 75, baseType: !50, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !142, line: 83, baseType: !1601, size: 320, offset: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !142, line: 83, size: 320, elements: !1602)
!1602 = !{!1603, !1624, !1638, !1642, !1876}
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !142, line: 84, baseType: !1604, size: 320)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !142, line: 84, size: 320, elements: !1605)
!1605 = !{!1606, !1617, !1618, !1623}
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !142, line: 90, baseType: !1607, size: 128)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !142, line: 90, size: 128, elements: !1608)
!1608 = !{!1609, !1610, !1615, !1616}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1607, file: !142, line: 91, baseType: !108, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !142, line: 94, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1607, file: !142, line: 94, size: 128, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1611, file: !142, line: 96, baseType: !31, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1611, file: !142, line: 98, baseType: !7, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1607, file: !142, line: 102, baseType: !108, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1607, file: !142, line: 103, baseType: !108, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1604, file: !142, line: 106, baseType: !1576, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !142, line: 107, baseType: !1619, size: 64, offset: 192)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !142, line: 107, size: 64, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1619, file: !142, line: 108, baseType: !50, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1619, file: !142, line: 109, baseType: !50, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1604, file: !142, line: 117, baseType: !50, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !142, line: 119, baseType: !1625, size: 320)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !142, line: 119, size: 320, elements: !1626)
!1626 = !{!1627, !1628, !1631, !1632, !1633}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1625, file: !142, line: 124, baseType: !50, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1625, file: !142, line: 125, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !142, line: 125, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1625, file: !142, line: 126, baseType: !50, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1625, file: !142, line: 127, baseType: !50, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !142, line: 128, baseType: !1634, size: 64, offset: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !142, line: 128, size: 64, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1634, file: !142, line: 133, baseType: !50, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1634, file: !142, line: 138, baseType: !691, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !142, line: 141, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !142, line: 141, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1639, file: !142, line: 142, baseType: !50, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !142, line: 144, baseType: !1643, size: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !142, line: 144, size: 128, elements: !1644)
!1644 = !{!1645, !1875}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1643, file: !142, line: 146, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !134, line: 126, size: 1216, elements: !1648)
!1648 = !{!1649, !1659, !1680, !1681, !1682, !1683, !1684, !1857, !1858, !1859}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1647, file: !134, line: 127, baseType: !1650, size: 384)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !134, line: 21, size: 384, elements: !1651)
!1651 = !{!1652, !1653, !1655, !1656, !1657, !1658}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1650, file: !134, line: 22, baseType: !50, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1650, file: !134, line: 23, baseType: !1654, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1650, file: !134, line: 24, baseType: !1654, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1650, file: !134, line: 25, baseType: !50, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1650, file: !134, line: 26, baseType: !50, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1650, file: !134, line: 27, baseType: !50, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1647, file: !134, line: 128, baseType: !1660, size: 128, offset: 384)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1661, line: 105, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1660, file: !1661, line: 110, baseType: !50, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1660, file: !1661, line: 118, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1661, line: 95, size: 448, elements: !1667)
!1667 = !{!1668, !1669, !1675, !1676, !1677, !1678, !1679}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1666, file: !1661, line: 96, baseType: !691, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1666, file: !1661, line: 97, baseType: !1670, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1661, line: 60, baseType: !1672)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1666, file: !1661, line: 98, baseType: !1670, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1666, file: !1661, line: 99, baseType: !855, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1666, file: !1661, line: 100, baseType: !855, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1666, file: !1661, line: 101, baseType: !678, size: 128, align: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1666, file: !1661, line: 102, baseType: !1674, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1647, file: !134, line: 129, baseType: !1021, size: 256, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1647, file: !134, line: 130, baseType: !133, size: 32, offset: 768)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1647, file: !134, line: 131, baseType: !7, size: 32, offset: 800)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1647, file: !134, line: 132, baseType: !50, size: 64, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1647, file: !134, line: 133, baseType: !1685, size: 64, offset: 896)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !134, line: 77, size: 192, elements: !1688)
!1688 = !{!1689, !1693, !1853}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1687, file: !134, line: 83, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1596}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1687, file: !134, line: 89, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !142, line: 1184, baseType: !7)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1700, line: 512, size: 896, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1701 = !{!1702, !1820, !1821, !1828, !1835, !1845, !1846, !1847, !1849, !1851}
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 513, baseType: !1703, size: 320)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1699, file: !1700, line: 513, size: 320, elements: !1704)
!1704 = !{!1705, !1816, !1817, !1818, !1819}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1703, file: !1700, line: 514, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !142, line: 625, size: 1344, elements: !1708)
!1708 = !{!1709, !1718, !1719, !1727, !1734, !1735, !1740, !1741, !1746, !1747, !1750, !1809, !1810, !1811, !1812, !1813, !1814}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !142, line: 628, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !142, line: 628, size: 128, elements: !1711)
!1711 = !{!1712, !1717}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !142, line: 629, baseType: !1713, size: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !142, line: 629, size: 128, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1713, file: !142, line: 631, baseType: !50, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1713, file: !142, line: 632, baseType: !50, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1710, file: !142, line: 635, baseType: !678, size: 128, align: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1707, file: !142, line: 639, baseType: !642, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1707, file: !142, line: 640, baseType: !1720, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1721, line: 297, baseType: !1722)
!1721 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1721, line: 297, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1722, file: !1721, line: 297, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1726, line: 19, baseType: !50)
!1726 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !142, line: 646, baseType: !1728, size: 64, offset: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !142, line: 646, size: 64, elements: !1729)
!1729 = !{!1730, !1733}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1728, file: !142, line: 647, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !142, line: 542, baseType: !50)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1728, file: !142, line: 648, baseType: !1732, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1707, file: !142, line: 666, baseType: !33, size: 32, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1707, file: !142, line: 667, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !142, line: 579, size: 320, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1737, file: !142, line: 580, baseType: !875, size: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1707, file: !142, line: 670, baseType: !855, size: 8, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1707, file: !142, line: 681, baseType: !1742, size: 256, offset: 512)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !142, line: 678, size: 256, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1742, file: !142, line: 679, baseType: !385, size: 192, align: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1742, file: !142, line: 680, baseType: !50, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1707, file: !142, line: 689, baseType: !108, size: 128, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1707, file: !142, line: 691, baseType: !1748, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !142, line: 691, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1707, file: !142, line: 694, baseType: !1751, size: 64, offset: 960)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1700, line: 563, size: 1024, elements: !1754)
!1754 = !{!1755, !1759, !1760, !1764, !1768, !1772, !1773, !1777, !1781, !1785, !1786, !1787, !1791, !1795, !1801, !1805}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1753, file: !1700, line: 564, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1706}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1753, file: !1700, line: 569, baseType: !1756, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1753, file: !1700, line: 571, baseType: !1761, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!33, !1706, !50}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1753, file: !1700, line: 572, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!33, !1706}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1753, file: !1700, line: 578, baseType: !1769, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!33, !1706, !50, !50, !50}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1753, file: !1700, line: 580, baseType: !1694, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1753, file: !1700, line: 581, baseType: !1774, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1697, !1698, !7}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1753, file: !1700, line: 582, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1697, !1698, !50, !50}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1753, file: !1700, line: 584, baseType: !1782, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!50, !1706}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1753, file: !1700, line: 588, baseType: !1694, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1753, file: !1700, line: 591, baseType: !1694, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1753, file: !1700, line: 597, baseType: !1788, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!33, !1706, !50, !31, !33, !33}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1753, file: !1700, line: 603, baseType: !1792, size: 64, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!27, !1706}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1753, file: !1700, line: 613, baseType: !1796, size: 64, offset: 832)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!33, !1706, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !326, line: 54, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1753, file: !1700, line: 625, baseType: !1802, size: 64, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1799, !1706, !50}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1753, file: !1700, line: 633, baseType: !1806, size: 64, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1596, !1706, !50}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1707, file: !142, line: 697, baseType: !50, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1707, file: !142, line: 699, baseType: !670, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1707, file: !142, line: 700, baseType: !31, size: 64, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1707, file: !142, line: 711, baseType: !691, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1707, file: !142, line: 717, baseType: !1799, size: 64, offset: 1280)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1707, file: !142, line: 722, baseType: !1815, offset: 1344)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !142, line: 570, elements: !663)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1703, file: !1700, line: 515, baseType: !780, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1703, file: !1700, line: 516, baseType: !50, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1703, file: !1700, line: 517, baseType: !50, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1703, file: !1700, line: 518, baseType: !50, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 520, baseType: !141, size: 32, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1699, file: !1700, line: 522, baseType: !1822, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1726, line: 22, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1726, line: 22, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1824, file: !1726, line: 22, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1726, line: 15, baseType: !50)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1699, file: !1700, line: 524, baseType: !1829, size: 64, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1721, line: 372, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1721, line: 372, size: 64, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1831, file: !1721, line: 372, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1726, line: 16, baseType: !50)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1699, file: !1700, line: 527, baseType: !1836, size: 64, offset: 512)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1699, file: !1700, line: 527, size: 64, elements: !1837)
!1837 = !{!1838, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1836, file: !1700, line: 528, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1726, line: 21, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1726, line: 21, size: 64, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1840, file: !1726, line: 21, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1726, line: 14, baseType: !50)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1836, file: !1700, line: 529, baseType: !1823, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1699, file: !1700, line: 534, baseType: !1596, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1699, file: !1700, line: 535, baseType: !1596, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1699, file: !1700, line: 541, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1699, file: !1700, line: 545, baseType: !1850, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1699, file: !1700, line: 549, baseType: !1852, size: 64, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1721, line: 520, baseType: !1596)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1687, file: !134, line: 100, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!33, !1646, !50, !50, !33}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1647, file: !134, line: 134, baseType: !31, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1647, file: !134, line: 135, baseType: !33, size: 32, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !134, line: 136, baseType: !1860, size: 128, offset: 1088)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1647, file: !134, line: 136, size: 128, elements: !1861)
!1861 = !{!1862, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1860, file: !134, line: 137, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1864, line: 6, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1863, file: !1864, line: 7, baseType: !393, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1863, file: !1864, line: 8, baseType: !393, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !134, line: 138, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !134, line: 138, elements: !1870)
!1870 = !{!1871, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1869, file: !134, line: 138, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !134, line: 138, elements: !663)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1869, file: !134, line: 138, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, elements: !1087)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1643, file: !142, line: 147, baseType: !31, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1601, file: !142, line: 161, baseType: !678, size: 128, align: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !142, line: 164, baseType: !1878, size: 32, offset: 384)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !142, line: 164, size: 32, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1878, file: !142, line: 169, baseType: !60, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1878, file: !142, line: 177, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1597, file: !142, line: 181, baseType: !60, size: 32, offset: 416)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !158, line: 42, size: 384, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1884, file: !158, line: 43, baseType: !1080, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1884, file: !158, line: 45, baseType: !1080, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1884, file: !158, line: 52, baseType: !52, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1884, file: !158, line: 53, baseType: !52, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1884, file: !158, line: 55, baseType: !157, size: 32, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1884, file: !158, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1884, file: !158, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1884, file: !158, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1884, file: !158, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1884, file: !158, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1884, file: !158, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1884, file: !158, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1884, file: !158, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1884, file: !158, line: 78, baseType: !1900, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !158, line: 78, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1590, file: !278, line: 406, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!33, !670, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !142, line: 293, size: 1536, elements: !1909)
!1909 = !{!1910, !1940, !1954}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !142, line: 295, baseType: !1911, size: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !142, line: 295, size: 512, elements: !1912)
!1912 = !{!1913, !1939}
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !142, line: 296, baseType: !1914, size: 448)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !142, line: 296, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1926, !1927, !1928, !1937, !1938}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !142, line: 298, baseType: !50, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !142, line: 299, baseType: !1918, size: 128, offset: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !142, line: 299, size: 128, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1918, file: !142, line: 300, baseType: !108, size: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !142, line: 302, baseType: !1922, size: 128)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !142, line: 302, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1922, file: !142, line: 303, baseType: !31, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1922, file: !142, line: 305, baseType: !7, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1914, file: !142, line: 310, baseType: !1576, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1914, file: !142, line: 311, baseType: !50, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !142, line: 312, baseType: !1929, size: 64, offset: 320)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !142, line: 312, size: 64, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1929, file: !142, line: 313, baseType: !31, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1929, file: !142, line: 314, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !142, line: 257, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 255, size: 64, elements: !1935)
!1935 = !{!1936}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1934, file: !142, line: 256, baseType: !50, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1914, file: !142, line: 316, baseType: !60, size: 32, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1914, file: !142, line: 317, baseType: !60, size: 32, offset: 416)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1911, file: !142, line: 323, baseType: !1597, size: 512, align: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !142, line: 325, baseType: !1941, size: 512, offset: 512)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !142, line: 325, size: 512, elements: !1942)
!1942 = !{!1943, !1953}
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !142, line: 326, baseType: !1944, size: 320)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !142, line: 326, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1944, file: !142, line: 327, baseType: !50, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1944, file: !142, line: 328, baseType: !50, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1944, file: !142, line: 329, baseType: !50, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1944, file: !142, line: 331, baseType: !60, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1944, file: !142, line: 332, baseType: !60, size: 32, offset: 224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1944, file: !142, line: 333, baseType: !60, size: 32, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1944, file: !142, line: 335, baseType: !7, size: 32, offset: 288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1941, file: !142, line: 339, baseType: !1597, size: 512, align: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !142, line: 341, baseType: !1955, size: 512, offset: 1024)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !142, line: 341, size: 512, elements: !1956)
!1956 = !{!1957, !1966, !1972}
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !142, line: 342, baseType: !1958, size: 384)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !142, line: 342, size: 384, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1958, file: !142, line: 343, baseType: !50, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1958, file: !142, line: 344, baseType: !50, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1958, file: !142, line: 346, baseType: !31, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1958, file: !142, line: 347, baseType: !31, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1958, file: !142, line: 348, baseType: !31, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1958, file: !142, line: 349, baseType: !31, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !142, line: 352, baseType: !1967, size: 256)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1955, file: !142, line: 352, size: 256, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1967, file: !142, line: 353, baseType: !50, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1967, file: !142, line: 354, baseType: !50, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1967, file: !142, line: 356, baseType: !108, size: 128, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1955, file: !142, line: 359, baseType: !1597, size: 512, align: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1590, file: !278, line: 409, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!33, !1576, !1883}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1590, file: !278, line: 412, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!855, !1576, !1907}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1590, file: !278, line: 414, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1987, line: 1276, size: 448, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1988 = !{!1989, !1990, !1991, !1993, !1994, !1995, !1996, !1997}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1986, file: !1987, line: 1277, baseType: !670, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1986, file: !1987, line: 1278, baseType: !1576, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1986, file: !1987, line: 1279, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1986, file: !1987, line: 1281, baseType: !50, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1986, file: !1987, line: 1282, baseType: !7, size: 32, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1986, file: !1987, line: 1283, baseType: !7, size: 32, offset: 288)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1986, file: !1987, line: 1284, baseType: !855, size: 8, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1986, file: !1987, line: 1285, baseType: !50, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1590, file: !278, line: 416, baseType: !1999, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!33, !670, !1576, !52, !7, !2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1590, file: !278, line: 419, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!33, !670, !1576, !52, !7, !7, !1596, !31}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1590, file: !278, line: 424, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!2012, !1576, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !36, line: 131, baseType: !393)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1590, file: !278, line: 425, baseType: !2014, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1907, !46, !46}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1590, file: !278, line: 426, baseType: !2018, size: 64, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!855, !1907, !780}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1590, file: !278, line: 427, baseType: !2022, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1907}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1590, file: !278, line: 428, baseType: !2026, size: 64, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!1377, !2029, !2067}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !278, line: 373, size: 384, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2038, !2039, !2040, !2041}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2030, file: !278, line: 374, baseType: !670, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2030, file: !278, line: 375, baseType: !52, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2030, file: !278, line: 376, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !2029, !1080}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2030, file: !278, line: 377, baseType: !31, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2030, file: !278, line: 378, baseType: !33, size: 32, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2030, file: !278, line: 379, baseType: !104, size: 16, offset: 288)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !278, line: 380, baseType: !2042, size: 64, offset: 320)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !278, line: 380, size: 64, elements: !2043)
!2043 = !{!2044, !2063}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2042, file: !278, line: 386, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1987, line: 998, size: 448, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2046, file: !1987, line: 999, baseType: !1907, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2046, file: !1987, line: 1000, baseType: !33, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2046, file: !1987, line: 1001, baseType: !2051, size: 320, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !66, line: 14, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !66, line: 30, size: 320, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !66, line: 31, baseType: !7, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2052, file: !66, line: 32, baseType: !31, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2052, file: !66, line: 33, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !66, line: 16, baseType: !2058)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!33, !2061, !7, !33, !31}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2052, file: !66, line: 34, baseType: !108, size: 128, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2042, file: !278, line: 395, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!1377, !31}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !278, line: 69, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1590, file: !278, line: 433, baseType: !2070, size: 64, offset: 768)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!33, !1576, !1907, !1907, !162}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1590, file: !278, line: 435, baseType: !2074, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!33, !1907}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1590, file: !278, line: 436, baseType: !2078, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!855, !1907, !46, !46}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1590, file: !278, line: 438, baseType: !2082, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !1907, !2085, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1590, file: !278, line: 439, baseType: !2087, size: 64, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!33, !1576, !1596}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1590, file: !278, line: 442, baseType: !2091, size: 64, offset: 1088)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!33, !2094, !670, !2780}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2096, line: 282, size: 2176, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2104, !2105, !2107, !2114, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2127, !2133, !2134, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2095, file: !2096, line: 283, baseType: !1660, size: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2096, line: 284, baseType: !50, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2095, file: !2096, line: 285, baseType: !903, size: 16, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2095, file: !2096, line: 286, baseType: !634, size: 320, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2095, file: !2096, line: 287, baseType: !2103, size: 8, offset: 576)
!2103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2095, file: !2096, line: 288, baseType: !7, size: 32, offset: 608)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2095, file: !2096, line: 289, baseType: !2106, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2095, file: !2096, line: 290, baseType: !2108, size: 64, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2096, line: 250, size: 64, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2109, file: !2096, line: 251, baseType: !70, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2109, file: !2096, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !2096, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2095, file: !2096, line: 291, baseType: !2115, size: 128, offset: 768)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2096, line: 274, size: 128, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2115, file: !2096, line: 275, baseType: !2109, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2115, file: !2096, line: 276, baseType: !2109, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2095, file: !2096, line: 292, baseType: !7, size: 32, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2095, file: !2096, line: 293, baseType: !7, size: 32, offset: 928)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2095, file: !2096, line: 294, baseType: !7, size: 32, offset: 960)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2095, file: !2096, line: 295, baseType: !7, size: 32, offset: 992)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2095, file: !2096, line: 296, baseType: !7, size: 32, offset: 1024)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2095, file: !2096, line: 297, baseType: !7, size: 32, offset: 1056)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2095, file: !2096, line: 298, baseType: !2126, size: 64, offset: 1088)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2095, file: !2096, line: 299, baseType: !2128, size: 64, offset: 1152)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2096, line: 269, size: 96, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2129, file: !2096, line: 270, baseType: !2109, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2129, file: !2096, line: 271, baseType: !7, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2095, file: !2096, line: 300, baseType: !528, size: 64, offset: 1216)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2095, file: !2096, line: 301, baseType: !2135, size: 64, offset: 1280)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2137, line: 40, size: 7424, elements: !2138)
!2137 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2138 = !{!2139, !2140, !2141, !2144, !2148, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2175, !2176}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2136, file: !2137, line: 41, baseType: !2012, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2136, file: !2137, line: 42, baseType: !2012, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2136, file: !2137, line: 43, baseType: !2142, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !326, line: 1453, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2136, file: !2137, line: 44, baseType: !2145, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2147, line: 74, flags: DIFlagFwdDecl)
!2147 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2136, file: !2137, line: 45, baseType: !2149, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2137, line: 45, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2136, file: !2137, line: 46, baseType: !50, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2136, file: !2137, line: 47, baseType: !855, size: 8, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2136, file: !2137, line: 48, baseType: !94, size: 8, offset: 392)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2136, file: !2137, line: 49, baseType: !855, size: 8, offset: 400)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2136, file: !2137, line: 50, baseType: !855, size: 8, offset: 408)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2136, file: !2137, line: 51, baseType: !1299, size: 32, offset: 416)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2136, file: !2137, line: 52, baseType: !60, size: 32, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2136, file: !2137, line: 53, baseType: !70, size: 32, offset: 480)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2136, file: !2137, line: 54, baseType: !1225, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2136, file: !2137, line: 55, baseType: !31, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2136, file: !2137, line: 56, baseType: !31, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2136, file: !2137, line: 57, baseType: !2163, size: 64, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2137, line: 57, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2136, file: !2137, line: 58, baseType: !698, size: 256, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2136, file: !2137, line: 60, baseType: !33, size: 32, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2136, file: !2137, line: 61, baseType: !33, size: 32, offset: 1056)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2136, file: !2137, line: 62, baseType: !1478, size: 64, offset: 1088)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2136, file: !2137, line: 65, baseType: !698, size: 256, offset: 1152)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2136, file: !2137, line: 66, baseType: !1426, size: 64, offset: 1408)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2136, file: !2137, line: 68, baseType: !2173, size: 64, offset: 1472)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2137, line: 68, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2136, file: !2137, line: 72, baseType: !855, size: 8, offset: 1536)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2136, file: !2137, line: 77, baseType: !2177, size: 5824, offset: 1600)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !176, line: 705, size: 5824, elements: !2178)
!2178 = !{!2179, !2180, !2182, !2185, !2186, !2239, !2332, !2333, !2334, !2335, !2336, !2343, !2512, !2525, !2535, !2539, !2541, !2542, !2543, !2547, !2554, !2555, !2558, !2561, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2748, !2749, !2750, !2753, !2756, !2765, !2766, !2767, !2768, !2769, !2770}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2177, file: !176, line: 706, baseType: !1472, size: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2177, file: !176, line: 707, baseType: !2181, size: 64, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2177, file: !176, line: 709, baseType: !2183, size: 64, offset: 576)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !176, line: 37, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2177, file: !176, line: 711, baseType: !27, size: 64, offset: 640)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2177, file: !176, line: 712, baseType: !2187, size: 64, offset: 704)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !176, line: 89, size: 384, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2199, !2204, !2208}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2189, file: !176, line: 90, baseType: !27, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2189, file: !176, line: 91, baseType: !1552, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2189, file: !176, line: 92, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!33, !2197, !1508}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2189, file: !176, line: 93, baseType: !2200, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!943, !2197, !2203, !1046, !1047}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2189, file: !176, line: 95, baseType: !2205, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2181}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2189, file: !176, line: 97, baseType: !2209, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !183, line: 286, size: 1472, elements: !2212)
!2212 = !{!2213, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2211, file: !183, line: 287, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!33, !2181}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2211, file: !183, line: 288, baseType: !2205, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2211, file: !183, line: 289, baseType: !2214, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2211, file: !183, line: 290, baseType: !2214, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2211, file: !183, line: 291, baseType: !2214, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2211, file: !183, line: 292, baseType: !2214, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2211, file: !183, line: 293, baseType: !2214, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2211, file: !183, line: 294, baseType: !2214, size: 64, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2211, file: !183, line: 295, baseType: !2214, size: 64, offset: 512)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2211, file: !183, line: 296, baseType: !2214, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2211, file: !183, line: 297, baseType: !2214, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2211, file: !183, line: 298, baseType: !2214, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2211, file: !183, line: 299, baseType: !2214, size: 64, offset: 768)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2211, file: !183, line: 300, baseType: !2214, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2211, file: !183, line: 301, baseType: !2214, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2211, file: !183, line: 302, baseType: !2214, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2211, file: !183, line: 303, baseType: !2214, size: 64, offset: 1024)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2211, file: !183, line: 304, baseType: !2214, size: 64, offset: 1088)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2211, file: !183, line: 305, baseType: !2214, size: 64, offset: 1152)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2211, file: !183, line: 306, baseType: !2214, size: 64, offset: 1216)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2211, file: !183, line: 307, baseType: !2214, size: 64, offset: 1280)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2211, file: !183, line: 308, baseType: !2214, size: 64, offset: 1344)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2211, file: !183, line: 309, baseType: !2214, size: 64, offset: 1408)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2177, file: !176, line: 714, baseType: !2240, size: 64, offset: 768)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2243, line: 80, size: 1344, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2331}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2242, file: !2243, line: 81, baseType: !27, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2242, file: !2243, line: 82, baseType: !27, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2242, file: !2243, line: 83, baseType: !1552, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2242, file: !2243, line: 84, baseType: !1552, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2242, file: !2243, line: 85, baseType: !1552, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2242, file: !2243, line: 87, baseType: !2251, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!33, !2181, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !170, line: 96, size: 1152, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2281, !2294, !2295, !2296, !2297, !2298, !2306, !2307, !2308, !2309, !2310, !2311}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2255, file: !170, line: 97, baseType: !27, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2255, file: !170, line: 98, baseType: !2240, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2255, file: !170, line: 100, baseType: !1459, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2255, file: !170, line: 101, baseType: !27, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2255, file: !170, line: 103, baseType: !855, size: 8, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2255, file: !170, line: 104, baseType: !169, size: 32, offset: 288)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2255, file: !170, line: 106, baseType: !2264, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2267, line: 282, size: 1600, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2268 = !{!2269, !2273, !2274, !2278}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2266, file: !2267, line: 283, baseType: !2270, size: 256)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !2271)
!2271 = !{!2272}
!2272 = !DISubrange(count: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2266, file: !2267, line: 284, baseType: !2270, size: 256, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2266, file: !2267, line: 285, baseType: !2275, size: 1024, offset: 512)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2266, file: !2267, line: 286, baseType: !2279, size: 64, offset: 1536)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2255, file: !170, line: 107, baseType: !2282, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2267, line: 217, size: 256, elements: !2285)
!2285 = !{!2286, !2290, !2292, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2284, file: !2267, line: 218, baseType: !2287, size: 128)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 16)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2284, file: !2267, line: 219, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2267, line: 15, baseType: !50)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2284, file: !2267, line: 220, baseType: !336, size: 32, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2284, file: !2267, line: 221, baseType: !336, size: 32, offset: 224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2255, file: !170, line: 109, baseType: !2214, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2255, file: !170, line: 110, baseType: !2205, size: 64, offset: 512)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2255, file: !170, line: 111, baseType: !2214, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2255, file: !170, line: 112, baseType: !2205, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2255, file: !170, line: 113, baseType: !2299, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!33, !2181, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !183, line: 60, baseType: !2303)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !183, line: 58, size: 32, elements: !2304)
!2304 = !{!2305}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2303, file: !183, line: 59, baseType: !33, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2255, file: !170, line: 114, baseType: !2214, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2255, file: !170, line: 115, baseType: !1552, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2255, file: !170, line: 116, baseType: !1552, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2255, file: !170, line: 118, baseType: !2209, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2255, file: !170, line: 119, baseType: !2205, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2255, file: !170, line: 121, baseType: !2312, size: 64, offset: 1088)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !170, line: 121, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2242, file: !2243, line: 88, baseType: !2194, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2242, file: !2243, line: 89, baseType: !2214, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2242, file: !2243, line: 90, baseType: !2205, size: 64, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2242, file: !2243, line: 91, baseType: !2205, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2242, file: !2243, line: 92, baseType: !2205, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2242, file: !2243, line: 94, baseType: !2214, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2242, file: !2243, line: 95, baseType: !2214, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2242, file: !2243, line: 97, baseType: !2299, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2242, file: !2243, line: 98, baseType: !2214, size: 64, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2242, file: !2243, line: 100, baseType: !2214, size: 64, offset: 960)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2242, file: !2243, line: 102, baseType: !2214, size: 64, offset: 1024)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2242, file: !2243, line: 103, baseType: !2205, size: 64, offset: 1088)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2242, file: !2243, line: 105, baseType: !2209, size: 64, offset: 1152)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2242, file: !2243, line: 107, baseType: !2328, size: 64, offset: 1216)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2243, line: 107, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2242, file: !2243, line: 109, baseType: !855, size: 8, offset: 1280)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2177, file: !176, line: 715, baseType: !2254, size: 64, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2177, file: !176, line: 717, baseType: !31, size: 64, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2177, file: !176, line: 719, baseType: !31, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2177, file: !176, line: 721, baseType: !698, size: 256, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2177, file: !176, line: 725, baseType: !2337, size: 448, offset: 1280)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !176, line: 517, size: 448, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2337, file: !176, line: 518, baseType: !108, size: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2337, file: !176, line: 519, baseType: !108, size: 128, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2337, file: !176, line: 520, baseType: !108, size: 128, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2337, file: !176, line: 521, baseType: !175, size: 32, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2177, file: !176, line: 726, baseType: !2344, size: 2496, offset: 1728)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !183, line: 663, size: 2496, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2439, !2443}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2344, file: !183, line: 664, baseType: !2302, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2344, file: !183, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2344, file: !183, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2344, file: !183, line: 667, baseType: !855, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2344, file: !183, line: 668, baseType: !855, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2344, file: !183, line: 669, baseType: !855, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2344, file: !183, line: 670, baseType: !855, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2344, file: !183, line: 671, baseType: !855, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2344, file: !183, line: 672, baseType: !855, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2344, file: !183, line: 673, baseType: !855, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2344, file: !183, line: 674, baseType: !855, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2344, file: !183, line: 675, baseType: !335, size: 32, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !183, line: 676, baseType: !70, size: 32, offset: 96)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2344, file: !183, line: 678, baseType: !108, size: 128, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2344, file: !183, line: 679, baseType: !1021, size: 256, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2344, file: !183, line: 680, baseType: !2362, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2364, line: 43, size: 1536, elements: !2365)
!2364 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2373, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2363, file: !2364, line: 44, baseType: !27, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2363, file: !2364, line: 45, baseType: !33, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2363, file: !2364, line: 46, baseType: !108, size: 128, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2363, file: !2364, line: 47, baseType: !70, size: 32, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2363, file: !2364, line: 48, baseType: !2371, size: 64, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !183, line: 629, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2363, file: !2364, line: 49, baseType: !2374, size: 320, offset: 384)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2375, line: 11, size: 320, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2376 = !{!2377, !2378, !2379, !2384}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2374, file: !2375, line: 16, baseType: !750, size: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2374, file: !2375, line: 17, baseType: !50, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2374, file: !2375, line: 18, baseType: !2380, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !2375, line: 19, baseType: !335, size: 32, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2363, file: !2364, line: 50, baseType: !50, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2363, file: !2364, line: 51, baseType: !468, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2363, file: !2364, line: 52, baseType: !468, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2363, file: !2364, line: 53, baseType: !468, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2363, file: !2364, line: 54, baseType: !468, size: 64, offset: 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2363, file: !2364, line: 55, baseType: !468, size: 64, offset: 1024)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2363, file: !2364, line: 56, baseType: !50, size: 64, offset: 1088)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2363, file: !2364, line: 57, baseType: !50, size: 64, offset: 1152)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2363, file: !2364, line: 58, baseType: !50, size: 64, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2363, file: !2364, line: 59, baseType: !50, size: 64, offset: 1280)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2363, file: !2364, line: 60, baseType: !50, size: 64, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2363, file: !2364, line: 61, baseType: !2181, size: 64, offset: 1408)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2363, file: !2364, line: 62, baseType: !855, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2363, file: !2364, line: 63, baseType: !855, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2344, file: !183, line: 681, baseType: !855, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2344, file: !183, line: 682, baseType: !855, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2344, file: !183, line: 683, baseType: !855, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2344, file: !183, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2344, file: !183, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2344, file: !183, line: 690, baseType: !460, size: 512, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2344, file: !183, line: 691, baseType: !393, size: 64, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2344, file: !183, line: 692, baseType: !982, size: 256, offset: 1216)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2344, file: !183, line: 693, baseType: !65, size: 192, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2344, file: !183, line: 694, baseType: !2371, size: 64, offset: 1664)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2344, file: !183, line: 695, baseType: !60, size: 32, offset: 1728)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2344, file: !183, line: 696, baseType: !60, size: 32, offset: 1760)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2344, file: !183, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2344, file: !183, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2344, file: !183, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2344, file: !183, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2344, file: !183, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2344, file: !183, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2344, file: !183, line: 703, baseType: !855, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2344, file: !183, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2344, file: !183, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2344, file: !183, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2344, file: !183, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2344, file: !183, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2344, file: !183, line: 709, baseType: !7, size: 32, offset: 1824)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2344, file: !183, line: 710, baseType: !182, size: 32, offset: 1856)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2344, file: !183, line: 711, baseType: !190, size: 32, offset: 1888)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2344, file: !183, line: 712, baseType: !190, size: 32, offset: 1920)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2344, file: !183, line: 713, baseType: !33, size: 32, offset: 1952)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2344, file: !183, line: 714, baseType: !33, size: 32, offset: 1984)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2344, file: !183, line: 715, baseType: !393, size: 64, offset: 2048)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2344, file: !183, line: 716, baseType: !393, size: 64, offset: 2112)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2344, file: !183, line: 717, baseType: !393, size: 64, offset: 2176)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2344, file: !183, line: 718, baseType: !393, size: 64, offset: 2240)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2344, file: !183, line: 720, baseType: !2434, size: 64, offset: 2304)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !183, line: 632, size: 64, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2435, file: !183, line: 633, baseType: !70, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2435, file: !183, line: 634, baseType: !7, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2344, file: !183, line: 721, baseType: !2440, size: 64, offset: 2368)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2181, !867}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2344, file: !183, line: 722, baseType: !2444, size: 64, offset: 2432)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !198, line: 117, size: 2432, elements: !2446)
!2446 = !{!2447, !2475, !2476, !2483, !2488, !2510, !2511}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !2445, file: !198, line: 118, baseType: !2448, size: 320)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !198, line: 52, size: 320, elements: !2449)
!2449 = !{!2450, !2454, !2455, !2456, !2457, !2458}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2448, file: !198, line: 53, baseType: !2451, size: 128)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !635, line: 82, size: 128, elements: !2452)
!2452 = !{!2453}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2451, file: !635, line: 83, baseType: !108, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !2448, file: !198, line: 54, baseType: !867, size: 32, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2448, file: !198, line: 55, baseType: !867, size: 32, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !2448, file: !198, line: 56, baseType: !867, size: 32, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !198, line: 57, baseType: !197, size: 32, offset: 224)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !2448, file: !198, line: 58, baseType: !2459, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2461, line: 65, size: 384, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!2462 = !{!2463, !2464}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2460, file: !2461, line: 66, baseType: !875, size: 320)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2460, file: !2461, line: 67, baseType: !2465, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2461, line: 54, size: 192, elements: !2467)
!2467 = !{!2468, !2473, !2474}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2466, file: !2461, line: 55, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2461, line: 51, baseType: !2470)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!33, !2465, !50, !31}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2466, file: !2461, line: 56, baseType: !2465, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2466, file: !2461, line: 57, baseType: !33, size: 32, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !2445, file: !198, line: 119, baseType: !2448, size: 320, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2445, file: !198, line: 120, baseType: !2477, size: 1408, offset: 640)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !198, line: 85, size: 1408, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2477, file: !198, line: 86, baseType: !2448, size: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !2477, file: !198, line: 87, baseType: !2460, size: 384, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2477, file: !198, line: 88, baseType: !2448, size: 320, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !2477, file: !198, line: 89, baseType: !2460, size: 384, offset: 1024)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2445, file: !198, line: 121, baseType: !2484, size: 192, offset: 2048)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !198, line: 71, size: 192, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2484, file: !198, line: 72, baseType: !108, size: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !2484, file: !198, line: 73, baseType: !867, size: 32, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !2445, file: !198, line: 122, baseType: !2489, size: 64, offset: 2240)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !198, line: 107, size: 576, elements: !2491)
!2491 = !{!2492, !2493, !2509}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2490, file: !198, line: 108, baseType: !203, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2490, file: !198, line: 113, baseType: !2494, size: 448, offset: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2490, file: !198, line: 109, size: 448, elements: !2495)
!2495 = !{!2496, !2497, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2494, file: !198, line: 110, baseType: !634, size: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !2494, file: !198, line: 111, baseType: !2498, size: 192)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !198, line: 66, size: 192, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2498, file: !198, line: 67, baseType: !108, size: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !198, line: 68, baseType: !867, size: 32, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2494, file: !198, line: 112, baseType: !2503, size: 448)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !198, line: 92, size: 448, elements: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2503, file: !198, line: 93, baseType: !210, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2503, file: !198, line: 94, baseType: !634, size: 320, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2503, file: !198, line: 95, baseType: !2508, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2490, file: !198, line: 114, baseType: !2181, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !2445, file: !198, line: 123, baseType: !2489, size: 64, offset: 2304)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !2445, file: !198, line: 124, baseType: !2489, size: 64, offset: 2368)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2177, file: !176, line: 727, baseType: !2513, size: 64, offset: 4224)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !183, line: 742, size: 1792, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2522, !2523, !2524}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2514, file: !183, line: 743, baseType: !2211, size: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2514, file: !183, line: 744, baseType: !2214, size: 64, offset: 1472)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2514, file: !183, line: 745, baseType: !2519, size: 64, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !2181, !855}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2514, file: !183, line: 746, baseType: !2214, size: 64, offset: 1600)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2514, file: !183, line: 747, baseType: !2205, size: 64, offset: 1664)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2514, file: !183, line: 748, baseType: !2205, size: 64, offset: 1728)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2177, file: !176, line: 736, baseType: !2526, size: 128, offset: 4288)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !176, line: 529, size: 128, elements: !2527)
!2527 = !{!2528, !2532}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2526, file: !176, line: 531, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2531, line: 13, flags: DIFlagFwdDecl)
!2531 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2526, file: !176, line: 532, baseType: !2533, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !176, line: 49, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2177, file: !176, line: 738, baseType: !2536, size: 64, offset: 4416)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !176, line: 738, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2177, file: !176, line: 740, baseType: !2540, size: 64, offset: 4480)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2177, file: !176, line: 741, baseType: !393, size: 64, offset: 4544)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2177, file: !176, line: 746, baseType: !393, size: 64, offset: 4608)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2177, file: !176, line: 747, baseType: !2544, size: 64, offset: 4672)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !176, line: 747, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2177, file: !176, line: 749, baseType: !2548, size: 64, offset: 4736)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !176, line: 428, size: 128, elements: !2550)
!2550 = !{!2551, !2552, !2553}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2549, file: !176, line: 433, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2549, file: !176, line: 434, baseType: !7, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2549, file: !176, line: 435, baseType: !50, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2177, file: !176, line: 751, baseType: !108, size: 128, offset: 4800)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2177, file: !176, line: 762, baseType: !2556, size: 64, offset: 4928)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !176, line: 762, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2177, file: !176, line: 770, baseType: !2559, offset: 4992)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2560, line: 5, elements: !663)
!2560 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2177, file: !176, line: 772, baseType: !2562, size: 64, offset: 4992)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2564, line: 48, size: 1152, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!2565 = !{!2566, !2567, !2569, !2570, !2674, !2682, !2683, !2684, !2685, !2686, !2687}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2563, file: !2564, line: 49, baseType: !27, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2563, file: !2564, line: 50, baseType: !2568, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2564, line: 25, baseType: !335)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2563, file: !2564, line: 51, baseType: !27, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2563, file: !2564, line: 52, baseType: !2571, size: 512, offset: 192)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2572, line: 41, size: 512, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2573 = !{!2574, !2576, !2670, !2671, !2672, !2673}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2571, file: !2572, line: 42, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2571, file: !2572, line: 43, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2572, line: 125, size: 1408, elements: !2580)
!2580 = !{!2581, !2585, !2589, !2595, !2599, !2600, !2604, !2608, !2612, !2617, !2621, !2622, !2626, !2630, !2634, !2645, !2646, !2647, !2648, !2658, !2662, !2666}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2579, file: !2572, line: 126, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!2575, !2575}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2579, file: !2572, line: 127, baseType: !2586, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2575}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2579, file: !2572, line: 128, baseType: !2590, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!855, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2579, file: !2572, line: 129, baseType: !2596, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!2279, !2593, !2197}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2579, file: !2572, line: 131, baseType: !2590, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2579, file: !2572, line: 133, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!214, !2593}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2579, file: !2572, line: 134, baseType: !2605, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!855, !2593, !27}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2579, file: !2572, line: 136, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!33, !2593, !27, !7, !31, !46}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2579, file: !2572, line: 141, baseType: !2613, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!33, !2593, !27, !2616, !46}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2579, file: !2572, line: 144, baseType: !2618, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!27, !2593}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2579, file: !2572, line: 145, baseType: !2618, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2579, file: !2572, line: 146, baseType: !2623, size: 64, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!2575, !2593}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2579, file: !2572, line: 148, baseType: !2627, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!2575, !2593, !2575}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2579, file: !2572, line: 151, baseType: !2631, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!2575, !2593, !27}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2579, file: !2572, line: 153, baseType: !2635, size: 64, offset: 896)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!33, !2593, !27, !27, !7, !7, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2572, line: 94, size: 640, elements: !2640)
!2640 = !{!2641, !2642, !2643}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2639, file: !2572, line: 95, baseType: !2575, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2639, file: !2572, line: 96, baseType: !7, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2639, file: !2572, line: 97, baseType: !2644, size: 512, offset: 128)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 512, elements: !504)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2579, file: !2572, line: 158, baseType: !2627, size: 64, offset: 960)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2579, file: !2572, line: 161, baseType: !2623, size: 64, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2579, file: !2572, line: 163, baseType: !2582, size: 64, offset: 1088)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2579, file: !2572, line: 164, baseType: !2649, size: 64, offset: 1152)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!33, !2593, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2572, line: 73, size: 128, elements: !2654)
!2654 = !{!2655, !2656, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2653, file: !2572, line: 74, baseType: !7, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2653, file: !2572, line: 75, baseType: !7, size: 32, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2653, file: !2572, line: 76, baseType: !2593, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2579, file: !2572, line: 166, baseType: !2659, size: 64, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!31, !2575, !33}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2579, file: !2572, line: 167, baseType: !2663, size: 64, offset: 1280)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!33, !2593, !7}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2579, file: !2572, line: 168, baseType: !2667, size: 64, offset: 1344)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!33, !2575}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2571, file: !2572, line: 44, baseType: !2181, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2571, file: !2572, line: 45, baseType: !108, size: 128, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2571, file: !2572, line: 46, baseType: !108, size: 128, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !2572, line: 47, baseType: !94, size: 8, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2563, file: !2564, line: 54, baseType: !2675, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2564, line: 28, size: 256, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2676, file: !2564, line: 29, baseType: !943, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2676, file: !2564, line: 30, baseType: !33, size: 32, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2676, file: !2564, line: 31, baseType: !31, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2676, file: !2564, line: 32, baseType: !2675, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2563, file: !2564, line: 55, baseType: !2675, size: 64, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2563, file: !2564, line: 56, baseType: !2562, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2563, file: !2564, line: 57, baseType: !2562, size: 64, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2563, file: !2564, line: 58, baseType: !2562, size: 64, offset: 960)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2563, file: !2564, line: 62, baseType: !50, size: 64, offset: 1024)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2563, file: !2564, line: 63, baseType: !31, size: 64, offset: 1088)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2177, file: !176, line: 773, baseType: !2575, size: 64, offset: 5056)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2177, file: !176, line: 776, baseType: !33, size: 32, offset: 5120)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2177, file: !176, line: 778, baseType: !1299, size: 32, offset: 5152)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2177, file: !176, line: 779, baseType: !335, size: 32, offset: 5184)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2177, file: !176, line: 781, baseType: !70, size: 32, offset: 5216)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2177, file: !176, line: 782, baseType: !108, size: 128, offset: 5248)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2177, file: !176, line: 784, baseType: !2695, size: 64, offset: 5376)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2697)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2698, line: 52, size: 768, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2708, !2712, !2713, !2714, !2739, !2743, !2747}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2697, file: !2698, line: 53, baseType: !27, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2697, file: !2698, line: 55, baseType: !1552, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2697, file: !2698, line: 56, baseType: !1552, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2697, file: !2698, line: 58, baseType: !2194, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2697, file: !2698, line: 59, baseType: !2705, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!943, !2197, !2203}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2697, file: !2698, line: 61, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2695}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2697, file: !2698, line: 62, baseType: !2205, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2697, file: !2698, line: 64, baseType: !2214, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2697, file: !2698, line: 66, baseType: !2715, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2717)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !221, line: 39, size: 384, elements: !2718)
!2718 = !{!2719, !2720, !2724, !2728, !2734, !2738}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2717, file: !221, line: 40, baseType: !220, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2717, file: !221, line: 41, baseType: !2721, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!855}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2717, file: !221, line: 42, baseType: !2725, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!31}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2717, file: !221, line: 43, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!2279, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !221, line: 19, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2717, file: !221, line: 44, baseType: !2735, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!2279}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2717, file: !221, line: 45, baseType: !1256, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2697, file: !2698, line: 67, baseType: !2740, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2279, !2197}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2697, file: !2698, line: 69, baseType: !2744, size: 64, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2197, !1046, !1047}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2697, file: !2698, line: 71, baseType: !2209, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2177, file: !176, line: 785, baseType: !1552, size: 64, offset: 5440)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2177, file: !176, line: 787, baseType: !2205, size: 64, offset: 5504)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2177, file: !176, line: 788, baseType: !2751, size: 64, offset: 5568)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !176, line: 46, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2177, file: !176, line: 789, baseType: !2754, size: 64, offset: 5632)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !176, line: 48, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2177, file: !176, line: 791, baseType: !2757, size: 64, offset: 5696)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !176, line: 597, size: 128, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2764}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2758, file: !176, line: 598, baseType: !226, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2758, file: !176, line: 599, baseType: !235, size: 32, offset: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2758, file: !176, line: 600, baseType: !240, size: 32, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2758, file: !176, line: 601, baseType: !855, size: 8, offset: 96)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2758, file: !176, line: 602, baseType: !855, size: 8, offset: 104)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2177, file: !176, line: 793, baseType: !245, size: 32, offset: 5760)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2177, file: !176, line: 795, baseType: !855, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2177, file: !176, line: 796, baseType: !855, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2177, file: !176, line: 797, baseType: !855, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2177, file: !176, line: 798, baseType: !855, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2177, file: !176, line: 799, baseType: !855, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2095, file: !2096, line: 302, baseType: !670, size: 64, offset: 1344)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2095, file: !2096, line: 303, baseType: !7, size: 32, offset: 1408)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2095, file: !2096, line: 304, baseType: !1021, size: 256, offset: 1472)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2096, line: 305, baseType: !70, size: 32, offset: 1728)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2095, file: !2096, line: 318, baseType: !70, size: 32, offset: 1760)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2095, file: !2096, line: 322, baseType: !982, size: 256, offset: 1792)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2095, file: !2096, line: 323, baseType: !2115, size: 128, offset: 2048)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2095, file: !2096, line: 324, baseType: !2779, offset: 2176)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, elements: !1087)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1590, file: !278, line: 444, baseType: !2782, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !670}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1590, file: !278, line: 445, baseType: !2786, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!33, !2029, !2067}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1577, file: !278, line: 486, baseType: !50, size: 64, offset: 896)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1577, file: !278, line: 487, baseType: !875, size: 320, offset: 960)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1577, file: !278, line: 488, baseType: !2792, size: 32, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2793, line: 8, baseType: !335)
!2793 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1577, file: !278, line: 489, baseType: !70, size: 32, offset: 1312)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1577, file: !278, line: 490, baseType: !108, size: 128, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1577, file: !278, line: 491, baseType: !31, size: 64, offset: 1472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1567, file: !1536, line: 180, baseType: !2798, size: 64, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!1377, !670, !1478, !1566, !943, !52, !46}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1567, file: !1536, line: 182, baseType: !2798, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1567, file: !1536, line: 184, baseType: !2803, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!33, !670, !1478, !1566, !1706}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1555, file: !1536, line: 90, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1555, file: !1536, line: 91, baseType: !2809, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1526, file: !1473, line: 120, baseType: !2811, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2715, !1496}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1526, file: !1473, line: 121, baseType: !2815, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!2279, !1496}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1526, file: !1473, line: 122, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !1496, !1046, !1047}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1472, file: !1473, line: 70, baseType: !2823, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2825, line: 190, size: 1152, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2957, !2958, !2959, !2960, !2961, !2964}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2824, file: !2825, line: 191, baseType: !60, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2824, file: !2825, line: 192, baseType: !60, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2824, file: !2825, line: 202, baseType: !2823, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2824, file: !2825, line: 203, baseType: !27, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2824, file: !2825, line: 205, baseType: !385, size: 192, align: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2824, file: !2825, line: 207, baseType: !2279, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2824, file: !2825, line: 208, baseType: !7, size: 32, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2824, file: !2825, line: 209, baseType: !2835, size: 256, offset: 512)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2824, file: !2825, line: 209, size: 256, elements: !2836)
!2836 = !{!2837, !2846, !2850}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2835, file: !2825, line: 210, baseType: !2838, size: 256)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2825, line: 153, size: 256, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2845}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2838, file: !2825, line: 154, baseType: !50, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2838, file: !2825, line: 156, baseType: !528, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2838, file: !2825, line: 162, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2825, line: 162, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2838, file: !2825, line: 167, baseType: !50, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2835, file: !2825, line: 211, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2825, line: 170, size: 64, elements: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2847, file: !2825, line: 171, baseType: !2823, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2835, file: !2825, line: 212, baseType: !2851, size: 256)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2825, line: 174, size: 256, elements: !2852)
!2852 = !{!2853, !2952, !2955, !2956}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2851, file: !2825, line: 175, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2825, line: 271, size: 768, elements: !2857)
!2857 = !{!2858, !2916, !2920, !2921, !2922, !2923, !2924, !2928, !2929, !2930, !2931, !2948}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2856, file: !2825, line: 276, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!33, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2825, line: 251, size: 1216, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2863, file: !2825, line: 253, baseType: !2823, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2863, file: !2825, line: 254, baseType: !670, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2863, file: !2825, line: 255, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2870, line: 17, size: 960, elements: !2871)
!2870 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2901, !2902, !2905}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2869, file: !2870, line: 18, baseType: !943, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2869, file: !2870, line: 19, baseType: !46, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2869, file: !2870, line: 20, baseType: !46, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2869, file: !2870, line: 21, baseType: !46, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2869, file: !2870, line: 22, baseType: !46, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2869, file: !2870, line: 23, baseType: !52, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2869, file: !2870, line: 24, baseType: !52, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2869, file: !2870, line: 25, baseType: !698, size: 256, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2869, file: !2870, line: 26, baseType: !2881, size: 64, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2870, line: 32, size: 256, elements: !2884)
!2884 = !{!2885, !2889, !2893, !2897}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2883, file: !2870, line: 33, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!31, !2868, !51}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2883, file: !2870, line: 34, baseType: !2890, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !2868, !31}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2883, file: !2870, line: 35, baseType: !2894, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!31, !2868, !31, !51}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2883, file: !2870, line: 36, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!33, !2868, !31}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2869, file: !2870, line: 27, baseType: !33, size: 32, offset: 768)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2869, file: !2870, line: 28, baseType: !2903, size: 64, offset: 832)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2869, file: !2870, line: 29, baseType: !31, size: 64, offset: 896)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2863, file: !2825, line: 256, baseType: !31, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2863, file: !2825, line: 259, baseType: !698, size: 256, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2863, file: !2825, line: 260, baseType: !698, size: 256, offset: 512)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2863, file: !2825, line: 261, baseType: !33, size: 32, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2863, file: !2825, line: 262, baseType: !108, size: 128, offset: 832)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2863, file: !2825, line: 263, baseType: !943, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2863, file: !2825, line: 265, baseType: !46, size: 64, offset: 1024)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2863, file: !2825, line: 266, baseType: !855, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2863, file: !2825, line: 267, baseType: !855, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2863, file: !2825, line: 268, baseType: !1751, size: 64, offset: 1152)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2856, file: !2825, line: 277, baseType: !2917, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{null, !2862}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2856, file: !2825, line: 290, baseType: !2898, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2856, file: !2825, line: 292, baseType: !2886, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2856, file: !2825, line: 293, baseType: !2894, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2856, file: !2825, line: 294, baseType: !2890, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2856, file: !2825, line: 296, baseType: !2925, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!1377, !2862, !943, !46, !52}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2856, file: !2825, line: 306, baseType: !46, size: 64, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2856, file: !2825, line: 313, baseType: !855, size: 8, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2856, file: !2825, line: 314, baseType: !2925, size: 64, offset: 576)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2856, file: !2825, line: 317, baseType: !2932, size: 64, offset: 640)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!2935, !2862, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2936, line: 59, baseType: !7)
!2936 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2939, line: 37, size: 128, elements: !2940)
!2939 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2940 = !{!2941, !2947}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2938, file: !2939, line: 38, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2939, line: 31, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !670, !2946, !2937}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2938, file: !2939, line: 39, baseType: !2935, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2856, file: !2825, line: 320, baseType: !2949, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!33, !2862, !1706}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2851, file: !2825, line: 176, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2825, line: 35, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2851, file: !2825, line: 177, baseType: !52, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2851, file: !2825, line: 178, baseType: !2823, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2824, file: !2825, line: 215, baseType: !31, size: 64, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2824, file: !2825, line: 221, baseType: !393, size: 64, offset: 832)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2824, file: !2825, line: 223, baseType: !37, size: 16, offset: 896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2824, file: !2825, line: 224, baseType: !35, size: 16, offset: 912)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2824, file: !2825, line: 225, baseType: !2962, size: 64, offset: 960)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2825, line: 36, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2824, file: !2825, line: 227, baseType: !678, size: 128, align: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1472, file: !1473, line: 71, baseType: !2966, size: 32, offset: 448)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2967, line: 19, size: 32, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2966, file: !2967, line: 20, baseType: !341, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1472, file: !1473, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1472, file: !1473, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1472, file: !1473, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1472, file: !1473, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1472, file: !1473, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1469, file: !127, line: 47, baseType: !1459, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1469, file: !127, line: 48, baseType: !1478, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1469, file: !127, line: 49, baseType: !2978, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !127, line: 49, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1469, file: !127, line: 50, baseType: !1020, size: 64, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1460, file: !127, line: 418, baseType: !2982, size: 64, offset: 1408)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !127, line: 53, size: 448, elements: !2984)
!2984 = !{!2985, !2986, !2991, !2995, !2999, !3003}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2983, file: !127, line: 54, baseType: !1543, size: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2983, file: !127, line: 55, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!1377, !2982, !2990, !943}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2983, file: !127, line: 57, baseType: !2992, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!1377, !2982, !2990, !27, !46}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2983, file: !127, line: 59, baseType: !2996, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !1459, !27}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2983, file: !127, line: 60, baseType: !3000, size: 64, offset: 320)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!33, !1459}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2983, file: !127, line: 61, baseType: !3004, size: 64, offset: 384)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !1459}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1460, file: !127, line: 419, baseType: !27, size: 64, offset: 1472)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1460, file: !127, line: 420, baseType: !27, size: 64, offset: 1536)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1460, file: !127, line: 421, baseType: !1478, size: 64, offset: 1600)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1460, file: !127, line: 424, baseType: !3011, size: 64, offset: 1664)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3013)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !127, line: 424, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1460, file: !127, line: 425, baseType: !3015, size: 64, offset: 1728)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1460, file: !127, line: 426, baseType: !7, size: 32, offset: 1792)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1460, file: !127, line: 435, baseType: !698, size: 256, offset: 1856)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1460, file: !127, line: 437, baseType: !3020, size: 64, offset: 2112)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3022, line: 69, size: 320, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3023 = !{!3024, !3025, !3026, !3043, !3045, !3048, !3049}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3021, file: !3022, line: 70, baseType: !27, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3021, file: !3022, line: 71, baseType: !1459, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3021, file: !3022, line: 72, baseType: !3027, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3022, line: 47, size: 256, elements: !3030)
!3030 = !{!3031, !3032, !3038, !3042}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3029, file: !3022, line: 49, baseType: !7, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3029, file: !3022, line: 51, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!33, !27, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3029, file: !3022, line: 53, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!33, !943, !3036}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3029, file: !3022, line: 55, baseType: !1256, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3021, file: !3022, line: 73, baseType: !3044, size: 16, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3021, file: !3022, line: 74, baseType: !3046, size: 8, offset: 208)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !95, line: 16, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !97, line: 20, baseType: !2103)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3021, file: !3022, line: 75, baseType: !94, size: 8, offset: 216)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !3022, line: 76, baseType: !3050, size: 64, offset: 256)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !3022, line: 76, size: 64, elements: !3051)
!3051 = !{!3052, !3053, !3060}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3050, file: !3022, line: 77, baseType: !31, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3050, file: !3022, line: 78, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3022, line: 86, size: 128, elements: !3057)
!3057 = !{!3058, !3059}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3056, file: !3022, line: 87, baseType: !7, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3056, file: !3022, line: 88, baseType: !943, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3050, file: !3022, line: 79, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3022, line: 92, size: 256, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3063, file: !3022, line: 94, baseType: !7, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3063, file: !3022, line: 95, baseType: !7, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3063, file: !3022, line: 96, baseType: !2126, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3063, file: !3022, line: 97, baseType: !3027, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3063, file: !3022, line: 98, baseType: !31, size: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1460, file: !127, line: 438, baseType: !7, size: 32, offset: 2176)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1460, file: !127, line: 441, baseType: !7, size: 32, offset: 2208)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1460, file: !127, line: 442, baseType: !3011, size: 64, offset: 2240)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1460, file: !127, line: 443, baseType: !3015, size: 64, offset: 2304)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1460, file: !127, line: 444, baseType: !855, size: 8, offset: 2368)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1460, file: !127, line: 451, baseType: !855, size: 8, offset: 2376)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1460, file: !127, line: 454, baseType: !7, size: 32, offset: 2400)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1460, file: !127, line: 455, baseType: !3078, size: 64, offset: 2432)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3080, line: 23, size: 96, elements: !3081)
!3080 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3081 = !{!3082, !3083, !3084}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3079, file: !3080, line: 24, baseType: !33, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3079, file: !3080, line: 24, baseType: !33, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3079, file: !3080, line: 24, baseType: !33, size: 32, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1460, file: !127, line: 458, baseType: !3086, size: 64, offset: 2496)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!33}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1460, file: !127, line: 460, baseType: !3090, size: 4032, align: 512, offset: 2560)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3091, size: 4032, elements: !3107)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !127, line: 362, size: 576, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3091, file: !127, line: 363, baseType: !31, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3091, file: !127, line: 364, baseType: !7, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3091, file: !127, line: 367, baseType: !3096, size: 448, offset: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !127, line: 319, size: 448, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3096, file: !127, line: 320, baseType: !1459, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3096, file: !127, line: 321, baseType: !3100, size: 384, offset: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3101, line: 40, size: 384, elements: !3102)
!3101 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3102 = !{!3103}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3100, file: !3101, line: 41, baseType: !3104, size: 384, align: 64)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 384, align: 64, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 2)
!3107 = !{!3108}
!3108 = !DISubrange(count: 7)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1460, file: !127, line: 463, baseType: !3110, size: 192, offset: 6592)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3111, line: 8, size: 192, elements: !3112)
!3111 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3112 = !{!3113, !3114, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3110, file: !3111, line: 10, baseType: !7, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3110, file: !3111, line: 11, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3110, file: !3111, line: 12, baseType: !3117, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3119, line: 59, size: 48, elements: !3120)
!3119 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3120 = !{!3121, !3124, !3125, !3126, !3127, !3128}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3118, file: !3119, line: 60, baseType: !3122, size: 16)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !95, line: 18, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !97, line: 23, baseType: !903)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3118, file: !3119, line: 61, baseType: !3122, size: 16, offset: 16)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3118, file: !3119, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3118, file: !3119, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3118, file: !3119, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3118, file: !3119, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1460, file: !127, line: 465, baseType: !50, size: 64, offset: 6784)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1460, file: !127, line: 469, baseType: !7, size: 32, offset: 6848)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1460, file: !127, line: 470, baseType: !108, size: 128, offset: 6912)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1460, file: !127, line: 471, baseType: !3133, size: 64, offset: 7040)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3135, line: 33, size: 96, elements: !3136)
!3135 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3134, file: !3135, line: 37, baseType: !33, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3134, file: !3135, line: 43, baseType: !33, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3134, file: !3135, line: 45, baseType: !37, size: 16, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3134, file: !3135, line: 47, baseType: !37, size: 16, offset: 80)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1460, file: !127, line: 476, baseType: !3142, size: 64, offset: 7104)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !127, line: 378, size: 256, elements: !3144)
!3144 = !{!3145, !3161, !3162, !3163}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3143, file: !127, line: 379, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3148, line: 204, baseType: !3149)
!3148 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3148, line: 197, size: 192, elements: !3150)
!3150 = !{!3151, !3153, !3154, !3155, !3157, !3159}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3149, file: !3148, line: 198, baseType: !3152, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3148, line: 21, baseType: !336)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3149, file: !3148, line: 199, baseType: !98, size: 8, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3149, file: !3148, line: 200, baseType: !98, size: 8, offset: 40)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3149, file: !3148, line: 201, baseType: !3156, size: 16, offset: 48)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3148, line: 17, baseType: !105)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3149, file: !3148, line: 202, baseType: !3158, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3148, line: 16, baseType: !394)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3149, file: !3148, line: 203, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3148, line: 22, baseType: !394)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3143, file: !127, line: 380, baseType: !7, size: 32, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3143, file: !127, line: 381, baseType: !943, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3143, file: !127, line: 382, baseType: !943, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1460, file: !127, line: 477, baseType: !3143, size: 256, offset: 7168)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1460, file: !127, line: 480, baseType: !3166, size: 64, offset: 7424)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !127, line: 480, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1460, file: !127, line: 483, baseType: !3169, size: 64, offset: 7488)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !127, line: 483, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1460, file: !127, line: 488, baseType: !943, size: 64, offset: 7552)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1460, file: !127, line: 492, baseType: !31, size: 64, offset: 7616)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1460, file: !127, line: 493, baseType: !7, size: 32, offset: 7680)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1460, file: !127, line: 495, baseType: !31, size: 64, offset: 7744)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1460, file: !127, line: 496, baseType: !7, size: 32, offset: 7808)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1460, file: !127, line: 499, baseType: !7, size: 32, offset: 7840)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1460, file: !127, line: 500, baseType: !3178, size: 64, offset: 7872)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3180, line: 45, baseType: !3181)
!3180 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1460, file: !127, line: 503, baseType: !7, size: 32, offset: 7936)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1460, file: !127, line: 504, baseType: !3184, size: 64, offset: 8000)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3187, line: 96, size: 192, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3188 = !{!3189, !3190, !3232, !3235}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3186, file: !3187, line: 97, baseType: !7, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3186, file: !3187, line: 98, baseType: !3191, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3187, line: 24, size: 3072, elements: !3193)
!3193 = !{!3194, !3196, !3197, !3198, !3199, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3229, !3230, !3231}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3192, file: !3187, line: 26, baseType: !3195, size: 128)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 128, elements: !3105)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3192, file: !3187, line: 27, baseType: !3195, size: 128, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3192, file: !3187, line: 28, baseType: !33, size: 32, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3192, file: !3187, line: 31, baseType: !70, size: 32, align: 512, offset: 512)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3192, file: !3187, line: 32, baseType: !3200, size: 960, offset: 576)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3201, line: 206, size: 960, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3202 = !{!3203, !3204, !3207, !3209, !3210, !3211}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3200, file: !3201, line: 207, baseType: !681, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3200, file: !3201, line: 208, baseType: !3205, size: 256, offset: 64)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3206, size: 256, elements: !755)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3200, file: !3201, line: 209, baseType: !3208, size: 256, offset: 320)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !755)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3200, file: !3201, line: 213, baseType: !1080, size: 64, offset: 576)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3200, file: !3201, line: 215, baseType: !1082, size: 256, offset: 640)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !3201, line: 216, baseType: !94, size: 8, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3192, file: !3187, line: 33, baseType: !50, size: 64, offset: 1536)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3192, file: !3187, line: 34, baseType: !50, size: 64, offset: 1600)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3192, file: !3187, line: 35, baseType: !855, size: 8, offset: 1664)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3192, file: !3187, line: 36, baseType: !2374, size: 320, offset: 1728)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3192, file: !3187, line: 37, baseType: !982, size: 256, offset: 2048)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3192, file: !3187, line: 38, baseType: !678, size: 128, align: 64, offset: 2304)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3192, file: !3187, line: 39, baseType: !3219, size: 64, offset: 2432)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3187, line: 49, size: 768, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3220, file: !3187, line: 50, baseType: !70, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3220, file: !3187, line: 51, baseType: !3208, size: 256, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3220, file: !3187, line: 53, baseType: !3208, size: 256, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3220, file: !3187, line: 54, baseType: !50, size: 64, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3220, file: !3187, line: 55, baseType: !3219, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3220, file: !3187, line: 56, baseType: !33, size: 32, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3220, file: !3187, line: 57, baseType: !33, size: 32, offset: 736)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3192, file: !3187, line: 40, baseType: !50, size: 64, offset: 2496)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3192, file: !3187, line: 42, baseType: !33, size: 32, offset: 2560)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3192, file: !3187, line: 43, baseType: !3185, size: 64, offset: 2624)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3186, file: !3187, line: 99, baseType: !3233, offset: 128)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3234, line: 211, elements: !663)
!3234 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3186, file: !3187, line: 100, baseType: !3236, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3187, line: 63, size: 3008, elements: !3238)
!3238 = !{!3239, !3240, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3270}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3237, file: !3187, line: 64, baseType: !3219, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3237, file: !3187, line: 65, baseType: !3241, size: 192, offset: 64)
!3241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3219, size: 192, elements: !734)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3237, file: !3187, line: 67, baseType: !33, size: 32, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3237, file: !3187, line: 68, baseType: !698, size: 256, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3237, file: !3187, line: 69, baseType: !70, size: 32, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3237, file: !3187, line: 70, baseType: !698, size: 256, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3237, file: !3187, line: 71, baseType: !50, size: 64, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3237, file: !3187, line: 72, baseType: !50, size: 64, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3237, file: !3187, line: 73, baseType: !50, size: 64, offset: 1024)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3237, file: !3187, line: 74, baseType: !50, size: 64, offset: 1088)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3237, file: !3187, line: 75, baseType: !50, size: 64, offset: 1152)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3237, file: !3187, line: 76, baseType: !50, size: 64, offset: 1216)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3237, file: !3187, line: 77, baseType: !50, size: 64, offset: 1280)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3237, file: !3187, line: 78, baseType: !50, size: 64, offset: 1344)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3237, file: !3187, line: 79, baseType: !855, size: 8, offset: 1408)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3237, file: !3187, line: 80, baseType: !50, size: 64, offset: 1472)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3237, file: !3187, line: 81, baseType: !698, size: 256, offset: 1536)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3237, file: !3187, line: 82, baseType: !1021, size: 256, offset: 1792)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3237, file: !3187, line: 84, baseType: !60, size: 32, offset: 2048)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3237, file: !3187, line: 87, baseType: !50, size: 64, offset: 2112)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3237, file: !3187, line: 88, baseType: !50, size: 64, offset: 2176)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3237, file: !3187, line: 89, baseType: !3262, size: 704, offset: 2240)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !983, line: 111, size: 704, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3262, file: !983, line: 112, baseType: !982, size: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3262, file: !983, line: 113, baseType: !2374, size: 320, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3262, file: !983, line: 116, baseType: !3267, size: 64, offset: 576)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !983, line: 18, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3262, file: !983, line: 117, baseType: !33, size: 32, offset: 640)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3237, file: !3187, line: 90, baseType: !3185, size: 64, offset: 2944)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1460, file: !127, line: 515, baseType: !3272, size: 64, offset: 8064)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3274, line: 117, size: 128, elements: !3275)
!3274 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3273, file: !3274, line: 118, baseType: !867, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3273, file: !3274, line: 119, baseType: !867, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3273, file: !3274, line: 120, baseType: !1080, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1460, file: !127, line: 516, baseType: !7, size: 32, offset: 8128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1460, file: !127, line: 519, baseType: !7, size: 32, offset: 8160)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1460, file: !127, line: 520, baseType: !2616, size: 64, offset: 8192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1460, file: !127, line: 523, baseType: !3283, size: 64, offset: 8256)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !252, line: 372, size: 1024, elements: !3286)
!3286 = !{!3287, !3288, !3328, !3388, !3469, !3470, !3473, !3478, !3479, !3480, !3481, !3483, !3486}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3285, file: !252, line: 373, baseType: !108, size: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3285, file: !252, line: 374, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !252, line: 291, size: 576, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3299, !3322, !3326, !3327}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3290, file: !252, line: 292, baseType: !27, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3290, file: !252, line: 293, baseType: !31, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3290, file: !252, line: 295, baseType: !31, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3290, file: !252, line: 297, baseType: !3296, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!33, !3284, !251, !31}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3290, file: !252, line: 299, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !252, line: 275, size: 320, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3301, file: !252, line: 276, baseType: !27, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !252, line: 277, baseType: !3305, size: 256, offset: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !252, line: 277, size: 256, elements: !3306)
!3306 = !{!3307, !3318}
!3307 = !DIDerivedType(tag: DW_TAG_member, scope: !3305, file: !252, line: 278, baseType: !3308, size: 256)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !252, line: 278, size: 256, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3315, !3316, !3317}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3308, file: !252, line: 279, baseType: !27, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3308, file: !252, line: 280, baseType: !3181, size: 32, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3308, file: !252, line: 281, baseType: !3181, size: 32, offset: 96)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3308, file: !252, line: 282, baseType: !3314, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3308, file: !252, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3308, file: !252, line: 284, baseType: !3181, size: 32, offset: 160)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3308, file: !252, line: 285, baseType: !3181, size: 32, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3305, file: !252, line: 287, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!33, !3284}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3290, file: !252, line: 300, baseType: !3323, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!111, !3284}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3290, file: !252, line: 301, baseType: !108, size: 128, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3290, file: !252, line: 302, baseType: !3319, size: 64, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !252, line: 375, baseType: !3329, size: 64, offset: 192)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !252, line: 375, size: 64, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3329, file: !252, line: 376, baseType: !27, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3329, file: !252, line: 378, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !3180, line: 32, size: 640, elements: !3335)
!3335 = !{!3336, !3337, !3349, !3373, !3374, !3375, !3376, !3377, !3381}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !3180, line: 33, baseType: !27, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3334, file: !3180, line: 34, baseType: !3338, size: 128, offset: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3274, line: 85, size: 128, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3338, file: !3274, line: 86, baseType: !60, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3338, file: !3274, line: 101, baseType: !3342, size: 64, offset: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3338, file: !3274, line: 101, size: 64, elements: !3343)
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3342, file: !3274, line: 102, baseType: !50, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3342, file: !3274, line: 103, baseType: !3272, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3342, file: !3274, line: 104, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3274, line: 104, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3334, file: !3180, line: 35, baseType: !3350, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3352, line: 61, size: 128, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3351, file: !3352, line: 62, baseType: !31, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !3352, line: 63, baseType: !3356, size: 64, offset: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3351, file: !3352, line: 63, size: 64, elements: !3357)
!3357 = !{!3358, !3359, !3372}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3356, file: !3352, line: 65, baseType: !50, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3356, file: !3352, line: 66, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3362, line: 169, size: 192, elements: !3363)
!3362 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3361, file: !3362, line: 170, baseType: !3360, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3361, file: !3362, line: 171, baseType: !1459, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3361, file: !3362, line: 172, baseType: !3367, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3352, line: 32, size: 64, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3368, file: !3352, line: 33, baseType: !867, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3368, file: !3352, line: 34, baseType: !867, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3356, file: !3352, line: 67, baseType: !3367, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3334, file: !3180, line: 36, baseType: !31, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3334, file: !3180, line: 37, baseType: !31, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3334, file: !3180, line: 38, baseType: !31, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3334, file: !3180, line: 39, baseType: !3086, size: 64, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3334, file: !3180, line: 40, baseType: !3378, size: 64, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3334, file: !3180, line: 41, baseType: !3382, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !3180, line: 26, size: 192, elements: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3383, file: !3180, line: 27, baseType: !31, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3383, file: !3180, line: 28, baseType: !31, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3383, file: !3180, line: 29, baseType: !33, size: 32, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3285, file: !252, line: 380, baseType: !3389, size: 256, offset: 256)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !252, line: 148, size: 256, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3389, file: !252, line: 149, baseType: !750, size: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3389, file: !252, line: 150, baseType: !33, size: 32, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3389, file: !252, line: 151, baseType: !3394, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !252, line: 141, size: 256, elements: !3396)
!3396 = !{!3397, !3466, !3467, !3468}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3395, file: !252, line: 142, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !252, line: 138, baseType: !3399)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!262, !3402, !33, !3465}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !252, line: 93, size: 67776, elements: !3404)
!3404 = !{!3405, !3408, !3411, !3414, !3415, !3416, !3417, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3445, !3448, !3449, !3450, !3458, !3459, !3460, !3461, !3462, !3463, !3464}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3403, file: !252, line: 94, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !252, line: 13, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3403, file: !252, line: 95, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !252, line: 15, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3403, file: !252, line: 96, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !252, line: 14, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3403, file: !252, line: 97, baseType: !31, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3403, file: !252, line: 98, baseType: !33, size: 32, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3403, file: !252, line: 99, baseType: !698, size: 256, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3403, file: !252, line: 100, baseType: !3418, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3421, line: 10, flags: DIFlagFwdDecl)
!3421 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3403, file: !252, line: 101, baseType: !50, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3403, file: !252, line: 102, baseType: !31, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3403, file: !252, line: 103, baseType: !7, size: 32, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3403, file: !252, line: 104, baseType: !943, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3403, file: !252, line: 105, baseType: !7, size: 32, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3403, file: !252, line: 106, baseType: !1080, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3403, file: !252, line: 109, baseType: !3429, size: 33088, offset: 1024)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3430, line: 14, size: 33088, elements: !3431)
!3430 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3431 = !{!3432, !3436, !3443, !3444}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3429, file: !3430, line: 15, baseType: !3433, size: 32768)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32768, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 4096)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3429, file: !3430, line: 16, baseType: !3437, size: 192, offset: 32768)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3438, line: 18, size: 192, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3439 = !{!3440, !3441, !3442}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3437, file: !3438, line: 19, baseType: !943, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3437, file: !3438, line: 20, baseType: !46, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3437, file: !3438, line: 21, baseType: !46, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3429, file: !3430, line: 17, baseType: !46, size: 64, offset: 32960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3429, file: !3430, line: 18, baseType: !33, size: 32, offset: 33024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3403, file: !252, line: 111, baseType: !3446, size: 64, offset: 34112)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !589, line: 913, baseType: !3447)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 64, elements: !594)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3403, file: !252, line: 114, baseType: !855, size: 8, offset: 34176)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3403, file: !252, line: 117, baseType: !3429, size: 33088, offset: 34240)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3403, file: !252, line: 118, baseType: !3451, size: 64, offset: 67328)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !252, line: 79, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !252, line: 80, baseType: !37, size: 16)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3452, file: !252, line: 81, baseType: !98, size: 8, offset: 16)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3452, file: !252, line: 82, baseType: !98, size: 8, offset: 24)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3452, file: !252, line: 83, baseType: !33, size: 32, offset: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3403, file: !252, line: 119, baseType: !50, size: 64, offset: 67392)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3403, file: !252, line: 120, baseType: !33, size: 32, offset: 67456)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3403, file: !252, line: 121, baseType: !33, size: 32, offset: 67488)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3403, file: !252, line: 122, baseType: !33, size: 32, offset: 67520)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3403, file: !252, line: 123, baseType: !393, size: 64, offset: 67584)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3403, file: !252, line: 125, baseType: !52, size: 64, offset: 67648)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3403, file: !252, line: 126, baseType: !1080, size: 64, offset: 67712)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3395, file: !252, line: 143, baseType: !3398, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3395, file: !252, line: 144, baseType: !3398, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3395, file: !252, line: 145, baseType: !3398, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3285, file: !252, line: 381, baseType: !943, size: 64, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3285, file: !252, line: 382, baseType: !3471, size: 64, offset: 576)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !269, line: 821, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !252, line: 387, baseType: !3474, size: 64, offset: 640)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !252, line: 387, size: 64, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3474, file: !252, line: 388, baseType: !31, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3474, file: !252, line: 389, baseType: !60, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3285, file: !252, line: 391, baseType: !31, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !252, line: 394, baseType: !33, size: 32, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3285, file: !252, line: 397, baseType: !33, size: 32, offset: 800)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3285, file: !252, line: 398, baseType: !3482, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3285, file: !252, line: 399, baseType: !3484, size: 64, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !252, line: 399, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3285, file: !252, line: 401, baseType: !3487, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!33, !3284, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !269, line: 671, size: 8512, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3676, !3677, !3678, !3679, !3685, !3686, !3687, !3688, !3689, !3773, !3774, !3775, !3776, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3896, !3897, !3898, !3899, !3900, !3901, !3916, !3917, !3918, !3919, !3920, !3926, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3943, !4114, !4115, !4116, !4117, !4387, !4388, !4389}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3491, file: !269, line: 678, baseType: !108, size: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3491, file: !269, line: 684, baseType: !108, size: 128, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3491, file: !269, line: 685, baseType: !108, size: 128, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3491, file: !269, line: 689, baseType: !385, size: 192, align: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3491, file: !269, line: 690, baseType: !393, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3491, file: !269, line: 696, baseType: !108, size: 128, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3491, file: !269, line: 698, baseType: !750, size: 128, offset: 768)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3491, file: !269, line: 699, baseType: !108, size: 128, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3491, file: !269, line: 700, baseType: !33, size: 32, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3491, file: !269, line: 703, baseType: !33, size: 32, offset: 1056)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3491, file: !269, line: 705, baseType: !33, size: 32, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3491, file: !269, line: 707, baseType: !7, size: 32, offset: 1120)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3491, file: !269, line: 708, baseType: !3490, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3491, file: !269, line: 714, baseType: !3507, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !269, line: 302, size: 2432, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3599, !3603, !3604, !3608, !3612, !3613, !3614, !3618, !3622, !3626, !3627, !3628, !3632, !3633, !3637, !3641, !3642, !3662, !3666, !3667, !3668, !3672}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3508, file: !269, line: 303, baseType: !108, size: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3508, file: !269, line: 305, baseType: !1459, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3508, file: !269, line: 306, baseType: !2181, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3508, file: !269, line: 307, baseType: !2181, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3508, file: !269, line: 308, baseType: !1552, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3508, file: !269, line: 309, baseType: !1552, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3508, file: !269, line: 310, baseType: !27, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3508, file: !269, line: 311, baseType: !33, size: 32, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3508, file: !269, line: 316, baseType: !33, size: 32, offset: 544)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3508, file: !269, line: 318, baseType: !3115, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3508, file: !269, line: 319, baseType: !3521, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !269, line: 977, size: 1856, elements: !3523)
!3523 = !{!3524, !3576, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3522, file: !269, line: 978, baseType: !3525, size: 896)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !269, line: 873, size: 896, elements: !3526)
!3526 = !{!3527, !3528, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3525, file: !269, line: 874, baseType: !3507, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3525, file: !269, line: 875, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !269, line: 912, size: 1792, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3530, file: !269, line: 917, baseType: !485, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3530, file: !269, line: 923, baseType: !698, size: 256, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3530, file: !269, line: 925, baseType: !108, size: 128, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3530, file: !269, line: 926, baseType: !3536, size: 128, offset: 448)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !269, line: 901, size: 128, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3536, file: !269, line: 902, baseType: !528, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3536, file: !269, line: 903, baseType: !393, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3530, file: !269, line: 927, baseType: !3536, size: 128, offset: 576)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3530, file: !269, line: 928, baseType: !108, size: 128, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3530, file: !269, line: 930, baseType: !33, size: 32, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3530, file: !269, line: 931, baseType: !33, size: 32, offset: 864)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3530, file: !269, line: 932, baseType: !33, size: 32, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3530, file: !269, line: 934, baseType: !33, size: 32, offset: 928)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3530, file: !269, line: 935, baseType: !33, size: 32, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3530, file: !269, line: 936, baseType: !33, size: 32, offset: 992)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3530, file: !269, line: 937, baseType: !33, size: 32, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3530, file: !269, line: 939, baseType: !341, size: 32, offset: 1056)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3530, file: !269, line: 940, baseType: !324, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3530, file: !269, line: 945, baseType: !393, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3530, file: !269, line: 946, baseType: !393, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3530, file: !269, line: 947, baseType: !393, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3530, file: !269, line: 953, baseType: !3529, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3530, file: !269, line: 954, baseType: !393, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3530, file: !269, line: 955, baseType: !393, size: 64, offset: 1472)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3530, file: !269, line: 956, baseType: !33, size: 32, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3530, file: !269, line: 958, baseType: !33, size: 32, offset: 1568)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3530, file: !269, line: 960, baseType: !678, size: 128, align: 64, offset: 1600)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3530, file: !269, line: 968, baseType: !3561, size: 64, offset: 1728)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3562, line: 12, baseType: !3563)
!3562 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3562, line: 10, size: 64, elements: !3564)
!3564 = !{!3565}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3563, file: !3562, line: 11, baseType: !691, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3525, file: !269, line: 877, baseType: !108, size: 128, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3525, file: !269, line: 879, baseType: !108, size: 128, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3525, file: !269, line: 880, baseType: !108, size: 128, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3525, file: !269, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3525, file: !269, line: 885, baseType: !7, size: 32, offset: 544)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3525, file: !269, line: 886, baseType: !7, size: 32, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3525, file: !269, line: 888, baseType: !60, size: 32, offset: 608)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3525, file: !269, line: 889, baseType: !678, size: 128, align: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3525, file: !269, line: 891, baseType: !31, size: 64, offset: 768)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3525, file: !269, line: 898, baseType: !33, size: 32, offset: 832)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3522, file: !269, line: 979, baseType: !3577, size: 64, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3522, file: !269, line: 981, baseType: !108, size: 128, offset: 960)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3522, file: !269, line: 982, baseType: !33, size: 32, offset: 1088)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3522, file: !269, line: 984, baseType: !33, size: 32, offset: 1120)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3522, file: !269, line: 985, baseType: !33, size: 32, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3522, file: !269, line: 987, baseType: !485, size: 32, offset: 1184)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3522, file: !269, line: 988, baseType: !460, size: 512, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3522, file: !269, line: 989, baseType: !468, size: 64, offset: 1728)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3522, file: !269, line: 990, baseType: !7, size: 32, offset: 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3508, file: !269, line: 320, baseType: !60, size: 32, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3508, file: !269, line: 321, baseType: !33, size: 32, offset: 736)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3508, file: !269, line: 322, baseType: !33, size: 32, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3508, file: !269, line: 325, baseType: !7, size: 32, offset: 800)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3508, file: !269, line: 331, baseType: !3591, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3507}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3508, file: !269, line: 332, baseType: !3591, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3508, file: !269, line: 350, baseType: !3596, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!33, !3490}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3508, file: !269, line: 356, baseType: !3600, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3490, !642}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3508, file: !269, line: 357, baseType: !3600, size: 64, offset: 1088)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3508, file: !269, line: 385, baseType: !3605, size: 64, offset: 1152)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!33, !3490, !33}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3508, file: !269, line: 386, baseType: !3609, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3490, !33}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3508, file: !269, line: 406, baseType: !3609, size: 64, offset: 1280)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3508, file: !269, line: 407, baseType: !3609, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3508, file: !269, line: 415, baseType: !3615, size: 64, offset: 1408)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3490}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3508, file: !269, line: 427, baseType: !3619, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !3507, !7}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3508, file: !269, line: 436, baseType: !3623, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!33, !3507}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3508, file: !269, line: 443, baseType: !3591, size: 64, offset: 1600)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3508, file: !269, line: 450, baseType: !3596, size: 64, offset: 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3508, file: !269, line: 455, baseType: !3629, size: 64, offset: 1728)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3577, !855}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3508, file: !269, line: 461, baseType: !788, size: 64, offset: 1792)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3508, file: !269, line: 469, baseType: !3634, size: 64, offset: 1856)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3577, !3577}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3508, file: !269, line: 476, baseType: !3638, size: 64, offset: 1920)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!31, !3490, !2003, !33, !855}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3508, file: !269, line: 483, baseType: !1256, size: 64, offset: 1984)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3508, file: !269, line: 494, baseType: !3643, size: 64, offset: 2048)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!1080, !3490, !3646, !50}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !269, line: 1014, size: 448, elements: !3648)
!3648 = !{!3649, !3650, !3653, !3654, !3655, !3656, !3661}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3647, file: !269, line: 1015, baseType: !3490, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3647, file: !269, line: 1016, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !269, line: 641, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3647, file: !269, line: 1017, baseType: !50, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3647, file: !269, line: 1018, baseType: !50, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3647, file: !269, line: 1019, baseType: !393, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !269, line: 1020, baseType: !3657, size: 64, offset: 320)
!3657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3647, file: !269, line: 1020, size: 64, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3657, file: !269, line: 1021, baseType: !31, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3657, file: !269, line: 1022, baseType: !50, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3647, file: !269, line: 1024, baseType: !33, size: 32, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3508, file: !269, line: 506, baseType: !3663, size: 64, offset: 2112)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!33, !111}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3508, file: !269, line: 520, baseType: !3615, size: 64, offset: 2176)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3508, file: !269, line: 530, baseType: !3596, size: 64, offset: 2240)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3508, file: !269, line: 537, baseType: !3669, size: 64, offset: 2304)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!855, !3507, !33}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3508, file: !269, line: 542, baseType: !3673, size: 64, offset: 2368)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!33, !3490, !393}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3491, file: !269, line: 715, baseType: !31, size: 64, offset: 1280)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3491, file: !269, line: 717, baseType: !268, size: 32, offset: 1344)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3491, file: !269, line: 718, baseType: !7, size: 32, offset: 1376)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3491, file: !269, line: 719, baseType: !3680, size: 64, offset: 1408)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3681, line: 26, baseType: !3682)
!3681 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3681, line: 24, size: 64, elements: !3683)
!3683 = !{!3684}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3682, file: !3681, line: 25, baseType: !3561, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3491, file: !269, line: 720, baseType: !693, size: 64, offset: 1472)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3491, file: !269, line: 728, baseType: !393, size: 64, offset: 1536)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3491, file: !269, line: 729, baseType: !393, size: 64, offset: 1600)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3491, file: !269, line: 730, baseType: !393, size: 64, offset: 1664)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3491, file: !269, line: 732, baseType: !3690, size: 1088, offset: 1728)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3691, line: 385, size: 1088, elements: !3692)
!3691 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3692 = !{!3693, !3694, !3695, !3696, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3746, !3747, !3754, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3690, file: !3691, line: 390, baseType: !336, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3690, file: !3691, line: 395, baseType: !336, size: 32, offset: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3690, file: !3691, line: 400, baseType: !394, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !3691, line: 402, baseType: !3697, size: 64, offset: 128)
!3697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !3691, line: 402, size: 64, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3697, file: !3691, line: 403, baseType: !394, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3697, file: !3691, line: 404, baseType: !394, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3690, file: !3691, line: 407, baseType: !394, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3690, file: !3691, line: 408, baseType: !394, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3690, file: !3691, line: 410, baseType: !394, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3690, file: !3691, line: 411, baseType: !394, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3690, file: !3691, line: 412, baseType: !394, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3690, file: !3691, line: 413, baseType: !394, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3690, file: !3691, line: 414, baseType: !394, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3690, file: !3691, line: 415, baseType: !394, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3690, file: !3691, line: 416, baseType: !394, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3690, file: !3691, line: 417, baseType: !394, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3690, file: !3691, line: 418, baseType: !394, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3690, file: !3691, line: 419, baseType: !394, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3690, file: !3691, line: 420, baseType: !394, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3690, file: !3691, line: 421, baseType: !394, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3690, file: !3691, line: 422, baseType: !394, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3690, file: !3691, line: 423, baseType: !394, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3690, file: !3691, line: 424, baseType: !394, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3690, file: !3691, line: 435, baseType: !394, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3690, file: !3691, line: 436, baseType: !394, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3690, file: !3691, line: 437, baseType: !394, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3690, file: !3691, line: 439, baseType: !394, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3690, file: !3691, line: 440, baseType: !394, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3690, file: !3691, line: 442, baseType: !394, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3690, file: !3691, line: 443, baseType: !394, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3690, file: !3691, line: 444, baseType: !394, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3690, file: !3691, line: 445, baseType: !394, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3690, file: !3691, line: 446, baseType: !394, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3690, file: !3691, line: 447, baseType: !394, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3690, file: !3691, line: 448, baseType: !394, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3690, file: !3691, line: 449, baseType: !394, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3690, file: !3691, line: 450, baseType: !394, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3690, file: !3691, line: 451, baseType: !394, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3690, file: !3691, line: 452, baseType: !394, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3690, file: !3691, line: 453, baseType: !394, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3690, file: !3691, line: 454, baseType: !394, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3690, file: !3691, line: 455, baseType: !394, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3690, file: !3691, line: 456, baseType: !394, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3690, file: !3691, line: 457, baseType: !394, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3690, file: !3691, line: 458, baseType: !394, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3690, file: !3691, line: 459, baseType: !394, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !3691, line: 461, baseType: !3742, size: 32, offset: 384)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !3691, line: 461, size: 32, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3742, file: !3691, line: 462, baseType: !336, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3742, file: !3691, line: 463, baseType: !336, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3690, file: !3691, line: 466, baseType: !336, size: 32, offset: 416)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !3691, line: 467, baseType: !3748, size: 64, offset: 448)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !3691, line: 467, size: 64, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3753}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3748, file: !3691, line: 468, baseType: !394, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3748, file: !3691, line: 469, baseType: !394, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3748, file: !3691, line: 470, baseType: !394, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3748, file: !3691, line: 471, baseType: !394, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !3691, line: 473, baseType: !3755, size: 64, offset: 512)
!3755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !3691, line: 473, size: 64, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3760}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3755, file: !3691, line: 474, baseType: !394, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3755, file: !3691, line: 475, baseType: !394, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3755, file: !3691, line: 476, baseType: !394, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3755, file: !3691, line: 477, baseType: !394, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3690, file: !3691, line: 479, baseType: !394, size: 64, offset: 576)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3690, file: !3691, line: 485, baseType: !394, size: 64, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3690, file: !3691, line: 490, baseType: !336, size: 32, offset: 704)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3690, file: !3691, line: 492, baseType: !868, size: 32, offset: 736)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3690, file: !3691, line: 501, baseType: !394, size: 64, offset: 768)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3690, file: !3691, line: 506, baseType: !336, size: 32, offset: 832)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3690, file: !3691, line: 507, baseType: !105, size: 16, offset: 864)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3690, file: !3691, line: 508, baseType: !105, size: 16, offset: 880)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3690, file: !3691, line: 509, baseType: !336, size: 32, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3690, file: !3691, line: 510, baseType: !336, size: 32, offset: 928)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3690, file: !3691, line: 518, baseType: !394, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3690, file: !3691, line: 520, baseType: !394, size: 64, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3491, file: !269, line: 733, baseType: !104, size: 16, offset: 2816)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3491, file: !269, line: 734, baseType: !104, size: 16, offset: 2832)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3491, file: !269, line: 735, baseType: !104, size: 16, offset: 2848)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3491, file: !269, line: 736, baseType: !3777, size: 1536, offset: 2880)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !269, line: 155, size: 1536, elements: !3778)
!3778 = !{!3779, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3863, !3864, !3865, !3866}
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !3777, file: !269, line: 157, baseType: !3780, size: 768)
!3780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3777, file: !269, line: 157, size: 768, elements: !3781)
!3781 = !{!3782, !3801, !3805, !3809, !3814, !3836}
!3782 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 158, baseType: !3783, size: 768)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 158, size: 768, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3800}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3783, file: !269, line: 159, baseType: !393, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3783, file: !269, line: 160, baseType: !393, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3783, file: !269, line: 161, baseType: !50, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3783, file: !269, line: 162, baseType: !50, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3783, file: !269, line: 163, baseType: !33, size: 32, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3783, file: !269, line: 164, baseType: !33, size: 32, offset: 288)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3783, file: !269, line: 165, baseType: !33, size: 32, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3783, file: !269, line: 166, baseType: !33, size: 32, offset: 352)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3783, file: !269, line: 168, baseType: !3794, size: 192, offset: 384)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !269, line: 134, size: 192, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3794, file: !269, line: 135, baseType: !393, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3794, file: !269, line: 136, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3794, file: !269, line: 137, baseType: !33, size: 32, offset: 96)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3794, file: !269, line: 138, baseType: !33, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3783, file: !269, line: 169, baseType: !3794, size: 192, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 171, baseType: !3802, size: 512)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 171, size: 512, elements: !3803)
!3803 = !{!3804}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3802, file: !269, line: 172, baseType: !460, size: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 174, baseType: !3806, size: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 174, size: 128, elements: !3807)
!3807 = !{!3808}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3806, file: !269, line: 176, baseType: !108, size: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 178, baseType: !3810, size: 128)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 178, size: 128, elements: !3811)
!3811 = !{!3812, !3813}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3810, file: !269, line: 179, baseType: !393, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3810, file: !269, line: 180, baseType: !393, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 183, baseType: !3815, size: 320)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 183, size: 320, elements: !3816)
!3816 = !{!3817, !3825}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3815, file: !269, line: 189, baseType: !3818, size: 192)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3819, line: 14, size: 192, elements: !3820)
!3819 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3820 = !{!3821, !3822, !3823, !3824}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3818, file: !3819, line: 15, baseType: !50, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3818, file: !3819, line: 16, baseType: !50, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3818, file: !3819, line: 17, baseType: !94, size: 8, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3818, file: !3819, line: 18, baseType: !94, size: 8, offset: 136)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3815, file: !269, line: 190, baseType: !3826, size: 128, offset: 192)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3827, line: 21, size: 128, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3828 = !{!3829, !3834}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3826, file: !3827, line: 22, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3827, line: 17, size: 64, elements: !3831)
!3831 = !{!3832}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3830, file: !3827, line: 18, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3826, file: !3827, line: 23, baseType: !3835, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !3780, file: !269, line: 193, baseType: !3837, size: 192)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3780, file: !269, line: 193, size: 192, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3843}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3837, file: !269, line: 194, baseType: !94, size: 8)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3837, file: !269, line: 195, baseType: !94, size: 8, offset: 8)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3837, file: !269, line: 196, baseType: !104, size: 16, offset: 16)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3837, file: !269, line: 197, baseType: !393, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3837, file: !269, line: 198, baseType: !393, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3777, file: !269, line: 205, baseType: !324, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3777, file: !269, line: 211, baseType: !31, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3777, file: !269, line: 214, baseType: !50, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3777, file: !269, line: 223, baseType: !33, size: 32, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3777, file: !269, line: 229, baseType: !3680, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3777, file: !269, line: 234, baseType: !393, size: 64, offset: 1088)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3777, file: !269, line: 236, baseType: !3851, size: 128, offset: 1152)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3777, file: !269, line: 236, size: 128, elements: !3852)
!3852 = !{!3853, !3858}
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !269, line: 237, baseType: !3854, size: 128)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3851, file: !269, line: 237, size: 128, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3854, file: !269, line: 241, baseType: !393, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3854, file: !269, line: 249, baseType: !3680, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !269, line: 251, baseType: !3859, size: 128)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3851, file: !269, line: 251, size: 128, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3859, file: !269, line: 252, baseType: !393, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3859, file: !269, line: 253, baseType: !393, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3777, file: !269, line: 261, baseType: !393, size: 64, offset: 1280)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3777, file: !269, line: 262, baseType: !393, size: 64, offset: 1344)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3777, file: !269, line: 268, baseType: !393, size: 64, offset: 1408)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3777, file: !269, line: 269, baseType: !393, size: 64, offset: 1472)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3491, file: !269, line: 738, baseType: !3529, size: 64, offset: 4416)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3491, file: !269, line: 744, baseType: !3577, size: 64, offset: 4480)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3491, file: !269, line: 745, baseType: !691, size: 64, offset: 4544)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3491, file: !269, line: 751, baseType: !693, size: 64, offset: 4608)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3491, file: !269, line: 752, baseType: !693, size: 64, offset: 4672)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3491, file: !269, line: 757, baseType: !698, size: 256, offset: 4736)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3491, file: !269, line: 758, baseType: !108, size: 128, offset: 4992)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3491, file: !269, line: 759, baseType: !3490, size: 64, offset: 5120)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3491, file: !269, line: 761, baseType: !33, size: 32, offset: 5184)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3491, file: !269, line: 762, baseType: !33, size: 32, offset: 5216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3491, file: !269, line: 764, baseType: !108, size: 128, offset: 5248)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3491, file: !269, line: 765, baseType: !324, size: 64, offset: 5376)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3491, file: !269, line: 768, baseType: !698, size: 256, offset: 5440)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3491, file: !269, line: 769, baseType: !60, size: 32, offset: 5696)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3491, file: !269, line: 771, baseType: !3651, size: 64, offset: 5760)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3491, file: !269, line: 772, baseType: !108, size: 128, offset: 5824)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3491, file: !269, line: 773, baseType: !50, size: 64, offset: 5952)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3491, file: !269, line: 774, baseType: !33, size: 32, offset: 6016)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3491, file: !269, line: 777, baseType: !65, size: 192, offset: 6080)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3491, file: !269, line: 778, baseType: !3887, size: 64, offset: 6272)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !278, line: 1083, size: 384, elements: !3889)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3888, file: !278, line: 1084, baseType: !715, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3888, file: !278, line: 1085, baseType: !33, size: 32, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3888, file: !278, line: 1086, baseType: !33, size: 32, offset: 96)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3888, file: !278, line: 1087, baseType: !3887, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3888, file: !278, line: 1088, baseType: !670, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3888, file: !278, line: 1089, baseType: !678, size: 128, align: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3491, file: !269, line: 781, baseType: !7, size: 32, offset: 6336)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3491, file: !269, line: 782, baseType: !7, size: 32, offset: 6368)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3491, file: !269, line: 783, baseType: !7, size: 32, offset: 6400)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3491, file: !269, line: 784, baseType: !7, size: 32, offset: 6432)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3491, file: !269, line: 785, baseType: !50, size: 64, offset: 6464)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3491, file: !269, line: 786, baseType: !3902, size: 256, offset: 6528)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3903, line: 17, size: 256, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3904 = !{!3905, !3906, !3911}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3902, file: !3903, line: 18, baseType: !350, size: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3902, file: !3903, line: 19, baseType: !3907, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3902, file: !3903, line: 20, baseType: !3912, size: 64, offset: 192)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3913, line: 16, size: 64, elements: !3914)
!3913 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3914 = !{!3915}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3912, file: !3913, line: 17, baseType: !324, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3491, file: !269, line: 787, baseType: !678, size: 128, align: 64, offset: 6784)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3491, file: !269, line: 788, baseType: !7, size: 32, offset: 6912)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3491, file: !269, line: 789, baseType: !3912, size: 64, offset: 6976)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3491, file: !269, line: 791, baseType: !60, size: 32, offset: 7040)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3491, file: !269, line: 794, baseType: !3921, size: 192, offset: 7104)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !269, line: 579, size: 192, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3921, file: !269, line: 580, baseType: !108, size: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3921, file: !269, line: 581, baseType: !485, size: 32, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3921, file: !269, line: 582, baseType: !7, size: 32, offset: 160)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3491, file: !269, line: 796, baseType: !3927, size: 64, offset: 7296)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !269, line: 585, size: 128, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3928, file: !269, line: 586, baseType: !50, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3928, file: !269, line: 587, baseType: !50, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3491, file: !269, line: 797, baseType: !50, size: 64, offset: 7360)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3491, file: !269, line: 800, baseType: !3490, size: 64, offset: 7424)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3491, file: !269, line: 802, baseType: !3615, size: 64, offset: 7488)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3491, file: !269, line: 803, baseType: !678, size: 128, align: 64, offset: 7552)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3491, file: !269, line: 805, baseType: !766, size: 64, offset: 7680)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3491, file: !269, line: 806, baseType: !393, size: 64, offset: 7744)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3491, file: !269, line: 808, baseType: !693, size: 64, offset: 7808)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3491, file: !269, line: 810, baseType: !3940, size: 64, offset: 7872)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!393}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3491, file: !269, line: 811, baseType: !3944, size: 64, offset: 7936)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !269, line: 605, baseType: !3945)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3490, !3948, !4053}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !269, line: 1148, size: 2048, align: 512, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3960, !3961, !3962, !3967, !3968, !3975, !3996, !4018, !4028, !4046, !4047, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3949, file: !269, line: 1153, baseType: !393, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3949, file: !269, line: 1154, baseType: !393, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3949, file: !269, line: 1155, baseType: !393, size: 64, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3949, file: !269, line: 1161, baseType: !393, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3949, file: !269, line: 1165, baseType: !3956, size: 64, offset: 256)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !269, line: 1162, size: 64, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3956, file: !269, line: 1163, baseType: !335, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3956, file: !269, line: 1164, baseType: !335, size: 32, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3949, file: !269, line: 1166, baseType: !393, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3949, file: !269, line: 1167, baseType: !393, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3949, file: !269, line: 1171, baseType: !3963, size: 64, offset: 448)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !269, line: 1168, size: 64, elements: !3964)
!3964 = !{!3965, !3966}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3963, file: !269, line: 1169, baseType: !335, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3963, file: !269, line: 1170, baseType: !335, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3949, file: !269, line: 1177, baseType: !393, size: 64, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3949, file: !269, line: 1178, baseType: !3969, size: 64, offset: 576)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !269, line: 67, size: 64, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3970, file: !269, line: 68, baseType: !394, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3970, file: !269, line: 69, baseType: !3974, offset: 64)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !1087)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3949, file: !269, line: 1179, baseType: !3976, size: 64, offset: 640)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !269, line: 93, size: 256, elements: !3978)
!3978 = !{!3979, !3995}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3977, file: !269, line: 94, baseType: !3980, size: 224)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !269, line: 83, size: 224, elements: !3981)
!3981 = !{!3982, !3988, !3993, !3994}
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !269, line: 84, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3980, file: !269, line: 84, size: 64, elements: !3984)
!3984 = !{!3985, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3983, file: !269, line: 85, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3983, file: !269, line: 86, baseType: !50, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3980, file: !269, line: 88, baseType: !3989, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !269, line: 80, baseType: !3990)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!50, !31, !2279, !50, !50}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3980, file: !269, line: 89, baseType: !31, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3980, file: !269, line: 90, baseType: !335, size: 32, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3977, file: !269, line: 95, baseType: !335, size: 32, offset: 224)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3949, file: !269, line: 1180, baseType: !3997, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !269, line: 123, size: 128, elements: !3999)
!3999 = !{!4000, !4001, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3998, file: !269, line: 124, baseType: !394, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3998, file: !269, line: 125, baseType: !394, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3998, file: !269, line: 126, baseType: !4003, offset: 128)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4004, elements: !1087)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3691, line: 1415, size: 192, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4004, file: !3691, line: 1416, baseType: !394, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4004, file: !3691, line: 1417, baseType: !394, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4004, file: !3691, line: 1418, baseType: !394, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4004, file: !3691, line: 1419, baseType: !394, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4004, file: !3691, line: 1420, baseType: !394, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4004, file: !3691, line: 1421, baseType: !394, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4004, file: !3691, line: 1422, baseType: !394, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4004, file: !3691, line: 1423, baseType: !394, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4004, file: !3691, line: 1424, baseType: !394, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4004, file: !3691, line: 1425, baseType: !394, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4004, file: !3691, line: 1426, baseType: !394, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4004, file: !3691, line: 1427, baseType: !394, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3949, file: !269, line: 1181, baseType: !4019, size: 64, offset: 768)
!4019 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3691, line: 1430, size: 64, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4019, file: !3691, line: 1431, baseType: !394, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, scope: !4019, file: !3691, line: 1433, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4019, file: !3691, line: 1433, size: 64, elements: !4024)
!4024 = !{!4025, !4026, !4027}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4023, file: !3691, line: 1434, baseType: !336, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4023, file: !3691, line: 1435, baseType: !105, size: 16, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4023, file: !3691, line: 1436, baseType: !105, size: 16, offset: 48)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3949, file: !269, line: 1182, baseType: !4029, size: 64, offset: 832)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3691, line: 1267, size: 64, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4029, file: !3691, line: 1268, baseType: !394, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !3691, line: 1269, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4029, file: !3691, line: 1269, size: 64, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4033, file: !3691, line: 1270, baseType: !394, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4033, file: !3691, line: 1271, baseType: !394, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4033, file: !3691, line: 1272, baseType: !394, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4033, file: !3691, line: 1273, baseType: !394, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4033, file: !3691, line: 1274, baseType: !394, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4033, file: !3691, line: 1275, baseType: !394, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4033, file: !3691, line: 1276, baseType: !394, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4033, file: !3691, line: 1277, baseType: !394, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4033, file: !3691, line: 1278, baseType: !394, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4033, file: !3691, line: 1279, baseType: !394, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4033, file: !3691, line: 1280, baseType: !394, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3949, file: !269, line: 1183, baseType: !393, size: 64, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3949, file: !269, line: 1185, baseType: !4048, size: 128, offset: 960)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4049, line: 7, size: 128, elements: !4050)
!4049 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4048, file: !4049, line: 8, baseType: !394, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4048, file: !4049, line: 9, baseType: !4053, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4055, line: 103, size: 1344, elements: !4056)
!4055 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4085, !4086, !4087}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4054, file: !4055, line: 109, baseType: !50, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4054, file: !4055, line: 110, baseType: !50, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4054, file: !4055, line: 111, baseType: !50, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4054, file: !4055, line: 112, baseType: !50, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4054, file: !4055, line: 113, baseType: !50, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4054, file: !4055, line: 114, baseType: !50, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4054, file: !4055, line: 117, baseType: !50, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4054, file: !4055, line: 118, baseType: !50, size: 64, offset: 448)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4054, file: !4055, line: 119, baseType: !50, size: 64, offset: 512)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4054, file: !4055, line: 120, baseType: !50, size: 64, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4054, file: !4055, line: 121, baseType: !50, size: 64, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4054, file: !4055, line: 122, baseType: !50, size: 64, offset: 704)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4054, file: !4055, line: 123, baseType: !50, size: 64, offset: 768)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4054, file: !4055, line: 124, baseType: !50, size: 64, offset: 832)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4054, file: !4055, line: 125, baseType: !50, size: 64, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4054, file: !4055, line: 139, baseType: !50, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4054, file: !4055, line: 142, baseType: !50, size: 64, offset: 1024)
!4074 = !DIDerivedType(tag: DW_TAG_member, scope: !4054, file: !4055, line: 144, baseType: !4075, size: 64, offset: 1088)
!4075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4054, file: !4055, line: 144, size: 64, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4075, file: !4055, line: 146, baseType: !104, size: 16)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4075, file: !4055, line: 148, baseType: !393, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4075, file: !4055, line: 150, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4055, line: 59, size: 64, elements: !4081)
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4080, file: !4055, line: 61, baseType: !393, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4080, file: !4055, line: 63, baseType: !393, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4080, file: !4055, line: 65, baseType: !393, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4054, file: !4055, line: 153, baseType: !50, size: 64, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4054, file: !4055, line: 154, baseType: !50, size: 64, offset: 1216)
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4054, file: !4055, line: 156, baseType: !4088, size: 64, offset: 1280)
!4088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4054, file: !4055, line: 156, size: 64, elements: !4089)
!4089 = !{!4090, !4091, !4092}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4088, file: !4055, line: 158, baseType: !104, size: 16)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4088, file: !4055, line: 160, baseType: !393, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4088, file: !4055, line: 162, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4055, line: 69, size: 64, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4093, file: !4055, line: 71, baseType: !393, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4093, file: !4055, line: 73, baseType: !393, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4093, file: !4055, line: 75, baseType: !393, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4093, file: !4055, line: 77, baseType: !393, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4093, file: !4055, line: 80, baseType: !393, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4093, file: !4055, line: 83, baseType: !393, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4093, file: !4055, line: 86, baseType: !393, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4093, file: !4055, line: 88, baseType: !393, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4093, file: !4055, line: 93, baseType: !393, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4093, file: !4055, line: 100, baseType: !393, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3949, file: !269, line: 1186, baseType: !4048, size: 128, offset: 1088)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3949, file: !269, line: 1187, baseType: !393, size: 64, offset: 1216)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3949, file: !269, line: 1189, baseType: !393, size: 64, offset: 1280)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3949, file: !269, line: 1190, baseType: !393, size: 64, offset: 1344)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3949, file: !269, line: 1191, baseType: !393, size: 64, offset: 1408)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3949, file: !269, line: 1192, baseType: !393, size: 64, offset: 1472)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3949, file: !269, line: 1193, baseType: !393, size: 64, offset: 1536)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3949, file: !269, line: 1194, baseType: !393, size: 64, offset: 1600)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3949, file: !269, line: 1195, baseType: !393, size: 64, offset: 1664)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3491, file: !269, line: 812, baseType: !31, size: 64, offset: 8000)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3491, file: !269, line: 820, baseType: !3284, size: 64, offset: 8064)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3491, file: !269, line: 821, baseType: !3471, size: 64, offset: 8128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3491, file: !269, line: 828, baseType: !4118, size: 64, offset: 8192)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !269, line: 1046, size: 1664, elements: !4120)
!4120 = !{!4121, !4379}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4119, file: !269, line: 1047, baseType: !4122, size: 1600)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4123, line: 152, size: 1600, elements: !4124)
!4123 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4124 = !{!4125, !4235, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4378}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4122, file: !4123, line: 154, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4123, line: 389, size: 7872, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4148, !4149, !4153, !4154, !4155, !4156, !4157, !4162, !4178, !4179, !4181, !4182, !4183, !4205, !4206, !4207, !4208, !4214, !4215, !4216, !4217, !4218, !4222, !4225, !4226, !4233}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4127, file: !4123, line: 391, baseType: !4122, size: 1600)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4127, file: !4123, line: 393, baseType: !50, size: 64, offset: 1600)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4127, file: !4123, line: 401, baseType: !33, size: 32, offset: 1664)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4127, file: !4123, line: 404, baseType: !33, size: 32, offset: 1696)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4127, file: !4123, line: 417, baseType: !33, size: 32, offset: 1728)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4127, file: !4123, line: 418, baseType: !33, size: 32, offset: 1760)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4127, file: !4123, line: 419, baseType: !33, size: 32, offset: 1792)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4127, file: !4123, line: 432, baseType: !33, size: 32, offset: 1824)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4127, file: !4123, line: 433, baseType: !33, size: 32, offset: 1856)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4127, file: !4123, line: 434, baseType: !33, size: 32, offset: 1888)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4127, file: !4123, line: 436, baseType: !33, size: 32, offset: 1920)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4127, file: !4123, line: 439, baseType: !7, size: 32, offset: 1952)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4127, file: !4123, line: 441, baseType: !2823, size: 64, offset: 1984)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4127, file: !4123, line: 442, baseType: !4143, size: 448, offset: 2048)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4123, line: 138, size: 448, elements: !4144)
!4144 = !{!4145, !4146, !4147}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4143, file: !4123, line: 140, baseType: !2823, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4143, file: !4123, line: 141, baseType: !50, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4143, file: !4123, line: 142, baseType: !2374, size: 320, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4127, file: !4123, line: 443, baseType: !4143, size: 448, offset: 2496)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4127, file: !4123, line: 446, baseType: !4150, offset: 2944)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4143, elements: !4151)
!4151 = !{!4152}
!4152 = !DISubrange(count: 0)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4127, file: !4123, line: 455, baseType: !104, size: 16, offset: 2944)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4127, file: !4123, line: 456, baseType: !104, size: 16, offset: 2960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4127, file: !4123, line: 457, baseType: !104, size: 16, offset: 2976)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4127, file: !4123, line: 458, baseType: !104, size: 16, offset: 2992)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4127, file: !4123, line: 461, baseType: !4158, size: 896, offset: 3008)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4159, size: 896, elements: !4160)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4160 = !{!4161}
!4161 = !DISubrange(count: 14)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4127, file: !4123, line: 463, baseType: !4163, size: 64, offset: 3904)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4123, line: 537, size: 41664, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4164, file: !4123, line: 538, baseType: !2843, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4164, file: !4123, line: 541, baseType: !7, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4164, file: !4123, line: 544, baseType: !33, size: 32, offset: 96)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4164, file: !4123, line: 547, baseType: !108, size: 128, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4164, file: !4123, line: 548, baseType: !678, size: 128, align: 64, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4164, file: !4123, line: 555, baseType: !4127, size: 7872, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4164, file: !4123, line: 558, baseType: !4126, size: 64, offset: 8256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4164, file: !4123, line: 561, baseType: !60, size: 32, offset: 8320)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4164, file: !4123, line: 564, baseType: !7, size: 32, offset: 8352)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4164, file: !4123, line: 567, baseType: !3433, size: 32768, offset: 8384)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4164, file: !4123, line: 570, baseType: !4177, size: 512, offset: 41152)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !1515)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4127, file: !4123, line: 469, baseType: !108, size: 128, offset: 3968)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4127, file: !4123, line: 478, baseType: !4180, size: 1792, offset: 4096)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1792, elements: !4160)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4127, file: !4123, line: 487, baseType: !4126, size: 64, offset: 5888)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4127, file: !4123, line: 488, baseType: !4126, size: 64, offset: 5952)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4127, file: !4123, line: 491, baseType: !4184, size: 64, offset: 6016)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4123, line: 327, size: 896, elements: !4186)
!4186 = !{!4187, !4190, !4200, !4201, !4202, !4203, !4204}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4185, file: !4123, line: 332, baseType: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4189, line: 64, elements: !663)
!4189 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4185, file: !4123, line: 333, baseType: !4191, size: 192)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4123, line: 299, size: 192, elements: !4192)
!4192 = !{!4193}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4191, file: !4123, line: 300, baseType: !4194, size: 192)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4195, line: 17, size: 192, elements: !4196)
!4195 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4196 = !{!4197, !4198, !4199}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4194, file: !4195, line: 18, baseType: !393, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4194, file: !4195, line: 19, baseType: !393, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4194, file: !4195, line: 20, baseType: !395, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4185, file: !4123, line: 339, baseType: !4191, size: 192, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4185, file: !4123, line: 347, baseType: !4191, size: 192, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4185, file: !4123, line: 353, baseType: !4191, size: 192, offset: 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4185, file: !4123, line: 366, baseType: !4126, size: 64, offset: 768)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4185, file: !4123, line: 367, baseType: !4126, size: 64, offset: 832)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4127, file: !4123, line: 492, baseType: !108, size: 128, offset: 6080)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4127, file: !4123, line: 495, baseType: !4191, size: 192, offset: 6208)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4127, file: !4123, line: 496, baseType: !4191, size: 192, offset: 6400)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4127, file: !4123, line: 497, baseType: !4209, size: 192, offset: 6592)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !326, line: 324, size: 192, elements: !4210)
!4210 = !{!4211, !4212, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4209, file: !326, line: 326, baseType: !393, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4209, file: !326, line: 327, baseType: !393, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4209, file: !326, line: 328, baseType: !485, size: 32, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4127, file: !4123, line: 503, baseType: !108, size: 128, offset: 6784)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4127, file: !4123, line: 504, baseType: !698, size: 256, offset: 6912)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4127, file: !4123, line: 507, baseType: !65, size: 192, offset: 7168)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4127, file: !4123, line: 510, baseType: !982, size: 256, offset: 7360)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4127, file: !4123, line: 513, baseType: !4219, size: 64, offset: 7616)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4221, line: 214, elements: !663)
!4221 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4127, file: !4123, line: 516, baseType: !4223, offset: 7680)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4224, line: 76, elements: !663)
!4224 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4127, file: !4123, line: 519, baseType: !60, size: 32, offset: 7680)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4127, file: !4123, line: 522, baseType: !4227, size: 128, offset: 7712)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4123, line: 370, size: 128, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4227, file: !4123, line: 372, baseType: !855, size: 8)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4227, file: !4123, line: 375, baseType: !33, size: 32, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4227, file: !4123, line: 380, baseType: !33, size: 32, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4227, file: !4123, line: 386, baseType: !33, size: 32, offset: 96)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4127, file: !4123, line: 529, baseType: !4234, offset: 7872)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4126, elements: !1087)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4122, file: !4123, line: 157, baseType: !4236, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4123, line: 669, size: 1984, elements: !4238)
!4238 = !{!4239, !4243, !4247, !4251, !4252, !4253, !4254, !4258, !4262, !4263, !4269, !4273, !4274, !4275, !4304, !4308, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4361, !4362}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4237, file: !4123, line: 670, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!4159, !4159}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4237, file: !4123, line: 671, baseType: !4244, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!33, !4159}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4237, file: !4123, line: 672, baseType: !4248, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4159}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4237, file: !4123, line: 673, baseType: !4248, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4237, file: !4123, line: 674, baseType: !4248, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4237, file: !4123, line: 675, baseType: !4248, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4237, file: !4123, line: 676, baseType: !4255, size: 64, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !4159, !33}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4237, file: !4123, line: 677, baseType: !4259, size: 64, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!33, !2868, !4159}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4237, file: !4123, line: 679, baseType: !4259, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4237, file: !4123, line: 682, baseType: !4264, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!33, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4123, line: 30, flags: DIFlagFwdDecl)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4237, file: !4123, line: 683, baseType: !4270, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4267}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4237, file: !4123, line: 684, baseType: !4270, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4237, file: !4123, line: 685, baseType: !3378, size: 64, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4237, file: !4123, line: 686, baseType: !4276, size: 64, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!33, !324, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4123, line: 209, size: 4736, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4280, file: !4123, line: 215, baseType: !4158, size: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4280, file: !4123, line: 218, baseType: !341, size: 32, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4280, file: !4123, line: 226, baseType: !4279, size: 64, offset: 960)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4280, file: !4123, line: 229, baseType: !4126, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4280, file: !4123, line: 232, baseType: !33, size: 32, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4280, file: !4123, line: 241, baseType: !108, size: 128, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4280, file: !4123, line: 242, baseType: !108, size: 128, offset: 1280)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4280, file: !4123, line: 243, baseType: !108, size: 128, offset: 1408)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4280, file: !4123, line: 246, baseType: !108, size: 128, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4280, file: !4123, line: 255, baseType: !4180, size: 1792, offset: 1664)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4280, file: !4123, line: 258, baseType: !108, size: 128, offset: 3456)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4280, file: !4123, line: 259, baseType: !108, size: 128, offset: 3584)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4280, file: !4123, line: 265, baseType: !750, size: 128, offset: 3712)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4280, file: !4123, line: 271, baseType: !108, size: 128, offset: 3840)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4280, file: !4123, line: 277, baseType: !108, size: 128, offset: 3968)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4280, file: !4123, line: 278, baseType: !108, size: 128, offset: 4096)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4280, file: !4123, line: 279, baseType: !108, size: 128, offset: 4224)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4280, file: !4123, line: 288, baseType: !4126, size: 64, offset: 4352)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4280, file: !4123, line: 289, baseType: !4126, size: 64, offset: 4416)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4280, file: !4123, line: 290, baseType: !4279, size: 64, offset: 4480)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4280, file: !4123, line: 293, baseType: !855, size: 8, offset: 4544)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4280, file: !4123, line: 296, baseType: !678, size: 128, align: 64, offset: 4608)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4237, file: !4123, line: 688, baseType: !4305, size: 64, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !324, !4279}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4237, file: !4123, line: 689, baseType: !4309, size: 64, offset: 960)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !324}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4237, file: !4123, line: 690, baseType: !4309, size: 64, offset: 1024)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4237, file: !4123, line: 691, baseType: !4309, size: 64, offset: 1088)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4237, file: !4123, line: 692, baseType: !4248, size: 64, offset: 1152)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4237, file: !4123, line: 694, baseType: !855, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4237, file: !4123, line: 707, baseType: !855, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4237, file: !4123, line: 719, baseType: !855, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4237, file: !4123, line: 722, baseType: !33, size: 32, offset: 1248)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4237, file: !4123, line: 723, baseType: !27, size: 64, offset: 1280)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4237, file: !4123, line: 726, baseType: !27, size: 64, offset: 1344)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4237, file: !4123, line: 729, baseType: !4163, size: 64, offset: 1408)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4237, file: !4123, line: 732, baseType: !771, size: 192, offset: 1472)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4237, file: !4123, line: 738, baseType: !108, size: 128, offset: 1664)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4237, file: !4123, line: 744, baseType: !4325, size: 64, offset: 1792)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4123, line: 580, size: 1728, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4337, !4338, !4339, !4343, !4347, !4348, !4349, !4350, !4351, !4355, !4359, !4360}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4326, file: !4123, line: 586, baseType: !4177, size: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4326, file: !4123, line: 587, baseType: !50, size: 64, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4326, file: !4123, line: 593, baseType: !46, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4326, file: !4123, line: 596, baseType: !7, size: 32, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4326, file: !4123, line: 604, baseType: !7, size: 32, offset: 672)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4326, file: !4123, line: 610, baseType: !4236, size: 64, offset: 704)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4326, file: !4123, line: 611, baseType: !108, size: 128, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4326, file: !4123, line: 612, baseType: !4336, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4326, file: !4123, line: 614, baseType: !2859, size: 64, offset: 960)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4326, file: !4123, line: 615, baseType: !2917, size: 64, offset: 1024)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4326, file: !4123, line: 621, baseType: !4340, size: 64, offset: 1088)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!393, !4159, !4325}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4326, file: !4123, line: 625, baseType: !4344, size: 64, offset: 1152)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!404, !4159, !4325}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4326, file: !4123, line: 628, baseType: !2898, size: 64, offset: 1216)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4326, file: !4123, line: 631, baseType: !2886, size: 64, offset: 1280)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4326, file: !4123, line: 632, baseType: !2894, size: 64, offset: 1344)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4326, file: !4123, line: 633, baseType: !2890, size: 64, offset: 1408)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4326, file: !4123, line: 640, baseType: !4352, size: 64, offset: 1472)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!33, !4159, !4325, !393}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4326, file: !4123, line: 645, baseType: !4356, size: 64, offset: 1536)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!33, !4159, !4325, !404}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4326, file: !4123, line: 654, baseType: !2925, size: 64, offset: 1600)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4326, file: !4123, line: 657, baseType: !2932, size: 64, offset: 1664)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4237, file: !4123, line: 745, baseType: !4325, size: 64, offset: 1856)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4237, file: !4123, line: 754, baseType: !7, size: 32, offset: 1920)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4122, file: !4123, line: 160, baseType: !1660, size: 128, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4122, file: !4123, line: 163, baseType: !108, size: 128, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4122, file: !4123, line: 164, baseType: !108, size: 128, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4122, file: !4123, line: 167, baseType: !108, size: 128, offset: 512)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4122, file: !4123, line: 173, baseType: !33, size: 32, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4122, file: !4123, line: 175, baseType: !7, size: 32, offset: 672)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4122, file: !4123, line: 183, baseType: !393, size: 64, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4122, file: !4123, line: 189, baseType: !60, size: 32, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4122, file: !4123, line: 192, baseType: !982, size: 256, offset: 832)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4122, file: !4123, line: 193, baseType: !4373, size: 448, offset: 1088)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !983, line: 120, size: 448, elements: !4374)
!4374 = !{!4375, !4376, !4377}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4373, file: !983, line: 121, baseType: !982, size: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4373, file: !983, line: 122, baseType: !678, size: 128, align: 64, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4373, file: !983, line: 125, baseType: !3267, size: 64, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4122, file: !4123, line: 199, baseType: !4159, size: 64, offset: 1536)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4119, file: !269, line: 1048, baseType: !4380, size: 64, offset: 1600)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !269, line: 1039, size: 256, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4381, file: !269, line: 1040, baseType: !393, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4381, file: !269, line: 1041, baseType: !393, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4381, file: !269, line: 1042, baseType: !393, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4381, file: !269, line: 1043, baseType: !33, size: 32, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3491, file: !269, line: 832, baseType: !31, size: 64, offset: 8256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3491, file: !269, line: 834, baseType: !108, size: 128, offset: 8320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3491, file: !269, line: 842, baseType: !336, size: 32, offset: 8448)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1460, file: !127, line: 524, baseType: !7, size: 32, offset: 8320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1460, file: !127, line: 525, baseType: !4392, size: 64, offset: 8384)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4395, line: 28, size: 192, elements: !4396)
!4395 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4396 = !{!4397, !4398, !4399}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4394, file: !4395, line: 29, baseType: !27, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4394, file: !4395, line: 30, baseType: !27, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4394, file: !4395, line: 31, baseType: !50, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1460, file: !127, line: 526, baseType: !7, size: 32, offset: 8448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1460, file: !127, line: 533, baseType: !31, size: 64, offset: 8512)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1460, file: !127, line: 534, baseType: !7, size: 32, offset: 8576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1460, file: !127, line: 535, baseType: !4404, size: 64, offset: 8640)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1460, file: !127, line: 536, baseType: !7, size: 32, offset: 8704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1460, file: !127, line: 539, baseType: !33, size: 32, offset: 8736)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1460, file: !127, line: 540, baseType: !3367, size: 64, offset: 8768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1460, file: !127, line: 563, baseType: !108, size: 128, offset: 8832)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1460, file: !127, line: 565, baseType: !108, size: 128, offset: 8960)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1460, file: !127, line: 568, baseType: !3378, size: 64, offset: 9088)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1460, file: !127, line: 570, baseType: !60, size: 32, offset: 9152)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1436, file: !278, line: 2382, baseType: !1435, size: 64, offset: 448)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1436, file: !278, line: 2383, baseType: !746, size: 64, offset: 512)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1436, file: !278, line: 2385, baseType: !4415, offset: 576)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3234, line: 206, elements: !663)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1436, file: !278, line: 2386, baseType: !4415, offset: 576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1436, file: !278, line: 2387, baseType: !4415, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1436, file: !278, line: 2388, baseType: !4419, offset: 576)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4415, elements: !734)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1436, file: !278, line: 2390, baseType: !4415, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1436, file: !278, line: 2391, baseType: !4415, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1436, file: !278, line: 2392, baseType: !4415, offset: 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1436, file: !278, line: 2393, baseType: !4415, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1427, file: !278, line: 1197, baseType: !4425, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !278, line: 2057, size: 1664, elements: !4428)
!4428 = !{!4429, !4433, !4437, !4438, !4442, !4446, !4450, !4451, !4452, !4456, !4460, !4464, !4465, !4466, !4472, !4476, !4477, !4481, !4482, !4483, !4484, !4488, !4492, !4539, !4554, !4555}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4427, file: !278, line: 2058, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!1225, !1426}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4427, file: !278, line: 2059, baseType: !4434, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !1225}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4427, file: !278, line: 2060, baseType: !4434, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4427, file: !278, line: 2062, baseType: !4439, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !1225, !33}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4427, file: !278, line: 2063, baseType: !4443, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!33, !1225, !1883}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4427, file: !278, line: 2064, baseType: !4447, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!33, !1225}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4427, file: !278, line: 2065, baseType: !4434, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4427, file: !278, line: 2066, baseType: !1455, size: 64, offset: 448)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4427, file: !278, line: 2067, baseType: !4453, size: 64, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!33, !1426, !33}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4427, file: !278, line: 2068, baseType: !4457, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!33, !1426, !277}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4427, file: !278, line: 2069, baseType: !4461, size: 64, offset: 640)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!33, !1426}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4427, file: !278, line: 2070, baseType: !4457, size: 64, offset: 704)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4427, file: !278, line: 2071, baseType: !4461, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4427, file: !278, line: 2072, baseType: !4467, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!33, !1190, !4470}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !278, line: 62, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4427, file: !278, line: 2073, baseType: !4473, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!33, !1426, !3115, !943}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4427, file: !278, line: 2074, baseType: !1455, size: 64, offset: 960)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4427, file: !278, line: 2076, baseType: !4478, size: 64, offset: 1024)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!33, !2868, !1190}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4427, file: !278, line: 2077, baseType: !4478, size: 64, offset: 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4427, file: !278, line: 2078, baseType: !4478, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4427, file: !278, line: 2079, baseType: !4478, size: 64, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4427, file: !278, line: 2081, baseType: !4485, size: 64, offset: 1280)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!1377, !1426, !33, !943, !46, !52}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4427, file: !278, line: 2082, baseType: !4489, size: 64, offset: 1344)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!1377, !1426, !33, !27, !46, !52}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4427, file: !278, line: 2083, baseType: !4493, size: 64, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4496, !1225}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !283, line: 296, size: 1664, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4524, !4525, !4526}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4498, file: !283, line: 297, baseType: !750, size: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4498, file: !283, line: 298, baseType: !108, size: 128, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4498, file: !283, line: 299, baseType: !108, size: 128, offset: 256)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4498, file: !283, line: 300, baseType: !108, size: 128, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4498, file: !283, line: 301, baseType: !698, size: 256, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4498, file: !283, line: 302, baseType: !70, size: 32, offset: 768)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4498, file: !283, line: 303, baseType: !60, size: 32, offset: 800)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4498, file: !283, line: 304, baseType: !1426, size: 64, offset: 832)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4498, file: !283, line: 305, baseType: !4509, size: 64, offset: 896)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !283, line: 68, size: 64, elements: !4510)
!4510 = !{!4511, !4523}
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4509, file: !283, line: 69, baseType: !4512, size: 32)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4509, file: !283, line: 69, size: 32, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4512, file: !283, line: 70, baseType: !828, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4512, file: !283, line: 71, baseType: !836, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4512, file: !283, line: 72, baseType: !4517, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4518, line: 24, baseType: !4519)
!4518 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4518, line: 22, size: 32, elements: !4520)
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4519, file: !4518, line: 23, baseType: !4522, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4518, line: 20, baseType: !834)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4509, file: !283, line: 74, baseType: !282, size: 32, offset: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4498, file: !283, line: 306, baseType: !52, size: 64, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4498, file: !283, line: 307, baseType: !50, size: 64, offset: 1024)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4498, file: !283, line: 308, baseType: !4527, size: 576, offset: 1088)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !283, line: 205, size: 576, elements: !4528)
!4528 = !{!4529, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4527, file: !283, line: 206, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !283, line: 66, baseType: !54)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4527, file: !283, line: 207, baseType: !4530, size: 64, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4527, file: !283, line: 208, baseType: !4530, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4527, file: !283, line: 209, baseType: !4530, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4527, file: !283, line: 210, baseType: !4530, size: 64, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4527, file: !283, line: 211, baseType: !4530, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4527, file: !283, line: 212, baseType: !4530, size: 64, offset: 384)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4527, file: !283, line: 213, baseType: !891, size: 64, offset: 448)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4527, file: !283, line: 214, baseType: !891, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4427, file: !278, line: 2085, baseType: !4540, size: 64, offset: 1472)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!1080, !1426, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4545, line: 15, size: 256, elements: !4546)
!4545 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4546 = !{!4547, !4548, !4549, !4550, !4551}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4544, file: !4545, line: 16, baseType: !780, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4544, file: !4545, line: 19, baseType: !33, size: 32, offset: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4544, file: !4545, line: 26, baseType: !50, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4544, file: !4545, line: 33, baseType: !50, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4544, file: !4545, line: 36, baseType: !4552, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !142, line: 33, flags: DIFlagFwdDecl)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4427, file: !278, line: 2087, baseType: !4540, size: 64, offset: 1536)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4427, file: !278, line: 2089, baseType: !1455, size: 64, offset: 1600)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1427, file: !278, line: 1198, baseType: !4557, size: 64, offset: 448)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !283, line: 324, size: 704, elements: !4560)
!4560 = !{!4561, !4565, !4569, !4573, !4574, !4575, !4576, !4577, !4582, !4587, !4591}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4559, file: !283, line: 325, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!33, !4497}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4559, file: !283, line: 326, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!4497, !1426, !33}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4559, file: !283, line: 327, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4497}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4559, file: !283, line: 328, baseType: !4562, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4559, file: !283, line: 329, baseType: !4562, size: 64, offset: 256)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4559, file: !283, line: 330, baseType: !4562, size: 64, offset: 320)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4559, file: !283, line: 331, baseType: !4453, size: 64, offset: 384)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4559, file: !283, line: 334, baseType: !4578, size: 64, offset: 448)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!4581, !1225}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4559, file: !283, line: 335, baseType: !4583, size: 64, offset: 512)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!33, !1225, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4559, file: !283, line: 337, baseType: !4588, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!33, !1225, !4581}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4559, file: !283, line: 339, baseType: !4592, size: 64, offset: 640)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!33, !1426, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1427, file: !278, line: 1199, baseType: !4597, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4599)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !283, line: 430, size: 704, elements: !4600)
!4600 = !{!4601, !4605, !4606, !4610, !4611, !4612, !4627, !4650, !4654, !4655, !4678}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4599, file: !283, line: 431, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!33, !1426, !33, !33, !1346}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4599, file: !283, line: 432, baseType: !4453, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4599, file: !283, line: 433, baseType: !4607, size: 64, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!33, !1426, !7}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4599, file: !283, line: 434, baseType: !4607, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4599, file: !283, line: 435, baseType: !4453, size: 64, offset: 256)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4599, file: !283, line: 436, baseType: !4613, size: 64, offset: 320)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!33, !1426, !33, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !283, line: 417, size: 256, elements: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4617, file: !283, line: 418, baseType: !33, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4617, file: !283, line: 419, baseType: !7, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4617, file: !283, line: 420, baseType: !7, size: 32, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4617, file: !283, line: 422, baseType: !7, size: 32, offset: 96)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4617, file: !283, line: 423, baseType: !7, size: 32, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4617, file: !283, line: 424, baseType: !7, size: 32, offset: 160)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4617, file: !283, line: 425, baseType: !7, size: 32, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4617, file: !283, line: 426, baseType: !7, size: 32, offset: 224)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4599, file: !283, line: 437, baseType: !4628, size: 64, offset: 384)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!33, !1426, !4509, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !283, line: 345, size: 960, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4632, file: !283, line: 346, baseType: !33, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4632, file: !283, line: 347, baseType: !393, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4632, file: !283, line: 348, baseType: !393, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4632, file: !283, line: 349, baseType: !393, size: 64, offset: 192)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4632, file: !283, line: 350, baseType: !393, size: 64, offset: 256)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4632, file: !283, line: 351, baseType: !393, size: 64, offset: 320)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4632, file: !283, line: 352, baseType: !393, size: 64, offset: 384)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4632, file: !283, line: 353, baseType: !404, size: 64, offset: 448)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4632, file: !283, line: 355, baseType: !404, size: 64, offset: 512)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4632, file: !283, line: 356, baseType: !33, size: 32, offset: 576)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4632, file: !283, line: 357, baseType: !33, size: 32, offset: 608)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4632, file: !283, line: 358, baseType: !393, size: 64, offset: 640)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4632, file: !283, line: 359, baseType: !393, size: 64, offset: 704)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4632, file: !283, line: 360, baseType: !393, size: 64, offset: 768)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4632, file: !283, line: 361, baseType: !404, size: 64, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4632, file: !283, line: 362, baseType: !33, size: 32, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4599, file: !283, line: 438, baseType: !4651, size: 64, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!33, !1426, !4595, !4631}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4599, file: !283, line: 440, baseType: !4628, size: 64, offset: 512)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4599, file: !283, line: 441, baseType: !4656, size: 64, offset: 576)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!33, !1426, !4659}
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !283, line: 411, size: 1408, elements: !4661)
!4661 = !{!4662, !4663}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4660, file: !283, line: 412, baseType: !7, size: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4660, file: !283, line: 413, baseType: !4664, size: 1344, offset: 64)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4665, size: 1344, elements: !734)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !283, line: 397, size: 448, elements: !4666)
!4666 = !{!4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4677}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4665, file: !283, line: 398, baseType: !7, size: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4665, file: !283, line: 399, baseType: !7, size: 32, offset: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4665, file: !283, line: 401, baseType: !7, size: 32, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4665, file: !283, line: 402, baseType: !7, size: 32, offset: 96)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4665, file: !283, line: 403, baseType: !7, size: 32, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4665, file: !283, line: 404, baseType: !7, size: 32, offset: 160)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4665, file: !283, line: 405, baseType: !7, size: 32, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4665, file: !283, line: 406, baseType: !395, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4665, file: !283, line: 407, baseType: !4676, size: 64, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !36, line: 132, baseType: !393)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4665, file: !283, line: 408, baseType: !4676, size: 64, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4599, file: !283, line: 442, baseType: !4607, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1427, file: !278, line: 1200, baseType: !4680, size: 64, offset: 576)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !278, line: 54, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1427, file: !278, line: 1201, baseType: !50, size: 64, offset: 640)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1427, file: !278, line: 1202, baseType: !50, size: 64, offset: 704)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1427, file: !278, line: 1203, baseType: !50, size: 64, offset: 768)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1427, file: !278, line: 1204, baseType: !1190, size: 64, offset: 832)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1427, file: !278, line: 1205, baseType: !875, size: 320, offset: 896)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1427, file: !278, line: 1206, baseType: !33, size: 32, offset: 1216)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1427, file: !278, line: 1207, baseType: !60, size: 32, offset: 1248)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1427, file: !278, line: 1209, baseType: !31, size: 64, offset: 1280)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1427, file: !278, line: 1211, baseType: !4692, size: 64, offset: 1344)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4695)
!4695 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !278, line: 1211, flags: DIFlagFwdDecl)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1427, file: !278, line: 1223, baseType: !4697, size: 64, offset: 1408)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1202, line: 34, size: 64, elements: !4698)
!4698 = !{!4699}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4697, file: !1202, line: 35, baseType: !1205, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1427, file: !278, line: 1224, baseType: !108, size: 128, offset: 1472)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1427, file: !278, line: 1225, baseType: !2135, size: 64, offset: 1600)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1427, file: !278, line: 1226, baseType: !4703, size: 64, offset: 1664)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !278, line: 1226, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1427, file: !278, line: 1227, baseType: !4706, size: 64, offset: 1728)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !289, line: 163, size: 6848, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4756, !4757, !4758, !4759, !4760, !4761, !4762}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4707, file: !289, line: 164, baseType: !393, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4707, file: !289, line: 165, baseType: !385, size: 192, align: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4707, file: !289, line: 166, baseType: !108, size: 128, offset: 256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4707, file: !289, line: 167, baseType: !50, size: 64, offset: 384)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4707, file: !289, line: 168, baseType: !50, size: 64, offset: 448)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4707, file: !289, line: 170, baseType: !2966, size: 32, offset: 512)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4707, file: !289, line: 171, baseType: !7, size: 32, offset: 544)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4707, file: !289, line: 172, baseType: !7, size: 32, offset: 576)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4707, file: !289, line: 173, baseType: !7, size: 32, offset: 608)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4707, file: !289, line: 173, baseType: !7, size: 32, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4707, file: !289, line: 179, baseType: !691, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4707, file: !289, line: 184, baseType: !50, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4707, file: !289, line: 186, baseType: !4722, size: 4672, offset: 832)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !289, line: 105, size: 4672, elements: !4723)
!4723 = !{!4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4749, !4750, !4751, !4752, !4753, !4754, !4755}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4722, file: !289, line: 106, baseType: !4706, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4722, file: !289, line: 108, baseType: !50, size: 64, offset: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4722, file: !289, line: 109, baseType: !50, size: 64, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4722, file: !289, line: 111, baseType: !108, size: 128, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4722, file: !289, line: 112, baseType: !108, size: 128, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4722, file: !289, line: 113, baseType: !108, size: 128, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4722, file: !289, line: 114, baseType: !108, size: 128, offset: 576)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4722, file: !289, line: 115, baseType: !70, size: 32, offset: 704)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4722, file: !289, line: 117, baseType: !60, size: 32, offset: 736)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4722, file: !289, line: 118, baseType: !4734, size: 1280, offset: 768)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 1280, elements: !755)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4722, file: !289, line: 120, baseType: !50, size: 64, offset: 2048)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4722, file: !289, line: 121, baseType: !50, size: 64, offset: 2112)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4722, file: !289, line: 122, baseType: !50, size: 64, offset: 2176)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4722, file: !289, line: 123, baseType: !50, size: 64, offset: 2240)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4722, file: !289, line: 124, baseType: !50, size: 64, offset: 2304)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4722, file: !289, line: 132, baseType: !50, size: 64, offset: 2368)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4722, file: !289, line: 133, baseType: !50, size: 64, offset: 2432)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4722, file: !289, line: 135, baseType: !4743, size: 384, offset: 2496)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4744, line: 76, size: 384, elements: !4745)
!4744 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4745 = !{!4746, !4747, !4748}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4743, file: !4744, line: 78, baseType: !1132, size: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4743, file: !4744, line: 80, baseType: !7, size: 32, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4743, file: !4744, line: 81, baseType: !485, size: 32, offset: 352)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4722, file: !289, line: 136, baseType: !33, size: 32, offset: 2880)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4722, file: !289, line: 137, baseType: !288, size: 32, offset: 2912)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4722, file: !289, line: 139, baseType: !70, size: 32, offset: 2944)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4722, file: !289, line: 140, baseType: !108, size: 128, offset: 3008)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4722, file: !289, line: 141, baseType: !3262, size: 704, offset: 3136)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4722, file: !289, line: 142, baseType: !3262, size: 704, offset: 3840)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4722, file: !289, line: 144, baseType: !108, size: 128, offset: 4544)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4707, file: !289, line: 187, baseType: !108, size: 128, offset: 5504)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4707, file: !289, line: 193, baseType: !65, size: 192, offset: 5632)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4707, file: !289, line: 195, baseType: !2181, size: 64, offset: 5824)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4707, file: !289, line: 196, baseType: !4177, size: 512, offset: 5888)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4707, file: !289, line: 197, baseType: !2181, size: 64, offset: 6400)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4707, file: !289, line: 199, baseType: !2374, size: 320, offset: 6464)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4707, file: !289, line: 202, baseType: !1190, size: 64, offset: 6784)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1427, file: !278, line: 1228, baseType: !4764, size: 64, offset: 1792)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !278, line: 1228, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1427, file: !278, line: 1229, baseType: !750, size: 128, offset: 1856)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1427, file: !278, line: 1230, baseType: !7, size: 32, offset: 1984)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1427, file: !278, line: 1231, baseType: !4769, size: 2496, offset: 2048)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !283, line: 521, size: 2496, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4775, !4807}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4769, file: !283, line: 522, baseType: !7, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4769, file: !283, line: 523, baseType: !875, size: 320, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4769, file: !283, line: 524, baseType: !4774, size: 192, offset: 384)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 192, elements: !734)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4769, file: !283, line: 525, baseType: !4776, size: 1728, offset: 576)
!4776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4777, size: 1728, elements: !734)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !283, line: 222, size: 576, elements: !4778)
!4778 = !{!4779, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4777, file: !283, line: 223, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !283, line: 445, size: 256, elements: !4782)
!4782 = !{!4783, !4784, !4797, !4798}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4781, file: !283, line: 446, baseType: !33, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4781, file: !283, line: 447, baseType: !4785, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4787)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !283, line: 312, size: 512, elements: !4788)
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4787, file: !283, line: 313, baseType: !4453, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4787, file: !283, line: 314, baseType: !4453, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4787, file: !283, line: 315, baseType: !4453, size: 64, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4787, file: !283, line: 316, baseType: !4453, size: 64, offset: 192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4787, file: !283, line: 317, baseType: !4562, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4787, file: !283, line: 318, baseType: !4562, size: 64, offset: 320)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4787, file: !283, line: 319, baseType: !4562, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4787, file: !283, line: 320, baseType: !4592, size: 64, offset: 448)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4781, file: !283, line: 448, baseType: !1459, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4781, file: !283, line: 449, baseType: !4780, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4777, file: !283, line: 224, baseType: !33, size: 32, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4777, file: !283, line: 226, baseType: !108, size: 128, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4777, file: !283, line: 227, baseType: !50, size: 64, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4777, file: !283, line: 228, baseType: !7, size: 32, offset: 320)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4777, file: !283, line: 229, baseType: !7, size: 32, offset: 352)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4777, file: !283, line: 230, baseType: !4530, size: 64, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4777, file: !283, line: 231, baseType: !4530, size: 64, offset: 448)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4777, file: !283, line: 232, baseType: !31, size: 64, offset: 512)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4769, file: !283, line: 526, baseType: !4808, size: 192, offset: 2304)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4785, size: 192, elements: !734)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1427, file: !278, line: 1233, baseType: !4810, size: 2368, offset: 4544)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !278, line: 1184, size: 2368, elements: !4811)
!4811 = !{!4812, !4813, !4814}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4810, file: !278, line: 1185, baseType: !37, size: 16)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4810, file: !278, line: 1186, baseType: !37, size: 16, offset: 16)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4810, file: !278, line: 1187, baseType: !4815, size: 2304, offset: 64)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4816, size: 2304, elements: !734)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4817, line: 12, size: 768, elements: !4818)
!4817 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4818 = !{!4819, !4827, !4828, !4829, !4830}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4816, file: !4817, line: 13, baseType: !4820, size: 384)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4821, line: 17, size: 384, elements: !4822)
!4821 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4822 = !{!4823, !4824, !4825, !4826}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4820, file: !4821, line: 18, baseType: !33, size: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4820, file: !4821, line: 19, baseType: !33, size: 32, offset: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4820, file: !4821, line: 20, baseType: !65, size: 192, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4820, file: !4821, line: 22, baseType: !678, size: 128, align: 64, offset: 256)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4816, file: !4817, line: 14, baseType: !2126, size: 64, offset: 384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4816, file: !4817, line: 15, baseType: !3912, size: 64, offset: 448)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4816, file: !4817, line: 16, baseType: !65, size: 192, offset: 512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4816, file: !4817, line: 17, baseType: !60, size: 32, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1427, file: !278, line: 1240, baseType: !31, size: 64, offset: 6912)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1427, file: !278, line: 1243, baseType: !335, size: 32, offset: 6976)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1427, file: !278, line: 1245, baseType: !891, size: 64, offset: 7040)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1427, file: !278, line: 1246, baseType: !891, size: 64, offset: 7104)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1427, file: !278, line: 1248, baseType: !336, size: 32, offset: 7168)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1427, file: !278, line: 1249, baseType: !4837, size: 64, offset: 7232)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !278, line: 634, flags: DIFlagFwdDecl)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1427, file: !278, line: 1252, baseType: !2270, size: 256, offset: 7296)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1427, file: !278, line: 1253, baseType: !4841, size: 128, offset: 7552)
!4841 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4842, line: 21, baseType: !4843)
!4842 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4842, line: 19, size: 128, elements: !4844)
!4844 = !{!4845}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4843, file: !4842, line: 20, baseType: !2287, size: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1427, file: !278, line: 1255, baseType: !7, size: 32, offset: 7680)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1427, file: !278, line: 1261, baseType: !698, size: 256, offset: 7744)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1427, file: !278, line: 1267, baseType: !27, size: 64, offset: 8000)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1427, file: !278, line: 1269, baseType: !4850, size: 64, offset: 8064)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1192, line: 128, size: 1024, align: 512, elements: !4853)
!4853 = !{!4854, !4858, !4859, !4866, !4872, !4876, !4880, !4884, !4885, !4889, !4893, !4898, !4902}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4852, file: !1192, line: 129, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!33, !1190, !7}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4852, file: !1192, line: 130, baseType: !4855, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4852, file: !1192, line: 131, baseType: !4860, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!33, !4863, !4865}
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4852, file: !1192, line: 132, baseType: !4867, size: 64, offset: 192)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!33, !4863, !7, !27, !4870}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4852, file: !1192, line: 134, baseType: !4873, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!33, !4863}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4852, file: !1192, line: 135, baseType: !4877, size: 64, offset: 320)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!33, !1190}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4852, file: !1192, line: 136, baseType: !4881, size: 64, offset: 384)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !1190}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4852, file: !1192, line: 137, baseType: !4881, size: 64, offset: 448)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4852, file: !1192, line: 138, baseType: !4886, size: 64, offset: 512)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{null, !1190, !1225}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4852, file: !1192, line: 139, baseType: !4890, size: 64, offset: 576)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!943, !1190, !943, !33}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4852, file: !1192, line: 140, baseType: !4894, size: 64, offset: 640)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!1185, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4852, file: !1192, line: 141, baseType: !4899, size: 64, offset: 704)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!33, !1346, !855}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4852, file: !1192, line: 142, baseType: !4903, size: 64, offset: 768)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!1190, !1190, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1427, file: !278, line: 1271, baseType: !4909, size: 448, offset: 8128)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4545, line: 63, size: 448, elements: !4910)
!4910 = !{!4911, !4916, !4917, !4918, !4919, !4920, !4921}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4909, file: !4545, line: 64, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!50, !4915, !4543}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4909, file: !4545, line: 66, baseType: !4912, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4909, file: !4545, line: 69, baseType: !1080, size: 64, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4909, file: !4545, line: 70, baseType: !33, size: 32, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4909, file: !4545, line: 71, baseType: !7, size: 32, offset: 224)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4909, file: !4545, line: 74, baseType: !108, size: 128, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4909, file: !4545, line: 85, baseType: !4922, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1427, file: !278, line: 1274, baseType: !691, size: 64, offset: 8576)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1427, file: !278, line: 1280, baseType: !691, size: 64, offset: 8640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1427, file: !278, line: 1283, baseType: !33, size: 32, offset: 8704)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1427, file: !278, line: 1286, baseType: !2792, size: 32, offset: 8736)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1427, file: !278, line: 1289, baseType: !3267, size: 64, offset: 8768)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1427, file: !278, line: 1290, baseType: !746, size: 64, offset: 8832)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1427, file: !278, line: 1297, baseType: !797, size: 64, offset: 8896)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1427, file: !278, line: 1304, baseType: !4931, size: 64, offset: 8960)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4932, line: 49, size: 64, elements: !4933)
!4932 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4933 = !{!4934}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4931, file: !4932, line: 50, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4932, line: 41, size: 512, align: 512, elements: !4937)
!4937 = !{!4938, !4939, !4944}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4936, file: !4932, line: 43, baseType: !70, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4936, file: !4932, line: 45, baseType: !4940, size: 192, offset: 64)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4932, line: 29, size: 192, elements: !4941)
!4941 = !{!4942, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4940, file: !4932, line: 30, baseType: !108, size: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4940, file: !4932, line: 32, baseType: !1080, size: 64, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4936, file: !4932, line: 46, baseType: !1080, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1427, file: !278, line: 1305, baseType: !4931, size: 64, offset: 9024)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1427, file: !278, line: 1306, baseType: !678, size: 128, align: 64, offset: 9088)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1427, file: !278, line: 1307, baseType: !982, size: 256, offset: 9216)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1427, file: !278, line: 1309, baseType: !698, size: 256, offset: 9472)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1427, file: !278, line: 1314, baseType: !33, size: 32, offset: 9728)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1427, file: !278, line: 1317, baseType: !70, size: 32, align: 512, offset: 10240)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1427, file: !278, line: 1318, baseType: !108, size: 128, offset: 10304)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1427, file: !278, line: 1320, baseType: !70, size: 32, offset: 10432)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1427, file: !278, line: 1321, baseType: !108, size: 128, offset: 10496)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1226, file: !278, line: 656, baseType: !1576, size: 64, offset: 512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1226, file: !278, line: 659, baseType: !31, size: 64, offset: 576)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1226, file: !278, line: 663, baseType: !50, size: 64, offset: 640)
!4957 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !278, line: 671, baseType: !4958, size: 32, offset: 704)
!4958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !278, line: 671, size: 32, elements: !4959)
!4959 = !{!4960, !4961}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4958, file: !278, line: 672, baseType: !3314, size: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4958, file: !278, line: 673, baseType: !7, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1226, file: !278, line: 675, baseType: !1299, size: 32, offset: 736)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1226, file: !278, line: 676, baseType: !52, size: 64, offset: 768)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1226, file: !278, line: 677, baseType: !1335, size: 128, offset: 832)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1226, file: !278, line: 678, baseType: !1335, size: 128, offset: 960)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1226, file: !278, line: 679, baseType: !1335, size: 128, offset: 1088)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1226, file: !278, line: 680, baseType: !70, size: 32, offset: 1216)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1226, file: !278, line: 681, baseType: !37, size: 16, offset: 1248)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1226, file: !278, line: 682, baseType: !94, size: 8, offset: 1264)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1226, file: !278, line: 683, baseType: !94, size: 8, offset: 1272)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1226, file: !278, line: 684, baseType: !4676, size: 64, offset: 1280)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1226, file: !278, line: 691, baseType: !50, size: 64, offset: 1344)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1226, file: !278, line: 692, baseType: !875, size: 320, offset: 1408)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1226, file: !278, line: 694, baseType: !50, size: 64, offset: 1728)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1226, file: !278, line: 695, baseType: !50, size: 64, offset: 1792)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1226, file: !278, line: 697, baseType: !750, size: 128, offset: 1856)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1226, file: !278, line: 698, baseType: !108, size: 128, offset: 1984)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1226, file: !278, line: 707, baseType: !108, size: 128, offset: 2112)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1226, file: !278, line: 708, baseType: !108, size: 128, offset: 2240)
!4980 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !278, line: 709, baseType: !4981, size: 128, offset: 2368)
!4981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !278, line: 709, size: 128, elements: !4982)
!4982 = !{!4983, !4984}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4981, file: !278, line: 710, baseType: !746, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4981, file: !278, line: 711, baseType: !678, size: 128, align: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1226, file: !278, line: 713, baseType: !693, size: 64, offset: 2496)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1226, file: !278, line: 714, baseType: !693, size: 64, offset: 2560)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1226, file: !278, line: 715, baseType: !60, size: 32, offset: 2624)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1226, file: !278, line: 716, baseType: !60, size: 32, offset: 2656)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1226, file: !278, line: 717, baseType: !60, size: 32, offset: 2688)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1226, file: !278, line: 719, baseType: !60, size: 32, offset: 2720)
!4991 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !278, line: 721, baseType: !4992, size: 64, offset: 2752)
!4992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !278, line: 721, size: 64, elements: !4993)
!4993 = !{!4994, !5120}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4992, file: !278, line: 722, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !278, line: 1914, size: 2112, elements: !4998)
!4998 = !{!4999, !5000, !5004, !5008, !5012, !5013, !5014, !5020, !5033, !5037, !5041, !5042, !5046, !5047, !5051, !5056, !5057, !5061, !5065, !5071, !5072, !5076, !5077, !5083, !5087, !5088, !5093, !5097, !5101, !5105, !5109, !5110, !5116}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4997, file: !278, line: 1915, baseType: !1459, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4997, file: !278, line: 1916, baseType: !5001, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!52, !670, !52, !33}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4997, file: !278, line: 1917, baseType: !5005, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!1377, !670, !943, !46, !51}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4997, file: !278, line: 1918, baseType: !5009, size: 64, offset: 192)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!1377, !670, !27, !46, !51}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4997, file: !278, line: 1919, baseType: !2026, size: 64, offset: 256)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4997, file: !278, line: 1920, baseType: !2026, size: 64, offset: 320)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4997, file: !278, line: 1921, baseType: !5015, size: 64, offset: 384)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!33, !2029, !5018, !7}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !278, line: 53, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4997, file: !278, line: 1923, baseType: !5021, size: 64, offset: 448)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!33, !670, !5024}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !278, line: 1858, size: 128, elements: !5026)
!5026 = !{!5027, !5032}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5025, file: !278, line: 1859, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !278, line: 1855, baseType: !5029)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!855, !5024, !27, !33, !52, !393, !7}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5025, file: !278, line: 1860, baseType: !52, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4997, file: !278, line: 1924, baseType: !5034, size: 64, offset: 512)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!2935, !670, !2937}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4997, file: !278, line: 1925, baseType: !5038, size: 64, offset: 576)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!1080, !670, !7, !50}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4997, file: !278, line: 1926, baseType: !5038, size: 64, offset: 640)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4997, file: !278, line: 1927, baseType: !5043, size: 64, offset: 704)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!33, !670, !1706}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4997, file: !278, line: 1928, baseType: !50, size: 64, offset: 768)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4997, file: !278, line: 1929, baseType: !5048, size: 64, offset: 832)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!33, !1225, !670}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4997, file: !278, line: 1930, baseType: !5052, size: 64, offset: 896)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!33, !670, !5055}
!5055 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !278, line: 1061, baseType: !31)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4997, file: !278, line: 1931, baseType: !5048, size: 64, offset: 960)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4997, file: !278, line: 1932, baseType: !5058, size: 64, offset: 1024)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!33, !670, !52, !52, !33}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4997, file: !278, line: 1933, baseType: !5062, size: 64, offset: 1088)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!33, !33, !670, !33}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4997, file: !278, line: 1934, baseType: !5066, size: 64, offset: 1152)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!33, !670, !33, !5069}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !278, line: 1063, flags: DIFlagFwdDecl)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4997, file: !278, line: 1935, baseType: !667, size: 64, offset: 1216)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4997, file: !278, line: 1936, baseType: !5073, size: 64, offset: 1280)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!33, !33}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4997, file: !278, line: 1937, baseType: !5066, size: 64, offset: 1344)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4997, file: !278, line: 1938, baseType: !5078, size: 64, offset: 1408)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!1377, !5081, !670, !51, !46, !7}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !326, line: 59, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4997, file: !278, line: 1939, baseType: !5084, size: 64, offset: 1472)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!1377, !670, !51, !5081, !46, !7}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4997, file: !278, line: 1940, baseType: !2782, size: 64, offset: 1536)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4997, file: !278, line: 1941, baseType: !5089, size: 64, offset: 1600)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!33, !670, !33, !5092, !2003}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4997, file: !278, line: 1942, baseType: !5094, size: 64, offset: 1664)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!1080, !670, !33, !52, !52}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4997, file: !278, line: 1944, baseType: !5098, size: 64, offset: 1728)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !2868, !670}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4997, file: !278, line: 1948, baseType: !5102, size: 64, offset: 1792)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!1377, !670, !52, !670, !52, !46, !7}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4997, file: !278, line: 1950, baseType: !5106, size: 64, offset: 1856)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!52, !670, !52, !670, !52, !52, !7}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4997, file: !278, line: 1953, baseType: !5058, size: 64, offset: 1920)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4997, file: !278, line: 1954, baseType: !5111, size: 64, offset: 1984)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!33, !5114, !7}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !278, line: 1911, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4997, file: !278, line: 1955, baseType: !5117, size: 64, offset: 2048)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!33, !5114, !5018, !7}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4992, file: !278, line: 723, baseType: !4434, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1226, file: !278, line: 725, baseType: !5122, size: 64, offset: 2816)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !278, line: 725, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1226, file: !278, line: 726, baseType: !1577, size: 1536, align: 64, offset: 2880)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1226, file: !278, line: 727, baseType: !108, size: 128, offset: 4416)
!5126 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !278, line: 728, baseType: !5127, size: 64, offset: 4544)
!5127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !278, line: 728, size: 64, elements: !5128)
!5128 = !{!5129, !5130, !5133, !5134}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5127, file: !278, line: 729, baseType: !5081, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5127, file: !278, line: 730, baseType: !5131, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !278, line: 730, flags: DIFlagFwdDecl)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5127, file: !278, line: 731, baseType: !943, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5127, file: !278, line: 732, baseType: !7, size: 32)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1226, file: !278, line: 735, baseType: !336, size: 32, offset: 4608)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1226, file: !278, line: 738, baseType: !336, size: 32, offset: 4640)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1226, file: !278, line: 739, baseType: !4837, size: 64, offset: 4672)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1226, file: !278, line: 750, baseType: !31, size: 64, offset: 4736)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1191, file: !1192, line: 91, baseType: !5140, size: 256, offset: 448)
!5140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !2271)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1191, file: !1192, line: 94, baseType: !5142, size: 64, offset: 704)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5143, line: 25, size: 64, elements: !5144)
!5143 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5144 = !{!5145}
!5145 = !DIDerivedType(tag: DW_TAG_member, scope: !5142, file: !5143, line: 26, baseType: !5146, size: 64)
!5146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5142, file: !5143, line: 26, size: 64, elements: !5147)
!5147 = !{!5148, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5146, file: !5143, line: 28, baseType: !394, size: 64, align: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, scope: !5146, file: !5143, line: 30, baseType: !5150, size: 64)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5146, file: !5143, line: 30, size: 64, elements: !5151)
!5151 = !{!5152, !5153}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5150, file: !5143, line: 31, baseType: !70, size: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5150, file: !5143, line: 32, baseType: !33, size: 32, offset: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1191, file: !1192, line: 95, baseType: !4850, size: 64, offset: 768)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1191, file: !1192, line: 96, baseType: !1426, size: 64, offset: 832)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1191, file: !1192, line: 97, baseType: !50, size: 64, offset: 896)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1191, file: !1192, line: 98, baseType: !31, size: 64, offset: 960)
!5158 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 100, baseType: !5159, size: 128, offset: 1024)
!5159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 100, size: 128, elements: !5160)
!5160 = !{!5161, !5162}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5159, file: !1192, line: 101, baseType: !108, size: 128)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5159, file: !1192, line: 102, baseType: !2946, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1191, file: !1192, line: 104, baseType: !108, size: 128, offset: 1152)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1191, file: !1192, line: 105, baseType: !108, size: 128, offset: 1280)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1191, file: !1192, line: 113, baseType: !5166, size: 128, offset: 1408)
!5166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 109, size: 128, elements: !5167)
!5167 = !{!5168, !5169, !5170}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5166, file: !1192, line: 110, baseType: !750, size: 128)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5166, file: !1192, line: 111, baseType: !1201, size: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5166, file: !1192, line: 112, baseType: !678, size: 128, align: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1186, file: !1187, line: 72, baseType: !1426, size: 64, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1186, file: !1187, line: 73, baseType: !33, size: 32, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1186, file: !1187, line: 74, baseType: !1264, size: 64, offset: 192)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1181, file: !1182, line: 10, baseType: !1190, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !671, file: !278, line: 1015, baseType: !1225, size: 64, offset: 1344)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !671, file: !278, line: 1016, baseType: !4995, size: 64, offset: 1408)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !671, file: !278, line: 1018, baseType: !393, size: 64, offset: 1472)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !671, file: !278, line: 1020, baseType: !31, size: 64, offset: 1536)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !671, file: !278, line: 1023, baseType: !31, size: 64, offset: 1600)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !671, file: !278, line: 1027, baseType: !3482, size: 64, offset: 1664)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !671, file: !278, line: 1029, baseType: !1576, size: 64, offset: 1728)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !671, file: !278, line: 1030, baseType: !2792, size: 32, offset: 1792)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !671, file: !278, line: 1031, baseType: !2792, size: 32, offset: 1824)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !646, file: !142, line: 756, baseType: !50, size: 64, offset: 704)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !646, file: !142, line: 757, baseType: !50, size: 64, offset: 768)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !646, file: !142, line: 760, baseType: !50, size: 64, offset: 832)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !646, file: !142, line: 761, baseType: !50, size: 64, offset: 896)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !646, file: !142, line: 763, baseType: !50, size: 64, offset: 960)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !646, file: !142, line: 764, baseType: !5190, size: 64, offset: 1024)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1721, line: 299, baseType: !5192)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1721, line: 299, size: 64, elements: !5193)
!5193 = !{!5194}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5192, file: !1721, line: 299, baseType: !5195, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1726, line: 18, baseType: !50)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !646, file: !142, line: 773, baseType: !60, size: 32, offset: 1088)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !646, file: !142, line: 785, baseType: !60, size: 32, offset: 1120)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !646, file: !142, line: 795, baseType: !5199, size: 64, offset: 1152)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !142, line: 726, size: 128, elements: !5201)
!5201 = !{!5202, !5203}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5200, file: !142, line: 727, baseType: !393, size: 64)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5200, file: !142, line: 728, baseType: !33, size: 32, offset: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !646, file: !142, line: 801, baseType: !50, size: 64, offset: 1216)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !646, file: !142, line: 804, baseType: !691, size: 64, offset: 1280)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !646, file: !142, line: 806, baseType: !33, size: 32, offset: 1344)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !646, file: !142, line: 808, baseType: !70, size: 32, offset: 1376)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !646, file: !142, line: 823, baseType: !875, size: 320, offset: 1408)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !646, file: !142, line: 825, baseType: !108, size: 128, offset: 1728)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !646, file: !142, line: 845, baseType: !33, size: 32, offset: 1856)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !646, file: !142, line: 849, baseType: !50, size: 64, offset: 1920)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !646, file: !142, line: 850, baseType: !50, size: 64, offset: 1984)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !646, file: !142, line: 852, baseType: !50, size: 64, offset: 2048)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !646, file: !142, line: 853, baseType: !50, size: 64, offset: 2112)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !646, file: !142, line: 854, baseType: !693, size: 64, offset: 2176)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !646, file: !142, line: 855, baseType: !50, size: 64, offset: 2240)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !646, file: !142, line: 856, baseType: !50, size: 64, offset: 2304)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !646, file: !142, line: 857, baseType: !50, size: 64, offset: 2368)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !646, file: !142, line: 858, baseType: !50, size: 64, offset: 2432)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !646, file: !142, line: 865, baseType: !516, size: 32, offset: 2496)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !646, file: !142, line: 867, baseType: !70, size: 32, offset: 2528)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !646, file: !142, line: 869, baseType: !50, size: 64, offset: 2560)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !646, file: !142, line: 869, baseType: !50, size: 64, offset: 2624)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !646, file: !142, line: 869, baseType: !50, size: 64, offset: 2688)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !646, file: !142, line: 869, baseType: !50, size: 64, offset: 2752)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !646, file: !142, line: 870, baseType: !50, size: 64, offset: 2816)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !646, file: !142, line: 870, baseType: !50, size: 64, offset: 2880)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !646, file: !142, line: 870, baseType: !50, size: 64, offset: 2944)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !646, file: !142, line: 871, baseType: !50, size: 64, offset: 3008)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !646, file: !142, line: 871, baseType: !50, size: 64, offset: 3072)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !646, file: !142, line: 871, baseType: !50, size: 64, offset: 3136)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !646, file: !142, line: 871, baseType: !50, size: 64, offset: 3200)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !646, file: !142, line: 873, baseType: !5234, size: 3328, offset: 3264)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 3328, elements: !5235)
!5235 = !{!5236}
!5236 = !DISubrange(count: 52)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !646, file: !142, line: 875, baseType: !4734, size: 1280, offset: 6592)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !646, file: !142, line: 877, baseType: !5239, size: 64, offset: 7872)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !142, line: 877, flags: DIFlagFwdDecl)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !646, file: !142, line: 880, baseType: !5242, size: 1088, offset: 7936)
!5242 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5243, line: 72, baseType: !5244)
!5243 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5243, line: 23, size: 1088, elements: !5245)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5275, !5276, !5277, !5278, !5303, !5304, !5305}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5244, file: !5243, line: 28, baseType: !393, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5244, file: !5243, line: 38, baseType: !693, size: 64, offset: 64)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5244, file: !5243, line: 40, baseType: !50, size: 64, offset: 128)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5244, file: !5243, line: 43, baseType: !875, size: 320, offset: 192)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5244, file: !5243, line: 44, baseType: !5251, size: 64, offset: 512)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5253, line: 30, size: 128, elements: !5254)
!5253 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!5254 = !{!5255, !5273, !5274}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5252, file: !5253, line: 37, baseType: !5256, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5258, line: 16, size: 64, elements: !5259)
!5258 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5257, file: !5258, line: 17, baseType: !104, size: 16)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5257, file: !5258, line: 18, baseType: !104, size: 16, offset: 16)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5257, file: !5258, line: 19, baseType: !104, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5257, file: !5258, line: 19, baseType: !104, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5257, file: !5258, line: 19, baseType: !104, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5257, file: !5258, line: 19, baseType: !104, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5257, file: !5258, line: 19, baseType: !104, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5257, file: !5258, line: 20, baseType: !104, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5257, file: !5258, line: 20, baseType: !104, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5257, file: !5258, line: 20, baseType: !104, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5257, file: !5258, line: 20, baseType: !104, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5257, file: !5258, line: 20, baseType: !104, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5257, file: !5258, line: 20, baseType: !104, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !5252, file: !5253, line: 38, baseType: !7, size: 32, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5252, file: !5253, line: 49, baseType: !33, size: 32, offset: 96)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5244, file: !5243, line: 48, baseType: !50, size: 64, offset: 576)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5244, file: !5243, line: 59, baseType: !698, size: 256, offset: 640)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5244, file: !5243, line: 60, baseType: !31, size: 64, offset: 896)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5244, file: !5243, line: 61, baseType: !5279, size: 64, offset: 960)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5281)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5282, line: 13, size: 1216, elements: !5283)
!5282 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5281, file: !5282, line: 14, baseType: !31, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5281, file: !5282, line: 15, baseType: !50, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5281, file: !5282, line: 17, baseType: !50, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5281, file: !5282, line: 17, baseType: !50, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5281, file: !5282, line: 18, baseType: !50, size: 64, offset: 256)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5281, file: !5282, line: 18, baseType: !50, size: 64, offset: 320)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5281, file: !5282, line: 19, baseType: !2279, size: 64, offset: 384)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5281, file: !5282, line: 21, baseType: !1080, size: 64, offset: 448)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5281, file: !5282, line: 23, baseType: !1080, size: 64, offset: 512)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5281, file: !5282, line: 24, baseType: !1080, size: 64, offset: 576)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5281, file: !5282, line: 25, baseType: !1080, size: 64, offset: 640)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5281, file: !5282, line: 26, baseType: !1080, size: 64, offset: 704)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5281, file: !5282, line: 27, baseType: !1080, size: 64, offset: 768)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5281, file: !5282, line: 28, baseType: !1080, size: 64, offset: 832)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5281, file: !5282, line: 29, baseType: !1080, size: 64, offset: 896)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5281, file: !5282, line: 30, baseType: !1080, size: 64, offset: 960)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5281, file: !5282, line: 31, baseType: !1080, size: 64, offset: 1024)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5281, file: !5282, line: 32, baseType: !1080, size: 64, offset: 1088)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5281, file: !5282, line: 33, baseType: !1080, size: 64, offset: 1152)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5244, file: !5243, line: 63, baseType: !60, size: 32, offset: 1024)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5244, file: !5243, line: 69, baseType: !104, size: 16, offset: 1056)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5244, file: !5243, line: 70, baseType: !3122, size: 16, offset: 1072)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !142, line: 882, baseType: !50, size: 64, offset: 9024)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !646, file: !142, line: 885, baseType: !70, size: 32, offset: 9088)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !646, file: !142, line: 886, baseType: !5309, size: 64, offset: 9152)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !142, line: 732, flags: DIFlagFwdDecl)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !646, file: !142, line: 901, baseType: !797, size: 64, offset: 9216)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !646, file: !142, line: 904, baseType: !670, size: 64, offset: 9280)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !646, file: !142, line: 906, baseType: !5314, size: 64, offset: 9344)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !142, line: 906, flags: DIFlagFwdDecl)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !646, file: !142, line: 930, baseType: !60, size: 32, offset: 9408)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !646, file: !142, line: 933, baseType: !60, size: 32, offset: 9440)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !646, file: !142, line: 935, baseType: !5319, size: 64, offset: 9472)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !307, line: 103, size: 64, elements: !5320)
!5320 = !{!5321}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5319, file: !307, line: 104, baseType: !5322, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !307, line: 101, flags: DIFlagFwdDecl)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !646, file: !142, line: 940, baseType: !691, size: 64, offset: 9536)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !646, file: !142, line: 942, baseType: !982, size: 256, offset: 9600)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !643, file: !142, line: 986, baseType: !5327, offset: 10240)
!5327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, elements: !1087)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !325, file: !326, line: 882, baseType: !642, size: 64, offset: 9792)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !325, file: !326, line: 884, baseType: !33, size: 32, offset: 9856)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !325, file: !326, line: 885, baseType: !33, size: 32, offset: 9888)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !325, file: !326, line: 886, baseType: !33, size: 32, offset: 9920)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !325, file: !326, line: 888, baseType: !33, size: 32, offset: 9952)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !325, file: !326, line: 890, baseType: !50, size: 64, offset: 9984)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !325, file: !326, line: 893, baseType: !7, size: 32, offset: 10048)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !325, file: !326, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !325, file: !326, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !325, file: !326, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !325, file: !326, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !325, file: !326, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !325, file: !326, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !325, file: !326, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !325, file: !326, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !325, file: !326, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !325, file: !326, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !325, file: !326, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !325, file: !326, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !325, file: !326, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !325, file: !326, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !325, file: !326, line: 969, baseType: !50, size: 64, offset: 10176)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !325, file: !326, line: 971, baseType: !5351, size: 448, offset: 10240)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !301, line: 25, size: 448, elements: !5352)
!5352 = !{!5353, !5354, !5359}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5351, file: !301, line: 26, baseType: !50, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5351, file: !301, line: 27, baseType: !5355, size: 64, offset: 64)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!1080, !5358}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, scope: !5351, file: !301, line: 28, baseType: !5360, size: 320, offset: 128)
!5360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5351, file: !301, line: 28, size: 320, elements: !5361)
!5361 = !{!5362, !5372, !5397}
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5360, file: !301, line: 37, baseType: !5363, size: 320)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !301, line: 30, size: 320, elements: !5364)
!5364 = !{!5365, !5367, !5368, !5369, !5370, !5371}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5363, file: !301, line: 31, baseType: !5366, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5363, file: !301, line: 32, baseType: !335, size: 32, offset: 64)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5363, file: !301, line: 33, baseType: !335, size: 32, offset: 96)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5363, file: !301, line: 34, baseType: !335, size: 32, offset: 128)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5363, file: !301, line: 35, baseType: !393, size: 64, offset: 192)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5363, file: !301, line: 36, baseType: !5366, size: 64, offset: 256)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5360, file: !301, line: 47, baseType: !5373, size: 192)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !301, line: 39, size: 192, elements: !5374)
!5374 = !{!5375, !5376, !5377, !5396}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5373, file: !301, line: 40, baseType: !508, size: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5373, file: !301, line: 41, baseType: !300, size: 32, offset: 32)
!5377 = !DIDerivedType(tag: DW_TAG_member, scope: !5373, file: !301, line: 42, baseType: !5378, size: 64, offset: 64)
!5378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5373, file: !301, line: 42, size: 64, elements: !5379)
!5379 = !{!5380, !5388}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5378, file: !301, line: 43, baseType: !5381, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5383, line: 7, size: 128, elements: !5384)
!5383 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5384 = !{!5385, !5387}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5382, file: !5383, line: 8, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !48, line: 93, baseType: !54)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5382, file: !5383, line: 9, baseType: !54, size: 64, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5378, file: !301, line: 44, baseType: !5389, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5391, line: 7, size: 64, elements: !5392)
!5391 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5392 = !{!5393, !5395}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5390, file: !5391, line: 8, baseType: !5394, size: 32)
!5394 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5391, line: 5, baseType: !867)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5390, file: !5391, line: 9, baseType: !867, size: 32, offset: 32)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5373, file: !301, line: 46, baseType: !393, size: 64, offset: 128)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5360, file: !301, line: 55, baseType: !5398, size: 256)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !301, line: 49, size: 256, elements: !5399)
!5399 = !{!5400, !5408, !5409, !5410, !5411}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5398, file: !301, line: 50, baseType: !5401, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5403, line: 36, size: 64, elements: !5404)
!5403 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5404 = !{!5405, !5406, !5407}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5402, file: !5403, line: 37, baseType: !33, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5402, file: !5403, line: 38, baseType: !903, size: 16, offset: 32)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5402, file: !5403, line: 39, baseType: !903, size: 16, offset: 48)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5398, file: !301, line: 51, baseType: !33, size: 32, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5398, file: !301, line: 52, baseType: !33, size: 32, offset: 96)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5398, file: !301, line: 53, baseType: !50, size: 64, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5398, file: !301, line: 54, baseType: !50, size: 64, offset: 192)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !325, file: !326, line: 973, baseType: !5413, size: 32, offset: 10688)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !36, line: 27, baseType: !5414)
!5414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !48, line: 28, baseType: !33)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !325, file: !326, line: 974, baseType: !5413, size: 32, offset: 10720)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !325, file: !326, line: 978, baseType: !50, size: 64, offset: 10752)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !325, file: !326, line: 987, baseType: !324, size: 64, offset: 10816)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !325, file: !326, line: 990, baseType: !324, size: 64, offset: 10880)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !325, file: !326, line: 995, baseType: !108, size: 128, offset: 10944)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !325, file: !326, line: 996, baseType: !108, size: 128, offset: 11072)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !325, file: !326, line: 997, baseType: !324, size: 64, offset: 11200)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !325, file: !326, line: 1005, baseType: !108, size: 128, offset: 11264)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !325, file: !326, line: 1006, baseType: !108, size: 128, offset: 11392)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !325, file: !326, line: 1009, baseType: !738, size: 64, offset: 11520)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !325, file: !326, line: 1010, baseType: !5426, size: 512, offset: 11584)
!5426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 512, elements: !755)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !325, file: !326, line: 1011, baseType: !108, size: 128, offset: 12096)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !325, file: !326, line: 1012, baseType: !108, size: 128, offset: 12224)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !325, file: !326, line: 1014, baseType: !1020, size: 64, offset: 12352)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !325, file: !326, line: 1017, baseType: !3115, size: 64, offset: 12416)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !325, file: !326, line: 1020, baseType: !3115, size: 64, offset: 12480)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !325, file: !326, line: 1023, baseType: !31, size: 64, offset: 12544)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !325, file: !326, line: 1025, baseType: !393, size: 64, offset: 12608)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !325, file: !326, line: 1026, baseType: !393, size: 64, offset: 12672)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !325, file: !326, line: 1031, baseType: !393, size: 64, offset: 12736)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !325, file: !326, line: 1032, baseType: !4209, size: 192, offset: 12800)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !325, file: !326, line: 1041, baseType: !50, size: 64, offset: 12992)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !325, file: !326, line: 1042, baseType: !50, size: 64, offset: 13056)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !325, file: !326, line: 1045, baseType: !393, size: 64, offset: 13120)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !325, file: !326, line: 1048, baseType: !393, size: 64, offset: 13184)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !325, file: !326, line: 1051, baseType: !50, size: 64, offset: 13248)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !325, file: !326, line: 1052, baseType: !50, size: 64, offset: 13312)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !325, file: !326, line: 1055, baseType: !5444, size: 640, offset: 13376)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5445, line: 132, size: 640, elements: !5446)
!5445 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5446 = !{!5447, !5453, !5454}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5444, file: !5445, line: 133, baseType: !5448, size: 576)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5449, size: 576, elements: !734)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5445, line: 117, size: 192, elements: !5450)
!5450 = !{!5451, !5452}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5449, file: !5445, line: 118, baseType: !393, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5449, file: !5445, line: 119, baseType: !522, size: 128, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5444, file: !5445, line: 134, baseType: !7, size: 32, offset: 576)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5444, file: !5445, line: 135, baseType: !7, size: 32, offset: 608)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !325, file: !326, line: 1058, baseType: !5456, size: 448, offset: 14016)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5445, line: 144, size: 448, elements: !5457)
!5457 = !{!5458, !5459, !5460}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5456, file: !5445, line: 145, baseType: !678, size: 128, align: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5456, file: !5445, line: 146, baseType: !698, size: 256, offset: 128)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5456, file: !5445, line: 147, baseType: !7, size: 32, offset: 384)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !325, file: !326, line: 1064, baseType: !1094, size: 64, offset: 14464)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !325, file: !326, line: 1067, baseType: !1094, size: 64, offset: 14528)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !325, file: !326, line: 1070, baseType: !1094, size: 64, offset: 14592)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !325, file: !326, line: 1074, baseType: !859, size: 64, offset: 14656)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !325, file: !326, line: 1084, baseType: !5466, size: 128, offset: 14720)
!5466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !2288)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !325, file: !326, line: 1086, baseType: !5468, size: 64, offset: 14848)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !326, line: 55, flags: DIFlagFwdDecl)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !325, file: !326, line: 1089, baseType: !5471, size: 64, offset: 14912)
!5471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5472, line: 12, size: 64, elements: !5473)
!5472 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5473 = !{!5474}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5471, file: !5472, line: 13, baseType: !5475, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5472, line: 8, flags: DIFlagFwdDecl)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !325, file: !326, line: 1090, baseType: !5478, size: 128, offset: 14976)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5479, line: 13, size: 128, elements: !5480)
!5479 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5480 = !{!5481}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5478, file: !5479, line: 14, baseType: !108, size: 128)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !325, file: !326, line: 1097, baseType: !5483, size: 64, offset: 15104)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !326, line: 50, flags: DIFlagFwdDecl)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !325, file: !326, line: 1100, baseType: !5486, size: 64, offset: 15168)
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !326, line: 1100, flags: DIFlagFwdDecl)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !325, file: !326, line: 1103, baseType: !5489, size: 64, offset: 15232)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !326, line: 53, flags: DIFlagFwdDecl)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !325, file: !326, line: 1107, baseType: !5492, size: 64, offset: 15296)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5494, line: 31, size: 576, elements: !5495)
!5494 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5495 = !{!5496, !5497, !5500, !5503, !5506, !5507, !5510, !5513, !5514}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5493, file: !5494, line: 32, baseType: !341, size: 32)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5493, file: !5494, line: 33, baseType: !5498, size: 64, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5494, line: 9, flags: DIFlagFwdDecl)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5493, file: !5494, line: 34, baseType: !5501, size: 64, offset: 128)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5494, line: 10, flags: DIFlagFwdDecl)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5493, file: !5494, line: 35, baseType: !5504, size: 64, offset: 192)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5494, line: 8, flags: DIFlagFwdDecl)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5493, file: !5494, line: 36, baseType: !766, size: 64, offset: 256)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5493, file: !5494, line: 37, baseType: !5508, size: 64, offset: 320)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !861, line: 34, flags: DIFlagFwdDecl)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5493, file: !5494, line: 38, baseType: !5511, size: 64, offset: 384)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5494, line: 38, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5493, file: !5494, line: 39, baseType: !5511, size: 64, offset: 448)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5493, file: !5494, line: 40, baseType: !5515, size: 64, offset: 512)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5517, line: 771, size: 384, elements: !5518)
!5517 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5518 = !{!5519, !5520, !5521, !5522}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5516, file: !5517, line: 772, baseType: !843, size: 192)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5516, file: !5517, line: 773, baseType: !797, size: 64, offset: 192)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5516, file: !5517, line: 774, baseType: !1065, size: 64, offset: 256)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5516, file: !5517, line: 775, baseType: !4279, size: 64, offset: 320)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !325, file: !326, line: 1110, baseType: !5524, size: 64, offset: 15360)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5526, line: 93, size: 8768, elements: !5527)
!5526 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5527 = !{!5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5576, !5585, !5586, !5588, !5589, !5590, !5593, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5631, !5632, !5639, !5649, !5711, !5712, !5715, !5716, !5717, !5718, !5719, !5720}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5525, file: !5526, line: 94, baseType: !341, size: 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5525, file: !5526, line: 95, baseType: !60, size: 32, offset: 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5525, file: !5526, line: 96, baseType: !33, size: 32, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5525, file: !5526, line: 97, baseType: !33, size: 32, offset: 96)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5525, file: !5526, line: 98, baseType: !108, size: 128, offset: 128)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5525, file: !5526, line: 100, baseType: !65, size: 192, offset: 256)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5525, file: !5526, line: 103, baseType: !324, size: 64, offset: 448)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5525, file: !5526, line: 106, baseType: !5536, size: 192, offset: 512)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5537, line: 32, size: 192, elements: !5538)
!5537 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5538 = !{!5539, !5540}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5536, file: !5537, line: 33, baseType: !108, size: 128)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5536, file: !5537, line: 34, baseType: !5541, size: 64, offset: 128)
!5541 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5542, line: 25, baseType: !5543)
!5542 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5542, line: 23, size: 64, elements: !5544)
!5544 = !{!5545}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5543, file: !5542, line: 24, baseType: !593, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5525, file: !5526, line: 109, baseType: !746, size: 64, offset: 704)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5525, file: !5526, line: 112, baseType: !33, size: 32, offset: 768)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5525, file: !5526, line: 114, baseType: !33, size: 32, offset: 800)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5525, file: !5526, line: 115, baseType: !324, size: 64, offset: 832)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5525, file: !5526, line: 118, baseType: !33, size: 32, offset: 896)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5525, file: !5526, line: 119, baseType: !7, size: 32, offset: 928)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5525, file: !5526, line: 121, baseType: !5553, size: 64, offset: 960)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5526, line: 80, size: 448, elements: !5555)
!5555 = !{!5556, !5557, !5563}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5554, file: !5526, line: 81, baseType: !60, size: 32)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5554, file: !5526, line: 82, baseType: !5558, size: 128, offset: 64)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5526, line: 75, size: 128, elements: !5559)
!5559 = !{!5560, !5561}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5558, file: !5526, line: 76, baseType: !324, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5558, file: !5526, line: 77, baseType: !5562, size: 64, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5554, file: !5526, line: 83, baseType: !1021, size: 256, offset: 192)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5525, file: !5526, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5525, file: !5526, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5525, file: !5526, line: 138, baseType: !7, size: 32, offset: 1056)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5525, file: !5526, line: 139, baseType: !108, size: 128, offset: 1088)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5525, file: !5526, line: 142, baseType: !460, size: 512, offset: 1216)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5525, file: !5526, line: 143, baseType: !468, size: 64, offset: 1728)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5525, file: !5526, line: 150, baseType: !5571, size: 256, offset: 1792)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5572, size: 256, elements: !3105)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5526, line: 38, size: 128, elements: !5573)
!5573 = !{!5574, !5575}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5572, file: !5526, line: 39, baseType: !393, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5572, file: !5526, line: 40, baseType: !393, size: 64, offset: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5525, file: !5526, line: 156, baseType: !5577, size: 192, offset: 2048)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5526, line: 66, size: 192, elements: !5578)
!5578 = !{!5579}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5577, file: !5526, line: 67, baseType: !5580, size: 192)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5526, line: 47, size: 192, elements: !5581)
!5581 = !{!5582, !5583, !5584}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5580, file: !5526, line: 48, baseType: !693, size: 64)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5580, file: !5526, line: 49, baseType: !693, size: 64, offset: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5580, file: !5526, line: 50, baseType: !693, size: 64, offset: 128)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5525, file: !5526, line: 160, baseType: !5444, size: 640, offset: 2240)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5525, file: !5526, line: 163, baseType: !5587, size: 256, offset: 2880)
!5587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !755)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5525, file: !5526, line: 169, baseType: !738, size: 64, offset: 3136)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5525, file: !5526, line: 172, baseType: !33, size: 32, offset: 3200)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5525, file: !5526, line: 174, baseType: !5591, size: 64, offset: 3264)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5526, line: 174, flags: DIFlagFwdDecl)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5525, file: !5526, line: 185, baseType: !5594, size: 64, offset: 3328)
!5594 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !512, line: 860, baseType: !5595)
!5595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !512, line: 853, size: 64, elements: !5596)
!5596 = !{!5597, !5598}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5595, file: !512, line: 858, baseType: !1196, size: 32)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5595, file: !512, line: 859, baseType: !70, size: 32, offset: 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5525, file: !5526, line: 186, baseType: !393, size: 64, offset: 3392)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5525, file: !5526, line: 186, baseType: !393, size: 64, offset: 3456)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5525, file: !5526, line: 186, baseType: !393, size: 64, offset: 3520)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5525, file: !5526, line: 186, baseType: !393, size: 64, offset: 3584)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5525, file: !5526, line: 187, baseType: !393, size: 64, offset: 3648)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5525, file: !5526, line: 188, baseType: !393, size: 64, offset: 3712)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5525, file: !5526, line: 189, baseType: !4209, size: 192, offset: 3776)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5525, file: !5526, line: 190, baseType: !50, size: 64, offset: 3968)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5525, file: !5526, line: 190, baseType: !50, size: 64, offset: 4032)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5525, file: !5526, line: 190, baseType: !50, size: 64, offset: 4096)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5525, file: !5526, line: 190, baseType: !50, size: 64, offset: 4160)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5525, file: !5526, line: 191, baseType: !50, size: 64, offset: 4224)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5525, file: !5526, line: 191, baseType: !50, size: 64, offset: 4288)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5525, file: !5526, line: 191, baseType: !50, size: 64, offset: 4352)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5525, file: !5526, line: 191, baseType: !50, size: 64, offset: 4416)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5525, file: !5526, line: 192, baseType: !50, size: 64, offset: 4480)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5525, file: !5526, line: 192, baseType: !50, size: 64, offset: 4544)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5525, file: !5526, line: 192, baseType: !50, size: 64, offset: 4608)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5525, file: !5526, line: 192, baseType: !50, size: 64, offset: 4672)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5525, file: !5526, line: 193, baseType: !50, size: 64, offset: 4736)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5525, file: !5526, line: 193, baseType: !50, size: 64, offset: 4800)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5525, file: !5526, line: 194, baseType: !5621, size: 448, offset: 4864)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5622, line: 12, size: 448, elements: !5623)
!5622 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5623 = !{!5624, !5625, !5626, !5627, !5628, !5629, !5630}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5621, file: !5622, line: 15, baseType: !393, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5621, file: !5622, line: 17, baseType: !393, size: 64, offset: 64)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5621, file: !5622, line: 19, baseType: !393, size: 64, offset: 128)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5621, file: !5622, line: 21, baseType: !393, size: 64, offset: 192)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5621, file: !5622, line: 29, baseType: !393, size: 64, offset: 256)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5621, file: !5622, line: 35, baseType: !393, size: 64, offset: 320)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5621, file: !5622, line: 44, baseType: !393, size: 64, offset: 384)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5525, file: !5526, line: 202, baseType: !395, size: 64, offset: 5312)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5525, file: !5526, line: 213, baseType: !5633, size: 2048, offset: 5376)
!5633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5634, size: 2048, elements: !2288)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5635, line: 43, size: 128, elements: !5636)
!5635 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5636 = !{!5637, !5638}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5634, file: !5635, line: 44, baseType: !49, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5634, file: !5635, line: 45, baseType: !49, size: 64, offset: 64)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5525, file: !5526, line: 216, baseType: !5640, size: 448, offset: 7424)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5526, line: 30, size: 448, elements: !5641)
!5641 = !{!5642, !5643, !5644, !5645, !5646, !5647, !5648}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5640, file: !5526, line: 31, baseType: !33, size: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5640, file: !5526, line: 32, baseType: !1080, size: 64, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5640, file: !5526, line: 33, baseType: !50, size: 64, offset: 128)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5640, file: !5526, line: 34, baseType: !393, size: 64, offset: 192)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5640, file: !5526, line: 34, baseType: !393, size: 64, offset: 256)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5640, file: !5526, line: 35, baseType: !50, size: 64, offset: 320)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5640, file: !5526, line: 35, baseType: !50, size: 64, offset: 384)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5525, file: !5526, line: 219, baseType: !5650, size: 64, offset: 7872)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5652, line: 41, size: 3456, elements: !5653)
!5652 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5653 = !{!5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5651, file: !5652, line: 47, baseType: !105, size: 16)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5651, file: !5652, line: 48, baseType: !336, size: 32, offset: 32)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5651, file: !5652, line: 54, baseType: !96, size: 8, offset: 64)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5651, file: !5652, line: 55, baseType: !96, size: 8, offset: 72)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5651, file: !5652, line: 73, baseType: !394, size: 64, align: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5651, file: !5652, line: 74, baseType: !394, size: 64, offset: 192)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5651, file: !5652, line: 81, baseType: !394, size: 64, offset: 256)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5651, file: !5652, line: 82, baseType: !394, size: 64, offset: 320)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5651, file: !5652, line: 85, baseType: !394, size: 64, offset: 384)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5651, file: !5652, line: 86, baseType: !394, size: 64, offset: 448)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5651, file: !5652, line: 94, baseType: !394, size: 64, offset: 512)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5651, file: !5652, line: 102, baseType: !394, size: 64, offset: 576)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5651, file: !5652, line: 107, baseType: !2270, size: 256, offset: 640)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5651, file: !5652, line: 108, baseType: !96, size: 8, align: 64, offset: 896)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5651, file: !5652, line: 110, baseType: !5669, size: 24, offset: 904)
!5669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 24, elements: !734)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5651, file: !5652, line: 111, baseType: !336, size: 32, align: 64, offset: 960)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5651, file: !5652, line: 113, baseType: !336, size: 32, offset: 992)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5651, file: !5652, line: 114, baseType: !336, size: 32, offset: 1024)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5651, file: !5652, line: 115, baseType: !336, size: 32, offset: 1056)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5651, file: !5652, line: 117, baseType: !336, size: 32, offset: 1088)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5651, file: !5652, line: 118, baseType: !394, size: 64, align: 64, offset: 1152)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5651, file: !5652, line: 120, baseType: !394, size: 64, offset: 1216)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5651, file: !5652, line: 121, baseType: !394, size: 64, offset: 1280)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5651, file: !5652, line: 122, baseType: !394, size: 64, offset: 1344)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5651, file: !5652, line: 123, baseType: !394, size: 64, offset: 1408)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5651, file: !5652, line: 133, baseType: !394, size: 64, offset: 1472)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5651, file: !5652, line: 137, baseType: !394, size: 64, offset: 1536)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5651, file: !5652, line: 142, baseType: !394, size: 64, offset: 1600)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5651, file: !5652, line: 143, baseType: !394, size: 64, offset: 1664)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5651, file: !5652, line: 146, baseType: !394, size: 64, offset: 1728)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5651, file: !5652, line: 147, baseType: !394, size: 64, offset: 1792)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5651, file: !5652, line: 148, baseType: !394, size: 64, offset: 1856)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5651, file: !5652, line: 149, baseType: !394, size: 64, offset: 1920)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5651, file: !5652, line: 154, baseType: !394, size: 64, offset: 1984)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5651, file: !5652, line: 155, baseType: !394, size: 64, offset: 2048)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5651, file: !5652, line: 156, baseType: !394, size: 64, offset: 2112)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5651, file: !5652, line: 158, baseType: !394, size: 64, offset: 2176)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5651, file: !5652, line: 159, baseType: !394, size: 64, offset: 2240)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5651, file: !5652, line: 162, baseType: !394, size: 64, offset: 2304)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5651, file: !5652, line: 163, baseType: !394, size: 64, offset: 2368)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5651, file: !5652, line: 164, baseType: !394, size: 64, offset: 2432)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5651, file: !5652, line: 167, baseType: !394, size: 64, offset: 2496)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5651, file: !5652, line: 168, baseType: !394, size: 64, offset: 2560)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5651, file: !5652, line: 171, baseType: !394, size: 64, offset: 2624)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5651, file: !5652, line: 172, baseType: !394, size: 64, offset: 2688)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5651, file: !5652, line: 175, baseType: !394, size: 64, offset: 2752)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5651, file: !5652, line: 178, baseType: !394, size: 64, offset: 2816)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5651, file: !5652, line: 179, baseType: !394, size: 64, offset: 2880)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5651, file: !5652, line: 182, baseType: !336, size: 32, offset: 2944)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5651, file: !5652, line: 186, baseType: !394, size: 64, align: 64, offset: 3008)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5651, file: !5652, line: 194, baseType: !394, size: 64, offset: 3072)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5651, file: !5652, line: 195, baseType: !394, size: 64, offset: 3136)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5651, file: !5652, line: 199, baseType: !394, size: 64, offset: 3200)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5651, file: !5652, line: 200, baseType: !394, size: 64, offset: 3264)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5651, file: !5652, line: 203, baseType: !394, size: 64, offset: 3328)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5651, file: !5652, line: 204, baseType: !394, size: 64, offset: 3392)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5525, file: !5526, line: 222, baseType: !7, size: 32, offset: 7936)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5525, file: !5526, line: 223, baseType: !5713, size: 64, offset: 8000)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5526, line: 223, flags: DIFlagFwdDecl)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5525, file: !5526, line: 230, baseType: !855, size: 8, offset: 8064)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5525, file: !5526, line: 231, baseType: !903, size: 16, offset: 8080)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5525, file: !5526, line: 232, baseType: !903, size: 16, offset: 8096)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5525, file: !5526, line: 234, baseType: !642, size: 64, offset: 8128)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5525, file: !5526, line: 237, baseType: !698, size: 256, offset: 8192)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5525, file: !5526, line: 243, baseType: !875, size: 320, offset: 8448)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !325, file: !326, line: 1111, baseType: !5722, size: 64, offset: 15424)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5526, line: 20, size: 16640, elements: !5724)
!5724 = !{!5725, !5726, !5727, !5728}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5723, file: !5526, line: 21, baseType: !70, size: 32)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5723, file: !5526, line: 22, baseType: !341, size: 32, offset: 32)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5723, file: !5526, line: 23, baseType: !65, size: 192, offset: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5723, file: !5526, line: 24, baseType: !5729, size: 16384, offset: 256)
!5729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5730, size: 16384, elements: !1515)
!5730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5537, line: 51, size: 256, elements: !5731)
!5731 = !{!5732}
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5730, file: !5537, line: 52, baseType: !5733, size: 256)
!5733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5537, line: 37, size: 256, elements: !5734)
!5734 = !{!5735, !5742, !5743, !5747}
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5733, file: !5537, line: 39, baseType: !5736, size: 64)
!5736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5737, line: 83, baseType: !5738)
!5737 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5737, line: 82, baseType: !5740)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{null, !33}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5733, file: !5537, line: 40, baseType: !50, size: 64, offset: 64)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5733, file: !5537, line: 46, baseType: !5744, size: 64, offset: 128)
!5744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5737, line: 86, baseType: !5745)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5737, line: 85, baseType: !3379)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5733, file: !5537, line: 48, baseType: !5541, size: 64, offset: 192)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !325, file: !326, line: 1112, baseType: !5541, size: 64, offset: 15488)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !325, file: !326, line: 1113, baseType: !5541, size: 64, offset: 15552)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !325, file: !326, line: 1115, baseType: !5541, size: 64, offset: 15616)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !325, file: !326, line: 1116, baseType: !5536, size: 192, offset: 15680)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !325, file: !326, line: 1117, baseType: !50, size: 64, offset: 15872)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !325, file: !326, line: 1118, baseType: !46, size: 64, offset: 15936)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !325, file: !326, line: 1119, baseType: !7, size: 32, offset: 16000)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !325, file: !326, line: 1121, baseType: !681, size: 64, offset: 16064)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !325, file: !326, line: 1125, baseType: !5757, size: 64, offset: 16128)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !326, line: 43, flags: DIFlagFwdDecl)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !325, file: !326, line: 1127, baseType: !828, size: 32, offset: 16192)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !325, file: !326, line: 1128, baseType: !7, size: 32, offset: 16224)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !325, file: !326, line: 1130, baseType: !5762, size: 128, offset: 16256)
!5762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5763, line: 37, size: 128, elements: !5764)
!5763 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5764 = !{!5765, !5766, !5767}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5762, file: !5763, line: 38, baseType: !33, size: 32)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5762, file: !5763, line: 39, baseType: !60, size: 32, offset: 32)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5762, file: !5763, line: 40, baseType: !5768, size: 64, offset: 64)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5763, line: 24, flags: DIFlagFwdDecl)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !325, file: !326, line: 1131, baseType: !5771, size: 256, offset: 16384)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5772, line: 12, size: 256, elements: !5773)
!5772 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5773 = !{!5774, !5775, !5776, !5777}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5771, file: !5772, line: 13, baseType: !943, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5771, file: !5772, line: 14, baseType: !50, size: 64, offset: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5771, file: !5772, line: 15, baseType: !50, size: 64, offset: 128)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5771, file: !5772, line: 16, baseType: !855, size: 8, offset: 192)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !325, file: !326, line: 1134, baseType: !393, size: 64, offset: 16640)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !325, file: !326, line: 1135, baseType: !393, size: 64, offset: 16704)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !325, file: !326, line: 1138, baseType: !70, size: 32, offset: 16768)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !325, file: !326, line: 1141, baseType: !485, size: 32, offset: 16800)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !325, file: !326, line: 1143, baseType: !5783, size: 64, offset: 16832)
!5783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !326, line: 735, size: 64, elements: !5784)
!5784 = !{!5785}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5783, file: !326, line: 736, baseType: !5786, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !325, file: !326, line: 1147, baseType: !525, size: 128, offset: 16896)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !325, file: !326, line: 1149, baseType: !324, size: 64, offset: 17024)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !325, file: !326, line: 1151, baseType: !5790, size: 64, offset: 17088)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !326, line: 1151, flags: DIFlagFwdDecl)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !325, file: !326, line: 1188, baseType: !31, size: 64, offset: 17152)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !325, file: !326, line: 1191, baseType: !5794, size: 64, offset: 17216)
!5794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5795, size: 64)
!5795 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !326, line: 44, flags: DIFlagFwdDecl)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !325, file: !326, line: 1194, baseType: !5797, size: 64, offset: 17280)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !326, line: 45, flags: DIFlagFwdDecl)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !325, file: !326, line: 1197, baseType: !5800, size: 64, offset: 17344)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2096, line: 155, size: 64, elements: !5802)
!5802 = !{!5803}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5801, file: !2096, line: 157, baseType: !50, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !325, file: !326, line: 1199, baseType: !5805, size: 64, offset: 17408)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2147, line: 99, size: 128, elements: !5807)
!5807 = !{!5808, !5809, !5810}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5806, file: !2147, line: 100, baseType: !691, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5806, file: !2147, line: 101, baseType: !60, size: 32, offset: 64)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5806, file: !2147, line: 103, baseType: !37, size: 16, offset: 96)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !325, file: !326, line: 1202, baseType: !5812, size: 64, offset: 17472)
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5813 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !326, line: 48, flags: DIFlagFwdDecl)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !325, file: !326, line: 1205, baseType: !50, size: 64, offset: 17536)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !325, file: !326, line: 1206, baseType: !5816, size: 64, offset: 17600)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5537, line: 14, baseType: !5818)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5537, line: 12, size: 384, elements: !5819)
!5819 = !{!5820}
!5820 = !DIDerivedType(tag: DW_TAG_member, scope: !5818, file: !5537, line: 13, baseType: !5821, size: 384)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5818, file: !5537, line: 13, size: 384, elements: !5822)
!5822 = !{!5823, !5824, !5825, !5826}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5821, file: !5537, line: 13, baseType: !33, size: 32)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5821, file: !5537, line: 13, baseType: !33, size: 32, offset: 32)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5821, file: !5537, line: 13, baseType: !33, size: 32, offset: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5821, file: !5537, line: 13, baseType: !5827, size: 256, offset: 128)
!5827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5828, line: 37, size: 256, elements: !5829)
!5828 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5829 = !{!5830, !5835, !5848, !5854, !5863, !5890, !5895}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5827, file: !5828, line: 42, baseType: !5831, size: 64)
!5831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 39, size: 64, elements: !5832)
!5832 = !{!5833, !5834}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5831, file: !5828, line: 40, baseType: !5414, size: 32)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5831, file: !5828, line: 41, baseType: !834, size: 32, offset: 32)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5827, file: !5828, line: 50, baseType: !5836, size: 192)
!5836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 45, size: 192, elements: !5837)
!5837 = !{!5838, !5840, !5841, !5847}
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5836, file: !5828, line: 46, baseType: !5839, size: 32)
!5839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !48, line: 95, baseType: !33)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5836, file: !5828, line: 47, baseType: !33, size: 32, offset: 32)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5836, file: !5828, line: 48, baseType: !5842, size: 64, offset: 64)
!5842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5828, line: 11, baseType: !5843)
!5843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5828, line: 8, size: 64, elements: !5844)
!5844 = !{!5845, !5846}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5843, file: !5828, line: 9, baseType: !33, size: 32)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5843, file: !5828, line: 10, baseType: !31, size: 64)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5836, file: !5828, line: 49, baseType: !33, size: 32, offset: 128)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5827, file: !5828, line: 57, baseType: !5849, size: 128)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 53, size: 128, elements: !5850)
!5850 = !{!5851, !5852, !5853}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5849, file: !5828, line: 54, baseType: !5414, size: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5849, file: !5828, line: 55, baseType: !834, size: 32, offset: 32)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5849, file: !5828, line: 56, baseType: !5842, size: 64, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5827, file: !5828, line: 66, baseType: !5855, size: 256)
!5855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 60, size: 256, elements: !5856)
!5856 = !{!5857, !5858, !5859, !5860, !5862}
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5855, file: !5828, line: 61, baseType: !5414, size: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5855, file: !5828, line: 62, baseType: !834, size: 32, offset: 32)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5855, file: !5828, line: 63, baseType: !33, size: 32, offset: 64)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5855, file: !5828, line: 64, baseType: !5861, size: 64, offset: 128)
!5861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !48, line: 94, baseType: !1379)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5855, file: !5828, line: 65, baseType: !5861, size: 64, offset: 192)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5827, file: !5828, line: 105, baseType: !5864, size: 256)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 69, size: 256, elements: !5865)
!5865 = !{!5866, !5867}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5864, file: !5828, line: 70, baseType: !31, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, scope: !5864, file: !5828, line: 79, baseType: !5868, size: 192, offset: 64)
!5868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5864, file: !5828, line: 79, size: 192, elements: !5869)
!5869 = !{!5870, !5871, !5872, !5879, !5884}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5868, file: !5828, line: 81, baseType: !33, size: 32)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5868, file: !5828, line: 86, baseType: !903, size: 16)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5868, file: !5828, line: 92, baseType: !5873, size: 192)
!5873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5868, file: !5828, line: 88, size: 192, elements: !5874)
!5874 = !{!5875, !5877, !5878}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5873, file: !5828, line: 89, baseType: !5876, size: 64)
!5876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !504)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5873, file: !5828, line: 90, baseType: !31, size: 64, offset: 64)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5873, file: !5828, line: 91, baseType: !31, size: 64, offset: 128)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5868, file: !5828, line: 97, baseType: !5880, size: 96)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5868, file: !5828, line: 94, size: 96, elements: !5881)
!5881 = !{!5882, !5883}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5880, file: !5828, line: 95, baseType: !5876, size: 64)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5880, file: !5828, line: 96, baseType: !336, size: 32, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5868, file: !5828, line: 103, baseType: !5885, size: 128)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5868, file: !5828, line: 99, size: 128, elements: !5886)
!5886 = !{!5887, !5888, !5889}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5885, file: !5828, line: 100, baseType: !50, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5885, file: !5828, line: 101, baseType: !336, size: 32, offset: 64)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5885, file: !5828, line: 102, baseType: !336, size: 32, offset: 96)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5827, file: !5828, line: 111, baseType: !5891, size: 128)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 108, size: 128, elements: !5892)
!5892 = !{!5893, !5894}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5891, file: !5828, line: 109, baseType: !1080, size: 64)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5891, file: !5828, line: 110, baseType: !33, size: 32, offset: 64)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5827, file: !5828, line: 118, baseType: !5896, size: 128)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5827, file: !5828, line: 114, size: 128, elements: !5897)
!5897 = !{!5898, !5899, !5900}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5896, file: !5828, line: 115, baseType: !31, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5896, file: !5828, line: 116, baseType: !33, size: 32, offset: 64)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5896, file: !5828, line: 117, baseType: !7, size: 32, offset: 96)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !325, file: !326, line: 1208, baseType: !5621, size: 448, offset: 17664)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !325, file: !326, line: 1215, baseType: !393, size: 64, offset: 18112)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !325, file: !326, line: 1217, baseType: !393, size: 64, offset: 18176)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !325, file: !326, line: 1219, baseType: !393, size: 64, offset: 18240)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !325, file: !326, line: 1223, baseType: !5906, size: 64, offset: 18304)
!5906 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5907, line: 99, baseType: !5908)
!5907 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5907, line: 99, size: 64, elements: !5909)
!5909 = !{!5910}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5908, file: !5907, line: 99, baseType: !593, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !325, file: !326, line: 1225, baseType: !1196, size: 32, offset: 18368)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !325, file: !326, line: 1226, baseType: !33, size: 32, offset: 18400)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !325, file: !326, line: 1227, baseType: !33, size: 32, offset: 18432)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !325, file: !326, line: 1231, baseType: !4279, size: 64, offset: 18496)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !325, file: !326, line: 1233, baseType: !108, size: 128, offset: 18560)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !325, file: !326, line: 1240, baseType: !5917, size: 64, offset: 18688)
!5917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!5918 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !326, line: 62, flags: DIFlagFwdDecl)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !325, file: !326, line: 1242, baseType: !5920, size: 64, offset: 18752)
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5921, size: 64)
!5921 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !326, line: 1242, flags: DIFlagFwdDecl)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !325, file: !326, line: 1244, baseType: !108, size: 128, offset: 18816)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !325, file: !326, line: 1245, baseType: !5924, size: 64, offset: 18944)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5925, size: 64)
!5925 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !326, line: 51, flags: DIFlagFwdDecl)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !325, file: !326, line: 1246, baseType: !698, size: 256, offset: 19008)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !325, file: !326, line: 1247, baseType: !7, size: 32, offset: 19264)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !325, file: !326, line: 1250, baseType: !3529, size: 64, offset: 19328)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !325, file: !326, line: 1251, baseType: !698, size: 256, offset: 19392)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !325, file: !326, line: 1252, baseType: !108, size: 128, offset: 19648)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !325, file: !326, line: 1259, baseType: !1799, size: 64, offset: 19776)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !325, file: !326, line: 1260, baseType: !903, size: 16, offset: 19840)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !325, file: !326, line: 1261, baseType: !903, size: 16, offset: 19856)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !325, file: !326, line: 1314, baseType: !5935, size: 64, offset: 19904)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5937, line: 62, size: 256, align: 256, elements: !5938)
!5937 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5938 = !{!5939, !5940, !5941, !5942, !5943, !5944, !5945}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5936, file: !5937, line: 75, baseType: !336, size: 32)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5936, file: !5937, line: 90, baseType: !336, size: 32, offset: 32)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5936, file: !5937, line: 112, baseType: !394, size: 64, offset: 64)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5936, file: !5937, line: 132, baseType: !336, size: 32, offset: 128)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5936, file: !5937, line: 140, baseType: !336, size: 32, offset: 160)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5936, file: !5937, line: 149, baseType: !336, size: 32, offset: 192)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5936, file: !5937, line: 154, baseType: !5946, offset: 224)
!5946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !1087)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !325, file: !326, line: 1315, baseType: !335, size: 32, offset: 19968)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !325, file: !326, line: 1316, baseType: !335, size: 32, offset: 20000)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !325, file: !326, line: 1321, baseType: !50, size: 64, offset: 20032)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !325, file: !326, line: 1325, baseType: !33, size: 32, offset: 20096)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !325, file: !326, line: 1326, baseType: !33, size: 32, offset: 20128)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !325, file: !326, line: 1327, baseType: !33, size: 32, offset: 20160)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !325, file: !326, line: 1328, baseType: !33, size: 32, offset: 20192)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !325, file: !326, line: 1329, baseType: !678, size: 128, align: 64, offset: 20224)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !325, file: !326, line: 1332, baseType: !5956, size: 128, offset: 20352)
!5956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5957, line: 51, size: 128, elements: !5958)
!5957 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5958 = !{!5959, !5964, !5965}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5956, file: !5957, line: 60, baseType: !5960, size: 64)
!5960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5961, line: 7, size: 64, elements: !5962)
!5961 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5962 = !{!5963}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5960, file: !5961, line: 12, baseType: !590, size: 64)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5956, file: !5957, line: 63, baseType: !855, size: 8, offset: 64)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5956, file: !5957, line: 70, baseType: !855, size: 8, offset: 72)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !325, file: !326, line: 1335, baseType: !5081, size: 64, offset: 20480)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !325, file: !326, line: 1337, baseType: !5968, size: 128, offset: 20544)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5957, line: 39, size: 128, elements: !5969)
!5969 = !{!5970, !5971, !5972}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5968, file: !5957, line: 40, baseType: !1596, size: 64)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5968, file: !5957, line: 42, baseType: !336, size: 32, offset: 64)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5968, file: !5957, line: 43, baseType: !336, size: 32, offset: 96)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !325, file: !326, line: 1340, baseType: !5974, size: 64, offset: 20672)
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5975 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !326, line: 69, flags: DIFlagFwdDecl)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !325, file: !326, line: 1351, baseType: !33, size: 32, offset: 20736)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !325, file: !326, line: 1352, baseType: !33, size: 32, offset: 20768)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !325, file: !326, line: 1354, baseType: !50, size: 64, offset: 20800)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !325, file: !326, line: 1364, baseType: !393, size: 64, offset: 20864)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !325, file: !326, line: 1365, baseType: !393, size: 64, offset: 20928)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !325, file: !326, line: 1412, baseType: !50, size: 64, offset: 20992)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !325, file: !326, line: 1453, baseType: !2142, size: 64, offset: 21056)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !325, file: !326, line: 1457, baseType: !5984, size: 64, offset: 21120)
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !307, line: 61, size: 576, elements: !5986)
!5986 = !{!5987, !5988, !6007, !6010, !6011, !6044, !6054}
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5985, file: !307, line: 62, baseType: !306, size: 32)
!5988 = !DIDerivedType(tag: DW_TAG_member, scope: !5985, file: !307, line: 64, baseType: !5989, size: 192, offset: 64)
!5989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5985, file: !307, line: 64, size: 192, elements: !5990)
!5990 = !{!5991, !6002}
!5991 = !DIDerivedType(tag: DW_TAG_member, scope: !5989, file: !307, line: 65, baseType: !5992, size: 192)
!5992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5989, file: !307, line: 65, size: 192, elements: !5993)
!5993 = !{!5994, !6001}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5992, file: !307, line: 66, baseType: !5995, size: 128)
!5995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5996, line: 50, size: 128, elements: !5997)
!5996 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5997 = !{!5998, !5999, !6000}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5995, file: !5996, line: 52, baseType: !50, size: 64)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5995, file: !5996, line: 54, baseType: !7, size: 32, offset: 64)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5995, file: !5996, line: 55, baseType: !7, size: 32, offset: 96)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5992, file: !307, line: 67, baseType: !50, size: 64, offset: 128)
!6002 = !DIDerivedType(tag: DW_TAG_member, scope: !5989, file: !307, line: 70, baseType: !6003, size: 192)
!6003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5989, file: !307, line: 70, size: 192, elements: !6004)
!6004 = !{!6005, !6006}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !6003, file: !307, line: 71, baseType: !678, size: 128, align: 64)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !6003, file: !307, line: 72, baseType: !50, size: 64, offset: 128)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5985, file: !307, line: 76, baseType: !6008, size: 64, offset: 256)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !307, line: 76, flags: DIFlagFwdDecl)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5985, file: !307, line: 77, baseType: !50, size: 64, offset: 320)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5985, file: !307, line: 79, baseType: !6012, size: 64, offset: 384)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5996, line: 25, size: 256, elements: !6014)
!6014 = !{!6015, !6021, !6025}
!6015 = !DIDerivedType(tag: DW_TAG_member, scope: !6013, file: !5996, line: 26, baseType: !6016, size: 128)
!6016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6013, file: !5996, line: 26, size: 128, elements: !6017)
!6017 = !{!6018, !6020}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !6016, file: !5996, line: 27, baseType: !6019, size: 128)
!6019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !2288)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !6016, file: !5996, line: 28, baseType: !6019, size: 128)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6013, file: !5996, line: 31, baseType: !6022, size: 64, offset: 128)
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 64)
!6023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6024)
!6024 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5996, line: 23, flags: DIFlagFwdDecl)
!6025 = !DIDerivedType(tag: DW_TAG_member, scope: !6013, file: !5996, line: 33, baseType: !6026, size: 64, offset: 192)
!6026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6013, file: !5996, line: 33, size: 64, elements: !6027)
!6027 = !{!6028, !6034, !6039}
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !6026, file: !5996, line: 38, baseType: !6029, size: 64)
!6029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6026, file: !5996, line: 34, size: 64, elements: !6030)
!6030 = !{!6031, !6032, !6033}
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !6029, file: !5996, line: 35, baseType: !867, size: 32)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6029, file: !5996, line: 36, baseType: !94, size: 8, offset: 32)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !6029, file: !5996, line: 37, baseType: !94, size: 8, offset: 40)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !6026, file: !5996, line: 42, baseType: !6035, size: 16)
!6035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6026, file: !5996, line: 39, size: 16, elements: !6036)
!6036 = !{!6037, !6038}
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !6035, file: !5996, line: 40, baseType: !94, size: 8)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6035, file: !5996, line: 41, baseType: !94, size: 8, offset: 8)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !6026, file: !5996, line: 46, baseType: !6040, size: 16)
!6040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6026, file: !5996, line: 43, size: 16, elements: !6041)
!6041 = !{!6042, !6043}
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !6040, file: !5996, line: 44, baseType: !94, size: 8)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6040, file: !5996, line: 45, baseType: !94, size: 8, offset: 8)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5985, file: !307, line: 81, baseType: !6045, size: 64, offset: 448)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !307, line: 85, size: 384, elements: !6047)
!6047 = !{!6048, !6049, !6050, !6051, !6052, !6053}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !6046, file: !307, line: 86, baseType: !6008, size: 64)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6046, file: !307, line: 87, baseType: !50, size: 64, offset: 64)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !6046, file: !307, line: 88, baseType: !50, size: 64, offset: 128)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !6046, file: !307, line: 89, baseType: !50, size: 64, offset: 192)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !6046, file: !307, line: 90, baseType: !855, size: 8, offset: 256)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6046, file: !307, line: 92, baseType: !6045, size: 64, offset: 320)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5985, file: !307, line: 82, baseType: !7, size: 32, offset: 512)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !325, file: !326, line: 1463, baseType: !6056, offset: 21184)
!6056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !326, line: 739, elements: !663)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !325, file: !326, line: 1470, baseType: !678, size: 128, align: 64, offset: 21184)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !325, file: !326, line: 1471, baseType: !341, size: 32, offset: 21312)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !325, file: !326, line: 1472, baseType: !33, size: 32, offset: 21344)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !325, file: !326, line: 1474, baseType: !324, size: 64, offset: 21376)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !325, file: !326, line: 1475, baseType: !2374, size: 320, offset: 21440)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !325, file: !326, line: 1478, baseType: !6063, size: 64, offset: 21760)
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6064, size: 64)
!6064 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !326, line: 1478, flags: DIFlagFwdDecl)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !325, file: !326, line: 1482, baseType: !341, size: 32, offset: 21824)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !325, file: !326, line: 1489, baseType: !31, size: 64, offset: 21888)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !325, file: !326, line: 1504, baseType: !31, size: 64, offset: 21952)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !325, file: !326, line: 1505, baseType: !394, size: 64, offset: 22016)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !325, file: !326, line: 1506, baseType: !393, size: 64, offset: 22080)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !325, file: !326, line: 1507, baseType: !394, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !325, file: !326, line: 1508, baseType: !394, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !325, file: !326, line: 1509, baseType: !394, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !325, file: !326, line: 1510, baseType: !678, size: 128, align: 64, offset: 22208)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !325, file: !326, line: 1511, baseType: !33, size: 32, offset: 22336)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !325, file: !326, line: 1515, baseType: !6076, size: 64, offset: 22400)
!6076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !355, line: 56, size: 64, elements: !6077)
!6077 = !{!6078}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6076, file: !355, line: 57, baseType: !358, size: 64)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !325, file: !326, line: 1518, baseType: !6076, size: 64, offset: 22464)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !325, file: !326, line: 1528, baseType: !678, size: 128, align: 64, offset: 22528)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !325, file: !326, line: 1552, baseType: !6082, size: 35328, offset: 23040)
!6082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6083, line: 430, size: 35328, elements: !6084)
!6083 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6084 = !{!6085, !6087, !6088, !6089, !6090, !6091, !6092, !6093, !6094, !6096, !6097, !6098, !6099, !6100, !6101, !6104, !6105, !6106, !6107}
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6082, file: !6083, line: 432, baseType: !6086, size: 192)
!6086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5257, size: 192, elements: !734)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6082, file: !6083, line: 436, baseType: !50, size: 64, offset: 192)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6082, file: !6083, line: 440, baseType: !37, size: 16, offset: 256)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6082, file: !6083, line: 441, baseType: !37, size: 16, offset: 272)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6082, file: !6083, line: 442, baseType: !37, size: 16, offset: 288)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6082, file: !6083, line: 443, baseType: !37, size: 16, offset: 304)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6082, file: !6083, line: 447, baseType: !50, size: 64, offset: 320)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6082, file: !6083, line: 448, baseType: !50, size: 64, offset: 384)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6082, file: !6083, line: 459, baseType: !6095, size: 256, offset: 448)
!6095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3490, size: 256, elements: !755)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6082, file: !6083, line: 461, baseType: !50, size: 64, offset: 704)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6082, file: !6083, line: 463, baseType: !50, size: 64, offset: 768)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6082, file: !6083, line: 465, baseType: !50, size: 64, offset: 832)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6082, file: !6083, line: 466, baseType: !50, size: 64, offset: 896)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6082, file: !6083, line: 467, baseType: !50, size: 64, offset: 960)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6082, file: !6083, line: 473, baseType: !6102, size: 64, offset: 1024)
!6102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6103, size: 64)
!6103 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6083, line: 10, flags: DIFlagFwdDecl)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6082, file: !6083, line: 480, baseType: !50, size: 64, offset: 1088)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6082, file: !6083, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6082, file: !6083, line: 491, baseType: !335, size: 32, offset: 1184)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6082, file: !6083, line: 501, baseType: !6108, size: 33792, offset: 1536)
!6108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6109, line: 448, size: 33792, elements: !6110)
!6109 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6110 = !{!6111, !6112, !6113, !6221, !6222, !6228, !6229}
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6108, file: !6109, line: 461, baseType: !7, size: 32)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6108, file: !6109, line: 468, baseType: !50, size: 64, offset: 64)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6108, file: !6109, line: 476, baseType: !6114, size: 64, offset: 128)
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6115, size: 64)
!6115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6109, line: 356, size: 33280, align: 512, elements: !6116)
!6116 = !{!6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126}
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6115, file: !6109, line: 358, baseType: !7, size: 32)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6115, file: !6109, line: 361, baseType: !7, size: 32, offset: 32)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6115, file: !6109, line: 364, baseType: !393, size: 64, offset: 64)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6115, file: !6109, line: 367, baseType: !393, size: 64, offset: 128)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6115, file: !6109, line: 370, baseType: !393, size: 64, offset: 192)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6115, file: !6109, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6115, file: !6109, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6115, file: !6109, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6115, file: !6109, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6115, file: !6109, line: 397, baseType: !6127, size: 32768, offset: 512)
!6127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6109, line: 348, size: 32768, elements: !6128)
!6128 = !{!6129, !6144, !6181, !6206, !6219}
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6127, file: !6109, line: 349, baseType: !6130, size: 896)
!6130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6109, line: 12, size: 896, elements: !6131)
!6131 = !{!6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6143}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6130, file: !6109, line: 13, baseType: !335, size: 32)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6130, file: !6109, line: 14, baseType: !335, size: 32, offset: 32)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6130, file: !6109, line: 15, baseType: !335, size: 32, offset: 64)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6130, file: !6109, line: 16, baseType: !335, size: 32, offset: 96)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6130, file: !6109, line: 17, baseType: !335, size: 32, offset: 128)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6130, file: !6109, line: 18, baseType: !335, size: 32, offset: 160)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6130, file: !6109, line: 19, baseType: !335, size: 32, offset: 192)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6130, file: !6109, line: 22, baseType: !6140, size: 640, offset: 224)
!6140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 640, elements: !6141)
!6141 = !{!6142}
!6142 = !DISubrange(count: 20)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6130, file: !6109, line: 25, baseType: !335, size: 32, offset: 864)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6127, file: !6109, line: 350, baseType: !6145, size: 4096, align: 128)
!6145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6109, line: 34, size: 4096, align: 128, elements: !6146)
!6146 = !{!6147, !6148, !6149, !6150, !6151, !6166, !6167, !6168, !6170, !6172, !6176}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6145, file: !6109, line: 35, baseType: !104, size: 16)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6145, file: !6109, line: 36, baseType: !104, size: 16, offset: 16)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6145, file: !6109, line: 37, baseType: !104, size: 16, offset: 32)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6145, file: !6109, line: 38, baseType: !104, size: 16, offset: 48)
!6151 = !DIDerivedType(tag: DW_TAG_member, scope: !6145, file: !6109, line: 39, baseType: !6152, size: 128, offset: 64)
!6152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6145, file: !6109, line: 39, size: 128, elements: !6153)
!6153 = !{!6154, !6159}
!6154 = !DIDerivedType(tag: DW_TAG_member, scope: !6152, file: !6109, line: 40, baseType: !6155, size: 128)
!6155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6152, file: !6109, line: 40, size: 128, elements: !6156)
!6156 = !{!6157, !6158}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6155, file: !6109, line: 41, baseType: !393, size: 64)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6155, file: !6109, line: 42, baseType: !393, size: 64, offset: 64)
!6159 = !DIDerivedType(tag: DW_TAG_member, scope: !6152, file: !6109, line: 44, baseType: !6160, size: 128)
!6160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6152, file: !6109, line: 44, size: 128, elements: !6161)
!6161 = !{!6162, !6163, !6164, !6165}
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6160, file: !6109, line: 45, baseType: !335, size: 32)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6160, file: !6109, line: 46, baseType: !335, size: 32, offset: 32)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6160, file: !6109, line: 47, baseType: !335, size: 32, offset: 64)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6160, file: !6109, line: 48, baseType: !335, size: 32, offset: 96)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6145, file: !6109, line: 51, baseType: !335, size: 32, offset: 192)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6145, file: !6109, line: 52, baseType: !335, size: 32, offset: 224)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6145, file: !6109, line: 55, baseType: !6169, size: 1024, offset: 256)
!6169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 1024, elements: !2271)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6145, file: !6109, line: 58, baseType: !6171, size: 2048, offset: 1280)
!6171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 2048, elements: !1515)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6145, file: !6109, line: 60, baseType: !6173, size: 384, offset: 3328)
!6173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, elements: !6174)
!6174 = !{!6175}
!6175 = !DISubrange(count: 12)
!6176 = !DIDerivedType(tag: DW_TAG_member, scope: !6145, file: !6109, line: 62, baseType: !6177, size: 384, offset: 3712)
!6177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6145, file: !6109, line: 62, size: 384, elements: !6178)
!6178 = !{!6179, !6180}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6177, file: !6109, line: 63, baseType: !6173, size: 384)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6177, file: !6109, line: 64, baseType: !6173, size: 384)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6127, file: !6109, line: 351, baseType: !6182, size: 1088)
!6182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6109, line: 79, size: 1088, elements: !6183)
!6183 = !{!6184, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192, !6193, !6194, !6195, !6196, !6197, !6198, !6205}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6182, file: !6109, line: 80, baseType: !335, size: 32)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6182, file: !6109, line: 81, baseType: !335, size: 32, offset: 32)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6182, file: !6109, line: 82, baseType: !335, size: 32, offset: 64)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6182, file: !6109, line: 83, baseType: !335, size: 32, offset: 96)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6182, file: !6109, line: 84, baseType: !335, size: 32, offset: 128)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6182, file: !6109, line: 85, baseType: !335, size: 32, offset: 160)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6182, file: !6109, line: 86, baseType: !335, size: 32, offset: 192)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6182, file: !6109, line: 88, baseType: !6140, size: 640, offset: 224)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6182, file: !6109, line: 89, baseType: !94, size: 8, offset: 864)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6182, file: !6109, line: 90, baseType: !94, size: 8, offset: 872)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6182, file: !6109, line: 91, baseType: !94, size: 8, offset: 880)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6182, file: !6109, line: 92, baseType: !94, size: 8, offset: 888)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6182, file: !6109, line: 93, baseType: !94, size: 8, offset: 896)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6182, file: !6109, line: 94, baseType: !94, size: 8, offset: 904)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6182, file: !6109, line: 95, baseType: !6199, size: 64, offset: 960)
!6199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6200, size: 64)
!6200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6201, line: 11, size: 128, elements: !6202)
!6201 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6202 = !{!6203, !6204}
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6200, file: !6201, line: 12, baseType: !1080, size: 64)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6200, file: !6201, line: 13, baseType: !4053, size: 64, offset: 64)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6182, file: !6109, line: 96, baseType: !335, size: 32, offset: 1024)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6127, file: !6109, line: 352, baseType: !6207, size: 4608, align: 512)
!6207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6109, line: 333, size: 4608, align: 512, elements: !6208)
!6208 = !{!6209, !6210, !6217}
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6207, file: !6109, line: 334, baseType: !6145, size: 4096, align: 128)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6207, file: !6109, line: 335, baseType: !6211, size: 512, offset: 4096)
!6211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6109, line: 312, size: 512, elements: !6212)
!6212 = !{!6213, !6214, !6215}
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6211, file: !6109, line: 313, baseType: !393, size: 64)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6211, file: !6109, line: 314, baseType: !393, size: 64, offset: 64)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6211, file: !6109, line: 315, baseType: !6216, size: 384, offset: 128)
!6216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !921)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6207, file: !6109, line: 336, baseType: !6218, offset: 4608)
!6218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !1087)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6127, file: !6109, line: 353, baseType: !6220, size: 32768)
!6220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32768, elements: !3434)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6108, file: !6109, line: 484, baseType: !6114, size: 64, offset: 192)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6108, file: !6109, line: 491, baseType: !6223, size: 128, offset: 256)
!6223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6109, line: 404, size: 128, elements: !6224)
!6224 = !{!6225, !6226, !6227}
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6223, file: !6109, line: 424, baseType: !393, size: 64)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6223, file: !6109, line: 432, baseType: !7, size: 32, offset: 64)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6223, file: !6109, line: 440, baseType: !7, size: 32, offset: 96)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6108, file: !6109, line: 498, baseType: !6223, size: 128, offset: 384)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6108, file: !6109, line: 508, baseType: !6115, size: 33280, align: 512, offset: 512)
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!6231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6232, size: 64)
!6232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6233)
!6233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3382)
!6234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6235, size: 64)
!6235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!6236 = !{!0, !6237, !6242, !6247, !6275, !6280, !6285, !6287, !6292, !6297, !6302, !6304, !6309, !6311, !6314, !6319, !6324, !6330, !6360}
!6237 = !DIGlobalVariableExpression(var: !6238, expr: !DIExpression())
!6238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !6239, isLocal: true, isDefinition: true)
!6239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 184, elements: !6240)
!6240 = !{!6241}
!6241 = !DISubrange(count: 23)
!6242 = !DIGlobalVariableExpression(var: !6243, expr: !DIExpression())
!6243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !6244, isLocal: true, isDefinition: true)
!6244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 120, elements: !6245)
!6245 = !{!6246}
!6246 = !DISubrange(count: 15)
!6247 = !DIGlobalVariableExpression(var: !6248, expr: !DIExpression())
!6248 = distinct !DIGlobalVariable(name: "___tp_str", scope: !6249, file: !3, line: 184, type: !27, isLocal: true, isDefinition: true)
!6249 = distinct !DISubprogram(name: "thaw_processes", scope: !3, file: !3, line: 179, type: !3379, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6250)
!6250 = !{!6251, !6252, !6253, !6254, !6258, !6261, !6265, !6268, !6270, !6272}
!6251 = !DILocalVariable(name: "g", scope: !6249, file: !3, line: 181, type: !324)
!6252 = !DILocalVariable(name: "p", scope: !6249, file: !3, line: 181, type: !324)
!6253 = !DILocalVariable(name: "curr", scope: !6249, file: !3, line: 182, type: !324)
!6254 = !DILocalVariable(name: "__mptr", scope: !6255, file: !3, line: 200, type: !31)
!6255 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 200, column: 2)
!6256 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 200, column: 2)
!6257 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 200, column: 2)
!6258 = !DILocalVariable(name: "__mptr", scope: !6259, file: !3, line: 200, type: !31)
!6259 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 200, column: 2)
!6260 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 200, column: 2)
!6261 = !DILocalVariable(name: "__ret_warn_on", scope: !6262, file: !3, line: 202, type: !33)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 202, column: 3)
!6263 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 200, column: 32)
!6264 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 200, column: 2)
!6265 = !DILocalVariable(name: "__flags", scope: !6266, file: !3, line: 202, type: !33)
!6266 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 202, column: 3)
!6267 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 202, column: 3)
!6268 = !DILocalVariable(name: "__mptr", scope: !6269, file: !3, line: 200, type: !31)
!6269 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 200, column: 2)
!6270 = !DILocalVariable(name: "__ret_warn_on", scope: !6271, file: !3, line: 207, type: !33)
!6271 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 207, column: 2)
!6272 = !DILocalVariable(name: "__flags", scope: !6273, file: !3, line: 207, type: !33)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 207, column: 2)
!6274 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 207, column: 2)
!6275 = !DIGlobalVariableExpression(var: !6276, expr: !DIExpression())
!6276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !6277, isLocal: true, isDefinition: true)
!6277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !6278)
!6278 = !{!6279}
!6279 = !DISubrange(count: 24)
!6280 = !DIGlobalVariableExpression(var: !6281, expr: !DIExpression())
!6281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !6282, isLocal: true, isDefinition: true)
!6282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 72, elements: !6283)
!6283 = !{!6284}
!6284 = !DISubrange(count: 9)
!6285 = !DIGlobalVariableExpression(var: !6286, expr: !DIExpression())
!6286 = distinct !DIGlobalVariable(name: "___tp_str", scope: !6249, file: !3, line: 214, type: !27, isLocal: true, isDefinition: true)
!6287 = !DIGlobalVariableExpression(var: !6288, expr: !DIExpression())
!6288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !6289, isLocal: true, isDefinition: true)
!6289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 264, elements: !6290)
!6290 = !{!6291}
!6291 = !DISubrange(count: 33)
!6292 = !DIGlobalVariableExpression(var: !6293, expr: !DIExpression())
!6293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !6294, isLocal: true, isDefinition: true)
!6294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 168, elements: !6295)
!6295 = !{!6296}
!6296 = !DISubrange(count: 21)
!6297 = !DIGlobalVariableExpression(var: !6298, expr: !DIExpression())
!6298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !6299, isLocal: true, isDefinition: true)
!6299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 208, elements: !6300)
!6300 = !{!6301}
!6301 = !DISubrange(count: 26)
!6302 = !DIGlobalVariableExpression(var: !6303, expr: !DIExpression())
!6303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !6244, isLocal: true, isDefinition: true)
!6304 = !DIGlobalVariableExpression(var: !6305, expr: !DIExpression())
!6305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !6306, isLocal: true, isDefinition: true)
!6306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 664, elements: !6307)
!6307 = !{!6308}
!6308 = !DISubrange(count: 83)
!6309 = !DIGlobalVariableExpression(var: !6310, expr: !DIExpression())
!6310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !5876, isLocal: true, isDefinition: true)
!6311 = !DIGlobalVariableExpression(var: !6312, expr: !DIExpression())
!6312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !6313, isLocal: true, isDefinition: true)
!6313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 56, elements: !3107)
!6314 = !DIGlobalVariableExpression(var: !6315, expr: !DIExpression())
!6315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !6316, isLocal: true, isDefinition: true)
!6316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 408, elements: !6317)
!6317 = !{!6318}
!6318 = !DISubrange(count: 51)
!6319 = !DIGlobalVariableExpression(var: !6320, expr: !DIExpression())
!6320 = distinct !DIGlobalVariable(scope: null, file: !469, line: 154, type: !6321, isLocal: true, isDefinition: true)
!6321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 176, elements: !6322)
!6322 = !{!6323}
!6323 = !DISubrange(count: 22)
!6324 = !DIGlobalVariableExpression(var: !6325, expr: !DIExpression())
!6325 = distinct !DIGlobalVariable(scope: null, file: !6326, line: 248, type: !6327, isLocal: true, isDefinition: true)
!6326 = !DIFile(filename: "./include/trace/events/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39006560aadda1aecb35636d6d2fb319")
!6327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 232, elements: !6328)
!6328 = !{!6329}
!6329 = !DISubrange(count: 29)
!6330 = !DIGlobalVariableExpression(var: !6331, expr: !DIExpression())
!6331 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433", scope: !6332, file: !6326, line: 248, type: !31, isLocal: true, isDefinition: true)
!6332 = distinct !DISubprogram(name: "trace_suspend_resume", scope: !6326, file: !6326, line: 248, type: !6333, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{null, !27, !33, !855}
!6335 = !{!6336, !6337, !6338, !6339, !6342, !6345, !6347, !6349, !6352, !6355, !6357, !6358}
!6336 = !DILocalVariable(name: "action", arg: 1, scope: !6332, file: !6326, line: 248, type: !27)
!6337 = !DILocalVariable(name: "val", arg: 2, scope: !6332, file: !6326, line: 248, type: !33)
!6338 = !DILocalVariable(name: "start", arg: 3, scope: !6332, file: !6326, line: 248, type: !855)
!6339 = !DILocalVariable(name: "__idx", scope: !6340, file: !6326, line: 248, type: !33)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !6326, line: 248, column: 1)
!6341 = distinct !DILexicalBlock(scope: !6332, file: !6326, line: 248, column: 1)
!6342 = !DILocalVariable(name: "pscr_ret__", scope: !6343, file: !6326, line: 248, type: !33)
!6343 = distinct !DILexicalBlock(scope: !6344, file: !6326, line: 248, column: 1)
!6344 = distinct !DILexicalBlock(scope: !6340, file: !6326, line: 248, column: 1)
!6345 = !DILocalVariable(name: "__vpp_verify", scope: !6346, file: !6326, line: 248, type: !2279)
!6346 = distinct !DILexicalBlock(scope: !6343, file: !6326, line: 248, column: 1)
!6347 = !DILocalVariable(name: "pfo_val__", scope: !6348, file: !6326, line: 248, type: !335)
!6348 = distinct !DILexicalBlock(scope: !6343, file: !6326, line: 248, column: 1)
!6349 = !DILocalVariable(name: "__ret_warn_on", scope: !6350, file: !6326, line: 248, type: !33)
!6350 = distinct !DILexicalBlock(scope: !6351, file: !6326, line: 248, column: 1)
!6351 = distinct !DILexicalBlock(scope: !6340, file: !6326, line: 248, column: 1)
!6352 = !DILocalVariable(name: "__flags", scope: !6353, file: !6326, line: 248, type: !33)
!6353 = distinct !DILexicalBlock(scope: !6354, file: !6326, line: 248, column: 1)
!6354 = distinct !DILexicalBlock(scope: !6350, file: !6326, line: 248, column: 1)
!6355 = !DILocalVariable(name: "it_func_ptr", scope: !6356, file: !6326, line: 248, type: !3382)
!6356 = distinct !DILexicalBlock(scope: !6340, file: !6326, line: 248, column: 1)
!6357 = !DILocalVariable(name: "__data", scope: !6356, file: !6326, line: 248, type: !31)
!6358 = !DILocalVariable(name: "__UNIQUE_ID_rcu431", scope: !6359, file: !6326, line: 248, type: !3382)
!6359 = distinct !DILexicalBlock(scope: !6356, file: !6326, line: 248, column: 1)
!6360 = !DIGlobalVariableExpression(var: !6361, expr: !DIExpression())
!6361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434", scope: !6332, file: !6326, line: 248, type: !31, isLocal: true, isDefinition: true)
!6362 = !{!"rsp"}
!6363 = !{i32 7, !"Dwarf Version", i32 5}
!6364 = !{i32 2, !"Debug Info Version", i32 3}
!6365 = !{i32 1, !"wchar_size", i32 2}
!6366 = !{i32 8, !"cf-protection-branch", i32 1}
!6367 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6368 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6369 = !{i32 1, !"Code Model", i32 2}
!6370 = !{i32 1, !"override-stack-alignment", i32 8}
!6371 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6372 = distinct !DISubprogram(name: "freeze_processes", scope: !3, file: !3, line: 121, type: !3087, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6373)
!6373 = !{!6374}
!6374 = !DILocalVariable(name: "error", scope: !6372, file: !3, line: 123, type: !33)
!6375 = !DILocation(line: 123, column: 2, scope: !6372)
!6376 = !DILocation(line: 123, column: 6, scope: !6372)
!6377 = !DILocation(line: 125, column: 10, scope: !6372)
!6378 = !DILocation(line: 125, column: 8, scope: !6372)
!6379 = !DILocation(line: 126, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 126, column: 6)
!6381 = !DILocation(line: 126, column: 6, scope: !6372)
!6382 = !DILocation(line: 127, column: 10, scope: !6380)
!6383 = !DILocation(line: 127, column: 3, scope: !6380)
!6384 = !DILocation(line: 130, column: 2, scope: !6372)
!6385 = !DILocation(line: 130, column: 11, scope: !6372)
!6386 = !DILocation(line: 130, column: 17, scope: !6372)
!6387 = !DILocation(line: 132, column: 7, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 132, column: 6)
!6389 = !{i8 0, i8 2}
!6390 = !DILocation(line: 132, column: 6, scope: !6372)
!6391 = !DILocation(line: 133, column: 3, scope: !6388)
!6392 = !DILocation(line: 135, column: 2, scope: !6372)
!6393 = !DILocation(line: 136, column: 14, scope: !6372)
!6394 = !DILocation(line: 137, column: 10, scope: !6372)
!6395 = !DILocation(line: 137, column: 8, scope: !6372)
!6396 = !DILocation(line: 138, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 138, column: 6)
!6398 = !DILocation(line: 138, column: 6, scope: !6372)
!6399 = !DILocation(line: 139, column: 3, scope: !6397)
!6400 = !DILocation(line: 141, column: 2, scope: !6372)
!6401 = !DILocation(line: 141, column: 2, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 141, column: 2)
!6403 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 141, column: 2)
!6404 = !DILocation(line: 141, column: 2, scope: !6403)
!6405 = !DILocation(line: 141, column: 2, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 141, column: 2)
!6407 = !DILocation(line: 141, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 141, column: 2)
!6409 = !DILocation(line: 141, column: 2, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 141, column: 2)
!6411 = !{i64 2158014043, i64 2158014072, i64 2158014118, i64 2158014176, i64 2158014230, i64 2158014284, i64 2158014339, i64 2158014370}
!6412 = !DILocation(line: 149, column: 7, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 149, column: 6)
!6414 = !DILocation(line: 149, column: 13, scope: !6413)
!6415 = !DILocation(line: 149, column: 53, scope: !6413)
!6416 = !DILocation(line: 149, column: 36, scope: !6413)
!6417 = !DILocation(line: 149, column: 17, scope: !6413)
!6418 = !DILocation(line: 149, column: 6, scope: !6372)
!6419 = !DILocation(line: 150, column: 9, scope: !6413)
!6420 = !DILocation(line: 150, column: 3, scope: !6413)
!6421 = !DILocation(line: 152, column: 6, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 152, column: 6)
!6423 = !DILocation(line: 152, column: 6, scope: !6372)
!6424 = !DILocation(line: 153, column: 3, scope: !6422)
!6425 = !DILocation(line: 154, column: 9, scope: !6372)
!6426 = !DILocation(line: 154, column: 2, scope: !6372)
!6427 = !DILocation(line: 155, column: 1, scope: !6372)
!6428 = !DISubprogram(name: "__usermodehelper_disable", scope: !6, file: !6, line: 51, type: !6429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!33, !5}
!6431 = distinct !DISubprogram(name: "get_current", scope: !6432, file: !6432, line: 39, type: !6433, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6435)
!6432 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!324}
!6435 = !{!6436, !6438, !6440}
!6436 = !DILocalVariable(name: "pscr_ret__", scope: !6437, file: !6432, line: 41, type: !324)
!6437 = distinct !DILexicalBlock(scope: !6431, file: !6432, line: 41, column: 9)
!6438 = !DILocalVariable(name: "__vpp_verify", scope: !6439, file: !6432, line: 41, type: !2279)
!6439 = distinct !DILexicalBlock(scope: !6437, file: !6432, line: 41, column: 9)
!6440 = !DILocalVariable(name: "pfo_val__", scope: !6441, file: !6432, line: 41, type: !393)
!6441 = distinct !DILexicalBlock(scope: !6437, file: !6432, line: 41, column: 9)
!6442 = !DILocation(line: 41, column: 9, scope: !6437)
!6443 = !DILocation(line: 41, column: 9, scope: !6439)
!6444 = !DILocation(line: 41, column: 9, scope: !6441)
!6445 = !{i64 2149040653}
!6446 = !DILocation(line: 41, column: 9, scope: !6431)
!6447 = !DILocation(line: 41, column: 2, scope: !6431)
!6448 = !DISubprogram(name: "static_key_slow_inc", scope: !3274, file: !3274, line: 227, type: !6449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6449 = !DISubroutineType(types: !6450)
!6450 = !{!855, !6451}
!6451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!6452 = !DISubprogram(name: "pm_wakeup_clear", scope: !6453, file: !6453, line: 521, type: !6454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6453 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!6454 = !DISubroutineType(types: !6455)
!6455 = !{null, !7}
!6456 = distinct !DISubprogram(name: "try_to_freeze_tasks", scope: !3, file: !3, line: 28, type: !6457, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6457 = !DISubroutineType(types: !6458)
!6458 = !{!33, !855}
!6459 = !{!6460, !6461, !6462, !6463, !6464, !6465, !6466, !6467, !6468, !6469, !6470, !6471, !6472, !6473, !6478, !6481, !6484, !6492, !6495}
!6460 = !DILocalVariable(name: "user_only", arg: 1, scope: !6456, file: !3, line: 28, type: !855)
!6461 = !DILocalVariable(name: "what", scope: !6456, file: !3, line: 30, type: !27)
!6462 = !DILocalVariable(name: "g", scope: !6456, file: !3, line: 32, type: !324)
!6463 = !DILocalVariable(name: "p", scope: !6456, file: !3, line: 32, type: !324)
!6464 = !DILocalVariable(name: "end_time", scope: !6456, file: !3, line: 33, type: !50)
!6465 = !DILocalVariable(name: "todo", scope: !6456, file: !3, line: 34, type: !7)
!6466 = !DILocalVariable(name: "wq_busy", scope: !6456, file: !3, line: 35, type: !855)
!6467 = !DILocalVariable(name: "start", scope: !6456, file: !3, line: 36, type: !468)
!6468 = !DILocalVariable(name: "end", scope: !6456, file: !3, line: 36, type: !468)
!6469 = !DILocalVariable(name: "elapsed", scope: !6456, file: !3, line: 36, type: !468)
!6470 = !DILocalVariable(name: "elapsed_msecs", scope: !6456, file: !3, line: 37, type: !7)
!6471 = !DILocalVariable(name: "wakeup", scope: !6456, file: !3, line: 38, type: !855)
!6472 = !DILocalVariable(name: "sleep_usecs", scope: !6456, file: !3, line: 39, type: !33)
!6473 = !DILocalVariable(name: "__mptr", scope: !6474, file: !3, line: 53, type: !31)
!6474 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 53, column: 3)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 53, column: 3)
!6476 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 53, column: 3)
!6477 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 50, column: 15)
!6478 = !DILocalVariable(name: "__mptr", scope: !6479, file: !3, line: 53, type: !31)
!6479 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 53, column: 3)
!6480 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 53, column: 3)
!6481 = !DILocalVariable(name: "__mptr", scope: !6482, file: !3, line: 53, type: !31)
!6482 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 53, column: 3)
!6483 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 53, column: 3)
!6484 = !DILocalVariable(name: "__mptr", scope: !6485, file: !3, line: 100, type: !31)
!6485 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 100, column: 4)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 100, column: 4)
!6487 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 100, column: 4)
!6488 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 98, column: 40)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 98, column: 7)
!6490 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 88, column: 12)
!6491 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 88, column: 6)
!6492 = !DILocalVariable(name: "__mptr", scope: !6493, file: !3, line: 100, type: !31)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 100, column: 4)
!6494 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 100, column: 4)
!6495 = !DILocalVariable(name: "__mptr", scope: !6496, file: !3, line: 100, type: !31)
!6496 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 100, column: 4)
!6497 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 100, column: 4)
!6498 = !DILocation(line: 28, column: 37, scope: !6456)
!6499 = !DILocation(line: 30, column: 2, scope: !6456)
!6500 = !DILocation(line: 30, column: 14, scope: !6456)
!6501 = !DILocation(line: 30, column: 21, scope: !6456)
!6502 = !DILocation(line: 32, column: 2, scope: !6456)
!6503 = !DILocation(line: 32, column: 22, scope: !6456)
!6504 = !DILocation(line: 32, column: 26, scope: !6456)
!6505 = !DILocation(line: 33, column: 2, scope: !6456)
!6506 = !DILocation(line: 33, column: 16, scope: !6456)
!6507 = !DILocation(line: 34, column: 2, scope: !6456)
!6508 = !DILocation(line: 34, column: 15, scope: !6456)
!6509 = !DILocation(line: 35, column: 2, scope: !6456)
!6510 = !DILocation(line: 35, column: 7, scope: !6456)
!6511 = !DILocation(line: 36, column: 2, scope: !6456)
!6512 = !DILocation(line: 36, column: 10, scope: !6456)
!6513 = !DILocation(line: 36, column: 17, scope: !6456)
!6514 = !DILocation(line: 36, column: 22, scope: !6456)
!6515 = !DILocation(line: 37, column: 2, scope: !6456)
!6516 = !DILocation(line: 37, column: 15, scope: !6456)
!6517 = !DILocation(line: 38, column: 2, scope: !6456)
!6518 = !DILocation(line: 38, column: 7, scope: !6456)
!6519 = !DILocation(line: 39, column: 2, scope: !6456)
!6520 = !DILocation(line: 39, column: 6, scope: !6456)
!6521 = !DILocation(line: 41, column: 2, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 41, column: 2)
!6523 = !DILocation(line: 41, column: 2, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6522, file: !3, line: 41, column: 2)
!6525 = !DILocation(line: 43, column: 10, scope: !6456)
!6526 = !DILocation(line: 43, column: 8, scope: !6456)
!6527 = !DILocation(line: 45, column: 13, scope: !6456)
!6528 = !DILocation(line: 45, column: 40, scope: !6456)
!6529 = !DILocation(line: 45, column: 23, scope: !6456)
!6530 = !DILocation(line: 45, column: 21, scope: !6456)
!6531 = !DILocation(line: 45, column: 11, scope: !6456)
!6532 = !DILocation(line: 47, column: 7, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 47, column: 6)
!6534 = !DILocation(line: 47, column: 6, scope: !6456)
!6535 = !DILocation(line: 48, column: 3, scope: !6533)
!6536 = !DILocation(line: 50, column: 2, scope: !6456)
!6537 = !DILocation(line: 51, column: 8, scope: !6477)
!6538 = !DILocation(line: 52, column: 3, scope: !6477)
!6539 = !DILocation(line: 53, column: 3, scope: !6476)
!6540 = !DILocation(line: 53, column: 3, scope: !6474)
!6541 = !DILocation(line: 53, column: 3, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 53, column: 3)
!6543 = !DILocation(line: 53, column: 3, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 53, column: 3)
!6545 = !DILocation(line: 53, column: 3, scope: !6475)
!6546 = !DILocation(line: 53, column: 3, scope: !6479)
!6547 = !DILocation(line: 53, column: 3, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 53, column: 3)
!6549 = !DILocation(line: 53, column: 3, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6548, file: !3, line: 53, column: 3)
!6551 = !DILocation(line: 53, column: 3, scope: !6480)
!6552 = !DILocation(line: 53, column: 3, scope: !6483)
!6553 = !DILocation(line: 54, column: 8, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 54, column: 8)
!6555 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 53, column: 33)
!6556 = !DILocation(line: 54, column: 13, scope: !6554)
!6557 = !DILocation(line: 54, column: 10, scope: !6554)
!6558 = !DILocation(line: 54, column: 21, scope: !6554)
!6559 = !DILocation(line: 54, column: 37, scope: !6554)
!6560 = !DILocation(line: 54, column: 25, scope: !6554)
!6561 = !DILocation(line: 54, column: 8, scope: !6555)
!6562 = !DILocation(line: 55, column: 5, scope: !6554)
!6563 = !DILocation(line: 57, column: 8, scope: !6555)
!6564 = !DILocation(line: 58, column: 3, scope: !6555)
!6565 = !DILocation(line: 53, column: 3, scope: !6482)
!6566 = !DILocation(line: 53, column: 3, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 53, column: 3)
!6568 = !DILocation(line: 53, column: 3, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 53, column: 3)
!6570 = distinct !{!6570, !6551, !6571, !6572, !6573}
!6571 = !DILocation(line: 58, column: 3, scope: !6480)
!6572 = !{!"llvm.loop.mustprogress"}
!6573 = !{!"llvm.loop.unroll.disable"}
!6574 = distinct !{!6574, !6539, !6575, !6572, !6573}
!6575 = !DILocation(line: 58, column: 3, scope: !6476)
!6576 = !DILocation(line: 59, column: 3, scope: !6477)
!6577 = !DILocation(line: 61, column: 8, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 61, column: 7)
!6579 = !DILocation(line: 61, column: 7, scope: !6477)
!6580 = !DILocation(line: 62, column: 14, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 61, column: 19)
!6582 = !DILocation(line: 62, column: 12, scope: !6581)
!6583 = !DILocation(line: 63, column: 12, scope: !6581)
!6584 = !DILocation(line: 63, column: 9, scope: !6581)
!6585 = !DILocation(line: 64, column: 3, scope: !6581)
!6586 = !DILocation(line: 66, column: 8, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 66, column: 7)
!6588 = !DILocation(line: 66, column: 13, scope: !6587)
!6589 = !DILocation(line: 66, column: 16, scope: !6587)
!6590 = !DILocation(line: 66, column: 7, scope: !6477)
!6591 = !DILocation(line: 67, column: 4, scope: !6587)
!6592 = !DILocation(line: 69, column: 7, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 69, column: 7)
!6594 = !DILocation(line: 69, column: 7, scope: !6477)
!6595 = !DILocation(line: 70, column: 11, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 69, column: 28)
!6597 = !DILocation(line: 71, column: 4, scope: !6596)
!6598 = !DILocation(line: 79, column: 16, scope: !6477)
!6599 = !DILocation(line: 79, column: 28, scope: !6477)
!6600 = !DILocation(line: 79, column: 33, scope: !6477)
!6601 = !DILocation(line: 79, column: 3, scope: !6477)
!6602 = !DILocation(line: 80, column: 7, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 80, column: 7)
!6604 = !DILocation(line: 80, column: 19, scope: !6603)
!6605 = !DILocation(line: 80, column: 7, scope: !6477)
!6606 = !DILocation(line: 81, column: 16, scope: !6603)
!6607 = !DILocation(line: 81, column: 4, scope: !6603)
!6608 = distinct !{!6608, !6536, !6609, !6573}
!6609 = !DILocation(line: 82, column: 2, scope: !6456)
!6610 = !DILocation(line: 84, column: 8, scope: !6456)
!6611 = !DILocation(line: 84, column: 6, scope: !6456)
!6612 = !DILocation(line: 85, column: 12, scope: !6456)
!6613 = !DILocation(line: 85, column: 10, scope: !6456)
!6614 = !DILocation(line: 86, column: 30, scope: !6456)
!6615 = !DILocation(line: 86, column: 18, scope: !6456)
!6616 = !DILocation(line: 86, column: 16, scope: !6456)
!6617 = !DILocation(line: 88, column: 6, scope: !6491)
!6618 = !DILocation(line: 88, column: 6, scope: !6456)
!6619 = !DILocation(line: 89, column: 3, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 89, column: 3)
!6621 = !DILocation(line: 89, column: 3, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 89, column: 3)
!6623 = !DILocation(line: 95, column: 7, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 95, column: 7)
!6625 = !DILocation(line: 95, column: 7, scope: !6490)
!6626 = !DILocation(line: 96, column: 4, scope: !6624)
!6627 = !DILocation(line: 98, column: 8, scope: !6489)
!6628 = !DILocation(line: 98, column: 15, scope: !6489)
!6629 = !DILocation(line: 98, column: 18, scope: !6489)
!6630 = !DILocation(line: 98, column: 7, scope: !6490)
!6631 = !DILocation(line: 99, column: 4, scope: !6488)
!6632 = !DILocation(line: 100, column: 4, scope: !6487)
!6633 = !DILocation(line: 100, column: 4, scope: !6485)
!6634 = !DILocation(line: 100, column: 4, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 100, column: 4)
!6636 = !DILocation(line: 100, column: 4, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6635, file: !3, line: 100, column: 4)
!6638 = !DILocation(line: 100, column: 4, scope: !6486)
!6639 = !DILocation(line: 100, column: 4, scope: !6493)
!6640 = !DILocation(line: 100, column: 4, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 100, column: 4)
!6642 = !DILocation(line: 100, column: 4, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 100, column: 4)
!6644 = !DILocation(line: 100, column: 4, scope: !6494)
!6645 = !DILocation(line: 100, column: 4, scope: !6497)
!6646 = !DILocation(line: 101, column: 9, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6648, file: !3, line: 101, column: 9)
!6648 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 100, column: 34)
!6649 = !DILocation(line: 101, column: 14, scope: !6647)
!6650 = !DILocation(line: 101, column: 11, scope: !6647)
!6651 = !DILocation(line: 101, column: 22, scope: !6647)
!6652 = !DILocation(line: 101, column: 34, scope: !6647)
!6653 = !DILocation(line: 101, column: 25, scope: !6647)
!6654 = !DILocation(line: 101, column: 37, scope: !6647)
!6655 = !DILocation(line: 101, column: 48, scope: !6647)
!6656 = !DILocation(line: 101, column: 41, scope: !6647)
!6657 = !DILocation(line: 101, column: 9, scope: !6648)
!6658 = !DILocation(line: 102, column: 22, scope: !6647)
!6659 = !DILocation(line: 102, column: 6, scope: !6647)
!6660 = !DILocation(line: 103, column: 4, scope: !6648)
!6661 = !DILocation(line: 100, column: 4, scope: !6496)
!6662 = !DILocation(line: 100, column: 4, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 100, column: 4)
!6664 = !DILocation(line: 100, column: 4, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 100, column: 4)
!6666 = distinct !{!6666, !6644, !6667, !6572, !6573}
!6667 = !DILocation(line: 103, column: 4, scope: !6494)
!6668 = distinct !{!6668, !6632, !6669, !6572, !6573}
!6669 = !DILocation(line: 103, column: 4, scope: !6487)
!6670 = !DILocation(line: 104, column: 4, scope: !6488)
!6671 = !DILocation(line: 105, column: 3, scope: !6488)
!6672 = !DILocation(line: 106, column: 2, scope: !6490)
!6673 = !DILocation(line: 107, column: 3, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 107, column: 3)
!6675 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 106, column: 9)
!6676 = !DILocation(line: 107, column: 3, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 107, column: 3)
!6678 = !DILocation(line: 111, column: 9, scope: !6456)
!6679 = !DILocation(line: 112, column: 1, scope: !6456)
!6680 = !DILocation(line: 111, column: 2, scope: !6456)
!6681 = !DISubprogram(name: "__usermodehelper_set_disable_depth", scope: !6, file: !6, line: 52, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{null, !5}
!6684 = distinct !DISubprogram(name: "preempt_count", scope: !6685, file: !6685, line: 25, type: !3087, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6686)
!6685 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6686 = !{!6687}
!6687 = !DILocalVariable(name: "pfo_val__", scope: !6688, file: !6685, line: 27, type: !335)
!6688 = distinct !DILexicalBlock(scope: !6684, file: !6685, line: 27, column: 9)
!6689 = !DILocation(line: 27, column: 9, scope: !6688)
!6690 = !{i64 2149471133}
!6691 = !DILocation(line: 27, column: 9, scope: !6684)
!6692 = !DILocation(line: 27, column: 48, scope: !6684)
!6693 = !DILocation(line: 27, column: 2, scope: !6684)
!6694 = !DISubprogram(name: "oom_killer_disable", scope: !6695, file: !6695, line: 110, type: !6696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6695 = !DIFile(filename: "./include/linux/oom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98bd651f14c06138f3decc33a733db6e")
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!855, !1080}
!6698 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6699, file: !6699, line: 515, type: !6700, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6702)
!6699 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6700 = !DISubroutineType(types: !6701)
!6701 = !{!50, !3314}
!6702 = !{!6703}
!6703 = !DILocalVariable(name: "m", arg: 1, scope: !6698, file: !6699, line: 515, type: !3314)
!6704 = !DILocation(line: 515, column: 74, scope: !6698)
!6705 = !DILocation(line: 517, column: 27, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6698, file: !6699, line: 517, column: 6)
!6707 = !DILocation(line: 517, column: 6, scope: !6706)
!6708 = !DILocation(line: 517, column: 6, scope: !6698)
!6709 = !DILocation(line: 518, column: 12, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6711, file: !6699, line: 518, column: 7)
!6711 = distinct !DILexicalBlock(scope: !6706, file: !6699, line: 517, column: 31)
!6712 = !DILocation(line: 518, column: 14, scope: !6710)
!6713 = !DILocation(line: 518, column: 7, scope: !6711)
!6714 = !DILocation(line: 519, column: 4, scope: !6710)
!6715 = !DILocation(line: 520, column: 28, scope: !6711)
!6716 = !DILocation(line: 520, column: 10, scope: !6711)
!6717 = !DILocation(line: 520, column: 3, scope: !6711)
!6718 = !DILocation(line: 522, column: 29, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6706, file: !6699, line: 521, column: 9)
!6720 = !DILocation(line: 522, column: 10, scope: !6719)
!6721 = !DILocation(line: 522, column: 3, scope: !6719)
!6722 = !DILocation(line: 524, column: 1, scope: !6698)
!6723 = !DILocation(line: 181, column: 2, scope: !6249)
!6724 = !DILocation(line: 181, column: 22, scope: !6249)
!6725 = !DILocation(line: 181, column: 26, scope: !6249)
!6726 = !DILocation(line: 182, column: 2, scope: !6249)
!6727 = !DILocation(line: 182, column: 22, scope: !6249)
!6728 = !DILocation(line: 182, column: 29, scope: !6249)
!6729 = !DILocation(line: 184, column: 23, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 184, column: 23)
!6731 = !DILocation(line: 184, column: 2, scope: !6249)
!6732 = !DILocation(line: 185, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 185, column: 6)
!6734 = !DILocation(line: 185, column: 6, scope: !6249)
!6735 = !DILocation(line: 186, column: 3, scope: !6733)
!6736 = !DILocation(line: 187, column: 14, scope: !6249)
!6737 = !DILocation(line: 188, column: 20, scope: !6249)
!6738 = !DILocation(line: 190, column: 2, scope: !6249)
!6739 = !DILocation(line: 192, column: 2, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 192, column: 2)
!6741 = !DILocation(line: 192, column: 2, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6740, file: !3, line: 192, column: 2)
!6743 = !DILocation(line: 194, column: 2, scope: !6249)
!6744 = !DILocation(line: 195, column: 2, scope: !6249)
!6745 = !DILocation(line: 197, column: 2, scope: !6249)
!6746 = !DILocation(line: 199, column: 2, scope: !6249)
!6747 = !DILocation(line: 200, column: 2, scope: !6257)
!6748 = !DILocation(line: 200, column: 2, scope: !6255)
!6749 = !DILocation(line: 200, column: 2, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 200, column: 2)
!6751 = !DILocation(line: 200, column: 2, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6750, file: !3, line: 200, column: 2)
!6753 = !DILocation(line: 200, column: 2, scope: !6256)
!6754 = !DILocation(line: 200, column: 2, scope: !6259)
!6755 = !DILocation(line: 200, column: 2, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 200, column: 2)
!6757 = !DILocation(line: 200, column: 2, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6756, file: !3, line: 200, column: 2)
!6759 = !DILocation(line: 200, column: 2, scope: !6260)
!6760 = !DILocation(line: 200, column: 2, scope: !6264)
!6761 = !DILocation(line: 202, column: 3, scope: !6262)
!6762 = !DILocation(line: 0, scope: !6262)
!6763 = !DILocation(line: 202, column: 3, scope: !6267)
!6764 = !DILocation(line: 202, column: 3, scope: !6266)
!6765 = !DILocation(line: 202, column: 3, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 202, column: 3)
!6767 = !DILocation(line: 202, column: 3, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 202, column: 3)
!6769 = !{i64 2158074569, i64 2158074598, i64 2158074644, i64 2158074702, i64 2158074756, i64 2158074810, i64 2158074865, i64 2158074896, i64 2158075204, i64 2158075210, i64 2158075257, i64 2158075280, i64 2158075306}
!6770 = !DILocation(line: 202, column: 3, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 202, column: 3)
!6772 = !DILocation(line: 202, column: 3, scope: !6263)
!6773 = !DILocation(line: 203, column: 15, scope: !6263)
!6774 = !DILocation(line: 203, column: 3, scope: !6263)
!6775 = !DILocation(line: 204, column: 2, scope: !6263)
!6776 = !DILocation(line: 200, column: 2, scope: !6269)
!6777 = !DILocation(line: 200, column: 2, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 200, column: 2)
!6779 = !DILocation(line: 200, column: 2, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6778, file: !3, line: 200, column: 2)
!6781 = distinct !{!6781, !6759, !6782, !6572, !6573}
!6782 = !DILocation(line: 204, column: 2, scope: !6260)
!6783 = distinct !{!6783, !6747, !6784, !6572, !6573}
!6784 = !DILocation(line: 204, column: 2, scope: !6257)
!6785 = !DILocation(line: 205, column: 2, scope: !6249)
!6786 = !DILocation(line: 207, column: 2, scope: !6271)
!6787 = !DILocation(line: 207, column: 2, scope: !6274)
!6788 = !DILocation(line: 207, column: 2, scope: !6273)
!6789 = !DILocation(line: 207, column: 2, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 207, column: 2)
!6791 = !DILocation(line: 207, column: 2, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 207, column: 2)
!6793 = !{i64 2158076132, i64 2158076161, i64 2158076207, i64 2158076265, i64 2158076319, i64 2158076373, i64 2158076428, i64 2158076459, i64 2158076767, i64 2158076773, i64 2158076820, i64 2158076843, i64 2158076869}
!6794 = !DILocation(line: 207, column: 2, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 207, column: 2)
!6796 = !DILocation(line: 207, column: 2, scope: !6249)
!6797 = !DILocation(line: 208, column: 2, scope: !6249)
!6798 = !DILocation(line: 208, column: 8, scope: !6249)
!6799 = !DILocation(line: 208, column: 14, scope: !6249)
!6800 = !DILocation(line: 210, column: 2, scope: !6249)
!6801 = !DILocation(line: 212, column: 2, scope: !6249)
!6802 = !DILocation(line: 213, column: 2, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 213, column: 2)
!6804 = !DILocation(line: 213, column: 2, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 213, column: 2)
!6806 = !DILocation(line: 214, column: 23, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 214, column: 23)
!6808 = !DILocation(line: 214, column: 2, scope: !6249)
!6809 = !DILocation(line: 215, column: 1, scope: !6249)
!6810 = distinct !DISubprogram(name: "freeze_kernel_threads", scope: !3, file: !3, line: 165, type: !3087, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6811)
!6811 = !{!6812}
!6812 = !DILocalVariable(name: "error", scope: !6810, file: !3, line: 167, type: !33)
!6813 = !DILocation(line: 167, column: 2, scope: !6810)
!6814 = !DILocation(line: 167, column: 6, scope: !6810)
!6815 = !DILocation(line: 169, column: 20, scope: !6810)
!6816 = !DILocation(line: 170, column: 10, scope: !6810)
!6817 = !DILocation(line: 170, column: 8, scope: !6810)
!6818 = !DILocation(line: 172, column: 2, scope: !6810)
!6819 = !DILocation(line: 172, column: 2, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 172, column: 2)
!6821 = distinct !DILexicalBlock(scope: !6810, file: !3, line: 172, column: 2)
!6822 = !DILocation(line: 172, column: 2, scope: !6821)
!6823 = !DILocation(line: 172, column: 2, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6820, file: !3, line: 172, column: 2)
!6825 = !DILocation(line: 172, column: 2, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6824, file: !3, line: 172, column: 2)
!6827 = !DILocation(line: 172, column: 2, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6824, file: !3, line: 172, column: 2)
!6829 = !{i64 2158015074, i64 2158015103, i64 2158015149, i64 2158015207, i64 2158015261, i64 2158015315, i64 2158015370, i64 2158015401}
!6830 = !DILocation(line: 174, column: 6, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6810, file: !3, line: 174, column: 6)
!6832 = !DILocation(line: 174, column: 6, scope: !6810)
!6833 = !DILocation(line: 175, column: 3, scope: !6831)
!6834 = !DILocation(line: 176, column: 9, scope: !6810)
!6835 = !DILocation(line: 177, column: 1, scope: !6810)
!6836 = !DILocation(line: 176, column: 2, scope: !6810)
!6837 = distinct !DISubprogram(name: "thaw_kernel_threads", scope: !3, file: !3, line: 217, type: !3379, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6838)
!6838 = !{!6839, !6840, !6841, !6845, !6848}
!6839 = !DILocalVariable(name: "g", scope: !6837, file: !3, line: 219, type: !324)
!6840 = !DILocalVariable(name: "p", scope: !6837, file: !3, line: 219, type: !324)
!6841 = !DILocalVariable(name: "__mptr", scope: !6842, file: !3, line: 227, type: !31)
!6842 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 227, column: 2)
!6843 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 227, column: 2)
!6844 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 227, column: 2)
!6845 = !DILocalVariable(name: "__mptr", scope: !6846, file: !3, line: 227, type: !31)
!6846 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 227, column: 2)
!6847 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 227, column: 2)
!6848 = !DILocalVariable(name: "__mptr", scope: !6849, file: !3, line: 227, type: !31)
!6849 = distinct !DILexicalBlock(scope: !6850, file: !3, line: 227, column: 2)
!6850 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 227, column: 2)
!6851 = !DILocation(line: 219, column: 2, scope: !6837)
!6852 = !DILocation(line: 219, column: 22, scope: !6837)
!6853 = !DILocation(line: 219, column: 26, scope: !6837)
!6854 = !DILocation(line: 221, column: 20, scope: !6837)
!6855 = !DILocation(line: 222, column: 2, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 222, column: 2)
!6857 = !DILocation(line: 222, column: 2, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 222, column: 2)
!6859 = !DILocation(line: 224, column: 2, scope: !6837)
!6860 = !DILocation(line: 226, column: 2, scope: !6837)
!6861 = !DILocation(line: 227, column: 2, scope: !6844)
!6862 = !DILocation(line: 227, column: 2, scope: !6842)
!6863 = !DILocation(line: 227, column: 2, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 227, column: 2)
!6865 = !DILocation(line: 227, column: 2, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6864, file: !3, line: 227, column: 2)
!6867 = !DILocation(line: 227, column: 2, scope: !6843)
!6868 = !DILocation(line: 227, column: 2, scope: !6846)
!6869 = !DILocation(line: 227, column: 2, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6846, file: !3, line: 227, column: 2)
!6871 = !DILocation(line: 227, column: 2, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6870, file: !3, line: 227, column: 2)
!6873 = !DILocation(line: 227, column: 2, scope: !6847)
!6874 = !DILocation(line: 227, column: 2, scope: !6850)
!6875 = !DILocation(line: 228, column: 7, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6877, file: !3, line: 228, column: 7)
!6877 = distinct !DILexicalBlock(scope: !6850, file: !3, line: 227, column: 32)
!6878 = !DILocation(line: 228, column: 10, scope: !6876)
!6879 = !DILocation(line: 228, column: 16, scope: !6876)
!6880 = !DILocation(line: 228, column: 7, scope: !6877)
!6881 = !DILocation(line: 229, column: 16, scope: !6876)
!6882 = !DILocation(line: 229, column: 4, scope: !6876)
!6883 = !DILocation(line: 230, column: 2, scope: !6877)
!6884 = !DILocation(line: 227, column: 2, scope: !6849)
!6885 = !DILocation(line: 227, column: 2, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6849, file: !3, line: 227, column: 2)
!6887 = !DILocation(line: 227, column: 2, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 227, column: 2)
!6889 = distinct !{!6889, !6873, !6890, !6572, !6573}
!6890 = !DILocation(line: 230, column: 2, scope: !6847)
!6891 = distinct !{!6891, !6861, !6892, !6572, !6573}
!6892 = !DILocation(line: 230, column: 2, scope: !6844)
!6893 = !DILocation(line: 231, column: 2, scope: !6837)
!6894 = !DILocation(line: 233, column: 2, scope: !6837)
!6895 = !DILocation(line: 234, column: 2, scope: !6896)
!6896 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 234, column: 2)
!6897 = !DILocation(line: 234, column: 2, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6896, file: !3, line: 234, column: 2)
!6899 = !DILocation(line: 235, column: 1, scope: !6837)
!6900 = !DILocation(line: 248, column: 1, scope: !6332)
!6901 = !DILocation(line: 248, column: 1, scope: !6341)
!6902 = !DILocation(line: 248, column: 1, scope: !6340)
!6903 = !DILocation(line: 248, column: 1, scope: !6343)
!6904 = !DILocation(line: 248, column: 1, scope: !6346)
!6905 = !DILocation(line: 248, column: 1, scope: !6348)
!6906 = !{i64 2156773000}
!6907 = !DILocation(line: 248, column: 1, scope: !6344)
!6908 = !DILocation(line: 248, column: 1, scope: !6350)
!6909 = !DILocation(line: 248, column: 1, scope: !6354)
!6910 = !DILocation(line: 248, column: 1, scope: !6353)
!6911 = !DILocation(line: 248, column: 1, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6353, file: !6326, line: 248, column: 1)
!6913 = !DILocation(line: 248, column: 1, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6353, file: !6326, line: 248, column: 1)
!6915 = !{i64 2156774214, i64 2156774243, i64 2156774289, i64 2156774347, i64 2156774401, i64 2156774455, i64 2156774510, i64 2156774541, i64 2156774849, i64 2156774855, i64 2156774902, i64 2156774925, i64 2156774951}
!6916 = !DILocation(line: 248, column: 1, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6353, file: !6326, line: 248, column: 1)
!6918 = !DILocation(line: 248, column: 1, scope: !6351)
!6919 = !DILocation(line: 248, column: 1, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6340, file: !6326, line: 248, column: 1)
!6921 = !{i64 2156775304}
!6922 = !DILocation(line: 248, column: 1, scope: !6356)
!6923 = !DILocation(line: 248, column: 1, scope: !6359)
!6924 = !DILocation(line: 248, column: 1, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6359, file: !6326, line: 248, column: 1)
!6926 = !DILocation(line: 248, column: 1, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6925, file: !6326, line: 248, column: 1)
!6928 = !DILocation(line: 248, column: 1, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6356, file: !6326, line: 248, column: 1)
!6930 = !DILocation(line: 248, column: 1, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6929, file: !6326, line: 248, column: 1)
!6932 = !DILocation(line: 248, column: 1, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6931, file: !6326, line: 248, column: 1)
!6934 = !DILocation(line: 248, column: 1, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6340, file: !6326, line: 248, column: 1)
!6936 = !{i64 2156781681}
!6937 = !DILocation(line: 248, column: 1, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6935, file: !6326, line: 248, column: 1)
!6939 = !DILocation(line: 248, column: 1, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6938, file: !6326, line: 248, column: 1)
!6941 = !{i64 2156781840}
!6942 = !DISubprogram(name: "static_key_slow_dec", scope: !3274, file: !3274, line: 229, type: !6943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6943 = !DISubroutineType(types: !6944)
!6944 = !{null, !6451}
!6945 = !DISubprogram(name: "oom_killer_enable", scope: !6695, file: !6695, line: 111, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DISubprogram(name: "_printk", scope: !6947, file: !6947, line: 153, type: !6948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!33, !27, null}
!6950 = !DISubprogram(name: "thaw_workqueues", scope: !983, file: !983, line: 735, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6951 = !DISubprogram(name: "cpuset_wait_for_hotplug", scope: !6952, file: !6952, line: 73, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DIFile(filename: "./include/linux/cpuset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dbb14f8bf906df867604f1de876655d4")
!6953 = !DISubprogram(name: "_raw_read_lock", scope: !6954, file: !6954, line: 18, type: !6955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6954 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!6955 = !DISubroutineType(types: !6956)
!6956 = !{null, !6957}
!6957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!6958 = !DISubprogram(name: "__thaw_task", scope: !6959, file: !6959, line: 43, type: !4310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6959 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!6960 = !DISubprogram(name: "_raw_read_unlock", scope: !6954, file: !6954, line: 31, type: !6955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = distinct !DISubprogram(name: "usermodehelper_enable", scope: !6, file: !6, line: 59, type: !3379, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6962 = !DILocation(line: 61, column: 2, scope: !6961)
!6963 = !DILocation(line: 62, column: 1, scope: !6961)
!6964 = !DISubprogram(name: "schedule", scope: !326, file: !326, line: 303, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6965 = distinct !DISubprogram(name: "ktime_get_boottime", scope: !314, file: !314, line: 93, type: !534, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6966 = !DILocation(line: 95, column: 9, scope: !6965)
!6967 = !DILocation(line: 95, column: 2, scope: !6965)
!6968 = !DISubprogram(name: "freeze_workqueues_begin", scope: !983, file: !983, line: 733, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6969 = !DISubprogram(name: "freeze_task", scope: !6959, file: !6959, line: 61, type: !6970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6970 = !DISubroutineType(types: !6971)
!6971 = !{!855, !324}
!6972 = !DISubprogram(name: "freeze_workqueues_busy", scope: !983, file: !983, line: 734, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6973 = !DISubprogram(name: "pm_wakeup_pending", scope: !6453, file: !6453, line: 518, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6974 = distinct !DISubprogram(name: "usleep_range", scope: !6975, file: !6975, line: 66, type: !6976, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6978)
!6975 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6976 = !DISubroutineType(types: !6977)
!6977 = !{null, !50, !50}
!6978 = !{!6979, !6980}
!6979 = !DILocalVariable(name: "min", arg: 1, scope: !6974, file: !6975, line: 66, type: !50)
!6980 = !DILocalVariable(name: "max", arg: 2, scope: !6974, file: !6975, line: 66, type: !50)
!6981 = !DILocation(line: 66, column: 47, scope: !6974)
!6982 = !DILocation(line: 66, column: 66, scope: !6974)
!6983 = !DILocation(line: 68, column: 21, scope: !6974)
!6984 = !DILocation(line: 68, column: 26, scope: !6974)
!6985 = !DILocation(line: 68, column: 2, scope: !6974)
!6986 = !DILocation(line: 69, column: 1, scope: !6974)
!6987 = distinct !DISubprogram(name: "ktime_to_ms", scope: !469, file: !469, line: 164, type: !6988, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6988 = !DISubroutineType(types: !6989)
!6989 = !{!404, !6990}
!6990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!6991 = !{!6992}
!6992 = !DILocalVariable(name: "kt", arg: 1, scope: !6987, file: !469, line: 164, type: !6990)
!6993 = !DILocation(line: 164, column: 45, scope: !6987)
!6994 = !DILocation(line: 166, column: 21, scope: !6987)
!6995 = !DILocation(line: 166, column: 9, scope: !6987)
!6996 = !DILocation(line: 166, column: 2, scope: !6987)
!6997 = !DISubprogram(name: "show_freezable_workqueues", scope: !983, file: !983, line: 532, type: !3379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6998 = distinct !DISubprogram(name: "freezing", scope: !6959, file: !6959, line: 34, type: !6970, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6999)
!6999 = !{!7000, !7001}
!7000 = !DILocalVariable(name: "p", arg: 1, scope: !6998, file: !6959, line: 34, type: !324)
!7001 = !DILocalVariable(name: "branch", scope: !7002, file: !6959, line: 36, type: !855)
!7002 = distinct !DILexicalBlock(scope: !7003, file: !6959, line: 36, column: 6)
!7003 = distinct !DILexicalBlock(scope: !6998, file: !6959, line: 36, column: 6)
!7004 = !DILocation(line: 34, column: 49, scope: !6998)
!7005 = !DILocation(line: 36, column: 6, scope: !7002)
!7006 = !DILocation(line: 36, column: 6, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !7008, file: !6959, line: 36, column: 6)
!7008 = distinct !DILexicalBlock(scope: !7002, file: !6959, line: 36, column: 6)
!7009 = !DILocation(line: 36, column: 6, scope: !7008)
!7010 = !DILocation(line: 36, column: 6, scope: !7003)
!7011 = !DILocation(line: 36, column: 6, scope: !6998)
!7012 = !DILocation(line: 37, column: 29, scope: !7003)
!7013 = !DILocation(line: 37, column: 10, scope: !7003)
!7014 = !DILocation(line: 37, column: 3, scope: !7003)
!7015 = !DILocation(line: 39, column: 2, scope: !6998)
!7016 = !DILocation(line: 40, column: 1, scope: !6998)
!7017 = !DISubprogram(name: "frozen", scope: !6959, file: !6959, line: 27, type: !6970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7018 = !DISubprogram(name: "sched_show_task", scope: !7019, file: !7019, line: 36, type: !4310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7019 = !DIFile(filename: "./include/linux/sched/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "162ea9be471e54e9534d809de8723629")
!7020 = !DISubprogram(name: "ktime_get_with_offset", scope: !314, file: !314, line: 68, type: !7021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7021 = !DISubroutineType(types: !7022)
!7022 = !{!468, !313}
!7023 = !DISubprogram(name: "usleep_range_state", scope: !6975, file: !6975, line: 63, type: !7024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7024 = !DISubroutineType(types: !7025)
!7025 = !{null, !50, !50, !7}
!7026 = distinct !DISubprogram(name: "ktime_divns", scope: !469, file: !469, line: 148, type: !7027, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7029)
!7027 = !DISubroutineType(types: !7028)
!7028 = !{!404, !6990, !404}
!7029 = !{!7030, !7031, !7032, !7034}
!7030 = !DILocalVariable(name: "kt", arg: 1, scope: !7026, file: !469, line: 148, type: !6990)
!7031 = !DILocalVariable(name: "div", arg: 2, scope: !7026, file: !469, line: 148, type: !404)
!7032 = !DILocalVariable(name: "__ret_warn_on", scope: !7033, file: !469, line: 154, type: !33)
!7033 = distinct !DILexicalBlock(scope: !7026, file: !469, line: 154, column: 2)
!7034 = !DILocalVariable(name: "__flags", scope: !7035, file: !469, line: 154, type: !33)
!7035 = distinct !DILexicalBlock(scope: !7036, file: !469, line: 154, column: 2)
!7036 = distinct !DILexicalBlock(scope: !7033, file: !469, line: 154, column: 2)
!7037 = !DILocation(line: 148, column: 45, scope: !7026)
!7038 = !DILocation(line: 148, column: 53, scope: !7026)
!7039 = !DILocation(line: 154, column: 2, scope: !7033)
!7040 = !DILocation(line: 154, column: 2, scope: !7036)
!7041 = !DILocation(line: 154, column: 2, scope: !7035)
!7042 = !DILocation(line: 154, column: 2, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !7035, file: !469, line: 154, column: 2)
!7044 = !DILocation(line: 154, column: 2, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !7035, file: !469, line: 154, column: 2)
!7046 = !{i64 2150361558, i64 2150361587, i64 2150361633, i64 2150361691, i64 2150361745, i64 2150361799, i64 2150361854, i64 2150361885, i64 2150362193, i64 2150362199, i64 2150362246, i64 2150362269, i64 2150362295}
!7047 = !DILocation(line: 154, column: 2, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !7035, file: !469, line: 154, column: 2)
!7049 = !DILocation(line: 154, column: 2, scope: !7026)
!7050 = !DILocation(line: 155, column: 9, scope: !7026)
!7051 = !DILocation(line: 155, column: 14, scope: !7026)
!7052 = !DILocation(line: 155, column: 12, scope: !7026)
!7053 = !DILocation(line: 155, column: 2, scope: !7026)
!7054 = distinct !DISubprogram(name: "arch_static_branch", scope: !7055, file: !7055, line: 25, type: !7056, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7058)
!7055 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7056 = !DISubroutineType(types: !7057)
!7057 = !{!855, !6451, !855}
!7058 = !{!7059, !7060, !7061}
!7059 = !DILocalVariable(name: "key", arg: 1, scope: !7054, file: !7055, line: 25, type: !6451)
!7060 = !DILocalVariable(name: "branch", arg: 2, scope: !7054, file: !7055, line: 25, type: !855)
!7061 = !DILabel(scope: !7054, name: "l_yes", file: !7055, line: 33)
!7062 = !DILocation(line: 25, column: 67, scope: !7054)
!7063 = !DILocation(line: 25, column: 77, scope: !7054)
!7064 = !DILocation(line: 30, column: 13, scope: !7054)
!7065 = !DILocation(line: 30, column: 28, scope: !7054)
!7066 = !DILocation(line: 30, column: 26, scope: !7054)
!7067 = !DILocation(line: 27, column: 2, scope: !7054)
!7068 = !{i64 754229, i64 754273, i64 2148238956, i64 2148238977, i64 2148239003, i64 2148239036, i64 2148239070, i64 2148239094}
!7069 = !DILocation(line: 32, column: 2, scope: !7054)
!7070 = !DILocation(line: 33, column: 1, scope: !7054)
!7071 = !DILocation(line: 34, column: 2, scope: !7054)
!7072 = !DILocation(line: 35, column: 1, scope: !7054)
!7073 = !DISubprogram(name: "freezing_slow_path", scope: !6959, file: !6959, line: 29, type: !6970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7074 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6699, file: !6699, line: 458, type: !6700, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7075)
!7075 = !{!7076}
!7076 = !DILocalVariable(name: "m", arg: 1, scope: !7074, file: !6699, line: 458, type: !3314)
!7077 = !DILocation(line: 458, column: 66, scope: !7074)
!7078 = !DILocation(line: 460, column: 10, scope: !7074)
!7079 = !DILocation(line: 460, column: 12, scope: !7074)
!7080 = !DILocation(line: 460, column: 34, scope: !7074)
!7081 = !DILocation(line: 460, column: 39, scope: !7074)
!7082 = !DILocation(line: 460, column: 2, scope: !7074)
!7083 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6699, file: !6699, line: 451, type: !6700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7084 = distinct !DISubprogram(name: "static_key_false", scope: !3274, file: !3274, line: 205, type: !6449, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7085)
!7085 = !{!7086}
!7086 = !DILocalVariable(name: "key", arg: 1, scope: !7084, file: !3274, line: 205, type: !6451)
!7087 = !DILocation(line: 205, column: 65, scope: !7084)
!7088 = !DILocation(line: 207, column: 28, scope: !7084)
!7089 = !DILocation(line: 207, column: 9, scope: !7084)
!7090 = !DILocation(line: 207, column: 2, scope: !7084)
!7091 = distinct !DISubprogram(name: "cpu_online", scope: !589, file: !589, line: 1080, type: !7092, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7094)
!7092 = !DISubroutineType(types: !7093)
!7093 = !{!855, !7}
!7094 = !{!7095}
!7095 = !DILocalVariable(name: "cpu", arg: 1, scope: !7091, file: !589, line: 1080, type: !7)
!7096 = !DILocation(line: 1080, column: 44, scope: !7091)
!7097 = !DILocation(line: 1082, column: 26, scope: !7091)
!7098 = !DILocation(line: 1082, column: 9, scope: !7091)
!7099 = !DILocation(line: 1082, column: 2, scope: !7091)
!7100 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6685, file: !6685, line: 78, type: !5740, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7101)
!7101 = !{!7102, !7103, !7105}
!7102 = !DILocalVariable(name: "val", arg: 1, scope: !7100, file: !6685, line: 78, type: !33)
!7103 = !DILocalVariable(name: "pao_ID__", scope: !7104, file: !6685, line: 80, type: !3181)
!7104 = distinct !DILexicalBlock(scope: !7100, file: !6685, line: 80, column: 2)
!7105 = !DILocalVariable(name: "pto_val__", scope: !7106, file: !6685, line: 80, type: !335)
!7106 = distinct !DILexicalBlock(scope: !7107, file: !6685, line: 80, column: 2)
!7107 = distinct !DILexicalBlock(scope: !7108, file: !6685, line: 80, column: 2)
!7108 = distinct !DILexicalBlock(scope: !7104, file: !6685, line: 80, column: 2)
!7109 = !DILocation(line: 78, column: 53, scope: !7100)
!7110 = !DILocation(line: 80, column: 2, scope: !7100)
!7111 = !DILocation(line: 80, column: 2, scope: !7104)
!7112 = !DILocation(line: 80, column: 2, scope: !7108)
!7113 = !DILocation(line: 80, column: 2, scope: !7114)
!7114 = distinct !DILexicalBlock(scope: !7108, file: !6685, line: 80, column: 2)
!7115 = !{i64 2149481098}
!7116 = !DILocation(line: 80, column: 2, scope: !7107)
!7117 = !DILocation(line: 80, column: 2, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7107, file: !6685, line: 80, column: 2)
!7119 = !{i64 2149481393}
!7120 = !DILocation(line: 80, column: 2, scope: !7106)
!7121 = !{i64 2149482098}
!7122 = !DILocation(line: 81, column: 1, scope: !7100)
!7123 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6685, file: !6685, line: 93, type: !2722, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7124)
!7124 = !{!7125}
!7125 = !DILocalVariable(name: "c", scope: !7126, file: !6685, line: 95, type: !855)
!7126 = distinct !DILexicalBlock(scope: !7123, file: !6685, line: 95, column: 9)
!7127 = !DILocation(line: 95, column: 9, scope: !7126)
!7128 = !{i64 2149485454, i64 2149485547}
!7129 = !DILocation(line: 95, column: 9, scope: !7123)
!7130 = !DILocation(line: 95, column: 2, scope: !7123)
!7131 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !589, file: !589, line: 502, type: !7132, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7134)
!7132 = !DISubroutineType(types: !7133)
!7133 = !{!855, !33, !6234}
!7134 = !{!7135, !7136}
!7135 = !DILocalVariable(name: "cpu", arg: 1, scope: !7131, file: !589, line: 502, type: !33)
!7136 = !DILocalVariable(name: "cpumask", arg: 2, scope: !7131, file: !589, line: 502, type: !6234)
!7137 = !DILocation(line: 502, column: 50, scope: !7131)
!7138 = !DILocation(line: 502, column: 77, scope: !7131)
!7139 = !DILocation(line: 504, column: 9, scope: !7131)
!7140 = !DILocation(line: 504, column: 2, scope: !7131)
!7141 = distinct !DISubprogram(name: "_test_bit", scope: !7142, file: !7142, line: 139, type: !7143, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7148)
!7142 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7143 = !DISubroutineType(types: !7144)
!7144 = !{!855, !50, !7145}
!7145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7146, size: 64)
!7146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7147)
!7147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!7148 = !{!7149, !7150}
!7149 = !DILocalVariable(name: "nr", arg: 1, scope: !7141, file: !7142, line: 139, type: !50)
!7150 = !DILocalVariable(name: "addr", arg: 2, scope: !7141, file: !7142, line: 139, type: !7145)
!7151 = !DILocation(line: 139, column: 25, scope: !7141)
!7152 = !DILocation(line: 139, column: 59, scope: !7141)
!7153 = !DILocation(line: 141, column: 25, scope: !7141)
!7154 = !DILocation(line: 141, column: 32, scope: !7141)
!7155 = !DILocation(line: 141, column: 30, scope: !7141)
!7156 = !DILocation(line: 141, column: 2, scope: !7141)
!7157 = !DILocation(line: 142, column: 23, scope: !7141)
!7158 = !DILocation(line: 142, column: 27, scope: !7141)
!7159 = !DILocation(line: 142, column: 9, scope: !7141)
!7160 = !DILocation(line: 142, column: 2, scope: !7141)
!7161 = distinct !DISubprogram(name: "cpumask_check", scope: !589, file: !589, line: 148, type: !7162, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7164)
!7162 = !DISubroutineType(types: !7163)
!7163 = !{!7, !7}
!7164 = !{!7165}
!7165 = !DILocalVariable(name: "cpu", arg: 1, scope: !7161, file: !589, line: 148, type: !7)
!7166 = !DILocation(line: 148, column: 64, scope: !7161)
!7167 = !DILocation(line: 150, column: 20, scope: !7161)
!7168 = !DILocation(line: 150, column: 2, scope: !7161)
!7169 = !DILocation(line: 151, column: 9, scope: !7161)
!7170 = !DILocation(line: 151, column: 2, scope: !7161)
!7171 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7172, file: !7172, line: 66, type: !7173, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7178)
!7172 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7173 = !DISubroutineType(types: !7174)
!7174 = !{null, !7175, !46}
!7175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7176, size: 64)
!7176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7177)
!7177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7178 = !{!7179, !7180}
!7179 = !DILocalVariable(name: "v", arg: 1, scope: !7171, file: !7172, line: 66, type: !7175)
!7180 = !DILocalVariable(name: "size", arg: 2, scope: !7171, file: !7172, line: 66, type: !46)
!7181 = !DILocation(line: 66, column: 73, scope: !7171)
!7182 = !DILocation(line: 66, column: 83, scope: !7171)
!7183 = !DILocation(line: 68, column: 19, scope: !7171)
!7184 = !DILocation(line: 68, column: 22, scope: !7171)
!7185 = !DILocation(line: 68, column: 2, scope: !7171)
!7186 = !DILocation(line: 69, column: 2, scope: !7171)
!7187 = !DILocation(line: 70, column: 1, scope: !7171)
!7188 = distinct !DISubprogram(name: "arch_test_bit", scope: !7189, file: !7189, line: 237, type: !7143, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7190)
!7189 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7190 = !{!7191, !7192}
!7191 = !DILocalVariable(name: "nr", arg: 1, scope: !7188, file: !7189, line: 237, type: !50)
!7192 = !DILocalVariable(name: "addr", arg: 2, scope: !7188, file: !7189, line: 237, type: !7145)
!7193 = !DILocation(line: 237, column: 29, scope: !7188)
!7194 = !DILocation(line: 237, column: 63, scope: !7188)
!7195 = !DILocation(line: 239, column: 30, scope: !7188)
!7196 = !DILocation(line: 239, column: 9, scope: !7188)
!7197 = !DILocation(line: 239, column: 54, scope: !7188)
!7198 = !DILocation(line: 239, column: 58, scope: !7188)
!7199 = !DILocation(line: 239, column: 36, scope: !7188)
!7200 = !DILocation(line: 240, column: 26, scope: !7188)
!7201 = !DILocation(line: 240, column: 30, scope: !7188)
!7202 = !DILocation(line: 240, column: 8, scope: !7188)
!7203 = !DILocation(line: 239, column: 2, scope: !7188)
!7204 = distinct !DISubprogram(name: "kasan_check_read", scope: !7205, file: !7205, line: 40, type: !7206, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7208)
!7205 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7206 = !DISubroutineType(types: !7207)
!7207 = !{!855, !7175, !7}
!7208 = !{!7209, !7210}
!7209 = !DILocalVariable(name: "p", arg: 1, scope: !7204, file: !7205, line: 40, type: !7175)
!7210 = !DILocalVariable(name: "size", arg: 2, scope: !7204, file: !7205, line: 40, type: !7)
!7211 = !DILocation(line: 40, column: 58, scope: !7204)
!7212 = !DILocation(line: 40, column: 74, scope: !7204)
!7213 = !DILocation(line: 42, column: 2, scope: !7204)
!7214 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7215, file: !7215, line: 229, type: !7216, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7218)
!7215 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7216 = !DISubroutineType(types: !7217)
!7217 = !{null, !7175, !46, !33}
!7218 = !{!7219, !7220, !7221}
!7219 = !DILocalVariable(name: "ptr", arg: 1, scope: !7214, file: !7215, line: 229, type: !7175)
!7220 = !DILocalVariable(name: "size", arg: 2, scope: !7214, file: !7215, line: 229, type: !46)
!7221 = !DILocalVariable(name: "type", arg: 3, scope: !7214, file: !7215, line: 230, type: !33)
!7222 = !DILocation(line: 229, column: 60, scope: !7214)
!7223 = !DILocation(line: 229, column: 72, scope: !7214)
!7224 = !DILocation(line: 230, column: 15, scope: !7214)
!7225 = !DILocation(line: 230, column: 23, scope: !7214)
!7226 = distinct !DISubprogram(name: "constant_test_bit", scope: !7189, file: !7189, line: 204, type: !7227, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7229)
!7227 = !DISubroutineType(types: !7228)
!7228 = !{!855, !1080, !7145}
!7229 = !{!7230, !7231}
!7230 = !DILocalVariable(name: "nr", arg: 1, scope: !7226, file: !7189, line: 204, type: !1080)
!7231 = !DILocalVariable(name: "addr", arg: 2, scope: !7226, file: !7189, line: 204, type: !7145)
!7232 = !DILocation(line: 204, column: 52, scope: !7226)
!7233 = !DILocation(line: 204, column: 86, scope: !7226)
!7234 = !DILocation(line: 206, column: 19, scope: !7226)
!7235 = !DILocation(line: 206, column: 22, scope: !7226)
!7236 = !DILocation(line: 206, column: 15, scope: !7226)
!7237 = !DILocation(line: 207, column: 4, scope: !7226)
!7238 = !DILocation(line: 207, column: 9, scope: !7226)
!7239 = !DILocation(line: 207, column: 12, scope: !7226)
!7240 = !DILocation(line: 206, column: 44, scope: !7226)
!7241 = !DILocation(line: 207, column: 37, scope: !7226)
!7242 = !DILocation(line: 206, column: 2, scope: !7226)
!7243 = distinct !DISubprogram(name: "variable_test_bit", scope: !7189, file: !7189, line: 224, type: !7227, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7244)
!7244 = !{!7245, !7246, !7247}
!7245 = !DILocalVariable(name: "nr", arg: 1, scope: !7243, file: !7189, line: 224, type: !1080)
!7246 = !DILocalVariable(name: "addr", arg: 2, scope: !7243, file: !7189, line: 224, type: !7145)
!7247 = !DILocalVariable(name: "oldbit", scope: !7243, file: !7189, line: 226, type: !855)
!7248 = !DILocation(line: 224, column: 52, scope: !7243)
!7249 = !DILocation(line: 224, column: 86, scope: !7243)
!7250 = !DILocation(line: 226, column: 2, scope: !7243)
!7251 = !DILocation(line: 226, column: 7, scope: !7243)
!7252 = !DILocation(line: 231, column: 33, scope: !7243)
!7253 = !DILocation(line: 231, column: 46, scope: !7243)
!7254 = !DILocation(line: 228, column: 2, scope: !7243)
!7255 = !{i64 2147829158, i64 2147829232}
!7256 = !DILocation(line: 233, column: 9, scope: !7243)
!7257 = !DILocation(line: 234, column: 1, scope: !7243)
!7258 = !DILocation(line: 233, column: 2, scope: !7243)
!7259 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !589, file: !589, line: 140, type: !7260, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7262)
!7260 = !DISubroutineType(types: !7261)
!7261 = !{null, !7, !7}
!7262 = !{!7263, !7264}
!7263 = !DILocalVariable(name: "cpu", arg: 1, scope: !7259, file: !589, line: 140, type: !7)
!7264 = !DILocalVariable(name: "bits", arg: 2, scope: !7259, file: !589, line: 140, type: !7)
!7265 = !DILocation(line: 140, column: 60, scope: !7259)
!7266 = !DILocation(line: 140, column: 78, scope: !7259)
!7267 = !DILocation(line: 145, column: 1, scope: !7259)
